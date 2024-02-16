import 'package:flutter/material.dart';

void main() {
  runApp(SabhaApp());
}

class SabhaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'سبحة إلكترونية',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SabhaCounter(),
    );
  }
}

class SabhaCounter extends StatefulWidget {
  @override
  _SabhaCounterState createState() => _SabhaCounterState();
}

class _SabhaCounterState extends State<SabhaCounter> {
  int _counter = 0;
  List<String> _adhkar = ['سبحان الله','الحمدلله',"لا اله الا الله",  'الله أكبر'];
  int _adkharIndex = 0;



  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/WhatsApp Image 2024-02-16 at 10.06.37.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container(
            
             margin: EdgeInsets.only(bottom: 10, top:200),
            child: Text(
            textAlign:TextAlign.center,
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 170,
            
            ),
            SizedBox(height: 20),
            Text(
              _adhkar[_adkharIndex],style: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
              
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                      setState(() {
      _counter = (_counter + 1) % 33;
      if (_counter == 0) {
        _adkharIndex = (_adkharIndex + 1) % _adhkar.length;
      }
    });
                  },
                  child: Icon(Icons.add),
                ),
                ElevatedButton(

                  onPressed:(){
                    setState(() {
      _counter = 0;
    });
                  },
                  child: Text('reset'),
                ),
              ],
            ),
          ],
        ),),
      ),
    );
  }
}