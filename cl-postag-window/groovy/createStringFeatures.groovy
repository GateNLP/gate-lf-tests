// Create a lower-case string feature, string_lc for all 
// Token annotations in the input annotation set inputAS
tokens = inputAS.get("Token")
for(Annotation token : tokens) {
  fm = token.getFeatures()
  str = fm.get("string")
  fm.put("string_lc",str.toLowerCase(Locale.ENGLISH))
}
