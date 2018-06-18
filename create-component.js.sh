echo "import React from 'react';
import './$1.css';
import styled, { ThemeProvider } from 'styled-components';
// import theme from '../somewhere';

const theme = {}; // delete this if you're importing the theme or don't need a theme at all

const $1 = styled.div\`
\`

const Themed$1 = props =>  (
  <ThemeProvider theme={theme}>
    <$1 />
  </ThemeProvider>
);

const $1PropTypes = {};

$1.propTypes = $1PropTypes;
Themed$1.propTypes = $1PropTypes;

export default Themed$1;" > src/components/$1/$1.js