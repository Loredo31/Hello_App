import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo{
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlideInfo>[
  SlideInfo(title: 'Busca la comida', caption: 'Excepteur ea quis excepteur laborum ipsum laboris anim laborum nisi ad occaecat culpa pariatur. Nostrud nostrud velit nostrud dolore irure sunt do ut aliquip cupidatat excepteur minim id. Eiusmod dolore laboris enim ea aute nostrud velit fugiat. Incididunt laboris duis ex laborum amet magna qui dolor duis. Incididunt ex eu laboris aliquip sint adipisicing dolore irure. Non aute aliquip irure adipisicing Lorem reprehenderit proident eu fugiat occaecat enim fugiat irure id. Aliqua ipsum ad officia cillum Lorem mollit magna labore veniam dolore dolor labore nulla.', imageUrl: 'assets/images/1.png'),
  SlideInfo(title: 'Entrega rápida', caption: 'Amet magna aliquip excepteur ullamco minim. Aute do enim culpa dolor enim nulla amet cillum proident in excepteur. Eu ea elit aute reprehenderit laboris aute est do anim. Anim reprehenderit incididunt enim nisi culpa.', imageUrl: 'assets/images/2.png'),
  SlideInfo(title: 'Disfruta!', caption: 'Nostrud commodo do velit ex minim et. Id tempor laboris nulla eu. Ut irure non fugiat in dolore ad id culpa aute fugiat aliquip elit ut ullamco. Pariatur ea dolore magna consectetur. Est officia est esse officia nisi dolore ex mollit pariatur consequat pariatur eu quis. Minim id minim est adipisicing elit excepteur duis culpa fugiat dolor. Voluptate officia elit sint elit sit voluptate magna officia aute consectetur tempor.', imageUrl: 'assets/images/3.png'),
];

class TutorialScreen extends StatefulWidget {
  static final String name = "tutorial";

  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {

  final pageController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    
    pageController.addListener(() {
      final page = pageController.page ?? 0;
      if(!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => _Slide(slide: slideData,)
            ).toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: Text('Salir'))
          ),

          endReached ?
            Positioned(
              bottom: 30,
              right: 30,
              child: FadeInRight(
                from: 15,
                child: FilledButton(
                  onPressed: () => context.pop(),
                  child: Text('Comenzar'))
                )
              )
              :SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final SlideInfo slide;
  const _Slide({required this.slide});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 150,
            ),
            Text(slide.title, style: titleStyle,),
            SizedBox(height: 20,),
            Text(slide.caption, style: captionStyle,)
          ],
        ),
      ),
    );
  }
}