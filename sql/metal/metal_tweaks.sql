--Removes lottery spawn mechanic, sets all to normal spawntype and 5mins 31secs respawn.
UPDATE mob_groups SET spawntype=0,respawntime=331 WHERE spawntype=32;

--Remove duplicate spawn points to make sure only 1 instance of each NM will spawn.
DELETE FROM mob_spawn_points WHERE
(mobid = 16814320 OR mobid = 16814331 AND mobname = "Gyre-Carlin") OR
(mobid = 16822423 AND mobname = "Bugbear_Strongman") OR
(mobid = 16826510 AND mobname = "Swashstox_Beadblinker") OR
(mobid = 16986149 OR mobid = 16986174 OR mobid = 16990294 AND mobname = "Grand_Marid") OR
(mobid = 17191189 AND mobname = "Swamfisk") OR
(mobid = 17203585 AND mobname = "Panzer_Percival") OR
(mobid = 17211537 AND mobname = "Stinging_Sophie") OR
(mobid = 17211714 AND mobname = "Maighdean_Uaine") OR
(mobid = 17215613 AND mobname = "Carnero") OR
(mobid = 17215868 AND mobname = "Leaping_Lizzy") OR
(mobid = 17219795 AND mobname = "Stray_Mary") OR
(mobid = 17227972 AND mobname = "Black_Triple_Stars") OR
(mobid = 17248486 AND mobname = "Tom_Tit_Tat") OR
(mobid = 17252508 AND mobname = "Sharp-Eared_Ropipi") OR
(mobid = 17276982 AND mobname = "Nightmare_Vase") OR
(mobid = 17424385 AND mobname = "Enkelados") OR
(mobid = 17424475 AND mobname = "Ixtab") OR
(mobid = 17547322 AND mobname = "Morgmox_Moldnoggin") OR
(mobid = 17547324 AND mobname = "Sparkspox_Sweatbrow") OR
(mobid = 17547377 OR mobid = 17547381 AND mobname = "Buffrix_Eargone") OR
(mobid = 17547378 OR mobid = 17547382 AND mobname = "Humnox_Drumbelly") OR
(mobid = 17547402 AND mobname = "Kikklix_Longlegs") OR
(mobid = 17547424 AND mobname = "Karashix_Swollenskull") OR
(mobid = 17613048 OR mobid = 17613052 OR mobid = 17613054 AND mobname = "Goliath");

--Makes the Warp ring usable instantly upon equip and makes the cooldown 60secs.
UPDATE item_usable SET useDelay=0,reuseDelay=60 WHERE name="warp_ring" AND itemid=28540;
