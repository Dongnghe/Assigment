

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/timetable.css">
    <title>View Schedule</title>
</head>

<body>
    <div class="search-container">       
        <form class="lecture-search" action="">
            Lecture: 
            <input type="text" placeholder="sonnt5" name="search">
            <button type="submit">Submit</button>
        </form>
    </div>
s
    <div>
        <Table>
            <tr>
                <td rowspan="2">
                    Year
                    <select name="year" id="year">
                        <option value="2022">2022</option>
                    </select> <br>
                    Week
                    <select name="week" id="week">
                        <option value="1306">13/06 to 19/06</option>
                    </select>
                </td>
                <td>MON</td>
                <td>TUE</td>
                <td>WED</td>
                <td>THU</td>
                <td>FRI</td>
                <td>SAT</td>
                <td>SUN</td>
            </tr>
            <tr>
                <td>13/06</td>
                <td>14/06</td>
                <td>15/06</td>
                <td>16/06</td>
                <td>17/06</td>
                <td>18/06</td>
                <td>19/06</td>
            </tr>
            <tr>
                <td>Slot 1</td>
                <td>
                    <a href="/Assignment/Attendance">PRJ301</a>
                    <br>
                    at DE-C201 
                    <br>
                    <span class="attended">Attended</span></div>                   
                    <li>7:30 - 9:00</li>
                </td>
                <td>
                    <a href="/Assignment/Attendance">PRJ301</a><br>
                    at DE-C201
                    <br>
                    <span class="attended">Attended</span></div>                   
                    <li>7:30 - 9:00</li>
                </td>
                <td>
                    <a href="infomation.html">PRJ301</a><br>
                    at DE-C201
                    <br>
                    <span class="notyet">Not yet</span>                   
                    <li>7:30 - 9:00</li>
                </td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>Slot 2</td>
                <td>-</td>
                <td>
                    <a href="/Assignment/Attendance">PRJ301</a><br>
                    at DE-C201
                    <br>
                    <span class="notyet">Not yet</span>                  
                    <li>9:10 - 10:40</li>
                </td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>Slot 3</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>Slot 4</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>Slot 5</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>Slot 6</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>Slot 7</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>Slot 8</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
        </Table>
    </div>
</body>

</html>
