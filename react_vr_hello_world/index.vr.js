import React from 'react';
import {
  AppRegistry,
  asset,
  Pano,
  Text,
  View,
  HilightView,
} from 'react-vr';

export default class react_vr_hello_world extends React.Component {
  render() {
    return (
      <View>
        <Pano source={asset('chess-world.jpg')}/>
        <Text
          style={{
            backgroundColor: '#777879',
            fontSize: 0.8,
            fontWeight: '400',
            layoutOrigin: [0.5, 0.5],
            paddingLeft: 0.2,
            paddingRight: 0.2,
            textAlign: 'center',
            textAlignVertical: 'center',
            transform: [{translate: [0, 0, -3]}],
          }}>
          hello
        </Text>
        <HilightView text='test one' backgroundcolor='red' />
        <HilightView text='test two' backgroundColor='blue' />
      </View>
    );
  }
};

AppRegistry.registerComponent('react_vr_hello_world', () => react_vr_hello_world);
