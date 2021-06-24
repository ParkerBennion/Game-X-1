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

    // Update is called once per frame
    void Update()
    {
        zero.text = Glide.currentSpeed.ToString(".0");
        one.text = Glide.gear;
        two.text = Glide.currentAngle.ToString(".00");
        three.text = Glide.gravTotal.ToString("0" + "current gravity");
        four.text = Glide.grav.ToString("0" + "set gravity");
        five.text = Glide.bonusGrav.ToString();
        six.text = QuatAngle.goldenAngle.ToString("0");
    }
}
