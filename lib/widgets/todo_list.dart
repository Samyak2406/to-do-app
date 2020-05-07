import 'package:flutter/material.dart';

class text_box extends StatelessWidget {
  final String text;
  final bool boxMark;
  final Function CallBackFunction;

  text_box({this.text, this.boxMark,this.CallBackFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          decoration: boxMark ? TextDecoration.lineThrough:null,
          color: Colors.indigo.shade900,
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(
          value: boxMark,
          activeColor: Colors.green.shade900,
          onChanged: CallBackFunction,
      ),
    );
  }
}







































































//class listbox extends StatefulWidget {
//  String list_text;
//  listbox(this.list_text);
//  @override
//  _listboxState createState() => _listboxState();
//}
//
//class _listboxState extends State<listbox> {
//  bool myCheckBoxValue = false;
//// int a=5,b=10;
//  void checkBoxSpeaker(bool myCheckBoxNewValue) {
//    setState(() {
////      print(a);
//      myCheckBoxValue = myCheckBoxNewValue;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return ListTile(
//      title: Text(
//        widget.list_text,
//        style: TextStyle(
//          color: Colors.indigo.shade900,
//          fontSize: 20,
//          decoration: myCheckBoxValue ? TextDecoration.lineThrough : null,
//        ),
//      ),
//      trailing: myCheckBox(myCheckBoxValue, checkBoxSpeaker),
//    );
//  }
//}
//
//class myCheckBox extends StatelessWidget {
//  bool myCheckBoxValue;
//  Function callBack;
//  myCheckBox(this.myCheckBoxValue, this.callBack);
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      activeColor: Colors.green.shade900,
//      value: myCheckBoxValue,
//      onChanged: (newCheckBoxValue) {
//        callBack(
//            newCheckBoxValue); //This function gets called with reference to the objects where it is written
//      },
//    );
//  }
//}

