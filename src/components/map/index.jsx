import React from "react";
import {
  MapContainer,
  TileLayer,
  Marker,
  Popup,
  useMapEvents,
} from "react-leaflet";
import HousePopup from "../popup";
import L from 'leaflet';

export default function Map({ searchValue, toMapCopy, setToMap, iconImg }) {
   
function newIcon(id) {
    return new L.Icon({
        iconUrl: iconImg,
        iconAnchor: [5, 55],
        popupAnchor: [10, -44],
        iconSize: [40, 40],
        id: id
    });
}

function filterMap(map) {
    let markers = [];
    map.eachLayer(function (marker) {
      if (typeof marker.getLatLng === "function") {
        if (map.getBounds().contains(marker.getLatLng())) {
          markers.push(marker);
        }
      }
    });
    
    // let newtoMapCopy = []
    // toMapCopy.forEach((currentMap) => {
    //     markers.forEach((marker) => {
    //          if(marker.options.icon.options.id === currentMap.id){
    //             newtoMapCopy.push(currentMap)
    //          }
    //      })
    //    })

   const newMaps =  toMapCopy.filter((currentMap) => {
       return markers.some((marker) => {
        if (marker && marker.options && marker.options.icon && marker.options.icon.options) {
            return marker.options.icon.options.id === currentMap.id;
        }})
      })
      setToMap(newMaps)
}

  function Test() {
    const map = useMapEvents({
      zoomend() {
        filterMap(map)
      },
      moveend() {
        filterMap(map)
      },
    });
  }

  const filteredHouses = toMapCopy.filter(
    (data) => data.lieu.ville.toLowerCase() === searchValue.toLowerCase()
  );

  let filteredMap = searchValue ? filteredHouses : toMapCopy;

  console.log(filteredMap)

  return (
    <MapContainer
      center={[46.843722, 2.516812]}
      zoom={6}
      style={{ height: "100vh", width: "50%", position: "fixed" }}
    >
      <TileLayer
        attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
      />
      {filteredMap.map((data) => (
        <Marker
          key={data.id}
          position={[data.latitude, data.longitude]}
          icon={newIcon(data.id)}
        >
          <Popup>
            <HousePopup
              ville={data.lieu.ville}
              code_postal={data.lieu.code_postal}
              prix_total={data.prix_total}
              surface_m2={data.surface_m2}
              description={data.description}
            />
          </Popup>
        </Marker>
      ))}
      <Test />
    </MapContainer>
  );
}
