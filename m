Return-Path: <devicetree+bounces-229519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C28F3BF8E09
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 23:03:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CACF3ADAED
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 21:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 019EB27FB2B;
	Tue, 21 Oct 2025 21:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lC7NtZwG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D010228000C
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 21:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761080620; cv=none; b=gx+MriM+On6Mys5RT4tuOUyPqErfOOM/z9T3+w9C50lA8wJTjw0/71sqoTkaro4P8UsdAdJ5x9z9cNUBMoDH5ub8gzzK9SRrJnFBEF+22pSMvwMbeJsflYjda5hE/xaLPNfVq4MT+SSjmYbqxgR4kcPicYWG7yPEA2l1TadWw9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761080620; c=relaxed/simple;
	bh=fsNzpsKif2XiBWrqxMzGb+TCCzigMM4Kzyxjq7uUsEY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=il/2Z+5ygSJoEf9AKyb1Pt/oTMCysnJWnNxn0OpS39/kGNWVvZM4B6w8vAdzwq8KhudDeaAw8Gt/3yr0T0YTqazsoMJjcGACst5QOQPjj74xE4bwqezKJOGAu77G5ByZE0+1/kd9KQuEBiZ5G8KTW9eZjyucCLsvAd8ed21ULLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lC7NtZwG; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-651cda151f0so2519848eaf.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 14:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761080618; x=1761685418; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tMiBejLPKhYPEtqA8D8Oln6QNM1cO/EDknKj+TQbAkw=;
        b=lC7NtZwGod3lqgdTMQkq0Pd/FPzDYv6OQuX36tUrXktms5FdY5oVd1j94iP/1sqSGp
         G5v80beK/8dIzZ1HJsb1howfnJYiMwhg0MbbmDQaHEuNJRVtGVN9BDX9WJrzzpnND4n9
         3nqCX4BdMeWJ9v+7NJ8fkTnTAUNOliNDgCLXEX8jely1G8YJRtAcUydvDAyMPbKUXkpl
         6iw8Z3BM4DK3vsnBR0i8lHcHzzv72MqDInH93NuM8BcmuJl514Z7EHvgLqbefuHSt2BJ
         X/kutIdcHnLb9gVCmbnbnaUFq2cGknUYzjKRDRtnpgChOAbwioDZ2tTO5omUQHFsM0Jk
         Hq0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761080618; x=1761685418;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tMiBejLPKhYPEtqA8D8Oln6QNM1cO/EDknKj+TQbAkw=;
        b=GDRhz03t7nKRhr9xZZ9GFu2jB+X4ZgauXArVLoG3tXrWjnDO9mHfbuUGvRh+OGAPXt
         e47PQARwWiaNNxuz56Y7jsYrzZbPEqTApDNpnhb9jjfzrhD3tbCWXuEbHg5SoeJG0qRJ
         1Q6n4UkP/F/vzrPvT4TmwETJExeetxt6HL+6bQSQ5Tn5R8vCDFNHHshfMfHLQlM0ptO8
         p6CZNTlJk4I2B38FEDwZEoSeavFQBQ0BTKiVsPkaK1roNCU+Y8ENLF7nIlfLspUyfG5f
         EWfbQbUCxomSCvMslVhjv+WH9rvkEGU7oqyZLO3ObmLaJ2cfhkYnS8WYeRr+rmBK/Qq9
         t3qQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9910m74ifL5t3llJNVPNREGa/qe9BQfHsnkoEQ1WOYN6fdP7GLf8OgD4Ck235U9XmCPLkdhOKauAj@vger.kernel.org
X-Gm-Message-State: AOJu0YzqUzbjzjtrCCF55TxVJ/CZyzzIn0ZLcLkK6N2u8pnNXDZPlBgx
	gi6KKXQZZHGv4vH/Kn9LejsaPbWrj9jg3CZcFkwYrxmNtmqugRG+SQCfd56OqfTka/jygsP+l/w
	S3r/V346sRUJKDwGltq/HNobs9WgHqopnLl4tzmtLJg==
X-Gm-Gg: ASbGncuttD4leSKCUz98R1KQ2WlmgErVNd19+2y+jbwpSS8G+gHoCliGAXaXEHoxAmu
	7SCOHzVAzgzLPjB273US5rNdGcQoyX4gv1twZy1C2cvEbzM5YBOAc3rKHOy/Ij2yfkU2jHm9BhN
	oD9+kLpIWX6jhvccuPSXSVCwQB3Dsd3DFY6mhOsJp4SuNBPH2zO33fNAHU8HJaa1iDbg4JtdOSv
	bEbxnwZdobbDB3LEBq/buNgG9FQyJaI83P2Ga3f9CWIHMt1Vbe2iwFB6vQIfoV24IGxH/gHKUB9
	vHjnEWs=
X-Google-Smtp-Source: AGHT+IGhhxXOWUhypLR513EstnVpxP2n9PBtNjWPgYEhC5md6NPI4NHWrGoHnBDHjXCimVbmmxclmA3LGRFQCjGw+oI=
X-Received: by 2002:a05:6820:201:b0:64e:8106:bb91 with SMTP id
 006d021491bc7-651c7e6c8c2mr7330485eaf.8.1761080617763; Tue, 21 Oct 2025
 14:03:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
 <20251013-automatic-clocks-v1-8-72851ee00300@linaro.org> <4383c2fb-5267-4b7b-90e9-6046c2686912@kernel.org>
In-Reply-To: <4383c2fb-5267-4b7b-90e9-6046c2686912@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 21 Oct 2025 22:03:26 +0100
X-Gm-Features: AS18NWDGDGo3ssrAJMIVVsew6HYnxHA2tTZVJevoKlj0HODQs8C9nRRKXRt97mU
Message-ID: <CADrjBPov=7t876dqpTS71j_xNFOrJv7_Ym7abYVLzjypoOYKng@mail.gmail.com>
Subject: Re: [PATCH 8/9] clk: samsung: gs101: Enable auto_clock_gate mode for
 each gs101 CMU
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Will McVicker <willmcvicker@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

Thanks for the review feedback.

On Tue, 21 Oct 2025 at 20:48, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 13/10/2025 22:51, Peter Griffin wrote:
> > Enable auto clock mode, and define the additional fields which are used
> > when this mode is enabled.
> >
> > /sys/kernel/debug/clk/clk_summary now reports approximately 308 running
> > clocks and 298 disabled clocks. Prior to this commit 586 clocks were
> > running and 17 disabled. To ensure compatability with older DTs the
>
> Typo

Will fix.

>
> > resource size is checked and an error issued if the DT needs updating.
>
> I fail to see how you keek it compatible. See further.
>
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  drivers/clk/samsung/clk-gs101.c | 80 +++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 80 insertions(+)
> >
> > diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs101.c
> > index 70b26db9b95ad0b376d23f637c7683fbc8c8c600..baf41ae6c9e2480cb83531acf7eae190c6aff819 100644
> > --- a/drivers/clk/samsung/clk-gs101.c
> > +++ b/drivers/clk/samsung/clk-gs101.c
> > @@ -9,6 +9,7 @@
> >  #include <linux/clk-provider.h>
> >  #include <linux/mod_devicetable.h>
> >  #include <linux/of.h>
> > +#include <linux/of_address.h>
> >  #include <linux/platform_device.h>
> >
> >  #include <dt-bindings/clock/google,gs101.h>
> > @@ -17,6 +18,8 @@
> >  #include "clk-exynos-arm64.h"
> >  #include "clk-pll.h"
> >
> > +int check_cmu_res_size(struct device_node *np);
> > +
> >  /* NOTE: Must be equal to the last clock ID increased by one */
> >  #define CLKS_NR_TOP  (CLK_GOUT_CMU_TPU_UART + 1)
> >  #define CLKS_NR_APM  (CLK_APM_PLL_DIV16_APM + 1)
> > @@ -26,6 +29,10 @@
> >  #define CLKS_NR_PERIC0       (CLK_GOUT_PERIC0_SYSREG_PERIC0_PCLK + 1)
> >  #define CLKS_NR_PERIC1       (CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK + 1)
> >
> > +#define GS101_GATE_DBG_OFFSET 0x4000
> > +#define GS101_DRCG_EN_OFFSET  0x104
> > +#define GS101_MEMCLK_OFFSET   0x108
> > +
> >  /* ---- CMU_TOP ------------------------------------------------------------- */
> >
> >  /* Register Offset definitions for CMU_TOP (0x1e080000) */
> > @@ -1433,6 +1440,9 @@ static const struct samsung_cmu_info top_cmu_info __initconst = {
> >       .nr_clk_ids             = CLKS_NR_TOP,
> >       .clk_regs               = cmu_top_clk_regs,
> >       .nr_clk_regs            = ARRAY_SIZE(cmu_top_clk_regs),
> > +     .auto_clock_gate        = true,
> > +     .gate_dbg_offset        = GS101_GATE_DBG_OFFSET,
> > +     .option_offset          = CMU_CMU_TOP_CONTROLLER_OPTION,
> >  };
> >
> >  static void __init gs101_cmu_top_init(struct device_node *np)
> > @@ -1900,6 +1910,11 @@ static const struct samsung_gate_clock apm_gate_clks[] __initconst = {
> >            CLK_CON_GAT_GOUT_BLK_APM_UID_XIU_DP_APM_IPCLKPORT_ACLK, 21, CLK_IS_CRITICAL, 0),
> >  };
> >
> > +static const unsigned long dcrg_memclk_sysreg[] __initconst = {
> > +     GS101_DRCG_EN_OFFSET,
> > +     GS101_MEMCLK_OFFSET,
> > +};
> > +
> >  static const struct samsung_cmu_info apm_cmu_info __initconst = {
> >       .mux_clks               = apm_mux_clks,
> >       .nr_mux_clks            = ARRAY_SIZE(apm_mux_clks),
> > @@ -1912,6 +1927,12 @@ static const struct samsung_cmu_info apm_cmu_info __initconst = {
> >       .nr_clk_ids             = CLKS_NR_APM,
> >       .clk_regs               = apm_clk_regs,
> >       .nr_clk_regs            = ARRAY_SIZE(apm_clk_regs),
> > +     .sysreg_clk_regs        = dcrg_memclk_sysreg,
> > +     .nr_sysreg_clk_regs     = ARRAY_SIZE(dcrg_memclk_sysreg),
> > +     .auto_clock_gate        = true,
> > +     .gate_dbg_offset        = GS101_GATE_DBG_OFFSET,
> > +     .drcg_offset            = GS101_DRCG_EN_OFFSET,
> > +     .memclk_offset          = GS101_MEMCLK_OFFSET,
> >  };
> >
> >  /* ---- CMU_HSI0 ------------------------------------------------------------ */
> > @@ -2375,7 +2396,14 @@ static const struct samsung_cmu_info hsi0_cmu_info __initconst = {
> >       .nr_clk_ids             = CLKS_NR_HSI0,
> >       .clk_regs               = hsi0_clk_regs,
> >       .nr_clk_regs            = ARRAY_SIZE(hsi0_clk_regs),
> > +     .sysreg_clk_regs        = dcrg_memclk_sysreg,
> > +     .nr_sysreg_clk_regs     = ARRAY_SIZE(dcrg_memclk_sysreg),
> >       .clk_name               = "bus",
> > +     .auto_clock_gate        = true,
> > +     .gate_dbg_offset        = GS101_GATE_DBG_OFFSET,
> > +     .option_offset          = HSI0_CMU_HSI0_CONTROLLER_OPTION,
> > +     .drcg_offset            = GS101_DRCG_EN_OFFSET,
> > +     .memclk_offset          = GS101_MEMCLK_OFFSET,
> >  };
> >
> >  /* ---- CMU_HSI2 ------------------------------------------------------------ */
> > @@ -2863,7 +2891,14 @@ static const struct samsung_cmu_info hsi2_cmu_info __initconst = {
> >       .nr_clk_ids             = CLKS_NR_HSI2,
> >       .clk_regs               = cmu_hsi2_clk_regs,
> >       .nr_clk_regs            = ARRAY_SIZE(cmu_hsi2_clk_regs),
> > +     .sysreg_clk_regs        = dcrg_memclk_sysreg,
> > +     .nr_sysreg_clk_regs     = ARRAY_SIZE(dcrg_memclk_sysreg),
> >       .clk_name               = "bus",
> > +     .auto_clock_gate        = true,
> > +     .gate_dbg_offset        = GS101_GATE_DBG_OFFSET,
> > +     .option_offset          = HSI2_CMU_HSI2_CONTROLLER_OPTION,
> > +     .drcg_offset            = GS101_DRCG_EN_OFFSET,
> > +     .memclk_offset          = GS101_MEMCLK_OFFSET,
> >  };
> >
> >  /* ---- CMU_MISC ------------------------------------------------------------ */
> > @@ -3423,11 +3458,37 @@ static const struct samsung_cmu_info misc_cmu_info __initconst = {
> >       .nr_clk_ids             = CLKS_NR_MISC,
> >       .clk_regs               = misc_clk_regs,
> >       .nr_clk_regs            = ARRAY_SIZE(misc_clk_regs),
> > +     .sysreg_clk_regs        = dcrg_memclk_sysreg,
> > +     .nr_sysreg_clk_regs     = ARRAY_SIZE(dcrg_memclk_sysreg),
> >       .clk_name               = "bus",
> > +     .auto_clock_gate        = true,
> > +     .gate_dbg_offset        = GS101_GATE_DBG_OFFSET,
> > +     .option_offset          = MISC_CMU_MISC_CONTROLLER_OPTION,
> > +     .drcg_offset            = GS101_DRCG_EN_OFFSET,
> > +     .memclk_offset          = GS101_MEMCLK_OFFSET,
> >  };
> >
> > +/* for old DT compatbility with incorrect CMU size*/
> > +int check_cmu_res_size(struct device_node *np)
> > +{
> > +     struct resource res;
> > +     resource_size_t size;
> > +
> > +     if (of_address_to_resource(np, 0, &res))
> > +             return -ENODEV;
> > +
> > +     size = resource_size(&res);
> > +     if (size != 0x10000) {
> > +             pr_warn("%pOF: resource to small. Please update your DT\n", np);
> > +             return -ENODEV;
> > +     }
> > +     return 0;
> > +}
> > +
> >  static void __init gs101_cmu_misc_init(struct device_node *np)
> >  {
> > +     if (check_cmu_res_size(np))
> > +             return;
>
> You will not register CMU on old DTB.

By "compatible" I meant the driver detects an old DTB with an
incorrect reg size and issues an error message on the console to
update your DT (as opposed to crashing trying to access a register
that hasn't been mapped).

Is it enough to re-word the commit message to make it clearer what will happen?

An alternative might be to try registering all the gates in manual
mode, but that seems like it would add more complexity for not much
benefit. It would also require that clk_ignore_unused kernel parameter
to have been passed (as manual clock mode has never worked without it)
and whilst it might boot today I imagine it would bitrot fast as
additional CMUs are added (and thus probably crash in a much more
obscure way).

Peter

