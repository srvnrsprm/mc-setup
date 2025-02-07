(setq save-abbrevs 'silently)
(setq-default abbrev-mode t)

(define-abbrev-table 'web-mode-abbrev-table
  '(("tgLnk" "<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">")
    ("tgScrpt" "<script src=\"app.js\"></script>")
    ("tmpltHtml" "<html>\n\t<head>\n\t\t<meta charset=\"utf-8\">\n\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\n\t</head>\n\t<body>\n\t\t<script src=\"app.js\"></script>\n\t</body>\n</html>")
    ("clssCntnr" "<div class=\"container\">\n</div>")))

(define-abbrev-table 'web-mode-abbrev-table
  '(( "dgebi" "document.getElementById(")
    ( "dgebcn" "document.getElementsByClassName(")
    ( "dgebtn" "document.getElementsByTagName(")
    ( "dqs" "document.querySelector(")
    ( "dqsa" "document.querySelectorAll(")
    ( "dce" "document.createElement(" )
    ( "dctn" "document.createTextNode(" )
    ( "dac" "document.appendChild(")
    ( "dga" "document.getAttribute(")
    ( "dsa" "document.setAttribute(")
    ( "dra" "document.removeAttribute(")
    ( "dael" "document.addEventListener(")))

(define-abbrev-table 'java-mode-abbrev-table
  '(( "psvm" "public static void main( String args[] ) throws Exception {\n")
    ( "sop" "System.out.print(")
    ( "sopl" "System.out.println(")
    ( "ipi" "Integer.parseInt(" )
    ( "jIo" "import java.io.*;\n")
    ( "jRgx" "import java.util.regex.*;\n")
    ( "jUtl" "import java.util.*;\n")
    ( "jSrvlt" "import javax.servlet.*;\n")
    ( "jAwt" "import java.awt.*;\nimport java.awt.event.*;")
    ( "tmpltAwt" "setSize(300, 300 );\nsetVisible( true );\nsetLocation(200, 200 ); this.addWindowListener( new WindowAdapter() {\n\t\tpublic void windowClosing( WindowEvent e ) {\n\t\t\tSystem.exit( 0 ); \n\t\t}\n});" )
    ( "clsWndw" "this.addWindowListener( new WindowAdapter() {\n\t\tpublic void windowClosing( WindowEvent e ) {\n\t\t\tSystem.exit( 0 ); \n\t\t}\n});")))

																																																																																											 
