/**
 * I am a cbwire component.
 */
component extends="cbwire.models.Component" {

    property name="planetService" inject="PlanetService";

    // Data properties
    variables.data = {
        "satelliteCount": 0,
        "planets": function(){
            return planetService.getPlanets();
        }
    };

    /*
        // Calls to injected services can also be placed within onDIComplete().
        function onDIComplete(){
            variables.data[ "planets" ] = planetService.getPlanets();
        }
    */

    // Computed properties
    variables.computed = {
        "planetCount" : function(){
            return arrayLen( variables.data.planets );
        },
        "planetsWithSatellites" : function( satelliteCount ){
            return variables.data.planets.filter( function( planet ){
                return planet.satellites >= satelliteCount;
            } );
        }
    }

    // Actions
    function increaseSatellites(){
        variables.data.satelliteCount += 1;
    }

    function decreaseSatellites(){
        variables.data.satelliteCount -= 1;
    }

    function reset(){
        variables.data.satelliteCount = 0;
    }

    function renderIt(){
        return this.renderView( "wires/planetlist" );
    }
}
