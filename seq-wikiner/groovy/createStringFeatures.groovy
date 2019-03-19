// Create a lower-case string feature, string_lc for all 
// Token annotations in the input annotation set inputAS
import gate.Utils
tokens = inputAS.get("Token")
for(Annotation token : tokens) {
  str = gate.Utils.cleanStringFor(doc, token)
  fm = token.getFeatures()
  fm.get("string", str)
  fm.put("string_lc",str.toLowerCase(Locale.ENGLISH))
  fm.put("length", str.length())
}
