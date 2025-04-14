<?php
    $conn = new mysqli("localhost","root","","wedkowanie");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wędkowanie</title>
        <link rel="stylesheet" href="styl_1.css">
    </head>
    <body>
        <header>
            <h1>Portal dla wędkarzy</h1>
        </header>

        <div id="lewy1">
            <h3>Ryby zamieszkujące rzeki</h3>
            <ol>
                <?php
                    // Skrypt #1
                    $sql = "SELECT ryby.nazwa, lowisko.akwen, lowisko.wojewodztwo FROM ryby INNER JOIN lowisko ON ryby.id = lowisko.Ryby_id WHERE lowisko.rodzaj = 3;";
                    $result = $conn->query($sql);

                    while($row = $result -> fetch_array()) {
                        echo "<li>".$row[0]." pływa w rzece ".$row[1].", ".$row[2]."</li>";
                    }
                ?>
            </ol>
        </div>

        <div id="prawy">
            <img src="ryba1.jpg" alt="Sum"><br>
            <a href="kwerendy.txt">Pobierz kwerendy</a>
        </div>

        <div id="lewy2">
            <h3>Ryby drapieżne naszych wód</h3>
            <table>
                <tr>
                    <th>L.P.</th>
                    <th>Gatunek</th>
                    <th>Występowanie</th>
                </tr>
                <?php
                    // Skrypt #2
                    $sql = "SELECT id, nazwa, wystepowanie FROM ryby WHERE styl_zycia = 1;";
                    $result = $conn->query($sql);

                    while($row = $result -> fetch_array()) {
                        echo "<tr>";
                            echo "<td>".$row[0]."</td>";
                            echo "<td>".$row[1]."</td>";
                            echo "<td>".$row[2]."</td>";
                        echo "</tr>";
                    }
                ?>
            </table>
        </div>

        <footer>
        <p>Stronę wykonał: <a href="https://useme.com/pl/roles/contractor/odyn404error,461613/" target="_blank" style="text-decoration: none;color: unset;">Odyn404</a></p>
        </footer>
    </body>
</html>

<?php
    $conn -> close();
?>