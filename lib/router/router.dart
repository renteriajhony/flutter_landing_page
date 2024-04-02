import 'package:fluro/fluro.dart';

import '../vertical_landing_page.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static void configureRoutes() {
    //Rutas
    router.define('/:page', handler: homeHandler);
    // 404
    router.notFoundHandler = homeHandler;
  }
}
