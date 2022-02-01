

import 'package:intl/intl.dart' as intl;
import 'super_localizations.dart';

/// The translations for Arabic (`ar`).
class SuperLocalizationsAr extends SuperLocalizations {
  SuperLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get feedbackAddedSuccessfully => 'تمت الإضافة بنجاح';

  @override
  String get errorServerException => 'عذراً لم نتمكن من الاتصال بالخادم';

  @override
  String get errorCacheException => 'لاتوجد بيانات حتى الان حاول الإتصال بالإنترنت';

  @override
  String get errorConnectionException => 'لايوجد اتصال بالانترنت!';

  @override
  String get errorEmptyException => 'لاتوجد أي بيانات في الوقت الحالي!';

  @override
  String get errorInvalidException => 'تاكد من صحة  البيانات المدخلة';

  @override
  String get errorExpireException => 'انتهت صلاحية الكود';

  @override
  String get errorNotFoundException => 'لايوجد حساب بهذه البيانات!';

  @override
  String get errorUserExistsException => 'قد يكون هذا الحساب موجود مسبقاً! حاول تغيير رقم الهاتف او الايميل';

  @override
  String get errorPasswordException => 'كلمة المرور غير صحيحة';

  @override
  String get errorUnauthenticatedException => 'عذرا ! أنت غير مخول لهذه العملية قم بتجسيل الدخول';

  @override
  String get errorBlockedException => 'عذرا ! لقد تم حظر حسابك. يرجى التواصل مع المسؤول لإزالة الحظر';

  @override
  String get errorUnexpectedException => 'عذراً، حدث خطأ غير متوقع يرجى المحاوله لاحقأ';

  @override
  String get errorConflictException => 'تعذر إكمال الطلب بسبب وجود تعارض';

  @override
  String validAccepted(String attribute) {
    return 'يجب أن تقبل $attribute';
  }

  @override
  String validBlank(String attribute) {
    return 'لا يمكن أن يكون محتوى $attribute فارغاً';
  }

  @override
  String validConfirmation(String attribute, String other) {
    return 'محتوى $attribute لا يتطابق مع $other';
  }

  @override
  String validEmpty(String attribute) {
    return 'لا يمكن أن يكون محتوى $attribute فارغاً';
  }

  @override
  String validEqualTo(String attribute, Object count) {
    return 'يجب أن يساوي طول $attribute $count';
  }

  @override
  String validEven(String attribute) {
    return 'يجب أن يكون عدد $attribute زوجياً';
  }

  @override
  String validExclusion(String attribute) {
    return 'حقل $attribute محجوز';
  }

  @override
  String validGreaterThan(String attribute, Object count) {
    return 'يجب أن يكون عدد $attribute أكبر من $count';
  }

  @override
  String validGreaterThanOrEqualTo(String attribute, Object count) {
    return 'يجب أن يكون عدد $attribute أكبر أو يساوي $count';
  }

  @override
  String validInclusion(String attribute) {
    return '$attribute غير وارد في القائمة';
  }

  @override
  String validInvalid(String attribute) {
    return 'محتوى $attribute غير صالح';
  }

  @override
  String validLessThan(String attribute, Object count) {
    return 'يجب أن يكون عدد $attribute أصغر من $count';
  }

  @override
  String validLessThanOrEqualTo(String attribute, Object count) {
    return 'يجب أن يكون عدد $attribute أصغر أو  يساوي $count';
  }

  @override
  String validNotANumber(String attribute) {
    return 'يجب أن يكون محتوى $attribute رقماً';
  }

  @override
  String validNotAnInteger(String attribute) {
    return 'يجب أن يكون عدد $attribute عدد صحيحاً';
  }

  @override
  String validOdd(String attribute) {
    return 'يجب أن يكون عدد $attribute عدداً فردياً';
  }

  @override
  String validOtherThan(String attribute, int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: 'طول $attribute يجب ألاّ يكون صفر حرف',
      one: 'طول $attribute يجب ألاّ يكون حرفاً واحداً',
      two: 'طول $attribute يجب ألاّ يكون حرفان',
      few: 'طول $attribute يجب ألاّ يكون $count أحرف',
      other: 'طول $attribute يجب ألاّ يكون $count حرفاً',
    );
  }

  @override
  String validPresent(String attribute) {
    return 'يجب ترك حقل $attribute فارغاً';
  }

  @override
  String validRequired(String attribute) {
    return '$attribute يجب ان يحتوي على قيمه';
  }

  @override
  String validTaken(String attribute) {
    return 'حقل $attribute محجوز مسبقاً';
  }

  @override
  String validTooLong(String attribute, int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: 'محتوى $attribute أطول من اللّازم (الحد الأقصى هو ولا حرف)',
      one: 'محتوى $attribute أطول من اللّازم (الحد الأقصى هو حرف واحد)',
      two: 'محتوى $attribute أطول من اللّازم (الحد الأقصى هو حرفان)',
      few: 'محتوى $attribute أطول من اللّازم (الحد الأقصى هو $count حروف)',
      other: 'محتوى $attribute أطول من اللّازم (الحد الأقصى هو $count حرف)',
    );
  }

  @override
  String validTooShort(String attribute, int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: 'محتوى $attribute أقصر من اللّازم (الحد الأدنى هو ولا حرف)',
      one: 'محتوى $attribute أقصر من اللّازم (الحد الأدنى هو حرف واحد)',
      two: 'محتوى $attribute أقصر من اللّازم (الحد الأدنى هو حرفان)',
      few: 'محتوى $attribute أقصر من اللّازم (الحد الأدنى هو $count حروف)',
      other: 'محتوى $attribute أقصر من اللّازم (الحد الأدنى هو $count حرف)',
    );
  }

  @override
  String validWrongLength(String attribute, int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: 'طول $attribute غير مطابق للحد المطلوب (يجب أن يكون ولا حرف)',
      one: 'طول $attribute غير مطابق للحد المطلوب (يجب أن يكون حرف واحد)',
      two: 'طول $attribute غير مطابق للحد المطلوب (يجب أن يكون حرفان)',
      few: 'طول $attribute غير مطابق للحد المطلوب (يجب أن يكون $count أحرف)',
      other: 'طول $attribute غير مطابق للحد المطلوب (يجب أن يكون $count حرف)',
    );
  }

  @override
  String get commonHome => 'الصفحة الرئيسية';

  @override
  String get commonSearch => 'بحث';

  @override
  String get commonLogOut => 'تسجيل خروج';

  @override
  String get commonMessage => 'رسالة';

  @override
  String get commonLogin => 'تسجيل الدخول';

  @override
  String get commonForgetPassword => 'نسيت كلمة المرور؟';

  @override
  String get commonProfile => 'الملف الشخصي';

  @override
  String get commonOk => 'موافق';

  @override
  String get commonYes => 'نعم';

  @override
  String get commonAll => 'الجميع';

  @override
  String get commonMore => 'أكثر';

  @override
  String get commonSend => 'إرسال';

  @override
  String get commonUpdate => 'تحديث';

  @override
  String get commonName => 'الاسم';

  @override
  String get commonUsername => 'اسم المُستخدم';

  @override
  String get commonEmail => 'البريد الالكتروني';

  @override
  String get commonOr => 'أو';

  @override
  String get commonFirstName => 'الاسم';

  @override
  String get commonLastName => 'اسم العائلة';

  @override
  String get commonPassword => 'كلمة المرور';

  @override
  String get commonPasswordConfirmation => 'تأكيد كلمة المرور';

  @override
  String get commonCity => 'المدينة';

  @override
  String get commonCountry => 'الدولة';

  @override
  String get commonAddress => 'العنوان';

  @override
  String get commonPhone => 'الهاتف';

  @override
  String get commonPhoneNumber => 'رقم الهاتف';

  @override
  String get commonMobile => 'الجوال';

  @override
  String get commonAge => 'العمر';

  @override
  String get commonSex => 'الجنس';

  @override
  String get commonGender => 'النوع';

  @override
  String get commonContent => 'المُحتوى';

  @override
  String get commonDescription => 'الوصف';

  @override
  String get commonExcerpt => 'المُلخص';

  @override
  String get commonAvailable => 'مُتاح';

  @override
  String get commonSize => 'الحجم';

  @override
  String get commonPrice => 'السعر';

  @override
  String get commonDesc => 'نبذه';

  @override
  String get commonTitle => 'العنوان';

  @override
  String get commonRegister => 'تسجل';

  @override
  String get commonSeeAll => 'إظهار الكل';

  @override
  String get commonServices => 'خدمات';

  @override
  String get commonSubmit => 'إرسال';

  @override
  String get commonQ => 'البحث';

  @override
  String get dtDate => 'التاريخ';

  @override
  String get dtTime => 'الوقت';

  @override
  String get dtYear => 'السنة';

  @override
  String get dtMonth => 'الشهر';

  @override
  String get dtDay => 'اليوم';

  @override
  String get dtHour => 'ساعة';

  @override
  String get dtMinute => 'دقيقة';

  @override
  String get dtSecond => 'ثانية';

  @override
  String get dtSunday => 'الأحد';

  @override
  String get dtMonday => 'الاثنين';

  @override
  String get dtTuesday => 'الثلاثاء';

  @override
  String get dtWednesday => 'الأربعاء';

  @override
  String get dtThursday => 'الخميس';

  @override
  String get dtFriday => 'الجمعة';

  @override
  String get dtSaturday => 'السبت';
}
