import 'package:equipmentCatalogue/Models/sample_data.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  static const routeName = 'Item Details Screen';
  final pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    final equipmentId = ModalRoute.of(context).settings.arguments as String;
    final equipment = equipments
        .firstWhere((equipment) => equipment.equipmentId == equipmentId);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height - 40,
          width: double.infinity,
          child: Card(
            elevation: 10,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: MediaQuery.of(context).size.width - 30,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.all(10),
                    title: Text(
                      '${equipment.title}',
                      style: TextStyle(
                          color: Colors.black, backgroundColor: Colors.white),
                    ),
                    centerTitle: true,
                    background: Card(
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        height: MediaQuery.of(context).size.width - 30,
                        width: MediaQuery.of(context).size.width - 30,
                        child: PageView.builder(
                          controller: pageController,
                          scrollDirection: Axis.horizontal,
                          itemCount: equipment.imageUrl.length,
                          itemBuilder: (ctx, index) => Container(
                            child: Hero(
                              tag: '${equipment.equipmentId}',
                              child: FadeInImage(
                                placeholder: AssetImage(
                                    'assets/images/micPlaceholder.jpg'),
                                image:
                                    NetworkImage(equipment.imageUrl[index]) ??
                                        null,
                                fit: BoxFit.fitHeight,
                                fadeInCurve: Curves.bounceIn,
                                fadeInDuration: Duration(milliseconds: 200),
                                fadeOutDuration: Duration(milliseconds: 100),
                              ),
                            ),
                            // PageView & PageController https://www.youtube.com/watch?v=J1gE9xvph-A
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Container(
                    color: Theme.of(context).primaryColor,
                    child: Card(
                      elevation: 10,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Features",
                              style: TextStyle(fontSize: 30),
                            ),
                            Divider(),
                            Container(
                              width: MediaQuery.of(context).size.width - 20,
                              child: SingleChildScrollView(
                                child: Container(
                                  height: 450,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  width: double.infinity - 10,
                                  child: ListView.builder(
                                    itemCount: equipment.description.length,
                                    itemBuilder: (ctx, index) => Text(
                                      '-> ${equipment.description[index]}',
                                      textAlign: TextAlign.left,
                                      softWrap: true,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 500,
                    color: Theme.of(context).primaryColor,
                    child: Card(),
                  )
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
