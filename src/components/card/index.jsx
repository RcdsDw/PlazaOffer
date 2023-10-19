import React from "react";
import "./card.css"

export default function HouseCard({ photos, ville, code_postal, prix_total, surface_m2, description}) {
    return (
        <div className="card">
                <img className="card__image" src={photos} alt="photo de l'offre" width={450}/>
            <div className="card__content">
            <p className="card__title">{ville}, {code_postal}</p>
            <p className="card__description">{description}</p>
                <p className="card__infos">
                    {prix_total} $ <br/>
                    {surface_m2} m²
                </p>
            </div>
          </div>
    )
}