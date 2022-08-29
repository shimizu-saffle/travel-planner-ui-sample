import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_planner_ui_sample/utils/build_context.dart';
import 'package:travel_planner_ui_sample/utils/constants.dart';

class TripPlanPage extends HookConsumerWidget {
  const TripPlanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _AppBar(),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TODO(shimizu-saffle): カメラロールからピックしたイメージを表示する
            // 旅行のイメージをカルーセルで表示する。ユーザーは行きたい場所、やりたいこと、食べたい物の画像をアップして、
            // 旅行計画のイマジネーションにする。
            Image.asset(
              'assets/images/kiyomizudera.png',
              height: context.displaySize.height * 0.333,
              width: context.displaySize.width,
              fit: BoxFit.cover,
            ),
          ],
        ),
        // TODO(shimizu-saffle): 最小サイズを指定して、旅行タイトルに応じてサイズを可変にする
        Positioned(
          bottom: context.displaySize.height * 0.6,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            height: context.displaySize.height * 0.16,
            width: context.displaySize.width * 0.88,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: TextField(
              style: context.headlineSmall,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '旅行のタイトル',
                hintStyle: context.headlineSmall!.copyWith(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leading: IconButton(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        icon: const Icon(
          Icons.home,
          color: kIconColor,
        ),
        onPressed: () {
          // TODO(shimizu-saffle): 旅行計画一覧ページに戻る
        },
      ),
      actions: [
        IconButton(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          icon: const Icon(
            Icons.photo_size_select_actual,
            color: kIconColor,
          ),
          onPressed: () {
            // TODO(shimizu-saffle): カメラロールを開く
          },
        ),
      ],
    );
  }
}
