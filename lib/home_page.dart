import 'package:flutter/material.dart';
import 'package:newapp_getx/widget/news_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabs = [];

  @override
  void initState() {
    super.initState();
    tabs.add(tab("Technolgy"));
    tabs.add(tab("Business"));
    tabs.add(tab("Entertainment"));
    tabs.add(tab("Sports"));
    tabs.add(tab("Health"));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("SnippetCode - News App"),
          elevation: 0,
          centerTitle: false,
          bottom: TabBar(
            tabs: tabs,
            isScrollable: true,
            labelColor: Colors.redAccent,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.redAccent,
          ),
          actions: [
            Icon(Icons.search, color: Colors.black,),
            SizedBox(width:10),
            Icon(Icons.notifications, color: Colors.black,),
            SizedBox(width:10),
          ],
        ),
        body: TabBarView(
          children: tabs.map(
                  (model)=> NewsCardWidget()
          ).toList(),
        )
      ),
    );
  }

  Widget tab(String tagName) {
    return Tab(text: tagName);
  }
}
