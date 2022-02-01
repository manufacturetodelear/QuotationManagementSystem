<!doctype html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>Create Query Form</title>
        <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet'>
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <style>* {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box
            }

            body {
                font-family: "Poppins-Regular";
                font-size: 15px;
                color: #666;
                background-color: #6645eb;
                margin: 0
            }

            :focus {
                outline: none
            }

            textarea {
                resize: none
            }

            input,
            textarea,
            select,
            button {
                font-family: "Poppins-Regular";
                font-size: 15px;
                color: #666
            }

            ul {
                padding: 0;
                margin: 0;
                list-style: none
            }

            img {
                max-width: 100%;
                vertical-align: middle
            }

            .wrapper {
                max-width: 600px;
                height: 100vh;
                margin: auto;
                display: flex;
                align-items: center
            }

            .wrapper .image-holder {
                width: 51%
            }

            .wrapper form {
                width: 100%
            }

            .wizard>.steps .current-info,
            .wizard>.steps .number {
                display: none
            }

            #wizard {
                min-height: 570px;
                background: #fff;
                margin-right: 60px;
                padding: 107px 75px 65px;
                margin-top: 20px;
                margin-bottom: 20px
            }

            .steps {
                margin-bottom: 30px
            }

            .steps ul {
                display: flex;
                position: relative
            }

            .steps ul li {
                width: 25%;
                margin-right: 10px
            }

            .steps ul li a {
                display: inline-block;
                width: 100%;
                height: 7px;
                background: #e6e6e6;
                border-radius: 3.5px
            }

            .steps ul li.first a,
            .steps ul li.checked a {
                background: #6645eb;
                transition: all 0.5s ease
            }

            .steps ul:before {
                content: "Customer Details";
                font-size: 22px;
                font-family: "Poppins-SemiBold";
                color: #333;
                top: -38px;
                position: absolute
            }

            .steps ul.step-2:before {
                content: "Additional Info"
            }

            .steps ul.step-3:before {
                content: "Your Order"
            }

            .steps ul.step-4:before {
                content: "Billing Method"
            }

            h3 {
                font-family: "Poppins-SemiBold"
            }

            .form-row {
                margin-bottom: 24px
            }

            .form-row label {
                margin-bottom: 8px;
                display: block
            }

            .form-row.form-group {
                display: flex
            }

            .form-row.form-group .form-holder {
                width: 50%;
                margin-right: 21px
            }

            .form-row.form-group .form-holder:last-child {
                margin-right: 0
            }

            .form-holder {
                position: relative
            }

            .form-holder i {
                position: absolute;
                top: 11px;
                right: 19px;
                font-size: 17px;
                color: #999
            }

            .form-control {
                height: 42px;
                border: 1px solid #e6e6e6;
                background: none;
                width: 100%;
                padding: 0 18px
            }

            .form-control:focus {
                border-color: #f3d4b7
            }

            .form-control::-webkit-input-placeholder {
                color: #999;
                font-size: 13px
            }

            .form-control::-moz-placeholder {
                color: #999;
                font-size: 13px
            }

            .form-control:-ms-input-placeholder {
                color: #999;
                font-size: 13px
            }

            .form-control:-moz-placeholder {
                color: #999;
                font-size: 13px
            }

            textarea.form-control {
                padding-top: 11px;
                padding-bottom: 11px
            }

            .option {
                color: #999
            }

            .actions ul {
                display: flex;
                margin-top: 30px;
                justify-content: space-between
            }

            .actions ul.step-last {
                justify-content: flex-end
            }

            .actions ul.step-last li:first-child {
                display: none
            }

            .actions li a {
                padding: 0;
                border: none;
                display: inline-flex;
                height: 51px;
                width: 135px;
                align-items: center;
                background: #6200EA;
                cursor: pointer;
                color: #fff !important;
                position: relative;
                padding-left: 41px;
                text-decoration: none;
                -webkit-transform: perspective(1px) translateZ(0);
                transform: perspective(1px) translateZ(0);
                -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
                font-weight: 400
            }

            .actions li a:before {
                content: '\f178';
                position: absolute;
                top: 15px;
                right: 41px;
                color: #fff;
                font-family: "FontAwesome";
                -webkit-transform: translateZ(0);
                transform: translateZ(0)
            }

            .actions li a:hover {
                background: #6200eaba
            }

            .actions li a:hover:before {
                -webkit-animation-name: hvr-icon-wobble-horizontal;
                animation-name: hvr-icon-wobble-horizontal;
                -webkit-animation-duration: 1s;
                animation-duration: 1s;
                -webkit-animation-timing-function: ease-in-out;
                animation-timing-function: ease-in-out;
                -webkit-animation-iteration-count: 1;
                animation-iteration-count: 1
            }

            .actions li[aria-disabled="true"] a {
                display: none
            }

            .actions li:first-child a {
                background: #e6e6e6;
                padding-left: 48px
            }

            .actions li:first-child a:before {
                content: '\f177';
                left: 26px
            }

            .actions li:first-child a:hover {
                background: #ccc
            }

            .actions li:last-child a {
                padding-left: 29px;
                width: 167px;
                font-weight: 400
            }

            .actions li:last-child a:before {
                right: 30px
            }

            .checkbox {
                position: relative
            }

            .checkbox label {
                padding-left: 21px;
                cursor: pointer;
                color: #999
            }

            .checkbox input {
                position: absolute;
                opacity: 0;
                cursor: pointer
            }

            .checkbox input:checked~.checkmark:after {
                display: block
            }

            .checkmark {
                position: absolute;
                top: 50%;
                left: 0;
                transform: translateY(-50%);
                height: 12px;
                width: 13px;
                border-radius: 2px;
                background-color: #ebebeb;
                border: 1px solid #ccc;
                font-family: "Font Awesome";
                color: #000;
                font-size: 10px;
                font-weight: bolder
            }

            .checkmark:after {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                display: none;
                content: '\f178'
            }

            .checkbox-circle {
                margin-top: 41px;
                margin-bottom: 46px
            }

            .checkbox-circle label {
                cursor: pointer;
                padding-left: 26px;
                color: #999;
                display: block;
                margin-bottom: 15px;
                position: relative
            }

            .checkbox-circle label.active .tooltip {
                display: block
            }

            .checkbox-circle input {
                position: absolute;
                opacity: 0;
                cursor: pointer
            }

            .checkbox-circle input:checked~.checkmark:after {
                display: block
            }

            .checkbox-circle .checkmark {
                position: absolute;
                top: 11px;
                left: 0;
                height: 14px;
                width: 14px;
                border-radius: 50%;
                background: #ebebeb;
                border: 1px solid #cdcdcd
            }

            .checkbox-circle .checkmark:after {
                content: "";
                top: 6px;
                left: 6px;
                width: 6px;
                height: 6px;
                border-radius: 50%;
                background: #666666;
                position: absolute;
                display: none
            }

            .checkbox-circle .tooltip {
                padding: 9px 22px;
                background: #f2f2f2;
                line-height: 1.8;
                position: relative;
                margin-top: 16px;
                margin-bottom: 28px;
                display: none
            }

            .checkbox-circle .tooltip:before {
                content: "";
                border-bottom: 10px solid #f2f2f2;
                border-right: 9px solid transparent;
                border-left: 9px solid transparent;
                position: absolute;
                bottom: 100%
            }

            .product {
                margin-bottom: 33px
            }

            .item {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding-bottom: 30px;
                border-bottom: 1px solid #e6e6e6;
                margin-bottom: 30px
            }

            .item:last-child {
                margin-bottom: 0;
                padding-bottom: 0;
                border: none
            }

            .item .left {
                display: flex;
                align-items: center
            }

            .item .thumb {
                display: inline-flex;
                width: 100px;
                height: 90px;
                justify-content: center;
                align-items: center;
                border: 1px solid #f2f2f2
            }

            .item .purchase {
                display: inline-block;
                margin-left: 21px
            }

            .item .purchase h6 {
                font-family: "Poppins-Medium";
                font-size: 16px;
                margin-bottom: 4px;
                font-weight: 500
            }

            .item .purchase h6 a {
                color: #333
            }

            .item .price {
                font-size: 16px
            }

            .checkout {
                margin-bottom: 44px
            }

            .checkout span.heading {
                font-family: "Poppins-Medium";
                font-weight: 500;
                margin-right: 5px
            }

            .checkout .subtotal {
                margin-bottom: 18px
            }

            .checkout .shipping {
                margin-bottom: 19px
            }

            .checkout .shipping span.heading {
                margin-right: 4px
            }

            .checkout .total-price {
                font-family: "Muli-Bold";
                color: #333;
                font-weight: 700
            }

            @-webkit-keyframes hvr-icon-wobble-horizontal {
                16.65% {
                    -webkit-transform: translateX(6px);
                    transform: translateX(6px)
                }

                33.3% {
                    -webkit-transform: translateX(-5px);
                    transform: translateX(-5px)
                }

                49.95% {
                    -webkit-transform: translateX(4px);
                    transform: translateX(4px)
                }

                66.6% {
                    -webkit-transform: translateX(-2px);
                    transform: translateX(-2px)
                }

                83.25% {
                    -webkit-transform: translateX(1px);
                    transform: translateX(1px)
                }

                100% {
                    -webkit-transform: translateX(0);
                    transform: translateX(0)
                }
            }

            @keyframes hvr-icon-wobble-horizontal {
                16.65% {
                    -webkit-transform: translateX(6px);
                    transform: translateX(6px)
                }

                33.3% {
                    -webkit-transform: translateX(-5px);
                    transform: translateX(-5px)
                }

                49.95% {
                    -webkit-transform: translateX(4px);
                    transform: translateX(4px)
                }

                66.6% {
                    -webkit-transform: translateX(-2px);
                    transform: translateX(-2px)
                }

                83.25% {
                    -webkit-transform: translateX(1px);
                    transform: translateX(1px)
                }

                100% {
                    -webkit-transform: translateX(0);
                    transform: translateX(0)
                }
            }

            @media (max-width: 1500px) {
                .wrapper {
                    height: auto
                }
            }

            @media (max-width: 1199px) {
                .wrapper {
                    height: 100vh
                }

                #wizard {
                    margin-right: 40px;
                    min-height: 829px;
                    padding-left: 60px;
                    padding-right: 60px
                }
            }

            @media (max-width: 991px) {
                .wrapper {
                    justify-content: center
                }

                .wrapper .image-holder {
                    display: none
                }

                .wrapper form {
                    width: 60%
                }

                #wizard {
                    margin-right: 0;
                    padding-left: 40px;
                    padding-right: 40px
                }
            }

            @media (max-width: 767px) {
                .wrapper {
                    height: auto;
                    display: block
                }

                .wrapper .image-holder {
                    width: 100%;
                    display: block
                }

                .wrapper form {
                    width: 100%
                }

                #wizard {
                    min-height: unset;
                    padding: 70px 20px 40px
                }

                .form-row.form-group {
                    display: block
                }

                .form-row.form-group .form-holder {
                    width: 100%;
                    margin-right: 0;
                    margin-bottom: 24px
                }

                .item .purchase {
                    margin-left: 11px
                }
            }

            .card {
                border: 0;
                border-radius: 0px;
                margin-bottom: 30px;
                -webkit-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.03);
                box-shadow: 0 2px 3px rgba(0, 0, 0, 0.03);
                -webkit-transition: .5s;
                transition: .5s
            }

            .padding {
                padding: 3rem !important
            }

            h5.card-title {
                font-size: 15px
            }

            .fw-400 {
                font-weight: 400 !important
            }

            .card-title {
                font-family: Roboto, sans-serif;
                font-weight: 300;
                line-height: 1.5;
                margin-bottom: 0;
                padding: 15px 20px;
                border-bottom: 1px solid rgba(77, 82, 89, 0.07)
            }

            .card-body {
                -ms-flex: 1 1 auto;
                flex: 1 1 auto;
                padding: 1.25rem
            }

            .form-group {
                margin-bottom: 1rem
            }

            .form-control {
                border-color: #ebebeb;
                border-radius: 2px;
                color: #8b95a5;
                padding: 5px 12px;
                font-size: 14px;
                line-height: inherit;
                -webkit-transition: 0.2s linear;
                transition: 0.2s linear
            }

            .card-body>*:last-child {
                margin-bottom: 0
            }

            .btn-primary {
                background-color: #33cabb;
                border-color: #33cabb;
                color: #fff
            }

            .btn-bold {
                font-family: Roboto, sans-serif;
                text-transform: uppercase;
                font-weight: 500;
                font-size: 12px
            }

            .btn-primary:hover {
                background-color: #52d3c7;
                border-color: #52d3c7;
                color: #fff
            }

            .btn:hover {
                cursor: pointer
            }

            .form-control:focus {
                border-color: #6545eb;
                color: #4d5259;
                -webkit-box-shadow: 0 0 0 0.1rem rgba(51, 202, 187, 0);
                box-shadow: 0 0 0 0.1rem rgba(101, 69, 235, 0)
            }

            .custom-radio {
                cursor: pointer
            }

            .custom-control {
                display: -webkit-box;
                display: flex;
                min-width: 18px
            }

            .heading {
                color: #6645eb
            }

            .total {
                float: right;
                color: #6645eb
            }

            svg {
                width: 100px;
                display: block;
                margin: 40px auto 0
            }

            .path {
                stroke-dasharray: 1000;
                stroke-dashoffset: 0;

                &.circle {
                    -webkit-animation: dash .9s ease-in-out;
                    animation: dash .9s ease-in-out
                }

                &.line {
                    stroke-dashoffset: 1000;
                    -webkit-animation: dash .9s .35s ease-in-out forwards;
                    animation: dash .9s .35s ease-in-out forwards
                }

                &.check {
                    stroke-dashoffset: -100;
                    -webkit-animation: dash-check .9s .35s ease-in-out forwards;
                    animation: dash-check .9s .35s ease-in-out forwards
                }
            }

            p {
                text-align: center;
                margin: 20px 0 60px;
                font-size: 1.25em;

                &.success {
                    color: #73AF55
                }

                &.error {
                    color: #D06079
                }
            }

            @-webkit-keyframes dash {
                0% {
                    stroke-dashoffset: 1000
                }

                100% {
                    stroke-dashoffset: 0
                }
            }

            @keyframes dash {
                0% {
                    stroke-dashoffset: 1000
                }

                100% {
                    stroke-dashoffset: 0
                }
            }

            @-webkit-keyframes dash-check {
                0% {
                    stroke-dashoffset: -100
                }

                100% {
                    stroke-dashoffset: 900
                }
            }

            @keyframes dash-check {
                0% {
                    stroke-dashoffset: -100
                }

                100% {
                    stroke-dashoffset: 900
                }
            }</style>
    </head>
    <body oncontextmenu='return false' class='snippet-body'>
        <!-- JQUERY STEP -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-steps/1.1.0/jquery.steps.min.js"></script>
        <div class="wrapper">
            <form action="">
                <div id="wizard">
                    <!-- SECTION 1 -->
                    <h4></h4>
                    <section>
                        <!--                <div class="form-row"> <input type="text" class="form-control" placeholder="Name"> </div>
                                        <div class="form-row"> <input type="text" class="form-control" placeholder="Email"> </div>
                                        <div class="form-row"> <input type="text" class="form-control" placeholder="Phone number"> </div>
                                        <div class="form-row"> <input type="text" class="form-control" placeholder="Street address"> </div>-->
                        <select class="form-select" aria-label="Default select example">
                            <option selected>Select Category</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                        <select class="form-select" aria-label="Default select example">
                            <option selected>Select Company Name</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </section> <!-- SECTION 2 -->
                    <h4></h4>
                    <section>
                        <div class="form-row"> <input type="text" class="form-control" placeholder="country"> </div>
                        <div class="form-row"> <input type="text" class="form-control" placeholder="zip code"> </div>
                        <div class="form-row" style="margin-bottom: 18px"> <textarea name="" id="" class="form-control" placeholder="Any order note about delivery or special offer" style="height: 108px"></textarea> </div>
                    </section> <!-- SECTION 3 -->
                    <h4></h4>
                    <section>
                        <div class="product">
                            <div class="item">
                                <div class="left"> <a href="#" class="thumb"> <img src="https://i.imgur.com/yYu3Hbl.jpg" alt=""> </a>
                                    <div class="purchase">
                                        <h6> <a href="#">Macbook Air Laptop</a> </h6> <span>x1</span>
                                    </div>
                                </div> <span class="price">$290</span>
                            </div>
                            <div class="item">
                                <div class="left"> <a href="#" class="thumb"> <img src="https://www.businessinsider.in/thumb/msid-70101317,width-600,resizemode-4,imgsize-87580/tech/ways-to-increase-mobile-phone-speed/13d0e0722dbca5aa91e16a8ae2a744e5.jpg" alt=""> </a>
                                    <div class="purchase">
                                        <h6> <a href="#">Mobile Phone Mi</a> </h6> <span>x1</span>
                                    </div>
                                </div> <span class="price">$124</span>
                            </div>
                        </div>
                        <div class="checkout">
                            <div class="subtotal"> <span class="heading">Subtotal</span> <span class="total">$364</span> </div>
                        </div>
                    </section> <!-- SECTION 4 -->
                    <h4></h4>
                    <section> <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 130.2 130.2">
                        <circle class="path circle" fill="none" stroke="#73AF55" stroke-width="6" stroke-miterlimit="10" cx="65.1" cy="65.1" r="62.1" />
                        <polyline class="path check" fill="none" stroke="#73AF55" stroke-width="6" stroke-linecap="round" stroke-miterlimit="10" points="100.2,40.2 51.5,88.8 29.8,67.5 " /> </svg>
                        <p class="success">Order placed successfully. Your order will be dispacted soon. meanwhile you can track your order in my order section.</p>
                    </section>
                </div>
            </form>
        </div>
        <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript' src=''></script>
        <script type='text/javascript' src=''></script>
        <script type='text/Javascript'>$(function(){
            $("#wizard").steps({
            headerTag: "h4",
            bodyTag: "section",
            transitionEffect: "fade",
            enableAllSteps: true,
            transitionEffectSpeed: 500,
            onStepChanging: function (event, currentIndex, newIndex) {
            if ( newIndex === 1 ) {
            $('.steps ul').addClass('step-2');
            } else {
            $('.steps ul').removeClass('step-2');
            }
            if ( newIndex === 2 ) {
            $('.steps ul').addClass('step-3');
            } else {
            $('.steps ul').removeClass('step-3');
            }

            if ( newIndex === 3 ) {
            $('.steps ul').addClass('step-4');
            $('.actions ul').addClass('step-last');
            } else {
            $('.steps ul').removeClass('step-4');
            $('.actions ul').removeClass('step-last');
            }
            return true;
            },
            labels: {
            finish: "Order again",
            next: "Next",
            previous: "Previous"
            }
            });
            // Custom Steps Jquery Steps
            $('.wizard > .steps li a').click(function(){
            $(this).parent().addClass('checked');
            $(this).parent().prevAll().addClass('checked');
            $(this).parent().nextAll().removeClass('checked');
            });
            // Custom Button Jquery Steps
            $('.forward').click(function(){
            $("#wizard").steps('next');
            })
            $('.backward').click(function(){
            $("#wizard").steps('previous');
            })
            // Checkbox
            $('.checkbox-circle label').click(function(){
            $('.checkbox-circle label').removeClass('active');
            $(this).addClass('active');
            })
            })</script>
    </body>
</html>