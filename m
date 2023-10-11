Return-Path: <devicetree+bounces-7918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E595D7C6107
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 01:19:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9972628229A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 23:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1700E2375C;
	Wed, 11 Oct 2023 23:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s4vAS0Bk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A7D249E5
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 23:19:48 +0000 (UTC)
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B787CF1
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:19:38 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-27cfb8bc7eeso283313a91.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697066377; x=1697671177; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y7sXSYGeD1Ulz8sa7/3++MxVxhYAPIleK6QJVBE+xOo=;
        b=s4vAS0BkWD6fVZBkkqrRVBKZO4dcxdhoNjFoe6nXjwUeFmGaxb7R3AYZqX10frU5Bb
         oWZrev3tno7yYlUNTohI2Bb2yvCHVj6PKNVDavIGrYFeFBv3OPTu7VmuAPAAYFVUrhoz
         8c3H4Bp8bTO7pgy+PuzjweU9Dp964oDSNKU3gjclpB6o8jU4dc0fIyt7iwgVfIfEMfsg
         9eRMK99AKpHo1BR5XwxhoartolMst2oo8rtXBnbmL20iwcTNPEOf4MlUdtjEJXXV2Nlr
         0SzIAsoCbqG+EWIiMxGj4XBEz2dx+mOd2wrMUFmZyUDaFYtN6LP90ynFH0FGuN61dTsO
         bYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697066377; x=1697671177;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y7sXSYGeD1Ulz8sa7/3++MxVxhYAPIleK6QJVBE+xOo=;
        b=qGZ/SN/95TBBoMozrfv6x8lBrAXF++2aKf5hNqXhHL+Mr3Si4O/hhY/0s5IJgpa+jr
         J8cXJTt/buRj1TdKrZ6YqR2UXOF9A9SVdWIEnsJjLWb9xIcPU4V/+wLzuVBx04eRFgcF
         dIfaPL7/pseBaoByIJonpTuRoF+W9TGL6/ioTWdd7rceO6J/DcHXqR1mwiEyYbeVu213
         Gt3b5huP+Mnh5TBH6eQqlLMUMafDu+C9GnTMIo1zA3DiaXdcqhn7b9E+vPBG1ADtn/ZZ
         lsEQClHflNaRLPxlcwNdvIJ+P8SlM6cb6sWfWlHx4zAt0hKaVdYM9Z9Y7KfY3/KppAbp
         dNdA==
X-Gm-Message-State: AOJu0Yx4W8oFgZPDOsKo6huYUIPVCT8XzsoxbVeI1QOMakpry4CGbOM1
	wYmqEFSOP71Z2h8CJAaKMXvw3SP0E7xT2VEGnujqAw==
X-Google-Smtp-Source: AGHT+IHvL+bbhmKDuK4Xj6D62jFyDDy2/T5qTqff65dUSGMhE1YdBYUcRmNMYPOiaGYDXSzv3kq1lrobPLTj8pwu88I=
X-Received: by 2002:a17:90a:f6d7:b0:27c:edf3:d045 with SMTP id
 er23-20020a17090af6d700b0027cedf3d045mr5447584pjb.40.1697066376694; Wed, 11
 Oct 2023 16:19:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org> <20231011184823.443959-10-peter.griffin@linaro.org>
In-Reply-To: <20231011184823.443959-10-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 11 Oct 2023 18:19:25 -0500
Message-ID: <CAPLW+4nmonxdLCWEZy15attd5ULUfL0VgZf5YQzFBA_0bvUwUw@mail.gmail.com>
Subject: Re: [PATCH v3 09/20] clk: samsung: clk-pll: Add support for pll_{0516,0517,518}
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	cw00.choi@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	saravanak@google.com, willmcvicker@google.com, soc@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	kernel-team@android.com, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 11, 2023 at 1:49=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> These plls are found in the Tensor gs101 SoC found in the Pixel 6.
>
> pll0516x: Integer PLL with high frequency
> pll0517x: Integer PLL with middle frequency
> pll0518x: Integer PLL with low frequency
>
> PLL0516x
> FOUT =3D (MDIV * 2 * FIN)/PDIV * 2^SDIV)
>
> PLL0517x and PLL0518x
> FOUT =3D (MDIV * FIN)/PDIV*2^SDIV)
>
> The PLLs are similar enough to pll_0822x that the same code can handle
> both. The main difference is the change in the fout formula for the
> high frequency 0516 pll.
>
> Locktime for 516,517 & 518 is 150 the same as the pll_0822x lock factor.
> MDIV, SDIV PDIV masks and bit shifts are also the same as 0822x.
>
> When defining the PLL the "con" parameter should be set to CON3
> register, like this
>
> PLL(pll_0517x, CLK_FOUT_SHARED0_PLL, "fout_shared0_pll", "oscclk",
>     PLL_LOCKTIME_PLL_SHARED0, PLL_CON3_PLL_SHARED0,
>     NULL),
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  drivers/clk/samsung/clk-pll.c | 9 ++++++++-
>  drivers/clk/samsung/clk-pll.h | 3 +++
>  2 files changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.=
c
> index 74934c6182ce..4ef9fea2a425 100644
> --- a/drivers/clk/samsung/clk-pll.c
> +++ b/drivers/clk/samsung/clk-pll.c
> @@ -442,7 +442,11 @@ static unsigned long samsung_pll0822x_recalc_rate(st=
ruct clk_hw *hw,
>         pdiv =3D (pll_con3 >> PLL0822X_PDIV_SHIFT) & PLL0822X_PDIV_MASK;
>         sdiv =3D (pll_con3 >> PLL0822X_SDIV_SHIFT) & PLL0822X_SDIV_MASK;
>
> -       fvco *=3D mdiv;
> +       if (pll->type =3D=3D pll_0516x)
> +               fvco =3D fvco * 2 * mdiv;
> +       else
> +               fvco *=3D mdiv;
> +

Can be written like this I guess:

       fvco *=3D mdiv;
       if (pll->type =3D=3D pll_0516x)
              fvco *=3D 2;

if you think it's more neat. Other than that:

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>         do_div(fvco, (pdiv << sdiv));
>
>         return (unsigned long)fvco;
> @@ -1316,6 +1320,9 @@ static void __init _samsung_clk_register_pll(struct=
 samsung_clk_provider *ctx,
>         case pll_1417x:
>         case pll_0818x:
>         case pll_0822x:
> +       case pll_0516x:
> +       case pll_0517x:
> +       case pll_0518x:
>                 pll->enable_offs =3D PLL0822X_ENABLE_SHIFT;
>                 pll->lock_offs =3D PLL0822X_LOCK_STAT_SHIFT;
>                 if (!pll->rate_table)
> diff --git a/drivers/clk/samsung/clk-pll.h b/drivers/clk/samsung/clk-pll.=
h
> index 0725d485c6ee..ffd3d52c0dec 100644
> --- a/drivers/clk/samsung/clk-pll.h
> +++ b/drivers/clk/samsung/clk-pll.h
> @@ -38,6 +38,9 @@ enum samsung_pll_type {
>         pll_0822x,
>         pll_0831x,
>         pll_142xx,
> +       pll_0516x,
> +       pll_0517x,
> +       pll_0518x,
>  };
>
>  #define PLL_RATE(_fin, _m, _p, _s, _k, _ks) \
> --
> 2.42.0.655.g421f12c284-goog
>
>

