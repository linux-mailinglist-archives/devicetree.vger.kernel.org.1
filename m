Return-Path: <devicetree+bounces-2166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3637A7A9C9B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:22:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4926D284106
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1245C4E26A;
	Thu, 21 Sep 2023 18:11:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D05A4CFA8
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:11:27 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B27891B86;
	Thu, 21 Sep 2023 10:55:20 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-76f2843260bso75619885a.3;
        Thu, 21 Sep 2023 10:55:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318845; x=1695923645;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vtqRvZvxNnSb6xtGb81vBMV2QFz9nIlyazexCBBcUTo=;
        b=tXvCTDz13iRSzFZKKw3uop/JyfI8R2QvZ8EQKPbCAQmdUdvJ/pNSXBKFhlqmlma8s8
         pMceazvahh0cnp2eJVpMB3RyMAp46l8mivAAFeNmrhCNGuXKndbG4VeeRImUgrOMka95
         6c+Dq7eJQP4dZ7T/1CadsSX/BFOGzx2yz371S0hyEdx1WfqNZkQYTt45h30ykJt4t3x1
         fX6LHDAhBBWhFl9zI+DT65Z7Qz/Fu0GNI3bkSGqwKLJebg2hoO/Z3iLmFd1WtjXRmIFJ
         MU/DWzaBjSHyZyyXSMyOt9SpZyfaXA2pTQYAiOFuancm54TyDpVvr+nbfkgVVrQM8fE5
         GHUA==
X-Gm-Message-State: AOJu0YxDBoFvTegV6J78Qhum+SIhBvQpOypfoUEZZ5I+Eaz585N32fgb
	5/gia2ulsgJ34P48W4u2FwsZpkf5dWF+4zew
X-Google-Smtp-Source: AGHT+IF4TdCX1VWZvDAS3qu+8Aa1EAcRT/2KCviM23hJxgL00ZM/LbBrmo9g1vn+iHjvWg3+zphjvQ==
X-Received: by 2002:a25:8d0d:0:b0:d81:58d3:cc70 with SMTP id n13-20020a258d0d000000b00d8158d3cc70mr5826363ybl.52.1695308334094;
        Thu, 21 Sep 2023 07:58:54 -0700 (PDT)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id w8-20020a25ac08000000b00d7b957d8ed9sm376899ybi.17.2023.09.21.07.58.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 07:58:53 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-d81adf0d57fso1311975276.1;
        Thu, 21 Sep 2023 07:58:52 -0700 (PDT)
X-Received: by 2002:a25:9e0f:0:b0:d78:35cd:7f5c with SMTP id
 m15-20020a259e0f000000b00d7835cd7f5cmr4976733ybq.46.1695308332470; Thu, 21
 Sep 2023 07:58:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-31-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-31-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 21 Sep 2023 16:58:40 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV2GEKF0QjKudz529_tmUksTNMJtZu9NwC18KX-AXwaeg@mail.gmail.com>
Message-ID: <CAMuHMdV2GEKF0QjKudz529_tmUksTNMJtZu9NwC18KX-AXwaeg@mail.gmail.com>
Subject: Re: [PATCH 30/37] pinctrl: renesas: rzg2l: add support for RZ/G3S SoC
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	ulf.hansson@linaro.org, linus.walleij@linaro.org, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, magnus.damm@gmail.com, catalin.marinas@arm.com, 
	will@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	biju.das.jz@bp.renesas.com, quic_bjorande@quicinc.com, arnd@arndb.de, 
	konrad.dybcio@linaro.org, neil.armstrong@linaro.org, nfraprado@collabora.com, 
	rafal@milecki.pl, wsa+renesas@sang-engineering.com, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Claudiu,

On Tue, Sep 12, 2023 at 6:53=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add basic support for RZ/G3S to be able to boot from SD card, have a
> running console port and use GPIOs. RZ/G3S has 82 general-purpose IO
> ports. Support for the remaining pin functions (e.g. Ethernet, XSPI)
> will be added along with controller specific support.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> +++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> @@ -1330,6 +1336,36 @@ static const u32 r9a07g043_gpio_configs[] =3D {
>         RZG2L_GPIO_PORT_PACK(6, 0x22, RZG2L_MPXED_PIN_FUNCS),
>  };
>
> +static const u32 r9a08g045_gpio_configs[] =3D {
> +       RZG2L_GPIO_PORT_PACK(4, 0x20, RZG3S_MPXED_PIN_FUNCS(A)),         =
               /* P0  */
> +       RZG2L_GPIO_PORT_PACK(5, 0x30, RZG2L_MPXED_ETH_PIN_FUNCS(PIN_CFG_I=
OLH_C |
> +                                                               PIN_CFG_I=
O_VMC_ETH0)),  /* P1 */

P1_0 and P7_0 have IEN functionality.
I don't know how to represent that...

> +       RZG2L_GPIO_PORT_PACK(4, 0x31, RZG2L_MPXED_ETH_PIN_FUNCS(PIN_CFG_I=
OLH_C |
> +                                                               PIN_CFG_I=
O_VMC_ETH0)),  /* P2 */
> +       RZG2L_GPIO_PORT_PACK(4, 0x32, RZG2L_MPXED_ETH_PIN_FUNCS(PIN_CFG_I=
OLH_C |
> +                                                               PIN_CFG_I=
O_VMC_ETH0)),  /* P3 */
> +       RZG2L_GPIO_PORT_PACK(6, 0x33, RZG2L_MPXED_ETH_PIN_FUNCS(PIN_CFG_I=
OLH_C |
> +                                                               PIN_CFG_I=
O_VMC_ETH0)),  /* P4 */
> +       RZG2L_GPIO_PORT_PACK(5, 0x21, RZG3S_MPXED_PIN_FUNCS(A)),         =
               /* P5  */
> +       RZG2L_GPIO_PORT_PACK(5, 0x22, RZG3S_MPXED_PIN_FUNCS(A)),         =
               /* P6  */
> +       RZG2L_GPIO_PORT_PACK(5, 0x34, RZG2L_MPXED_ETH_PIN_FUNCS(PIN_CFG_I=
OLH_C |
> +                                                               PIN_CFG_I=
O_VMC_ETH1)),  /* P7 */
> +       RZG2L_GPIO_PORT_PACK(5, 0x35, RZG2L_MPXED_ETH_PIN_FUNCS(PIN_CFG_I=
OLH_C |
> +                                                               PIN_CFG_I=
O_VMC_ETH1)),  /* P8 */
> +       RZG2L_GPIO_PORT_PACK(4, 0x36, RZG2L_MPXED_ETH_PIN_FUNCS(PIN_CFG_I=
OLH_C |
> +                                                               PIN_CFG_I=
O_VMC_ETH1)),  /* P9 */
> +       RZG2L_GPIO_PORT_PACK(5, 0x37, RZG2L_MPXED_ETH_PIN_FUNCS(PIN_CFG_I=
OLH_C |
> +                                                               PIN_CFG_I=
O_VMC_ETH1)),  /* P10 */
> +       RZG2L_GPIO_PORT_PACK(4, 0x23, RZG3S_MPXED_PIN_FUNCS(B) | PIN_CFG_=
IEN),          /* P11  */

P11_0 does not have IEN functionality.
I don't know how to represent that...

> +       RZG2L_GPIO_PORT_PACK(2, 0x24, RZG3S_MPXED_PIN_FUNCS(B) | PIN_CFG_=
IEN),          /* P12  */
> +       RZG2L_GPIO_PORT_PACK(5, 0x25, RZG3S_MPXED_PIN_FUNCS(A)),         =
               /* P13  */
> +       RZG2L_GPIO_PORT_PACK(3, 0x26, RZG3S_MPXED_PIN_FUNCS(A)),         =
               /* P14  */
> +       RZG2L_GPIO_PORT_PACK(4, 0x27, RZG3S_MPXED_PIN_FUNCS(A)),         =
               /* P15  */
> +       RZG2L_GPIO_PORT_PACK(2, 0x28, RZG3S_MPXED_PIN_FUNCS(A)),         =
               /* P16  */
> +       RZG2L_GPIO_PORT_PACK(4, 0x29, RZG3S_MPXED_PIN_FUNCS(A)),         =
               /* P17  */
> +       RZG2L_GPIO_PORT_PACK(6, 0x2a, RZG3S_MPXED_PIN_FUNCS(A)),         =
               /* P18 */
> +};
> +
>  static const struct {
>         struct rzg2l_dedicated_configs common[35];
>         struct rzg2l_dedicated_configs rzg2l_pins[7];
> @@ -1416,6 +1452,46 @@ static const struct {
>         }
>  };
>
> +static const struct rzg2l_dedicated_configs rzg3s_dedicated_pins[] =3D {
> +       { "NMI", RZG2L_SINGLE_PIN_PACK(0x0, 0, (PIN_CFG_FILONOFF | PIN_CF=
G_FILNUM |
> +                                               PIN_CFG_FILCLKSEL)) },
> +       { "TMS/SWDIO", RZG2L_SINGLE_PIN_PACK(0x1, 0, (PIN_CFG_IOLH_A | PI=
N_CFG_IEN |
> +                                                     PIN_CFG_SOFT_PS)) }=
,
> +       { "TDO", RZG2L_SINGLE_PIN_PACK(0x1, 1, (PIN_CFG_IOLH_A | PIN_CFG_=
SOFT_PS)) },
> +       { "WDTOVF_PERROUT#", RZG2L_SINGLE_PIN_PACK(0x6, 0, PIN_CFG_IOLH_A=
 | PIN_CFG_SOFT_PS) },
> +       { "SD0_CLK", RZG2L_SINGLE_PIN_PACK(0x10, 0, (PIN_CFG_IOLH_B | PIN=
_CFG_IO_VMC_SD0)) },
> +       { "SD0_CMD", RZG2L_SINGLE_PIN_PACK(0x10, 1, (PIN_CFG_IOLH_B | PIN=
_CFG_IEN |
> +                                                    PIN_CFG_IO_VMC_SD0))=
 },
> +       { "SD0_RST#", RZG2L_SINGLE_PIN_PACK(0x10, 2, (PIN_CFG_IOLH_B | PI=
N_CFG_IO_VMC_SD0)) },
> +       { "SD0_DATA0", RZG2L_SINGLE_PIN_PACK(0x11, 0, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD0=
)) },
> +       { "SD0_DATA1", RZG2L_SINGLE_PIN_PACK(0x11, 1, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD0=
)) },
> +       { "SD0_DATA2", RZG2L_SINGLE_PIN_PACK(0x11, 2, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD0=
)) },
> +       { "SD0_DATA3", RZG2L_SINGLE_PIN_PACK(0x11, 3, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD0=
)) },
> +       { "SD0_DATA4", RZG2L_SINGLE_PIN_PACK(0x11, 4, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD0=
)) },
> +       { "SD0_DATA5", RZG2L_SINGLE_PIN_PACK(0x11, 5, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD0=
)) },
> +       { "SD0_DATA6", RZG2L_SINGLE_PIN_PACK(0x11, 6, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD0=
)) },
> +       { "SD0_DATA7", RZG2L_SINGLE_PIN_PACK(0x11, 7, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD0=
)) },
> +       { "SD1_CLK", RZG2L_SINGLE_PIN_PACK(0x12, 0, (PIN_CFG_IOLH_B | PIN=
_CFG_IO_VMC_SD1)) },
> +       { "SD1_CMD", RZG2L_SINGLE_PIN_PACK(0x12, 1, (PIN_CFG_IOLH_B | PIN=
_CFG_IEN |
> +                                                    PIN_CFG_IO_VMC_SD1))=
 },
> +       { "SD1_DATA0", RZG2L_SINGLE_PIN_PACK(0x13, 0, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD1=
)) },
> +       { "SD1_DATA1", RZG2L_SINGLE_PIN_PACK(0x13, 1, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD1=
)) },
> +       { "SD1_DATA2", RZG2L_SINGLE_PIN_PACK(0x13, 2, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD1=
)) },
> +       { "SD1_DATA3", RZG2L_SINGLE_PIN_PACK(0x13, 3, (PIN_CFG_IOLH_B | P=
IN_CFG_IEN |
> +                                                      PIN_CFG_IO_VMC_SD1=
)) },

Is there any specific reason you left out the XSPI, Audio clock, and I3C pi=
ns?

> +};
> +
>  static int rzg2l_gpio_get_gpioint(unsigned int virq, const struct rzg2l_=
pinctrl_data *data)
>  {
>         unsigned int gpioint;
> @@ -1823,6 +1899,40 @@ static const struct rzg2l_hwcfg rzg2l_hwcfg =3D {
>         .iolh_groupb_oi =3D { 100, 66, 50, 33, },
>  };
>
> +static const struct rzg2l_hwcfg rzg3s_hwcfg =3D {
> +       .regs =3D {
> +               .pwpr =3D 0x3000,
> +               .sd_ch =3D 0x3004,
> +       },
> +       .iolh_groupa_ua =3D {
> +               /* 1v8 power source */
> +               [RZG2L_IOLH_IDX_1V8] =3D 2200, 4400, 9000, 10000,
> +               /* 2v5 power source */
> +               [RZG2L_IOLH_IDX_2V5 ... RZG2L_IOLH_IDX_3V3 - 1] =3D RZG2L=
_INVALID_IOLH_VAL,

Can be dropped once zero means invalid.

> +               /* 3v3 power source */
> +               [RZG2L_IOLH_IDX_3V3] =3D 1900, 4000, 8000, 9000,
> +       },
> +       .iolh_groupb_ua =3D {
> +               /* 1v8 power source */
> +               [RZG2L_IOLH_IDX_1V8] =3D 7000, 8000, 9000, 10000,
> +               /* 2v5 power source */
> +               [RZG2L_IOLH_IDX_2V5 ... RZG2L_IOLH_IDX_3V3 - 1] =3D RZG2L=
_INVALID_IOLH_VAL,

Can be dropped once zero means invalid.

> +               /* 3v3 power source */
> +               [RZG2L_IOLH_IDX_3V3] =3D 4000, 6000, 8000, 9000,
> +       },
> +       .iolh_groupc_ua =3D {
> +               /* 1v8 power source */
> +               [RZG2L_IOLH_IDX_1V8] =3D 5200, 6000, 6550, 6800,
> +               /* 2v5 source */
> +               [RZG2L_IOLH_IDX_2V5] =3D 4700, 5300, 5800, 6100,
> +               /* 3v3 power source */
> +               [RZG2L_IOLH_IDX_3V3] =3D 4500, 5200, 5700, 6050,
> +       },
> +       .drive_strength_ua =3D true,
> +       .iolh_groupb_oi =3D { [0 ... 3] =3D RZG2L_INVALID_IOLH_VAL, },
> +       .func_base =3D 1,
> +};
> +
>  static struct rzg2l_pinctrl_data r9a07g043_data =3D {
>         .port_pins =3D rzg2l_gpio_names,
>         .port_pin_configs =3D r9a07g043_gpio_configs,
> @@ -1844,6 +1954,16 @@ static struct rzg2l_pinctrl_data r9a07g044_data =
=3D {
>         .hwcfg =3D &rzg2l_hwcfg,
>  };
>
> +static struct rzg2l_pinctrl_data r9a08g045_data =3D {
> +       .port_pins =3D rzg2l_gpio_names,
> +       .port_pin_configs =3D r9a08g045_gpio_configs,
> +       .n_ports =3D ARRAY_SIZE(r9a08g045_gpio_configs),
> +       .dedicated_pins =3D rzg3s_dedicated_pins,
> +       .n_port_pins =3D ARRAY_SIZE(r9a08g045_gpio_configs) * RZG2L_PINS_=
PER_PORT,
> +       .n_dedicated_pins =3D ARRAY_SIZE(rzg3s_dedicated_pins),
> +       .hwcfg =3D &rzg3s_hwcfg,
> +};
> +
>  static const struct of_device_id rzg2l_pinctrl_of_table[] =3D {
>         {
>                 .compatible =3D "renesas,r9a07g043-pinctrl",

Please add a BUILD_BUG_ON() check for RZ/G3S to the
rzg2l_pinctrl_probe() function, as is done for the other SoCs in
the family.

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

