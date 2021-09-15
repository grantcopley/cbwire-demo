/**
 * I am a MovieList cbwire component.
 */
component extends="cbwire.models.Component" {

	// Data properties
	variables.data = {
		"movies" : [
			{
				"title" : "Interstellar",
				"year"  : "2014"
			},
			{ "title" : "Alien", "year" : "1979" },
			{
				"title" : "2001: A Space Odyssey",
				"year"  : "1968"
			}
		]
	};

	function renderIt() {
		return arrayLen( variables.data.movies ) & " Space Movies!";
	}

}
