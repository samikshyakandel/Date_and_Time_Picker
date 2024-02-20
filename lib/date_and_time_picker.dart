import 'package:flutter/material.dart';

class DateandTimePicker extends StatefulWidget {
  const DateandTimePicker({super.key});

  @override
  State<DateandTimePicker> createState() => _DateandTimePickerState();
}

class _DateandTimePickerState extends State<DateandTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date and Time'),),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Select Time and Date"),
            ElevatedButton(onPressed: () async{
              DateTime? datePicked = await showDatePicker(
                context: context, 
                firstDate: DateTime(2000),
               lastDate: DateTime(2025),);
               if(datePicked !=null){
                print("Select Date ${datePicked.day}-${datePicked.month}-${datePicked.year}");
               }
            }, 
            child: Text("Show Date"),
            ),

           ElevatedButton(
             onPressed: () async {
              TimeOfDay? timePicked = await showTimePicker(
               context: context,
               initialTime: TimeOfDay.now(),
              );
              if (timePicked != null) {
              print("Selected time: ${timePicked.format(context)}");
            }
          },
              child: Text("Show Time"),
              ),
          ],
        ),
      ),
    );
  }
}