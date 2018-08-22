/**
 * IMPORTANT: Make sure you are using the correct package name.
 * This example uses the package name:
 * package com.example.android.justjava
 * If you get an error when copying this code into Android studio, update it to match teh package name found
 * in the project's AndroidManifest.xml file.
 **/

package com.example.android.justjavaapp;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;

import com.example.android.justjavaapp.R;

import java.text.NumberFormat;

/**
 * This app displays an order form to order coffee.
 */
public class MainActivity extends AppCompatActivity {

    int quantity = 2;
    boolean isWhippedCream = false;
    boolean isChocolate = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onCheckboxClicked(View view) {
        // Is the view now checked?
        boolean checked = ((CheckBox) view).isChecked();

        // Check which checkbox was clicked
        switch(view.getId()) {
            case R.id.checkbox_whipped_cream:
                if (checked)
                {
                    isWhippedCream = true;
                }
                else
                {
                    isWhippedCream = false;
                }
                break;
            case R.id.checkbox_chocolate:
                if (checked)
                {
                    isChocolate = true;
                }
                else
                {
                    isChocolate = false;
                }
                break;
        }
    }

    /**
     * This method is called when the order button is clicked.
     */
    public void submitOrder(View view) {
        createOrderSummary(quantity);
    }

    private void createOrderSummary(int numberOrder) {
        int price = calculatePrice(numberOrder);
        String orderMessage = "";

        EditText etname = (EditText) findViewById(R.id.edit_text_name);
        String name = etname.getText().toString();

        orderMessage = "Name: " + name;

        if(isWhippedCream == true)
        {
            orderMessage = orderMessage + "\nAdd Whipped Cream: Yes";
        }
        else if(isWhippedCream == false)
        {
            orderMessage = orderMessage + "\nAdd Whipped Cream: No";
        }

        if(isChocolate == true)
        {
            orderMessage = orderMessage + "\nAdd Chocolate: Yes";
        }
        else if(isChocolate == false)
        {
            orderMessage = orderMessage + "\nAdd Chocolate: No";
        }

        orderMessage = orderMessage + "\nQuantity: " + numberOrder;
        orderMessage = orderMessage + "\nTotal: $" + price;
        orderMessage = orderMessage + "\nThank you!";
        displayOrderSummaryMessage(orderMessage);
    }

    /**
     * Calculates the price of the order.
     *
     */
    private int calculatePrice(int quantity) {
        return (quantity * 5);
    }

    public void increment(View view) {
        quantity += 1;
        displayQuantity(quantity);
    }

    public void decrement(View view) {
        quantity -= 1;
        displayQuantity(quantity);
    }

    /**
     * This method displays the given quantity value on the screen.
     */
    private void displayQuantity(int number) {
        TextView quantityTextView = (TextView) findViewById(R.id.quantity_text_view);
        quantityTextView.setText("" + number);
    }

    /**
     * This method displays the given text on the screen.
     */
    private void displayOrderSummaryMessage(String message) {
        TextView orderSummaryTextView = (TextView) findViewById(R.id.order_summary_text_view);
        orderSummaryTextView.setText(message);
    }
}