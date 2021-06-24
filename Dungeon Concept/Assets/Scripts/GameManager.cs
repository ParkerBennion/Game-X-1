using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameManager : MonoBehaviour
{
    public static bool green;
    public static Quaternion fixedQuat;

    private void FixedUpdate()
    {
        transform.position = Glide.craftPos;
        //transform.rotation = Glide.craftRot;
        Quaternion fixedQuat = new Quaternion(0, Glide.craftRot.y, 0, Glide.craftRot.w);
        transform.rotation = fixedQuat;
    }

    void Start()
    {
        green = true;
    }


}
