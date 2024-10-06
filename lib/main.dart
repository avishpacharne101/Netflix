import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text("Netflix",style:TextStyle(fontSize: 30,fontWeight: FontWeight.w800)),
        ),
        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context , index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Movies Genre",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 300,
                        width: 200,
                        child: Image.network("https://static-koimoi.akamaized.net/wp-content/new-galleries/2012/07/The-Dark-Knight-Rises-Movie.jpg",fit: BoxFit.cover,),
                      ),

                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 300,
                        width: 200,
                        child: Image.network("https://stat5.bollywoodhungama.in/wp-content/uploads/2021/02/Salaar-4-306x393.jpg",fit: BoxFit.cover,),
                      ),

                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 300,
                        width: 200,
                        child: Image.network("https://rukminim2.flixcart.com/image/850/1000/kv5kfww0/wall-decoration/r/a/6/movies-hollywood-movies-wallpaper-poster-preview-1-vp251021-308-original-imag846zzz3rn42r.jpeg?q=90&crop=false",fit: BoxFit.cover,),
                      ),

                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 300,
                        width: 200,
                        child: Image.network("https://static-koimoi.akamaized.net/wp-content/new-galleries/2012/07/The-Dark-Knight-Rises-Movie.jpg",fit: BoxFit.cover,),
                      ),

                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 300,
                        width: 200,
                        child: Image.network("https://rukminim2.flixcart.com/image/850/1000/kv5kfww0/wall-decoration/r/a/6/movies-hollywood-movies-wallpaper-poster-preview-1-vp251021-308-original-imag846zzz3rn42r.jpeg?q=90&crop=false",fit: BoxFit.cover,),
                      ),
                      
                    ],
                  ),
                )
              ],
            );
          },
        )
            
      ),
    );
  }
}
