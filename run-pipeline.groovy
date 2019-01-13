// @GrabResolver(name='gate-snapshots', root='http://repo.gate.ac.uk/content/groups/public/')
// the following on a line by itself will not work with groovysh and an error will be shown
// for the PersitenceManager import
// @Grab('uk.ac.gate:gate-core:8.5.1')
// The following works with groovysh but not with groovy
// groovy.grape.Grape.grab(group:'uk.ac.gate', module:'gate-core', version:'8.5.1')
//import gate.*;
//import gate.creole.*;
//import gate.util.persistence.PersistenceManager;
//import java.io.File

// See also: http://docs.groovy-lang.org/latest/html/documentation/grape.html#Grape-UsingGrapeFromtheGroovyShell
// Oddly, putting that one import on the same line makes it work with @Grab in groovysh and this
// should work with both groovy and groovysh
@Grab('uk.ac.gate:gate-core:8.5.1') import gate.util.persistence.PersistenceManager
import gate.*
import gate.creole.*
import java.io.File

Gate.init()

if(args.size() != 1) {
  System.err.println("Need one argument: pipeline path")
  System.exit(1)
}
URL appURL = new File(args[0]).toURI().toURL();


ConditionalSerialAnalyserController app = PersistenceManager.loadObjectFromUrl(appURL)

app.execute();

