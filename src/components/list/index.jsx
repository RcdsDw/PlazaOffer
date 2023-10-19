import React from "react";
import HouseCard from "../card";
import { Grid } from "@mui/material";

export default function HouseList({ searchValue, toMap }) {

    const filteredHouses = toMap.filter(data => data.ville.toLowerCase() === searchValue.toLowerCase());

    let filteredMap = searchValue ? filteredHouses : toMap

    return (
        <div
            style={{
                margin: "0% 0% 6% 50%",
                width: '50%',
                display: 'flex',
                flexWrap: 'wrap',
                justifyContent: 'center',
            }}
        >
        {filteredMap.map((data) => (
            <Grid 
                key={data.id} 
                margin={2} 
                display='flex'
                position='relative' 
                top={100} 
                className="data-grid"
            >
                <HouseCard 
                    description={data.description}
                    type={data.typeName}
                    id={data.id}
                    photos={data.photos}
                    ville={data.ville}
                    code_postal={data.code_postal}
                    prix_total={data.prix_total}
                    surface_m2={data.surface_m2}
                />
            </Grid>
        ))}
        </div>
    )
}


