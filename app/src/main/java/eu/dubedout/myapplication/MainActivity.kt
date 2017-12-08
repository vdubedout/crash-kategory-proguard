package eu.dubedout.myapplication

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import kategory.Either
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val result = Either.Left(true)

        activity_main_content.text = if (result is Either.Left) "left:"+result.a.toString() else "Right"
    }
}
