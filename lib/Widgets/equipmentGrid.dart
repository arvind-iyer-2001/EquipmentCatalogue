import 'package:equipmentCatalogue/Models/equipmentModels.dart';
import 'package:equipmentCatalogue/Screens/itemDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EquipmentGrid extends StatelessWidget {
  const EquipmentGrid({
    @required this.displayedItems,
  });

  final List<EquipmentItem> displayedItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: displayedItems.length == 0
          ? Center(
              child: Text(
                'No Item Found',
                style: GoogleFonts.pacifico(),
              ),
            )
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: displayedItems.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        settings: RouteSettings(
                          arguments: displayedItems[index].equipmentId,
                        ),
                        builder: (context) {
                          return ItemDetail();
                        },
                      ),
                    );
                  },
                  child: GridTile(
                    child: Hero(
                      tag: '${displayedItems[index].equipmentId}',
                      child: FadeInImage(
                        placeholder:
                            AssetImage('assets/images/micPlaceholder.jpg'),
                        image: NetworkImage(
                          displayedItems[index].imageUrl[0],
                        ),
                        fit: BoxFit.contain,
                        fadeInCurve: Curves.bounceIn,
                        fadeInDuration: Duration(milliseconds: 200),
                        fadeOutDuration: Duration(milliseconds: 100),
                      ),
                    ),
                    footer: Text(
                      displayedItems[index].title,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
