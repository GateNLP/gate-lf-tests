import gate.Utils
anns = inputAS.get("Sentence")
for(Annotation ann : anns) {
  str = gate.Utils.cleanStringFor(doc, ann)
  fm = ann.getFeatures()
  fm.put("length", str.length())
}

