function loadMain() {
	xmlToHTML()
}

function xmlToHTML() {
	fetch("https://www.zaragoza.es/sede/servicio/informacion-polen.xml")
		.then(response => response.text())
		.then(data => {
			const parser = new DOMParser();
			const xml = parser.parseFromString(data, "application/xml");

			fetch("polenTemplate.xsl")
				.then(response => response.text())
				.then(data => {
					const parser2 = new DOMParser();
					const xsl = parser2.parseFromString(data, "application/xml");

					xsltProcessor = new XSLTProcessor();
					xsltProcessor.importStylesheet(xsl);
					resultDocument = xsltProcessor.transformToFragment(xml, document);
					document.getElementsByClassName("lista")[0].appendChild(resultDocument);
				})

		})
		.catch(console.error);
}

function colorPolen(boxID, nivelPolen) {
	switch (nivelPolen) {
		case "bajo":
			color = "#a8eb34";
			break;
		case "medio":
			color = "#eb9634";
			break;
		case "alto":
			color = "#eb4634";
			break;
		case "nulo":
			color = "#d9d9d9";
			break;
		default:
			break;
	}
	
	polenDiv = document.getElementById(boxID);
	polenDiv.style.backgroundColor = color;
}