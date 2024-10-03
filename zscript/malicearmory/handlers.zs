
Class MaliceArmory : EventHandler{
	Override void WorldThingDied(WorldEvent e){
		If(e.thing is "PM_CivilianZombie"){e.thing.A_SpawnItem("MaliceM29",1);}
	}
}
