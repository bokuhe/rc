import React, { ReactElement } from 'react'
import {
  SafeAreaView,
  StatusBar,
  Text,
  useColorScheme,
} from 'react-native'
import { Colors } from 'react-native/Libraries/NewAppScreen'

const App = (): ReactElement => {
  const isDarkMode = useColorScheme() === 'dark'

  const backgroundStyle = {
    flex: 1,
    backgroundColor: isDarkMode ? Colors.darker : Colors.lighter,
  }

  return (
    <SafeAreaView style={backgroundStyle}>
      <StatusBar
        barStyle={isDarkMode ? 'light-content' : 'dark-content'}
      />
      <Text
        style={{
          color: isDarkMode ? Colors.white : Colors.black,
        }}
      >
        Hello World!
      </Text>
    </SafeAreaView>
  )
}

export default App

