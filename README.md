# Ambulance-npcjobb
-----------This is in swedish. Feel free to translate or ask me to do it. -------------------

To install
1. put both npc_server.lua and npc_client.lua in your ambulance rescource folder
2. add npc_server.lua to your server scripts in ambulance resource
3. add npc_client.lua to your client scripts in ambulance resource
4. add the lines from sv.lua under -- NPCJOB to your lang.lua (in swedish atm)
5. add } Config.JobLocations = {
	{x = 295.52,  y = -1440.74, z = 29.38},
	}
  at the bottom of your ambulance config
6. add Config.NPCJobEarnings             = {min = 150, max = 250} --at top in your config. 


To start npc missions, you need to be an employee at ambulance and press F10
