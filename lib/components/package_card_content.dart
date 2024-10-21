import 'package:flutter/material.dart';
import 'package:flutter_kitchen/models/package.dart';

class PackageCardContent extends StatelessWidget {
  final Package package;
  const PackageCardContent({super.key, required this.package});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      splashColor: Theme.of(context).primaryColor.withOpacity(0.15),
      onTap: () => print('Hello ${package.name}'),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        package.name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          print('touched ${package.name}');
                        },
                        icon: const Icon(Icons.star_border_outlined),
                        padding: EdgeInsets.all(0),
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  // const SizedBox(height: 5),
                  Text(
                    package.shortDescr,
                    style: const TextStyle(fontSize: 14),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Theme.of(context).primaryColor,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
