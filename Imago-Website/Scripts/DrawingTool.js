
var size = parseInt(("pen-size").value);
var color = "black";
//var username = '<%= Session["username"].Value %>';

//alert(username);

//function getCookie(cname) {
//    var name = cname + "=";
//    var ca = document.cookie.split(';');
//    for (var i = 0; i < ca.length; i++) {
//        var c = ca[i];
//        while (c.charAt(0) == ' ') c = c.substring(1);
//        if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
//    }
//    return "";
//}



const canvas = document.getElementById('c')
const { x: canvasX, y: canvasY } = canvas.getBoundingClientRect()
const ctx = canvas.getContext('2d')


function changeColor(e) {
    color = this.value;
    ctx.strokeStyle = color;
    document.cookie = 'colour=' + color;

}

function changeSize(e) {
    size = parseInt(this.value);
    ctx.lineWidth = size;
    document.cookie = 'size=' + size;

}

function save() {
    //var canvas = document.getElementById("c");
    //var img = canvas.toDataURL("image/png");
    //document.write('<img src="' + img + '"/>');
/*    context.drawImage(image, 0, 0, canvas2.width, canvas2.height);*/
    var jpegUrl = canvas.toDataURL("image/jpg");

    const link = document.createElement("a");
    document.body.appendChild(link);

    link.setAttribute("href", jpegUrl);
    link.setAttribute("download", "image");
    link.click();
    document.body.removeChild(link);

}

document.getElementById("pen-color").onchange = changeColor;
document.getElementById("pen-size").onchange = changeSize;
ctx.strokeStyle = color
ctx.lineWidth = size

/* Controls */
const clearBtn = document.getElementById('reset-canvas')
clearBtn.addEventListener('click', function () {
    ctx.clearRect(0, 0, canvas.width, canvas.height)
})

const mode = document.getElementById('mode')

/* Main draw function */
let prevMousePosition
function addStroke({ pageX, pageY }) {
    const x = pageX - canvasX
    const y = pageY - canvasY

    draw[mode.value](ctx, ...prevMousePosition, x, y)

    prevMousePosition = [x, y]
}

/* Draw modes */
const draw = {
   

    /**
     * Simply draw a line from the previous
     * position to the new position
     */
    boring(ctx, x0, y0, x1, y1) {
        ctx.beginPath()
        ctx.moveTo(x0, y0)
        ctx.lineTo(x1, y1)
        ctx.stroke()
    },

    /**
     * Draw a semi-circle arc from the
     * previous point to the new point
     */
    squiggles(ctx, x0, y0, x1, y1) {
        arc(ctx, [x0, y0], [x1, y1])
    },

    /**
     * Draw a semi-circle halfway to the
     * new point, then a flipped semi-
     * circle the rest of the way
     */
    wobbles(ctx, x0, y0, x1, y1) {
        const half = [x0 + (x1 - x0) / 2, y0 + (y1 - y0) / 2]
        arc(ctx, [x0, y0], half)
        arc(ctx, half, [x1, y1], true)
    },

    /**
     * Draw a semi-circle halfway to the
     * new point, then a flipped semi-
     * circle the rest of the way
     * /
    zigzags(ctx, x0, y0, x1, y1) {
      const half = [x0 + (x1-x0)/2, y0 + (y1-y0)/2]
      arc(ctx, [x0, y0], half)
      arc(ctx, half, [x1, y1], true)
    }, //*/

    /**
     * Draw a small arc backward, then a
     * large arc forward to create
     * a swirl effect
     */
    swirls(ctx, x0, y0, x1, y1) {
        const dx = x1 - x0, dy = y1 - y0
        const part = [x0 - dx * .25, y0 - dy * .25]
        arc(ctx, [x0, y0], part)
        arc(ctx, part, [x1, y1])
    },

    /**
     * Draw a very large arc backward, then
     * arc forward to the end
     */
    superSwirls(ctx, x0, y0, x1, y1) {
        const dx = x1 - x0,
            dy = y1 - y0
        const part = [x0 - dx * 2, y0 - dy * 2]
        arc(ctx, [x0, y0], part)
        arc(ctx, part, [x1, y1])
    }
}

for (const modeName in draw) {
    const option = document.createElement('option')
    option.textContent = modeName
    mode.append(option)
}

/* Helpers */

/**
 * Draw a semi-circle arc from start to end
 * @param {Number[]} start      The start position expressed as [x, y]
 * @param {Number[]} end        The end position expressed as [x, y]
 * @param {Boolean} flip=false  If true, flip the arc over its diameter
 */
function arc(ctx, start, end, flip = false) {
    diff = [end[0] - start[0], end[1] - start[1]]
    const theta = -1 * (Math.atan2(...diff) - Math.PI / 2)

    ctx.beginPath()
    ctx.moveTo(...start)
    ctx.arc(start[0] + diff[0] / 2, start[1] + diff[1] / 2, Math.sqrt(diff[0] ** 2 + diff[1] ** 2) / 2, theta + Math.PI, theta, flip)
    ctx.stroke()
}

function squishedArc(ctx, start, end, flip) {
    const diff = [end[0] - start[0], end[1] - start[1]]
    const bisect = [diff[1] * (flip ? -1 : 1), diff[0]]
    const squishFactor = Math.min(Math.sqrt(diff[0] ** 2 + diff[1] ** 2) / 100, 0.1);



    ctx.beginPath()
    ctx.moveTo(...start)
    ctx.arc(start[0] + diff[0] / 2, start[1] + diff[1] / 2, Math.sqrt(diff[0] ** 2 + diff[1] ** 2) / 2, theta + Math.PI, theta, flip)
    ctx.ellipse(start[0] + diff[0] / 2, start[1] + diff[1] / 2, diff[0], radiusY, rotation, startAngle, endAngle, anticlockwise);
    ctx.stroke()
}

/* * * * * * * * * * * * * * * *
* Canvas pointer events
*/

// choose the best event type
const [down, up, move, out] = (
    'onpointermove' in document.body ?
        ['pointerdown', 'pointerup', 'pointermove', 'pointerout'] :
        'ontouchmove' in document.body ?
            ['touchstart', 'touchend', 'touchmove', 'touchend'] :
            // else
            ['mousedown', 'mouseup', 'mousemove', 'mouseout']
)
//alert([down, up, move, out])

canvas.addEventListener(down, drawMode_ACTIVATE)

function drawMode_ACTIVATE({ pageX, pageY }) {
    const x = pageX - canvasX
    const y = pageY - canvasY

    prevMousePosition = [x, y]

    canvas.addEventListener(move, addStroke)

    window.addEventListener(up, drawMode_DISENGAGE)
    window.addEventListener(out, drawMode_DISENGAGE)

    canvas.addEventListener(out, stopPropagation)
    document.body.addEventListener(out, stopPropagation)
}
function drawMode_DISENGAGE() {
    canvas.removeEventListener(move, addStroke)

    document.removeEventListener(up, drawMode_DISENGAGE)
    document.removeEventListener(out, drawMode_DISENGAGE)

    canvas.removeEventListener(out, stopPropagation)
    document.body.removeEventListener(out, stopPropagation)
}
function stopPropagation(e) {
    e.stopPropagation()
}
