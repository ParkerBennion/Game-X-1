using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AAATestScript : MonoBehaviour
{
    private bool waitingForInput;
    static public Vector3 mainPosition;

    private void Start()
    {
        waitingForInput = false;
        if (GameManager.green == true)
        {
            StartCoroutine()
        }
    }

    private void Update()
    {
        mainPosition = transform.position;
        Debug.Log(mainPosition);
    }
    
    
    
}
