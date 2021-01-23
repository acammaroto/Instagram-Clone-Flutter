import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insagram_clone/models/colors.dart';

class Navbar extends StatefulWidget {
  const Navbar({
    Key key,
    @required int selectedIndex,
    @required Function onTap,
  })  : _selectedIndex = selectedIndex,
        _onTap = onTap,
        super(key: key);

  final int _selectedIndex;
  final Function _onTap;

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        boxShadow: [
          BoxShadow(color: midGrey, spreadRadius: 0, blurRadius: 0.5),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: SizedBox(
          child: BottomNavigationBar(
            backgroundColor: white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/home.png"))),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/search.png"))),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/plus_square.png"))),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/reel.png"))),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                      border: Border.all(color: black, width: 2),
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage("assets/profileimage.png"))),
                ),
                label: "",
              ),
            ],
            currentIndex: widget._selectedIndex,
            selectedItemColor: black,
            unselectedItemColor: gray,
            onTap: null,
            iconSize: 24,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
