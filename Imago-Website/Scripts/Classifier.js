
const image_input = document.querySelector("#file");
const display = document.querySelector("#displayImage");
const mytable = document.querySelector("#table");
var classifier, label, prob;
var uploaded_image = "";
let headers = ['Label', 'Probability'];


mytable.style.display = "none";

preLoad();


function preLoad() {
    classifier = ml5.imageClassifier('MobileNet', modelLoaded);
}
function modelLoaded() {
    console.log('Model Loaded!');
}

function detectImage() {
    console.log("i am here ")
    var reader = new FileReader();
    reader.addEventListener("load", () => {
        var output = document.getElementById('display_image');
        output.src = reader.result;
        classifier.classify(document.getElementById('display_image'), gotResults);
    });
    reader.readAsDataURL(event.target.files[0]);
}

// result callback function
function gotResults(err, results) {

    
    mytable.style.display = "block";
    let table = document.createElement('table');
    let headerRow = document.createElement('tr');
    let output = results;

    console.log(output);
    headers.forEach(headerText => {
        let header = document.createElement('th');
        let textNode = document.createTextNode(headerText);
        header.appendChild(textNode);
        headerRow.appendChild(header);
    });

    table.appendChild(headerRow);



    output.forEach(result => {
        let row = document.createElement('tr');

        Object.values(result).forEach(text => {
            let cell = document.createElement('td');
            let textNode = document.createTextNode(text);
            cell.appendChild(textNode);
            row.appendChild(cell);
        });
        table.appendChild(row);
    });

    var e = document.querySelector("table");
    var ch = e.lastElementChild();
    mytable.parentElement.removeChild(ch);
    mytable.appendChild(table);
}


//image_input.addEventListener("change", function () {

///*    display.src = "";*/

//    const reader = new FileReader();
//    reader.addEventListener("load", () => {
//        uploaded_image = reader.result;
//        display.style.backgroundImage = `url(${uploaded_image})`;

//    });

//    reader.readAsDataURL(this.files[0]);

//    classifier = ml5.imageClassifier("MobileNet", modelReady);
//})

//function modelReady() {

//    console.log(uploaded_image);
//    classifier.predict(uploaded_image, gotResults);
//}


