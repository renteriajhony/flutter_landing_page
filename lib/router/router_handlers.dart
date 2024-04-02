import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

import '../vertical_landing_page.dart';

final homeHandler = Handler(handlerFunc: (
  context,
  params,
) {
  final page = params['page']?.first;

  final pageProvider = Provider.of<PageProvider>(context!, listen: false);
  pageProvider.createScrollController(page ?? '');
  return HomePage();
});
