import 'package:flutter/material.dart';
import 'package:login_page/screens/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainFirstPage extends StatelessWidget {
  MainFirstPage({Key? key}) : super(key: key);
  final _searchInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLY'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.red),
        ),
        actions: [
          Icon(Icons.person),
        ],
      ),
      //drawer button
      drawer: openDrower(context: context),

      body: Container(
        child: ListView(
          children: [
            searchBar(),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      mycards(),
                      mycards3(),
                      mycards5(),
                      mycards7(),
                    ],
                  ),
                  Column(
                    children: [
                      mycards2(),
                      mycards4(),
                      mycards6(),
                      mycards8(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

//search bar
//----------------------------------------------------------------------------
  Widget searchBar() => Container(
      // color: Colors.blue,
      height: 80,
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              prefixIcon: Icon(Icons.search),
              hintText: 'search....'),
        ),
      ));
//----------------------------------------------------------------------------
//first card
  Widget mycards() => Container(
        width: 175,
        child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://i.pinimg.com/236x/ef/93/f6/ef93f6c08cc9e3e027ad8b478002715d.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Logo Color Guidelines: The Science Of Color & Psychology',
                  ),
                )
              ],
            )),
      );
//----------------------------------------------------------------------------
//card2
  Widget mycards2() => Container(
        width: 175,
        child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://i.pinimg.com/236x/3e/df/23/3edf2351b0860478f0f42f72ad665b47.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                      'https://i.pinimg.com/75x75_RS/a1/9b/f5/a19bf57f06327c04d48e3090706c8291.jpg',
                    )),
                    title: Text(
                      'Thor // Avenger End Game',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                )
              ],
            )),
      );
//----------------------------------------------------------------------------
//card 3
  Widget mycards3() => Container(
        width: 175,
        child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://i.pinimg.com/236x/3f/83/4d/3f834d4d04bcd65ebaffb37d25ac51b8.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                        'https://i.pinimg.com/75x75_RS/2d/bd/4f/2dbd4f66943495c8034178393009e4a5.jpg',
                      )),
                      title: Text('Rider Show..'),
                    ))
              ],
            )),
      );
//----------------------------------------------------------------------------
  //card 4

  Widget mycards4() => Container(
        width: 175,
        child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://i.pinimg.com/236x/9c/a5/59/9ca55943b359ee8d7682e8fad7c1e98f.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'ryu street fighter v 2020 4k iPhone X Wallpapers',
                  ),
                )
              ],
            )),
      );
//----------------------------------------------------------------------------
// card 5
  Widget mycards5() => Container(
        width: 175,
        child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://i.pinimg.com/236x/02/9d/5c/029d5cf0852daca373fb24e53de7c894.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'tesla_model_y___concept_ui_full.png by Alex Pushkin 🔥',
                  ),
                )
              ],
            )),
      );
//----------------------------------------------------------------------------
  //card 6
  Widget mycards6() => Container(
        width: 175,
        child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://i.pinimg.com/236x/ce/bb/05/cebb05952c716b15dbd522d3b1a81fd8.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )),
      );
//----------------------------------------------------------------------------
//card 7
  Widget mycards7() => Container(
        width: 175,
        child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://i.pinimg.com/236x/ef/2d/4f/ef2d4fca47038cc06fe28e845a932405.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                    'https://i.pinimg.com/75x75_RS/2a/83/1e/2a831ec34f89679234ed1389d0f0eb96.jpg',
                  )),
                  title: Text('Spiderman Back View'),
                )
              ],
            )),
      );
//----------------------------------------------------------------------------
//card 8
  Widget mycards8() => Container(
        width: 175,
        child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://i.pinimg.com/236x/f1/70/23/f17023eaeddf001bd91742abfca77e0a.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Iron Man Snap 4K - IPhone Wallpapers',
                  ),
                )
              ],
            )),
      );
//-----------------------------------------------------------------------
//open drawer button
  Widget openDrower({required BuildContext context}) => Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                  child: Text(
                'Menu Bar',
                style: TextStyle(fontSize: 20),
              )),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text('Share with frinds'),
            ),
            ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log out'),
                onTap: () async {
                  SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  await sharedPreferences.remove('Password');
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (contx) => LoginScreen()));
                })
          ],
        ),
      );
}
