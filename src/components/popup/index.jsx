import React from "react";
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';
import { CardActionArea } from '@mui/material';

export default function HousePopup({ ville, code_postal, prix_total, surface_m2, description }) {
    return (
            <Card 
                sx={{ maxWidth: 345, backgroundColor: "grey" }}
            >
                <CardActionArea>
                    <CardContent>
                        <h1>Maison</h1>
                        <Typography gutterBottom variant="h5" component="div">
                            {ville}, {code_postal}
                        </Typography>
                        <Typography variant="body2" color="text.secondary">
                            {prix_total} $ <br/>
                            {surface_m2} m²
                        </Typography>
                        <Typography variant="body2" color="text.secondary">
                            {description}
                        </Typography>
                    </CardContent>
                </CardActionArea>
            </Card>
    )
}