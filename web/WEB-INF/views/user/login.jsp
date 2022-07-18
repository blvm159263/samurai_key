<%-- 
    Document   : login
    Created on : Jul 10, 2022, 7:51:47 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
        <meta charset="utf-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/login.css" />">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:400;700;800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <div class="main">
            <div class="container a-container ${not empty rMessage ? "is-txl" : ""}" id="a-container">             
                <form class="form" id="b-form" method="" action="<c:url value="/user/login_handler.do" />">
                    <h2 class="form_title title">Sign in</h2>
                    <c:if test="${not empty message}">
                        <i style="color:red; font-size: 20px; position: absolute; top: 23%; left: 170px" class="material-icons" style="font-size:15px; color:red;">error_outline</i> 
                        <p style="color:red; font-size: 15px; position: absolute; top: 23.5%">${message}</p>
                    </c:if>
                    <br/>
                    <div class="form__icons">
                        <%--<img class="form__icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjxzdmcgaGVpZ2h0PSI1MHB4IiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCA1MCA1MCIgd2lkdGg9IjUwcHgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6c2tldGNoPSJodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2gvbnMiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj48dGl0bGUvPjxkZWZzLz48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGlkPSJQYWdlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIj48ZyBmaWxsPSIjMDAwMDAwIiBpZD0iRmFjZWJvb2siPjxwYXRoIGQ9Ik0yNSw1MCBDMzguODA3MTE5NCw1MCA1MCwzOC44MDcxMTk0IDUwLDI1IEM1MCwxMS4xOTI4ODA2IDM4LjgwNzExOTQsMCAyNSwwIEMxMS4xOTI4ODA2LDAgMCwxMS4xOTI4ODA2IDAsMjUgQzAsMzguODA3MTE5NCAxMS4xOTI4ODA2LDUwIDI1LDUwIFogTTI1LDQ3IEMzNy4xNTAyNjUxLDQ3IDQ3LDM3LjE1MDI2NTEgNDcsMjUgQzQ3LDEyLjg0OTczNDkgMzcuMTUwMjY1MSwzIDI1LDMgQzEyLjg0OTczNDksMyAzLDEyLjg0OTczNDkgMywyNSBDMywzNy4xNTAyNjUxIDEyLjg0OTczNDksNDcgMjUsNDcgWiBNMjYuODE0NTE5NywzNiBMMjYuODE0NTE5NywyNC45OTg3MTIgTDMwLjA2ODc0NDksMjQuOTk4NzEyIEwzMC41LDIxLjIwNzYwNzIgTDI2LjgxNDUxOTcsMjEuMjA3NjA3MiBMMjYuODIwMDQ4NiwxOS4zMTAxMjI3IEMyNi44MjAwNDg2LDE4LjMyMTM0NDIgMjYuOTIwNzIwOSwxNy43OTE1MzQxIDI4LjQ0MjU1MzgsMTcuNzkxNTM0MSBMMzAuNDc2OTYyOSwxNy43OTE1MzQxIEwzMC40NzY5NjI5LDE0IEwyNy4yMjIyNzY5LDE0IEMyMy4zMTI4NzU3LDE0IDIxLjkzNjg2NzgsMTUuODM5MDkzNyAyMS45MzY4Njc4LDE4LjkzMTg3MDkgTDIxLjkzNjg2NzgsMjEuMjA4MDM2NiBMMTkuNSwyMS4yMDgwMzY2IEwxOS41LDI0Ljk5OTE0MTMgTDIxLjkzNjg2NzgsMjQuOTk5MTQxMyBMMjEuOTM2ODY3OCwzNiBMMjYuODE0NTE5NywzNiBaIE0yNi44MTQ1MTk3LDM2IiBpZD0iT3ZhbC0xIi8+PC9nPjwvZz48L3N2Zz4=" alt="">--%>
                        <a href="<c:url value="/home/homepage.do" />">
                            <img class="form__icon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIHdpZHRoPSIyNTYiIGhlaWdodD0iMjU2IiB2aWV3Qm94PSIwIDAgMjU2IDI1NiIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxkZXNjPkNyZWF0ZWQgd2l0aCBGYWJyaWMuanMgMS43LjIyPC9kZXNjPgo8ZGVmcz4KPC9kZWZzPgo8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxMjggMTI4KSBzY2FsZSgwLjcyIDAuNzIpIiBzdHlsZT0iIj4KCTxnIHN0eWxlPSJzdHJva2U6IG5vbmU7IHN0cm9rZS13aWR0aDogMDsgc3Ryb2tlLWRhc2hhcnJheTogbm9uZTsgc3Ryb2tlLWxpbmVjYXA6IGJ1dHQ7IHN0cm9rZS1saW5lam9pbjogbWl0ZXI7IHN0cm9rZS1taXRlcmxpbWl0OiAxMDsgZmlsbDogbm9uZTsgZmlsbC1ydWxlOiBub256ZXJvOyBvcGFjaXR5OiAxOyIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTE3NS4wNSAtMTc1LjA1MDAwMDAwMDAwMDA0KSBzY2FsZSgzLjg5IDMuODkpIiA+Cgk8cGF0aCBkPSJNIDgwLjY1MSA1Mi41OSBMIDQ2LjE3OSAxOC4xMTYgYyAtMC4yODEgLTAuMjgxIC0wLjY2MyAtMC40MzkgLTEuMDYxIC0wLjQzOSBzIC0wLjc3OSAwLjE1OCAtMS4wNjEgMC40MzkgTCA5LjU4NCA1Mi41OSBjIC0wLjk3NCAwLjk3MyAtMS41MSAyLjI2OCAtMS41MSAzLjY0NSBzIDAuNTM2IDIuNjcyIDEuNTEgMy42NDYgYyAxLjAwNSAxLjAwNSAyLjMyNSAxLjUwNyAzLjY0NSAxLjUwNyBjIDEuMzIgMCAyLjY0IC0wLjUwMiAzLjY0NSAtMS41MDcgbCAwLjY4IC0wLjY4IHYgMjkuMyBjIDAgMC44MjggMC42NzEgMS41IDEuNSAxLjUgSCAzNi42MSBoIDE3LjAxNiBoIDE3LjU1NyBjIDAuODI4IDAgMS41IC0wLjY3MiAxLjUgLTEuNSBWIDU5LjIgbCAwLjY3OSAwLjY3OSBjIDIuMDEgMi4wMSA1LjI4IDIuMDEyIDcuMjkgMCBDIDgyLjY2MSA1Ny44NjkgODIuNjYxIDU0LjYgODAuNjUxIDUyLjU5IHogTSAzOC4xMSA4NyBWIDY0Ljc3NSBoIDE0LjAxNiBWIDg3IEggMzguMTEgeiBNIDY5LjY4MyA4NyBIIDU1LjEyNiBWIDYzLjI3NSBjIDAgLTAuODI4IC0wLjY3MiAtMS41IC0xLjUgLTEuNSBIIDM2LjYxIGMgLTAuODI5IDAgLTEuNSAwLjY3MiAtMS41IDEuNSBWIDg3IEggMjAuNTU0IFYgNTYuMiBsIDI0LjU2NCAtMjQuNTY0IEwgNjkuNjgzIDU2LjIgViA4NyB6IE0gNzguNTMgNTcuNzU4IGMgLTAuODE0IDAuODE1IC0yLjIzMyAwLjgxMyAtMy4wNDggMCBMIDQ2LjE3OSAyOC40NTQgYyAtMC41NjMgLTAuNTYzIC0xLjU1OSAtMC41NjMgLTIuMTIxIDAgTCAxNC43NTMgNTcuNzU5IGMgLTAuODQgMC44NDEgLTIuMjA4IDAuODM4IC0zLjA0OCAtMC4wMDEgYyAtMC40MDcgLTAuNDA3IC0wLjYzMSAtMC45NDggLTAuNjMxIC0xLjUyMyBzIDAuMjI0IC0xLjExNiAwLjYzMSAtMS41MjMgbCAzMy40MTMgLTMzLjQxMyBMIDc4LjUzIDU0LjcxMSBDIDc5LjM3IDU1LjU1MSA3OS4zNyA1Ni45MTggNzguNTMgNTcuNzU4IHoiIHN0eWxlPSJzdHJva2U6IG5vbmU7IHN0cm9rZS13aWR0aDogMTsgc3Ryb2tlLWRhc2hhcnJheTogbm9uZTsgc3Ryb2tlLWxpbmVjYXA6IGJ1dHQ7IHN0cm9rZS1saW5lam9pbjogbWl0ZXI7IHN0cm9rZS1taXRlcmxpbWl0OiAxMDsgZmlsbDogcmdiKDAsMCwwKTsgZmlsbC1ydWxlOiBub256ZXJvOyBvcGFjaXR5OiAxOyIgdHJhbnNmb3JtPSIgbWF0cml4KDEgMCAwIDEgMCAwKSAiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgLz4KCTxwYXRoIGQ9Ik0gNDIuODkgNzcuMzg4IGggLTAuNDk0IGMgLTAuODI5IDAgLTEuNSAtMC42NzIgLTEuNSAtMS41IHMgMC42NzEgLTEuNSAxLjUgLTEuNSBoIDAuNDk0IGMgMC44MjkgMCAxLjUgMC42NzIgMS41IDEuNSBTIDQzLjcxOCA3Ny4zODggNDIuODkgNzcuMzg4IHoiIHN0eWxlPSJzdHJva2U6IG5vbmU7IHN0cm9rZS13aWR0aDogMTsgc3Ryb2tlLWRhc2hhcnJheTogbm9uZTsgc3Ryb2tlLWxpbmVjYXA6IGJ1dHQ7IHN0cm9rZS1saW5lam9pbjogbWl0ZXI7IHN0cm9rZS1taXRlcmxpbWl0OiAxMDsgZmlsbDogcmdiKDAsMCwwKTsgZmlsbC1ydWxlOiBub256ZXJvOyBvcGFjaXR5OiAxOyIgdHJhbnNmb3JtPSIgbWF0cml4KDEgMCAwIDEgMCAwKSAiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgLz4KCTxwYXRoIGQ9Ik0gODcuNjQzIDI4LjQ0NyBIIDYzLjMwNSBjIC0wLjgyOCAwIC0xLjUgLTAuNjcxIC0xLjUgLTEuNSBzIDAuNjcyIC0xLjUgMS41IC0xLjUgaCAyMy4xMTcgYyAwLjA2IC0wLjQxNyAwLjA5IC0wLjgzIDAuMDkgLTEuMjM3IGMgMCAtNS4wMyAtNC4wOTIgLTkuMTIzIC05LjEyMiAtOS4xMjMgYyAtMS4yOCAwIC0yLjUyOCAwLjI2NyAtMy43MDkgMC43OTQgYyAtMC42MzEgMC4yODIgLTEuMzY5IDAuMDk2IC0xLjc5NCAtMC40NDcgYyAtMi4xMjggLTIuNzI2IC01LjMyMSAtNC4yOSAtOC43NjEgLTQuMjkgYyAtMy41ODMgMCAtNi45NjggMS43NDYgLTkuMDUzIDQuNjcgYyAtMC40ODEgMC42NzQgLTEuNDE4IDAuODMxIC0yLjA5MyAwLjM1IHMgLTAuODMxIC0xLjQxNyAtMC4zNTEgLTIuMDkyIGMgMi42NDcgLTMuNzEyIDYuOTQ1IC01LjkyOCAxMS40OTYgLTUuOTI4IGMgMy45OTEgMCA3LjcyMSAxLjY1NiAxMC4zOTYgNC41OCBjIDEuMjQ4IC0wLjQyMyAyLjU0NCAtMC42MzcgMy44NjggLTAuNjM3IGMgNi42ODUgMCAxMi4xMjIgNS40MzggMTIuMTIyIDEyLjEyMyBjIDAgMS4wMjkgLTAuMTQyIDIuMDggLTAuNDIgMy4xMjQgQyA4OC45MTcgMjcuOTkgODguMzIyIDI4LjQ0NyA4Ny42NDMgMjguNDQ3IHoiIHN0eWxlPSJzdHJva2U6IG5vbmU7IHN0cm9rZS13aWR0aDogMTsgc3Ryb2tlLWRhc2hhcnJheTogbm9uZTsgc3Ryb2tlLWxpbmVjYXA6IGJ1dHQ7IHN0cm9rZS1saW5lam9pbjogbWl0ZXI7IHN0cm9rZS1taXRlcmxpbWl0OiAxMDsgZmlsbDogcmdiKDAsMCwwKTsgZmlsbC1ydWxlOiBub256ZXJvOyBvcGFjaXR5OiAxOyIgdHJhbnNmb3JtPSIgbWF0cml4KDEgMCAwIDEgMCAwKSAiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgLz4KCTxwYXRoIGQ9Ik0gMTQuNDMzIDQxLjM0OCBIIDIuMDEzIGMgLTAuNzkyIDAgLTEuNDQ4IC0wLjYxNiAtMS40OTcgLTEuNDA2IGwgLTAuMDA3IC0wLjEwNCBjIC0wLjAxMSAtMC4xNiAtMC4wMjEgLTAuMzIgLTAuMDIxIC0wLjQ4MyBjIDAgLTQuOTY2IDMuODk5IC05LjAzOCA4Ljc5NyAtOS4zMTUgYyAyLjA5MSAtNS4zNDkgNy4zNDUgLTguOTk1IDEzLjE1NCAtOC45OTUgYyAyLjU3NyAwIDUuMSAwLjcwNCA3LjI5NSAyLjAzNiBjIDAuNzA4IDAuNDMgMC45MzQgMS4zNTIgMC41MDQgMi4wNjEgYyAtMC40MjkgMC43MDggLTEuMzUxIDAuOTM1IC0yLjA2MSAwLjUwNCBjIC0xLjcyNiAtMS4wNDcgLTMuNzEgLTEuNjAxIC01LjczOSAtMS42MDEgYyAtNC44NzYgMCAtOS4yNTcgMy4yNjMgLTEwLjY1MSA3LjkzNiBjIC0wLjIgMC42NzEgLTAuODM4IDEuMTIgLTEuNTM3IDEuMDY3IGMgLTAuMDAyIDAgLTAuMTAyIC0wLjAwNyAtMC4xMDQgLTAuMDA3IGMgLTAuMTA5IC0wLjAwOCAtMC4yMTggLTAuMDE3IC0wLjMyOSAtMC4wMTcgYyAtMy4xNDcgMCAtNS43NjYgMi4zMSAtNi4yNSA1LjMyMyBoIDEwLjg2NSBjIDAuODI5IDAgMS41IDAuNjcxIDEuNSAxLjUgUyAxNS4yNjIgNDEuMzQ4IDE0LjQzMyA0MS4zNDggeiIgc3R5bGU9InN0cm9rZTogbm9uZTsgc3Ryb2tlLXdpZHRoOiAxOyBzdHJva2UtZGFzaGFycmF5OiBub25lOyBzdHJva2UtbGluZWNhcDogYnV0dDsgc3Ryb2tlLWxpbmVqb2luOiBtaXRlcjsgc3Ryb2tlLW1pdGVybGltaXQ6IDEwOyBmaWxsOiByZ2IoMCwwLDApOyBmaWxsLXJ1bGU6IG5vbnplcm87IG9wYWNpdHk6IDE7IiB0cmFuc2Zvcm09IiBtYXRyaXgoMSAwIDAgMSAwIDApICIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiAvPgoJPHBhdGggZD0iTSAzMC42ODcgMTQuMzU4IGMgLTMuOTU4IDAgLTcuMTc5IC0zLjIyIC03LjE3OSAtNy4xNzkgUyAyNi43MjkgMCAzMC42ODcgMCBzIDcuMTc5IDMuMjIxIDcuMTc5IDcuMTc5IFMgMzQuNjQ2IDE0LjM1OCAzMC42ODcgMTQuMzU4IHogTSAzMC42ODcgMyBjIC0yLjMwNCAwIC00LjE3OSAxLjg3NSAtNC4xNzkgNC4xNzkgcyAxLjg3NSA0LjE3OSA0LjE3OSA0LjE3OSBzIDQuMTc5IC0xLjg3NSA0LjE3OSAtNC4xNzkgUyAzMi45OTEgMyAzMC42ODcgMyB6IiBzdHlsZT0ic3Ryb2tlOiBub25lOyBzdHJva2Utd2lkdGg6IDE7IHN0cm9rZS1kYXNoYXJyYXk6IG5vbmU7IHN0cm9rZS1saW5lY2FwOiBidXR0OyBzdHJva2UtbGluZWpvaW46IG1pdGVyOyBzdHJva2UtbWl0ZXJsaW1pdDogMTA7IGZpbGw6IHJnYigwLDAsMCk7IGZpbGwtcnVsZTogbm9uemVybzsgb3BhY2l0eTogMTsiIHRyYW5zZm9ybT0iIG1hdHJpeCgxIDAgMCAxIDAgMCkgIiBzdHJva2UtbGluZWNhcD0icm91bmQiIC8+CjwvZz4KPC9nPgo8L3N2Zz4=">
                        </a>
                        <%--<img class="form__icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjxzdmcgaGVpZ2h0PSI1MHB4IiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCA1MCA1MCIgd2lkdGg9IjUwcHgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6c2tldGNoPSJodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2gvbnMiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj48dGl0bGUvPjxkZWZzLz48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGlkPSJQYWdlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIj48ZyBmaWxsPSIjMDAwMDAwIiBpZD0iTGlua2VkSW4iPjxwYXRoIGQ9Ik0yNSw1MCBDMzguODA3MTE5NCw1MCA1MCwzOC44MDcxMTk0IDUwLDI1IEM1MCwxMS4xOTI4ODA2IDM4LjgwNzExOTQsMCAyNSwwIEMxMS4xOTI4ODA2LDAgMCwxMS4xOTI4ODA2IDAsMjUgQzAsMzguODA3MTE5NCAxMS4xOTI4ODA2LDUwIDI1LDUwIFogTTI1LDQ3IEMzNy4xNTAyNjUxLDQ3IDQ3LDM3LjE1MDI2NTEgNDcsMjUgQzQ3LDEyLjg0OTczNDkgMzcuMTUwMjY1MSwzIDI1LDMgQzEyLjg0OTczNDksMyAzLDEyLjg0OTczNDkgMywyNSBDMywzNy4xNTAyNjUxIDEyLjg0OTczNDksNDcgMjUsNDcgWiBNMTQsMjAuMTE4MDQ3OSBMMTQsMzQuNjU4MTgzNCBMMTguNzEwMDg1MSwzNC42NTgxODM0IEwxOC43MTAwODUxLDIwLjExODA0NzkgTDE0LDIwLjExODA0NzkgWiBNMTYuNjY0Njk2MiwxMyBDMTUuMDUzNDA1OCwxMyAxNCwxNC4wODU4NjExIDE0LDE1LjUxMTUxMjIgQzE0LDE2LjkwNzYzMzEgMTUuMDIyMjcxMSwxOC4wMjQ3NjE0IDE2LjYwMzU1NTYsMTguMDI0NzYxNCBMMTYuNjMzNjU1NiwxOC4wMjQ3NjE0IEMxOC4yNzU5ODY3LDE4LjAyNDc2MTQgMTkuMjk4ODIyMiwxNi45MDc2MzMxIDE5LjI5ODgyMjIsMTUuNTExNTEyMiBDMTkuMjY4MjUxOSwxNC4wODU4NjExIDE4LjI3NTk4NjcsMTMgMTYuNjY0Njk2MiwxMyBaIE0zMC41NzY5MjEzLDIwLjExODA0NzkgQzI4LjA3NjE3NiwyMC4xMTgwNDc5IDI2Ljk1NjU1MDEsMjEuNTI5MzE5OSAyNi4zMzE0MTA4LDIyLjUxOTM1MjcgTDI2LjMzMTQxMDgsMjAuNDU5ODY0NCBMMjEuNjIwNzYxNCwyMC40NTk4NjQ0IEMyMS42ODI4NDI3LDIxLjgyNDIzNTYgMjEuNjIwNzYxNCwzNSAyMS42MjA3NjE0LDM1IEwyNi4zMzE0MTA4LDM1IEwyNi4zMzE0MTA4LDI2Ljg3OTU4ODcgQzI2LjMzMTQxMDgsMjYuNDQ1MDMyIDI2LjM2MTk4MTIsMjYuMDExNTM2OCAyNi40ODY1MTk5LDI1LjcwMDQwODQgQzI2LjgyNjkzMiwyNC44MzIyNiAyNy42MDIwMDY5LDIzLjkzMzQyMzMgMjguOTAzMjY3NCwyMy45MzM0MjMzIEMzMC42MDgzMzgxLDIzLjkzMzQyMzMgMzEuMjg5OTE0OSwyNS4yNjY3MjAyIDMxLjI4OTkxNDksMjcuMjIwNjMzMyBMMzEuMjg5OTE0OSwzNC45OTk2MTQgTDM1Ljk5OTgxMTksMzQuOTk5NjE0IEwzNiwyNi42NjI3NDQ2IEMzNiwyMi4xOTY2NDM5IDMzLjY3NjM3NDMsMjAuMTE4MDQ3OSAzMC41NzY5MjEzLDIwLjExODA0NzkgWiBNMzAuNTc2OTIxMywyMC4xMTgwNDc5IiBpZD0iT3ZhbC0xIi8+PC9nPjwvZz48L3N2Zz4=">--%>
                        <%--<img class="form__icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjxzdmcgaGVpZ2h0PSI1MHB4IiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCA1MCA1MCIgd2lkdGg9IjUwcHgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6c2tldGNoPSJodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2gvbnMiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj48dGl0bGUvPjxkZWZzLz48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGlkPSJQYWdlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIj48ZyBmaWxsPSIjMDAwMDAwIiBpZD0iVHdpdHRlciI+PHBhdGggZD0iTTI1LDUwIEMzOC44MDcxMTk0LDUwIDUwLDM4LjgwNzExOTQgNTAsMjUgQzUwLDExLjE5Mjg4MDYgMzguODA3MTE5NCwwIDI1LDAgQzExLjE5Mjg4MDYsMCAwLDExLjE5Mjg4MDYgMCwyNSBDMCwzOC44MDcxMTk0IDExLjE5Mjg4MDYsNTAgMjUsNTAgWiBNMjUsNDcgQzM3LjE1MDI2NTEsNDcgNDcsMzcuMTUwMjY1MSA0NywyNSBDNDcsMTIuODQ5NzM0OSAzNy4xNTAyNjUxLDMgMjUsMyBDMTIuODQ5NzM0OSwzIDMsMTIuODQ5NzM0OSAzLDI1IEMzLDM3LjE1MDI2NTEgMTIuODQ5NzM0OSw0NyAyNSw0NyBaIE0yNC42ODIyNTU0LDIwLjU1NDI5NzUgTDI0LjcyOTk0NCwyMS4zNzYxMDExIEwyMy45MzUxMzMzLDIxLjI3NTQ3MjEgQzIxLjA0MjAyMjUsMjAuODg5NzI3NSAxOC41MTQ1MjQ2LDE5LjU4MTU1MDQgMTYuMzY4NTM1OCwxNy4zODQ0ODM3IEwxNS4zMTkzODU3LDE2LjI5NDMzNjEgTDE1LjA0OTE1MDEsMTcuMDk5MzY4MSBDMTQuNDc2ODg2NCwxOC44OTM5MTg4IDE0Ljg0MjQ5OTMsMjAuNzg5MDk4NSAxNi4wMzQ3MTUzLDIyLjA2MzczMjYgQzE2LjY3MDU2MzgsMjIuNzY4MTM1NyAxNi41Mjc0OTc5LDIyLjg2ODc2NDcgMTUuNDMwNjU5MiwyMi40NDk0NzcyIEMxNS4wNDkxNTAxLDIyLjMxNTMwNTEgMTQuNzE1MzI5NiwyMi4yMTQ2NzYxIDE0LjY4MzUzNzEsMjIuMjY0OTkwNyBDMTQuNTcyMjYzNywyMi4zODIzOTEyIDE0Ljk1Mzc3MjgsMjMuOTA4NTk3OCAxNS4yNTU4MDA4LDI0LjUxMjM3MTkgQzE1LjY2OTEwMjQsMjUuMzUwOTQ3IDE2LjUxMTYwMTcsMjYuMTcyNzUwNSAxNy40MzM1ODIsMjYuNjU5MTI0MSBMMTguMjEyNDk2NSwyNy4wNDQ4Njg2IEwxNy4yOTA1MTYxLDI3LjA2MTY0MDEgQzE2LjQwMDMyODIsMjcuMDYxNjQwMSAxNi4zNjg1MzU4LDI3LjA3ODQxMTYgMTYuNDYzOTEzMSwyNy40MzA2MTMxIEMxNi43ODE4Mzc0LDI4LjUyMDc2MDggMTguMDM3NjM4MiwyOS42Nzc5OTQ0IDE5LjQzNjUwNSwzMC4xODExMzk0IEwyMC40MjIwNzAxLDMwLjUzMzM0MSBMMTkuNTYzNjc0NiwzMS4wNzAwMjkgQzE4LjI5MTk3NzYsMzEuODQxNTE4MSAxNi43OTc3MzM1LDMyLjI3NzU3NzIgMTUuMzAzNDg5NSwzMi4zMTExMjAyIEMxNC41ODgxNTk5LDMyLjMyNzg5MTYgMTQsMzIuMzk0OTc3NiAxNCwzMi40NDUyOTIyIEMxNCwzMi42MTMwMDcxIDE1LjkzOTMzOCwzMy41NTIyMTEzIDE3LjA2Nzk2OTIsMzMuOTIxMTg0MyBDMjAuNDUzODYyNiwzNS4wMTEzMzE5IDI0LjQ3NTYwNDYsMzQuNTQxNzI5OCAyNy40OTU4ODUxLDMyLjY4MDA5MzIgQzI5LjY0MTg3MzksMzEuMzU1MTQ0NSAzMS43ODc4NjI4LDI4LjcyMjAxODggMzIuNzg5MzI0MiwyNi4xNzI3NTA1IEMzMy4zMjk3OTU0LDI0LjgxNDI1ODkgMzMuODcwMjY2NywyMi4zMzIwNzY3IDMzLjg3MDI2NjcsMjEuMTQxMyBDMzMuODcwMjY2NywyMC4zNjk4MTEgMzMuOTE3OTU1MywyMC4yNjkxODIgMzQuODA4MTQzMiwxOS4zNDY3NDk0IEMzNS4zMzI3MTgzLDE4LjgxMDA2MTMgMzUuODI1NTAwOSwxOC4yMjMwNTg4IDM1LjkyMDg3ODIsMTguMDU1MzQzNyBDMzYuMDc5ODQwMywxNy43MzY2ODUyIDM2LjA2Mzk0NDIsMTcuNzM2Njg1MiAzNS4yNTMyMzczLDE4LjAyMTgwMDcgQzMzLjkwMjA1OTEsMTguNTI0OTQ1OCAzMy43MTEzMDQ1LDE4LjQ1Nzg1OTggMzQuMzc4OTQ1NSwxNy43MDMxNDIyIEMzNC44NzE3MjgxLDE3LjE2NjQ1NDEgMzUuNDU5ODg4LDE2LjE5MzcwNzEgMzUuNDU5ODg4LDE1LjkwODU5MTUgQzM1LjQ1OTg4OCwxNS44NTgyNzcgMzUuMjIxNDQ0OCwxNS45NDIxMzQ2IDM0Ljk1MTIwOTIsMTYuMDkzMDc4IEMzNC42NjUwNzczLDE2LjI2MDc5MzEgMzQuMDI5MjI4OCwxNi41MTIzNjU2IDMzLjU1MjM0MjQsMTYuNjYzMzA5MSBMMzIuNjkzOTQ2OSwxNi45NDg0MjQ2IEwzMS45MTUwMzI0LDE2LjM5NDk2NSBDMzEuNDg1ODM0NiwxNi4wOTMwNzggMzAuODgxNzc4NiwxNS43NTc2NDggMzAuNTYzODU0MywxNS42NTcwMTkgQzI5Ljc1MzE0NzQsMTUuNDIyMjE4IDI4LjUxMzI0MjgsMTUuNDU1NzYxIDI3Ljc4MjAxNjksMTUuNzI0MTA1IEMyNS43OTQ5OTAzLDE2LjQ3ODgyMjYgMjQuNTM5MTg5NCwxOC40MjQzMTY4IDI0LjY4MjI1NTQsMjAuNTU0Mjk3NSBDMjQuNjgyMjU1NCwyMC41NTQyOTc1IDI0LjUzOTE4OTQsMTguNDI0MzE2OCAyNC42ODIyNTU0LDIwLjU1NDI5NzUgWiBNMjQuNjgyMjU1NCwyMC41NTQyOTc1IiBpZD0iT3ZhbC0xIi8+PC9nPjwvZz48L3N2Zz4=">--%>
                    </div>
                    <span class="form__span">or use your member account</span>
                    <input class="form__input" type="text" name="userName" placeholder="Username" value="${userName}" required />
                    <input id="pwd" class="form__input" type="password" name="password" placeholder="Password" required />
                    <%--<i class="uil uil-eye-slash toggle"></i>--%>
                    <%--<input id="remember" type="checkbox" name="rememberMe" ${empty password ? "checked" : ""} ${rememberMe == "on" ? "checked" : ""} />
                    <label for="remember">Remember me</label><br/>--%>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="remember" name="rememberMe" ${empty password ? "checked" : ""} ${rememberMe == "on" ? "checked" : ""}>
                        <label class="form-check-label" for="remember">Remember me</label>
                    </div>
                        <a class="form__link" href="">Forgot your password?</a>
                    <button class="form__button button">SIGN IN</button>
                </form>
            </div>
            <div class="container b-container ${not empty rMessage ? "is-txl is-z200" : ""}" id="b-container">
                <form class="form" id="a-form" method="" action="<c:url value="/user/register.do" />"> 
                    <h2 class="form_title title">Create Account</h2>
                    <c:if test="${not empty rMessage}">
                        <i style="color:red; font-size: 20px; position: absolute; top: 70%; left: 170px; ${rMessage == "Please login to complete your registration." ? "display: none" : ""}" class="material-icons" style="font-size:15px; color:red;">error_outline</i> 
                        <p style="color:red; font-size: 15px; position: absolute; top: 70.5%">${rMessage}</p>
                    </c:if>
                    <div class="form__icons">
                        <%--<img class="form__icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjxzdmcgaGVpZ2h0PSI1MHB4IiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCA1MCA1MCIgd2lkdGg9IjUwcHgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6c2tldGNoPSJodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2gvbnMiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj48dGl0bGUvPjxkZWZzLz48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGlkPSJQYWdlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIj48ZyBmaWxsPSIjMDAwMDAwIiBpZD0iRmFjZWJvb2siPjxwYXRoIGQ9Ik0yNSw1MCBDMzguODA3MTE5NCw1MCA1MCwzOC44MDcxMTk0IDUwLDI1IEM1MCwxMS4xOTI4ODA2IDM4LjgwNzExOTQsMCAyNSwwIEMxMS4xOTI4ODA2LDAgMCwxMS4xOTI4ODA2IDAsMjUgQzAsMzguODA3MTE5NCAxMS4xOTI4ODA2LDUwIDI1LDUwIFogTTI1LDQ3IEMzNy4xNTAyNjUxLDQ3IDQ3LDM3LjE1MDI2NTEgNDcsMjUgQzQ3LDEyLjg0OTczNDkgMzcuMTUwMjY1MSwzIDI1LDMgQzEyLjg0OTczNDksMyAzLDEyLjg0OTczNDkgMywyNSBDMywzNy4xNTAyNjUxIDEyLjg0OTczNDksNDcgMjUsNDcgWiBNMjYuODE0NTE5NywzNiBMMjYuODE0NTE5NywyNC45OTg3MTIgTDMwLjA2ODc0NDksMjQuOTk4NzEyIEwzMC41LDIxLjIwNzYwNzIgTDI2LjgxNDUxOTcsMjEuMjA3NjA3MiBMMjYuODIwMDQ4NiwxOS4zMTAxMjI3IEMyNi44MjAwNDg2LDE4LjMyMTM0NDIgMjYuOTIwNzIwOSwxNy43OTE1MzQxIDI4LjQ0MjU1MzgsMTcuNzkxNTM0MSBMMzAuNDc2OTYyOSwxNy43OTE1MzQxIEwzMC40NzY5NjI5LDE0IEwyNy4yMjIyNzY5LDE0IEMyMy4zMTI4NzU3LDE0IDIxLjkzNjg2NzgsMTUuODM5MDkzNyAyMS45MzY4Njc4LDE4LjkzMTg3MDkgTDIxLjkzNjg2NzgsMjEuMjA4MDM2NiBMMTkuNSwyMS4yMDgwMzY2IEwxOS41LDI0Ljk5OTE0MTMgTDIxLjkzNjg2NzgsMjQuOTk5MTQxMyBMMjEuOTM2ODY3OCwzNiBMMjYuODE0NTE5NywzNiBaIE0yNi44MTQ1MTk3LDM2IiBpZD0iT3ZhbC0xIi8+PC9nPjwvZz48L3N2Zz4=" alt="">--%>
                        <a href="<c:url value="/home/homepage.do" />">
                            <img class="form__icon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIHdpZHRoPSIyNTYiIGhlaWdodD0iMjU2IiB2aWV3Qm94PSIwIDAgMjU2IDI1NiIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxkZXNjPkNyZWF0ZWQgd2l0aCBGYWJyaWMuanMgMS43LjIyPC9kZXNjPgo8ZGVmcz4KPC9kZWZzPgo8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxMjggMTI4KSBzY2FsZSgwLjcyIDAuNzIpIiBzdHlsZT0iIj4KCTxnIHN0eWxlPSJzdHJva2U6IG5vbmU7IHN0cm9rZS13aWR0aDogMDsgc3Ryb2tlLWRhc2hhcnJheTogbm9uZTsgc3Ryb2tlLWxpbmVjYXA6IGJ1dHQ7IHN0cm9rZS1saW5lam9pbjogbWl0ZXI7IHN0cm9rZS1taXRlcmxpbWl0OiAxMDsgZmlsbDogbm9uZTsgZmlsbC1ydWxlOiBub256ZXJvOyBvcGFjaXR5OiAxOyIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTE3NS4wNSAtMTc1LjA1MDAwMDAwMDAwMDA0KSBzY2FsZSgzLjg5IDMuODkpIiA+Cgk8cGF0aCBkPSJNIDgwLjY1MSA1Mi41OSBMIDQ2LjE3OSAxOC4xMTYgYyAtMC4yODEgLTAuMjgxIC0wLjY2MyAtMC40MzkgLTEuMDYxIC0wLjQzOSBzIC0wLjc3OSAwLjE1OCAtMS4wNjEgMC40MzkgTCA5LjU4NCA1Mi41OSBjIC0wLjk3NCAwLjk3MyAtMS41MSAyLjI2OCAtMS41MSAzLjY0NSBzIDAuNTM2IDIuNjcyIDEuNTEgMy42NDYgYyAxLjAwNSAxLjAwNSAyLjMyNSAxLjUwNyAzLjY0NSAxLjUwNyBjIDEuMzIgMCAyLjY0IC0wLjUwMiAzLjY0NSAtMS41MDcgbCAwLjY4IC0wLjY4IHYgMjkuMyBjIDAgMC44MjggMC42NzEgMS41IDEuNSAxLjUgSCAzNi42MSBoIDE3LjAxNiBoIDE3LjU1NyBjIDAuODI4IDAgMS41IC0wLjY3MiAxLjUgLTEuNSBWIDU5LjIgbCAwLjY3OSAwLjY3OSBjIDIuMDEgMi4wMSA1LjI4IDIuMDEyIDcuMjkgMCBDIDgyLjY2MSA1Ny44NjkgODIuNjYxIDU0LjYgODAuNjUxIDUyLjU5IHogTSAzOC4xMSA4NyBWIDY0Ljc3NSBoIDE0LjAxNiBWIDg3IEggMzguMTEgeiBNIDY5LjY4MyA4NyBIIDU1LjEyNiBWIDYzLjI3NSBjIDAgLTAuODI4IC0wLjY3MiAtMS41IC0xLjUgLTEuNSBIIDM2LjYxIGMgLTAuODI5IDAgLTEuNSAwLjY3MiAtMS41IDEuNSBWIDg3IEggMjAuNTU0IFYgNTYuMiBsIDI0LjU2NCAtMjQuNTY0IEwgNjkuNjgzIDU2LjIgViA4NyB6IE0gNzguNTMgNTcuNzU4IGMgLTAuODE0IDAuODE1IC0yLjIzMyAwLjgxMyAtMy4wNDggMCBMIDQ2LjE3OSAyOC40NTQgYyAtMC41NjMgLTAuNTYzIC0xLjU1OSAtMC41NjMgLTIuMTIxIDAgTCAxNC43NTMgNTcuNzU5IGMgLTAuODQgMC44NDEgLTIuMjA4IDAuODM4IC0zLjA0OCAtMC4wMDEgYyAtMC40MDcgLTAuNDA3IC0wLjYzMSAtMC45NDggLTAuNjMxIC0xLjUyMyBzIDAuMjI0IC0xLjExNiAwLjYzMSAtMS41MjMgbCAzMy40MTMgLTMzLjQxMyBMIDc4LjUzIDU0LjcxMSBDIDc5LjM3IDU1LjU1MSA3OS4zNyA1Ni45MTggNzguNTMgNTcuNzU4IHoiIHN0eWxlPSJzdHJva2U6IG5vbmU7IHN0cm9rZS13aWR0aDogMTsgc3Ryb2tlLWRhc2hhcnJheTogbm9uZTsgc3Ryb2tlLWxpbmVjYXA6IGJ1dHQ7IHN0cm9rZS1saW5lam9pbjogbWl0ZXI7IHN0cm9rZS1taXRlcmxpbWl0OiAxMDsgZmlsbDogcmdiKDAsMCwwKTsgZmlsbC1ydWxlOiBub256ZXJvOyBvcGFjaXR5OiAxOyIgdHJhbnNmb3JtPSIgbWF0cml4KDEgMCAwIDEgMCAwKSAiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgLz4KCTxwYXRoIGQ9Ik0gNDIuODkgNzcuMzg4IGggLTAuNDk0IGMgLTAuODI5IDAgLTEuNSAtMC42NzIgLTEuNSAtMS41IHMgMC42NzEgLTEuNSAxLjUgLTEuNSBoIDAuNDk0IGMgMC44MjkgMCAxLjUgMC42NzIgMS41IDEuNSBTIDQzLjcxOCA3Ny4zODggNDIuODkgNzcuMzg4IHoiIHN0eWxlPSJzdHJva2U6IG5vbmU7IHN0cm9rZS13aWR0aDogMTsgc3Ryb2tlLWRhc2hhcnJheTogbm9uZTsgc3Ryb2tlLWxpbmVjYXA6IGJ1dHQ7IHN0cm9rZS1saW5lam9pbjogbWl0ZXI7IHN0cm9rZS1taXRlcmxpbWl0OiAxMDsgZmlsbDogcmdiKDAsMCwwKTsgZmlsbC1ydWxlOiBub256ZXJvOyBvcGFjaXR5OiAxOyIgdHJhbnNmb3JtPSIgbWF0cml4KDEgMCAwIDEgMCAwKSAiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgLz4KCTxwYXRoIGQ9Ik0gODcuNjQzIDI4LjQ0NyBIIDYzLjMwNSBjIC0wLjgyOCAwIC0xLjUgLTAuNjcxIC0xLjUgLTEuNSBzIDAuNjcyIC0xLjUgMS41IC0xLjUgaCAyMy4xMTcgYyAwLjA2IC0wLjQxNyAwLjA5IC0wLjgzIDAuMDkgLTEuMjM3IGMgMCAtNS4wMyAtNC4wOTIgLTkuMTIzIC05LjEyMiAtOS4xMjMgYyAtMS4yOCAwIC0yLjUyOCAwLjI2NyAtMy43MDkgMC43OTQgYyAtMC42MzEgMC4yODIgLTEuMzY5IDAuMDk2IC0xLjc5NCAtMC40NDcgYyAtMi4xMjggLTIuNzI2IC01LjMyMSAtNC4yOSAtOC43NjEgLTQuMjkgYyAtMy41ODMgMCAtNi45NjggMS43NDYgLTkuMDUzIDQuNjcgYyAtMC40ODEgMC42NzQgLTEuNDE4IDAuODMxIC0yLjA5MyAwLjM1IHMgLTAuODMxIC0xLjQxNyAtMC4zNTEgLTIuMDkyIGMgMi42NDcgLTMuNzEyIDYuOTQ1IC01LjkyOCAxMS40OTYgLTUuOTI4IGMgMy45OTEgMCA3LjcyMSAxLjY1NiAxMC4zOTYgNC41OCBjIDEuMjQ4IC0wLjQyMyAyLjU0NCAtMC42MzcgMy44NjggLTAuNjM3IGMgNi42ODUgMCAxMi4xMjIgNS40MzggMTIuMTIyIDEyLjEyMyBjIDAgMS4wMjkgLTAuMTQyIDIuMDggLTAuNDIgMy4xMjQgQyA4OC45MTcgMjcuOTkgODguMzIyIDI4LjQ0NyA4Ny42NDMgMjguNDQ3IHoiIHN0eWxlPSJzdHJva2U6IG5vbmU7IHN0cm9rZS13aWR0aDogMTsgc3Ryb2tlLWRhc2hhcnJheTogbm9uZTsgc3Ryb2tlLWxpbmVjYXA6IGJ1dHQ7IHN0cm9rZS1saW5lam9pbjogbWl0ZXI7IHN0cm9rZS1taXRlcmxpbWl0OiAxMDsgZmlsbDogcmdiKDAsMCwwKTsgZmlsbC1ydWxlOiBub256ZXJvOyBvcGFjaXR5OiAxOyIgdHJhbnNmb3JtPSIgbWF0cml4KDEgMCAwIDEgMCAwKSAiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgLz4KCTxwYXRoIGQ9Ik0gMTQuNDMzIDQxLjM0OCBIIDIuMDEzIGMgLTAuNzkyIDAgLTEuNDQ4IC0wLjYxNiAtMS40OTcgLTEuNDA2IGwgLTAuMDA3IC0wLjEwNCBjIC0wLjAxMSAtMC4xNiAtMC4wMjEgLTAuMzIgLTAuMDIxIC0wLjQ4MyBjIDAgLTQuOTY2IDMuODk5IC05LjAzOCA4Ljc5NyAtOS4zMTUgYyAyLjA5MSAtNS4zNDkgNy4zNDUgLTguOTk1IDEzLjE1NCAtOC45OTUgYyAyLjU3NyAwIDUuMSAwLjcwNCA3LjI5NSAyLjAzNiBjIDAuNzA4IDAuNDMgMC45MzQgMS4zNTIgMC41MDQgMi4wNjEgYyAtMC40MjkgMC43MDggLTEuMzUxIDAuOTM1IC0yLjA2MSAwLjUwNCBjIC0xLjcyNiAtMS4wNDcgLTMuNzEgLTEuNjAxIC01LjczOSAtMS42MDEgYyAtNC44NzYgMCAtOS4yNTcgMy4yNjMgLTEwLjY1MSA3LjkzNiBjIC0wLjIgMC42NzEgLTAuODM4IDEuMTIgLTEuNTM3IDEuMDY3IGMgLTAuMDAyIDAgLTAuMTAyIC0wLjAwNyAtMC4xMDQgLTAuMDA3IGMgLTAuMTA5IC0wLjAwOCAtMC4yMTggLTAuMDE3IC0wLjMyOSAtMC4wMTcgYyAtMy4xNDcgMCAtNS43NjYgMi4zMSAtNi4yNSA1LjMyMyBoIDEwLjg2NSBjIDAuODI5IDAgMS41IDAuNjcxIDEuNSAxLjUgUyAxNS4yNjIgNDEuMzQ4IDE0LjQzMyA0MS4zNDggeiIgc3R5bGU9InN0cm9rZTogbm9uZTsgc3Ryb2tlLXdpZHRoOiAxOyBzdHJva2UtZGFzaGFycmF5OiBub25lOyBzdHJva2UtbGluZWNhcDogYnV0dDsgc3Ryb2tlLWxpbmVqb2luOiBtaXRlcjsgc3Ryb2tlLW1pdGVybGltaXQ6IDEwOyBmaWxsOiByZ2IoMCwwLDApOyBmaWxsLXJ1bGU6IG5vbnplcm87IG9wYWNpdHk6IDE7IiB0cmFuc2Zvcm09IiBtYXRyaXgoMSAwIDAgMSAwIDApICIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiAvPgoJPHBhdGggZD0iTSAzMC42ODcgMTQuMzU4IGMgLTMuOTU4IDAgLTcuMTc5IC0zLjIyIC03LjE3OSAtNy4xNzkgUyAyNi43MjkgMCAzMC42ODcgMCBzIDcuMTc5IDMuMjIxIDcuMTc5IDcuMTc5IFMgMzQuNjQ2IDE0LjM1OCAzMC42ODcgMTQuMzU4IHogTSAzMC42ODcgMyBjIC0yLjMwNCAwIC00LjE3OSAxLjg3NSAtNC4xNzkgNC4xNzkgcyAxLjg3NSA0LjE3OSA0LjE3OSA0LjE3OSBzIDQuMTc5IC0xLjg3NSA0LjE3OSAtNC4xNzkgUyAzMi45OTEgMyAzMC42ODcgMyB6IiBzdHlsZT0ic3Ryb2tlOiBub25lOyBzdHJva2Utd2lkdGg6IDE7IHN0cm9rZS1kYXNoYXJyYXk6IG5vbmU7IHN0cm9rZS1saW5lY2FwOiBidXR0OyBzdHJva2UtbGluZWpvaW46IG1pdGVyOyBzdHJva2UtbWl0ZXJsaW1pdDogMTA7IGZpbGw6IHJnYigwLDAsMCk7IGZpbGwtcnVsZTogbm9uemVybzsgb3BhY2l0eTogMTsiIHRyYW5zZm9ybT0iIG1hdHJpeCgxIDAgMCAxIDAgMCkgIiBzdHJva2UtbGluZWNhcD0icm91bmQiIC8+CjwvZz4KPC9nPgo8L3N2Zz4=">
                        </a>
                        <%--<img class="form__icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjxzdmcgaGVpZ2h0PSI1MHB4IiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCA1MCA1MCIgd2lkdGg9IjUwcHgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6c2tldGNoPSJodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2gvbnMiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj48dGl0bGUvPjxkZWZzLz48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGlkPSJQYWdlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIj48ZyBmaWxsPSIjMDAwMDAwIiBpZD0iTGlua2VkSW4iPjxwYXRoIGQ9Ik0yNSw1MCBDMzguODA3MTE5NCw1MCA1MCwzOC44MDcxMTk0IDUwLDI1IEM1MCwxMS4xOTI4ODA2IDM4LjgwNzExOTQsMCAyNSwwIEMxMS4xOTI4ODA2LDAgMCwxMS4xOTI4ODA2IDAsMjUgQzAsMzguODA3MTE5NCAxMS4xOTI4ODA2LDUwIDI1LDUwIFogTTI1LDQ3IEMzNy4xNTAyNjUxLDQ3IDQ3LDM3LjE1MDI2NTEgNDcsMjUgQzQ3LDEyLjg0OTczNDkgMzcuMTUwMjY1MSwzIDI1LDMgQzEyLjg0OTczNDksMyAzLDEyLjg0OTczNDkgMywyNSBDMywzNy4xNTAyNjUxIDEyLjg0OTczNDksNDcgMjUsNDcgWiBNMTQsMjAuMTE4MDQ3OSBMMTQsMzQuNjU4MTgzNCBMMTguNzEwMDg1MSwzNC42NTgxODM0IEwxOC43MTAwODUxLDIwLjExODA0NzkgTDE0LDIwLjExODA0NzkgWiBNMTYuNjY0Njk2MiwxMyBDMTUuMDUzNDA1OCwxMyAxNCwxNC4wODU4NjExIDE0LDE1LjUxMTUxMjIgQzE0LDE2LjkwNzYzMzEgMTUuMDIyMjcxMSwxOC4wMjQ3NjE0IDE2LjYwMzU1NTYsMTguMDI0NzYxNCBMMTYuNjMzNjU1NiwxOC4wMjQ3NjE0IEMxOC4yNzU5ODY3LDE4LjAyNDc2MTQgMTkuMjk4ODIyMiwxNi45MDc2MzMxIDE5LjI5ODgyMjIsMTUuNTExNTEyMiBDMTkuMjY4MjUxOSwxNC4wODU4NjExIDE4LjI3NTk4NjcsMTMgMTYuNjY0Njk2MiwxMyBaIE0zMC41NzY5MjEzLDIwLjExODA0NzkgQzI4LjA3NjE3NiwyMC4xMTgwNDc5IDI2Ljk1NjU1MDEsMjEuNTI5MzE5OSAyNi4zMzE0MTA4LDIyLjUxOTM1MjcgTDI2LjMzMTQxMDgsMjAuNDU5ODY0NCBMMjEuNjIwNzYxNCwyMC40NTk4NjQ0IEMyMS42ODI4NDI3LDIxLjgyNDIzNTYgMjEuNjIwNzYxNCwzNSAyMS42MjA3NjE0LDM1IEwyNi4zMzE0MTA4LDM1IEwyNi4zMzE0MTA4LDI2Ljg3OTU4ODcgQzI2LjMzMTQxMDgsMjYuNDQ1MDMyIDI2LjM2MTk4MTIsMjYuMDExNTM2OCAyNi40ODY1MTk5LDI1LjcwMDQwODQgQzI2LjgyNjkzMiwyNC44MzIyNiAyNy42MDIwMDY5LDIzLjkzMzQyMzMgMjguOTAzMjY3NCwyMy45MzM0MjMzIEMzMC42MDgzMzgxLDIzLjkzMzQyMzMgMzEuMjg5OTE0OSwyNS4yNjY3MjAyIDMxLjI4OTkxNDksMjcuMjIwNjMzMyBMMzEuMjg5OTE0OSwzNC45OTk2MTQgTDM1Ljk5OTgxMTksMzQuOTk5NjE0IEwzNiwyNi42NjI3NDQ2IEMzNiwyMi4xOTY2NDM5IDMzLjY3NjM3NDMsMjAuMTE4MDQ3OSAzMC41NzY5MjEzLDIwLjExODA0NzkgWiBNMzAuNTc2OTIxMywyMC4xMTgwNDc5IiBpZD0iT3ZhbC0xIi8+PC9nPjwvZz48L3N2Zz4=">--%>
                        <%--<img class="form__icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjxzdmcgaGVpZ2h0PSI1MHB4IiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCA1MCA1MCIgd2lkdGg9IjUwcHgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6c2tldGNoPSJodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2gvbnMiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj48dGl0bGUvPjxkZWZzLz48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGlkPSJQYWdlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIj48ZyBmaWxsPSIjMDAwMDAwIiBpZD0iVHdpdHRlciI+PHBhdGggZD0iTTI1LDUwIEMzOC44MDcxMTk0LDUwIDUwLDM4LjgwNzExOTQgNTAsMjUgQzUwLDExLjE5Mjg4MDYgMzguODA3MTE5NCwwIDI1LDAgQzExLjE5Mjg4MDYsMCAwLDExLjE5Mjg4MDYgMCwyNSBDMCwzOC44MDcxMTk0IDExLjE5Mjg4MDYsNTAgMjUsNTAgWiBNMjUsNDcgQzM3LjE1MDI2NTEsNDcgNDcsMzcuMTUwMjY1MSA0NywyNSBDNDcsMTIuODQ5NzM0OSAzNy4xNTAyNjUxLDMgMjUsMyBDMTIuODQ5NzM0OSwzIDMsMTIuODQ5NzM0OSAzLDI1IEMzLDM3LjE1MDI2NTEgMTIuODQ5NzM0OSw0NyAyNSw0NyBaIE0yNC42ODIyNTU0LDIwLjU1NDI5NzUgTDI0LjcyOTk0NCwyMS4zNzYxMDExIEwyMy45MzUxMzMzLDIxLjI3NTQ3MjEgQzIxLjA0MjAyMjUsMjAuODg5NzI3NSAxOC41MTQ1MjQ2LDE5LjU4MTU1MDQgMTYuMzY4NTM1OCwxNy4zODQ0ODM3IEwxNS4zMTkzODU3LDE2LjI5NDMzNjEgTDE1LjA0OTE1MDEsMTcuMDk5MzY4MSBDMTQuNDc2ODg2NCwxOC44OTM5MTg4IDE0Ljg0MjQ5OTMsMjAuNzg5MDk4NSAxNi4wMzQ3MTUzLDIyLjA2MzczMjYgQzE2LjY3MDU2MzgsMjIuNzY4MTM1NyAxNi41Mjc0OTc5LDIyLjg2ODc2NDcgMTUuNDMwNjU5MiwyMi40NDk0NzcyIEMxNS4wNDkxNTAxLDIyLjMxNTMwNTEgMTQuNzE1MzI5NiwyMi4yMTQ2NzYxIDE0LjY4MzUzNzEsMjIuMjY0OTkwNyBDMTQuNTcyMjYzNywyMi4zODIzOTEyIDE0Ljk1Mzc3MjgsMjMuOTA4NTk3OCAxNS4yNTU4MDA4LDI0LjUxMjM3MTkgQzE1LjY2OTEwMjQsMjUuMzUwOTQ3IDE2LjUxMTYwMTcsMjYuMTcyNzUwNSAxNy40MzM1ODIsMjYuNjU5MTI0MSBMMTguMjEyNDk2NSwyNy4wNDQ4Njg2IEwxNy4yOTA1MTYxLDI3LjA2MTY0MDEgQzE2LjQwMDMyODIsMjcuMDYxNjQwMSAxNi4zNjg1MzU4LDI3LjA3ODQxMTYgMTYuNDYzOTEzMSwyNy40MzA2MTMxIEMxNi43ODE4Mzc0LDI4LjUyMDc2MDggMTguMDM3NjM4MiwyOS42Nzc5OTQ0IDE5LjQzNjUwNSwzMC4xODExMzk0IEwyMC40MjIwNzAxLDMwLjUzMzM0MSBMMTkuNTYzNjc0NiwzMS4wNzAwMjkgQzE4LjI5MTk3NzYsMzEuODQxNTE4MSAxNi43OTc3MzM1LDMyLjI3NzU3NzIgMTUuMzAzNDg5NSwzMi4zMTExMjAyIEMxNC41ODgxNTk5LDMyLjMyNzg5MTYgMTQsMzIuMzk0OTc3NiAxNCwzMi40NDUyOTIyIEMxNCwzMi42MTMwMDcxIDE1LjkzOTMzOCwzMy41NTIyMTEzIDE3LjA2Nzk2OTIsMzMuOTIxMTg0MyBDMjAuNDUzODYyNiwzNS4wMTEzMzE5IDI0LjQ3NTYwNDYsMzQuNTQxNzI5OCAyNy40OTU4ODUxLDMyLjY4MDA5MzIgQzI5LjY0MTg3MzksMzEuMzU1MTQ0NSAzMS43ODc4NjI4LDI4LjcyMjAxODggMzIuNzg5MzI0MiwyNi4xNzI3NTA1IEMzMy4zMjk3OTU0LDI0LjgxNDI1ODkgMzMuODcwMjY2NywyMi4zMzIwNzY3IDMzLjg3MDI2NjcsMjEuMTQxMyBDMzMuODcwMjY2NywyMC4zNjk4MTEgMzMuOTE3OTU1MywyMC4yNjkxODIgMzQuODA4MTQzMiwxOS4zNDY3NDk0IEMzNS4zMzI3MTgzLDE4LjgxMDA2MTMgMzUuODI1NTAwOSwxOC4yMjMwNTg4IDM1LjkyMDg3ODIsMTguMDU1MzQzNyBDMzYuMDc5ODQwMywxNy43MzY2ODUyIDM2LjA2Mzk0NDIsMTcuNzM2Njg1MiAzNS4yNTMyMzczLDE4LjAyMTgwMDcgQzMzLjkwMjA1OTEsMTguNTI0OTQ1OCAzMy43MTEzMDQ1LDE4LjQ1Nzg1OTggMzQuMzc4OTQ1NSwxNy43MDMxNDIyIEMzNC44NzE3MjgxLDE3LjE2NjQ1NDEgMzUuNDU5ODg4LDE2LjE5MzcwNzEgMzUuNDU5ODg4LDE1LjkwODU5MTUgQzM1LjQ1OTg4OCwxNS44NTgyNzcgMzUuMjIxNDQ0OCwxNS45NDIxMzQ2IDM0Ljk1MTIwOTIsMTYuMDkzMDc4IEMzNC42NjUwNzczLDE2LjI2MDc5MzEgMzQuMDI5MjI4OCwxNi41MTIzNjU2IDMzLjU1MjM0MjQsMTYuNjYzMzA5MSBMMzIuNjkzOTQ2OSwxNi45NDg0MjQ2IEwzMS45MTUwMzI0LDE2LjM5NDk2NSBDMzEuNDg1ODM0NiwxNi4wOTMwNzggMzAuODgxNzc4NiwxNS43NTc2NDggMzAuNTYzODU0MywxNS42NTcwMTkgQzI5Ljc1MzE0NzQsMTUuNDIyMjE4IDI4LjUxMzI0MjgsMTUuNDU1NzYxIDI3Ljc4MjAxNjksMTUuNzI0MTA1IEMyNS43OTQ5OTAzLDE2LjQ3ODgyMjYgMjQuNTM5MTg5NCwxOC40MjQzMTY4IDI0LjY4MjI1NTQsMjAuNTU0Mjk3NSBDMjQuNjgyMjU1NCwyMC41NTQyOTc1IDI0LjUzOTE4OTQsMTguNDI0MzE2OCAyNC42ODIyNTU0LDIwLjU1NDI5NzUgWiBNMjQuNjgyMjU1NCwyMC41NTQyOTc1IiBpZD0iT3ZhbC0xIi8+PC9nPjwvZz48L3N2Zz4=">--%>
                    </div>
                    <span class="form__span">or create member account for registration</span>
                    <input class="form__input" name="userName" type="text" placeholder="Username" value="${rUserName}" required />
                    <input class="form__input" name="password" type="password" placeholder="Password" value="${empty rPassword2 ? "" : rPassword}" required=""/>
                    <input class="form__input" name="password2" type="password" placeholder="Confirm Password" required/>
                    <button class="form__button button ">SIGN UP</button>
                </form>
            </div>
            <div class="switch ${not empty rMessage ? "is-txr" : ""}" id="switch-cnt">
                <div class="switch__circle ${not empty rMessage ? "is-txr" : ""}"></div>
                <div class="switch__circle switch__circle--t ${not empty rMessage ? "is-txr" : ""}"></div>
                <div class="switch__container ${not empty rMessage ? "is-hidden" : ""}" id="switch-c1">
                    <h2 class="switch__title title">Hello Friend ! </h2>
                    <p class="switch__description description">Come register and start a new journey with us</p>
                    <button class="switch__button button switch-btn">SIGN UP</button> 
                </div>
                <div class="switch__container ${not empty rMessage ? "" : "is-hidden"}" id="switch-c2">
                    <h2 class="switch__title title">Welcome Back !</h2>
                    <p class="switch__description description">Login and see what you have been missing lately</p>
                    <button class="switch__button button switch-btn">SIGN IN</button>
                </div>
            </div>
        </div>
        <!-- partial -->
        <!--        <script type="text/javascript">
        
                    $(document).ready(function () {
        
                        $("#buttonCancel").click(function () {
                            history.go(-1);
                        });
                    });
        
                </script> -->
        <script  src="<c:url value="/js/login.js" />"></script>        
    </body>
</html>

