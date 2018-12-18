// @GrabResolver(name='gate-snapshots', root='http://repo.gate.ac.uk/content/groups/public/')
@Grab('uk.ac.gate:gate-core:8.5.1')
import gate.*;
import gate.creole.*;
import gate.util.persistence.PersistenceManager;
import java.io.File

Gate.init()

if(args.size() != 1) {
  System.err.println("Need one argument: pipeline path")
  System.exit(1)
}
URL appURL = new File(args[0]).toURI().toURL();


ConditionalSerialAnalyserController app = PersistenceManager.loadObjectFromUrl(appURL)

app.execute();

