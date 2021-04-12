# P. Kessling
# Challenge 5: Datensatz wiederzusammenfrickeln
# Wir haben einen Datensatz aus der Wikipedia geladen und ihn als JSON abgelegt.
# Leider hat der fiese Dozent einen Fehler bei der Ausgabe gemacht.
#
# * Lade die Datensätze in `data/`, danke an `map_dfr`
# * Stelle daraus eine *flache* Tabelle her. Die Tabelle soll die folgenden Spalten beinhalten: name, lebensdaten, land, wahlkreis, erststimmen, bemerkungen, fraktion.
# * Berechne das durchschnittliche Alter für die einzelnen Fraktionen und sortiere den Datensatz nach dieser Variable.

library(assertthat)

# data <- …
# ans1 <- …

if (
  assert_that(
    openssl::md5(paste(map_chr(bt2, paste, collapse = "") , collapse = "")) == "926c50623af03708fa768e0003cc18c6"
  ) &&
  assert_that((
    openssl::md5(paste(map_chr(ans1, paste, collapse = "") , collapse = "")) == "7607c77648da79b8d09ff0d4db41ed0d"
  ))
) {
  writeLines("10/10, gratuliere!")
}
