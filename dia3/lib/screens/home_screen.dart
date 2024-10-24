import 'package:dia3/widgets/items.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState(){
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection(){
    if(_tabController.indexIsChanging){
      setState(() {
        
      });
    }
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                       print("Soy el Sort");
                      },
                      child: const Icon(
                        Icons.sort_rounded,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("Soy la notificacion");
                      },
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text("It's a Grate Day for Coffee",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  //letterSpacing: 2,
                ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Find your Coffee",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.white.withOpacity(0.5),),
                  ),
                ),
              ),
              TabBar(
                controller: _tabController,
                //Estilo
                labelColor: Colors.amber,
                unselectedLabelColor: Colors.white.withOpacity(0.3),
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3.0,
                    color: Colors.amber.withOpacity(0.5)
                  ),
                  insets: const EdgeInsets.symmetric(horizontal: 16),
                ),
                tabs: const [
                  Tab(
                    child: Text("Hot Coffee"),
                  ),
                  Tab(
                    child: Text("Cold Coffee"),
                  ),
                  Tab(
                    child: Text("Cappuiccino"),
                  ),
                  Tab(
                    child: Text("Americano"),
                  ),
                ]
              ),
              const SizedBox(height: 10),
              const Center(
                child: ItemWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}