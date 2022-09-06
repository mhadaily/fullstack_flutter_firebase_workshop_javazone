import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vikings/core/core.dart';

class AgendaAddButton extends ConsumerWidget {
  const AgendaAddButton({
    super.key,
    required this.session,
  });

  /// The session to to be added to the user's local storage.
  final Session session;

  @override
  Widget build(BuildContext context, ref) {
    final isMyAgenda = ref.watch(isAddedToMyAgenda(session));

    return SizedBox(
      width: 50,
      height: 50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            child: SvgPicture.asset(
              'assets/images/add_button_border.svg',
              color: isMyAgenda
                  ? AppColors.secondaryColorSecondary.withOpacity(0.4)
                  : null,
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              boxShadow: [
                isMyAgenda ? AppShadows.secondaryGreen : AppShadows.primaryBlue
              ],
            ),
            child: AppAdaptiveIconButton(
              fillColor: Theme.of(context).primaryColor,
              disabledColor: AppColors.secondaryColorSecondary.withOpacity(0.3),
              onPressed: isMyAgenda
                  ? null
                  : () {
                      ref.watch(myAgenda.notifier).add(session);
                      context.addedToAgenda(session.title);
                    },
              noPadding: true,
              child: Icon(
                isMyAgenda ? Icons.check_rounded : Icons.add_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
