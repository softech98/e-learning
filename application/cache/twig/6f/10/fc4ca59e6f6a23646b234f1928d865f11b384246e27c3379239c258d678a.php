<?php

/* layout-ujian.html */
class __TwigTemplate_6f10fc4ca59e6f6a23646b234f1928d865f11b384246e27c3379239c258d678a extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'css' => array($this, 'block_css'),
            'content' => array($this, 'block_content'),
            'js' => array($this, 'block_js'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html lang=\"en\">
    <head>
        ";
        // line 4
        $this->env->loadTemplate("layout-header.html")->display($context);
        // line 5
        echo "        <link type=\"text/css\" href=\"";
        echo twig_escape_filter($this->env, (isset($context["base_url_theme"]) ? $context["base_url_theme"] : null), "html", null, true);
        echo "css/read.css\" rel=\"stylesheet\">
        <link type=\"text/css\" href=\"";
        // line 6
        echo twig_escape_filter($this->env, (isset($context["base_url_theme"]) ? $context["base_url_theme"] : null), "html", null, true);
        echo "css/ujian.css\" rel=\"stylesheet\">
        ";
        // line 7
        $this->displayBlock('css', $context, $blocks);
        // line 8
        echo "    </head>
    <body>

        ";
        // line 11
        $this->displayBlock('content', $context, $blocks);
        // line 12
        echo "
        <br><br>
        <!--/.wrapper-->
        <div class=\"footer\">
            <div class=\"container\">
                <center>
                    <b class=\"copyright\">";
        // line 18
        echo (isset($context["copyright"]) ? $context["copyright"] : null);
        echo " </b> All rights reserved.<br>
                    ";
        // line 19
        echo (isset($context["version"]) ? $context["version"] : null);
        echo " | Page loaded in ";
        echo twig_escape_filter($this->env, (isset($context["elapsed_time"]) ? $context["elapsed_time"] : null), "html", null, true);
        echo " seconds.
                </center>
            </div>
        </div>

        ";
        // line 24
        $this->env->loadTemplate("layout-footer.html")->display($context);
        // line 25
        echo "        ";
        $this->displayBlock('js', $context, $blocks);
        // line 26
        echo "    </body>
</html>
";
    }

    // line 7
    public function block_css($context, array $blocks = array())
    {
    }

    // line 11
    public function block_content($context, array $blocks = array())
    {
    }

    // line 25
    public function block_js($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "layout-ujian.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  80 => 7,  74 => 26,  69 => 24,  59 => 19,  55 => 18,  47 => 12,  45 => 11,  38 => 7,  34 => 6,  27 => 4,  22 => 1,  446 => 206,  442 => 205,  438 => 204,  434 => 203,  430 => 202,  427 => 201,  425 => 200,  418 => 195,  399 => 179,  388 => 170,  364 => 164,  358 => 161,  352 => 158,  347 => 157,  330 => 156,  323 => 152,  315 => 147,  310 => 146,  308 => 145,  304 => 143,  295 => 137,  275 => 119,  254 => 111,  243 => 107,  226 => 105,  223 => 104,  218 => 103,  212 => 100,  206 => 97,  200 => 94,  195 => 93,  178 => 92,  171 => 88,  165 => 84,  163 => 83,  159 => 81,  153 => 78,  145 => 73,  139 => 70,  128 => 62,  123 => 59,  101 => 40,  98 => 39,  94 => 37,  90 => 25,  87 => 34,  85 => 11,  77 => 28,  73 => 26,  71 => 25,  60 => 17,  56 => 16,  49 => 12,  43 => 8,  40 => 8,  32 => 4,  29 => 5,);
    }
}
