# Hinweis zu Magento 1.9.0.x

In Magento 1.9.0.x liefert der Hersteller bereits eine Übersetzung mit. Diese Übersetzung ist jedoch vollautomatisch erstellt worden und **hat mit diesem Projekt hier nichts zu tun.** Ab Magento 1.9.1.0 ist dies nicht mehr der Fall.

Leider lässt sich dadurch unser Sprachpaket nicht ohne Weiteres installieren. Es sind daher folgende Schritte auszuführen, bevor dieses Sprachpaket per Magento Connect installiert werden kann:

- Im Magento-Hauptverzeichnis in den Ordner **app/locale/* wechseln
- Dort den Ordner **de_DE** umbenennen in **magento_de_DE**

Anschließend dieses Sprachpaket installieren

Bitte auch beachten: Die Deinstallation der Herstellerübersetzung über den Magento Connect Manager funktioniert nicht, da das Magento Hauptpaket dieses Sprachpaket als Voraussetzung definiert hat. Das manuelle Löschen auf dem Server funktioniert jedoch problemlos.

___


# Deutsches Sprachpaket für Magento (CE)
Dieses Sprachpaket wird von Rico Neitzel verwaltet.

Dieses Git Repository kann genutzt werden für:

* Reine Informationszwecke
* Entwicklung aktueller Versionen
* Behebung von Fehlern in bereits veröffentlichten Versionen
* Alternative Downloads (unabhängig von den offiziellen Quellen)
* Eigene Sprachversion basierend auf de_DE
* Melden von Fehlern und PullRequests
* Aktives Mitwirken am Sprachpaket

## Orientierung

* Switch Branches = Wechsel des Bearbeitungsstandes.
  * _master_ ist der auf Magento Connect verfügbare Stand
  * _preview_ ist die aktuell in Arbeit befindliche Version
  * _alpha_ ist, sofern vorhanden, eine Version, die für größere Versionssprünge bereits vorbereitet wird
* Tags = Direktauswahl bestimmter Sprachpaket Versionen.

# Versionierung der Sprachpakete

Die Version des Sprachpaketes sollte immer zur eigenen Magento-Version passen. Aktuell werden die Sprachpakete daher folgendermaßen versioniert: \<magento-version\>.\<sprachpaket-version\> = \<1.8.0.0\>.\<0\>

Ein Sprachpaket 1.7.0.2.1 passt demnach nicht zu einem Magento 1.8.0.0!

**Warum?** Die Art und Weise, wie die deutschen Sprachpakete für neue Magento Versionen erzeugt werden, entfernt automatisch nicht mehr passende Zeichenfolgen aus den Dateien. Das bedeutet auch, dass ausschließlich die Texte übersetzt werden, die auch in der original en_US-CSV-Datei enthalten sind.

Unter [Aktives Mitwirken am Sprachpaket](#aktives-mitwirken-am-sprachpaket) wird kurz erklärt, wie wir aktuell versuchen, diesem Problem Herr zu werden.

# Eigene Sprachversion basierend auf de_DE

Das Forken für eigene Releases, etwa für eigene Sprachpakete in der Du-Form, de_CH, de_AT, de_Plattdeutsch… ist ausdrücklich erlaubt. Wer jedoch ernsthaft ein eigenes Sprachpaket für die eigene Community pflegen möchte, sollte sich mit crowdin.net befassen.

Auf dieser Plattform werden aktuell die Übersetzungen des de_DE Packages verwaltet. Der große Vorteil: Man muss nicht bei Null anfangen sondern hat als Basis das deutsche Sprachpaket, auf dessen Übersetzungen man die eigenen Änderungen speichern kann. Ändert sich im de_DE Paket etwas, wird es, sofern nicht als eigene Übersetzung vorhanden, auch in die eigene Übersetzung vererbt.
 
[Das de_CH Paket](https://github.com/openstream/German_LocalePack_de_CH), pflegt der Schweizer Community Manager Nick Weiser.

Releases für die Enterprise Edition von Magento sind als Git-Forks dieses Repos ebenso denkbar. Zum Forken als eigenes GitHub Repository reicht es, oben den entsprechenden Button zu klicken. (GitHub Account vorausgesetzt)

[Sie können sich auch über das Versionskontrollsystem Git und andere Techniken informieren.](http://git-scm.com/)

# Melden von Fehlern

Wir freuen uns, wenn dieses Repository aktiv dazu genutzt wird Fehler zu melden (Issue) und zu beheben (PullRequest im _preview_-Branch).

Oben dann einfach auf "Issues" klicken -> "New Issue" um ein Anliegen zu übermitteln. Bestehende Anliegen hingegen können auch ohne GitHub Account eingesehen werden, inklusive deren Bearbeitungsstand.

_Beachten Sie dazu bitte:_ Wenn hier in den Versionen Veränderungen eingepflegt werden, dann entsprechen diese nicht mehr dem Stand des Sprachpakets, welches Sie über Magento Connect installieren können. Es ist leider nicht möglich dort veröffentlichte Releases nachträglich zu bearbeiten. :-)

_Hinweis:_ PullRequests sind bitte immer im Preview Branch zu senden.


# Aktives Mitwirken am Sprachpaket

Lust am Sprachpaket mitzuwirken und einen (zumindest kostenlosen) Github Account? Dann einfach Rico Neitzel kontaktieren und wir stimmen eine eventuelle Zusammenarbeit ab.

## Fehlende Zeichenfolgen übersetzen

Das Sprachpaket enthält nach dem automatischen Abgleich für eine neue Version ausschließlich _die_ Zeichenfolgen, die auch in der en_US Datei enthalten sind. Findet man also im Core Zeichenfolgen und fügt diese einer Core-CSV-Datei hinzu, fliegt diese Zeichenfolge bei der nächsten Version wieder raus.

@mklooss hat angeregt, dass wir diese Übersetzungen in Dateien sammeln, die via Config-XML eingebunden werden:

Für das Modul **Mage_Customer** lautet die Core-CSV-Datei **Mage_Customer.csv**. Wir erzeugen nun eine neue CSV-Datei dem Schema **\<Namespace_Module\>.germanlocalepack.csv** und binden diese in der config.xml Datei ein:

```
    <frontend>
        <translate>
            <modules>
                <Mage_Customer>
                    <files>
                        <germanlocalepack>Mage_Customer.germanlocalepack.csv</germanlocalepack>
                    </files>
                </Mage_Customer>
            </modules>
        </translate>
    </frontend>

```

Damit können diese Strings unabhängig gepflegt werden.

Viel Spaß mit dem Deutschen Magento Sprachpaket!

Rico Neitzel
