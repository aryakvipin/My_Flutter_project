import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Home_page.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: TestPage(),));
}
class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();

  }

  @override
  bool get wantKeepAlive => true;

  int _currentBottomBarIndex = 0;
  bool _showBottomBar = false;

  final _tabs = [
    Text('Bottom Tab 1'),
    Text('Bottom Tab 2'),
    Text('Bottom Tab 2'),
    Text('Bottom Tab 2'),

  ];

  Widget _changeUpperTab(upperTabIdx, isBottomBar) {
    setState(() {
      _showBottomBar = isBottomBar;
    });

    if (_showBottomBar) {
      return _tabs[_currentBottomBarIndex];
    } else {
      return Center(child: BlogtList(),);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(

            backgroundColor: Colors.indigo[50],

            title: Center(child: Text("Sweets",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
            //centerTitle: true,
            leading: IconButton(
              icon: FaIcon(Icons.arrow_back_ios,color: Colors.black,),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.menu_open,color: Colors.black,),
                onPressed: () {},
              )
            ],
            bottom: ButtonsTabBar(

                backgroundColor: Colors.blueGrey[600],
                unselectedBackgroundColor: Colors.white,
                //  labelStyle:

                // TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                // unselectedLabelStyle: TextStyle(
                //     color: Colors.green, fontWeight: FontWeight.bold),
                // borderWidth: 1,


                tabs: [
                  Tab(
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 20, right: 20),

                      child: Align(
                        alignment: Alignment.center,
                        child: Text('All',style: TextStyle(color: Colors.white)),),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 25, right: 25),

                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Chocolate',
                            style: TextStyle(color: Colors.black)),),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 20, right: 20),

                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Biscuts',style: TextStyle(color: Colors.black)),),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 20, right: 20),

                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Cow Milk',style: TextStyle(color: Colors.black)),),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 20, right: 20),

                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Puffles',style: TextStyle(color: Colors.black)),),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 20, right: 20),

                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Panajamrit',style: TextStyle(color: Colors.black)),),
                    ),
                  ),
                ]
            ),
          ),
          body: TabBarView(
            children: [
              _changeUpperTab(1, false),
              _changeUpperTab(2, false),
              _changeUpperTab(3, true),
              _changeUpperTab(4, true),
              _changeUpperTab(5, true),
              _changeUpperTab(6, true),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,

            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.black,),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search,color: Colors.black,),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person,color: Colors.black,),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart,color: Colors.black,),
                label: 'Cart',
              ),

            ],

            onTap: (index) {
              setState(() {
                _currentBottomBarIndex = index;
              });
            },
          )

      ),
    );
  }
}