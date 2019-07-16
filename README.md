# Widget Did Build

When you find your self wanting to run a function once with context after a
widget build has been completed, the current flutter system makes it difficult
to accomplish.

This is a simple library that makes it easy to run a function that takes in a context 
and runs *once* after the widget is built. Similar to `componentDidMount` in React.

## Usage
This is what you state class will look like in the end
```dart
import 'package:widget_did_build/widget_did_build.dart'; // 1 - Import the widget_did_build_package

class _MyAppState extends State<MyApp> with DidBuild {  // 2-  Use DidBuild Mixin

  @override
  void didBuild(BuildContext context) { // 3 - Override and implement the didBuild method
    //  4 - Your logic goes here  
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

```
