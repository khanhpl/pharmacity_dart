import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home_screen.dart';
import '../services/product_lists/product_list.dart';
import '../services/orders.dart';
import '../services/accounts/accounts.dart';
import '../services/shopping_cart.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';


class MyMainPage extends StatefulWidget {
  // MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyMainPageState extends State<MyMainPage> {
  static int _selectedIndex = 0;

  ScrollController _hideBottomNavController = ScrollController();

  bool _isVisible = true;

  @override
  initState() {
    super.initState();
    _hideBottomNavController.addListener(
          () {
        if (_hideBottomNavController.position.userScrollDirection == ScrollDirection.reverse) {
          print('up');
          if (_isVisible)
            setState(() {
              _isVisible = false;
            });
        }
        if (_hideBottomNavController.position.userScrollDirection == ScrollDirection.forward) {
          print('down');
          if (!_isVisible)
            setState(() {
              _isVisible = true;
            });
        }
        if (_hideBottomNavController.position.userScrollDirection == ScrollDirection.idle) {
          print('no scrolling');
          if (_isVisible)
            setState(() {
              _isVisible = false;
            });
        }
      },
    );
  }

  void toggleView() {
    setState(() => _selectedIndex = 0);
  }

  // final List<Widget> _children = [
  //   MyHomeScreen(),
  //   ProductList(),
  //   Order(),
  //   Account()
  // ];

  Widget pageCaller(index) {
    switch (index) {
      case 0:
        {
          return MyHomeScreen(scrollController: _hideBottomNavController);
        }
      case 1:
        {
          return ProductList();
        }
      case 2:
        {
          return Order(toggleView: toggleView);
        }
      case 3:
        {
          return Account();
        }
      default:
        {
          return MyHomeScreen(scrollController: _hideBottomNavController);
        }
    }
  }


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageCaller(_selectedIndex),
      bottomNavigationBar: Offstage(
        offstage: !_isVisible,
        child:ConvexAppBar(
          style: TabStyle.react,
          backgroundColor: Colors.white,
          color: Colors.grey[700],
          activeColor: Theme.of(context).primaryColor,
          onTap: _onItemTapped,
          initialActiveIndex: 0,
          top:-13,
          curveSize: 60,
          items: [
            TabItem(icon: Octicons.home, title: 'Trang ch???',),
            TabItem(icon: Icons.medication_outlined, title: 'Doanh m???c'),
            TabItem(icon: LineariconsFree.inbox_1, title: '????n h??ng'),
            TabItem(icon: Icons.account_circle_outlined, title: 'C?? nh??n'),
          ],
        ),
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        radius: 25.0,

        child: IconButton(
          color:Colors.white,
          iconSize: 20,
          icon: Icon(FontAwesome.basket),
          onPressed: () {
            // Navigator.pushNamed(context, '/shoppingCart');
            Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartPage()));
          },
        ),
      ),

    );
  }
}

// BottomNavigationBar(
// iconSize: 40.0,
// selectedItemColor: Colors.blue,
// unselectedItemColor: Colors.grey,
// showUnselectedLabels: true,
// onTap: _onItemTapped,
// currentIndex: _selectedIndex,
// items: [
// BottomNavigationBarItem(
// label: 'Trang ch???',
// icon: Icon(
// Icons.home,
// ),
// ),
// BottomNavigationBarItem(
// label: 'Doanh m???c s???n ph???m',
// icon: Icon(
// Icons.medication_outlined,
// ),
// ),
// BottomNavigationBarItem(
// label: '????n h??ng',
// icon: Icon(
// Icons.receipt_long_outlined,
// ),
// ),
// BottomNavigationBarItem(
// label: 'C?? nh??n',
// icon: Icon(
// Icons.account_circle_outlined,
// ),
// ),
// ],
// ),
