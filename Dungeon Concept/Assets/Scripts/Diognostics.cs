using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;
using UnityEngine.UI;

public class Diognostics : MonoBehaviour
{
    public Text zero;
    public Text one;
    public Text two;
    public Text three;
    public Text four;
    public Text five;
    public Text six;
    public Text seven;
    
    public Slider rightTrigger;
    public Slider leftTrigger;

    // Update is called once per frame
    void Update()
    {
        zero.text = Glide.currentSpeed.ToString(".0");
        one.text = Glide.gear;
        two.text = vQuatFinder.verticalGoldenAngle.ToString("0"+" vertical angle");
        three.text = Glide.gravTotal.ToString("0" + "current gravity");
        four.text = Glide.gravAngle.ToString("0" + "added gravity");
        five.text = Glide.bonusGrav.ToString();
        six.text = Glide.currentAngle.ToString("0,0,0" + "angle in vector3");
        seven.text = hQuatFinder.horozontalGoldenAngle.ToString("0" + "Horozontal Angle");
        
        rightTrigger.value = Glide.rollrights;
        leftTrigger.value = Glide.rolllefts;
    }
}
