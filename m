Return-Path: <devicetree+bounces-14394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A350B7E4153
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 14:57:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C57C31C20A82
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 13:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A7A130D1E;
	Tue,  7 Nov 2023 13:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IjbOo4fa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6093D182C8
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 13:57:23 +0000 (UTC)
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com [IPv6:2607:f8b0:4864:20::f2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66987A2
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 05:57:21 -0800 (PST)
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-66d87554434so39616906d6.2
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 05:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699365440; x=1699970240; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CbqpJ5gw9GOJ91Wt05ZBQ3B3ajCS3+ZL+yYMKlVS/7w=;
        b=IjbOo4faoEMViNBUpWlV1QZx/HopQt16gv26gV9X86KEP+BznglaZRA2Kyg+2RcgIa
         kB2tYLVfGWnyV1RRKFQgjLg4FIFYiYYLL808Vj7ABZrkZhv7UjnCvy8zIFHYlfzFCjEr
         6f3AyfnEoZNDcEWae0QE/xQJkjv3nspH8oUtzJ6qDyVuKsc680CMk+LS1RsSOdromTek
         w0RTpbaWmoYMiPXafccIL482Sg+cXP06FSClyO2WvGrRCBq4u4m8v7BSRuqnJeT7fAOb
         nhMlVfrKYvTBcEHYLbHT1Mi+chI1SEcRmgS9xkx/cM7TgmPOv+8qOiPhwJBvz/KGVDEg
         GBHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699365440; x=1699970240;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CbqpJ5gw9GOJ91Wt05ZBQ3B3ajCS3+ZL+yYMKlVS/7w=;
        b=jzzl6tJaJyrqAwmcUVXphZ22L4w0XXCBoOdXxJVlCEV6LFbVK6rVG3KgCx1kTiiPqG
         B7Qrim0lPEwmBdChQJpbqtJ+XJ30PYylN6MR2+f3SoJCbvzho0q/AHCHaL3gtXPM7Ru4
         2DmSSgPP0qnXDaL+1+ESksfgQ1g4St8XO+RDALW07v0HVwrgK/DLWNLiCqEvCpxUaId8
         xIGqfeykCMgd7K+H9OUC+B/k4k545Q4p6lqJXMVGAVBU5a1OcnG9sw8UEYEkgoLVzRV5
         uLOE+xzaTaOmJ4J9OoFb/sepCe2rV5NJ8apqSOLfmQU4HRpm0TlxCzk5mwdSs9A3yN9U
         jxYQ==
X-Gm-Message-State: AOJu0YzzirWn2oMfn4Tps5Gm7uTqls29SpUFnHKdoJ66F9nosxaAZFSW
	o4ThuACOn4aTx1iZT4VeeUyoMVYT5vTXpVAMKo2J/A==
X-Google-Smtp-Source: AGHT+IFPmCDJWmXuqEspf2Hkzm+uYMa/h3WFcFn4tmvryaRRUPo6gpp0HW4f25qoMF9Xg4paJyLmxWpEpUjIXDfQnzY=
X-Received: by 2002:a05:6214:529b:b0:66d:3474:a93a with SMTP id
 kj27-20020a056214529b00b0066d3474a93amr37508496qvb.30.1699365440438; Tue, 07
 Nov 2023 05:57:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-11-peter.griffin@linaro.org> <aae4e6cd-dcfc-442d-9ed7-d5a73c419ba8@kernel.org>
In-Reply-To: <aae4e6cd-dcfc-442d-9ed7-d5a73c419ba8@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Nov 2023 13:57:09 +0000
Message-ID: <CADrjBPrUsSigThoLU9thmZiaG4690B9-BcZYrBn44K9Fc8z3vg@mail.gmail.com>
Subject: Re: [PATCH v3 10/20] clk: samsung: clk-gs101: Add cmu_top registers,
 plls, mux and gates
To: Chanwoo Choi <chanwoo@kernel.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	cw00.choi@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Chanwoo,

Thanks for your review!

On Wed, 18 Oct 2023 at 17:51, Chanwoo Choi <chanwoo@kernel.org> wrote:
>
> Hi Peter,
>
> On 23. 10. 12. 03:48, Peter Griffin wrote:
> > CMU_TOP is the top level clock management unit which contains PLLs, muxes
> > and gates that feed the other clock management units.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  drivers/clk/samsung/Kconfig     |    9 +
> >  drivers/clk/samsung/Makefile    |    2 +
> >  drivers/clk/samsung/clk-gs101.c | 1551 +++++++++++++++++++++++++++++++
> >  3 files changed, 1562 insertions(+)
> >  create mode 100644 drivers/clk/samsung/clk-gs101.c
> >
> > diff --git a/drivers/clk/samsung/Kconfig b/drivers/clk/samsung/Kconfig
> > index 76a494e95027..14362ec9c543 100644
> > --- a/drivers/clk/samsung/Kconfig
> > +++ b/drivers/clk/samsung/Kconfig
> > @@ -12,6 +12,7 @@ config COMMON_CLK_SAMSUNG
> >       select EXYNOS_5410_COMMON_CLK if ARM && SOC_EXYNOS5410
> >       select EXYNOS_5420_COMMON_CLK if ARM && SOC_EXYNOS5420
> >       select EXYNOS_ARM64_COMMON_CLK if ARM64 && ARCH_EXYNOS
> > +     select GOOGLE_GS101_COMMON_CLK if ARM64 && ARCH_GOOGLE_TENSOR
> >       select TESLA_FSD_COMMON_CLK if ARM64 && ARCH_TESLA_FSD
> >
> >  config S3C64XX_COMMON_CLK
> > @@ -95,6 +96,14 @@ config EXYNOS_CLKOUT
> >         status of the certains clocks from SoC, but it could also be tied to
> >         other devices as an input clock.
> >
> > +config GOOGLE_GS101_COMMON_CLK
> > +     bool "Google gs101 clock controller support" if COMPILE_TEST
> > +     depends on COMMON_CLK_SAMSUNG
> > +     depends on EXYNOS_ARM64_COMMON_CLK
> > +     help
> > +       Support for the clock controller present on the Google gs101 SoC.
> > +       Choose Y here only if you build for this SoC.
> > +
>
> (snip)
>
> > +
> > +/* gs101 */
> > +static const struct samsung_mux_clock cmu_top_mux_clks[] __initconst = {
> > +     /* CMU_TOP_PURECLKCOMP */
> > +     MUX(CLK_MOUT_SHARED0_PLL, "mout_shared0_pll", mout_shared0_pll_p,
> > +         PLL_CON0_PLL_SHARED0, 4, 1),
> > +     MUX(CLK_MOUT_SHARED1_PLL, "mout_shared1_pll", mout_shared1_pll_p,
> > +         PLL_CON0_PLL_SHARED1, 4, 1),
> > +     MUX(CLK_MOUT_SHARED2_PLL, "mout_shared2_pll", mout_shared2_pll_p,
> > +         PLL_CON0_PLL_SHARED2, 4, 1),
> > +     MUX(CLK_MOUT_SHARED3_PLL, "mout_shared3_pll", mout_shared3_pll_p,
> > +         PLL_CON0_PLL_SHARED3, 4, 1),
> > +     MUX(CLK_MOUT_SPARE_PLL, "mout_spare_pll", mout_spare_pll_p,
> > +         PLL_CON0_PLL_SPARE, 4, 1),
> > +
> > +     /* BUS0 */
> > +     MUX(CLK_MOUT_BUS0_BUS, "mout_cmu_bus0_bus", mout_cmu_bus0_bus_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_BUS0_BUS, 0, 2),
> > +     MUX(CLK_MOUT_CMU_BOOST, "mout_cmu_boost", mout_cmu_cmu_boost_p,
>
> In order to keep the consistent naming style,
> I think that need to change from 'mout_cmu_boost' to 'mout_cmu_cmu_boost'.

Yes, that's a good point, and a good spot! Will fix it in v4.

>
> > +         CLK_CON_MUX_MUX_CLKCMU_CMU_BOOST, 0, 2),
> > +
> > +     /* BUS1 */
> > +     MUX(CLK_MOUT_BUS1_BUS, "mout_cmu_bus1_bus", mout_cmu_bus1_bus_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_BUS1_BUS, 0, 2),
> > +
> > +     /* BUS2 */
> > +     MUX(CLK_MOUT_BUS2_BUS, "mout_cmu_bus2_bus", mout_cmu_bus2_bus_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_BUS2_BUS, 0, 2),
> > +
> > +     /* CORE */
> > +     MUX(CLK_MOUT_CORE_BUS, "mout_cmu_core_bus", mout_cmu_core_bus_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_CORE_BUS, 0, 2),
> > +
> > +     /* EH */
> > +     MUX(CLK_MOUT_EH_BUS, "mout_cmu_eh_bus", mout_cmu_eh_bus_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_CORE_BUS, 0, 2),
>
> 'mout_cmu_core_bus' and 'mout_cmu_eh_bus' uses the same register/shift/width information.
> I think it should be modified by changing the regiter or changing the shift/width information.

It should be using the CLK_CON_MUX_MUX_CLKCMU_EH_BUS register.
Will fix it in v4.

>
> > +
> > +     /* CPUCL{0,1,2,} */
> > +     MUX(CLK_MOUT_CPUCL2_SWITCH, "mout_cmu_cpucl2_switch", mout_cmu_cpucl2_switch_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_CPUCL2_SWITCH, 0, 2),
> > +
> > +     MUX(CLK_MOUT_CPUCL1_SWITCH, "mout_cmu_cpucl1_switch", mout_cmu_cpucl1_switch_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_CPUCL1_SWITCH, 0, 2),
> > +
> > +     MUX(CLK_MOUT_CPUCL0_SWITCH, "mout_cmu_cpucl0_switch", mout_cmu_cpucl0_switch_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_CPUCL0_SWITCH, 0, 2),
> > +
> > +     MUX(CLK_MOUT_CPUCL0_DBG, "mout_cmu_cpucl0_dbg", mout_cmu_cpucl0_dbg_p,
> > +         CLK_CON_DIV_CLKCMU_CPUCL0_DBG, 0, 2),
> > +
> > +     MUX(CLK_MOUT_CMU_HPM, "mout_cmu_hpm", mout_cmu_hpm_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_HPM, 0, 2),
> >
>
> (snip)
>
> > +     /* PDP */
> > +     MUX(CLK_MOUT_PDP_BUS, "mout_cmu_pdp_bus", mout_cmu_pdp_bus_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_PDP_BUS, 0, 2),
> > +
> > +     /* PDP */
> > +     MUX(CLK_MOUT_PDP_VRA, "mout_cmu_pdp_vra", mout_cmu_pdp_vra_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_PDP_VRA, 0, 2),
> > +
> > +     /* IPP */
> > +     MUX(CLK_MOUT_IPP_BUS, "mout_cmu_ipp_bus", mout_cmu_ipp_bus_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_IPP_BUS, 0, 2),
> > +
> > +     /* G3AA */
> > +     MUX(CLK_MOUT_G3AA, "mout_cmu_g3aa", mout_cmu_g3aa_p,
> > +         CLK_CON_MUX_MUX_CLKCMU_G3AA_G3AA, 0, 2),
>
> I think that need to change the mux name and mux parent name
> because other mux name use the twice word according to the register name
> even if use the same work such as 'mout_cmu_g2d_g2d', 'mout_cmu_mcsc_mcsc' and 'mout_cmu_mfc_mfc'.
> - mout_cmu_g3aa -> mout_cmu_g3aa_g3aa
> - mout_cmu_g3aa_p -> mount_cmu_g3aa_g3aa_p

Will fix in v4

>
> (snip)
>
> > +     /* CSIS */
> > +     GATE(CLK_GOUT_CSIS, "gout_cmu_csis_bus", "mout_cmu_csis_bus",
> > +          CLK_CON_GAT_GATE_CLKCMU_CSIS_BUS, 21, 0, 0),
> > +     /* PDP */
> > +     GATE(CLK_GOUT_PDP_BUS, "gout_cmu_pdp_bus", "mout_cmu_pdp_bus",
> > +          CLK_CON_GAT_GATE_CLKCMU_PDP_BUS, 21, 0, 0),
> > +
> > +     GATE(CLK_GOUT_PDP_VRA, "gout_cmu_pdp_vra", "mout_cmu_pdp_vra",
> > +          CLK_CON_GAT_GATE_CLKCMU_PDP_BUS, 21, 0, 0),
> > +
> > +     /* IPP */
> > +     GATE(CLK_GOUT_IPP_BUS, "gout_cmu_ipp_bus", "mout_cmu_ipp_bus",
> > +          CLK_CON_GAT_GATE_CLKCMU_IPP_BUS, 21, 0, 0),
> > +     /* G3AA */
> > +     GATE(CLK_GOUT_G3AA, "gout_cmu_g3aa", "mout_cmu_g3aa",
> > +          CLK_CON_MUX_MUX_CLKCMU_G3AA_G3AA, 21, 0, 0),
>
> ditto.
> gout_cmu_g3aa -> gout_cmu_g3aa_g3aa
> mout_cmu_g3aa -> mout_cmu_g3aa_g3aa

Will fix in V4

regards,

Peter.

