function AtlasLoot_SetMenu(setname)
    if(setname=="AQ40SET") then
        AtlasLootAQ40SetMenu();
    elseif(setname=="AQ20SET") then
        AtlasLootAQ20SetMenu();
    elseif(setname=="ZGSET") then
        AtlasLootZGSetMenu();
    elseif(setname=="T3SET") then
        AtlasLootT3SetMenu();
    elseif(setname=="T2SET") then
        AtlasLootT2SetMenu();
    elseif(setname=="T1SET") then
        AtlasLootT1SetMenu();
    elseif(setname=="T0SET") then
        AtlasLootT0SetMenu();
    elseif(setname=="PVPSET") then
        AtlasLootPVPSetMenu();
    end
    for i=1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    getglobal("AtlasLootItemsFrame_BACK"):Hide();
end

function AtlasLootSetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
    end
    getglobal("AtlasLootItemsFrame_BACK"):Hide();
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --ZG
    AtlasLootMenuItem_2_Name:SetText(ATLASLOOT_ZG_SETS);
    AtlasLootMenuItem_2_Extra:SetText("");
    AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_19");
    AtlasLootMenuItem_2.type="Sets";
    AtlasLootMenuItem_2.lootpage="ZGSET";
    AtlasLootMenuItem_2:Show();
    --AQ20
    AtlasLootMenuItem_3_Name:SetText(ATLASLOOT_AQ20_SETS);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Ring_AhnQiraj_03");
    AtlasLootMenuItem_3.type="Sets";
    AtlasLootMenuItem_3.lootpage="AQ20SET";
    AtlasLootMenuItem_3:Show();
    --AQ40
    AtlasLootMenuItem_4_Name:SetText(ATLASLOOT_AQ40_SETS);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Sword_59");
    AtlasLootMenuItem_4.type="Sets";
    AtlasLootMenuItem_4.lootpage="AQ40SET";
    AtlasLootMenuItem_4:Show();
    --Legendaries
    AtlasLootMenuItem_6_Name:SetText(ATLASLOOT_LEGENDARIES);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\INV_Staff_Medivh");
    AtlasLootMenuItem_6.type="Sets";
    AtlasLootMenuItem_6.lootpage="Legendaries";
    AtlasLootMenuItem_6:Show();
    --Rare Mounts
    AtlasLootMenuItem_7_Name:SetText(ATLASLOOT_RAREMOUNTS);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Misc_QirajiCrystal_05");
    AtlasLootMenuItem_7.type="Sets";
    AtlasLootMenuItem_7.lootpage="RareMounts";
    AtlasLootMenuItem_7:Show();
    --Old Mounts
    AtlasLootMenuItem_9_Name:SetText(ATLASLOOT_OLDMOUNTS);
    AtlasLootMenuItem_9_Extra:SetText("");
    AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Ability_Mount_RidingHorse");
    AtlasLootMenuItem_9.type="Sets";
    AtlasLootMenuItem_9.lootpage="OldMounts";
    AtlasLootMenuItem_9:Show();
	--Unobtainable Mounts
    AtlasLootMenuItem_10_Name:SetText(ATLASLOOT_UNOBMOUNTS);
    AtlasLootMenuItem_10_Extra:SetText("");
    AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\Ability_Mount_Whitetiger");
    AtlasLootMenuItem_10.type="Sets";
    AtlasLootMenuItem_10.lootpage="UnobMounts";
    AtlasLootMenuItem_10:Show();
    --Pets
    AtlasLootMenuItem_8_Name:SetText(ATLASLOOT_CEPETS);
    AtlasLootMenuItem_8_Extra:SetText("");
    AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Ability_Seal");
    AtlasLootMenuItem_8.type="Sets";
    AtlasLootMenuItem_8.lootpage="RarePets1";
    AtlasLootMenuItem_8:Show();
	--World Epics
    AtlasLootMenuItem_22_Name:SetText(ATLASLOOT_WORLDEPICS);
    AtlasLootMenuItem_22_Extra:SetText("");
    AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\INV_Box_04");
    AtlasLootMenuItem_22.type="Sets";
    AtlasLootMenuItem_22.lootpage="WorldEpics3";
    AtlasLootMenuItem_22:Show();
    --Dungeon Set 1/2
    AtlasLootMenuItem_17_Name:SetText(ATLASLOOT_TIER0_SETS);
    AtlasLootMenuItem_17_Extra:SetText("");
    AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Chest_Chain_03");
    AtlasLootMenuItem_17.type="Sets";
    AtlasLootMenuItem_17.lootpage="T0SET";
    AtlasLootMenuItem_17:Show();
    --Tier 1
    AtlasLootMenuItem_18_Name:SetText(ATLASLOOT_TIER1_SETS);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\INV_Pants_Mail_03");
    AtlasLootMenuItem_18.type="Sets";
    AtlasLootMenuItem_18.lootpage="T1SET";
    AtlasLootMenuItem_18:Show();
    --Tier 2
    AtlasLootMenuItem_19_Name:SetText(ATLASLOOT_TIER2_SETS);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\INV_Shoulder_32");
    AtlasLootMenuItem_19.type="Sets";
    AtlasLootMenuItem_19.lootpage="T2SET";
    AtlasLootMenuItem_19:Show();
    --Tier 3
    AtlasLootMenuItem_20_Name:SetText(ATLASLOOT_TIER3_SETS);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\INV_Pants_Cloth_05");
    AtlasLootMenuItem_20.type="Sets";
    AtlasLootMenuItem_20.lootpage="T3SET";
    AtlasLootMenuItem_20:Show();
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..ATLASLOOT_PANEL_BUTTON_SETS);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootAQ40SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
    end
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(ATLASLOOT_DRUID);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.type="Subset";
    AtlasLootMenuItem_3.lootpage="AQ40Druid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(ATLASLOOT_MAGE);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.type="Subset";
    AtlasLootMenuItem_4.lootpage="AQ40Mage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(ATLASLOOT_PRIEST);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.type="Subset";
    AtlasLootMenuItem_5.lootpage="AQ40Priest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(ATLASLOOT_SHAMAN);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.type="Subset";
    AtlasLootMenuItem_6.lootpage="AQ40Shaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(ATLASLOOT_WARRIOR);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.type="Subset";
    AtlasLootMenuItem_7.lootpage="AQ40Warrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(ATLASLOOT_HUNTER);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.type="Subset";
    AtlasLootMenuItem_18.lootpage="AQ40Hunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(ATLASLOOT_PALADIN);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.type="Subset";
    AtlasLootMenuItem_19.lootpage="AQ40Paladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(ATLASLOOT_ROGUE);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.type="Subset";
    AtlasLootMenuItem_20.lootpage="AQ40Rogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(ATLASLOOT_WARLOCK);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Pants_Cloth_05");
    AtlasLootMenuItem_21.type="Subset";
    AtlasLootMenuItem_21.lootpage="AQ40Warlock";
    AtlasLootMenuItem_21:Show();
    getglobal("AtlasLootItemsFrame_BACK"):Hide();
    getglobal("AtlasLootItemsFrame_BACK").setname="AQ40SET";
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..ATLASLOOT_AQ40_SETS);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootAQ20SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
    end
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(ATLASLOOT_DRUID);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.type="Subset";
    AtlasLootMenuItem_3.lootpage="AQ20Druid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(ATLASLOOT_MAGE);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.type="Subset";
    AtlasLootMenuItem_4.lootpage="AQ20Mage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(ATLASLOOT_PRIEST);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.type="Subset";
    AtlasLootMenuItem_5.lootpage="AQ20Priest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(ATLASLOOT_SHAMAN);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.type="Subset";
    AtlasLootMenuItem_6.lootpage="AQ20Shaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(ATLASLOOT_WARRIOR);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.type="Subset";
    AtlasLootMenuItem_7.lootpage="AQ20Warrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(ATLASLOOT_HUNTER);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.type="Subset";
    AtlasLootMenuItem_18.lootpage="AQ20Hunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(ATLASLOOT_PALADIN);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.type="Subset";
    AtlasLootMenuItem_19.lootpage="AQ20Paladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(ATLASLOOT_ROGUE);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.type="Subset";
    AtlasLootMenuItem_20.lootpage="AQ20Rogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(ATLASLOOT_WARLOCK);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Pants_Cloth_05");
    AtlasLootMenuItem_21.type="Subset";
    AtlasLootMenuItem_21.lootpage="AQ20Warlock";
    AtlasLootMenuItem_21:Show();
    getglobal("AtlasLootItemsFrame_BACK"):Hide();
    getglobal("AtlasLootItemsFrame_BACK").setname="AQ20SET";
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..ATLASLOOT_AQ20_SETS);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootZGSetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
    end
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(ATLASLOOT_DRUID);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.type="Subset";
    AtlasLootMenuItem_3.lootpage="ZGDruid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(ATLASLOOT_MAGE);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.type="Subset";
    AtlasLootMenuItem_4.lootpage="ZGMage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(ATLASLOOT_PRIEST);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.type="Subset";
    AtlasLootMenuItem_5.lootpage="ZGPriest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(ATLASLOOT_SHAMAN);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.type="Subset";
    AtlasLootMenuItem_6.lootpage="ZGShaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(ATLASLOOT_WARRIOR);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.type="Subset";
    AtlasLootMenuItem_7.lootpage="ZGWarrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(ATLASLOOT_HUNTER);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.type="Subset";
    AtlasLootMenuItem_18.lootpage="ZGHunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(ATLASLOOT_PALADIN);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.type="Subset";
    AtlasLootMenuItem_19.lootpage="ZGPaladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(ATLASLOOT_ROGUE);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.type="Subset";
    AtlasLootMenuItem_20.lootpage="ZGRogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(ATLASLOOT_WARLOCK);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Pants_Cloth_05");
    AtlasLootMenuItem_21.type="Subset";
    AtlasLootMenuItem_21.lootpage="ZGWarlock";
    AtlasLootMenuItem_21:Show();
    getglobal("AtlasLootItemsFrame_BACK"):Hide();
    getglobal("AtlasLootItemsFrame_BACK").setname="ZGSET";
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..ATLASLOOT_ZG_SETS);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootT0SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
    end
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(ATLASLOOT_DRUID);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.type="Subset";
    AtlasLootMenuItem_3.lootpage="T0Druid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(ATLASLOOT_MAGE);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.type="Subset";
    AtlasLootMenuItem_4.lootpage="T0Mage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(ATLASLOOT_PRIEST);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.type="Subset";
    AtlasLootMenuItem_5.lootpage="T0Priest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(ATLASLOOT_SHAMAN);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.type="Subset";
    AtlasLootMenuItem_6.lootpage="T0Shaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(ATLASLOOT_WARRIOR);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.type="Subset";
    AtlasLootMenuItem_7.lootpage="T0Warrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(ATLASLOOT_HUNTER);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.type="Subset";
    AtlasLootMenuItem_18.lootpage="T0Hunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(ATLASLOOT_PALADIN);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.type="Subset";
    AtlasLootMenuItem_19.lootpage="T0Paladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(ATLASLOOT_ROGUE);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.type="Subset";
    AtlasLootMenuItem_20.lootpage="T0Rogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(ATLASLOOT_WARLOCK);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Pants_Cloth_05");
    AtlasLootMenuItem_21.type="Subset";
    AtlasLootMenuItem_21.lootpage="T0Warlock";
    AtlasLootMenuItem_21:Show();
    getglobal("AtlasLootItemsFrame_BACK"):Hide();
    getglobal("AtlasLootItemsFrame_BACK").setname="T0SET";
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..ATLASLOOT_TIER0_SETS);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootT1SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
    end
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(ATLASLOOT_DRUID);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.type="Subset";
    AtlasLootMenuItem_3.lootpage="T1Druid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(ATLASLOOT_MAGE);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.type="Subset";
    AtlasLootMenuItem_4.lootpage="T1Mage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(ATLASLOOT_PRIEST);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.type="Subset";
    AtlasLootMenuItem_5.lootpage="T1Priest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(ATLASLOOT_SHAMAN);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.type="Subset";
    AtlasLootMenuItem_6.lootpage="T1Shaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(ATLASLOOT_WARRIOR);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.type="Subset";
    AtlasLootMenuItem_7.lootpage="T1Warrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(ATLASLOOT_HUNTER);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.type="Subset";
    AtlasLootMenuItem_18.lootpage="T1Hunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(ATLASLOOT_PALADIN);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.type="Subset";
    AtlasLootMenuItem_19.lootpage="T1Paladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(ATLASLOOT_ROGUE);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.type="Subset";
    AtlasLootMenuItem_20.lootpage="T1Rogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(ATLASLOOT_WARLOCK);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Pants_Cloth_05");
    AtlasLootMenuItem_21.type="Subset";
    AtlasLootMenuItem_21.lootpage="T1Warlock";
    AtlasLootMenuItem_21:Show();
    getglobal("AtlasLootItemsFrame_BACK"):Hide();
    getglobal("AtlasLootItemsFrame_BACK").setname="T1SET";
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..ATLASLOOT_TIER1_SETS);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootT2SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
    end
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(ATLASLOOT_DRUID);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.type="Subset";
    AtlasLootMenuItem_3.lootpage="T2Druid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(ATLASLOOT_MAGE);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.type="Subset";
    AtlasLootMenuItem_4.lootpage="T2Mage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(ATLASLOOT_PRIEST);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.type="Subset";
    AtlasLootMenuItem_5.lootpage="T2Priest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(ATLASLOOT_SHAMAN);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.type="Subset";
    AtlasLootMenuItem_6.lootpage="T2Shaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(ATLASLOOT_WARRIOR);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.type="Subset";
    AtlasLootMenuItem_7.lootpage="T2Warrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(ATLASLOOT_HUNTER);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.type="Subset";
    AtlasLootMenuItem_18.lootpage="T2Hunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(ATLASLOOT_PALADIN);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.type="Subset";
    AtlasLootMenuItem_19.lootpage="T2Paladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(ATLASLOOT_ROGUE);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.type="Subset";
    AtlasLootMenuItem_20.lootpage="T2Rogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(ATLASLOOT_WARLOCK);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Pants_Cloth_05");
    AtlasLootMenuItem_21.type="Subset";
    AtlasLootMenuItem_21.lootpage="T2Warlock";
    AtlasLootMenuItem_21:Show();
    getglobal("AtlasLootItemsFrame_BACK"):Hide();
    getglobal("AtlasLootItemsFrame_BACK").setname="T2SET";
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..ATLASLOOT_TIER2_SETS);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootT3SetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
    end
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(ATLASLOOT_DRUID);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.type="Subset";
    AtlasLootMenuItem_3.lootpage="T3Druid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(ATLASLOOT_MAGE);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.type="Subset";
    AtlasLootMenuItem_4.lootpage="T3Mage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(ATLASLOOT_PRIEST);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.type="Subset";
    AtlasLootMenuItem_5.lootpage="T3Priest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(ATLASLOOT_SHAMAN);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.type="Subset";
    AtlasLootMenuItem_6.lootpage="T3Shaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(ATLASLOOT_WARRIOR);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.type="Subset";
    AtlasLootMenuItem_7.lootpage="T3Warrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(ATLASLOOT_HUNTER);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.type="Subset";
    AtlasLootMenuItem_18.lootpage="T3Hunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(ATLASLOOT_PALADIN);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.type="Subset";
    AtlasLootMenuItem_19.lootpage="T3Paladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(ATLASLOOT_ROGUE);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.type="Subset";
    AtlasLootMenuItem_20.lootpage="T3Rogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(ATLASLOOT_WARLOCK);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Pants_Cloth_05");
    AtlasLootMenuItem_21.type="Subset";
    AtlasLootMenuItem_21.lootpage="T3Warlock";
    AtlasLootMenuItem_21:Show();
    getglobal("AtlasLootItemsFrame_BACK"):Hide();
    getglobal("AtlasLootItemsFrame_BACK").setname="T3SET";
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..ATLASLOOT_TIER3_SETS);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootPVPSetMenu()
    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i):Hide();
    end
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i):Hide();
    end
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
    --Druid
    AtlasLootMenuItem_3_Name:SetText(ATLASLOOT_DRUID);
    AtlasLootMenuItem_3_Extra:SetText("");
    AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
    AtlasLootMenuItem_3.type="Subset";
    AtlasLootMenuItem_3.lootpage="PVPDruid";
    AtlasLootMenuItem_3:Show();
    --Mage
    AtlasLootMenuItem_4_Name:SetText(ATLASLOOT_MAGE);
    AtlasLootMenuItem_4_Extra:SetText("");
    AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
    AtlasLootMenuItem_4.type="Subset";
    AtlasLootMenuItem_4.lootpage="PVPMage";
    AtlasLootMenuItem_4:Show();
    --Priest
    AtlasLootMenuItem_5_Name:SetText(ATLASLOOT_PRIEST);
    AtlasLootMenuItem_5_Extra:SetText("");
    AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
    AtlasLootMenuItem_5.type="Subset";
    AtlasLootMenuItem_5.lootpage="PVPPriest";
    AtlasLootMenuItem_5:Show();
    --Shaman
    AtlasLootMenuItem_6_Name:SetText(ATLASLOOT_SHAMAN);
    AtlasLootMenuItem_6_Extra:SetText("");
    AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
    AtlasLootMenuItem_6.type="Subset";
    AtlasLootMenuItem_6.lootpage="PVPShaman";
    AtlasLootMenuItem_6:Show();
    --Warrior
    AtlasLootMenuItem_7_Name:SetText(ATLASLOOT_WARRIOR);
    AtlasLootMenuItem_7_Extra:SetText("");
    AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
    AtlasLootMenuItem_7.type="Subset";
    AtlasLootMenuItem_7.lootpage="PVPWarrior";
    AtlasLootMenuItem_7:Show();
    --Hunter
    AtlasLootMenuItem_18_Name:SetText(ATLASLOOT_HUNTER);
    AtlasLootMenuItem_18_Extra:SetText("");
    AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
    AtlasLootMenuItem_18.type="Subset";
    AtlasLootMenuItem_18.lootpage="PVPHunter";
    AtlasLootMenuItem_18:Show();
    --Paladin
    AtlasLootMenuItem_19_Name:SetText(ATLASLOOT_PALADIN);
    AtlasLootMenuItem_19_Extra:SetText("");
    AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
    AtlasLootMenuItem_19.type="Subset";
    AtlasLootMenuItem_19.lootpage="PVPPaladin";
    AtlasLootMenuItem_19:Show();
    --Rogue
    AtlasLootMenuItem_20_Name:SetText(ATLASLOOT_ROGUE);
    AtlasLootMenuItem_20_Extra:SetText("");
    AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
    AtlasLootMenuItem_20.type="Subset";
    AtlasLootMenuItem_20.lootpage="PVPRogue";
    AtlasLootMenuItem_20:Show();
    --Warlock
    AtlasLootMenuItem_21_Name:SetText(ATLASLOOT_WARLOCK);
    AtlasLootMenuItem_21_Extra:SetText("");
    AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Pants_Cloth_05");
    AtlasLootMenuItem_21.type="Subset";
    AtlasLootMenuItem_21.lootpage="PVPWarlock";
    AtlasLootMenuItem_21:Show();
    getglobal("AtlasLootItemsFrame_BACK"):Hide();
    getglobal("AtlasLootItemsFrame_BACK").setname="PVPSET";
    getglobal("AtlasLootItemsFrame_NEXT").lootpage="PVPWeapons2";
    getglobal("AtlasLootItemsFrame_PREV").lootpage="PVPWeapons1";
    for i = 1, 30, 1 do
        getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
    end
    AtlasLoot_BossName:SetText("|cffFFFFFF"..ATLASLOOT_PVP_SETS);
    AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end