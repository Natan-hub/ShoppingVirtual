import 'package:flutter/material.dart';
import 'package:flutter_shoppe/models/page_manager.dart';
import 'package:flutter_shoppe/services/const.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerTile(
            iconData: Icons.home_rounded,
            title: 'Início',
            page: 0,
          ),
          DrawerTile(
            iconData: Icons.list_rounded,
            title: 'Produtos',
            page: 1,
          ),
          DrawerTile(
            iconData: Icons.request_quote_rounded,
            title: 'Meus Pedidos',
            page: 2,
          ),
          DrawerTile(
            iconData: Icons.location_on_rounded,
            title: 'Lojas',
            page: 3,
          ),
        ],
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile(
      {super.key,
      required this.iconData,
      required this.title,
      required this.page});

  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    final int currentPage = context.watch<PageManager>().page;

    return InkWell(
      onTap: () {
        context.read<PageManager>().setPage(page);
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Icon(
                iconData,
                size: 32,
                color: currentPage == page ? primaryColor : Colors.grey[700],
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: currentPage == page ? primaryColor : Colors.grey[700],
              ),
            )
          ],
        ),
      ),
    );
  }
}
