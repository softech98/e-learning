<?php

/* layout-detail-materi.html */
class __TwigTemplate_ba5c575a2893b698a30632e392e0810c43fb044010ca8c78e712a8bd22ba4bae extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'title' => array($this, 'block_title'),
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
        <title>";
        // line 4
        $this->displayBlock('title', $context, $blocks);
        echo "</title>
        ";
        // line 5
        $this->env->loadTemplate("layout-header.html")->display($context);
        // line 6
        echo "        <link type=\"text/css\" href=\"";
        echo twig_escape_filter($this->env, (isset($context["base_url_theme"]) ? $context["base_url_theme"] : null), "html", null, true);
        echo "css/read.css\" rel=\"stylesheet\">
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

    // line 4
    public function block_title($context, array $blocks = array())
    {
        echo twig_escape_filter($this->env, (isset($context["site_name"]) ? $context["site_name"] : null), "html", null, true);
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
        return "layout-detail-materi.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  97 => 25,  92 => 11,  87 => 7,  81 => 4,  75 => 26,  72 => 25,  70 => 24,  48 => 12,  46 => 11,  41 => 8,  39 => 7,  34 => 6,  28 => 4,  23 => 1,  286 => 104,  280 => 101,  277 => 100,  270 => 95,  266 => 93,  264 => 92,  261 => 91,  245 => 87,  241 => 85,  237 => 84,  231 => 80,  225 => 77,  221 => 75,  212 => 72,  202 => 71,  198 => 70,  193 => 69,  189 => 68,  183 => 66,  181 => 65,  171 => 58,  167 => 57,  161 => 54,  157 => 53,  151 => 50,  143 => 44,  137 => 41,  132 => 39,  127 => 37,  122 => 35,  117 => 33,  113 => 31,  107 => 29,  104 => 28,  102 => 27,  96 => 23,  90 => 20,  84 => 19,  80 => 18,  73 => 17,  64 => 15,  60 => 19,  56 => 18,  53 => 12,  51 => 11,  47 => 10,  43 => 8,  40 => 7,  32 => 5,  29 => 3,);
    }
}
