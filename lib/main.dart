import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi= MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi/20),
                child: SizedBox(
                  width: ekranGenisligi/4,
                    height: ekranYuksekligi/6,
                    child: Image.asset("resimler/logo.png")),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )
                  ),
                ),
              ),
          
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Şifre",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      )
                  ),
                ),
              ),
          
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/25),
                child: SizedBox(
                  width: ekranGenisligi/1.2,
                  height: ekranYuksekligi/12,
                  child: ElevatedButton(
                    child: Text("GİRİŞ YAP", style: TextStyle(color:Colors.white, fontSize: ekranGenisligi/25),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                    onPressed:() {
                      print("Giriş Yapıldı");
                    },
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Yardım Seçildi");
                },
                child: Text(
                    "Yardım?",
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: ekranGenisligi/30,
                ),
                ),
              ),
          
            ],
          ),
        ),
      ),

    );
  }
}
