import 'package:flutter/material.dart';
import 'package:login_page/Features/user_survery/activity_status.dart';
import 'package:login_page/Features/user_survery/calorie_calculation.dart';
import '../../home_page.dart';

class BMI extends StatefulWidget {
  @override
  _BMI createState() => _BMI();
}
class _BMI extends State<BMI> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _agecontroller = TextEditingController();
  double a = 0.0, b = 0.0, c = 0.0, result = 0.0;
  String bmr, eqn1, gdr1;
  double _bmi;
  // the message at the beginning
  String _message = 'Please enter your height and weight';


  // This function is triggered when the user pressess the "Calculate" button
  void _calculate() {
    final double height = double.tryParse(_heightController.value.text);
    final double weight = double.tryParse(_weightController.value.text);

    // Check if the inputs are valid
    if (height == null || height <= 0 || weight == null || weight <= 0) {
      setState(() {
        _message = "Your height and weigh must be positive numbers";
      });
      return;
    }

    setState(() {
      _bmi = weight / (height * height);
      if (_bmi < 18.5) {
        _message = "Our analysis suggests that you are Underweight! In the further steps, we suggest you select a plan to improve the same";
      } else if (_bmi < 25) {
        _message = 'As per our Analysis, You are perfectly normal (neither underweight nor overweight). Kindly select a plan suitable for you further';
      } else{
        _message = 'Our analysis suggests that you are Overweight! In the further steps, we suggest you select a plan to improve the same';
      }
    });
  }
  void _onpressed() {
    setState(() {
      a = double.parse(_heightController.text);
      b = double.parse(_weightController.text);
      c = double.parse(_agecontroller.text);
        if (gdr1 == 'Male') {
          result = ((10 * b) + (625 * a) - (5 * c) + 5);
        } else if (gdr1 == 'Female') {
          result = ((10 * b) + (625 * a) - (5 * c) - 161);
        }
      bmr = format(result);
    });
  }
  String format(double n) {
    return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calomy User Survey'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: TextField(
                controller: _heightController,
                keyboardType:
                TextInputType.numberWithOptions(decimal: true),

                decoration: InputDecoration(labelText: 'Height (m)',icon: Icon(Icons.trending_up) ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
                controller: _weightController,
                keyboardType:
                TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Weight (kg)',

                  icon: Icon(Icons.line_weight),
                )
            ),
            TextField(
                controller: _agecontroller,
                keyboardType:
                TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Age',

                  icon: Icon(Icons.arrow_upward_rounded),
                )
            ),
            Container(padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 40, 0),
              child: Text("Gender:", style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor
              ),),
            ),
      DropdownButton<String>(
        focusColor:Colors.white,
        value: gdr1,
        //elevation: 5,
        style: TextStyle(fontSize: 20,
            color: Colors.white),
        iconEnabledColor:Colors.black,
        items: <String>[
          'Female',
          'Male',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,style:TextStyle(color:Colors.black),),
          );
        }).toList(),
        hint:Text(
          "Please choose your gender",
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
              onChanged: (String value) {
                setState(() {
                  gdr1 = value;
                });
              },
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10,20,10,40),
              child: ElevatedButton(
                onPressed:()=>[_onpressed(),_calculate()],
                child: Text('Calculate'),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10,0,10,0),
                child: Text(
                  _message,
                  textAlign: TextAlign.center,
                  ),

              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10,0,10,0),
                child:
                  Text("BMR: $bmr"),
                ),

              ),
            RaisedButton(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Proceed'),

                ],
              ),

              color: Colors.blue,
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> ActivityStatus() ));},
            ),
          ],
        ),
      ),
    ]
    ),
    ));

  }

}
