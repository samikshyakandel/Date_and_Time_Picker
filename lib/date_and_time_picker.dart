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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('Date and Time')),),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100.0,),
            Text("Select Time and Date",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
            SizedBox(height: 30.0,),
            ElevatedButton(onPressed: () async{
              DateTime? datePicked = await showDatePicker(
                context: context, 
                firstDate: DateTime(2000),
               lastDate: DateTime(2025),);
               if(datePicked !=null){
                print("Select Date ${datePicked.day}-${datePicked.month}-${datePicked.year}");
               }
            }, 
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(
              Color.fromARGB(255, 139, 179, 217))),
            child: Text("Show Date",style: TextStyle(color: Colors.black),),
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
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 150, 197, 235))),
              child: Text("Show Time",style: TextStyle(color: Colors.black),),
              ),
          ],
        ),
      ),
    );
  }
}