import 'package:flutter/material.dart';

void main(){
  runApp(RangeBar());
}

class RangeBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: RangeSiderScreen(),
    );
  }
}

class RangeSiderScreen extends StatelessWidget{
  
  RangeValues values = RangeValues(0, 1);
  @override
  Widget build(BuildContext context) {
    
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Sider"),
      ),
      body: RangeSlider(
        onChanged: (newValue){
          values = newValue;
          labels = labels;
          
        }, values: values,
        ),
    );
  }
}