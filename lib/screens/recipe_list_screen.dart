import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
            backgroundColor: Colors.lightGreenAccent,
            expandedHeight: 250,
            title: const Text('FoodNow'),
            leading: const Icon(Icons.arrow_back_ios),
            actions: const [Icon(Icons.star_outline_rounded)],
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Jollof_Rice_with_Stew.jpg/800px-Jollof_Rice_with_Stew.jpg',
                fit: BoxFit.cover,
              ),
              title: const Text(
                'Africa Jollof',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2.1),
              ),
            )),
        buildImages()
      ],
    ));
  }

  Widget buildImages() => SliverToBoxAdapter(
          child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        primary: false,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => Card(
          child: Image.network(
              'https://www.nigerianfoodtv.com/wp-content/uploads/2013/02/jollof-rice-nigerian-jollof-rice-1-800x533.jpg?ezimgfmt=ng:webp/ngcb6'),
        ),
      ));
}
