import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/component_decoration.dart';

class CarouselPage extends StatelessWidget {
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComponentDecoration(
          label: 'Carousel', 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8), 
                child: Text('Uncontained Carousel'),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(height: 150),
                child: CarouselView(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                  shrinkExtent: 100,
                  itemExtent: 180,
                  children: List<Widget>.generate(20, (index) {
                    return Center(child: Text('Item $index'));
                  }),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 8), 
                child: Text('Uncontained Carousel with snapping effect'),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(height: 150),
                child: CarouselView(
                  itemSnapping: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                  shrinkExtent: 100,
                  itemExtent: 180,
                  children: List<Widget>.generate(20, (index) {
                    return Center(child: Text('Item $index'));
                  }),
                ),
              ),
            ],
          )
        ),
      ],
    );
  }
}