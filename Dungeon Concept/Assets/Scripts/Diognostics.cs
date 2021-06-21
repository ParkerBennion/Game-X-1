using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Diognostics : MonoBehaviour
{
    public Text one;
    public Text two;
    public Text three;
    public Text four;

    // Update is called once per frame
    void Update()
    {
        one.text = Glide.currentSpeed.ToString(".0" + "current speed");
        two.text = Glide.speedometer.ToString("0");
        three.text = Glide.gravTotal.ToString("0" + "gravity curren");
        four.text = Glide.grav.ToString("0" + "gravity");
    }
}
