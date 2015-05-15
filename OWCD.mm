<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1430910036537" ID="ID_82117308" MODIFIED="1431674559497" STYLE="fork" TEXT="OWCD">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h1>
      AHA MindMap for OWCD certification
    </h1>
    <h3>
      [1Z0-899 - Java EE 6 Web Component Developer Certified Expert]
    </h3>
    <ul>
      <li>
        <a href="https://github.com/arnosthavelka/owcd-cert">AHA study examples</a>
      </li>
      <li>
        <a href="http://www.tutorialspoint.com/jsp/index.htm">JSP tutorial</a>
      </li>
      <li>
        <a href="http://docs.oracle.com/javaee/6/api/index.html?overview-summary.html">JavaEE 6 - API</a>
      </li>
    </ul>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="20"/>
<node CREATED="1430910125111" FOLDED="true" ID="ID_157709823" MODIFIED="1431674564158" POSITION="right" STYLE="fork" TEXT="Servlet">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1431011121659" ID="ID_1909152799" MODIFIED="1431672952581" STYLE="fork" TEXT="General">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h4>
      Loading resource from web-app
    </h4>
    <p>
      The path must begin with a &quot;/&quot; and is interpreted as relative to the current context root. For example, if the Web Application is stored in c:\tomcat\webapps\MyWebApp, the MyWebApp directory is the context root.
    </p>
    <pre style="padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">InputStream is = context.getResourceAsStream(&quot;/WEB-INF/data.zip&quot;);
    </pre>
    <h4>
      Registering servlet or filter
    </h4>
    <p>
      We can add a servlet or a filter dynamically only before the initialization of the servlet context is complete. Here, &quot;initialization of a servlet context&quot; means initialization of the web application. Initialization is not considered complete until contextInitialized() of all ServletContextListeners is complete. So you can register a servlet in contextInitialized() of a ServletContextListener.
    </p>
    <h4>
      Thread safe variables/properties
    </h4>
    <p>
      Only local objects and request attributes (for non-asynch servlets) are thread safe.
    </p>
    <h4>
      ServletResponse.isCommitted()
    </h4>
    <p>
      IllegalStateException is thrown upon calling the sendError() method if the headers have already been sent to the client i.e. if the response has been committed already. The ServletResponse.isCommitted() tells you whether the response has been committed or not.
    </p>
    <h4>
      Initialization failure (due to dependencies)
    </h4>
    <p>
      As per Section 2.3.2.1 of Servlet 3.0 Specification, during initialization, the servlet instance can throw an <b>UnavailableException</b>&#160; or a <b>ServletException</b>. In this case, the servlet must not be placed into active service and must be released by the servlet container. The destroy method is not called as it is considered unsuccessful initialization.&#160;&#160;A new instance may be instantiated and initialized by the container after a failed initialization.&#160;&#160;The exception to this rule is when an UnavailableException indicates a minimum time of unavailability, and the container must wait for the period to pass before creating and initializing a new servlet instance.&#160;&#160;It is important to look at javax.servlet.UnavailableException (It extends javax.servlet.ServletException ) as well in this regard:&#160;
    </p>
    <ul>
      <li>
        UnavailableException(java.lang.String msg) - Constructs a new exception with a descriptive message indicating that the servlet is permanently unavailable.&#160;&#160;
      </li>
      <li>
        UnavailableException(java.lang.String msg, int seconds) - Constructs a new exception with a descriptive message indicating that the servlet is temporarily unavailable and giving an estimate of how long it will be unavailable.&#160;&#160;In some cases, the servlet cannot make an estimate. For example, the servlet might know that a server it needs is not running, but not be able to report how long it will take to be restored to functionality. This can be indicated with a negative or zero value for the seconds argument.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1431503302404" ID="ID_778527702" MODIFIED="1431673556947" STYLE="fork" TEXT="Request URL">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h4>
      Definition
    </h4>
    <p>
      Request URL = protocol://host:port + requestURI (contextpath + servletpath + pathinfo)
    </p>
    <h4>
      Explanation
    </h4>
    <p>
      Request URL = http://localhost:8080 + requestURI (&quot;/test&quot; + &quot;/aaa/abc.a&quot; + &quot;foo=Aha&amp;hoo=true&quot;)
    </p>
    <h4>
      Example
    </h4>
    <p>
      Complete URL = <b>http://localhost:8080/test/aaa/abc.a?foo=Aha&amp;hoo=true</b>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1431501561841" ID="ID_349919807" MODIFIED="1431673761463" STYLE="fork" TEXT="Attributes &amp; Parameters">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h4>
      Parameters
    </h4>
    <p>
      Parameter can not be set in a request. Parameters can only be sent from the browser. Retrieving request parameters (from ServletRequest) is done by these methods:
    </p>
    <ul>
      <li>
        <i>getParameterNames</i>() - returns an <code>Enumeration</code>&#160;of <code>String</code>&#160; objects containing the names of the parameters contained in this request. If the request has no parameters, the method returns an empty <code>Enumeration</code>.
      </li>
      <li>
        <i>getParameter</i>(&quot;xyz&quot;) - returns the value of a request parameter as a <code>String</code>&#160;or <code>null</code>&#160;if the parameter does not exist.
      </li>
      <li>
        <i>getParameterValues</i>(&quot;xyz&quot;) - returns an array of <code>String</code>&#160; objects containing all of the values the given request parameter has, or <code>null</code>&#160;if the parameter does not exist.
      </li>
    </ul>
    <h4>
      Attributes
    </h4>
    <p>
      Attribute is used to share data between objects and can be set to:
    </p>
    <ul>
      <li>
        <b>ServletRequest</b>&#160;- The objects stored here will be discarded when this request ends. ie. the object you store in one request will not be available in the next. It is useful for storing temp. data if you are forwarding the request to another servlet or jsp.
      </li>
      <li>
        <b>HttpSession </b>- The objects stored here will be discarded only when this session expires and up till then you can access it from any place/request where this session is available. You should not store a lot of data in the session as this data does not go away quickly and will hog the memory. Only critical information like login id is stored in the scope.
      </li>
      <li>
        <b>ServletContext </b>- The objects stored here will be discarded only when this web application stops and up till then you can access it from any place/request irrespective of the session. Normally, initialization parameters are kept in this scope.
      </li>
    </ul>
    <p>
      Retrieving request attributes (from ServletRequest) is done by these methods:
    </p>
    <ul>
      <li>
        <i>getAttributesNames</i>() - returns an <code>Enumeration</code>&#160;of <code>String</code>&#160; objects containing the&#160;names of the attributes available to this request. This method returns an empty <code>Enumeration</code>&#160;if the request has no attributes available to it.
      </li>
      <li>
        <i>getAttribute</i>(&quot;xyz&quot;) - returns the value of the named attribute as an <code>Object</code>, or <code>null</code>&#160;if no attribute of the given name exists.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1431504247295" ID="ID_300429810" MODIFIED="1431672952581" STYLE="fork" TEXT="Cookies">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h4>
      Set cookie valid for 1 hour
    </h4>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">Cookie c = new Cookie(&quot;mycookie&quot;, &quot;some value&quot;);
c.setMaxAge(3600);
response.addCookie(c);</pre>
    <h4>
      Set cookie valid for some URL/path (listening to a servlet path of /showbook)
    </h4>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">c.setPath(request.getContextPath()+&quot;/showbook&quot;);</pre>
    <h4>
      Check for some cookie
    </h4>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">Cookie[] cs = request.getCookies();
for(Cookie c :&#160;&#160;cs){
    if(c.getName().equals(&quot;lastUserAction&quot;)){
        String value = c.getValue();
        //do something based on the value.
    }
}</pre>
    <h4>
      Remove all cookies
    </h4>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">Cookie[] cs = request.getCookies();
if(cs != null){
 &#160;&#160;&#160;for(Cookie c :&#160;&#160;cs){
 &#160;&#160;&#160;c.setMaxAge(0);
 &#160;&#160;&#160;response.addCookie(c);
 &#160;&#160;}
}</pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1431503587557" ID="ID_8425583" MODIFIED="1431672952581" STYLE="fork" TEXT="Asynchronous processing ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A servlet can work in both synchronous and asynchronous mode. The asynchronous servlet marked with <b>asyncSupported=true</b>&#160;can choose not to defer the processing and finish the processing in the same thread effectively working as a synchronous processor.
    </p>
    <h4>
      Annotation
    </h4>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">@WebServlet(value = &quot;/async&quot;, asyncSupported = true)</pre>
    <h4>
      web.xml:
    </h4>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;servlet&gt;
    &lt;servlet-name&gt;AsyncTestServlet&lt;/servlet-name&gt;
    &lt;servlet-class&gt;com.enthuware.AsyncTestServlet&lt;/servlet-class&gt;
    &lt;async-supported&gt;true&lt;/async-supported&gt;
&lt;/servlet&gt;</pre>
    <h4>
      To dispatch a request from an asynchronous thread
    </h4>
    <ul>
      <li>
        Use methods complete() or dispatch() in AsyncContext
      </li>
      <li>
        There is no getServletContext() method in AsyncContext.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1431501991210" ID="ID_1243161340" MODIFIED="1431672952581" STYLE="fork" TEXT="RequestDispatcher">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The&#160;<code>RequestDispatcher</code>&#160;object that acts as a wrapper for the resource located at the given path. A <code>RequestDispatcher</code>&#160;object can be used to forward a request to the resource or to include the resource in a response. The resource can be dynamic or static.
    </p>
    <p>
      
    </p>
    <p>
      The object is used in these ways:
    </p>
    <ul>
      <li>
        <code>ServletContext.getRequestDispatcher </code>- the pathname is absolute and must begin with a &quot;/&quot; and is interpreted as relative to the current context root. Use getContext to obtain a RequestDispatcher for resources in foreign contexts. This method returns null if the ServletContext cannot return a RequestDispatcher.
      </li>
      <li>
        <code>ServletRequest.getRequestDispatcher </code>-&#160;&#160;the pathname is relative. If the path begins with a &quot;/&quot; it is interpreted as relative to the current context root. This method returns <code>null</code>&#160;&#160;if the servlet container cannot return a <code>RequestDispatcher</code>.
      </li>
      <li>
        <code>ServletRequest.</code><font face="monospace">getNamedDispatcher</font><code>&#160;</code>- The method takes a String argument indicating the name of a servlet known to the <font face="monospace">ServletContext</font>. If a servlet is found, it is wrapped with a <font face="monospace">RequestDispatcher</font>&#160;object and the object is returned. If no servlet is associated with the given name, the method must return <font face="monospace">null</font>.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1431007282333" ID="ID_934579683" MODIFIED="1431672952581" STYLE="fork" TEXT="Registration Interfaces ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <font face="monospace"><b>javax.servlet.Registration</b>&#160;</font>:&#160;&#160;Allows adding init parameters using <font face="monospace">setInitParameter</font>&#160;and <font face="monospace">setInitParameters</font>.<br />All Known Subinterfaces: <font face="monospace">FilterRegistration, FilterRegistration.Dynamic, Registration.Dynamic, ServletRegistration, ServletRegistration.Dynamic</font>
      </li>
      <li>
        <font face="monospace"><b>javax.servlet.ServletRegistration</b></font>&#160;extends <font face="monospace">javax.servlet.Registration</font>: Provides <font face="monospace">addMapping</font>&#160;and <font face="monospace">addMappings</font><br />All Known Subinterfaces:<font face="monospace">&#160;ServletRegistration.Dynamic</font>
      </li>
      <li>
        <font face="monospace"><b>javax.servlet.Registration.Dynamic</b></font>&#160;extends <font face="monospace">javax.servlet.Registration</font>:&#160;&#160;Provides <font face="monospace">setAsyncSupported</font><br />All Known Subinterfaces: <font face="monospace">FilterRegistration.Dynamic, ServletRegistration.Dynamic</font>
      </li>
      <li>
        <font face="monospace"><b>javax.servlet.ServletRegistration.Dynamic</b></font>&#160;extends <font face="monospace">ServletRegistration</font>&#160;:&#160;&#160;<font face="monospace">setLoadOnStartup, setMultipartConfig,&#160;&#160;setRunAsRole(java.lang.String roleName), setServletSecurity(ServletSecurityElement constraint)</font>
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1431502880138" ID="ID_299698878" MODIFIED="1431672952582" STYLE="fork" TEXT="Supported annotations">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The Servlet 3.0 specification (Section 15.5) specifies all the annotations that must be supported by the servlet container for Servlet, Filter, or various Listener classes. The following is the list for your convenience:
    </p>
    <ul>
      <li>
        @DeclareRoles
      </li>
      <li>
        @EJB
      </li>
      <li>
        @EJBs
      </li>
      <li>
        @Resource
      </li>
      <li>
        @PersistenceContext
      </li>
      <li>
        @PersistenceContexts
      </li>
      <li>
        @PersistenceUnit
      </li>
      <li>
        @PersistenceUnits
      </li>
      <li>
        @PostConstruct
      </li>
      <li>
        @PreDestroy
      </li>
      <li>
        @Resources
      </li>
      <li>
        @RunAs
      </li>
      <li>
        @WebServiceRef
      </li>
      <li>
        @WebServiceRefs
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1431504053510" ID="ID_1352423099" MODIFIED="1431672952582" STYLE="fork" TEXT="MultipartConfig">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>@MultipartConfig</b>&#160;annotation, when specified on a Servlet, indicates that the request it expects is of type mime/multipart. The HttpServletRequest object of the corresponding servlet MUST make available the mime attachments via the <b>getParts</b>&#160;and <b>getPart</b>&#160; methods to iterate over the various mime attachments.
    </p>
    <p>
      
    </p>
    <p>
      @MultipartConfig annotation has the following attributes&#160;&#160;(All are optional):&#160;
    </p>
    <ul>
      <li>
        int <b>fileSizeThreshold </b>- The size threshold after which the file will be written to disk
      </li>
      <li>
        java.lang.String <b>location </b>- The directory location where files will be stored
      </li>
      <li>
        long <b>maxFileSize</b>&#160;- The maximum size allowed for uploaded files.
      </li>
      <li>
        long <b>maxRequestSize</b>&#160;- The maximum size allowed for multipart/form-data requests
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1431526945196" ID="ID_1730819538" MODIFIED="1431672952582" STYLE="fork" TEXT="Forward">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    The container makes the following attributes available in the request when a request is forwarded to another servlet. These attributes reflect the original values of the request:

    <ul>
      <li>
        <font face="monospace">javax.servlet.forward.request_uri</font>
      </li>
      <li>
        <font face="monospace">javax.servlet.forward.context_path</font>
      </li>
      <li>
        <font face="monospace">javax.servlet.forward.servlet_path</font>
      </li>
      <li>
        <font face="monospace">javax.servlet.forward.path_info</font>
      </li>
      <li>
        <font face="monospace">javax.servlet.forward.query_string</font><br />
      </li>
    </ul>
    <p>
      Your servlet can use<font face="monospace">&#160;request.getAttribute(&quot;javax.servlet.forward.request_uri&quot;) </font>to get the URI that was requested by the user.<br /><br />However, if the forwarded servlet was obtained by using the <font face="monospace">getNamedDispatcher</font>&#160;method, these attributes are not be set. How can the original requestion information be obtained in this situation is not clear from the specification.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1430996388802" FOLDED="true" ID="ID_655668538" MODIFIED="1431674751867" POSITION="right" STYLE="fork" TEXT="Filter">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1430996392395" ID="ID_200801889" MODIFIED="1431674701094" STYLE="fork" TEXT="Anotation">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h4>
      Attributes
    </h4>
    <table>
      <tr>
        <th style="background-color: gray; width: 150px">
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b><font color="white">Name</font></b></strong>
          </p>
        </th>
        <th style="background-color: gray; width: 150px">
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b><font color="white">Type</font></b></strong>
          </p>
        </th>
        <th style="background-color: gray; width: 150px">
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b><font color="white">Required</font></b></strong>
          </p>
        </th>
        <th style="background-color: gray; width: 150px">
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b><font color="white">Description</font></b></strong>
          </p>
        </th>
      </tr>
      <tr>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>filterName</b></strong>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <i>String</i>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Optional
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Name of the filter.
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>value</b></strong>
          </p>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            or
          </p>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>urlPatterns</b></strong>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <i>String[]</i>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>Required</b></strong>
          </p>
        </td>
        <td valign="top" width="307">
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Specify one or more URL patterns to which the filter applies. Either of attribute can be used, but not both.
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>dispatcherTypes</b></strong>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <i>DispatcherType[]</i>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Optional
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Specify types of dispatcher to which the filter applies. Default is<font face="Courier New">javax.servlet.DispatcherType.REQUEST (FORWARD|INCLUDE|REQUEST|ASYNC|ERROR)</font>
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>servletNames</b></strong>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <i>String[]</i>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Optional
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Specify names of servlets to which the filter applies.
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>displayName</b></strong>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <i>String</i>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Optional
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Display name of the filter.
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>description</b></strong>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <i>String</i>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Optional
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Description of the filter.
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>asyncSupported</b></strong>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <i>boolean</i>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Optional
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Specify whether the filter supports asynchronous operation mode. Default is false.
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>initParams</b></strong>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <i>WebInitParam[]</i>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Optional
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Specify one or more initialization parameters of the filter. Each parameter is specified by<font color="rgb(9, 81, 151)" face="Courier New"><a href="http://www.codejava.net/java-ee/servlet/webinitparam-annotation-examples" style="color: rgb(9, 81, 151); text-decoration: none">@WebInitParam</a></font>&#160;annotation type.
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>smallIcon</b></strong>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <i>String</i>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Optional
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Specify name of the small icon of the filter.
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <strong style="font-weight: bold"><b>largeIcon</b></strong>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            <i>String</i>
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Optional
          </p>
        </td>
        <td>
          <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; line-height: normal">
            Specify name of the large icon of the filter.
          </p>
        </td>
      </tr>
    </table>
    <h4>
      Example
    </h4>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">@WebFilter(value = &quot;/greetingA&quot;, initParams = @WebInitParam(name = &quot;name&quot;, value = &quot;Isabelle&quot;))
public class GreetingFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
        name  = config.getInitParameter(&quot;name&quot;);
    }
}</pre>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1430996397938" ID="ID_1334963314" MODIFIED="1431672952578" STYLE="fork" TEXT="XML">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre style="padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;filter&gt;
    &lt;filter-name&gt;GreetingFilterX&lt;/filter-name&gt;
    &lt;filter-class&gt;com.github.aha.cert.filter.GreetingFilter&lt;/filter-class&gt;
&lt;/filter&gt;
&lt;filter-mapping&gt;
    &lt;filter-name&gt;GreetingFilterX&lt;/filter-name&gt;
    &lt;url-pattern&gt;/greetingX&lt;/url-pattern&gt;
&lt;/filter-mapping&gt;
  </pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1430996400139" ID="ID_258575327" MODIFIED="1431672952578" STYLE="fork" TEXT="Filter mapping &amp; registration">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      We can add a filter dynamically only before the initialization of the servlet context is complete. Here, &quot;initialization of a servlet context&quot; means initialization of the web application. Initialization is not considered complete until contextInitialized() of all ServletContextListeners is complete. So you can register a servlet in contextInitialized() of a ServletContextListener.
    </p>
    <ul>
      <li>
        A url-pattern must start with a / if it is not an extension mapping ( eg. *.doc )
      </li>
      <li>
        A filter can be specified for either a servlet (e.g. &lt;servlet-name&gt;RedServlet&lt;/servlet-name&gt;) or for a url-pattern (e.g. &lt;servlet-name&gt;RedServlet&lt;/servlet-name&gt;)
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1430910130167" FOLDED="true" ID="ID_761648779" MODIFIED="1431680481952" POSITION="right" STYLE="fork" TEXT="web.xml">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1430997168542" ID="ID_1947129208" MODIFIED="1431674770011" STYLE="fork" TEXT="Basics">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h4>
      First elements:
    </h4>
    <ul>
      <li>
        description (descriptionGroup)
      </li>
      <li>
        distributable
      </li>
      <li>
        context-param
      </li>
      <li>
        filter + filter-mapping
      </li>
      <li>
        listener
      </li>
      <li>
        servlet + servlet-mapping
      </li>
      <li>
        session-config
      </li>
      <li>
        mime-mapping
      </li>
      <li>
        welcome-file-list
      </li>
      <li>
        error-page
      </li>
      <li>
        jsp-config
      </li>
      <li>
        security-constraint
      </li>
      <li>
        login-config
      </li>
      <li>
        security-role
      </li>
      <li>
        JNDI (jndiEnvironmentRefsGroup)
      </li>
      <li>
        message-destination
      </li>
      <li>
        locale-encoding-mapping-list
      </li>
    </ul>
    <h4>
      Attributes:
    </h4>
    <ul>
      <li>
        metadata-complete - when web.xml (or web-fragment.xml) specifies meta-complete=true than the container will not look for deployment information in the annotations. Only the mapping defined in web-fragment.xml will be used.
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1430998241378" ID="ID_459968622" MODIFIED="1431672952577" STYLE="fork" TEXT="Precedence rules">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Deployment information in web.xml, web-fragment.xml, and annotations
    </p>
    <ul>
      <li>
        Web.xml always takes precedence over annotations.
      </li>
      <li>
        Web.xml always takes precedence over web-fragment.xml.
      </li>
      <li>
        Before processing annotations, all web-fragments are merged into web.xml.
      </li>
      <li>
        If web.xml specifies metadata-complete=true, then no class is parsed for annotations.
      </li>
      <li>
        If any web-fragment.xml specifies metadata-complete=true, only annotations specified in classes contained in that web fragment are ignored.
      </li>
      <li>
        Merge is always additive as long as the result does not violate any multiplicity constraint. For example, if you have an two different init-parameters defined in two places, both will be added because one can have any number of init-parameters.
      </li>
      <li>
        Information in Web.xml always supersedes anything else. For example, if you have the same init-parameters defined with different values in web.xml as well as a web-fragment.xml, the value specified in web.xml will be used.
      </li>
      <li>
        Contradictory information in two web-fragments, produces an error and application fails to deploy. For example, if you have an same init-parameters defined with different values in two different web-fragment.xml but no value in web.xml, it will cause an error
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1430997507665" FOLDED="true" ID="ID_1907122268" MODIFIED="1431675257723" STYLE="fork" TEXT="Security">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        The concept of the declarative security model does not apply in case of include and forward actions. Thus, an unprotected resource (e.g. unprotected JSP page includes protected JSP) can have a call to a protected resource without having the user to log in.
      </li>
      <li>
        The application data is secured by factors &quot;data integrity&quot; and &quot;confidentiality&quot;.
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node CREATED="1430999414010" ID="ID_1844018794" MODIFIED="1431672952577" STYLE="fork" TEXT="Annotation">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <b>@ServletSecurity </b>- basic annotation to define servlet security (constraint)

        <ul>
          <li>
            <b>value </b>: The HttpConstraint that defines the protection to be applied to all HTTP methods that are NOT represented in the array returned by httpMethodConstraints. Default value is empty HttpConstraint.
          </li>
          <li>
            <b>httpMethodConstraints</b>:&#160;&#160;the array of HTTP method specific constraints.
          </li>
        </ul>
      </li>
      <li>
        <b>@HttpConstraint</b>&#160;- representsthe security constraint to be applied to all HTTP protocol methods for which a corresponding @HttpMethodConstraint does NOT occur within the @ServletSecurity annotation.

        <ul>
          <li>
            <b>value</b>:&#160;&#160;The default authorization semantic that applies (only) when rolesAllowed returns an-empty array. Default is PERMIT
          </li>
          <li>
            <b>rolesAllowed </b>: An array containing the names of the authorized roles. Default is empty string array
          </li>
          <li>
            <b>transportGuarantee </b>: The data protection requirements that must be satisfied by the connections on which requests arrive. Default is NONE.
          </li>
        </ul>
      </li>
      <li>
        <b>@HttpMethodConstraint</b>&#160;- represents security constraints on specific HTTP protocol messages.&#160;

        <ul>
          <li>
            <b>value </b>(This is required): The HTTP protocol method name&#160;
          </li>
          <li>
            <b>emptyRoleSemantic </b>: The default authorization semantic that applies (only) when rolesAllowed returns an empty array. Default is PERMIT
          </li>
          <li>
            <b>rolesAllowed </b>: An array containing the names of the authorized roles. Default is {}
          </li>
          <li>
            <b>transportGuarantee </b>: The data protection requirements that must be satisfied by the connections on which requests arrive. Default is NONE
          </li>
        </ul>
      </li>
    </ul>
    <h4>
      Examples:
    </h4>
    <pre style="padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">@WebServlet(&quot;/restricted/helloA&quot;)
@ServletSecurity(@HttpConstraint(rolesAllowed = &quot;Manager&quot;, transportGuarantee = TransportGuarantee.NONE))
public class RestrictedHelloServlet extends HttpServlet {</pre>
    or

    <pre style="padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">@WebServlet(&quot;/restricted/helloA&quot;)
@ServletSecurity(httpMethodConstraints = @HttpMethodConstraint(value = &quot;GET&quot;, rolesAllowed = &quot;Manager&quot;, transportGuarantee = TransportGuarantee.NONE))
public class RestrictedHelloServlet extends HttpServlet {</pre>
    <p>
      The following are some examples from Servlet 3.0 Specification. You should try to understand these because there are questions in the exam in similar pattern.
    </p>
    <ul>
      <li>
        @ServletSecurity : This implies all users are permitted to access all HTTP methods because the value of value parameter is an empty @HttpConstraint, which permits all to access all HTTP methods.&#160;&#160;&#160;
      </li>
      <li>
        @ServletSecurity(@HttpConstraint(transportGuarantee =TransportGuarantee.CONFIDENTIAL)) : For all HTTP methods, no auth-constraint, confidential transport required&#160;&#160;
      </li>
      <li>
        @ServletSecurity(@HttpConstraint(EmptyRoleSemantic.DENY)) : For all HTTP methods, all access denied&#160;&#160;
      </li>
      <li>
        @ServletSecurity(@HttpConstraint(rolesAllowed = &quot;R1&quot;)) : For all HTTP methods, auth-constraint requiring membership in Role R1&#160;&#160;
      </li>
      <li>
        @ServletSecurity((httpMethodConstraints = { @HttpMethodConstraint(value = &quot;GET&quot;, rolesAllowed = &quot;R1&quot;), @HttpMethodConstraint(value = &quot;POST&quot;, rolesAllowed = &quot;R1&quot;, transportGuarantee = TransportGuarantee.CONFIDENTIAL) }) : For All HTTP methods except GET and POST, no constraints; for methods GET and POST, auth-constraint requiring membership in Role R1; for POST, confidential transport required&#160;&#160;
      </li>
      <li>
        @ServletSecurity(value = @HttpConstraint(rolesAllowed = &quot;R1&quot;), httpMethodConstraints = @HttpMethodConstraint(&quot;GET&quot;)) : For all HTTP methods except GET auth-constraint requiring membership in Role R1; for GET, no constraints&#160;&#160;
      </li>
      <li>
        @ServletSecurity(value = @HttpConstraint(rolesAllowed = &quot;R1&quot;), httpMethodConstraints = @HttpMethodConstraint(value=&quot;TRACE&quot;, emptyRoleSemantic = EmptyRoleSemantic.DENY)) : or all HTTP methods except TRACE, auth-constraint requiring membership in Role R1; for TRACE, all access denied
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1430999367760" ID="ID_550085136" MODIFIED="1431672952577" STYLE="fork" TEXT="XML">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre style="padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;security-constraint&gt;
&#x9;&lt;web-resource-collection&gt;
&#x9;&#x9;&lt;web-resource-name&gt;restricted area&lt;/web-resource-name&gt;
&#x9;&#x9;&lt;url-pattern&gt;/restricted/helloX&lt;/url-pattern&gt;
&#x9;&#x9;&lt;http-method&gt;GET&lt;/http-method&gt;
&#x9;&lt;/web-resource-collection&gt;
&#x9;&lt;auth-constraint&gt;
&#x9;&#x9;&lt;role-name&gt;Manager&lt;/role-name&gt;
&#x9;&lt;/auth-constraint&gt;
&#x9;&lt;user-data-constraint&gt;
&#x9;&#x9;&lt;transport-guarantee&gt;NONE&lt;/transport-guarantee&gt;
&#x9;&lt;/user-data-constraint&gt;
&lt;/security-constraint&gt;
&lt;login-config&gt;
&#x9;&lt;auth-method&gt;BASIC&lt;/auth-method&gt;
&#x9;&lt;realm-name&gt;OWCD restricted area&lt;/realm-name&gt;
&lt;/login-config&gt;
&lt;security-role&gt;
&#x9;&lt;role-name&gt;Manager&lt;/role-name&gt;
&lt;/security-role&gt;
    </pre>
  </body>
</html></richcontent>
<node CREATED="1430998394447" ID="ID_387314499" MODIFIED="1431675172403" STYLE="fork" TEXT="Element &lt;security-constraint&gt;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Description: This is a top level tag and is used to associate security constraints with one or more resources.
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node CREATED="1430998436190" ID="ID_1330289830" MODIFIED="1431672952577" STYLE="fork" TEXT="Element &lt;web-resource-collection&gt;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Description: (1 or More) The collection of web resource to which these security constraints have to be applied.
      </li>
      <li>
        HTTP methods: can be allowed by element &lt;http-method&gt; (e.g. GET, POST, etc. or &quot;*&quot; for all) or denied by element &lt;http-method-omission&gt;
      </li>
      <li>
        URL pattern:

        <ul>
          <li>
            start with &quot;/&quot; when defining path or
          </li>
          <li>
            end with mask (e.g. *.abc) - then starting &quot;/&quot; is not used
          </li>
        </ul>
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1430997640143" ID="ID_1973592386" MODIFIED="1431672952577" STYLE="fork" TEXT="Element &lt;auth-constraint&gt;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Description: (0 or 1) indicates the user roles that should be permitted access to this resource collection.
      </li>
      <li>
        The special role name &#8220;*&#8221; is a shorthand for all role names defined in the deployment descriptor. The special role name &#8220;**&#8221; is a shorthand for any authenticated user independent of role. When the special role name &#8220;**&#8221; appears in an authorization constraint, it indicates that any authenticated user, independent of role, is authorized to perform the constrained requests.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1430998046558" ID="ID_708332595" MODIFIED="1431672952577" STYLE="fork" TEXT="Element &lt;user-data-constraint&gt;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Description: (0 or 1) It indicates &quot;how&quot; the data communicated between client and server should be protected
      </li>
      <li>
        transport-guarantee: NONE, CONFIDENTIAL or INTEGRAL (the last 2 normally imply that SSL has to be used)
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1430998768322" ID="ID_1030928743" MODIFIED="1431672952577" STYLE="fork" TEXT="Element &lt;login-config&gt;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Description: indicates authentication method
      </li>
      <li>
        Methods: BASIC, DIGEST, FORM, CLIENT-CERT
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1430998985763" ID="ID_1738997698" MODIFIED="1431672952577" STYLE="fork" TEXT="Element &lt;security-role&gt;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Definition: A security role element is used to define the security roles that will comprise the entire set of security roles used in the application. The sub-element role-name designates the name of the security role. All role names that are used in an application should be specified in its deployment descriptor.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1430998992834" ID="ID_1390899959" MODIFIED="1431672952577" STYLE="fork" TEXT="Element &lt;security-role-ref&gt;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Description: The security role reference element is used in conjunction with the HttpServletRequest.isUserInRole(String role) programmatic security option. When a call is made to isUserInRole, the caller identity is tested for membership in this role. If a security-role-ref has been defined, the caller is tested for membership in the role linked, or mapped, to the role name.
      </li>
      <li>
        Element role-name: defines application role (known in the application)
      </li>
      <li>
        Element role-link: defines role in the server
      </li>
    </ul>
    <h4>
      Example:
    </h4>
    <pre style="padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;security-role-ref&gt;
    &lt;role-name&gt;MY_GROUP_NAME&lt;/role-name&gt;
    &lt;role-link&gt;REGISTERED_USER&lt;/role-link&gt;
&lt;/security-role-ref&gt;</pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1431000092067" ID="ID_1282216341" MODIFIED="1431672952577" STYLE="fork" TEXT="Form based security">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Definition:
    </p>
    <pre style="padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;login-config&gt;
 &#160;&#160;&lt;auth-method&gt;FORM&lt;/auth-method&gt;
 &#160;&#160;&lt;form-login-config&gt;
 &#160;&#160;&#160;&#160;&lt;form-login-page&gt;/formlogin.html&lt;/form-login-page&gt;
 &#160;&#160;&#160;&#160;&lt;form-error-page&gt;/formerror.html&lt;/form-error-page&gt;
 &#160;&#160;&lt;/form-login-config&gt;
&lt;/login-config&gt;    </pre>
    <p>
      Usage:
    </p>
    <pre style="padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;form method=&quot;POST&quot; action=&quot;j_security_check&quot;&gt;
&#160;&#160;&#160; &lt;input type=&quot;text&quot; name=&quot;j_username&quot;&gt;
 &#160;&#160;&#160;&lt;input type=&quot;password&quot; name=&quot;j_password&quot;&gt;
 &#160;&#160;&#160;&lt;input type=&quot;submit&quot; value=&quot;OK&quot;&gt;
&lt;/form&gt;</pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1431000275200" ID="ID_106405380" MODIFIED="1431672952577" STYLE="fork" TEXT="Resources">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <b>env-entry </b>is used to specify simple initialization parameter type of things. They can only be String or any other primitive.
      </li>
      <li>
        <b>ejb-ref </b>and <b>ejb-local-ref </b>are used to specify referenced to a remote or local EJBs.
      </li>
      <li>
        <b>resource-ref </b>is used to specify datasource and Topic and Queue connection factories.
      </li>
      <li>
        <b>resource-env-ref </b>is used to specify Topics and Queues.
      </li>
    </ul>
    <pre style="padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;web-app&gt;
 &#160;&#160;&#160;....
 &#160;&#160; &#160;&lt;env-entry&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;env-entry-name&gt;DefaultTaxRate&lt;/env-entry-name&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;env-entry-type&gt;java.lang.String&lt;/env-entry-type&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;env-entry-value&gt;25&lt;/env-entry-value&gt;
 &#160;&#160;&#160;&#160;&lt;/env-entry&gt;
 &#160;&#160;&#160;&#160;&lt;ejb-local-ref&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;ejb-ref-name&gt;TellerBean&lt;/ejb-ref-name&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;ejb-ref-type&gt;Session&lt;/ejb-ref-type&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;local-home&gt;com.enthu.ejbplus.TellerHome&lt;/local-home&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;local&gt;com.enthu.ejbplus.TellerLocal&lt;/local&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;ejb-link&gt;ejb/Teller&lt;/ejb-link&gt;
 &#160;&#160;&#160;&#160;&lt;/ejb-local-ref&gt;
 &#160;&#160;&#160;&#160;&lt;resource-ref&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;res-ref-name&gt;MyDatasource&lt;/res-ref-name&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;res-type&gt;javax.sql.DataSource&lt;/res-type&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;res-auth&gt;Container&lt;/res-auth&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;res-sharing-scope&gt;Shareable&lt;/res-sharing-scope&gt;
 &#160;&#160;&#160;&#160;&lt;/resource-ref&gt;
 &#160;&#160;&#160;&#160;&lt;resource-ref&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;res-ref-name&gt;MyTopicConnectionFactory&lt;/res-ref-name&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;res-type&gt;javax.jms.ConnectionFactory&lt;/res-type&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;res-auth&gt;Container&lt;/res-auth&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;res-sharing-scope&gt;Shareable&lt;/res-sharing-scope&gt;
 &#160;&#160;&#160;&#160;&lt;/resource-ref&gt;
 &#160;&#160;&#160;&#160;&lt;resource-env-ref&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;resource-env-ref-name&gt;MyTopic&lt;/resource-env-ref-name&gt;
 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;resource-env-ref-type&gt;javax.jms.Topic&lt;/resource-env-ref-type&gt;
 &#160;&#160;&#160;&#160;&lt;/resource-env-ref&gt;
&lt;/web-app&gt;</pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1431000524427" ID="ID_1843986136" MODIFIED="1431675339014" STYLE="fork" TEXT="Listeners">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h4>
      @WebListener
    </h4>
    <p>
      Any class annotated with <b>@WebListener</b>&#160;must implement one or more of these interfaces:
    </p>
    <ul>
      <li>
        ServletContextListener
      </li>
      <li>
        ServletContextAttributeListener
      </li>
      <li>
        ServletRequestListener
      </li>
      <li>
        ServletRequestAttributeListener
      </li>
      <li>
        HttpSessionListener
      </li>
      <li>
        HttpSessionAttributeListener
      </li>
    </ul>
    <h4>
      Precedence
    </h4>
    <p>
      The listeners are invoked in the order of their appearance in web.xml. The &quot;destroyed&quot; method is invoked in the reverse order.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1431000556154" ID="ID_1452735659" MODIFIED="1431672952577" STYLE="fork" TEXT="Context params">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Element &lt;context-param&gt; is used to define the initialization parameters for the web application as a whole. They are read only and are thus thread safe. You cannot add or modify the parameters using any of the set methods after a servlet has been initialized.&#160;
    </p>
    <p>
      
    </p>
    <p>
      However, before the initialization of the servlet context, you can add new context parameters to the ServletContext object programatically using setInitParameter method
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#338800" CREATED="1431010496436" ID="ID_857843825" MODIFIED="1431680121997" TEXT="TagLib">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The &lt;taglib&gt; element of web.xml ties the uri given in the jsp page with either the actual TLD file or the jar file containing the TLD file. &lt;taglib-uri&gt; should be same as the value of the uri attribute of the taglib directive while the &lt;taglib-location&gt; should point to the TLD file or the jar file. If the value of the &lt;taglib-location&gt; starts with a /, then the container tries to locate the file relative to the document root. However, if it does not start with a /, then the container adds /WEB-INF/ to the value and then tries to locate the file.
    </p>
    <p>
      The following prefix values are reserved: jsp, jspx, java, javax, sun, servlet, and sunw. TLD for each tag library must be located in META-INF or a subdirectory of META-INF directory of the jar file.
    </p>
    <p>
      &lt;body-content&gt;tagdependent&lt;/body-content&gt; - Since the body content of the tag is tagdependent, the body of the tag will not be processed by the JSP engine. It must be processed by the tag itself.
    </p>
    <h4>
      Usage till&#160;webapp 2.4 (from 2.5 not necessary):
    </h4>
    <pre style="padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;taglib&gt;
    &lt;taglib-uri&gt;/mylibrary&lt;/taglib-uri&gt;&#160;&#160; // You can use 'mylibrary' in the JSP taglib directive : &lt;%@taglib uri=&quot;/mylibrary&quot; prefix==&quot;mylib&quot;%&gt;
    &lt;taglib-location&gt;/WEB-INF/tlds/MYLibrary.tld&lt;/taglib-location&gt; // This is the location of tld file for the tag library.
&lt;/taglib&gt;</pre>
    <h4>
      Usage:
    </h4>
    <p>
      Java classes implementing the tag library can be put into webapp in 2 ways:&#160;
    </p>
    <ul>
      <li>
        Make a jar file of all the classes and include *.tld files in META-INF directory (or its subdirectories) inside the jar. You can drop this jar file in WEB-INF/lib of the webapp.&#160;&#160;In this case, you need not specify any &lt;taglib&gt; tag in the web.xml. The servlet container will automatically inspect the *.tld file in the jar file and for each &lt;uri&gt; element in the tld, it will add &lt;taglib&gt; tag in web.xml.&#160;
      </li>
      <li>
        Keep loose (or unbundled) classes in WEB-INF/classes. You can keep the *.tld in WEB-INF (or any sub directory of WEB-INF) where the webapp can access it. As per JSP Section 7.3.4, the container automatically associates the uri specified in the tld file with that tld file. So you don't have to explicitly specify that in the &lt;taglib-location&gt;.
      </li>
      <li>
        For a tag to take any number of arguments, it must implement javax.servlet.jsp.tagext.DynamicAttributes interface.
      </li>
      <li>
        //tag/body-content#tagdependent (&lt;body-content&gt;tagdependent/&lt;body-content&gt;) - since the body content of the tag is tagdependent, the body of the tag will not be processed by the JSP engine. It must be processed by the tag itself.
      </li>
    </ul>
    <h4>
      Examples:
    </h4>
    <pre style="padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;%@taglib uri=&quot;/stats&quot; prefix=&quot;stats&quot; %&gt;
&lt;%@taglib tagdir=&quot;/WEB-INF/tags/stats&quot; prefix=&quot;stats&quot; %&gt;</pre>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1431524738343" ID="ID_525420565" MODIFIED="1431675422754" STYLE="fork" TEXT="web-fragments">
<node CREATED="1431440775273" ID="ID_1430989942" MODIFIED="1431672952577" STYLE="fork" TEXT="JAR library">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      If a framework is packaged as a jar file, than:
    </p>
    <ul>
      <li>
        The&#160;metadata information in the form of deployment descriptor (which must be named <font face="monospace">web-fragment.xml</font>) then the <font face="monospace">web-fragment.xml</font>&#160;descriptor must be in the <font face="monospace">META-INF</font>/ directory of the jar file.<br />
      </li>
      <li>
        Files stored under <font face="monospace">META-INF</font>&#160;folder of a jar file can be served directly to the user only if they are in <font face="monospace">META-INF/resources</font>.
      </li>
      <li>
        If a framework wants its <font face="monospace">META-INF/web-fragment.xml</font>&#160;honored in such a way that it augments a web application's web.xml, the framework must be bundled within the web application's&#160;<font face="monospace">WEB-INF/lib </font>directory.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1431524780579" ID="ID_476806081" MODIFIED="1431672952577" STYLE="fork" TEXT="Absolute ordering">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The rules for absolute ordering are quite simple and straight forward:
    </p>
    <ul>
      <li>
        Specified by using an &lt;absolute-ordering&gt; element in the web.xml.
      </li>
      <li>
        Any &lt;name&gt; element direct children of the &lt;absolute-ordering&gt; must be interpreted as indicating the absolute ordering in which those named webfragments, which may or may not be present, must be processed.&#160;
      </li>
      <li>
        The &lt;absolute-ordering&gt; element may contain zero or one &lt;others /&gt; element.&#160;&#160;If the &lt;absolute-ordering&gt; element does not contain an &lt;others/&gt; element, any web-fragment not specifically mentioned within &lt;name /&gt; elements must be ignored.&#160;
      </li>
      <li>
        Duplicate name exception: if, when traversing the children of &lt;absolute-ordering&gt;, multiple children with the same &lt;name&gt; element are encountered, only the first such occurrence must be considered.&#160;
      </li>
      <li>
        If an &lt;ordering&gt; element appears in the web.xml, an informative message must be logged and the element must be ignored.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1430910135007" ID="ID_728114039" MODIFIED="1431680483701" POSITION="right" STYLE="fork" TEXT="JSP">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1430915044834" ID="ID_1807315546" MODIFIED="1431675584992" STYLE="fork" TEXT="Basic syntax">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h4>
      Scriptlets
    </h4>
    <p>
      &lt;jsp:scriptlet/&gt; is the XML syntax of &lt;% and %&gt;
    </p>
    <h4>
      Declaration
    </h4>
    <p>
      instance member (class field of the servlet) - because of &quot;!&quot; declaration.
    </p>
    <p>
      &lt;%! String a = &quot;AAA&quot;;%&gt; or &lt;jsp:declaration&gt;String a = &quot;AAA&quot;;&lt;/jsp:declaration&gt;
    </p>
    <h4>
      Expression
    </h4>
    <p>
      instance member (class field of the servlet) - because of &quot;!&quot; declaration.
    </p>
    <p>
      &lt;%= &quot;AAA&quot; + &quot;BBB&quot;%&gt; or &lt;jsp:expression&gt;&quot;AAA&quot; + &quot;BBB&quot;&lt;/jsp:expression&gt;
    </p>
    <h4>
      Comments
    </h4>
    <p>
      &lt;%-- my comment --%&gt;
    </p>
    <h4>
      Importing the package (see directives)
    </h4>
    <p>
      &lt;%@ page import=&quot;java.util.*&quot;%&gt;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1430913825477" ID="ID_1636663940" MODIFIED="1431673300365" STYLE="fork" TEXT="Implicit objects">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      JSP Implicit Objects are the Java objects that the JSP Container makes available to developers in each page and developer can call them directly without being explicitly declared. JSP Implicit Objects are also called pre-defined variables.
    </p>
    <p>
      JSP supports nine Implicit Objects which are listed below:
    </p>
    <table>
      <tr>
        <th style="background-color: silver">
          Object
        </th>
        <th style="background-color: silver">
          Description
        </th>
      </tr>
      <tr>
        <td>
          request
        </td>
        <td>
          This is the&#160;<b>HttpServletRequest</b>&#160;object associated with the request.
        </td>
      </tr>
      <tr>
        <td>
          response
        </td>
        <td>
          This is the&#160;<b>HttpServletResponse</b>&#160;object associated with the response to the client.
        </td>
      </tr>
      <tr>
        <td>
          out
        </td>
        <td>
          This is the&#160;<b>PrintWriter</b>&#160;object used to send output to the client.
        </td>
      </tr>
      <tr>
        <td>
          session
        </td>
        <td>
          This is the&#160;<b>HttpSession</b>&#160;object associated with the request.
        </td>
      </tr>
      <tr>
        <td>
          application
        </td>
        <td>
          This is the&#160;<b>ServletContext</b>&#160;object associated with application context.
        </td>
      </tr>
      <tr>
        <td>
          config
        </td>
        <td>
          This is the&#160;<b>ServletConfig</b>&#160;object associated with the page.
        </td>
      </tr>
      <tr>
        <td>
          pageContext
        </td>
        <td>
          This encapsulates use of server-specific features like higher performance&#160;<b>JspWriters</b>.
        </td>
      </tr>
      <tr>
        <td>
          page
        </td>
        <td>
          This is simply a synonym for&#160;<b>this</b>, and is used to call the methods defined by the translated servlet class.
        </td>
      </tr>
      <tr>
        <td>
          exception
        </td>
        <td>
          The&#160;<b>Exception</b>&#160;object allows the exception data to be accessed by designated JSP.
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
<node CREATED="1430914144050" FOLDED="true" ID="ID_727544684" MODIFIED="1431680488923" STYLE="fork" TEXT="Directives">
<node CREATED="1430914147667" ID="ID_49564038" MODIFIED="1431672952576" STYLE="fork" TEXT="Page">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The&#160;<b>page</b>&#160;directive is used to provide instructions to the container that pertain to the current JSP page. You may code page directives anywhere in your JSP page. By convention, page directives are coded at the top of the JSP page.
    </p>
    <p>
      Following is the basic syntax of page directive:
    </p>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(102, 102, 0)">&lt;%@</font> page attribute<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;value&quot;</font> %&gt;</pre>
    <p>
      You can write XML equivalent of the above syntax as follows:
    </p>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(0, 0, 136)">&lt;jsp:directive.page</font> <font color="rgb(127, 0, 85)">attribute</font><font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;value&quot;</font> <font color="rgb(0, 0, 136)">/&gt;</font></pre>
    <h2>
      Attributes:
    </h2>
    <p>
      Following is the list of attributes associated with page directive:
    </p>
    <table>
      <tr>
        <th style="background-color: silver">
          Attribute
        </th>
        <th style="background-color: silver">
          Purpose
        </th>
      </tr>
      <tr>
        <td>
          buffer
        </td>
        <td>
          Specifies a buffering model for the output stream.
        </td>
      </tr>
      <tr>
        <td>
          autoFlush
        </td>
        <td>
          Controls the behavior of the servlet output buffer.
        </td>
      </tr>
      <tr>
        <td>
          contentType
        </td>
        <td>
          Defines the character encoding scheme.
        </td>
      </tr>
      <tr>
        <td>
          errorPage
        </td>
        <td>
          Defines the URL of another JSP that reports on Java unchecked runtime exceptions.
        </td>
      </tr>
      <tr>
        <td>
          isErrorPage
        </td>
        <td>
          Indicates if this JSP page is a URL specified by another JSP page's errorPage attribute.
        </td>
      </tr>
      <tr>
        <td>
          extends
        </td>
        <td>
          Specifies a superclass that the generated servlet must extend
        </td>
      </tr>
      <tr>
        <td>
          import
        </td>
        <td>
          Specifies a list (separated by &quot;,&quot;) of packages or classes for use in the JSP as the Java import statement does for Java classes. Technically, an import attribute can occur multiple times in a page.
        </td>
      </tr>
      <tr>
        <td>
          info
        </td>
        <td>
          Defines a string that can be accessed with the servlet's getServletInfo() method.
        </td>
      </tr>
      <tr>
        <td>
          isThreadSafe
        </td>
        <td>
          Defines the threading model for the generated servlet.
        </td>
      </tr>
      <tr>
        <td>
          language
        </td>
        <td>
          Defines the programming language used in the JSP page.
        </td>
      </tr>
      <tr>
        <td>
          session
        </td>
        <td>
          Specifies whether or not the JSP page participates in HTTP sessions
        </td>
      </tr>
      <tr>
        <td>
          isELIgnored
        </td>
        <td>
          Specifies whether or not EL expression within the JSP page will be ignored.
        </td>
      </tr>
      <tr>
        <td>
          isScriptingEnabled
        </td>
        <td>
          Determines if scripting elements are allowed for use.
        </td>
      </tr>
    </table>
    <p>
      Check more detail related to all the above attributes at&#160;<a href="http://www.tutorialspoint.com/jsp/page_directive.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>Page Directive</b></font></a>.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1430914155787" ID="ID_1888729900" MODIFIED="1431672952576" STYLE="fork" TEXT="Include">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The&#160;<b>include</b>&#160;directive is used to includes a file during the translation phase. This directive tells the container to merge the content of other external files with the current JSP during the translation phase. You may code&#160;<i>include</i>&#160;directives anywhere in your JSP page.
    </p>
    <p>
      The general usage form of this directive is as follows:
    </p>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(102, 102, 0)">&lt;%@</font> include file<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;relative url&quot;</font> <font color="rgb(102, 102, 0)">&gt;</font></pre>
    <p>
      The filename in the include directive is actually a relative URL. If you just specify a filename with no associated path, the JSP compiler assumes that the file is in the same directory as your JSP.
    </p>
    <p>
      You can write XML equivalent of the above syntax as follows:
    </p>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(0, 0, 136)">&lt;jsp:directive.include</font> <font color="rgb(127, 0, 85)">file</font><font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;relative url&quot;</font> <font color="rgb(0, 0, 136)">/&gt;</font></pre>
    <p>
      Check more detail related to include directive at&#160;<a href="http://www.tutorialspoint.com/jsp/include_directive.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>Include Directive</b></font></a>.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1430914353586" ID="ID_95828921" MODIFIED="1431672952576" STYLE="fork" TEXT="Taglib">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The JavaServer Pages API allows you to define custom JSP tags that look like HTML or XML tags and a tag library is a set of user-defined tags that implement custom behavior.
    </p>
    <p>
      The&#160;<b>taglib</b>&#160;directive declares that your JSP page uses a set of custom tags, identifies the location of the library, and provides a means for identifying the custom tags in your JSP page.
    </p>
    <p>
      The taglib directive follows the following syntax:
    </p>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)"><font color="rgb(102, 102, 0)">&lt;%@</font> taglib uri<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;uri&quot;</font> prefix<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;prefixOfTag&quot;</font> <font color="rgb(102, 102, 0)">&gt;</font></pre>
    <p>
      Where the&#160;<b>uri</b>&#160;attribute value resolves to a location the container understands and the <b>prefix</b>&#160;attribute informs a container what bits of markup are custom actions.
    </p>
    <h2>
      Example:
    </h2>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;%@ taglib uri=&quot;uri&quot; prefix=&quot;pot&quot; &gt;
&lt;pot:someTag /&gt;</pre>
    <p>
      Check more detail related to taglib directive at&#160;<a href="http://www.tutorialspoint.com/jsp/taglib_directive.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>Taglib Directive</b></font></a>.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1430915452689" ID="ID_1299622676" MODIFIED="1431675766047" STYLE="fork" TEXT="Actions">
<node CREATED="1430990611510" ID="ID_1968151878" MODIFIED="1431672952576" STYLE="fork" TEXT="useBean">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        constraint:

        <ul>
          <li>
            the class should have a public no-args constructor (e.g. not valid for Integer)
          </li>
          <li>
            the class should not be defined as abstract or final
          </li>
          <li>
            the class should be the interface
          </li>
        </ul>
      </li>
      <li>
        behaviour: bean is created only when it is not available (based on desired ID or name)
      </li>
    </ul>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(102, 102, 0)">&lt;jsp:useBean id=&quot;myint&quot; class=&quot;xyz&quot; /</font></pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1430990851383" ID="ID_678564950" MODIFIED="1431672952576" STYLE="fork" TEXT="getProperty">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)">&lt;jsp:getProperty name=&quot;mybean&quot; property=&quot;name&quot; /&gt;</pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1430990907863" ID="ID_369303020" MODIFIED="1431672952576" STYLE="fork" TEXT="setProperty">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Set a property color with request's parameter value (when parameter name is not specified)
    </p>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;jsp:setProperty name=&quot;user&quot; property=&quot;country&quot;/&gt;</pre>
    <p>
      Set a property of the bean from request parameter 'aha'
    </p>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;jsp:setProperty name=&quot;mybean&quot; property=&quot;name&quot; param=&quot;aha&quot;/&gt; </pre>
    <small>Note: tag must be empty </small><br />

    <p>
      or
    </p>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;jsp:useBean id=&quot;account&quot; class=&quot;com.enthuware.jwebplus.Account&quot;&gt;
    &lt;jsp:setProperty name=&quot;account&quot; property=&quot;name&quot; param=&quot;name&quot;/&gt;
&lt;/jsp:useBean&gt;</pre>
    <small>Note: tag body of tag &lt;jsp:useBean/&gt; is executed only when bean is being created --&gt; therefore not when bean already exists </small>

    <p>
      or calculate value (by EL)
    </p>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;jsp:setProperty name=&quot;acct2&quot; property=&quot;address&quot; value=&quot;${acct1.address}&quot; /&gt;</pre>
    <p>
      or calculate value (by scriptlet)
    </p>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;jsp:setProperty name=&quot;user&quot; property=&quot;country&quot; value=&lt;%=request.getParameter(&quot;country&quot;)%&gt; /&gt;</pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1430990618126" ID="ID_305644191" MODIFIED="1431672952576" STYLE="fork" TEXT="include">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This action lets you insert files into the page being generated. The syntax looks like this:
    </p>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(0, 0, 136)">&lt;jsp:include</font> <font color="rgb(127, 0, 85)">page</font><font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;relative URL&quot;</font> <font color="rgb(127, 0, 85)">flush</font><font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;true&quot;</font> <font color="rgb(0, 0, 136)">/&gt;</font></pre>
    <p>
      Unlike the&#160;<b>include</b>&#160;directive, which inserts the file at the time the JSP page is translated into a servlet, this action inserts the file at the time the page is requested.
    </p>
    <p>
      Following is the list of attributes associated with include action:
    </p>
    <table>
      <tr>
        <th style="background-color: silver">
          Attribute
        </th>
        <th style="background-color: silver">
          Description
        </th>
      </tr>
      <tr>
        <td>
          page
        </td>
        <td>
          The relative URL of the page to be included.
        </td>
      </tr>
      <tr>
        <td>
          flush
        </td>
        <td>
          The boolean attribute determines whether the included resource has its buffer flushed before it is included.
        </td>
      </tr>
    </table>
    <h4>
      Examples:
    </h4>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(0, 0, 136)">&lt;jsp:include</font> <font color="rgb(127, 0, 85)">page</font><font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;relative URL&quot;</font> <font color="rgb(127, 0, 85)">flush</font><font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;true&quot;</font> <font color="rgb(0, 0, 136)">&gt;</font>
    <font color="rgb(0, 0, 136)">&lt;jsp:param</font> <font color="rgb(127, 0, 85)">name</font><font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;productId&quot;</font> <font color="rgb(127, 0, 85)">value</font><font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;1234&quot;</font> <font color="rgb(0, 0, 136)">/&gt;</font>
<font color="rgb(0, 0, 136)">&lt;/jsp:include</font>&gt;</pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1430987527044" ID="ID_619626314" MODIFIED="1431672952576" STYLE="fork" TEXT="Error handling">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h4>
      Define error page (to be used for error handling)
    </h4>
    <p>
      &lt;%@page isErrorPage=&quot;true&quot;%&gt;
    </p>
    <h4>
      Define erro handling (to forward to error page when exception occur)
    </h4>
    <p>
      &lt;%@page errorPage=&quot;error.jsp&quot;%&gt;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1430990992442" ID="ID_1821115782" MODIFIED="1431675763436" STYLE="fork" TEXT="Config">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &lt;scripting-invalid/&gt; - If the &lt;scripting-invalid&gt; is specified as true, then a jsp file must not contain any scripting elements otherwise the file is not even translated to the corresponding servlet (compilation failure).
    </p>
    <p>
      &lt;el-ignored/&gt; - If the &lt;el-ignored&gt; is specified as true, then a jsp file can contain have EL expression. They are ignored and passed as they are in the output. There is no translation error.
    </p>
    <p>
      
    </p>
    <h4>
      Usage:
    </h4>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)">&lt;web-app ... version=&quot;3.0&quot;&gt;
&#160;&#160;&#160;&#160;&lt;jsp-config&gt;
        &lt;jsp-property-group&gt;
            &lt;url-pattern&gt;*.jsp&lt;/url-pattern&gt;
            &lt;scripting-invalid&gt;true&lt;/scripting-invalid&gt;
        &lt;/jsp-property-group&gt; 
    &lt;/jsp-config&gt;</pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1430990364597" ID="ID_1837574644" MODIFIED="1431672952576" STYLE="fork" TEXT="Others">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h4>
      Phases
    </h4>
    <p>
      JSP pages go through two phases:
    </p>
    <ul>
      <li>
        translation phase - done once per page. The container validates the syntactic correctness of the JSP pages and the tag files.
      </li>
      <li>
        request phase - done once per request
      </li>
    </ul>
    <h4>
      Default writer
    </h4>
    <p>
      javax.servlet.jsp.JspWriter
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1430910154440" FOLDED="true" ID="ID_1171667824" MODIFIED="1431675813090" POSITION="right" STYLE="fork" TEXT="Design patterns">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1430910456234" ID="ID_467389040" MODIFIED="1431672952576" STYLE="fork" TEXT="Front Controller / Front Component">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;Workflow&quot; and &quot;dispatch requests to the appropriate JSP pages&quot; are typical uses of Front Controller pattern. It is also called as Front Component.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1430910473676" ID="ID_1471668192" MODIFIED="1431672952576" STYLE="fork" TEXT="Intercepting Filter">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Create pluggable filters to process common services in a standard manner without requiring changes to core request processing code. The filters intercept incoming requests and outgoing responses, allowing preprocessing and post-processing. We are able to add and remove these filters unobtrusively, without requiring changes to our existing code.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1430910491396" ID="ID_1959382343" MODIFIED="1431672952576" STYLE="fork" TEXT="Model View Controller (MVC)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This is used to separate the data and presentation logic so that one set of data can be presented in multiple ways.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1430910505716" ID="ID_1296758522" MODIFIED="1431672952576" STYLE="fork" TEXT="Business Delegate">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This allows plug and play between back end logic and the front end.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1430910519413" ID="ID_527693942" MODIFIED="1431672952576" STYLE="fork" TEXT="Data Access Object">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This allows plug and play between the data container (the DB) and data requestor.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1430910167401" FOLDED="true" ID="ID_1734457043" MODIFIED="1431679916742" POSITION="right" STYLE="fork" TEXT="CGI">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1430910188251" ID="ID_1938622523" MODIFIED="1431672952576" STYLE="fork" TEXT="CGI scripts/programs can be written in multiple languages."/>
<node CREATED="1430910250156" ID="ID_322155179" MODIFIED="1431679787878" STYLE="fork" TEXT=" CGI scripts/programs are significantly less secure than servlets: CGI programs are language independent but not platform independent, while servlets are generally only platform independent."/>
<node CREATED="1430910200034" ID="ID_356629229" MODIFIED="1431672952576" STYLE="fork" TEXT="A new process (traditional) is started to process each HTTP request (while with servlets, it is not so)."/>
<node CREATED="1430910241163" ID="ID_1232215554" MODIFIED="1431672952575" STYLE="fork" TEXT="Processing a CGI request does NOT require any container. Servlets are run inside a servlet container. --&gt; It is a lot easier and cheaper to host CGI scripts than servlet based web applications. "/>
<node CREATED="1430910223227" ID="ID_701736353" MODIFIED="1431672952575" STYLE="fork" TEXT="The processing state is not inherited across invocations and this makes it a lot more complicated to manage sessions."/>
<node CREATED="1430910233147" ID="ID_1665340830" MODIFIED="1431672952575" STYLE="fork" TEXT="Simple requests that do not involve complex business logic are significantly easier to process using CGI (just script) instead of servlets."/>
</node>
<node CREATED="1430910739973" ID="ID_779730016" MODIFIED="1431680193339" POSITION="left" STYLE="fork" TEXT="JSTL">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1430913733459" ID="ID_1469782263" MODIFIED="1431672952575" STYLE="fork" TEXT="Accessing values from map">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Accessing values from map, e.g. HashMap (&quot;o&quot; is key)
    </p>
    <ul>
      <li>
        ${map.o}
      </li>
      <li>
        ${map[&quot;o&quot;]}
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1430913005693" ID="ID_847618428" MODIFIED="1431680256131" STYLE="fork" TEXT="Implicit objects (available in EL)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h4>
      Implicit objects
    </h4>
    <ul>
      <li>
        <b>pageContext</b>&#160;- the PageContext object
      </li>
      <li>
        <b>pageScope </b>- a Map that maps page-scoped attribute names to their values
      </li>
      <li>
        <b>requestScope </b>- a Map that maps request-scoped attribute names to their values
      </li>
      <li>
        <b>sessionScope </b>- a Map that maps session-scoped attribute names to their values
      </li>
      <li>
        <b>applicationScope </b>- a Map that maps application-scoped attribute names to
      </li>
    </ul>
    <h4>
      Their values
    </h4>
    <ul>
      <li>
        <b>param</b>&#160;- a Map that maps parameter names to a single String parameter value (obtained by calling ServletRequest.getParameter(String name))
      </li>
      <li>
        <b>paramValues</b>&#160;- a Map that maps parameter names to a String[] of all values for that parameter (obtained by calling ServletRequest.getParameterValues(String name))
      </li>
      <li>
        <b>header</b>&#160;- a Map that maps header names to a single String header value (obtained by calling ServletRequest.getHeader(String name))
      </li>
      <li>
        <b>headerValues </b>- a Map that maps header names to a String[] of all values for that header (obtained by calling ServletRequest.getHeaders(String))
      </li>
      <li>
        <b>cookie </b>- a Map that maps cookie names to a single Cookie object. Cookies are retrieved according to the semantics of HttpServletRequest.getCookies(). If the same name is shared by multiple cookies, an implementation must use the first one encountered in the array of Cookie objects returned by the getCookies() method. However, users of the cookie implicit object must be aware that the ordering of cookies is currently unspecified in the servlet specification.
      </li>
      <li>
        <b>initParam </b>- a Map that maps context initialization parameter names to their String parameter value (obtained by calling&#160;&#160;ServletContext.getInitParameter( String name))
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1430911571277" ID="ID_339253698" MODIFIED="1431672952575" STYLE="fork" TEXT="Tags">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p style="color: rgb(0, 0, 0); line-height: 24px; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-align: justify; font-family: Open Sans, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      The JSTL SQL tag library provides tags for interacting with relational databases (RDBMSs) such as Oracle, mySQL, or Microsoft SQL Server.
    </p>
    <p style="color: rgb(0, 0, 0); line-height: 24px; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-align: justify; font-family: Open Sans, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      Following is the syntax to include JSTL SQL library in your JSP:
    </p>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(102, 102, 0)">&lt;%@</font> taglib prefix<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;sql&quot;</font>  uri<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;http://java.sun.com/jsp/jstl/sql&quot;</font> %&gt;</pre>
    <p style="color: rgb(0, 0, 0); line-height: 24px; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-align: justify; font-family: Open Sans, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      Following is the list of SQL JSTL Tags:
    </p>
    <table class="table table-bordered" style="border-spacing: 0px; width: 604px; margin-bottom: 20px; color: rgb(49, 49, 49); font-family: Open Sans, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      <tr>
        <th style="text-align: left; padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top; width: 182px; background-color: rgb(238,; background-position: 238, 238); background-image: null; background-repeat: repeat; background-attachment: scroll">
          Tag
        </th>
        <th style="text-align: left; padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top; background-color: rgb(238,; background-position: 238, 238); background-image: null; background-repeat: repeat; background-attachment: scroll">
          Description
        </th>
      </tr>
      <tr>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_setdatasource_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:setDataSource&gt;</b></font></a>
        </td>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          Creates a simple DataSource suitable only for prototyping
        </td>
      </tr>
      <tr>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_query_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:query&gt;</b></font></a>
        </td>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          Executes the SQL query defined in its body or through the sql attribute.
        </td>
      </tr>
      <tr>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_update_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:update&gt;</b></font></a>
        </td>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          Executes the SQL update defined in its body or through the sql attribute.
        </td>
      </tr>
      <tr>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_param_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:param&gt;</b></font></a>
        </td>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          Sets a parameter in an SQL statement to the specified value.
        </td>
      </tr>
      <tr>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_dateparam_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:dateParam&gt;</b></font></a>
        </td>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          Sets a parameter in an SQL statement to the specified java.util.Date value.
        </td>
      </tr>
      <tr>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_transaction_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:transaction &gt;</b></font></a>
        </td>
        <td style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; line-height: 1.42857143; vertical-align: top">
          Provides nested database action elements with a shared Connection, set up to execute all statements as one transaction.
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
<node CREATED="1430910743525" ID="ID_387139499" MODIFIED="1431672952575" STYLE="fork" TEXT="Core">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The core group of tags are the most frequently used JSTL tags. Following is the syntax to include JSTL Core library in your JSP:
    </p>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(102, 102, 0)">&lt;%@</font> taglib prefix<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;c&quot;</font> uri<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;http://java.sun.com/jsp/jstl/core&quot;</font> %&gt;</pre>
    <p>
      There are following Core JSTL Tags:
    </p>
    <table>
      <tr>
        <th style="background-color: gray; width: 150px">
          Tag
        </th>
        <th style="background-color: gray">
          Description
        </th>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_out_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:out &gt;</b></font></a>
        </td>
        <td>
          Like &lt;%= ... &gt;, but for expressions.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_set_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:set &gt;</b></font></a>
        </td>
        <td>
          Sets the result of an expression evaluation in a 'scope'
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_remove_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:remove &gt;</b></font></a>
        </td>
        <td>
          Removes a scoped variable (from a particular scope, if specified).
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_catch_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:catch&gt;</b></font></a>
        </td>
        <td>
          Catches any Throwable that occurs in its body and optionally exposes it.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_if_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:if&gt;</b></font></a>
        </td>
        <td>
          Simple conditional tag which evalutes its body if the supplied condition is true.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_choose_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:choose&gt;</b></font></a>
        </td>
        <td>
          Simple conditional tag that establishes a context for mutually exclusive conditional operations, marked by &lt;when&gt; and &lt;otherwise&gt;
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_choose_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:when&gt;</b></font></a>
        </td>
        <td>
          Subtag of &lt;choose&gt; that includes its body if its condition evalutes to 'true'.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_choose_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:otherwise &gt;</b></font></a>
        </td>
        <td>
          Subtag of &lt;choose&gt; that follows &lt;when&gt; tags and runs only if all of the prior conditions evaluated to 'false'.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_import_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:import&gt;</b></font></a>
        </td>
        <td>
          Retrieves an absolute or relative URL and exposes its contents to either the page, a String in 'var', or a Reader in 'varReader'.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_foreach_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:forEach &gt;</b></font></a>
        </td>
        <td>
          The basic iteration tag, accepting many different collection types and supporting subsetting and other functionality .
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_foreach_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:forTokens&gt;</b></font></a>
        </td>
        <td>
          Iterates over tokens, separated by the supplied delimeters.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_param_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:param&gt;</b></font></a>
        </td>
        <td>
          Adds a parameter to a containing 'import' tag's URL.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_redirect_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:redirect &gt;</b></font></a>
        </td>
        <td>
          Redirects to a new URL.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_core_url_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;c:url&gt;</b></font></a>
        </td>
        <td>
          Creates a URL with optional query parameters
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
<node CREATED="1430911275632" ID="ID_1536302846" MODIFIED="1431672952575" STYLE="fork" TEXT="Formatting">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The JSTL formatting tags are used to format and display text, the date, the time, and numbers for internationalized Web sites. Following is the syntax to include Formatting library in your JSP:
    </p>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(102, 102, 0)">&lt;%@</font> taglib prefix<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;fmt&quot;</font> uri<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;http://java.sun.com/jsp/jstl/fmt&quot;</font> %&gt;</pre>
    <p>
      Following is the list of Formatting JSTL Tags:
    </p>
    <table>
      <tr>
        <th style="background-color: gray; width: 150px">
          Tag
        </th>
        <th style="background-color: gray">
          Description
        </th>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_format_formatnumber_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;fmt:formatNumber&gt;</b></font></a>
        </td>
        <td>
          To render numerical value with specific precision or format.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_format_parsenumber_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;fmt:parseNumber&gt;</b></font></a>
        </td>
        <td>
          Parses the string representation of a number, currency, or percentage.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_format_formatdate_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;fmt:formatDate&gt;</b></font></a>
        </td>
        <td>
          Formats a date and/or time using the supplied styles and pattern
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_format_parsedate_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;fmt:parseDate&gt;</b></font></a>
        </td>
        <td>
          Parses the string representation of a date and/or time
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_format_bundle_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;fmt:bundle&gt;</b></font></a>
        </td>
        <td>
          Loads a resource bundle to be used by its tag body.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_format_setlocale_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;fmt:setLocale&gt;</b></font></a>
        </td>
        <td>
          Stores the given locale in the locale configuration variable.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_format_setbundle_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;fmt:setBundle&gt;</b></font></a>
        </td>
        <td>
          Loads a resource bundle and stores it in the named scoped variable or the bundle configuration variable.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_format_timezone_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;fmt:timeZone&gt;</b></font></a>
        </td>
        <td>
          Specifies the time zone for any time formatting or parsing actions nested in its body.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_format_settimezone_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;fmt:setTimeZone&gt;</b></font></a>
        </td>
        <td>
          Stores the given time zone in the time zone configuration variable
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_format_message_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;fmt:message&gt;</b></font></a>
        </td>
        <td>
          To display an internationalized message.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_format_requestencoding_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;fmt:requestEncoding&gt;</b></font></a>
        </td>
        <td>
          Sets the request character encoding
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
<node CREATED="1430911532601" ID="ID_28928749" MODIFIED="1431672952575" STYLE="fork" TEXT="SQL">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The JSTL SQL tag library provides tags for interacting with relational databases (RDBMSs) such as Oracle, mySQL, or Microsoft SQL Server.
    </p>
    <p>
      Following is the syntax to include JSTL SQL library in your JSP:
    </p>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(102, 102, 0)">&lt;%@</font> taglib prefix<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;sql&quot;</font>  uri<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;http://java.sun.com/jsp/jstl/sql&quot;</font> %&gt;</pre>
    <p>
      Following is the list of SQL JSTL Tags:
    </p>
    <table>
      <tr>
        <th style="background-color: gray; width: 150px">
          Tag
        </th>
        <th style="background-color: gray">
          Description
        </th>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_setdatasource_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:setDataSource&gt;</b></font></a>
        </td>
        <td>
          Creates a simple DataSource suitable only for prototyping
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_query_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:query&gt;</b></font></a>
        </td>
        <td>
          Executes the SQL query defined in its body or through the sql attribute.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_update_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:update&gt;</b></font></a>
        </td>
        <td>
          Executes the SQL update defined in its body or through the sql attribute.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_param_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:param&gt;</b></font></a>
        </td>
        <td>
          Sets a parameter in an SQL statement to the specified value.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_dateparam_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:dateParam&gt;</b></font></a>
        </td>
        <td>
          Sets a parameter in an SQL statement to the specified java.util.Date value.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_sql_transaction_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;sql:transaction &gt;</b></font></a>
        </td>
        <td>
          Provides nested database action elements with a shared Connection, set up to execute all statements as one transaction.
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
<node CREATED="1430911540490" ID="ID_1119219426" MODIFIED="1431672952575" STYLE="fork" TEXT="XML">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The JSTL XML tags provide a JSP-centric way of creating and manipulating XML documents. Following is the syntax to include JSTL XML library in your JSP.
    </p>
    <p>
      The JSTL XML tag library has custom tags for interacting with XML data. This includes parsing XML, transforming XML data, and flow control based on XPath expressions.
    </p>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(102, 102, 0)">&lt;%@</font> taglib prefix<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;x&quot;</font>  uri<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;http://java.sun.com/jsp/jstl/xml&quot;</font> %&gt;</pre>
    <p>
      Before you proceed with the examples, you would need to copy following two XML and XPath related libraries into your &lt;Tomcat Installation Directory&gt;\lib:
    </p>
    <ul>
      <li>
        <p>
          <b>XercesImpl.jar:</b>&#160;Download it from&#160;<a href="http://www.apache.org/dist/xerces/j/" target="_blank" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: normal; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)">http://www.apache.org/dist/xerces/j/</font></a>
        </p>
      </li>
      <li>
        <p>
          <b>xalan.jar:</b>&#160;Download it from&#160;<a href="http://xml.apache.org/xalan-j/index.html" target="_blank" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: normal; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)">http://xml.apache.org/xalan-j/index.html</font></a>
        </p>
      </li>
    </ul>
    <p>
      Following is the list of XML JSTL Tags:
    </p>
    <table>
      <tr>
        <th style="background-color: gray; width: 150px">
          Tag
        </th>
        <th style="background-color: gray">
          Description
        </th>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_xml_out_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;x:out&gt;</b></font></a>
        </td>
        <td>
          Like &lt;%= ... &gt;, but for XPath expressions.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_xml_parse_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;x:parse&gt;</b></font></a>
        </td>
        <td>
          Use to parse XML data specified either via an attribute or in the tag body.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_xml_set_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;x:set &gt;</b></font></a>
        </td>
        <td>
          Sets a variable to the value of an XPath expression.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_xml_if_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;x:if &gt;</b></font></a>
        </td>
        <td>
          Evaluates a test XPath expression and if it is true, it processes its body. If the test condition is false, the body is ignored.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_xml_foreach_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;x:forEach&gt;</b></font></a>
        </td>
        <td>
          To loop over nodes in an XML document.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_xml_choose_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;x:choose&gt;</b></font></a>
        </td>
        <td>
          Simple conditional tag that establishes a context for mutually exclusive conditional operations, marked by &lt;when&gt; and &lt;otherwise&gt;
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_xml_choose_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;x:when &gt;</b></font></a>
        </td>
        <td>
          Subtag of &lt;choose&gt; that includes its body if its expression evalutes to 'true'
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_xml_choose_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;x:otherwise &gt;</b></font></a>
        </td>
        <td>
          Subtag of &lt;choose&gt; that follows &lt;when&gt; tags and runs only if all of the prior conditions evaluated to 'false'
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_xml_transform_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;x:transform &gt;</b></font></a>
        </td>
        <td>
          Applies an XSL transformation on a XML document
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_xml_param_tag.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>&lt;x:param &gt;</b></font></a>
        </td>
        <td>
          Use along with the transform tag to set a parameter in the XSLT stylesheet
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
<node CREATED="1430911545537" ID="ID_689349423" MODIFIED="1431672952575" STYLE="fork" TEXT="Functions">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      JSTL includes a number of standard functions, most of which are common string manipulation functions. Following is the syntax to include JSTL Functions library in your JSP:
    </p>
    <pre class="prettyprint notranslate prettyprinted" style="font-family: Menlo, Monaco, Consolas, Courier New, monospace; padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; width: 604px; line-height: 16px; font-size: 12px; color: rgb(49, 49, 49); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; background-color: rgb(238, 238, 238)"><font color="rgb(102, 102, 0)">&lt;%@</font> taglib prefix<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;fn&quot;</font>  uri<font color="rgb(102, 102, 0)">=</font><font color="rgb(0, 136, 0)">&quot;http://java.sun.com/jsp/jstl/functions&quot;</font> %&gt;</pre>
    <p>
      Following is the list of JSTL Functions:
    </p>
    <table>
      <tr>
        <th style="background-color: gray; width: 150px">
          Function
        </th>
        <th style="background-color: gray">
          Description
        </th>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_contains.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:contains()</b></font></a>
        </td>
        <td>
          Tests if an input string contains the specified substring.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_containsignorecase.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:containsIgnoreCase()</b></font></a>
        </td>
        <td>
          Tests if an input string contains the specified substring in a case insensitive way.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_endswith.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:endsWith()</b></font></a>
        </td>
        <td>
          Tests if an input string ends with the specified suffix.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_escapexml.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:escapeXml()</b></font></a>
        </td>
        <td>
          Escapes characters that could be interpreted as XML markup.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_indexof.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:indexOf()</b></font></a>
        </td>
        <td>
          Returns the index withing a string of the first occurrence of a specified substring.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_join.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:join()</b></font></a>
        </td>
        <td>
          Joins all elements of an array into a string.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_length.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:length()</b></font></a>
        </td>
        <td>
          Returns the number of items in a collection, or the number of characters in a string.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_replace.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:replace()</b></font></a>
        </td>
        <td>
          Returns a string resulting from replacing in an input string all occurrences with a given string.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_split.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:split()</b></font></a>
        </td>
        <td>
          Splits a string into an array of substrings.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_startswith.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:startsWith()</b></font></a>
        </td>
        <td>
          Tests if an input string starts with the specified prefix.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_substring.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:substring()</b></font></a>
        </td>
        <td>
          Returns a subset of a string.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_substringafter.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:substringAfter()</b></font></a>
        </td>
        <td>
          Returns a subset of a string following a specific substring.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_substringbefore.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:substringBefore()</b></font></a>
        </td>
        <td>
          Returns a subset of a string before a specific substring.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_tolowercase.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:toLowerCase()</b></font></a>
        </td>
        <td>
          Converts all of the characters of a string to lower case.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_touppercase.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:toUpperCase()</b></font></a>
        </td>
        <td>
          Converts all of the characters of a string to upper case.
        </td>
      </tr>
      <tr>
        <td>
          <a href="http://www.tutorialspoint.com/jsp/jstl_function_trim.htm" style="color: rgb(49, 49, 49); text-decoration: none; padding-right: 22px; padding-bottom: 2px; font-weight: bold; background-image: url(http://cdn.tutorialspoint.com/images/link-icon.png); background-position: 100% 50%; background-repeat: no-repeat; background-attachment: scroll"><font color="rgb(49, 49, 49)"><b>fn:trim()</b></font></a>
        </td>
        <td>
          Removes white spaces from both ends of a string.
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1430987178783" FOLDED="true" ID="ID_329664631" MODIFIED="1431673378553" POSITION="left" STYLE="fork" TEXT="Session management">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1430987192479" ID="ID_1094943237" MODIFIED="1431673171148" STYLE="fork" TEXT="Session tracking">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The sessions are tracked as:
    </p>
    <ul>
      <li>
        COOKIE - using cookies
      </li>
      <li>
        URL - using URL Rewriting
      </li>
      <li>
        SSL - using SSL/TLS
      </li>
    </ul>
    <p>
      The configuration in DD and related methods in ServletContext.
    </p>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;session-config&gt;
 &#160;&#160;&lt;tracking-mode&gt;SSL&lt;/tracking-mode&gt;
&lt;/session-config&gt;
    </pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1430987319101" ID="ID_1789404312" MODIFIED="1431672952575" STYLE="fork" TEXT="HttpOnly flag on session cookie">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      To prevent or mitigate cross-site scripting.
    </p>
    <p>
      
    </p>
    <p>
      <font face="monospace">&lt;session-config&gt;<br />&#160;&#160;&lt;cookie-config&gt;<br />&#160;&#160;&#160;&#160;&lt;http-only&gt;true&lt;/http-only&gt;<br />&#160;&#160;&lt;/cookie-config&gt;<br />&lt;/session-config&gt;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1431522860821" ID="ID_1169523730" MODIFIED="1431673229500" STYLE="fork" TEXT="Timeout">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Timeout is defined in minutes or -1 to eliminate timeouting (the session will never timeout).
    </p>
    <h4>
      XML
    </h4>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">&lt;web-app ...&gt;
    &lt;session-config&gt;
        &lt;session-timeout&gt;20&lt;/session-timeout&gt;
    &lt;/session-config&gt;
&lt;/web-app&gt;   
    </pre>
    <h4>
      Java
    </h4>
    <pre style="color: rgb(49, 49, 49); background-color: rgb(238, 238, 238)">request.getSession().setMaxInactiveInterval(-1);</pre>
    <h4>
      Session invalidation:
    </h4>
    <p>
      The following is the sequence of things that happen when you invalidate a session:
    </p>
    <ol>
      <li>
        Container calls sessionDestroyed() on all HttpSessionListeners configured in web.xml (in the reverse order they are declared in web.xml). Notice that although the method name is sessionDestroyed, the session is not destroyed yet. It is about to be destroyed. (Note that sessionCreated is called on the listeners in the order they are declared in web.xml)&#160;
      </li>
      <li>
        The container destroys the session.&#160;
      </li>
      <li>
        The container calls valueUnbound() on all the session attributes that implement HttpSessionBindinglistener interface.
      </li>
    </ol>
  </body>
</html></richcontent>
</node>
</node>
</node>
</map>
