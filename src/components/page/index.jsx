import React, { useState, useEffect } from 'react';
import Map from '../map';
import HouseList from '../list';
import Header from '../headersTools';
import datas from "../../datas/maisons.json"
import house from "../../assets/maison.png"
import appartement from "../../assets/appartement.png"

export default function Page() {

    const [searchValue, setSearchValue] = useState('');
    const [toMap, setToMap] = useState(datas);
    const [toMapCopy, setToMapCopy] = useState(JSON.parse(JSON.stringify(datas)));
    const [icon, setIcon] = useState(house)

    /* datas.map((data) => {
        data.type === 2 ? setIcon(house) : setIcon(appartement)
    }) */

    const handleSearchChange = (value) => {
        setSearchValue(value);
    };

    return (
        <>
            <Header onSearchChange={handleSearchChange}/>
            <Map toMapCopy={toMapCopy} setToMap={setToMap} searchValue={searchValue} iconImg={icon}/>
            <HouseList toMap={toMap} searchValue={searchValue}/>
        </>
    )
}