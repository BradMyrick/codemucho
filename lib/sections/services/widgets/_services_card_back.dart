part of '../services.dart';

class _ServiceCardBackWidget extends StatelessWidget {
  const _ServiceCardBackWidget(
      {Key? key, required this.serviceDesc, required this.serviceTitle})
      : super(key: key);

  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          style: AppText.l1,
        ),
        Divider(
          color: appProvider.isDark ? Colors.white : Colors.black38,
        ),
        SizedBox(
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(60),
          child: MaterialButton(
            color: AppTheme.c!.primary,
            onPressed: () => showDialog(
                context: context,
                builder: (contecxt) => AlertDialog(
                      title: Text(
                        "Contact Info",
                        style: AppText.b2b,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Back"),
                        )
                      ],
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            height: 40.0,
                            onPressed: () => openURL(
                              'https://api.whatsapp.com/send?phone=573122545540',
                            ),
                            color: const Color.fromARGB(255, 84, 205, 253),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  FontAwesomeIcons.whatsapp,
                                  color: Colors.white,
                                ),
                                Space.x!,
                                Text(
                                  'WhatsApp',
                                  style: AppText.l1!.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Space.y1!,
                          MaterialButton(
                            height: 40.0,
                            onPressed: () async {
                              String email =
                                  Uri.encodeComponent("kodr@kodr.pro");
                              String subject =
                                  Uri.encodeComponent("Consultation Request");
                              String body = Uri.encodeComponent(
                                  "Kodr, I would like to request a consultation!");
                              Uri mail = Uri.parse(
                                  "mailto:$email?subject=$subject&body=$body");
                              if (await launchUrl(mail)) {
                                //email app opened
                              } else {
                                //email app is not opened
                              }
                            },
                            color: const Color.fromARGB(255, 84, 205, 253),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.network(
                                  'https://img.icons8.com/mail',
                                  height: 35.0,
                                  color: Colors.white,
                                ),
                                Space.x!,
                                Text(
                                  'Email',
                                  style: AppText.l1!.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
            child: Text(
              'Contact Me',
              style: AppText.b2!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
