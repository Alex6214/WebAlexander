import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:webprofessional/src/About.dart';
import 'package:webprofessional/src/Blog.dart';
import 'package:webprofessional/src/Contact.dart';
import 'package:webprofessional/src/Landing.dart';
import 'package:webprofessional/src/Resume.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler _landingPageHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Landing());

  static Handler _aboutHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          About());

  static Handler _blogHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Projects());

  static Handler _contactHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Contact());

  static Handler _resumeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Resume());

  static void setupRouter() {
    router.define(
      '/',
      handler: _landingPageHandler,
    );
    router.define(
      '/About',
      handler: _aboutHandler,
      // transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/Projects',
      handler: _blogHandler,
      // transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/Contact',
      handler: _contactHandler,
      // transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/Resume',
      handler: _resumeHandler,
      // transitionType: TransitionType.fadeIn,
    );
  }
}
