using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class RightTrigger : MonoBehaviour
{
    public Slider rightTrigger;
    void Update()
    {
        rightTrigger.value = Glide.rollrights;
    }
}
