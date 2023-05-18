function loadMain() {

    let xmlLibros = "./src/books.xml"

    xmlToHtml(xmlLibros, "./src/xslTemplates/ejercicio1.xsl", "ej1Cont")
    xmlToHtml(xmlLibros, "./src/xslTemplates/ejercicio2.xsl", "ej2Cont")
    xmlToHtml(xmlLibros, "./src/xslTemplates/ejercicio3.xsl", "ej3Cont")
    xmlToHtml(xmlLibros, "./src/xslTemplates/ejercicio4.xsl", "ej4Cont")
    xmlToHtml(xmlLibros, "./src/xslTemplates/ejercicio5.xsl", "ej5Cont")
    xmlToHtml(xmlLibros, "./src/xslTemplates/ejercicio6.xsl", "ej6Cont")
}

function xmlToHtml(xmlFile, xslFile, divClass) {

    fetch(xmlFile)

        .then(response => response.text())

        .then(data => {
            const parser = new DOMParser();
            const xml = parser.parseFromString(data, "application/xml");

            fetch(xslFile)
                .then(response => response.text())
                .then(data => {
                    const parser2 = new DOMParser();
                    const xsl = parser2.parseFromString(data, "application/xml");

                    xsltProcessor = new XSLTProcessor();
                    xsltProcessor.importStylesheet(xsl);
                    resultDocument = xsltProcessor.transformToFragment(xml, document);
                    document.getElementsByClassName(divClass)[0].appendChild(resultDocument);
                })

        }).catch(console.error);
}