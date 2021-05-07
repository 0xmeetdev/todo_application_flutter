import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:todo_application/uilt/color.dart';
import 'package:todo_application/uilt/fonts.dart';

streamNotes(snapshot) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    child: StaggeredGridView.countBuilder(
      padding: EdgeInsets.only(top: 20),
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(index.isEven ? 1 : 1, index.isEven ? 1.5 : 1),
      // controller: new ScrollController(keepScrollOffset: false),
      // shrinkWrap: true,
      // scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemCount: snapshot.data.docs.length,
      itemBuilder: (BuildContext context, int index) {
        var docs = snapshot.data.docs[index];
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
            color: grey,
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                docs.get("title").length < 25
                    ? docs.get("title")
                    : docs.get("title").substring(0, 25) + "...",
                style: homeNoteTitleFont(Colors.black),
              ),
              SizedBox(height: 8),
              Container(
                height: index.isEven ? 90 : 200,
                child: Text(
                  docs.get("dec"),
                  style: homeNoteDataFont(Colors.black),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
