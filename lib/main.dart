//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'BMI Calculater',
//       theme: ThemeData(
//
//         primarySwatch: Colors.teal,
//       ),
//       home: const MyHomePage(title: 'BMI Calculater',),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   var wtController = TextEditingController();
//   var ftController = TextEditingController();
//
//
//   var result = "";
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//
//           title: Text('Your BMI Calculator'),
//         ),
//         body: Container(
//
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assert/1.jpg'),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Center(
//             child: Container(
//               width: 300,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text('BMI',style: TextStyle(
//                       fontSize: 35, fontWeight: FontWeight.w700,color: Colors.brown.shade600
//                   ),),
//                   SizedBox(height: 22,),
//                   TextField(
//                     controller: wtController,
//                     decoration: InputDecoration(
//                         label: Text('Enter your Weight in KG'),
//                         prefixIcon: Icon(Icons.ac_unit_sharp)
//                     ),
//                     keyboardType: TextInputType.number,
//                   ),
//                   SizedBox(height: 12,),
//                   TextField(
//                     controller: ftController,
//                     decoration: InputDecoration(
//
//                         label: Text('Enter your height in Feet'),
//                         prefixIcon: Icon(Icons.ac_unit_outlined)
//
//
//                     ),
//                     keyboardType: TextInputType.number,
//                   ),
//
//                   SizedBox(height: 16,),
//                   ElevatedButton(onPressed: (){
//
//                     var waight = wtController.text.toString();
//                     var height = ftController.text.toString();
//
//                     if(waight!="" && height!= "")
//                     {
//                       var dwaight = double.parse(waight);
//                       var dheight = double.parse(height);
//
//                       var meter = dheight* 0.3048;
//
//                       var bmi = dwaight/(meter*meter);
//
//                       var msg = "";
//                       var tips = "";
//
//                       if(bmi<18.5){
//
//                         msg = "You are Under Weight";
//                         tips = "Encress Your dieat";
//
//                       }
//                       else if(bmi>=18.5 && bmi<24.9)
//                       {
//
//                         msg = "You have a healthy weight.";
//                         tips = "Keep up the good work!";
//                       }
//                       else if(bmi>25 && bmi<29.9)
//                       {
//                         msg = "You are overweight.";
//                         tips = "You need to exercise more and watch your diet.";
//                       }
//                       else if(bmi> 30 && bmi <34.9)
//                       {
//
//                         msg = "You are obese.";
//                         tips = "You need to start a weight loss program";
//                       }
//                       else{
//                         msg = "You are extremely obese.";
//                         tips = "You need to see a doctor immediately.";
//
//                       }
//                       setState(() {
//                         result = " Your BMI is :${bmi.toStringAsFixed(2)} \n\n$msg \n\n$tips \n\n";
//
//                       });
//                     }
//                     else
//                     {
//                       setState(() {
//                         result = "Please Fill All required blanks!";
//                       });
//                     }
//                     ftController.text='';
//                     wtController.text='';
//
//                   }, child: Text('Calculate')),
//
//                   SizedBox(height: 21),
//                   Text(result,style: TextStyle(fontSize: 21,color: Colors.green),)
//
//                 ],
//               ),
//             ),
//           ),
//         )
//
//     );
//   }
// }




import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculater',
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'BMI Calculater',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var wtController = TextEditingController();
  var ftController = TextEditingController();


  var result = "";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text('Your BMI Calculator'),
        ),
        body: Container(

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assert/1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('BMI',style: TextStyle(
                      fontSize: 35, fontWeight: FontWeight.w700,color: Colors.brown.shade600
                  ),),
                  SizedBox(height: 22,),
                  TextField(
                    controller: wtController,
                    decoration: InputDecoration(
                        label: Text('Enter your Weight in KG'),
                        prefixIcon: Icon(Icons.ac_unit_sharp)
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 12,),
                  TextField(
                    controller: ftController,
                    decoration: InputDecoration(

                        label: Text('Enter your height in Feet'),
                        prefixIcon: Icon(Icons.ac_unit_outlined)


                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 16,),
                  ElevatedButton(onPressed: (){

                    var waight = wtController.text.toString();
                    var height = ftController.text.toString();

                    if(waight!="" && height!= "")
                    {
                      var dwaight = double.parse(waight);
                      var dheight = double.parse(height);

                      var meter = dheight* 0.3048;

                      var bmi = dwaight/(meter*meter);

                      var msg = "";
                      var tips = "";

                      if(bmi<18.5){

                        msg = "You are Under Weight";
                        tips = "Encress Your dieat";

                      }
                      else if(bmi>=18.5 && bmi<24.9)
                      {

                        msg = "You have a healthy weight.";
                        tips = "Keep up the good work!";
                      }
                      else if(bmi>25 && bmi<29.9)
                      {
                        msg = "You are overweight.";
                        tips = "You need to exercise more and watch your diet.";
                      }
                      else if(bmi> 30 && bmi <34.9)
                      {

                        msg = "You are obese.";
                        tips = "You need to start a weight loss program";
                      }
                      else{
                        msg = "You are extremely obese.";
                        tips = "You need to see a doctor immediately.";

                      }
                      setState(() {
                        result = " Your BMI is :${bmi.toStringAsFixed(2)} \n\n$msg \n\n$tips \n\n";

                      });
                    }
                    else
                    {
                      setState(() {
                        result = "Please Fill All required blanks!";
                      });
                    }
                    ftController.text='';
                    wtController.text='';

                  }, child: Text('Calculate')),

                  SizedBox(height: 21),
                  Text(result,style: TextStyle(fontSize: 21,color: Colors.green),)

                ],
              ),
            ),
          ),
        )

    );
  }
}










