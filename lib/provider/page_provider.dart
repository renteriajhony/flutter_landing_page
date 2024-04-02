import 'package:flutter/widgets.dart';
import 'package:universal_html/html.dart';

class PageProvider extends ChangeNotifier {
  PageController scrollController = PageController();

  final List<String> _pages = const [
    'home',
    'about',
    'pricing',
    'contact',
    'location',
  ];

  int currentIndex = 0;

  createScrollController(String routeName) {
    scrollController = PageController(
      initialPage: getPageIndex(routeName),
    );

    document.title = _pages[getPageIndex(routeName)];

    scrollController.addListener(() {
      final index = (scrollController.page ?? 0).round();
      if (index != currentIndex) {
        currentIndex = index;
        document.title = _pages[index];
        window.history.pushState(null, 'none', '#/${_pages[index]}');
      }
    });
  }

  int getPageIndex(String routeName) {
    int index = _pages.indexOf(routeName);
    return (index == -1) ? 0 : index;
  }

  goTo(int index) {
    // window.history.pushState(null, 'none', '#/${_pages[index]}');
    scrollController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
