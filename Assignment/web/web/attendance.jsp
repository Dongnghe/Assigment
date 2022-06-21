<%-- 
    Document   : attendance
    Created on : Jun 20, 2022, 11:25:54 PM
    Author     : Giang Dong PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/attendance.css">
    <title>Document</title>
</head>

<body>
    <div class="banner">
        <h1>Single Activity Attendance</h1>
    </div>
    <Div class="info-banner">   
        <p>Attendance for <span>PRJ301</span> with <span>lecturer at slot 1 on Monday 13/06/2022, Summer 2022 in room
                DE-C201</span></p>
    </Div>
    <div>
        <form form method="post" action="">
            <table>
                <tr>
                    <th>INDEX</th>
                    <th>GROUP</th>
                    <th>CODE</th>
                    <th>NAME</th>
                    <th>IMAGE</th>
                    <th colspan="2">ATTENDANCE</th>
                    <th>COMMENT</th>
                    <th>TAKER</th>
                    <TH>RECORD TIME</TH>
                </tr>
                <tr>
                    <td>1</td>
                    <td><a href="/Assignment/Group">SE1631</a></td>
                    <td>HE163818</td>
                    <td>Nguyễn Giang Đông</td>
                    <td><img class="studentImg" src="../img/HE163818.png" alt="DongNGHE163818"></td>
                    <td>
                        <label for="attended">Attended</label>
                        <input type="radio" name="1" id="Attended" value="Attended" checked>
                    </td>
                    <td>
                        <label for="absent">Absent</label>
                        <input type="radio" name="1" id="Absent" value="Absent">
                    </td>
                    <td></td>
                    <td>sonnt5</td>
                    <td>13/06/2022</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><a href="/Assignment/Group">SE1631</a></td>
                    <td>HE163818</td>
                    <td>Nguyễn Giang Đông</td>
                    <td><img class="studentImg" src="HE163818.png" alt="DongNGHE163818"></td>
                    <td>
                        <label for="attended">Attended</label>
                        <input type="radio" name="2" id="Attended" value="Attended" checked>
                    </td>
                    <td>
                        <label for="absent">Absent</label>
                        <input type="radio" name="2" id="Absent" value="Absent">
                    </td>
                    <td></td>
                    <td>sonnt5</td>
                    <td>13/06/2022</td>
                </tr>
            </table>

        </form>

    </div>

</body>

</html>