# create-styled-component

Generate one or multiple boilerplate components within `src` with the following files:

```
src
├── components
	├── <ComponentName>
		├── index.js
		├── <ComponentName>.js
		├── <ComponentName>.test.js
		├── README.md
```

Note: the scripts are bash scripts and may not run on Windows machines. If that is the case, use Git Bash.

## Install

```sh
npm install -g create-styled-component
```

## Example

```sh
create-styled-component Test
```

will create

```
src
├── components
	├── Test
		├── index.js
		├── Test.js
		├── Test.test.js
		├── README.md
```

where the individual files look like the following:

`index.js`

```javascript
import Test from './Test';

export default Test;
```

`Test.js`

```javascript
import React, { Component } from 'react';
import './Test.css';

class Test extends Component {
  render() {
    return <div>This is a component called Test.</div>;
  }
}

export default Test;
```

`Test.test.js`

```javascript
import React from 'react';
import { shallow, render, mount } from 'enzyme';
import Test from './Test';

describe('Test', () => {
  let props;
  let shallowTest;
  let renderedTest;
  let mountedTest;

  const shallowTestComponent = () => {
    if (!shallowTest) {
      shallowTest = shallow(
        <Test {...props}>{props.children}</Test>
      );
    }
    return shallowTest;
  };

  const renderTestComponent = () => {
    if (!renderedTest) {
      renderedTest = render(
        <Test {...props}>{props.children}</Test>
      );
    }
    return renderedTest;
  };

  const mountTestComponent = () => {
    if (!mountedTest) {
      mountedTest = render(
        <Test {...props}>{props.children}</Test>
      );
    }
    return mountedTest;
  };  

  beforeEach(() => {
    props = {};
    shallowTest = undefined;
    renderedTest = undefined;
    mountedTest = undefined;
  });

  // Shallow / unit tests begin here
 
  // Render / mount / integration tests begin here
  
});
```

## License

MIT © Haldun Anil