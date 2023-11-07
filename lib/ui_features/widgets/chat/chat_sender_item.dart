import 'package:flutter/material.dart';

import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/model/chat_model.dart';

class ChatSenderItem extends StatelessWidget {
  const ChatSenderItem({
    required this.data, super.key,
  });

  final ChatModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AssetColors.primaryBase,
            ),
            child: Text(
              data.message,
              style: AssetStyles.labelMdRegular.copyWith(
                color: AssetColors.skyWhite,
              ),
            ),
          ),
          horizontalSpace(10),
          const CircleAvatar(
            backgroundImage: AssetImage(
              AssetPaths.imageAvatar1,
            ),
          ),
        ],
      ),
    );
  }
}
