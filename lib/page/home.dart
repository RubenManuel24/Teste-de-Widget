import 'package:flutter/material.dart';
import 'package:test_unitario_widget/page/second_page.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _homeState();
}

class _homeState extends State<Home> {
  
  var contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste de Widget", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
         child: Text("Contador: $contador"),),
        SizedBox(height:9),
        Center(
          child: Text("Hello World"),),
        SizedBox(height:9),
        TextButton(
          key: Key("Botao de mudar pagina"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> SecondPage()));}, 
          child: Text("Change Page",style: TextStyle(color: Colors.black)),
          style: TextButton.styleFrom(backgroundColor: Colors.yellowAccent,),
          )

       ],
      ),
  
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: "Add valor",
            key: Key("Add valor"),
            onPressed: (){
              setState(() {
                contador++;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.yellowAccent,
            ),
            FloatingActionButton(
              heroTag: "Zerar valor",
              key: Key("Zerar valor"),
              onPressed: (){
              setState(() {
                contador = 0;
              });
            },
            child: Icon(Icons.restore),
            backgroundColor: Colors.yellowAccent,
            )
        ],
      ),
    );
  }
}