import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:revyline/core/utils/stack_grid.dart';
import 'package:revyline/core/widgets/notify_badge.dart';
import 'package:revyline/core/widgets/svg_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    StackGrid stackGrid = StackGrid(width: MediaQuery.of(context).size.width, sourceWidth: 385, sourceHeight: 227);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/img/logo.png',
            width: 140,
            height: 28,
          ),
          actions: [
            SvgButton(
              width: 30,
              height: 30,
              assetName: 'message_open',
              onTap: () {},
              color: colorScheme.primary,
            ),
            SvgButton(width: 30, height: 30, assetName: 'phone', onTap: () {}, color: colorScheme.primary),
            const SizedBox(width: 20),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return SvgPicture.asset(
                          'assets/svg/card.svg',
                          width: stackGrid.width,
                          height: stackGrid.height,
                        );
                      },
                    ),
                    Positioned(
                        top: stackGrid.getY(10),
                        left: stackGrid.getX(37),
                        child: Row(
                          children: [
                            Text("0", style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
                            const SizedBox(width: 5),
                            Text("бонусов", style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400)),
                          ],
                        )),
                    Positioned(
                        top: stackGrid.getY(23),
                        left: stackGrid.getX(80),
                        child: SvgButton(
                          width: 20,
                          height: 20,
                          assetName: 'help',
                          color: Colors.black,
                          onTap: () {
                            print("Help");
                          },
                        )),
                    Positioned(
                        top: stackGrid.getY(65),
                        left: stackGrid.getX(61),
                        child: SvgButton(
                          width: 97,
                          height: 35,
                          assetName: 'qr_code',
                          onTap: () {
                            print("clicked qr code");
                          },
                        )),
                    Positioned(
                        top: stackGrid.getY(12), left: stackGrid.getX(8), child: Image.asset('assets/img/tooth.png', width: 55, height: 66)),
                  ],
                ),
                Card(
                  elevation: 0,
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Россия, Москва', style: textTheme.titleMedium),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                        dense: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      ),
                      ListTile(
                        title: Text('Мои заказы', style: textTheme.titleMedium),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                        dense: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 0,
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        title: Row(
                          children: [
                            Text('Избранное', style: textTheme.titleMedium),
                            const SizedBox(width: 10),
                            const NotifyBadge(count: 2),
                          ],
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                        dense: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Text('Сравнение', style: textTheme.titleMedium),
                            const SizedBox(width: 10),
                            const NotifyBadge(count: 2),
                          ],
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                        dense: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      ),
                    ],
                  ),
                ),
                Card(
                    color: Colors.white,
                    elevation: 0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Акции', style: textTheme.titleMedium),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                          dense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        ),
                      ],
                    )),
                Card(
                    elevation: 0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Уведомления', style: textTheme.titleMedium),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                          dense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        ),
                        ListTile(
                          title: Text('О нас', style: textTheme.titleMedium),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                          dense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        ),
                        ListTile(
                          title: Text('Доставка и оплата', style: textTheme.titleMedium),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                          dense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        ),
                        ListTile(
                          title: Text('Контакты', style: textTheme.titleMedium),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                          dense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        ),
                      ],
                    )),
                Card(
                    elevation: 0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Подписки', style: textTheme.titleMedium),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                          dense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        ),
                      ],
                    )),
                Card(
                    elevation: 0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Возврат, обмен, гарантия', style: textTheme.titleMedium),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                          dense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        ),
                      ],
                    )),
                Card(
                    elevation: 0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Есть вопросы?', style: textTheme.titleSmall),
                              Text('Чат с консультантом', style: textTheme.titleMedium)
                            ],
                          ),
                          minVerticalPadding: 10,
                          leading: getLeadingIcon(color: colorScheme.primary),
                          onTap: () {},
                          dense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Colors.grey,
                              ),
                              bottom: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Служба поддержки с 8:00 до 23:00', style: textTheme.titleSmall),
                                Text('8(495)181-20-00', style: textTheme.titleMedium)
                              ],
                            ),
                            minVerticalPadding: 10,
                            leading: getLeadingIcon(color: colorScheme.primary, iconPath: 'assets/svg/phone.svg'),
                            onTap: () {},
                            dense: true,
                            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          ),
                        ),
                        ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Электронная почта', style: textTheme.titleSmall),
                              Text('sale@revyline.ru', style: textTheme.titleMedium)
                            ],
                          ),
                          minVerticalPadding: 10,
                          leading: getLeadingIcon(color: colorScheme.primary, iconPath: 'assets/svg/message_open.svg'),
                          onTap: () {},
                          dense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        ),
                      ],
                    )),
                Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text('Условия использования приложения',
                          style: textTheme.titleSmall?.copyWith(
                            color: colorScheme.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: colorScheme.primary,
                          ))),
                ),
                const SizedBox(height: 60)
              ],
            ),
          ),
        ));
  }
}

Widget getLeadingIcon({String? iconPath, required Color color}) {
  return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: iconPath != null
          ? SvgPicture.asset(
              iconPath,
              width: 25,
              height: 25,
            )
          : null);
}
