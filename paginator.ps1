cls
$dataSet = get-command | select name,commandtype,source | 
    ConvertTo-html -cssuri css.css -PreContent "<div id='log'>" -PostContent "
    <table id='buttonTable'>
        <tr>
            <td><button onclick='FirstPage();'>First</button></td>
            <td><button onclick='PrevPage();'>Prev</button></td>
            <td><button onclick='NextPage();'>Next</button></td>
            <td><button onclick='LastPage();'>Last</button></td>
        </tr>
    </table>
    </div>
    
    <script src='JAVA.js'></script>"
$dataSet | out-file log.html -Encoding ascii
start log.html
