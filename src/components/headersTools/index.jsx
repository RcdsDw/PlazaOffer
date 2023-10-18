import React, { useState } from 'react';
import StyledInput from '../../utils/styledInput/input';

export default function Header({ onSearchChange }) {

  const [searchValue, setSearchValue] = useState('');

  const handleSearchChange = (value) => {
    setSearchValue(value);
    onSearchChange(value);
    console.log(searchValue);
  };

  return (
    <header style={{position: "absolute", right: "8%"}}>
      <StyledInput
        onInputChange={handleSearchChange}
      />
    </header>
  );
}