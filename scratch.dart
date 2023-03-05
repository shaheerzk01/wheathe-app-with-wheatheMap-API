import 'dart:io';

void main (){
  performTask();
  String myString = 'abc';
  try{
    double myStringAsAdouble = double.parse(myString); //convert string into double datatype
    print(myStringAsAdouble + 15);
  }
  catch(e){
    print(e);
  }

}

void performTask() async{
  task1();
  String? task2result = await task2();
  task3(task2result);
}

void task1(){
  String result = 'task 1 data';
  print('Task 1 is completed');
}

Future<String?> task2() async{
  Duration threeseconds = Duration(seconds: 3);
  String? result;
  // sleep(threeseconds); this is synchrounous this function sleep the function fro three seconds
  await Future.delayed(threeseconds, (){ // this is asynchrounous
    result = 'task 2 data';
    print('Task 2 is completed');
  });

  return result;
}

void task3(String? task2data){
  String result = 'task 3 data';
  print('Task 3 is completed with $task2data');

}

// class LoadingScreen extends StatefulWidget {
//   @override
//   _LoadingScreenState createState() => _LoadingScreenState();
// }
//
// class _LoadingScreenState extends State<LoadingScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//      String myMargin = 'abc';
//      double myMarginAsAdouble;
//      try{
//        myMarginAsAdouble = double.parse(myMargin);
//      }
//      catch(e){
//       print(e);
//       myMarginAsAdouble = 30.0;
//      }
//      return Scaffold(
//        body: Container(
//          margin: EdgeInsets.all(myMarginAsAdouble ?? 30.0), ?? for null value if no value assigned to variable the use default value
//         color: Colors.brown.shade300,
//        ),
//      );
//
//   }
// }

