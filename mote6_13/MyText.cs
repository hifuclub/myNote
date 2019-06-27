using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Net;
using UnityEngine;
using UnityEngine.UI;
using XLua;

public class MyText : MonoBehaviour
{
    [Hotfix]
    Text myTtext;
    // Start is called before the first frame update
    void Start()
    {
        load();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void load() {
        LuaEnv luaEnv = new LuaEnv();

        luaEnv.AddLoader(myLoader);

        Debug.Log("start");
        luaEnv.DoString("require 'byfile'");
        string a = luaEnv.Global.Get<string>("text");
        luaEnv.Dispose();
        myTtext = this.GetComponent<Text>();
        myTtext.text = a;
    }
    private byte[] myLoader( ref string url)
    {
        string url2 = "http://tlmc.top:8090/ipget/07/code.lua.txt";
        //StartCoroutine(IECode(url2));
        WebRequest request = WebRequest.Create(url2);
        // If required by the server, set the credentials.
        request.Credentials = CredentialCache.DefaultCredentials;
        // Get the response.
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        // Display the status.
        //Console.WriteLine(response.StatusDescription);
        // Get the stream containing content returned by the server.
        Stream dataStream = response.GetResponseStream();
        // Open the stream using a StreamReader for easy access.
        StreamReader reader = new StreamReader(dataStream);
        // Read the content.
        string responseFromServer = reader.ReadToEnd();
        byte[] code = System.Text.Encoding.UTF8.GetBytes(responseFromServer);

        Debug.Log(code);
        return code;
    }


    
}
