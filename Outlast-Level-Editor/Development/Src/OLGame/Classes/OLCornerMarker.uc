/*******************************************************************************
 * OLCornerMarker generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class OLCornerMarker extends OLGameplayMarker
    native
    placeable
    hidecategories(Navigation);

var() bool b3Sided;
var() bool bRoundedCorner;
var() bool bCanPeekFromLeftStanding;
var() bool bCanPeekFromRightStanding;
var editconst bool bCanPeekFromLeftCrouched;
var editconst bool bCanPeekFromRightCrouched;
var() float WallThickness;
var() editconst string BoundStaticMesh;

defaultproperties
{
    bCanPeekFromLeftStanding=true
    bCanPeekFromRightStanding=true
    WallThickness=16.0
	Begin Object Class=ArrowComponent Name=Arrow
		HiddenGame=True
		Rotation=(Pitch=0,Yaw=32768,Roll=0)
	End Object
	Components.Add(Arrow)
	Begin Object Class=ArrowComponent Name=Arrow2
		HiddenGame=True
		AbsoluteRotation=False
		Rotation=(Pitch=0,Yaw=-16384,Roll=0)
		bTreatAsASprite=True
	End Object
	Components.Add(Arrow2)
	Begin Object Name=Sprite44
        Sprite=Texture2D'OLEditorResources.EditorSprites.OLCornerMarker_Sprite'
        HiddenGame=true
        HiddenEditor=false
        AlwaysLoadOnClient=False
        AlwaysLoadOnServer=False
        SpriteCategoryName="GSD"
		Translation=(X=0,Y=0,Z=0)
        Scale=.05
    End Object
}