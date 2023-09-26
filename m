Return-Path: <devicetree+bounces-3462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A56417AEE6B
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:24:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 60E212813A1
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 659EB2AB52;
	Tue, 26 Sep 2023 14:24:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B7611C296
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 14:23:59 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 803AD101;
	Tue, 26 Sep 2023 07:23:56 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-59f6492b415so68293317b3.0;
        Tue, 26 Sep 2023 07:23:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695738235; x=1696343035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b6GInBInFecR+uHBKFfmOCInwlwyJcLVJtZLCIykOZs=;
        b=ZUZMHEsZto/UkzaDFCGwHe9Z/OJ5naLg3jyeu+5PKrKkJSTvrWPJzxUNX5tw3bGisU
         TqP3lzoxrMpjtgL1APQU4o9ctAlwYR/70SVoaX83LRFLuurHGVh9LUDMf7olbILQ7zgG
         i4wIKBfi0vbpEDA5Y4TUFrBmysrBd3YCpyPFMddSR9noX+zxaNu8cN5QImJO35TVIQTV
         oI14Ghj9yTpnufcI9zsYBw6kd1KxJEixxBz98/9g6Xc5FtXsbKA3awYAFBbgdawc7ZVu
         RvZ/qBBCxynG7EaZ80s7RGWqwEbsQuLtGMtzg8RgUsXmMMMYD1Pjny/WQiVaIAXDAd4i
         w6WQ==
X-Gm-Message-State: AOJu0YzbQ0pihNRBZRM3PzDwe84+K9QIGDI0kH2M3Zh17pa/BQUt3au6
	+WBS/22K58jB2I2fEEof5FlGVS0XWGJ7Sg==
X-Google-Smtp-Source: AGHT+IHoy5K5uGXt4Am/NdtVvpfIGtR5dl61OjDvtiyjuLMl/jpu53XB8kamVMkIdz8McXQ2X06j5Q==
X-Received: by 2002:a05:690c:4808:b0:59f:6440:7eff with SMTP id hc8-20020a05690c480800b0059f64407effmr2242894ywb.15.1695738235335;
        Tue, 26 Sep 2023 07:23:55 -0700 (PDT)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com. [209.85.128.172])
        by smtp.gmail.com with ESMTPSA id x184-20020a0deec1000000b005463e45458bsm3041260ywe.123.2023.09.26.07.23.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 07:23:54 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-59e88a28b98so126177077b3.1;
        Tue, 26 Sep 2023 07:23:54 -0700 (PDT)
X-Received: by 2002:a0d:e8c5:0:b0:59f:6489:75ac with SMTP id
 r188-20020a0de8c5000000b0059f648975acmr1898989ywe.19.1695738234682; Tue, 26
 Sep 2023 07:23:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
 <20230912045157.177966-26-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVkttQpA-s0MrKbTVxJ6K+xXmhV3sNNLTAPSbDa0f8XYA@mail.gmail.com> <1f1b5174-cfd4-4393-3a86-9adfc8c2cce1@tuxon.dev>
In-Reply-To: <1f1b5174-cfd4-4393-3a86-9adfc8c2cce1@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 26 Sep 2023 16:23:41 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXL=MpBin208aXe95Mp+NunGLGugtDG0MSs1XtYxyZ71Q@mail.gmail.com>
Message-ID: <CAMuHMdXL=MpBin208aXe95Mp+NunGLGugtDG0MSs1XtYxyZ71Q@mail.gmail.com>
Subject: Re: [PATCH 25/37] pinctrl: renesas: rzg2l: adapt function number for RZ/G3S
To: claudiu beznea <claudiu.beznea@tuxon.dev>
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

On Tue, Sep 26, 2023 at 11:55=E2=80=AFAM claudiu beznea
<claudiu.beznea@tuxon.dev> wrote:
> On 21.09.2023 15:51, Geert Uytterhoeven wrote:
> > On Tue, Sep 12, 2023 at 6:53=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.d=
ev> wrote:
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> On RZ/G3S PFC register allow setting 8 functions for individual ports
> >> (function1 to function8). For function1 register need to be configured
> >> with 0, for function8 register need to be configured with 7.
> >> We cannot use zero based addressing when requesting functions from
> >> different code places as documentation (RZG3S_pinfunction_List_r1.0.xl=
sx)
> >> states explicitly that function0 has different meaning.
> >
> > According to that table, function0 is GPIO.
>
> Yes, I'll mention it like this in the next version.
>
> >> For this add a new member to struct rzg2l_hwcfg that will keep the
> >> offset that need to be substracted before applying a value to PFC regi=
ster.
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >
> > But one question below...
> >
> >> --- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> >> +++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> >> @@ -136,9 +136,11 @@ struct rzg2l_register_offsets {
> >>  /**
> >>   * struct rzg2l_hwcfg - hardware configuration data structure
> >>   * @regs: hardware specific register offsets
> >> + * @func_base: base number for port function (see register PFC)
> >>   */
> >>  struct rzg2l_hwcfg {
> >>         const struct rzg2l_register_offsets regs;
> >> +       u8 func_base;
> >>  };
> >>
> >>  struct rzg2l_dedicated_configs {
> >> @@ -221,6 +223,7 @@ static int rzg2l_pinctrl_set_mux(struct pinctrl_de=
v *pctldev,
> >>                                  unsigned int group_selector)
> >>  {
> >>         struct rzg2l_pinctrl *pctrl =3D pinctrl_dev_get_drvdata(pctlde=
v);
> >> +       const struct rzg2l_hwcfg *hwcfg =3D pctrl->data->hwcfg;
> >>         const struct pinctrl_pin_desc *pin_desc;
> >>         unsigned int i, *psel_val, *pin_data;
> >>         struct function_desc *func;
> >> @@ -247,9 +250,9 @@ static int rzg2l_pinctrl_set_mux(struct pinctrl_de=
v *pctldev,
> >>                 off =3D RZG2L_PIN_CFG_TO_PORT_OFFSET(*pin_data);
> >>
> >>                 dev_dbg(pctrl->dev, "port:%u pin: %u off:%x PSEL:%u\n"=
, port,
> >> -                       pin, off, psel_val[i]);
> >> +                       pin, off, psel_val[i] - hwcfg->func_base);
> >>
> >> -               rzg2l_pinctrl_set_pfc_mode(pctrl, pin, off, psel_val[i=
]);
> >> +               rzg2l_pinctrl_set_pfc_mode(pctrl, pin, off, psel_val[i=
] - hwcfg->func_base);
> >>         }
> >>
> >>         return 0;
> >
> > Perhaps the adjustment should be done in rzg2l_dt_subnode_to_map()
> > instead, when obtaining MUX_FUNC() from DT? That would allow you to do
> > some basic validation on it too, which is currently completely missing
> > (reject out-of-range values overflowing into adjacent PFC fields,
> > reject zero on RZ/G3S).
>
> I'll have a look on this. I see .set_mux() can also be called from sysfs
> though pinmux-select exported file thus, I don't know at the moment if
> validating it on rzg2l_dt_subnode_to_map() will be enough.

OK, that's a good reason to keep it as-is.

> Would it be OK to have this outside of this series or you would prefer it=
 now?

That can be done later. I believe currently there is no validation against
the register field size limit anyway.
Thanks!

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

