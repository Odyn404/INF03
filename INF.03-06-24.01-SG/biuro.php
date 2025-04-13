<?php
    $conn = new mysqli(hostname: "localhost",username: "root",password: "",database: "podroze");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Poznaj Europę</title>
        <link rel="stylesheet" href="styl9.css">
    </head>
    <body>
        <header>
            <h1>BIURO PODRÓŻY</h1>
        </header>

        <div id="lewy">
            <h2>Promocje</h2>
            <table>
                <tr>
                    <td>Warszawa</td>
                    <td>od 600 zł</td>
                </tr>
                <tr>
                    <td>Wenecja</td>
                    <td>od 1200 zł</td>
                </tr>
                <tr>
                    <td>Paryż</td>
                    <td>od 1200 zł</td>
                </tr>
            </table>
        </div>

        <div id="srodkowy">
            <h2>W tym roku jedziemy do...</h2>
            <?php
                // Skrypt #1
                $sql = "SELECT nazwaPliku, podpis FROM zdjecia ORDER BY podpis;";
                $result = $conn->query(query: $sql);
                while($row = $result -> fetch_array()) {
                    echo "<img src='$row[0]' alt='$row[1]' title='$row[1]'>";
                }
            ?>
        </div>

        <div id="prawy">
            <h2>Kontakt</h2>
            <a href="mailto:biuro@wycieczki.pl">napisz do nas</a>
            <p>telefon: 444555666</p>
        </div>

        <main>
            <h3>W poprzednich latach byliśmy...</h3>
            <ol>
                <?php
                    // Skrypt #2
                    $sql = "SELECT cel, dataWyjazdu FROM wycieczki WHERE dostepna = FALSE;";
                    $result = $conn->query(query: $sql);
                    while($row = $result -> fetch_array()) {
                        echo "<li>Dnia $row[1] pojechaliśmy do $row[0]</li>";
                    }
                ?>
            </ol>
        </main>

        <footer>
            <p>Stronę wykonał: <a href="https://github.com/Odyn404" target="_blank" style="text-decoration: none;color: unset;">Odyn404</a></p>
        </footer>
    </body>
</html>

<?php
    $conn -> close();
?>