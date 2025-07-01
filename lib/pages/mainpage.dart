import 'package:flutter/material.dart';
import 'package:shop_app/components/Gridview.dart';
import 'package:shop_app/pages/notification_page.dart';
import 'package:shop_app/pages/start_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final controller = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        foregroundColor: Colors.black54,
        title: Center(
          child: Text(
            "Coffee Restaurant",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(
            builder:
                (context) => IconButton(highlightColor: Colors.blue,

                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu,color: Colors.white,),
                ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(highlightColor: Colors.blue,
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationPage()),
                  ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Image(image: AssetImage("images/Cold_coffee.jpg")),
            ),

            ListTile(
          splashColor: Colors.blue,
              onTap: () => Navigator.pop(context),
              leading: Icon(Icons.home, color: Colors.red),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),

            ListTile(
              splashColor: Colors.blue,
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage(),)),
              leading: Icon(Icons.notifications, color: Colors.red),
              title: Text(
                "Notification",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            ListTile(
              splashColor: Colors.blue,
              onTap: (){},
              leading: Icon(Icons.favorite, color: Colors.red),
              title: Text(
                "Favourite",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            SizedBox(height: 200,),
            ListTile(
              splashColor: Colors.blue,
              onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => StartedPage(),)),
              leading: Icon(Icons.delete, color: Colors.red),
              title: Text(
                "Exit",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Text(
                "Its a Great Day of Coffee for you",
                style: TextStyle(
                  color :Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Find Your Coffee",
                prefixIcon: Icon(Icons.search),
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 10,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          TabBar(
            controller: _tabController,
            labelColor: Colors.deepOrange,
            unselectedLabelColor: Colors.white,
            isScrollable: true,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 3, color: Colors.deepOrange),

              insets: EdgeInsets.symmetric(horizontal: 2),
            ),
            labelStyle: TextStyle(fontSize: 20),
            labelPadding: EdgeInsets.symmetric(horizontal: 18),

            tabs: [
              Tab(child: Text("Hot coffee")),
              Tab(child: Text("Cold coffee")),
              Tab(child: Text("Cappuccino")),
              Tab(child: Text("Americano")),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridviewContainer(),
          ),
        ],
      ),
    );
  }
}
