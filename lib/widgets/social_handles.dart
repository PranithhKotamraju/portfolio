// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:first_proj/util/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SocialHandles extends StatefulWidget {
  @override
  _SocialHandlesState createState() => _SocialHandlesState();
}

class _SocialHandlesState extends State<SocialHandles> {
  Container socialButton(BuildContext context, IconData icon, String link) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(context).textTheme.bodyText1.color,
          width: 2.0,
        ),
      ),
      margin: EdgeInsets.only(right: Config.xMargin(context, 4)),
      child: RaisedButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.all(Config.xMargin(context, 3)),
        shape: CircleBorder(),
        color: Colors.transparent,
        hoverColor: Theme.of(context).accentColor,
        elevation: 4,
        hoverElevation: 8,
        child: Icon(
          icon,
          size: Config.xMargin(context, 5),
        ),
        onPressed: () {
          html.window.open(link, '');
        },
      ),
    );
  }

  final List<Map<String, dynamic>> _socials = [
    {'icon': FontAwesome.envelope_o, 'link': 'mailto:abraraltaf92@icloud.com'},
    {'icon': FontAwesome.twitter, 'link': 'https://twitter.com/abraraltaf92'},
    {'icon': FontAwesome.github, 'link': 'https://github.com/abraraltaf92'},
    {
      'icon': FontAwesome.linkedin,
      'link': 'https://www.linkedin.com/in/abraraltaf92/'
    },
    {
      'icon': FontAwesome.instagram,
      'link': 'https://www.instagram.com/abraraltaf92/'
    },
    {'icon': FontAwesome.whatsapp, 'link': 'https://wa.me/+917889881902'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Config.yMargin(context, 8),
      margin: EdgeInsets.symmetric(vertical: 5),
      alignment: Alignment.centerLeft,
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _socials
              .map((social) =>
                  socialButton(context, social['icon'], social['link']))
              .toList(),
        ),
      ),
    );
  }
}
