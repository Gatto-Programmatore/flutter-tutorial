import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Liste - ListView'),
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
  var lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(8),
              children: [
                for (var i in lista)
                  Container(
                    alignment: Alignment.center,
                    color: Colors.grey,
                    width: 100,
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: Text('$i'),
                  ),
              ],
            ),
          ),
          Container(
            height: 10,
            color: Colors.orange,
            margin: EdgeInsets.all(10),
          ),
          SizedBox(
            height: 250,
            child: ListView(
              children: [
                for (var i in lista)
                  Container(
                    alignment: Alignment.center,
                    color: Colors.grey,
                    height: 100,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Text('$i'),
                  ),
              ],
            ),
          ),
          Container(
            height: 10,
            color: Colors.orange,
            margin: EdgeInsets.all(10),
          ),
          SizedBox(
            height: 150,
            child: ListView(
              padding: EdgeInsets.only(top: 20),
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id nisl faucibus, fringilla nunc in, aliquam sem. Suspendisse vel ante tellus. In facilisis augue et ligula scelerisque consequat. Cras ut fermentum est. Curabitur viverra ipsum sed finibus bibendum. Proin at purus augue. Nullam egestas ornare leo, vitae tincidunt nulla lacinia eget. Nunc sagittis interdum tellus, nec dictum est vehicula vitae. Aliquam molestie mi iaculis congue tincidunt. Aenean ornare convallis felis, vel condimentum urna hendrerit pellentesque. Quisque semper tellus vel sem consectetur porttitor. Sed lacus magna, rutrum quis metus nec, ullamcorper ultrices purus. Aenean erat turpis, malesuada faucibus congue quis, venenatis quis enim. Suspendisse vitae scelerisque ante. Etiam ut turpis auctor orci faucibus rhoncus. Vivamus et magna dolor. Cras iaculis volutpat odio ut pretium.Phasellus interdum, lacus at posuere varius, risus turpis consequat tellus, eu commodo lorem leo sed dui.Integer nisi turpis, luctus eu tortor fermentum, ultrices aliquet velit. Praesent eget diam magna. Donec luctus aliquet quam quis consectetur. Vivamus ut odio at dolor molestie sollicitudin eget et eros. Nullam scelerisque urna in viverra tincidunt.Aliquam sit amet mattis turpis, sit amet convallis erat. Sed urna turpis, vehicula sed dolor eu, elementum dictum diam.Ut felis justo, aliquet non nibh et, blandit blandit risus. Praesent semper neque in tincidunt tincidunt. Vivamus dapibus vehicula tristique. Aenean sagittis sem non ornare bibendum. Morbi diam orci, tempor in dictum eu, congue sit amet nisl. Suspendisse sit amet libero leo. Morbi massa libero, tempus vitae augue ut, vestibulum molestie velit. Curabitur nec posuere odio. Donec tempus imperdiet augue, et porta turpis lobortis et. Nulla tristique facilisis elit eu viverra . Fusce auctor quis dolor sit amet commodo. Sed rutrum lobortis nunc et ultricies. Etiam scelerisque consectetur mauris, eget elementum mi rutrum a. Phasellus sed turpis finibus, pulvinar risus a, tristique nulla. Etiam id posuere magna, in sodales mauris. Aliquam eget arcu laoreet sem rutrum convallis eget eu orci. Nullam vehicula leo felis, eget posuere enim pretium eget. Integer ultrices at arcu sit amet laoreet. Suspendisse facilisis ligula sed mauris molestie efficitur. Donec sit amet sapien nibh. Aliquam convallis, augue sed vestibulum malesuada, magna elit fermentum mauris, non vehicula quam odio id ligula. Nullam pretium ipsum et aliquam aliquet. Nulla gravida pretium leo at commodo. Pellentesque nec libero placerat, euismod sapien eget, euismod odio. Donec vel imperdiet arcu, vitae tincidunt dolor. Vivamus orci risus, gravida eu nibh non, rutrum maximus tellus. Aliquam iaculis dolor vitae ligula fermentum rhoncus. Maecenas et ligula ornare, auctor neque ac, venenatis felis. Suspendisse potenti. Curabitur congue tellus eu hendrerit ultrices. Ut at pellentesque elit. Etiam id rutrum odio. Maecenas auctor, sem nec facilisis pretium, massa metus bibendum tortor, malesuada suscipit ex magna a diam. Nulla ex risus, condimentum sed tortor et, lobortis pellentesque diam. Donec vel consequat ligula, quis laoreet nunc. Nulla facilisi. Praesent ac maximus neque. Donec non lectus ut sapien eleifend commodo non maximus augue. Donec molestie condimentum orci . Sed lacinia ultrices nulla ac lacinia. Sed egestas sed turpis nec laoreet. Vestibulum non est dolor. Nunc ultricies vel dui.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
