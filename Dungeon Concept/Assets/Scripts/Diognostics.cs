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
    public Text eight;
    public Text nine;
    public Text ten;
    public Text eleven;
    public Text twelve;
    public Text thirteen;
    public Text fourteen;
    public Text fifteen;
    
    public Slider rightTrigger;
    public Slider leftTrigger;

    // Update is called once per frame
    void Update()
    {
        zero.text = Glide.currentSpeed.ToString(".0" +"speed");
        one.text = Glide.gear;
        two.text = Glide.currentBoost.ToString("0" + "gear");
        three.text = Glide.gravTotal.ToString("0" + "current gravity");
        four.text = Glide.gravAngle.ToString("0" + "added gravity");
        five.text = Glide.momentum.ToString("0" + " momentum");
        six.text = Glide.enginePower.ToString("0" + " Engine Power");
        seven.text = Glide.power.ToString("0" + " Total power");
        eight.text = Glide.thrust.ToString("0" + " thrust");
        nine.text = AccelTester.currStrength.ToString(".0");
        ten.text = vQuatFinder.verticalGoldenAngle.ToString(".0"+ "true vert angle");
        eleven.text = hQuatFinder.horozontalGoldenAngle.ToString("0" + "Horozontal Angle");
        twelve.text = Glide.engineOn.ToString();
        thirteen.text = BoostAccel.engineCurrent.ToString("0");
        fourteen.text = Glide.rolllefts.ToString(".0");
        fifteen.text = Glide.engineDelta.ToString("0" + "delta");
        rightTrigger.value = Glide.rollrights;
        leftTrigger.value = Glide.rolllefts;
    }
}
