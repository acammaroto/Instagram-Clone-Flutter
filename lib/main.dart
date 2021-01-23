import 'package:flutter/material.dart';
import 'package:insagram_clone/models/colors.dart';
import 'package:insagram_clone/services/profile.service.dart';
import 'package:insagram_clone/views/appbar.widget.dart';
import 'package:insagram_clone/views/gallery.widget.dart';
import 'package:insagram_clone/views/headline.widget.dart';
import 'package:insagram_clone/views/highlights.widget.dart';
import 'package:insagram_clone/views/info.widget.dart';
import 'package:insagram_clone/views/navbar.widget.dart';
import 'package:insagram_clone/views/profile_function.widget.dart';
import 'package:insagram_clone/views/toolbar.widget.dart';

void main() {
  runApp(InstagramClone());
}

class InstagramClone extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePage createState() => _HomePage();
}

final ProfileService service = ProfileService();

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: SizedBox(
        height: 85,
        child: Navbar(
          selectedIndex: 0,
          onTap: () => {},
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          AppBarInstagram(
            service: service,
          ),
          Expanded(
            child: CustomScrollView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Headline(
                        service: service,
                      );
                    },
                    childCount: 1,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return InfoWidget(
                        service: service,
                      );
                    },
                    childCount: 1,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return ProfileFunction();
                    },
                    childCount: 1,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Highlights(
                        service: service,
                      );
                    },
                    childCount: 1,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Toolbar();
                    },
                    childCount: 1,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Gallery(
                        service: service,
                      );
                    },
                    childCount: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
