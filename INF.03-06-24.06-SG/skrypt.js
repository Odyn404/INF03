function showFormBlock(currentId, nextId) {
    document.getElementById(currentId).classList.remove('active');
    document.getElementById(nextId).classList.add('active');
}

document.getElementById('next1').addEventListener('click', function() {
    const imie = document.getElementById('imie').value;
    const nazwisko = document.getElementById('nazwisko').value;

    if (imie && nazwisko) {
        showFormBlock('form1', 'form2');
    }
    else {
        alert('Proszę wypełnić wszystkie pola');
    }
});

document.getElementById('next2').addEventListener('click', function() {
    const email = document.getElementById('email').value;
    const telefon = document.getElementById('telefon').value;

    if (email && telefon) {
        showFormBlock('form2', 'form3');
    }
    else {
        alert('Proszę wypełnić wszystkie pola');
    }
});

document.getElementById('submit').addEventListener('click', function() {
    const haslo1 = document.getElementById('haslo1').value;
    const haslo2 = document.getElementById('haslo2').value;
    const imie = document.getElementById('imie').value;
    const nazwisko = document.getElementById('nazwisko').value;

    if (haslo1 === haslo2) {
        console.log(`Witaj ${imie} ${nazwisko}`);
        alert('Formularz zakończony');
    }
    else {
        alert('Podane hasła różnią się');
    }
});
