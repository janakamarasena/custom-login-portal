<%--
  ~ Copyright (c) 2018, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
  ~
  ~ WSO2 Inc. licenses this file to you under the Apache License,
  ~ Version 2.0 (the "License"); you may not use this file except
  ~ in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~  http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing,
  ~ software distributed under the License is distributed on an
  ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  ~ KIND, either express or implied.  See the License for the
  ~ specific language governing permissions and limitations
  ~ under the License.
  --%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <title>Login Portal</title>
</head>
<body style="font-family: 'Roboto', sans-serif;">
<%
    String status = request.getParameter("status");
    String statusMessage = request.getParameter("statusMsg");
    if (status == null || statusMessage == null) {
        status = "Authentication Error!";
        statusMessage = "Something went wrong during the authentication process. Please try signing in again.";
    }
    session.invalidate();
%>

<div>
    <div>
        <div>
            <b><%=status%></b>
        </div>
        <div>
            <p><%=statusMessage%></p>
        </div>
    </div>
</div>

</body>
</html>




