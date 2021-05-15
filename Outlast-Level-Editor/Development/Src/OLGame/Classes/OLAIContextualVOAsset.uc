/*******************************************************************************
 * OLAIContextualVOAsset generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class OLAIContextualVOAsset extends Object
    native(AI);

enum EVOContext
{
    EVOC_Undefined,
    EVOC_LostTarget,
    EVOC_PatrolToInvestigate,
    EVOC_SwitchToChase,
    EVOC_SwitchToChaseMultiple,
    EVOC_ChaseToInvestigate,
    EVOC_Spawned,
    EVOC_MAX
};

struct native VOMapping
{
    var() OLAIContextualVOAsset.EVOContext VOContext;

    structdefaultproperties
    {
        VOContext=EVOContext.EVOC_Undefined
        Events=none
    }
};