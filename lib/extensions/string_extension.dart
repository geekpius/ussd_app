
extension StringExtension on String{
  String getNetworkName(){
    switch(substring(1, 4)){
      case '020'|| '050':
        return 'vodafone';
      case '027'|| '057' || '026' || '056':
        return 'airteltigo';
      default:
        return 'mtn';
    }
  }
}