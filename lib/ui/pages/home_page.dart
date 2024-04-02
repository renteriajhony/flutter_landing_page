import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../vertical_landing_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: _buildBoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(
              right: 20,
              top: 20,
              child: CustomAppmenu(),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
          colors: [
            Colors.pink,
            Colors.grey,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.5,
            0.5,
          ]),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return PageView(
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      children: const [
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView(),
      ],
    );
  }
}
