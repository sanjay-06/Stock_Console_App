import 'package:flutter/material.dart';
import 'package:stockconsole/models/news.dart';
import 'package:stockconsole/screens/widgets/NavBar.dart';
import 'package:stockconsole/services/api.dart';

class Stocknews extends StatefulWidget {
  const Stocknews({Key? key}) : super(key: key);

  @override
  State<Stocknews> createState() => _StocknewsState();
}

class _StocknewsState extends State<Stocknews> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NavBar()));
          },
        ),
        centerTitle: true,
        title: const Text("Stock News"),
      ),

      //Now let's call the APi services with futurebuilder wiget
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          //let's check if we got a response or not
          if (snapshot.hasData) {
            //Now let's make a list of articles
            List<Article>? articles = snapshot.data;
            return ListView.builder(
              //Now let's create our custom List tile
              itemCount: articles!.length,
              itemBuilder: (context, index) => Text(articles[index].title),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
