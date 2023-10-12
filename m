Return-Path: <devicetree+bounces-8187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 182AB7C7062
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:36:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD1F22828F4
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 180F8883E;
	Thu, 12 Oct 2023 14:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D7E1B275
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:36:51 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 403B3BE;
	Thu, 12 Oct 2023 07:36:50 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5a7e5dc8573so13030647b3.0;
        Thu, 12 Oct 2023 07:36:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697121409; x=1697726209;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7xNUkD+t8nN69dK1Tkr14yK7DyMQjN5EP3Sv+TV2NO4=;
        b=wJDe08GnxvgDzS0/s2bsFX8+DMGXCq2qkkqbEI7Rxcigyg6xrluojSguNRST8aG4+f
         JsTr86US/9w6fLBmPzb4WncSgjHRRt+Miw597MSRTF0by4TZ7XPh6pW5tNGgARqUIKnE
         +5rC4VUwBWBK8Z74xeTN53pLzeo+GcCkYcLsIAivCysQOtwN08XHF4eb1qekKP1XJIa5
         KwXr0Sxob1LGS4pxUxn9nVDaRFQKQOwVFOWwwJDZ19Zfr8aAtTlJJEZrSOrmsFybWrg5
         gK4vNRo//2ePZHeEWenRa5wSz9ubHxJcq1d1q1oT3n8QRL1tc8UjTwflf6RUy3bkfwCB
         CEnQ==
X-Gm-Message-State: AOJu0YyGWu+iAUdhgH6RlibZHnFRMIpo6OBqyTcdd7YZKhfaaUU5mZtQ
	ShQxQenY3qvOmnBq4dxlg+YqwN2L8IfpUA==
X-Google-Smtp-Source: AGHT+IEX9tcaEEox552ONpzn3vErKFV+9ykd5SIaVw8mYX9EXMJzd9IainrzGm1kGv+e+XSSnlCjCQ==
X-Received: by 2002:a81:4402:0:b0:5a7:b1d9:70cb with SMTP id r2-20020a814402000000b005a7b1d970cbmr10123357ywa.2.1697121409247;
        Thu, 12 Oct 2023 07:36:49 -0700 (PDT)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com. [209.85.128.172])
        by smtp.gmail.com with ESMTPSA id v83-20020a814856000000b005a7d50b7edfsm1503222ywa.142.2023.10.12.07.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 07:36:47 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-59f6441215dso12712287b3.2;
        Thu, 12 Oct 2023 07:36:47 -0700 (PDT)
X-Received: by 2002:a0d:ce02:0:b0:59b:ec11:7734 with SMTP id
 q2-20020a0dce02000000b0059bec117734mr25998262ywd.39.1697121407643; Thu, 12
 Oct 2023 07:36:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com> <20231010132701.1658737-5-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20231010132701.1658737-5-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Oct 2023 16:36:34 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW-m+ikzOiCqGaiofd0QG5BVuoMK+z6G7u2JboGTw3xhQ@mail.gmail.com>
Message-ID: <CAMuHMdW-m+ikzOiCqGaiofd0QG5BVuoMK+z6G7u2JboGTw3xhQ@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: renesas: rzg3s-smarc-som: Enable SDHI2
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: magnus.damm@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Claudiu,

Thanks for your patch!

On Tue, Oct 10, 2023 at 3:27=E2=80=AFPM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add SDHI2 to RZ/G3S Smarc SoM. SDHI2 pins are multiplexed with SCIF1, SSI=
3,

SSI0

> IRQ0. The selection b/w SDHI2 and SCIF1, SSI3, IRQ0 is done with a switch

and IRQ1 (twice). Or just say "The selection is done ...".

> button. To be able to select b/w these a compilation flag has been added
> (SW_SD2_EN) at the moment being instantiated to select SDHI2.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
> @@ -13,14 +13,21 @@
>   * @SW_SD0_DEV_SEL:
>   *     0 - SD0 is connected to eMMC
>   *     1 - SD0 is connected to uSD0 card
> + * @SW_SD2_EN:
> + *     0 - SCIF1, SSI3, IRQ0, IRQ1 connected to SoC

SSI0

> + *     1 - SD2 is connected to SoC
>   */
>  #define SW_SD0_DEV_SEL 1
> +#define SW_SD2_EN      1

> @@ -100,6 +125,19 @@ &sdhi0 {
>  };
>  #endif
>
> +#if SW_SD2_EN
> +&sdhi2 {
> +       pinctrl-0 =3D <&sdhi2_pins>;
> +       pinctrl-1 =3D <&sdhi2_pins>;
> +       pinctrl-names =3D "default", "state_uhs";

Do you need two states if there is only a single voltage?
AFAIK, UHS needs 1.8V.

> +       vmmc-supply =3D <&vcc_sdhi2>;
> +       vqmmc-supply =3D <&reg_3p3v>;
> +       bus-width =3D <4>;
> +       max-frequency =3D <50000000>;
> +       status =3D "okay";
> +};
> +#endif
> +
>  &pinctrl {
>         sdhi0_pins: sd0 {
>                 data {

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

