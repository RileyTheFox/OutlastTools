/*******************************************************************************
 * OLAICmd_MoveAbility_Door generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class OLAICmd_MoveAbility_Door extends OLAICmd_MoveAbility within OLBot
    native(AI);

var OLDoor door;
var Vector LastDestination;
var int BashIter;

static event OLAICmd_MoveAbility_Door MoveThruDoor(OLBot Bot, OLDoor InDoor, Vector InitialDestination, bool bInReversed)
{
}