/*******************************************************************************
 * OLTutorialManager generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class OLTutorialManager extends Object
    native
    config(Game);

var config bool bTutorialsEnabled;
var bool bActiveTutorial;
var bool bBatteryTutorialComplete;
var bool bClimbUpTutorialComplete;
var bool bDocumentTutorialComplete;
var int CurrentID;
var string TutorialText;
var array<string> CompletedTutorials;
var float TutorialItemTimestamp;
var int ClimbUpTutorialItemIdx;
var const float DefaultTutorialDuration;
var const localized string BatteriesTutorialText;
var const localized string ClimbUpTutorialText_Keyboard;
var const localized string ClimbUpTutorialText_Gamepad;
var const name DocumentTutorialTextId;

// Export UOLTutorialManager::execClear(FFrame&, void* const)
native function Clear();

defaultproperties
{
    bTutorialsEnabled=true
    CurrentID=1
    DefaultTutorialDuration=5.0
    BatteriesTutorialText="Batteries are used for the infrared light of your camcorder. You can reload by pressing {OLA_Reload}"
    ClimbUpTutorialText_Keyboard="To climb up, press {OLA_Jump}. To drop, press {OLA_Crouch}"
    ClimbUpTutorialText_Gamepad="To climb up, press {OLA_Jump}. To drop, press {OLA_CrouchToggle}"
    DocumentTutorialTextId=Tutorial_Documents
}