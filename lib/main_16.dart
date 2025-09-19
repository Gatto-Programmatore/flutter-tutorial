import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Slivers'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slivers'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary
      ),
      body: CustomScrollView(
        slivers: [
          // AppBar personalizzata
          SliverAppBar(
            backgroundColor: Colors.green,
            pinned: true,
            // resta fissa al minimo quando andiamo in basso, altrimenti scompare
            expandedHeight: 120,
            // si ingrandisce quando andiamo in alto fino a tot grandezza
            flexibleSpace: FlexibleSpaceBar(title: Text('Slivers app bar')),
          ),
          // Lista
          SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 20, (
              context,
              index,
            ) {
              return ListTile(
                trailing: Icon(Icons.access_time_filled_outlined),
                title: Text('Ciao $index'),
              );
            }),
          ),
          // Griglia
          SliverGrid(
            delegate: SliverChildBuilderDelegate(childCount: 20, (
              context,
              index,
            ) {
              return GridTile(
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: Text('Ciao $index'),
                ),
              );
            }),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
          ),
          // Converte un oggetto normale di testo in un widget sliver cioè scrollabile
          SliverToBoxAdapter(
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id nisl faucibus, fringilla nunc in, aliquam sem. Suspendisse vel ante tellus. In facilisis augue et ligula scelerisque consequat. Cras ut fermentum est. Curabitur viverra ipsum sed finibus bibendum. Proin at purus augue. Nullam egestas ornare leo, vitae tincidunt nulla lacinia eget. Nunc sagittis interdum tellus, nec dictum est vehicula vitae. Aliquam molestie mi iaculis congue tincidunt. Aenean ornare convallis felis, vel condimentum urna hendrerit pellentesque. Quisque semper tellus vel sem consectetur porttitor. Sed lacus magna, rutrum quis metus nec, ullamcorper ultrices purus. Aenean erat turpis, malesuada faucibus congue quis, venenatis quis enim. Suspendisse vitae scelerisque ante. Etiam ut turpis auctor orci faucibus rhoncus. Vivamus et magna dolor. Cras iaculis volutpat odio ut pretium.Phasellus interdum, lacus at posuere varius, risus turpis consequat tellus, eu commodo lorem leo sed dui.Integer nisi turpis, luctus eu tortor fermentum, ultrices aliquet velit. Praesent eget diam magna. Donec luctus aliquet quam quis consectetur. Vivamus ut odio at dolor molestie sollicitudin eget et eros. Nullam scelerisque urna in viverra tincidunt.Aliquam sit amet mattis turpis, sit amet convallis erat. Sed urna turpis, vehicula sed dolor eu, elementum dictum diam.Ut felis justo, aliquet non nibh et, blandit blandit risus. Praesent semper neque in tincidunt tincidunt. Vivamus dapibus vehicula tristique. Aenean sagittis sem non ornare bibendum. Morbi diam orci, tempor in dictum eu, congue sit amet nisl. Suspendisse sit amet libero leo. Morbi massa libero, tempus vitae augue ut, vestibulum molestie velit. Curabitur nec posuere odio. Donec tempus imperdiet augue, et porta turpis lobortis et. Nulla tristique facilisis elit eu viverra . Fusce auctor quis dolor sit amet commodo. Sed rutrum lobortis nunc et ultricies. Etiam scelerisque consectetur mauris, eget elementum mi rutrum a. Phasellus sed turpis finibus, pulvinar risus a, tristique nulla. Etiam id posuere magna, in sodales mauris. Aliquam eget arcu laoreet sem rutrum convallis eget eu orci. Nullam vehicula leo felis, eget posuere enim pretium eget. Integer ultrices at arcu sit amet laoreet. Suspendisse facilisis ligula sed mauris molestie efficitur. Donec sit amet sapien nibh. Aliquam convallis, augue sed vestibulum malesuada, magna elit fermentum mauris, non vehicula quam odio id ligula. Nullam pretium ipsum et aliquam aliquet. Nulla gravida pretium leo at commodo. Pellentesque nec libero placerat, euismod sapien eget, euismod odio. Donec vel imperdiet arcu, vitae tincidunt dolor. Vivamus orci risus, gravida eu nibh non, rutrum maximus tellus. Aliquam iaculis dolor vitae ligula fermentum rhoncus. Maecenas et ligula ornare, auctor neque ac, venenatis felis. Suspendisse potenti. Curabitur congue tellus eu hendrerit ultrices. Ut at pellentesque elit. Etiam id rutrum odio. Maecenas auctor, sem nec facilisis pretium, massa metus bibendum tortor, malesuada suscipit ex magna a diam. Nulla ex risus, condimentum sed tortor et, lobortis pellentesque diam. Donec vel consequat ligula, quis laoreet nunc. Nulla facilisi. Praesent ac maximus neque. Donec non lectus ut sapien eleifend commodo non maximus augue. Donec molestie condimentum orci . Sed lacinia ultrices nulla ac lacinia. Sed egestas sed turpis nec laoreet. Vestibulum non est dolor. Nunc ultricies vel dui.",
            ),
          ),
        ],
      ),
    );
  }
}
