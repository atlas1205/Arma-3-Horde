/*
    Author - HoverGuy
	© All Fucks Reserved
	Website - http://www.sunrise-production.com
	
    Defines available garages
	
	class YourGarageClass - Used as a param for the call
	{
		conditionToAccess - STRING - Condition that must return either true or false, if true the player will have access to the garage
		allowedTypes - ARRAY OF STRINGS - Allowed vehicle types to be retrieved from the garage, can be "Car"/"Truck"/"Tank"/"Air"/"Ship"/"Submarine" or mixed
		spawnPoints - ARRAY OF ARRAYS - Spawn positions (markers/positions)
		|- 0 - STRING - Display name in the dialog
		|- 1 - ARRAY OF MIXED - Markers/positions
		storePoint - STRING - Point (marker) where the vehicle should be placed to be able to store it, if left empty it will detect the nearest owned vehicle inside a 8m radius around the player
	};
*/

class ATLAS_HRD_LandGarage
{
	conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
    allowedTypes[] = {"Car","Truck","Tank","Air"};
	spawnPoints[] = 
	{
		{"Garage 1",{"garage_1"}},
		{"Garage 2",{"garage_2"}},
		{"Garage 3",{"garage_3"}},
		{"Garage 4",{"garage_4"}},
		{"Garage 5",{"garage_5"}}
	};
	storePoint = "";
};
