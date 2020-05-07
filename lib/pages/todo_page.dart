import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twodo/pages/todo_page_bottom_page.dart';
import 'package:twodo/widgets/listviewbuilder_todopage.dart';
import 'package:twodo/task_notifier.dart';

class todo_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade900,
        child: Icon(Icons.add,size: 35,color: Colors.lightGreen),
        onPressed: () {
          showModalBottomSheet(context: context,isScrollControlled: true,builder: (context)=>popUpBox());
        },
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.lightGreen,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(90)),
                      color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 20,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: FittedBox(
                            child: CircleAvatar(
                              backgroundColor: Colors.lightGreen,
                              child: FractionallySizedBox(
                                widthFactor: 0.8,
                                heightFactor: 0.8,
                                child:FittedBox(
                                  child: Icon(Icons.list,),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 20,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: FittedBox(
                            child: Text(
                              'Tasks',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigoAccent
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: FractionallySizedBox(
                            heightFactor: 0.6,
                            child: Text(
                              '  ${Provider.of<tasksData>(context).ls.length}  Tasks',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25, 40, 20, 0),
                    child: view(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(90)),
                    color: Colors.lightGreen,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}