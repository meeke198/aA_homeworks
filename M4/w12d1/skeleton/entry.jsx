import React from 'react';
import ReactDOM from 'react-dom';
import {
  Route, HashRouter,
} from 'react-router-dom';
import Rainbow from './components/rainbow.jsx';
//make the router available to all any descendent React Router components
const Root = () => (
  <HashRouter>
    <Rainbow />
  </HashRouter>
);

document.addEventListener('DOMContentLoaded', () => {
  const main = document.getElementById('main');
  ReactDOM.render(
    <Root />,
    main
  );
});
