import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
      {required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlideInfo>[
  SlideInfo(
      title: 'Busca Comida',
      caption:
          'Voluptate officia ipsum magna nostrud proident labore exercitation et dolore irure sunt ut officia cupidatat. Cupidatat et labore esse pariatur tempor do do deserunt pariatur incididunt excepteur ipsum. Proident voluptate ipsum commodo pariatur amet consequat fugiat.',
      imageUrl: 'assets/images/1.png'),
  SlideInfo(
      title: 'Entrega Rapida',
      caption:
          'Duis qui ullamco amet velit elit do ex fugiat reprehenderit. Sunt aliquip nostrud exercitation exercitation est sit veniam. Veniam mollit nostrud eiusmod proident ipsum aliqua cillum ullamco ipsum incididunt ipsum tempor nulla Lorem. Cupidatat tempor officia amet esse occaecat adipisicing ipsum Lorem voluptate nisi tempor non. Qui laboris aliqua mollit aute adipisicing duis Lorem.',
      imageUrl: 'assets/images/2.png'),
  SlideInfo(
      title: 'Disfruta la Comida',
      caption:
          'Ex tempor do minim labore dolore ipsum aliqua ut veniam labore cupidatat Lorem ipsum ex. Non eu in nisi ut reprehenderit duis. Cillum incididunt incididunt in pariatur commodo enim eu exercitation laborum anim nostrud consectetur. Consequat ut ullamco id id duis quis. Sint eiusmod commodo laborum eu proident sint anim laboris deserunt. Sunt est cupidatat laboris quis quis irure veniam aliquip. Non ea aute proident laborum incididunt adipisicing anim et culpa eiusmod.',
      imageUrl: 'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageviewController = PageController();
  bool endWich = false;

  @override
  void initState() {
    super.initState();
    pageviewController.addListener(
      () {
        final page = pageviewController.page ?? 0;
        if (!endWich && page >= (slides.length - 1.5)) {
          setState(() {
            endWich = true;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideDara) => _Slide(
                    title: slideDara.title,
                    caption: slideDara.caption,
                    imageUrl: slideDara.imageUrl))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                child: const Text('Salir'),
                onPressed: () => context.pop(),
              )),
          endWich
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      child: const Text('Comenzar'),
                      onPressed: () => context.pop(),
                    ),
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
