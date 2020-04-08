import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPress() {
    print("Search tapped");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: new Text("CAPTAIN MARVEL"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.attach_file),
              onPressed: () => debugPrint("Icon ko dabaya gaya!")),
          new IconButton(
              // ignore: not_enough_required_arguments
              icon: new Icon(Icons.search),
              onPressed: _onPress)
        ],
      ),
      //Other properties
      backgroundColor: Colors.grey.shade300,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Anmol',
            style: new TextStyle(
              fontSize: 20,
              fontWeight:FontWeight.bold,
              color: Colors.deepPurpleAccent
            ),),
            new InkWell(
              child: new Text("Button!"),
              onTap: ()=>debugPrint("Buttontapped"),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: ()=>debugPrint('bhot kaske dabaya'),
          backgroundColor: Colors.black,
          tooltip: 'Going up!',
        child: new Icon(Icons.camera_alt),
      ),


      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.add_a_photo),title: new Text('photo')),
        new BottomNavigationBarItem(icon: new Icon(Icons.alarm),title: new Text('alarm')),
        new BottomNavigationBarItem(icon: new Icon(Icons.arrow_back),title: new Text('back'))
      ],onTap: (int i)=>debugPrint("$i dabaayaa"),
      ),
    );





  }
}
