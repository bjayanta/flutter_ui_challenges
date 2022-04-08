import 'package:flutter/material.dart';
import 'package:travel_app/models/travel.dart';

class PlaceWidget extends StatelessWidget {
  final _list = Travel.generateTravelBlog();
  final _pageCtrl = PageController(viewportFraction: 0.9);

  // const PlaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pageCtrl,
        itemCount: _list.length,
        itemBuilder: (context, index) {
          var travle = _list[index];

          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  bottom: 30,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    travle.url,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          );
        });
  }
}
