<?php

/* list-pengumuman.html */
class __TwigTemplate_30429a3744f4ed7f9acb832a33a6df7779c86def5db86bc969edf839cbd4cbea extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->env->loadTemplate("layout-private.html");

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "layout-private.html";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_title($context, array $blocks = array())
    {
        // line 4
        echo "Pengumuman - ";
        $this->displayParentBlock("title", $context, $blocks);
        echo "
";
    }

    // line 7
    public function block_content($context, array $blocks = array())
    {
        // line 8
        echo "<div class=\"module\">
    <div class=\"module-head\">
        <h3>Pengumuman</h3>
    </div>
    <div class=\"module-body\">
        ";
        // line 13
        echo get_flashdata("pengumuman");
        echo "

        <div class=\"clearfix\">
            <div class=\"pull-right\">
                <form class=\"form-search\" method=\"get\" action=\"";
        // line 17
        echo twig_escape_filter($this->env, site_url((("pengumuman/index/" . (isset($context["page_no"]) ? $context["page_no"] : null)) . "/")), "html", null, true);
        echo "\">
                    <div class=\"input-append\">
                        <input type=\"text\" class=\"span3 search-query\" placeholder=\"cari pengumuman...\" name=\"q\" value=\"";
        // line 19
        echo twig_escape_filter($this->env, (isset($context["keyword"]) ? $context["keyword"] : null), "html", null, true);
        echo "\">
                        <button type=\"submit\" class=\"btn\"><i class=\"icon-search\"></i></button>
                    </div>
                </form>
            </div>
            <div class=\"pull-left\">
                ";
        // line 25
        if ((is_siswa() == false)) {
            // line 26
            echo "                <a href=\"";
            echo twig_escape_filter($this->env, site_url("pengumuman/add"), "html", null, true);
            echo "\" class=\"btn btn-primary\"><i class=\"icon-pencil\"></i> Buat</a>
                ";
        }
        // line 28
        echo "            </div>
        </div>
        <br>

        <div class=\"table-responsive\">
            <table class=\"table table-striped\">
                <thead>
                    <tr>
                        <th width=\"5%\">ID</th>
                        <th>Judul</th>
                        <th width=\"17%\">Tgl. Tampil</th>
                        <th width=\"17%\">Tgl. Tutup</th>
                        <th width=\"15%\"></th>
                    </tr>
                </thead>
                <tbody>
                    ";
        // line 44
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["pengumuman"]) ? $context["pengumuman"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["p"]) {
            // line 45
            echo "                    <tr>
                        <td><b>";
            // line 46
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"), "html", null, true);
            echo "</b></td>
                        <td><a href=\"";
            // line 47
            echo twig_escape_filter($this->env, site_url(("pengumuman/detail/" . $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"))), "html", null, true);
            echo "\"><b>";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "judul"), "html", null, true);
            echo "</b></a></td>
                        <td>";
            // line 48
            echo twig_escape_filter($this->env, tgl_indo($this->getAttribute((isset($context["p"]) ? $context["p"] : null), "tgl_tampil")), "html", null, true);
            echo "</td>
                        <td>";
            // line 49
            echo twig_escape_filter($this->env, tgl_indo($this->getAttribute((isset($context["p"]) ? $context["p"] : null), "tgl_tutup")), "html", null, true);
            echo "</td>
                        <td>
                            <div class=\"btn-group\">
                            ";
            // line 52
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["p"]) ? $context["p"] : null), "allow_action"));
            foreach ($context['_seq'] as $context["_key"] => $context["a"]) {
                // line 53
                echo "                                ";
                if (((isset($context["a"]) ? $context["a"] : null) == "detail")) {
                    // line 54
                    echo "                                <a class=\"btn btn-default btn-small\" href=\"";
                    echo twig_escape_filter($this->env, site_url(("pengumuman/detail/" . $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"))), "html", null, true);
                    echo "\" data-toggle=\"tooltip\" title=\"Detail\"><i class=\"icon-zoom-in\"></i></a>
                                ";
                }
                // line 56
                echo "
                                ";
                // line 57
                if (((isset($context["a"]) ? $context["a"] : null) == "edit")) {
                    // line 58
                    echo "                                <a class=\"btn btn-default btn-small\" href=\"";
                    echo twig_escape_filter($this->env, site_url(("pengumuman/edit/" . $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"))), "html", null, true);
                    echo "\" data-toggle=\"tooltip\" title=\"Edit\"><i class=\"icon-edit\"></i></a>
                                ";
                }
                // line 60
                echo "
                                ";
                // line 61
                if (((isset($context["a"]) ? $context["a"] : null) == "delete")) {
                    // line 62
                    echo "                                <a onclick=\"return confirm('Anda yakin ingin menghapus?')\" class=\"btn btn-default btn-small\" href=\"";
                    echo twig_escape_filter($this->env, site_url(("pengumuman/delete/" . $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"))), "html", null, true);
                    echo "\" data-toggle=\"tooltip\" title=\"Hapus\"><i class=\"icon-trash\"></i></a>
                                ";
                }
                // line 64
                echo "                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['a'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 65
            echo "                            </div>
                        </td>
                    </tr>
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['p'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 69
        echo "                </tbody>
            </table>
        </div>
        <br>
        ";
        // line 73
        echo (isset($context["pagination"]) ? $context["pagination"] : null);
        echo "

    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "list-pengumuman.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  179 => 73,  173 => 69,  164 => 65,  158 => 64,  152 => 62,  150 => 61,  147 => 60,  141 => 58,  139 => 57,  136 => 56,  130 => 54,  127 => 53,  123 => 52,  117 => 49,  113 => 48,  107 => 47,  103 => 46,  100 => 45,  96 => 44,  78 => 28,  72 => 26,  70 => 25,  61 => 19,  56 => 17,  49 => 13,  42 => 8,  39 => 7,  32 => 4,  29 => 3,);
    }
}
