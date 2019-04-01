<%@include file="../header.html" %>
<body>	
        
    <!-- openable navbar -->
    <header>
        <div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
            <button class="w3-bar-item w3-button w3-large"
            onclick="w3_close()">Close &times;</button>
            <a href="#" class="w3-bar-item w3-button">Link 1</a>
            <a href="#" class="w3-bar-item w3-button">Link 2</a>
            <a href="#" class="w3-bar-item w3-button">Link 3</a>
        </div>
    </header>
    <main id="main">
        <div class="my-new-header">
            <button id="openNav" class="w3-button w3-xlarge my-hamburger-btn" onclick="w3_open()">&#9776;</button>
            <span>JCMS</span>
        </div>
        
		<% int jobcardNumber = Integer.parseInt(request.getParameter("id")); %>
        <div class="container-95">
        <form action="../SaveFinalTest" method="POST">
            <div class="my-form" id="verify-static-details">
                <div class="my-form-heading">
                    <h5><center>Name</center></h5>
                </div>
                 <input type="hidden" name="jobcardnumber" value=<%=jobcardNumber %> />
        <table class="table table-striped table-bordered">
                               
                                 <tbody>
                                        <tr>
                                            <th>Section</th>
                                            <th>SI no.</th>
                                            <th>CHECK Items</th>
                                            <th>OK</th>
                                            <th>NOT OK</th>
                                        <tr>
                                        <tr>
                                            <td rowspan="7">Exterior</td>
                                            <td>A</td>
                                            <td> Hood & Tallgate/Trunk Lid Cable Operation</td>
                                            <td>
                                                <input type="radio" name="ea" id="ex-a" 
                                                class="my-checkbox" value="1" checked >
                                                <label for="ex-a" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ea" id="ex-an" 
                                                class="my-checkbox" value="0">
                                                <label for="ex-an" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>B</td>
                                            <td>All Door- Operation & Noise</td>
                                            <td>
                                                <input type="radio" name="eb" id="ex-b" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="ex-b" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="eb" id="ex-bn" 
                                                class="my-checkbox" value="0">
                                                <label for="ex-bn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>C</td>
                                            <td>Type Pressure</td>
                                            <td>
                                                <input type="radio" name="ec" id="ex-c" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="ex-c" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ec" id="ex-cn" 
                                                class="my-checkbox" value="0">
                                                <label for="ex-cn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>D</td>
                                            <td>Wheel nuts tightening check</td>
                                            <td>
                                                <input type="radio" name="ed" id="ex-d" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="ex-d" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ed" id="ex-dn" 
                                                class="my-checkbox" value="0">
                                                <label for="ex-dn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>E</td>
                                            <td>Head light focusing</td>
                                            <td>
                                                <input type="radio" name="ee" id="ex-e" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="ex-e" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ee" id="ex-en" 
                                                class="my-checkbox" value="0">
                                                <label for="ex-en" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>F</td>
                                            <td>Head light focusing</td>
                                            <td>
                                                <input type="radio" name="ef" id="ex-f" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="ex-f" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ef" id="ex-fn" 
                                                class="my-checkbox" value="0">
                                                <label for="ex-fn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>G</td>
                                            <td>Head light focusing</td>
                                            <td>
                                                <input type="radio" name="eg" id="ex-g" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="ex-g" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="eg" id="ex-gn" 
                                                class="my-checkbox" value="0">
                                                <label for="ex-gn" class="checklist-label"></label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td rowspan="15">Interior</td>
                                            <td>A</td>
                                            <td>Break pedal operation & free play</td>
                                            <td>
                                                <input type="radio" name="ia" id="in-a" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-a" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ia" id="in-an" 
                                                class="my-checkbox" value="0">
                                                <label for="in-an" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>B</td>
                                            <td>Cutch pedal opertaion & free play</td>
                                            <td>
                                                <input type="radio" name="ib" id="in-b" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-b" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ib" id="in-an" 
                                                class="my-checkbox" value="0">
                                                <label for="in-an" class="checklist-label"></label>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td>C</td>
                                            <td>Accelerator pedal operation & noise</td>
                                            <td>
                                                <input type="radio" name="ic" id="in-c" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-c" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ic" id="in-cn" 
                                                class="my-checkbox" value="0">
                                                <label for="in-cn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>D</td>
                                            <td>Parking brake operaion & noise</td>
                                            <td>
                                                <input type="radio" name="id" id="in-d" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-d" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="id" id="in-dn" 
                                                class="my-checkbox" value="0">
                                                <label for="in-dn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>E</td>
                                            <td>Door lock & window glass operation</td>
                                            <td>
                                                <input type="radio" name="ie" id="in-e" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-e" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ie" id="in-en" 
                                                class="my-checkbox" value="0">
                                                <label for="in-en" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>F</td>
                                            <td>AC Controls and duct operation</td>
                                            <td>
                                                <input type="radio" name="if" id="in-f" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-f" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="if" id="in-fn" 
                                                class="my-checkbox" value="0">
                                                <label for="in-fn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>G</td>
                                            <td>Instrument custer & combi s/w</td>
                                            <td>
                                                <input type="radio" name="ig" id="in-g" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-g" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ig" id="in-gn" 
                                                class="my-checkbox" value="0">
                                                <label for="in-gn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>H</td>
                                            <td>Opeartion of interior lights & horns</td>
                                            <td>
                                                <input type="radio" name="ih" id="in-h" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-h" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ih" id="ih-an" 
                                                class="my-checkbox" value="0">
                                                <label for="in-hn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>I</td>
                                            <td>Operation of defogger (if installed)</td>
                                            <td>
                                                <input type="radio" name="ii" id="in-i" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-i" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ii" id="in-in" 
                                                class="my-checkbox" value="0">
                                                <label for="in-in" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>J</td>
                                            <td>FR/RR Wiper & W/S Washer operation</td>
                                            <td>
                                                <input type="radio" name="ij" id="in-j" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-j" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ij" id="in-jn" 
                                                class="my-checkbox" value="0">
                                                <label for="in-jn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>K</td>
                                            <td>Operation of electric OVRM & power window</td>
                                            <td>
                                                <input type="radio" name="ik" id="in-k" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-k" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ik" id="in-kn" 
                                                class="my-checkbox" value="0">
                                                <label for="in-kn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>L</td>
                                            <td>Operation of central locking</td>
                                            <td>
                                                <input type="radio" name="il" id="in-l" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-l" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="il" id="in-ln" 
                                                class="my-checkbox" value="0">
                                                <label for="in-ln" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>M</td>
                                            <td>Operation of ABS/TCS lights</td>
                                            <td>
                                                <input type="radio" name="im" id="in-m" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-m" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="im" id="in-mn" 
                                                class="my-checkbox" value="0">
                                                <label for="in-mn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>N</td>
                                            <td>Operation of tilt steering wheel</td>
                                            <td>
                                                <input type="radio" name="in" id="in-n" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-n" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="in" id="in-nn" 
                                                class="my-checkbox" value="0">
                                                <label for="in-nn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>O</td>
                                            <td>Seat movement & belt operation</td>
                                            <td>
                                                <input type="radio" name="io" id="in-o" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="in-o" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="io" id="in-on" 
                                                class="my-checkbox" value="0">
                                                <label for="in-on" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td rowspan="10">Underhood</td>
                                            <td>A</td>
                                            <td>Battery & terminal fluid level & toghtness</td>
                                            <td>
                                                <input type="radio" name="ua" id="un-a" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="un-a" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ua" id="un-an" 
                                                class="my-checkbox" value="0">
                                                <label for="un-an" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>B</td>
                                            <td>Radiator hose cond & coolant level</td>
                                            <td>
                                                <input type="radio" name="ub" id="un-b" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="un-b" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ub" id="un-bn" 
                                                class="my-checkbox" value="0">
                                                <label for="un-bn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>C</td>
                                            <td>Engine wiring connections-Links,Damage,Insulation</td>
                                            <td>
                                                <input type="radio" name="uc" id="un-c" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="un-c" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="uc" id="un-cn" 
                                                class="my-checkbox" value="0">
                                                <label for="un-cn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>D</td>
                                            <td>Brake Libe/Fuel line-leakage</td>
                                            <td>
                                                <input type="radio" name="ud" id="un-d" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="un-d" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ud" id="un-dn" 
                                                class="my-checkbox" value="0">
                                                <label for="un-dn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>E</td>
                                            <td>P/Stng oil-Level & leakage</td>
                                            <td>
                                                <input type="radio" name="ue" id="un-e" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="un-e" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ue" id="un-en" 
                                                class="my-checkbox" value="0">
                                                <label for="un-en" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>F</td>
                                            <td>Break oil-Level & leakage</td>
                                            <td>
                                                <input type="radio" name="uf" id="un-f" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="un-f" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="uf" id="un-fn" 
                                                class="my-checkbox" value="0">
                                                <label for="un-fn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>G</td>
                                            <td>All drive belts *check tension & damage(if any)</td>
                                            <td>
                                                <input type="radio" name="ug" id="un-g" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="un-g" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ug" id="un-gn" 
                                                class="my-checkbox" value="0">
                                                <label for="un-gn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>H</td>
                                            <td>W/S Washer fluid level</td>
                                            <td>
                                                <input type="radio" name="uh" id="un-h" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="un-h" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="uh" id="un-hn" 
                                                class="my-checkbox" value="0">
                                                <label for="un-hn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>I</td>
                                            <td>Auto T/M Electrical connection &fluid level</td>
                                            <td>
                                                <input type="radio" name="ui" id="un-i" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="un-i" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="ui" id="un-in" 
                                                class="my-checkbox" value="0">
                                                <label for="un-in" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>J</td>
                                            <td>Engine oil level</td>
                                            <td>
                                                <input type="radio" name="uj" id="un-j" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="un-j" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="uj" id="un-jn" 
                                                class="my-checkbox" value="0">
                                                <label for="un-jn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td rowspan="6">Underbody</td>
                                            <td>A</td>
                                            <td>Drive shaft & steering boot</td>
                                            <td>
                                                <input type="radio" name="unba" id="unb-a" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="unb-a" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="unba" id="unb-an" 
                                                class="my-checkbox" value="0">
                                                <label for="unb-an" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>B</td>
                                            <td>Fuel/Brake lines & fuel filter-leak damage</td>
                                            <td>
                                                <input type="radio" name="unbb" id="unb-b" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="unb-b" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="unbb" id="unb-bn" 
                                                class="my-checkbox" value="0">
                                                <label for="unb-bn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>C</td>
                                            <td>Engine/Transmission oil-leakage</td>
                                            <td>
                                                <input type="radio" name="unbc" id="unb-c" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="unb-c" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="unbc" id="unb-cn" 
                                                class="my-checkbox" value="0">
                                                <label for="unb-cn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>D</td>
                                            <td>Underbody damage-Exhaust Sys. & cat con</td>
                                            <td>
                                                <input type="radio" name="unbd" id="unb-d" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="unb-d" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="unbd" id="unb-dn" 
                                                class="my-checkbox" value="0">
                                                <label for="unb-dn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>E</td>
                                            <td>Shock absorber condition/leakage</td>
                                            <td>
                                                <input type="radio" name="unbe" id="unb-e" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="unb-e" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="unbe" id="unb-en" 
                                                class="my-checkbox" value="0">
                                                <label for="unb-en" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>F</td>
                                            <td>Underbody damage-floor/any other area</td>
                                            <td>
                                                <input type="radio" name="unbf" id="unb-f" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="unb-f" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="unbf" id="unb-fn" 
                                                class="my-checkbox" value="0">
                                                <label for="unb-fn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td rowspan="2">Boot</td>
                                            <td>A</td>
                                            <td>Stepney/jack rod in place & secured</td>
                                            <td>
                                                <input type="radio" name="boa" id="bo-a" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="bo-a" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="boa" id="boa-an" 
                                                class="my-checkbox" value="0">
                                                <label for="boa-an" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>B</td>
                                            <td>Tool kit any other its neatly placed and secured</td>
                                            <td>
                                                <input type="radio" name="bob" id="bob-b" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="bob-b" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="bob" id="bob-bn" 
                                                class="my-checkbox" value="0">
                                                <label for="bob-bn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td rowspan="5">Others</td>
                                            <td>A</td>
                                            <td>Road test-if required</td>
                                            <td>
                                                <input type="radio" name="othera" id="other-a" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="other-a" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="othera" id="other-an" 
                                                class="my-checkbox" value="0">
                                                <label for="other-an" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>B</td>
                                            <td>Service Campaign-Check VIN no.</td>
                                            <td>
                                                <input type="radio" name="otherb" id="other-b" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="other-b" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="otherb" id="other-bn" 
                                                class="my-checkbox" value="0">
                                                <label for="other-bn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>C</td>
                                            <td>Customer inventory & belongings-Check</td>
                                            <td>
                                                <input type="radio" name="otherc" id="other-c" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="other-c" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="otherc" id="other-cn" 
                                                class="my-checkbox" value="0">
                                                <label for="other-cn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>D</td>
                                            <td>Old parts handed back-check if kept neatly</td>
                                            <td>
                                                <input type="radio" name="otherd" id="other-d" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="other-d" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="otherd" id="other-dn" 
                                                class="my-checkbox" value="0">
                                                <label for="other-dn" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>E</td>
                                            <td>Service Bpook/Coupon-job done mentioned</td>
                                            <td>
                                                <input type="radio" name="othere" id="other-e" 
                                                class="my-checkbox" value="1" checked>
                                                <label for="other-e" class="checklist-label"></label>
                                            </td>
                                            <td>
                                                <input type="radio" name="othere" id="other-en" 
                                                class="my-checkbox" value="0">
                                                <label for="other-en" class="checklist-label"></label>
                                            </td>
                                        </tr>
                                </tbody>
        </table>   
        
         <div class="row">
        	<div class="col-md"></div>
        	<div class="col-md-1">
        		<input type="submit" class="btn btn-danger btn-lg" value="Done" /> 
        	</div>
        	<div class="col-md"></div>        	
        </div>    
        </div>
        </form>
    </div>
    </div>

    </main>

<%@include file="../footer.html"%>