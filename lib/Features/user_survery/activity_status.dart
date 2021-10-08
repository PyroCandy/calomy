import 'package:flutter/material.dart';
import 'package:login_page/Features/user_survery/highlyactivegoals.dart';
import 'package:login_page/Features/user_survery/lightlygoals.dart';
import 'package:login_page/Features/user_survery/moderatelygoals.dart';
import 'package:login_page/Features/user_survery/sedentarygoals.dart';
import '../../home_page.dart';

class ActivityStatus extends StatefulWidget {

  @override
  _ActivityStatusState createState() => _ActivityStatusState();
}

class _ActivityStatusState extends State<ActivityStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Calomy User Survey'),
       ),
      body: Container(
      /*decoration:BoxDecoration(
      image: DecorationImage(
      image: AssetImage("assets/background.png"),
      fit: BoxFit.cover,

      ),*/

            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70,60,50,0),
                    child: SizedBox(height: 70,width: 170,
                      child: RaisedButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sedentary'),
                            new Image.asset("assets/sedentary.png",height: 40,width: 40,)
                          ],
                        ),
                        color: Colors.blue,
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> SedentaryGoals() ));},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70,50,50,0),
                    child: SizedBox(height: 70,width: 170,
                      child: RaisedButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Lightly Active'),
                            new Image.asset("assets/sedentary.png",height: 40,width: 40,)
                          ],
                        ),
                        color: Colors.blue,
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> LightlyGoals() ));},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70,50,50,0),
                    child: SizedBox(height: 70,width: 170,
                      child: RaisedButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Moderately Active'),
                            new Image.asset("assets/sedentary.png",height: 40,width: 40,)
                          ],
                        ),
                        color: Colors.blue,
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> ModeratelyGoals() ));},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70,50,50,0),
                    child: SizedBox(height: 70,width: 170,
                      child: RaisedButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Highly Active'),
                            new Image.asset("assets/sedentary.png",height: 40,width: 40,)
                          ],
                        ),
                        color: Colors.blue,
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HighlyActiveGoals() ));},
                      ),
                    ),
                  ),
                ],
              ),
            ),

          )

    );
  }
}
