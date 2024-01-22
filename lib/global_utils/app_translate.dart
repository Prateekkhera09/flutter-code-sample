import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'questions': 'Questions*',
          'life_style': 'Life Style',
          'keep_short': 'Keep it short, this is just a demo',
          'answer': 'Answer',
          'tell_us': 'Tell us about yourself',
          'currency': 'USD',
          'change_page': 'Chat Page',
          'email': 'Email',
          'password': 'Password',
          'chat': 'Chat',
          'other': 'Other',
          'female': 'Female',
          'male': 'Male',
        },
        'he_IL': {
          'questions': 'שאלות*',
          'life_style': 'סגנון חיים',
          'keep_short': 'שמור את זה קצר, זה רק הדגמה',
          'answer': 'תשובה',
          'tell_us': 'ספר לנו על עצמך',
          'currency': '₪',
          'change_page': "עמוד צ'אט",
          'email': 'אימייל',
          'password': 'סיסמה',
          'chat': 'לְשׂוֹחֵחַ',
          'other': 'אַחֵר',
          'female': 'נְקֵבָה',
          'male': 'זָכָר',
        }
      };
}
