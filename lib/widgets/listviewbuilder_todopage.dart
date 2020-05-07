import 'package:flutter/material.dart';
import 'package:twodo/task_notifier.dart';
import 'package:twodo/widgets/todo_list.dart';
import 'package:provider/provider.dart';

class view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<tasksData>(
      builder: (context,tasksData,child){
        return  ListView.builder(
            itemCount: tasksData.ls.length,
            itemBuilder: (context,index){
              return GestureDetector(
                onLongPress: (){
                  tasksData.remove(index);
                },
                child: text_box(
                  text:tasksData.ls[index].task,
                  boxMark: tasksData.ls[index].isChecked,
                  CallBackFunction: (newValue){
                      tasksData.Checker( tasksData.ls[index]);
                    },
                ),
              );
            });
        }
    );
  }
}