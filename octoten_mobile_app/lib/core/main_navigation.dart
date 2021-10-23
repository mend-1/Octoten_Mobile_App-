import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/pages/credit_card.dart';
import 'package:octoten_mobile_app/pages/filter.dart';
import 'package:octoten_mobile_app/pages/my_account_menu.dart';
import 'package:octoten_mobile_app/pages/my_order.dart';
import 'package:octoten_mobile_app/pages/review.dart';
import 'package:octoten_mobile_app/pages/sory_by.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({this.navigatorKey}) : super(key: navigatorKey);
  final GlobalKey<NavigatorState>? navigatorKey;

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  static List<Widget> tabs = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: widget.navigatorKey,
        initialRoute: 'Octoten',
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(builder: (context) {
            Widget page;
            switch (routeSettings.name) {
              case 'octoten':
                page = const CreditCard();
                break;
              case 'CreditCard':
                page = Filter();
                break;
              case 'Filter':
                page = const MyAccount();
                break;
              case 'MyAccount':
                page = const MyOrder();
                break;
              case 'MyOrder':
                page = const Review();
                break;
              case 'Review':
                page = SoryBy();
                break;
              default:
                page = const Center();
            }
            return WillPopScope(
                onWillPop: () async {
                  Navigator.of(context).maybePop();
                  return false;
                },
                child: page);
          });
        },
      ),
    );
  }
}
