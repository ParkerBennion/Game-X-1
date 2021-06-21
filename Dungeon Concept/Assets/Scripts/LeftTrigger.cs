using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class LeftTrigger : MonoBehaviour
{
    public Slider leftTrigger;
    void Update()
    {
        leftTrigger.value = Glide.rolls;
    }
}
