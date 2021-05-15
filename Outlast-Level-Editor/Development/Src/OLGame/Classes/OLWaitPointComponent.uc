/*******************************************************************************
 * OLWaitPointComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
 
class OLWaitPointComponent extends ActorComponent
    native;

struct native WaitPoint
{
    var() Vector Offset;
    var() float ForwardYaw;
    var() bool bForReversed;
    var transient bool bIsValid;
    var transient Vector Point;
    var transient bool bInUse;

    structdefaultproperties
    {
        Offset=(X=0.0,Y=0.0,Z=0.0)
        ForwardYaw=0.0
        bForReversed=false
        bIsValid=false
        Point=(X=0.0,Y=0.0,Z=0.0)
        bInUse=false
    }
};

var() array<WaitPoint> WaitPoints;
var Matrix LocalToWorld;
var const Vector StartOffset;
var const Vector AdditionalOffset;
var const int NumWaitPointsPerSide;
var() const bool bOneSideOnly;
var() const bool bFlipOnYAxis;

// Export UOLWaitPointComponent::execGetWaitPointForwardVector(FFrame&, void* const)
native function Vector GetWaitPointForwardVector(WaitPoint Point);

// Export UOLWaitPointComponent::execGrabBestWaitPoint(FFrame&, void* const)
native function WaitPoint GrabBestWaitPoint(bool bReversed);

// Export UOLWaitPointComponent::execReturnWaitPoint(FFrame&, void* const)
native function ReturnWaitPoint(WaitPoint Point);

defaultproperties
{
    StartOffset=(X=110.0,Y=60.0,Z=0.0)
    AdditionalOffset=(X=70.0,Y=0.0,Z=0.0)
    NumWaitPointsPerSide=2
}