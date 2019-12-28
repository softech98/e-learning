<?php

/* layout-redirect.html */
class __TwigTemplate_e4a35ae1236d952e6ebed6c7c58f4d1c19ae20d339b5fb870010078a75634568 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'title' => array($this, 'block_title'),
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
        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />
        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
        <title>";
        // line 6
        $this->displayBlock('title', $context, $blocks);
        echo "</title>
        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"";
        // line 7
        echo twig_escape_filter($this->env, (isset($context["favicon_url"]) ? $context["favicon_url"] : null), "html", null, true);
        echo "\">
    </head>
    <body>
        ";
        // line 10
        $this->displayBlock('content', $context, $blocks);
        // line 11
        echo "
        <script src=\"";
        // line 12
        echo twig_escape_filter($this->env, base_url("assets/comp/jquery/jquery.js"), "html", null, true);
        echo "\" type=\"text/javascript\"></script>
        ";
        // line 13
        $this->displayBlock('js', $context, $blocks);
        // line 14
        echo "    </body>
</html>
";
    }

    // line 6
    public function block_title($context, array $blocks = array())
    {
        echo twig_escape_filter($this->env, (isset($context["site_name"]) ? $context["site_name"] : null), "html", null, true);
    }

    // line 10
    public function block_content($context, array $blocks = array())
    {
    }

    // line 13
    public function block_js($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "layout-redirect.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  67 => 13,  62 => 10,  56 => 6,  50 => 14,  48 => 13,  44 => 12,  39 => 10,  29 => 6,  22 => 1,  54 => 15,  49 => 12,  46 => 11,  41 => 11,  38 => 7,  33 => 7,  30 => 3,);
    }
}
