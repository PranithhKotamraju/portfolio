import 'package:first_proj/models/projects.dart';
import 'package:first_proj/util/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter_icons/flutter_icons.dart';

class ProjectPreview extends StatelessWidget {
  final Project project;
  ProjectPreview({@required this.project});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {
          html.window.open(project.link, '');
        },
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: GridTile(
            child: Image.asset(
              project.image,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black.withOpacity(0.6),
              title: Text(
                project.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: Config.xMargin(context, 4),
                  fontWeight: FontWeight.w900,
                ),
              ),
              subtitle: Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    project.description,
                    style: TextStyle(
                      fontSize: Config.xMargin(context, 2.3),
                      height: 1.0,
                    ),
                    softWrap: true,
                    maxLines: 4,
                  ),
                ),
              ),
              trailing: FlatButton.icon(
                label: Text('GitHub'),
                icon: Icon(
                  FontAwesome.github,
                  size: Config.xMargin(context, 5),
                ),
                onPressed: () {
                  html.window.open(project.link, '');
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
