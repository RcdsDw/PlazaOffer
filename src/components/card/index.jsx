import React from "react";
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';
import { CardActionArea } from '@mui/material';

export default function HouseCard({ photos, ville, code_postal, prix_total, surface_m2, type }) {
    return (
            <Card 
                sx={{ width: 185, height: 310, backgroundColor: "grey" }}
            >
                <CardActionArea>
                    <CardMedia
                        component="img"
                        height="120"
                        image={photos}
                        alt="Offer Image"
                    />
                    <CardContent>
                        {type}
                        <Typography gutterBottom variant="h5" component="div">
                            {ville}, <br/> {code_postal}
                        </Typography>
                        <Typography variant="body2" color="text.secondary">
                            {prix_total} $ <br/>
                            {surface_m2} m²
                        </Typography>
                    </CardContent>
                </CardActionArea>
            </Card>
    )
}