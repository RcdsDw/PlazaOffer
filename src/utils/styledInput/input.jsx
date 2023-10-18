import React, { useState } from 'react';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';

export default function StyledInput({ onInputChange }) {

  const [inputValue, setInputValue] = useState('');

  const handleInputChange = (event) => {
    const newValue = event.target.value;
    setInputValue(newValue);
    onInputChange(newValue);
  };

  return (
    <Box>
      <TextField
          id="standard-search"
          label="Recherchez un bien"
          type="search"
          variant="standard"
          style={{
            width: "550px" 
          }}
          value={inputValue}
          onChange={handleInputChange}
        />
    </Box>
  );
}