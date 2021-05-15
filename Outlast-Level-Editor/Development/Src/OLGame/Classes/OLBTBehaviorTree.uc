/*******************************************************************************
 * OLBTBehaviorTree generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
 
class OLBTBehaviorTree extends Object
    native(AI);

var() OLBTRootNode RootNode;
var editoronly transient bool bBeingEdited;

defaultproperties
{
	Description="OLBTBehaviorTree"
	Begin Object Class=SpriteComponent Name=Sprite44
        Sprite=Texture2D'EditorResources.Crowd.T_Crowd_Destination'
        HiddenGame=true
        HiddenEditor=false
        AlwaysLoadOnClient=False
        AlwaysLoadOnServer=False
        SpriteCategoryName="GSD"
        Scale=1
    End Object
	Components.Add(Sprite44)
}