# Widget Did Build

When you find your self wanting to run a function once with context after a
widget build has been completed, the current flutter system makes it difficult
to accomplish.

This is a simple library that makes it easy to run a function that takes in a context 
and runs *once* after the widget is built. Similar to `componentDidMount` in React.

## Usage
1. Change you state class from
```dart
class _MyAppState extends State<MyApp> {
  
} 
```
to 
```dart
class _MyAppState extends DidBuildState<MyApp> {
  
}
```

2. Import the plugin 
```dart
import 'package:widget_did_build/widget_did_build.dart';
```
3. Add and override the `didBuildMethod` in your state class

4. Done. 

This is what you state class will look like in the end
```dart

class _MyAppState extends DidBuildState<MyApp> { // Using DidBuildState instead of State

  @override
  void didMount(BuildContext context) { // overriding and implement the didBuild method
    // call your method here 
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

```
