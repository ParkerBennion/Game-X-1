using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuatAngle : MonoBehaviour
{
    public Transform target;
    public static float goldenAngle;

    void Update()
    {
        float angle = Quaternion.Angle(transform.rotation, target.rotation);
        goldenAngle = angle;
    }
}
