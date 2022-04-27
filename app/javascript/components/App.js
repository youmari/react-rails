import React from 'react';
import { BrowserRouter as Router } from 'react-router-dom';
import { Routes, Route } from 'react-router'
import Greeting from './Greeting';
import { Provider } from 'react-redux';
import store from '../redux/ConfigureStore';

const App = () => {
  return (
    <>
      <h1>Hello</h1>
       <Provider store={store}>
        <Router>
          <Routes>
            <Route element={<Greeting />}  path="/" />
          </Routes>
        </Router>
       </Provider>
    </>
  );
};

export default App;
