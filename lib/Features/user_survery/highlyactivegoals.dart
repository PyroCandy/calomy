import 'package:flutter/material.dart';
import 'bmicalc.dart';

class HighlyActiveGoals extends StatefulWidget {

  @override
  _HighlyActiveState createState() => _HighlyActiveState();
}

class _HighlyActiveState extends State<HighlyActiveGoals> {
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Maintain Weight'),
                          new Image.asset("",height: 40,width: 40,)
                        ],
                      ),
                      color: Colors.blue,
                      onPressed: () {},
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
                          Text('Gain Weight'),
                          new Image.asset("",height: 40,width: 40,)
                        ],
                      ),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70,50,50,0),
                  child: SizedBox(height: 70,width: 170,
                    child: RaisedButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Lose Weight'),
                          new Image.asset("",height: 40,width: 40,)
                        ],
                      ),
                      color: Colors.blue,
                      onPressed: () {},
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