using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;

public class Glide : MonoBehaviour
{
    private float power = 20;
    private float thrust = 600;
    public static float grav = 20f;
    public static float gravTotal;

    private Rigidbody gliderBody;
    PlayerControlls controls;
    public static float rollrights;
    public static float rolls;
    public static float speedometer;
    public static float currentSpeed;



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
        GetComponent<Rigidbody>().drag = 1;
        GetComponent<Rigidbody>().angularDrag = 1;
    }

    /*void Grow()
    {
        transform.localScale *= 1.1f;
    }*/

    void Boost()
    {
        thrust = 1500;
    }

    void BoostOff()
    {
        thrust = 700;
    }

    void Airbrake()
    {
        GetComponent<Rigidbody>().drag = 4f;
        
    }
    void AirbrakeOff()
    {
        GetComponent<Rigidbody>().drag = 1f;
        
    }

    private void OnEnable()
    {
        controls.gamePlay.Enable();
    }

    private void OnDisable()
    {
        controls.gamePlay.Disable();
    }
    

    void FixedUpdate()
    {
       //transform.Translate(Vector3.forward * power * Time.deltaTime);
        gliderBody.AddForce(transform.forward * thrust *Time.deltaTime);
        //gliderBody.AddForce(transform.up * liftTotal * Time.deltaTime);
        //gliderBody.AddForce(transform.up * -liftTotal * Time.deltaTime);
        //gliderBody.AddForce(gliderBody.transform.TransformDirection(Vector3.down)*power);
        Physics.gravity = new Vector3(0, -gravTotal, 0);

        
        
        
        /* if (rollrights <= .50)
         {
             transform.Rotate(Vector3.left*rollrights*100*Time.deltaTime);
         }*/
        transform.Rotate(Vector3.left*100*Time.deltaTime);
        transform.Rotate(Vector3.right*rollrights*100*Time.deltaTime);
        transform.Rotate(Vector3.back*rollrights*50*Time.deltaTime);
        transform.Rotate(Vector3.right*rolls*100*Time.deltaTime);
        transform.Rotate(Vector3.forward * rolls * 50 * Time.deltaTime);

        speedometer = gliderBody.velocity.magnitude*10;
        currentSpeed = gliderBody.velocity.magnitude;

        gravTotal = grav - currentSpeed;
        if (gravTotal < .3)
        {
            gravTotal = 0;
        }
        
        Debug.Log("gravity = " + gravTotal);

    }
    //get controller inputs on these to feel better on tirggers.

    private void Update()
    {

        
        




        /*if (rollrights > .50)
        {    
            transform.Rotate(Vector3.right*rollrights*50*Time.deltaTime);
        }*/
    }
    // make this a bool to work better then make it gradual.
}
