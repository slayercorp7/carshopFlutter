package com.example.carrito_de_compras

import android.content.pm.PackageInfo

import android.content.pm.PackageManager

import android.os.Bundle

import android.util.Base64

import android.util.Log

import io.flutter.embedding.android.FlutterActivity

import java.security.MessageDigest

import java.security.NoSuchAlgorithmException

import android.content.Context

class MainActivity: FlutterActivity() {

  /*  @Override

    fun oncreate(){

       try {

        var info = getPackageManager().getPackageInfo(

            "com.example.flutter_application_botonfb",                  //Insert your own package name.  

             134217728 );

             for (i in info.signatures) {

                var md = MessageDigest.getInstance("SHA");

                md.update(i.toByteArray());

                Log.d("KeyHash:", Base64.getEncoder().encodeToString(md.digest()));

             }

       }

       catch(Exception e) {

           

       }

    }*/



    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)

        printHashKey(this@MainActivity)

    }



 

    fun printHashKey(pContext: Context) {

        try {

            val info: PackageInfo = pContext.getPackageManager().getPackageInfo(pContext.getPackageName(), PackageManager.GET_SIGNATURES)

            for (signature in info.signatures) {

                val md = MessageDigest.getInstance("SHA")

                md.update(signature.toByteArray())

                val hashKey = String(Base64.encode(md.digest(), 0))

                Log.i("MainActivity", "printHashKey() Hash Key: $hashKey")

            }

        } catch (e: NoSuchAlgorithmException) {

            Log.e("MainActivity", "printHashKey()", e)

        } catch (e: Exception) {

            Log.e("MainActivity", "printHashKey()", e)

        }

    }

}
