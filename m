Return-Path: <devicetree+bounces-35232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C15183CB80
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 19:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC4A81F26F5F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 18:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC79132C37;
	Thu, 25 Jan 2024 18:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="F1LkpyB/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373F97CF32
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 18:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706208415; cv=none; b=CJ38LVaIBMT6rATyJL5nwIKKNj82GKFDprI/d5sdKxpvDlNmmRrhIJCkkSWs+Qw4gbjxxOGZ/1BIrNiQG58472A/dGyMD+QWU5SnD88xE5Wkq9ou+agSXh+5MGU2gAacuIFjGqMrwihRxrpsm6on7opXIltWCfGR9CYZMZMXwgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706208415; c=relaxed/simple;
	bh=rv4T3qdLmEfetGuJi0ByL4QTqZj0wiVvUcF5OzkeW+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pkszc1trsmOWOl1hbpPynpde0P3Bdl1FMismeESAw5UwFo8Nv9If7CR8WfkHzT/K00EujTRgAGiJv68K6lM3PUkr9/0Hx9iaVoIfOGtFf2GQ2Os/ARuknweQ7bLK/Nsc1DQEjELSN0jYg2wQUVyFz/V/xjAWNvuUWbQ7SjStpQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=F1LkpyB/; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5101cd91017so1056433e87.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 10:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1706208411; x=1706813211; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=93RGbS95fTdxBvjhjzM93NymEuuojGPAvYLX5OxMtj8=;
        b=F1LkpyB/4LvkJ6kwKVwlPnvJGvtvkdWYxxnPKoctjgnU57ZWz+3zqZneLN9hZ0zeC/
         XQtj6mwpDy2Z+gEobq7ZmrX75mR6TISWhVLRL7EahHZj3xALQq5j4Nf8U6ZgLzS7XTNb
         LMIqcgtal2Z2VZJhrJJvTaeD3cHnLKysI3IaohLaXMF+dw1saVsGBtMjGg8sFDKIXeqq
         nL6B1ebEJ8yMz3wr7hJE0WcJoPjPSnc6aT5JGLoa1OSKM8ybimW1brGvDHrc9vs8I15D
         Wu1SQDBSccuf4tbMCzEnqqRYr1QnOWdB5UxJYJqDLwaQTkgz5cGtlNOXv5zCVtVXNEFz
         +0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706208411; x=1706813211;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=93RGbS95fTdxBvjhjzM93NymEuuojGPAvYLX5OxMtj8=;
        b=S5SDDD02NN9ieIb4ngTqJJg/ENKq0seb3cgZxvutcJRBcbQfPS6ne0FG7Prm2PgUHn
         iNp3IcJUocZgwmpZgkzfKGFgCFnhjGU3ijEo1fbQ+//AwRU6/Q/2O9KMlZClKx1yrsNH
         tGAAz8k/k5y4NhkHOPQrznqXRte89zHhoU5Yyd/lbzuOhn6x9If0ngovwGjnfEQGl5b5
         Bk8mobmaHm5bT0Fv3z2xbrzTx8aKdQLNZGiY0WWOV3rerztNgAmDO/+GhjMQwFwkO56n
         +nlYTU1TO8uxbs89J+iq3NX6vJFnZkXKkj87/p+SFxYgPWrXjNPDFJm7nvHSYFxP+dn7
         gLKA==
X-Gm-Message-State: AOJu0Yy660j+sPknm6U8Ez5u8b06N9cjHjECEymnzUKY4keflNOtljdg
	oFmv+SfY/Sza2MeaBg0khBevg7zMS3FVMcohyHpyWQ1WmNq+Me7aM4Z8AGU0iXsqw/+6KkOm+x0
	3ZEADuQ==
X-Google-Smtp-Source: AGHT+IEp83VjztzUYh+e7xAlIA9dFh/K8WRm0dffj9Nc01ToRAaOc/sjvpNxHLmvk5nJJRl7yAuvsw==
X-Received: by 2002:a05:6512:3248:b0:50e:c3fd:5dec with SMTP id c8-20020a056512324800b0050ec3fd5decmr88551lfr.119.1706208411126;
        Thu, 25 Jan 2024 10:46:51 -0800 (PST)
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id d5-20020ac241c5000000b0051014c847casm445132lfi.62.2024.01.25.10.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 10:46:50 -0800 (PST)
Date: Thu, 25 Jan 2024 19:46:50 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Magnus Damm <magnus.damm@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
	Cong Dang <cong.dang.xn@renesas.com>,
	Duy Nguyen <duy.nguyen.rh@renesas.com>,
	Hai Pham <hai.pham.ud@renesas.com>,
	Linh Phung <linh.phung.jy@renesas.com>,
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v2 09/15] pmdomain: renesas: r8a779h0-sysc: Add r8a779h0
 support
Message-ID: <20240125184650.GO4126432@ragnatech.se>
References: <cover.1706194617.git.geert+renesas@glider.be>
 <eed6faa02c628d32676ab8ea0eee636b4ffd6c47.1706194617.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <eed6faa02c628d32676ab8ea0eee636b4ffd6c47.1706194617.git.geert+renesas@glider.be>

Hi Geert,

Thanks for your work.

On 2024-01-25 16:34:37 +0100, Geert Uytterhoeven wrote:
> From: Duy Nguyen <duy.nguyen.rh@renesas.com>
> 
> Add support for R-Car V4M (R8A779H0) SoC power areas to the R-Car SYSC
> driver.
> 
> Signed-off-by: Duy Nguyen <duy.nguyen.rh@renesas.com>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Add vendor-prefix to DT binding definition header file.
> 
> Changes compared to the BSP:
>   - Move from drivers/soc/renesas/ to drivers/pmdomain/renesas/,
>   - Include rcar-gen4-sysc glue from "soc: renesas: rcar-gen4-sysc:
>     Introduce R-Car Gen4 SYSC driver",
>   - Remove unneeded includes,
>   - Align second column,
>   - Fix names of "a33dga" and "a23dgb" domains,
>   - Add missing "a3cr[012]" domains.
> ---
>  drivers/pmdomain/renesas/Kconfig          |  4 ++
>  drivers/pmdomain/renesas/Makefile         |  1 +
>  drivers/pmdomain/renesas/r8a779h0-sysc.c  | 55 +++++++++++++++++++++++
>  drivers/pmdomain/renesas/rcar-gen4-sysc.c |  3 ++
>  drivers/pmdomain/renesas/rcar-gen4-sysc.h |  1 +
>  5 files changed, 64 insertions(+)
>  create mode 100644 drivers/pmdomain/renesas/r8a779h0-sysc.c
> 
> diff --git a/drivers/pmdomain/renesas/Kconfig b/drivers/pmdomain/renesas/Kconfig
> index 80bf2cf8b60e6f63..54acb4b1ec7c4892 100644
> --- a/drivers/pmdomain/renesas/Kconfig
> +++ b/drivers/pmdomain/renesas/Kconfig
> @@ -71,6 +71,10 @@ config SYSC_R8A779G0
>  	bool "System Controller support for R-Car V4H" if COMPILE_TEST
>  	select SYSC_RCAR_GEN4
>  
> +config SYSC_R8A779H0
> +	bool "System Controller support for R-Car V4M" if COMPILE_TEST
> +	select SYSC_RCAR_GEN4
> +
>  config SYSC_RMOBILE
>  	bool "System Controller support for R-Mobile" if COMPILE_TEST
>  
> diff --git a/drivers/pmdomain/renesas/Makefile b/drivers/pmdomain/renesas/Makefile
> index e306e396fc8c10e3..89180f19c23be732 100644
> --- a/drivers/pmdomain/renesas/Makefile
> +++ b/drivers/pmdomain/renesas/Makefile
> @@ -24,6 +24,7 @@ obj-$(CONFIG_SYSC_R8A77995)	+= r8a77995-sysc.o
>  obj-$(CONFIG_SYSC_R8A779A0)	+= r8a779a0-sysc.o
>  obj-$(CONFIG_SYSC_R8A779F0)	+= r8a779f0-sysc.o
>  obj-$(CONFIG_SYSC_R8A779G0)	+= r8a779g0-sysc.o
> +obj-$(CONFIG_SYSC_R8A779H0)     += r8a779h0-sysc.o
>  # Family
>  obj-$(CONFIG_SYSC_RCAR)		+= rcar-sysc.o
>  obj-$(CONFIG_SYSC_RCAR_GEN4)	+= rcar-gen4-sysc.o
> diff --git a/drivers/pmdomain/renesas/r8a779h0-sysc.c b/drivers/pmdomain/renesas/r8a779h0-sysc.c
> new file mode 100644
> index 0000000000000000..ce2a82183ba8c9ab
> --- /dev/null
> +++ b/drivers/pmdomain/renesas/r8a779h0-sysc.c
> @@ -0,0 +1,55 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Renesas R-Car V4M System Controller
> + *
> + * Copyright (C) 2016-2017 Glider bvba

Is 2016-2017 correct? With or without that fixed,

Acked-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>

> + * Copyright (C) 2023 Renesas Electronics Corp
> + */
> +
> +#include <linux/kernel.h>
> +
> +#include <dt-bindings/power/renesas,r8a779h0-sysc.h>
> +
> +#include "rcar-gen4-sysc.h"
> +
> +static struct rcar_gen4_sysc_area r8a779h0_areas[] __initdata = {
> +	{ "always-on",	R8A779H0_PD_ALWAYS_ON, -1, PD_ALWAYS_ON },
> +	{ "c4",		R8A779H0_PD_C4, R8A779H0_PD_ALWAYS_ON },
> +	{ "a2e0d0",	R8A779H0_PD_A2E0D0, R8A779H0_PD_C4, PD_SCU },
> +	{ "a1e0d0c0",	R8A779H0_PD_A1E0D0C0, R8A779H0_PD_A2E0D0, PD_CPU_NOCR },
> +	{ "a1e0d0c1",	R8A779H0_PD_A1E0D0C1, R8A779H0_PD_A2E0D0, PD_CPU_NOCR },
> +	{ "a1e0d0c2",	R8A779H0_PD_A1E0D0C2, R8A779H0_PD_A2E0D0, PD_CPU_NOCR },
> +	{ "a1e0d0c3",	R8A779H0_PD_A1E0D0C3, R8A779H0_PD_A2E0D0, PD_CPU_NOCR },
> +	{ "a3cr0",	R8A779H0_PD_A3CR0, R8A779H0_PD_ALWAYS_ON, PD_CPU_NOCR },
> +	{ "a3cr1",	R8A779H0_PD_A3CR1, R8A779H0_PD_ALWAYS_ON, PD_CPU_NOCR },
> +	{ "a3cr2",	R8A779H0_PD_A3CR2, R8A779H0_PD_ALWAYS_ON, PD_CPU_NOCR },
> +	{ "a33dga",	R8A779H0_PD_A33DGA, R8A779H0_PD_C4 },
> +	{ "a23dgb",	R8A779H0_PD_A23DGB, R8A779H0_PD_A33DGA },
> +	{ "a3vip0",	R8A779H0_PD_A3VIP0, R8A779H0_PD_C4 },
> +	{ "a3vip2",	R8A779H0_PD_A3VIP2, R8A779H0_PD_C4 },
> +	{ "a3dul",	R8A779H0_PD_A3DUL, R8A779H0_PD_C4 },
> +	{ "a3isp0",	R8A779H0_PD_A3ISP0, R8A779H0_PD_C4 },
> +	{ "a2cn0",	R8A779H0_PD_A2CN0, R8A779H0_PD_C4 },
> +	{ "a1cn0",	R8A779H0_PD_A1CN0, R8A779H0_PD_A2CN0 },
> +	{ "a1dsp0",	R8A779H0_PD_A1DSP0, R8A779H0_PD_A2CN0 },
> +	{ "a1dsp1",	R8A779H0_PD_A1DSP1, R8A779H0_PD_A2CN0 },
> +	{ "a2imp01",	R8A779H0_PD_A2IMP01, R8A779H0_PD_C4 },
> +	{ "a2psc",	R8A779H0_PD_A2PSC, R8A779H0_PD_C4 },
> +	{ "a2dma",	R8A779H0_PD_A2DMA, R8A779H0_PD_C4 },
> +	{ "a2cv0",	R8A779H0_PD_A2CV0, R8A779H0_PD_C4 },
> +	{ "a2cv1",	R8A779H0_PD_A2CV1, R8A779H0_PD_C4 },
> +	{ "a2cv2",	R8A779H0_PD_A2CV2, R8A779H0_PD_C4 },
> +	{ "a2cv3",	R8A779H0_PD_A2CV3, R8A779H0_PD_C4 },
> +	{ "a3imr0",	R8A779H0_PD_A3IMR0, R8A779H0_PD_C4 },
> +	{ "a3imr1",	R8A779H0_PD_A3IMR1, R8A779H0_PD_C4 },
> +	{ "a3imr2",	R8A779H0_PD_A3IMR2, R8A779H0_PD_C4 },
> +	{ "a3imr3",	R8A779H0_PD_A3IMR3, R8A779H0_PD_C4 },
> +	{ "a3vc",	R8A779H0_PD_A3VC, R8A779H0_PD_C4 },
> +	{ "a3pci",	R8A779H0_PD_A3PCI, R8A779H0_PD_C4 },
> +	{ "a2pciphy",	R8A779H0_PD_A2PCIPHY, R8A779H0_PD_A3PCI },
> +};
> +
> +const struct rcar_gen4_sysc_info r8a779h0_sysc_info __initconst = {
> +	.areas = r8a779h0_areas,
> +	.num_areas = ARRAY_SIZE(r8a779h0_areas),
> +};
> diff --git a/drivers/pmdomain/renesas/rcar-gen4-sysc.c b/drivers/pmdomain/renesas/rcar-gen4-sysc.c
> index 9e5e6e077abc081c..728248659a97e8cc 100644
> --- a/drivers/pmdomain/renesas/rcar-gen4-sysc.c
> +++ b/drivers/pmdomain/renesas/rcar-gen4-sysc.c
> @@ -284,6 +284,9 @@ static const struct of_device_id rcar_gen4_sysc_matches[] __initconst = {
>  #endif
>  #ifdef CONFIG_SYSC_R8A779G0
>  	{ .compatible = "renesas,r8a779g0-sysc", .data = &r8a779g0_sysc_info },
> +#endif
> +#ifdef CONFIG_SYSC_R8A779H0
> +	{ .compatible = "renesas,r8a779h0-sysc", .data = &r8a779h0_sysc_info },
>  #endif
>  	{ /* sentinel */ }
>  };
> diff --git a/drivers/pmdomain/renesas/rcar-gen4-sysc.h b/drivers/pmdomain/renesas/rcar-gen4-sysc.h
> index 388cfa8f8f9fd656..fdf843aa51134f87 100644
> --- a/drivers/pmdomain/renesas/rcar-gen4-sysc.h
> +++ b/drivers/pmdomain/renesas/rcar-gen4-sysc.h
> @@ -40,5 +40,6 @@ struct rcar_gen4_sysc_info {
>  extern const struct rcar_gen4_sysc_info r8a779a0_sysc_info;
>  extern const struct rcar_gen4_sysc_info r8a779f0_sysc_info;
>  extern const struct rcar_gen4_sysc_info r8a779g0_sysc_info;
> +extern const struct rcar_gen4_sysc_info r8a779h0_sysc_info;
>  
>  #endif /* __SOC_RENESAS_RCAR_GEN4_SYSC_H__ */
> -- 
> 2.34.1
> 
> 

-- 
Kind Regards,
Niklas Söderlund

