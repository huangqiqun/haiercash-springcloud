@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      http://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  console startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and CONSOLE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\console-0.0.1-SNAPSHOT.jar;%APP_HOME%\lib\discovery-console-starter-apollo-4.8.5.2.jar;%APP_HOME%\lib\discovery-console-4.8.5.2.jar;%APP_HOME%\lib\spring-boot-starter-web-2.0.7.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-netflix-eureka-client-2.0.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-admin-starter-client-2.0.5.jar;%APP_HOME%\lib\spring-boot-starter-json-2.0.7.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-netflix-ribbon-2.0.3.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-netflix-archaius-2.0.3.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-2.0.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-admin-client-2.0.5.jar;%APP_HOME%\lib\spring-cloud-netflix-eureka-client-2.0.3.RELEASE.jar;%APP_HOME%\lib\spring-cloud-netflix-core-2.0.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-aop-2.0.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-actuator-2.0.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-2.0.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-2.0.7.RELEASE.jar;%APP_HOME%\lib\hibernate-validator-6.0.13.Final.jar;%APP_HOME%\lib\spring-webmvc-5.0.11.RELEASE.jar;%APP_HOME%\lib\discovery-common-4.8.5.2.jar;%APP_HOME%\lib\spring-web-5.0.11.RELEASE.jar;%APP_HOME%\lib\eureka-core-1.9.3.jar;%APP_HOME%\lib\ribbon-eureka-2.2.5.jar;%APP_HOME%\lib\eureka-client-1.9.3.jar;%APP_HOME%\lib\xstream-1.4.10.jar;%APP_HOME%\lib\apollo-openapi-1.3.0.jar;%APP_HOME%\lib\spring-boot-actuator-autoconfigure-2.0.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.0.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-actuator-2.0.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-2.0.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.0.7.RELEASE.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\springfox-swagger2-2.7.0.jar;%APP_HOME%\lib\springfox-swagger-common-2.7.0.jar;%APP_HOME%\lib\springfox-swagger-ui-2.7.0.jar;%APP_HOME%\lib\springfox-spring-web-2.7.0.jar;%APP_HOME%\lib\springfox-schema-2.7.0.jar;%APP_HOME%\lib\springfox-spi-2.7.0.jar;%APP_HOME%\lib\springfox-core-2.7.0.jar;%APP_HOME%\lib\spring-plugin-metadata-1.2.0.RELEASE.jar;%APP_HOME%\lib\spring-plugin-core-1.2.0.RELEASE.jar;%APP_HOME%\lib\spring-context-5.0.11.RELEASE.jar;%APP_HOME%\lib\spring-aop-5.0.11.RELEASE.jar;%APP_HOME%\lib\spring-beans-5.0.11.RELEASE.jar;%APP_HOME%\lib\spring-expression-5.0.11.RELEASE.jar;%APP_HOME%\lib\spring-core-5.0.11.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.19.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.9.7.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.9.7.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.9.7.jar;%APP_HOME%\lib\netflix-eventbus-0.3.0.jar;%APP_HOME%\lib\ribbon-2.2.5.jar;%APP_HOME%\lib\ribbon-httpclient-2.2.5.jar;%APP_HOME%\lib\ribbon-transport-2.2.5.jar;%APP_HOME%\lib\ribbon-loadbalancer-2.2.5.jar;%APP_HOME%\lib\ribbon-core-2.2.5.jar;%APP_HOME%\lib\hystrix-core-1.5.18.jar;%APP_HOME%\lib\archaius-core-0.7.6.jar;%APP_HOME%\lib\jackson-databind-2.9.7.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.5.35.jar;%APP_HOME%\lib\tomcat-embed-core-8.5.35.jar;%APP_HOME%\lib\tomcat-embed-el-8.5.35.jar;%APP_HOME%\lib\validation-api-2.0.1.Final.jar;%APP_HOME%\lib\jboss-logging-3.3.2.Final.jar;%APP_HOME%\lib\classmate-1.3.4.jar;%APP_HOME%\lib\spring-cloud-context-2.0.3.RELEASE.jar;%APP_HOME%\lib\spring-cloud-commons-2.0.3.RELEASE.jar;%APP_HOME%\lib\spring-security-rsa-1.0.7.RELEASE.jar;%APP_HOME%\lib\jettison-1.3.7.jar;%APP_HOME%\lib\jersey-apache-client4-1.19.1.jar;%APP_HOME%\lib\jersey-client-1.19.1.jar;%APP_HOME%\lib\jersey-core-1.19.1.jar;%APP_HOME%\lib\jsr311-api-1.1.1.jar;%APP_HOME%\lib\rxnetty-servo-0.4.9.jar;%APP_HOME%\lib\servo-core-0.12.21.jar;%APP_HOME%\lib\httpclient-4.5.6.jar;%APP_HOME%\lib\guice-4.1.0.jar;%APP_HOME%\lib\compactmap-1.2.1.jar;%APP_HOME%\lib\swagger-models-1.5.13.jar;%APP_HOME%\lib\jackson-annotations-2.9.0.jar;%APP_HOME%\lib\jackson-core-2.9.7.jar;%APP_HOME%\lib\woodstox-core-asl-4.4.1.jar;%APP_HOME%\lib\spring-cloud-netflix-ribbon-2.0.3.RELEASE.jar;%APP_HOME%\lib\spring-cloud-netflix-archaius-2.0.3.RELEASE.jar;%APP_HOME%\lib\commons-configuration-1.8.jar;%APP_HOME%\lib\rxnetty-contexts-0.4.9.jar;%APP_HOME%\lib\rxnetty-0.4.9.jar;%APP_HOME%\lib\rxjava-1.2.0.jar;%APP_HOME%\lib\apollo-core-1.3.0.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.25.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\log4j-to-slf4j-2.10.0.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.25.jar;%APP_HOME%\lib\netflix-infix-0.3.0.jar;%APP_HOME%\lib\netflix-commons-util-0.3.0.jar;%APP_HOME%\lib\netflix-statistics-0.1.1.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\xmlpull-1.1.3.1.jar;%APP_HOME%\lib\xpp3_min-1.1.4c.jar;%APP_HOME%\lib\jolokia-core-1.5.0.jar;%APP_HOME%\lib\json-simple-1.1.1.jar;%APP_HOME%\lib\spring-jcl-5.0.11.RELEASE.jar;%APP_HOME%\lib\spring-security-crypto-5.0.10.RELEASE.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.60.jar;%APP_HOME%\lib\aspectjweaver-1.8.13.jar;%APP_HOME%\lib\stax-api-1.0.1.jar;%APP_HOME%\lib\commons-math-2.2.jar;%APP_HOME%\lib\reflections-0.9.11.jar;%APP_HOME%\lib\guava-27.0-jre.jar;%APP_HOME%\lib\httpcore-4.4.10.jar;%APP_HOME%\lib\commons-codec-1.11.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\dexx-collections-0.2.jar;%APP_HOME%\lib\stax-api-1.0-2.jar;%APP_HOME%\lib\stax2-api-3.1.4.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\commons-lang3-3.6.jar;%APP_HOME%\lib\commons-collections4-4.1.jar;%APP_HOME%\lib\commons-io-2.5.jar;%APP_HOME%\lib\micrometer-core-1.0.8.jar;%APP_HOME%\lib\swagger-annotations-1.5.13.jar;%APP_HOME%\lib\mapstruct-1.1.0.Final.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\log4j-api-2.10.0.jar;%APP_HOME%\lib\bcprov-jdk15on-1.60.jar;%APP_HOME%\lib\commons-jxpath-1.3.jar;%APP_HOME%\lib\joda-time-2.9.9.jar;%APP_HOME%\lib\antlr-runtime-3.4.jar;%APP_HOME%\lib\failureaccess-1.0.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\checker-qual-2.5.2.jar;%APP_HOME%\lib\error_prone_annotations-2.2.0.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.17.jar;%APP_HOME%\lib\HdrHistogram-2.1.10.jar;%APP_HOME%\lib\LatencyUtils-2.0.3.jar;%APP_HOME%\lib\stringtemplate-3.2.1.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\byte-buddy-1.7.11.jar;%APP_HOME%\lib\javassist-3.21.0-GA.jar

@rem Execute console
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CONSOLE_OPTS%  -classpath "%CLASSPATH%" com.haiercash.console.ConsoleApplication %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CONSOLE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CONSOLE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
