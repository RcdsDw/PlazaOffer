import React from 'react';
import "./global.css";
import { BrowserRouter as Router, /* Route, Routes */ } from "react-router-dom";
import { createRoot } from 'react-dom/client';
import Page from './components/page';

createRoot(document.getElementById('root')).render (
  <Router>
       <Page/>
  </Router>
)
