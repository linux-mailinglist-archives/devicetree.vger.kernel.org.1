Return-Path: <devicetree+bounces-2021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB237A980F
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 195AD2820FB
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47B5C134A9;
	Thu, 21 Sep 2023 17:08:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A24009461
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:08:33 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2084C448F;
	Thu, 21 Sep 2023 10:07:52 -0700 (PDT)
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-690bc3f82a7so1127520b3a.0;
        Thu, 21 Sep 2023 10:07:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316071; x=1695920871;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4YK1weMDx1FKxLRBUAONRFKh9Xh1dDH4kzuT00SLrmA=;
        b=jYpk4nKWDgQgChDkkVmmFI9i+gI1+c+FU+F5DBZ0RB8h4AOvZL2o17xSmdHiCFMjr9
         h5SE3gvFMyqb0LeKY41bjZrHvrNIyatJrO5Mh2GgRJJNY1hPRHVmur0pywP/WioORfbo
         X8TCl9Pa33frjxfgljdzb9pvNWFzZWzDoEGelYV+8u/RdWbo8BABxURiTSH5zdToraMN
         fhYsNxSLzlz0Ry2EzS7ZRAN0ltz3q6AzibG7oXknu71/j+VgqF7EnumXlSMRP76zDgBv
         MTOOouZiLuOxfwJXqXcMYojM0pcvo/KGix+T9e7V/W7gQFG45Ai/XDCBe1wT9itGjtOK
         b5fg==
X-Gm-Message-State: AOJu0Yx/5n868t349X/eSqsFpmDhTt7L+SIKreDMWRLCtX4piiaMbBc3
	52mBfwwmb2mdtQEoiCAwEBE1A3yi1yhOqi6w
X-Google-Smtp-Source: AGHT+IH84N7XN9EgwsRyAozkezBVyE59xu48k9ZHh5955znTtM6G4h5YLzbUH7LWy2Qeh/RbV0bMTQ==
X-Received: by 2002:a81:91c2:0:b0:59b:4f2d:231 with SMTP id i185-20020a8191c2000000b0059b4f2d0231mr5439104ywg.45.1695300904001;
        Thu, 21 Sep 2023 05:55:04 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id s185-20020a8182c2000000b00597e912e67esm309130ywf.131.2023.09.21.05.55.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 05:55:02 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-59bd2e19c95so11952697b3.0;
        Thu, 21 Sep 2023 05:55:02 -0700 (PDT)
X-Received: by 2002:a25:a329:0:b0:d84:e73a:6ac9 with SMTP id
 d38-20020a25a329000000b00d84e73a6ac9mr5019217ybi.24.1695300902378; Thu, 21
 Sep 2023 05:55:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-27-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-27-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 21 Sep 2023 14:54:49 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU_P8QM1qrwTJQcDCaKhMDCDnO1G_u=Nx=kuzy9MGuT8Q@mail.gmail.com>
Message-ID: <CAMuHMdU_P8QM1qrwTJQcDCaKhMDCDnO1G_u=Nx=kuzy9MGuT8Q@mail.gmail.com>
Subject: Re: [PATCH 26/37] pinctrl: renesas: rzg2l: move ds and oi to SoC
 specific configuration
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
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Claudiu,

On Tue, Sep 12, 2023 at 6:53=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Move drive strength and output impedance values to SoC specific
> configuration data structure (struct rzg2l_hwcfg). This allows extending
> the drive strength support for RZ/G3S. Along with this the DS values
> were converted to uA for simple integration with RZ/G3S support.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks for your patch!

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

> --- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> +++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> @@ -133,13 +133,27 @@ struct rzg2l_register_offsets {
>         u16 sd_ch;
>  };
>
> +/**
> + * enum rzg2l_iolh_index - starting indexes in IOLH specific arrays

indices

> + * @RZG2L_IOLH_IDX_3V3: starting index for 3V3 power source
> + * @RZG2L_IOLH_IDX_MAX: maximum index
> + */
> +enum rzg2l_iolh_index {
> +       RZG2L_IOLH_IDX_3V3 =3D 0,
> +       RZG2L_IOLH_IDX_MAX =3D 4,
> +};
> +
>  /**
>   * struct rzg2l_hwcfg - hardware configuration data structure
>   * @regs: hardware specific register offsets
> + * @iolh_groupa_ua: IOLH group A micro amps specific values

uA (or =C2=B5A ;-)

> + * @iolh_groupb_oi: IOLH group B output impedance specific values
>   * @func_base: base number for port function (see register PFC)
>   */
>  struct rzg2l_hwcfg {
>         const struct rzg2l_register_offsets regs;
> +       u16 iolh_groupa_ua[RZG2L_IOLH_IDX_MAX];
> +       u16 iolh_groupb_oi[RZG2L_IOLH_IDX_MAX];
>         u8 func_base;
>  };
>

> @@ -708,11 +719,11 @@ static int rzg2l_pinctrl_pinconf_set(struct pinctrl=
_dev *pctldev,
>                         if (!(cfg & PIN_CFG_IOLH_A))
>                                 return -EINVAL;
>
> -                       for (index =3D 0; index < ARRAY_SIZE(iolh_groupa_=
mA); index++) {
> -                               if (arg =3D=3D iolh_groupa_mA[index])
> +                       for (index =3D RZG2L_IOLH_IDX_3V3; index < RZG2L_=
IOLH_IDX_3V3 + 4; index++) {

I'm not so fond of the hardcoded "+ 4", here and below.
Please add and use a #define.

> +                               if (arg =3D=3D (hwcfg->iolh_groupa_ua[ind=
ex] / 1000))
>                                         break;
>                         }
> -                       if (index >=3D ARRAY_SIZE(iolh_groupa_mA))
> +                       if (index =3D=3D (RZG2L_IOLH_IDX_3V3 + 4))
>                                 return -EINVAL;
>
>                         rzg2l_rmw_pin_config(pctrl, IOLH(off), bit, IOLH_=
MASK, index);


Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

