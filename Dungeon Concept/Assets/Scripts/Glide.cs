using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using UnityEditor;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;

public class Glide : MonoBehaviour
{
    PlayerControlls controls;
    
    private float power = 13;
    private static float thrust = 0;
    public static float grav = 15f;
    public static float rollrights;
    public static float rolls;
    public static float currentSpeed;
    public static float gravTotal;
    
    public static int boostMode;
    public static int currentBoost;
    
    public static bool bonusGrav;
    
    public static string gear = "none";

    private Rigidbody gliderBody;
    
    public static Vector3 currentAngle;
    public static Vector3 craftPos;
    
    public static Quaternion craftRot;



    private void Awake()
    {
        controls = new PlayerControlls();
        //controls.GamePlay.roll.performed += ctx => Grow();
        controls.gamePlay.rollRight.performed += ctx => rollrights = ctx.ReadValue<float>();
        controls.gamePlay.rollLeft.performed += ctx => rolls = ctx.ReadValue<float>();
        controls.gamePlay.booster.performed += ctx => Boost();
        controls.gamePlay.booster.canceled += ctx => BoostOff();
        controls.gamePlay.brake.performed += ctx => Airbrake();
        controls.gamePlay.brake.canceled += ctx => AirbrakeOff();
        gliderBody = GetComponent<Rigidbody>();
        GetComponent<Rigidbody>().drag = .5f;
        GetComponent<Rigidbody>().angularDrag = 1;
        currentBoost = 0;
    }

    private void Start()
    {
        StartCoroutine(FindVelocity());
    }
    
    IEnumerator FindVelocity()
    {
        bool isPlaying = true;
        while (isPlaying)
        {
            Vector3 prevPos = transform.position;
            yield return new WaitForFixedUpdate();
            currentSpeed = Mathf.RoundToInt(Vector3.Distance(transform.position, prevPos) / Time.fixedDeltaTime);
        }
    }
    void FixedUpdate()
    {
        transform.Translate(Vector3.forward * power * Time.deltaTime);
        gliderBody.AddForce(transform.forward * thrust *Time.deltaTime);
        
        //gliderBody.AddForce(transform.up * liftTotal * Time.deltaTime);
        //gliderBody.AddForce(transform.up * -liftTotal * Time.deltaTime);
        //gliderBody.AddForce(gliderBody.transform.TransformDirection(Vector3.down)*power);
        
        transform.Rotate(Vector3.right*100*Time.deltaTime); //constant dive

        transform.Rotate(Vector3.left*rollrights*100*Time.deltaTime);
        transform.Rotate(Vector3.forward*rollrights*50*Time.deltaTime);
        
        transform.Rotate(Vector3.left*rolls*100*Time.deltaTime); //rolls
        transform.Rotate(Vector3.back * rolls * 50 * Time.deltaTime); //rolls

        gravTotal = grav - currentSpeed;
        if (gravTotal < 1)
        {
            gravTotal = 0;
        }
        Physics.gravity = new Vector3(0, -gravTotal, 0);
    }

    /*void Grow()
    {
        transform.localScale *= 1.1f;
    }*/

    private static void Boost()
    {
        boostMode = currentBoost;
        switch (boostMode)
        {
            case 0 :
                gear = "primed";
                break;
            case 1 :
                thrust = 300;
                gear = "booster on";
                
                break;
            case 2 :
                thrust = 0;
                currentBoost-=2;
                gear = "booster off";
                break;
        }
    }
    
    
    void BoostOff()
    {
        currentBoost ++;
    }
    

    void Airbrake()
    {
        GetComponent<Rigidbody>().angularDrag = 4f;
        power = 0;
    }
    void AirbrakeOff()
    {
        GetComponent<Rigidbody>().angularDrag = .5f;
        power = 13;
    }


    private void OnEnable()
    {
        controls.gamePlay.Enable();
    }
    private void OnDisable()
    {
        controls.gamePlay.Disable();
    }

    private void Update()
    {
        currentAngle = transform.eulerAngles;

        if (currentAngle.x>= 35 && currentAngle.x <335)
        {
            bonusGrav = true;
        }
        else
        {
            bonusGrav = false;
        }
        if (bonusGrav == true)
        {
            grav = 20;
        }

        if (bonusGrav == false)
        {
            grav = 15;
        }


        craftPos = transform.position;
        craftRot = transform.rotation;
    }
}
