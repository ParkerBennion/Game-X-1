using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AccelTester : MonoBehaviour
{
    public static float currStrength = 0 ;
    float maxStrength = vQuatFinder.verticalGoldenAngle;
    float recoveryRate = vQuatFinder.verticalGoldenAngle/3;

    void Update()
    {
        recoveryRate = Mathf.Abs(vQuatFinder.verticalGoldenAngle/3);
        if (recoveryRate<=6)
        {
            recoveryRate = 6;
        }
        // this needs adjusting to be more responsive and more varied over distance.
        maxStrength = vQuatFinder.verticalGoldenAngle;
        currStrength = Mathf.MoveTowards(currStrength, maxStrength, recoveryRate * Time.deltaTime);
    }
}

