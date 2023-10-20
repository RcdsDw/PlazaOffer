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
import house from "../../assets/maison.png"
import appartement from "../../assets/appartement.png"

export default function Map({ searchValue, toMapCopy, setToMap }) {
   
function changeIcon({type,id}) {
    return new L.Icon({
        iconUrl: type  === 2 ? house : appartement,
        iconAnchor: [5, 55],
        popupAnchor: [10, -44],
        iconSize: [40, 40],
        id:id
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

const newMaps =  toMapCopy.filter((currentMap) => {
  return markers.some((marker) => {
    if (marker && marker.options && marker.options.icon && marker.options.icon.options) {
        return marker.options.icon.options.id === currentMap.id;
    }
    return false;
  })
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
    (data) => data.ville.toLowerCase() === searchValue.toLowerCase()
  );

  let filteredMap = searchValue ? filteredHouses : toMapCopy;

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
      {filteredMap && filteredMap.map((data) => (
        <Marker
          key={data.id}
          position={[data.latitude, data.longitude]}
          icon={changeIcon(data)}
        >
          <Popup>
            <HousePopup
              ville={data.ville}
              code_postal={data.code_postal}
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
