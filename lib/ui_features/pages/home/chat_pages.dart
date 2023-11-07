import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/model/chat_model.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_secodary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/chat/chat_receiver_item.dart';
import 'package:nucleus_ui_app/ui_features/widgets/chat/chat_sender_item.dart';
import 'package:nucleus_ui_app/ui_features/widgets/input/input_custom.dart';

class ChatPages extends StatelessWidget {
  ChatPages({super.key});
  static const String chatPages = 'chatPages';

  final List<ChatModel> chat = [
    ChatModel(
      image: AssetPaths.imageAvatar1,
      tipe: 'sender',
      message: 'Hi, Mandy',
      status: 1,
    ),
    ChatModel(
      image: AssetPaths.imageAvatar1,
      tipe: 'sender',
      message: "i've tried the app",
      status: 1,
    ),
    ChatModel(
      image: AssetPaths.imageAvatar1,
      tipe: 'receiver',
      message: 'Relly?',
      status: 1,
    ),
    ChatModel(
      image: AssetPaths.imageAvatar1,
      tipe: 'sender',
      message: "Yeah, it's really good!",
      status: 1,
    ),
    ChatModel(
      image: AssetPaths.imageAvatar1,
      tipe: 'receiver',
      message: '',
      status: 0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final messgae = TextEditingController();
    return Scaffold(
      appBar: AppBarSecondary(
        leading: TextButton(
          onPressed: Navigator.of(context).pop,
          child: SvgPicture.asset(
            AssetPaths.iconClose,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: SvgPicture.asset(AssetPaths.iconAddFriend),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        child: Column(
          children: [
            Expanded(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  '09:41 AM',
                  style: AssetStyles.labelSmReguler.copyWith(
                    color: AssetColors.skyDark,
                  ),
                ),
                verticalSpace(20),
                ...chat
                    .map(
                      (data) => (data.tipe == 'sender')
                          ? ChatSenderItem(
                              data: data,
                            )
                          : ChatReceiverItem(
                              data: data,
                            ),
                    )
                    .toList(),
              ]),
            ),
            verticalSpace(10),
            InputCustom(
              controller: messgae,
              hintText: 'Type Your Message',
            ),
          ],
        ),
      ),
    );
  }
}
