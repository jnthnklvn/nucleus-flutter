import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/chat/chat_person_item.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    required this.data, required this.read, super.key,
  });

  final List<Map<String, dynamic>> data;
  final bool read;

  @override
  Widget build(BuildContext context) {
    return (data.isNotEmpty)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                read ? 'Others' : 'Unread - ${data.length}',
                style: AssetStyles.labelMdRegular.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              verticalSpace(20),
              Column(
                children: data
                    .where((element) => element['read'] == read)
                    .map(
                      (e) => ChatPersonItem(
                        dataChat: e,
                      ),
                    )
                    .toList(),
              ),
            ],
          )
        : Container();
  }
}
