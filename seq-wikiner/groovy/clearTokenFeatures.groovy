for(Annotation ann : inputAS.get("Token")) {
  fm = ann.getFeatures()
  str = fm.get("string")
  fm.clear()
  fm.put("string",str)
  fm.put("string_lc",str.toLowerCase(Locale.ENGLISH))  
}
