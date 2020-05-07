import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twodo/task_notifier.dart';

String text;

class popUpBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Color(0xff415a21),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.cyan.shade600,
              child: Container(
                decoration: BoxDecoration(
                  color:Color(0xff415a21),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child:  Container(
              width: double.infinity,
              child: Padding(
                padding:EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        'New Task',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white
                        ),
                      ),
                    ),
                    TextField(
                      onChanged: (newValue){
                        text=newValue;
                      },
                      autofocus: true,
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.blue
                      ),
                    ),
                    Flexible(
                      child: SizedBox(
                        height: 80,
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        if(text==null || text=='')
                          text='New Activity';
                        Provider.of<tasksData>(context,listen: false).addMethod(text);
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        color: Colors.indigo,
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.cyan.shade600,
                borderRadius: BorderRadius.only(topRight: Radius.circular(90)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
