// Thanks kuno for teaching me the entire ASL
state("Outlast2")
{
    int ingame : 0x01F9512C;
    string50 map : 0x0219B4A8, 0xBAC, 0x8;
    int documents : 0x0219BD90, 0x8, 0x48, 0x144, 0x10, 0x148, 0x0, 0xDA8;
}

startup
{ 
    settings.Add("genesis", true, "Genesis");
        settings.Add("crash", true, "The Crash", "genesis");
        settings.Add("compound", true, "The Compound", "genesis");
        settings.Add("field", true, "The Fields", "genesis");
        settings.Add("templegate", true, "Temple Gate Town Square", "genesis");
        settings.Add("chapel", true, "The Chapel", "genesis");
        settings.Add("roadmine", true, "The Road To The Mine", "genesis");

    settings.Add("job", true, "Job");
        settings.Add("scalled", true, "The Scalled", "job");
        settings.Add("sybil", true, "St. Sybil Admin", "job");
        settings.Add("golgotha", true, "Golgotha", "job");
        settings.Add("help", true, "A Call For Help", "job");
        settings.Add("supper", true, "Last Supper", "job");
        settings.Add("roof", true, "the School Roof", "job");

    settings.Add("lamentations", true, "Lamentations");
        settings.Add("raft", true, "The Lake", "lamentations");
        settings.Add("rainingblood", true, "Raining Blood", "lamentations");

    settings.Add("judges", true, "Judges");
        settings.Add("welcome", true, "Welcome", "judges");
        settings.Add("lab", true, "Computer Lab", "judges");
        settings.Add("ascension", true, "The Ascension", "judges");
        settings.Add("library", true, "The Library", "judges");
        settings.Add("suicide", true, "Murder Before Suicide", "judges");
        settings.Add("king", true, "King Of The Hill", "judges");

    settings.Add("leviticus", true, "Leviticus");
        settings.Add("decent", true, "The Decent", "leviticus");
        settings.Add("val", true, "Val's Rebirth", "leviticus");

    settings.Add("revelations", true, "Revelations");
        settings.Add("apocalypse", true, "The Apocalypse", "revelations");

    //Thanks to Kuno, I was able to find the checkpoint values, using these checkpoint values I made it so whenever one of these is reached, it will split. 
    //Very simillar to the Outlast 1 and Whistleblower asl I helped work on this on
    


 var tB = (Func<string, string, string, Tuple<string, string, string>>) ((elmt1, elmt2, elmt3) => { return Tuple.Create(elmt1, elmt2, elmt3); });
    var sB = new List<Tuple<string, string, string>> 
    {
    tB("crash", "CP_Crash_ToMarta", "Marta First Encounter"),
    tB("compound", "CP_Crash2_PostSlide", "Sliding Down to See Lynn"),
    tB("field", "CP_VS1_Cliff", "Finding Ethan"),
    tB("field", "CP_VS1_Cornfield1_Done", "Getting Knocked Out of Barn"),
    tB("templegate", "CP_VS2_SecretBasement", "Entering Secret Basement"), //Replaced entering the Heretic cave with this, as requested by community
    tB("templegate", "CP_VS2_Pavilion_1", "After Elevator Ride"),
    tB("chapel", "CP_VS2_Pavilion_2", "After Seeing Hanging Jessica"),
    tB("chapel", "CP_VS2_Pavilion_2_4", "He's In The House"), 
    tB("chapel", "CP_VS2_CreaksideEast_1", "After He's In The House"),
    tB("roadmine", "CP_VS3_Torture", "Hiding In Booth"),
    tB("roadmine", "CP_VS3_Watermill_2", "Grabbing Crank"),
    tB("roadmine", "CP_VS3_Hook", "Grabbing Hook"),
    tB("scalled", "CP_SY_ToBridge", "Start Of Job"),
    tB("sybil", "CP_School_LockerStart", "Entering Locker"),
    tB("golgotha", "CP_SY_Follow_NL", "After Cruxifiction"),
    tB("golgotha", "CP_SY_Follow_NL_4", "Before Falling Into Water"),
    tB("help", "CP_School_Phone", "After School Phone"), 
    tB("supper", "CP_SY_CoffinInside", "Buried Alive"),
    tB("supper", "CP_SY_MineFacilityShot", "Before Rope Fetch Quest"),
    tB("roof", "CP_School_ToCourtyard", "Entering School"),
    tB("raft", "CP_RV_Start", "Heading To Lake"),
    tB("raft", "CP_RV_MiddleOfLake", "Big Wave"),
    tB("raft", "CP_RV_BackOnRaft", "Getting Back Onto Raft 2nd Time"),
    tB("rainingblood", "CP_School_PoolStart", "Pulled Into School Pool"),
    tB("welcome", "CP_MF_Start", "Start of Judges"),
    tB("lab", "CP_School_ComputerLab", "Enter Computer Lab"),
    tB("ascension", "CP_MF_WaterTank", "Getting Pulled Into The Water Tank"),
    tB("library", "CP_School_Library", "Entering Library Maze"),
    tB("suicide", "CP_School_DeadJessica", "Falling On To Jessica's Dead Body"),
    tB("king", "CP_MF_Roof_1", "Entering Roof S+Q"),
    tB("decent", "CP_MU_Start", "Entering Mines"),
    tB("decent", "CP_MU_FirstHeretics", "Before Dodge"),
    tB("decent", "CP_MU_PushDaCart", "Getting Dodge"), //They really gave up with checkpoint names towards the end
    tB("val", "CP_MU_ValChase2", "Before Val Skip"),
    tB("val", "CP_MU_ToCart", "After Val Skip"),
    tB("apocalypse", "CP_MU_GoGetLynn", "After Seeing Jessica's Murder"), //Splits at the start of Revelations
    tB("apocalypse", "CP_BF_RuinsDone", "Marta Death"),
    // tB("", "", ""), just incase I need this later
    };

    foreach (var s in sB) settings.Add(s.Item2, true, s.Item3, s.Item1);
    	if (timer.CurrentTimingMethod == TimingMethod.RealTime) // stolen from dude simulator 3, basically asks the runner to set their livesplit to game time
        {        
        var timingMessage = MessageBox.Show (
               "This game uses Time without Loads (Game Time) as the main timing method.\n"+
                "LiveSplit is currently set to show Real Time (RTA).\n"+
                "Would you like to set the timing method to Game Time? Mods do not retime loading screens for this game, if you do not use this your run will not be retimed",
                "LiveSplit | Outlast 2",
               MessageBoxButtons.YesNo,MessageBoxIcon.Question
            );
        
            if (timingMessage == DialogResult.Yes)
            {
                timer.CurrentTimingMethod = TimingMethod.GameTime;
            }
        }	    
}

isLoading
{
    return current.ingame != 1;
}

//Thanks Timbouton for the load remover

init
{ 
    vars.doneMaps = new List<string>();
    vars.documents = current.documents;
}

start
{
    if ((current.map == "CP_Crash_CrashSiteWakeUp") && (current.ingame == 1) && (old.ingame != 1))
    {
        print("Current documents: " + current.documents);
        vars.documents = current.documents;
        vars.doneMaps.Clear();
        return true;
    }
}

update
{
    //print("Current: " + current.documents);
    //print("Vars: " + vars.documents);

    vars.documents = current.documents;
    // Doesn't work.
    // This makes it so your documents and recordings will keep their count when S+Qing
    // if(current.documents > vars.documents) {
    //     vars.documents = current.documents;
    // }
}

split
{
    if ((current.map != old.map) && (settings[current.map]) && (!vars.doneMaps.Contains(current.map)))
    {
        vars.doneMaps.Add(current.map);
        return true;
    }
}
