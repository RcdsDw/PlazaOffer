import React, { useState, useEffect } from 'react';
import Map from '../map';
import HouseList from '../list';
import Header from '../headersTools';
import fetchData from '../../datas/datas.jsx';
import oldDatas from "../../datas/oldDatas.json"


export default function Page() {

    const [toMap, setToMap] = useState([]);
    const [toMapCopy, setToMapCopy] = useState([]);
    useEffect(() => {
        async function fetchDataAndSetState() {
          try {
            const fetchedData = await fetchData();
            setToMap(fetchedData);
            setToMapCopy(fetchedData);
          } catch (error) {
            setToMap(oldDatas);
            setToMapCopy(oldDatas);
          }
        }
        fetchDataAndSetState();
      }, []);
    
    const [searchValue, setSearchValue] = useState('');

    const handleSearchChange = (value) => {
        setSearchValue(value);
    };

    return (
        <>
            <Header onSearchChange={handleSearchChange}/>
            <Map toMapCopy={toMapCopy} setToMap={setToMap} searchValue={searchValue}/>
            <HouseList toMap={toMap} searchValue={searchValue}/>
        </>
    )
}