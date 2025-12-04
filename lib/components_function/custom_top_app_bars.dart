import 'package:flutter/material.dart';

class CustomTopAppBars extends StatefulWidget {
  const CustomTopAppBars({super.key});

  @override
  State<CustomTopAppBars> createState() => _CustomTopAppBarsState();
}

class _CustomTopAppBarsState extends State<CustomTopAppBars> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: Text('Center-aligned'),
          leading: BackButton(),
          actions: [
            IconButton(
              iconSize: 32,
              icon: const Icon(Icons.account_circle_outlined),
              onPressed: () {},
            ),
          ],
          centerTitle: true,
        ),
        SizedBox(height: 20),
        AppBar(
          title: Text('Left-Title'),
          leading: BackButton(),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.attach_file),
              iconSize: 32,
            ),
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.event),
              iconSize: 32,
            ),
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.more),
              iconSize: 32,
            ),
          ],
        ),
        SizedBox(height: 60),
        SizedBox(
          height: 200,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: BackButton(),
                title: Text('Normal-Sliver-Title'),
                actions: [
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.attach_file),
                    iconSize: 32,
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.event),
                    iconSize: 32,
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.more_vert),
                    iconSize: 32,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: CustomScrollView(
            slivers: [
              SliverAppBar.medium(
                leading: BackButton(),
                title: Text('Medium-Sliver-Title'),
                actions: [
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.attach_file),
                    iconSize: 32,
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.event),
                    iconSize: 32,
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.more_vert),
                    iconSize: 32,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: CustomScrollView(
            slivers: [
              SliverAppBar.large(
                leading: BackButton(),
                title: Text('Large-Sliver-Title'),
                actions: [
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.attach_file),
                    iconSize: 32,
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.event),
                    iconSize: 32,
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.more_vert),
                    iconSize: 32,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
