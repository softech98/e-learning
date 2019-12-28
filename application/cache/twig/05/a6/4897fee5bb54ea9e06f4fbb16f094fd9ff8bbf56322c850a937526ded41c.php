<?php

/* ujian-online.html */
class __TwigTemplate_05a64897fee5bb54ea9e06f4fbb16f094fd9ff8bbf56322c850a937526ded41c extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->env->loadTemplate("layout-ujian.html");

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "layout-ujian.html";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_title($context, array $blocks = array())
    {
        // line 4
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "judul"), "html", null, true);
        echo " - ";
        $this->displayParentBlock("title", $context, $blocks);
        echo "
";
    }

    // line 7
    public function block_content($context, array $blocks = array())
    {
        // line 8
        echo "<div id=\"wrap\">
    <div class=\"container\">
        <div class=\"row-fluid\">
            <div class=\"span9\">
                <h1 class=\"title\">";
        // line 12
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "judul"), "html", null, true);
        echo "</h1>
            </div>
            <div class=\"span3\">
                <ul class=\"unstyled inline pull-right user-info\">
                    <li><b>";
        // line 16
        echo twig_escape_filter($this->env, nama_panggilan(get_sess_data("user", "nama")), "html", null, true);
        echo "</b></li>
                    <li><img src=\"";
        // line 17
        echo twig_escape_filter($this->env, get_url_image_session(get_sess_data("user", "foto"), "medium", get_sess_data("user", "jenis_kelamin")), "html", null, true);
        echo "\" class=\"nav-avatar img-polaroid img-circle\" /></li>
                </ul>
            </div>
        </div>
        <hr class=\"hr-top\">
        <div class=\"wrap-content\">
            <div class=\"content\">
                <div class=\"row-fluid\">
                    ";
        // line 25
        if (($this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "type_id") != 1)) {
            // line 26
            echo "                    <div class=\"span8\">
                        <b>Informasi : </b><br>
                        ";
            // line 28
            echo $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "info");
            echo "
                    </div>
                    <div class=\"span4\">
                        <div class=\"pull-right clock\" data-spy=\"affix\" data-offset-top=\"60\" data-offset-bottom=\"200\">
                            <div class=\"box-show-hide-countdown\">
                                ";
            // line 33
            $context["hide_countdown"] = sess_hide_countdown("get", $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "id"));
            // line 34
            echo "                                ";
            if (((isset($context["hide_countdown"]) ? $context["hide_countdown"] : null) == 1)) {
                // line 35
                echo "                                    <a href=\"javascript:void(0)\" onclick=\"show_countdown()\" class=\"text-muted\"><i class=\"icon icon-eye-open\"></i> TAMPILKAN TIMER</a>
                                ";
            } else {
                // line 37
                echo "                                    <a href=\"javascript:void(0)\" onclick=\"hide_countdown()\" class=\"text-muted\"><i class=\"icon icon-eye-close\"></i> SEMBUNYIKAN TIMER</a>
                                ";
            }
            // line 39
            echo "                            </div>
                            <div class=\"iosl-theme-wrapper countdown\" ";
            // line 40
            echo ((((isset($context["hide_countdown"]) ? $context["hide_countdown"] : null) == 1)) ? ("style=\"display:none;\"") : (""));
            echo ">
                                <div class=\"iosl-theme\">
                                    <ul>
                                        <li><p><span><em><b class=\"hours\">00</b><i class=\"hoursSlider\"><u>00</u><u>00</u></i></em></span></p></li>
                                        <li><p><span><em><b class=\"minutes\">00</b><i class=\"minutesSlider\"><u>00</u><u>00</u></i></em></span></p></li>
                                        <li><p><span><em><b class=\"seconds\">00</b><i class=\"secondsSlider\"><u>00</u><u>00</u></i></em></span></p></li>
                                    </ul>
                                    <div class=\"jC-clear\"></div>
                                    <p class=\"jCtext\">
                                        <span><em class=\"textSeconds\">SECONDS</em></span>
                                        <span><em class=\"textMinutes\">MINUTES</em></span>
                                        <span><em class=\"textHours\">HOURS</em></span>
                                    </p>
                                    <div class=\"jC-clear\"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    ";
        } else {
            // line 59
            echo "                    <div class=\"span6\">
                        <p><b>Upload file tugas anda : </b></p>
                        <div class=\"well well-sm\">
                            ";
            // line 62
            echo form_open_multipart(((("tugas/submit_upload/" . $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "id")) . "/") . $this->getAttribute((isset($context["data"]) ? $context["data"] : null), "unix_id")));
            echo "
                            <input type=\"file\" name=\"userfile\">
                            <hr class=\"hr1\">
                            <div class=\"row-fluid\">
                                <div class=\"span3\">
                                    <button type=\"submit\" class=\"btn btn-primary\">Upload</button>
                                </div>
                                <div class=\"span9\">
                                    ";
            // line 70
            echo get_flashdata("upload");
            echo "
                                </div>
                            </div>
                            ";
            // line 73
            echo form_close();
            echo "
                        </div>
                    </div>
                    <div class=\"span6\">
                        <b>Informasi Tugas : </b><br>
                        ";
            // line 78
            echo $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "info");
            echo "
                    </div>
                    ";
        }
        // line 81
        echo "                </div>

                ";
        // line 83
        if (($this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "type_id") == 3)) {
            // line 84
            echo "                    <table class=\"table\">
                        <thead>
                            <tr>
                                <th width=\"5%\">No</th>
                                <th>Pertanyaan ";
            // line 88
            echo ((($this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "type_id") == 3)) ? (" dan Pilihan") : (""));
            echo "</th>
                            </tr>
                        </thead>
                        <tbody>
                            ";
            // line 92
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "pertanyaan"));
            $context['loop'] = array(
              'parent' => $context['_parent'],
              'index0' => 0,
              'index'  => 1,
              'first'  => true,
            );
            if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
                $length = count($context['_seq']);
                $context['loop']['revindex0'] = $length - 1;
                $context['loop']['revindex'] = $length;
                $context['loop']['length'] = $length;
                $context['loop']['last'] = 1 === $length;
            }
            foreach ($context['_seq'] as $context["_key"] => $context["p"]) {
                // line 93
                echo "                            <tr id=\"pertanyaan-";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"), "html", null, true);
                echo "\">
                                <td><b>";
                // line 94
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["loop"]) ? $context["loop"] : null), "index"), "html", null, true);
                echo ".</b></td>
                                <td>
                                    <div class=\"pertanyaan\">
                                        ";
                // line 97
                echo $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "pertanyaan");
                echo "
                                    </div>

                                    <div id=\"pilihan-";
                // line 100
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"), "html", null, true);
                echo "\">
                                        <table class=\"table table-condensed table-striped\">
                                            <tbody>
                                                ";
                // line 103
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["p"]) ? $context["p"] : null), "pilihan"));
                foreach ($context['_seq'] as $context["_key"] => $context["pil"]) {
                    if ((!twig_test_empty($this->getAttribute((isset($context["pil"]) ? $context["pil"] : null), "konten")))) {
                        // line 104
                        echo "                                                <tr>
                                                    <td width=\"5%\"><label class=\"label-radio\"><input ";
                        // line 105
                        echo ((is_pilih($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "jawaban"), $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"), $this->getAttribute((isset($context["pil"]) ? $context["pil"] : null), "id"))) ? ("checked") : (""));
                        echo " type=\"radio\" name=\"pilihan-";
                        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"), "html", null, true);
                        echo "\" value=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["pil"]) ? $context["pil"] : null), "urutan"), "html", null, true);
                        echo "\" onclick=\"update_ganda(";
                        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "id"), "html", null, true);
                        echo ", ";
                        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"), "html", null, true);
                        echo ", ";
                        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["pil"]) ? $context["pil"] : null), "id"), "html", null, true);
                        echo ")\" class=\"radio\"> ";
                        echo twig_escape_filter($this->env, get_abjad($this->getAttribute((isset($context["pil"]) ? $context["pil"] : null), "urutan")), "html", null, true);
                        echo "</label></td>
                                                    <td>
                                                        ";
                        // line 107
                        echo $this->getAttribute((isset($context["pil"]) ? $context["pil"] : null), "konten");
                        echo "
                                                    </td>
                                                </tr>
                                                ";
                    }
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pil'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 111
                echo "                                            </tbody>
                                        </table>
                                    </div>

                                </td>
                            </tr>

                            ";
                ++$context['loop']['index0'];
                ++$context['loop']['index'];
                $context['loop']['first'] = false;
                if (isset($context['loop']['length'])) {
                    --$context['loop']['revindex0'];
                    --$context['loop']['revindex'];
                    $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['p'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 119
            echo "                        </tbody>
                    </table>

                    <div class=\"well well-sm\">
                        <p class=\"p-info\">Periksa kembali jawaban anda sebelum mengahiri pengerjaan tugas ini.</p>
                        <button type=\"button\" class=\"btn btn-large btn-primary\" data-toggle=\"modal\" data-target=\"#selesai-mengerjakan\">
                            Selesai Mengerjakan
                        </button>
                    </div>

                    <div class=\"modal fade\" id=\"selesai-mengerjakan\" tabindex=\"-1\" role=\"dialog\">
                        <div class=\"modal-dialog\" role=\"document\">
                            <div class=\"modal-content\">
                                <div class=\"modal-body\">
                                    Anda yakin ingin mengahiri pengerjaan tugas ini?
                                </div>
                                <div class=\"modal-footer\">
                                    <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Nanti dulu</button>
                                    <a class=\"btn btn-primary\" href=\"";
            // line 137
            echo twig_escape_filter($this->env, site_url(((("tugas/finish/" . $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "id")) . "/") . $this->getAttribute((isset($context["data"]) ? $context["data"] : null), "unix_id"))), "html", null, true);
            echo "\" id=\"btn-submit\">Ya, saya sudah selesai</a>
                                </div>
                            </div>
                        </div>
                    </div>
                ";
        }
        // line 143
        echo "

                ";
        // line 145
        if (($this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "type_id") == 2)) {
            // line 146
            echo "                    ";
            echo form_open(((("tugas/submit_essay/" . $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "id")) . "/") . $this->getAttribute((isset($context["data"]) ? $context["data"] : null), "unix_id")), array("id" => "form-essay"));
            echo "
                    <input type=\"hidden\" id=\"str_id\" value=\"";
            // line 147
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["data"]) ? $context["data"] : null), "str_id"), "html", null, true);
            echo "\">
                    <table class=\"table\">
                        <thead>
                            <tr>
                                <th width=\"5%\">No</th>
                                <th>Pertanyaan ";
            // line 152
            echo ((($this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "type_id") == 3)) ? (" dan Pilihan") : (""));
            echo "</th>
                            </tr>
                        </thead>
                        <tbody>
                            ";
            // line 156
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "pertanyaan"));
            $context['loop'] = array(
              'parent' => $context['_parent'],
              'index0' => 0,
              'index'  => 1,
              'first'  => true,
            );
            if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
                $length = count($context['_seq']);
                $context['loop']['revindex0'] = $length - 1;
                $context['loop']['revindex'] = $length;
                $context['loop']['length'] = $length;
                $context['loop']['last'] = 1 === $length;
            }
            foreach ($context['_seq'] as $context["_key"] => $context["p"]) {
                // line 157
                echo "                            <tr id=\"pertanyaan-";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"), "html", null, true);
                echo "\">
                                <td><b>";
                // line 158
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["loop"]) ? $context["loop"] : null), "index"), "html", null, true);
                echo ".</b></td>
                                <td>
                                    <div class=\"pertanyaan\">
                                        ";
                // line 161
                echo $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "pertanyaan");
                echo "
                                    </div>

                                    <textarea name=\"jawaban[";
                // line 164
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"), "html", null, true);
                echo "]\" id=\"jawaban-";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"), "html", null, true);
                echo "\" class=\"texteditor\">";
                echo get_jawaban($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "jawaban"), $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id"));
                echo "</textarea>

                                </td>
                            </tr>

                            ";
                ++$context['loop']['index0'];
                ++$context['loop']['index'];
                $context['loop']['first'] = false;
                if (isset($context['loop']['length'])) {
                    --$context['loop']['revindex0'];
                    --$context['loop']['revindex'];
                    $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['p'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 170
            echo "                        </tbody>
                    </table>

                    <div class=\"well well-sm\">
                        <p class=\"p-info\">Periksa kembali jawaban anda sebelum mengahiri pengerjaan tugas ini.</p>
                        <button type=\"button\" class=\"btn btn-large btn-primary\" data-toggle=\"modal\" data-target=\"#selesai-mengerjakan\">
                            Selesai Mengerjakan
                        </button>
                    </div>
                    ";
            // line 179
            echo form_close();
            echo "

                    <div class=\"modal fade\" id=\"selesai-mengerjakan\" tabindex=\"-1\" role=\"dialog\">
                        <div class=\"modal-dialog\" role=\"document\">
                            <div class=\"modal-content\">
                                <div class=\"modal-body\">
                                    Anda yakin ingin mengahiri pengerjaan tugas ini?
                                </div>
                                <div class=\"modal-footer\">
                                    <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Nanti dulu</button>
                                    <button type=\"button\" class=\"btn btn-primary\" id=\"btn-submit\">Ya, saya sudah selesai</button>
                                </div>
                            </div>
                        </div>
                    </div>
                ";
        }
        // line 195
        echo "
            </div>
        </div>
    </div>
</div>
";
        // line 200
        if (($this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "type_id") != 1)) {
            // line 201
            echo "<input type=\"hidden\" id=\"process-submit\" value=\"0\">
<input type=\"hidden\" id=\"tugas_id\" value=\"";
            // line 202
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "id"), "html", null, true);
            echo "\">
<input type=\"hidden\" id=\"type_id\" value=\"";
            // line 203
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "type_id"), "html", null, true);
            echo "\">
<input type=\"hidden\" id=\"sisa_menit\" value=\"";
            // line 204
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["data"]) ? $context["data"] : null), "sisa_menit"), "html", null, true);
            echo "\">
<input type=\"hidden\" id=\"finish_url\" value=\"";
            // line 205
            echo twig_escape_filter($this->env, site_url(((("tugas/finish/" . $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "tugas"), "id")) . "/") . $this->getAttribute((isset($context["data"]) ? $context["data"] : null), "unix_id"))), "html", null, true);
            echo "\">
<input type=\"hidden\" id=\"siswa_id\" value=\"";
            // line 206
            echo twig_escape_filter($this->env, get_sess_data("user", "id"), "html", null, true);
            echo "\">
";
        }
    }

    public function getTemplateName()
    {
        return "ujian-online.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  446 => 206,  442 => 205,  438 => 204,  434 => 203,  430 => 202,  427 => 201,  425 => 200,  418 => 195,  399 => 179,  388 => 170,  364 => 164,  358 => 161,  352 => 158,  347 => 157,  330 => 156,  323 => 152,  315 => 147,  310 => 146,  308 => 145,  304 => 143,  295 => 137,  275 => 119,  254 => 111,  243 => 107,  226 => 105,  223 => 104,  218 => 103,  212 => 100,  206 => 97,  200 => 94,  195 => 93,  178 => 92,  171 => 88,  165 => 84,  163 => 83,  159 => 81,  153 => 78,  145 => 73,  139 => 70,  128 => 62,  123 => 59,  101 => 40,  98 => 39,  94 => 37,  90 => 35,  87 => 34,  85 => 33,  77 => 28,  73 => 26,  71 => 25,  60 => 17,  56 => 16,  49 => 12,  43 => 8,  40 => 7,  32 => 4,  29 => 3,);
    }
}
