import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 *  Use the TraX interface to perform a transformation in the simplest manner possible
 *  (3 statements).
 */
public class transformXSLT
{
	public static void main(String[] args)
    throws TransformerException, TransformerConfigurationException, 
           FileNotFoundException, IOException
  {  
  
    if(args.length < 3)
    {
      System.err.println("Sytnax: java transformXSLT transformXSLT transformXSLT outputFile.fo");
      return;
    }
  	// Get the parameter value from the command line.
    String xmlFile    = args[0];  
    String xslFile    = args[1];
    String outputFile = args[2];
    String monthDay   = args[3];
    String year       = args[4];
  
  // Use the static TransformerFactory.newInstance() method to instantiate 
  // a TransformerFactory. The javax.xml.transform.TransformerFactory 
  // system property setting determines the actual class to instantiate --
  // org.apache.xalan.transformer.TransformerImpl.
	TransformerFactory tFactory = TransformerFactory.newInstance();
	
	// Use the TransformerFactory to instantiate a Transformer that will work with  
	// the stylesheet you specify. This method call also processes the stylesheet
  // into a compiled Templates object.
	Transformer transformer = tFactory.newTransformer(new StreamSource(xslFile));

	transformer.setParameter("monthDay",monthDay);
	transformer.setParameter("year",year);


	// Use the Transformer to apply the associated Templates object to an XML document
	// (foo.xml) and write the output to a file (foo.out).
	transformer.transform(new StreamSource(xmlFile), new StreamResult(new FileOutputStream(outputFile)));
	
	//System.out.println("** FO file "+outputFile+" generated**");
  }
}
