// Cuando la pagina este completamente cargada llama a la funcion.
/*
Aquí estamos recuperando un archivo XML a través de Internet.
El uso de fetch() más simple toma un argumento (la ruta del recurso que quieres obtener)
	 y devuelve un objeto Promise conteniendo la respuesta, un objeto Response.

Esto es, por supuesto, una respuesta HTTP no el archivo XML. 
	Para extraer el contenido en el cuerpo del XML desde la respuesta, usamos el método parseFromString()
*/
fetch("https://www.zaragoza.es/sede/servicio/farmacia.xml")
	.then(response => response.text())
	.then(data => {
		const parser = new DOMParser();
		const xml = parser.parseFromString(data, "application/xml");

		fetch("ejercicio.xsl")
			.then(response => response.text())
			.then(data => {
				const parser2 = new DOMParser();
				const xsl = parser2.parseFromString(data, "application/xml");

				xsltProcessor = new XSLTProcessor();
				xsltProcessor.importStylesheet(xsl);
				resultDocument = xsltProcessor.transformToFragment(xml, document);
				document.getElementsByTagName("body")[0].appendChild(resultDocument);
			})

	})
	.catch(console.error);