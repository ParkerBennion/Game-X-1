using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Speed : MonoBehaviour
{
    public Text speedtext;
    

    private void Update()
    {
        speedtext.text = Glide.speedometer.ToString(".0");
    }
}
