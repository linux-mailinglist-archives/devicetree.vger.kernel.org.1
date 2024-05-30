Return-Path: <devicetree+bounces-70814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F3B8D4907
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 11:59:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5ADDF1F24560
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 09:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 542AA15B554;
	Thu, 30 May 2024 09:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="0RnaC8ad"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D34315444F;
	Thu, 30 May 2024 09:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717063189; cv=none; b=t0fTtWtsehAxFvv1B/hKBz/7FpcXS3GcedBFKfwrLtl9ROz7oJrwCtWLNI2g8vy0yH1mIKlNx9gMWqjPwGJuL3R5gEZ++XtTsAKmXtRjVpJrpj/YISvWDShC8vdT2kBAV47YVx7IgyXs04jujIM5j4ia95CjBQhdWtP4E8rFB7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717063189; c=relaxed/simple;
	bh=AKGRadsf1J118sookOiZjS+CmUusRlK9aPzsjgCfevk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sYmASTjZkXS0qGU0/4GVcr65uP6/GMNjLPpsip7UoEyjKaE/XMcbn3nOyV/3Ar6yKHX2r0ZQPKA61zbz8OijjZkBM5iRd/23ynJ/UWnJNMzJrf0jwPW1SJTWHvX9KdNm6q6Wa/lYj1GSQvLij2XtLcrhHYQcDMKP3DRAamBo37U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=0RnaC8ad; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717063185;
	bh=AKGRadsf1J118sookOiZjS+CmUusRlK9aPzsjgCfevk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=0RnaC8adx3r6RnjUwZDZVM2zdWIDKgwUqypeZAS44ng+fEfbkf45OP1RK3QXx8j3w
	 t/X9k9HvueIiGEEZ5s7iDfXJuXmgI6FB486yd3ogx0jxvP3C/V1ZJYxNbxfTftacat
	 62RVZTErmbuiItNr8Hgeyvp7Mer4MTrui9f7BY5FlLVuQ06BJnhIDxRRkL7589Cy/x
	 xxdOPuNSQkziKp/ReKWqlXinBAA+iy4xaZUCgsAWEHHtMc1lNS8fVqw0AlGuSdKa76
	 alLZAiZolBAmBApBMaqEoTddiEvX9ygTPjIrnktbdWjn1S8EkDvyOIbzq1HiCMpTth
	 nNlqZs6sH8iYQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1A0A437821A7;
	Thu, 30 May 2024 09:59:44 +0000 (UTC)
Message-ID: <5a5842d7-adad-410b-bac2-9e5cb03ae18c@collabora.com>
Date: Thu, 30 May 2024 11:59:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] clk: mediatek: Add mt8173-mfgtop driver
To: Chen-Yu Tsai <wenst@chromium.org>, Frank Binns <frank.binns@imgtec.com>,
 Matt Coster <matt.coster@imgtec.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240530083513.4135052-1-wenst@chromium.org>
 <20240530083513.4135052-3-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240530083513.4135052-3-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 30/05/24 10:35, Chen-Yu Tsai ha scritto:
> The MFG (GPU) block on the MT8173 has a small glue layer, named MFG_TOP
> in the datasheet, that contains clock gates, some power sequence signal
> delays, and other unknown registers that get toggled when the GPU is
> powered on.
> 
> The clock gates are exposed as clocks provided by a clock controller,
> while the power sequencing bits are exposed as one singular power domain.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>   drivers/clk/mediatek/Kconfig             |   9 +
>   drivers/clk/mediatek/Makefile            |   1 +
>   drivers/clk/mediatek/clk-mt8173-mfgtop.c | 240 +++++++++++++++++++++++
>   3 files changed, 250 insertions(+)
>   create mode 100644 drivers/clk/mediatek/clk-mt8173-mfgtop.c
> 
> diff --git a/drivers/clk/mediatek/Kconfig b/drivers/clk/mediatek/Kconfig
> index 70a005e7e1b1..9e279c739f1c 100644
> --- a/drivers/clk/mediatek/Kconfig
> +++ b/drivers/clk/mediatek/Kconfig
> @@ -500,6 +500,15 @@ config COMMON_CLK_MT8173_IMGSYS
>   	help
>   	  This driver supports MediaTek MT8173 imgsys clocks.
>   
> +config COMMON_CLK_MT8173_MFGTOP
> +	tristate "Clock and power driver for MediaTek MT8173 mfgtop"
> +	depends on COMMON_CLK_MT8173
> +	default COMMON_CLK_MT8173
> +	select PM_GENERIC_DOMAINS
> +	select PM_GENERIC_DOMAINS_OF
> +	help
> +	  This driver supports MediaTek MT8173 mfgtop clocks and power domain.
> +
>   config COMMON_CLK_MT8173_MMSYS
>          tristate "Clock driver for MediaTek MT8173 mmsys"
>          depends on COMMON_CLK_MT8173
> diff --git a/drivers/clk/mediatek/Makefile b/drivers/clk/mediatek/Makefile
> index eeccfa039896..fdd3a76e12a1 100644
> --- a/drivers/clk/mediatek/Makefile
> +++ b/drivers/clk/mediatek/Makefile
> @@ -77,6 +77,7 @@ obj-$(CONFIG_COMMON_CLK_MT8167_VDECSYS) += clk-mt8167-vdec.o
>   obj-$(CONFIG_COMMON_CLK_MT8173) += clk-mt8173-apmixedsys.o clk-mt8173-infracfg.o \
>   				   clk-mt8173-pericfg.o clk-mt8173-topckgen.o
>   obj-$(CONFIG_COMMON_CLK_MT8173_IMGSYS) += clk-mt8173-img.o
> +obj-$(CONFIG_COMMON_CLK_MT8173_MFGTOP) += clk-mt8173-mfgtop.o
>   obj-$(CONFIG_COMMON_CLK_MT8173_MMSYS) += clk-mt8173-mm.o
>   obj-$(CONFIG_COMMON_CLK_MT8173_VDECSYS) += clk-mt8173-vdecsys.o
>   obj-$(CONFIG_COMMON_CLK_MT8173_VENCSYS) += clk-mt8173-vencsys.o
> diff --git a/drivers/clk/mediatek/clk-mt8173-mfgtop.c b/drivers/clk/mediatek/clk-mt8173-mfgtop.c
> new file mode 100644
> index 000000000000..85fa7a7453ed
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt8173-mfgtop.c
> @@ -0,0 +1,240 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2024 Google LLC
> + * Author: Chen-Yu Tsai <wenst@chromium.org>
> + *
> + * Based on driver in downstream ChromeOS v5.15 kernel.
> + *
> + * Copyright (c) 2014 MediaTek Inc.
> + * Author: Chiawen Lee <chiawen.lee@mediatek.com>
> + */
> +
> +#include <dt-bindings/clock/mt8173-clk.h>
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +
> +#include "clk-gate.h"
> +#include "clk-mtk.h"
> +
> +static const struct mtk_gate_regs mfg_cg_regs = {
> +	.sta_ofs = 0x0000,
> +	.clr_ofs = 0x0008,
> +	.set_ofs = 0x0004,
> +};
> +
> +#define GATE_MFG(_id, _name, _parent, _shift, _flags)	\
> +		GATE_MTK_FLAGS(_id, _name, _parent, &mfg_cg_regs, _shift, &mtk_clk_gate_ops_setclr, _flags)

Extra tabulation: please fix

> +
> +/* TODO: The block actually has dividers for the core and mem clocks. */
> +static const struct mtk_gate mfg_clks[] = {
> +	GATE_MFG(CLK_MFG_AXI, "mfg_axi", "axi_mfg_in_sel", 0, CLK_SET_RATE_PARENT),
> +	GATE_MFG(CLK_MFG_MEM, "mfg_mem", "mem_mfg_in_sel", 1, CLK_SET_RATE_PARENT),
> +	GATE_MFG(CLK_MFG_G3D, "mfg_g3d", "mfg_sel", 2, CLK_SET_RATE_PARENT),
> +	GATE_MFG(CLK_MFG_26M, "mfg_26m", "clk26m", 3, 0),
> +};
> +
> +static const struct mtk_clk_desc mfg_desc = {
> +	.clks = mfg_clks,
> +	.num_clks = ARRAY_SIZE(mfg_clks),
> +};
> +
> +struct mt8173_mfgtop_data {
> +	struct clk_hw_onecell_data *clk_data;
> +	struct regmap *regmap;
> +	struct generic_pm_domain genpd;
> +	struct of_phandle_args parent_pd, child_pd;
> +	struct clk *clk_26m;
> +};
> +
> +static const struct of_device_id of_match_clk_mt8173_mfgtop[] = {
> +	{ .compatible = "mediatek,mt8173-mfgtop", .data = &mfg_desc },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, of_match_clk_mt8173_mfgtop);

Please move of_match_clk_mt8173_mfgtop before clk_mt8173_mfgtop_drv for consistency
with all the other clock drivers.

> +
> +/* Delay count in clock cycles */
> +#define MFG_ACTIVE_POWER_CON0	0x24
> + #define RST_B_DELAY_CNT	GENMASK(7, 0)	/* pwr_rst_b de-assert delay during power-up */
> + #define CLK_EN_DELAY_CNT	GENMASK(15, 8)	/* CLK_DIS deassert delay during power-up */
> + #define CLK_DIS_DELAY_CNT	GENMASK(23, 16)	/* CLK_DIS assert delay during power-down */

The reason why I had EVT_FORCE_ABORT and ACTIVE_PWRCTL_EN in my driver is to
document that we're keeping the event force abort disabled and, more importantly,
we are keeping the "active power control" feature disabled.

Please, add those two - or at least the ACTIVE_PWRCTL_EN - to keep that documented,
or this information will be lost for sure.
If in the future the ACTIVE_PWRCTL feature will become usable, it's going to be
just a 30 seconds change, as the info is already there.

> +
> +#define MFG_ACTIVE_POWER_CON1	0x28
> + #define PWR_ON_S_DELAY_CNT	GENMASK(7, 0)	/* pwr_on_s assert delay during power-up */
> + #define ISO_DELAY_CNT		GENMASK(15, 8)	/* ISO assert delay during power-down */
> + #define ISOOFF_DELAY_CNT	GENMASK(23, 16)	/* ISO de-assert delay during power-up */
> + #define RST__DELAY_CNT		GENMASK(31, 24) /* pwr_rsb_b assert delay during power-down */
> +
> +static int clk_mt8173_mfgtop_power_on(struct generic_pm_domain *domain)
> +{
> +	struct mt8173_mfgtop_data *data = container_of(domain, struct mt8173_mfgtop_data, genpd);
> +
> +	/* drives internal power management */
> +	clk_prepare_enable(data->clk_26m);
> +
> +	/* Power on/off delays for various signals */
> +	regmap_write(data->regmap, MFG_ACTIVE_POWER_CON0,
> +		     FIELD_PREP(RST_B_DELAY_CNT, 77) |
> +		     FIELD_PREP(CLK_EN_DELAY_CNT, 61) |
> +		     FIELD_PREP(CLK_DIS_DELAY_CNT, 60));

I get that this is kinda odd to read, but still...

FIELD_PREP(CLK_DIS_DELAY_CNT, 60) |
FIELD_PREP(ACTIVE_PWRCTL_EN, 0));

...please :-)


> +	regmap_write(data->regmap, MFG_ACTIVE_POWER_CON1,
> +		     FIELD_PREP(PWR_ON_S_DELAY_CNT, 11) |
> +		     FIELD_PREP(ISO_DELAY_CNT, 68) |
> +		     FIELD_PREP(ISOOFF_DELAY_CNT, 69) |
> +		     FIELD_PREP(RST__DELAY_CNT, 77));
> +
> +	/* Magic numbers related to core switch sequence and delays */
> +	regmap_write(data->regmap, 0xe0, 0x7a710184);
> +	regmap_write(data->regmap, 0xe4, 0x835f6856);
> +	regmap_write(data->regmap, 0xe8, 0x002b0234);
> +	regmap_write(data->regmap, 0xec, 0x80000000);
> +	regmap_write(data->regmap, 0xa0, 0x08000000);

Is there any way to retrieve information about what those registers are?

> +
> +	return 0;
> +}
> +
> +static int clk_mt8173_mfgtop_power_off(struct generic_pm_domain *domain)
> +{
> +	struct mt8173_mfgtop_data *data = container_of(domain, struct mt8173_mfgtop_data, genpd);
> +
> +	/* Magic numbers related to core switch sequence and delays */
> +	regmap_write(data->regmap, 0xec, 0);
> +
> +	/* drives internal power management */
> +	clk_disable_unprepare(data->clk_26m);
> +
> +	return 0;
> +}
> +
> +static int clk_mt8173_mfgtop_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct device_node *node = dev->of_node;
> +	struct mt8173_mfgtop_data *data;
> +	int ret;
> +
> +	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, data);
> +
> +	data->clk_data = mtk_devm_alloc_clk_data(dev, ARRAY_SIZE(mfg_clks));
> +	if (!data->clk_data)
> +		return -ENOMEM;
> +
> +	/* MTK clock gates also uses regmap */
> +	data->regmap = device_node_to_regmap(node);
> +	if (IS_ERR(data->regmap))
> +		return dev_err_probe(dev, PTR_ERR(data->regmap), "Failed to get regmap\n");
> +
> +	data->child_pd.np = node;
> +	data->child_pd.args_count = 0;
> +	ret = of_parse_phandle_with_args(node, "power-domains", "#power-domain-cells", 0,
> +					 &data->parent_pd);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to parse power domain\n");
> +
> +	devm_pm_runtime_enable(dev);
> +	/*
> +	 * Do a pm_runtime_resume_and_get() to workaround a possible
> +	 * deadlock between clk_register() and the genpd framework.
> +	 */
> +	ret = pm_runtime_resume_and_get(dev);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "Failed to runtime resume device\n");
> +		goto put_of_node;
> +	}
> +
> +	ret = mtk_clk_register_gates(dev, node, mfg_clks, ARRAY_SIZE(mfg_clks),
> +				     data->clk_data);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "Failed to register clock gates\n");
> +		goto put_pm_runtime;
> +	}
> +
> +	data->clk_26m = clk_hw_get_clk(data->clk_data->hws[CLK_MFG_26M], "26m");
> +	if (IS_ERR(data->clk_26m)) {
> +		dev_err_probe(dev, PTR_ERR(data->clk_26m), "Failed to get 26 MHz clock\n");
> +		goto unregister_clks;
> +	}
> +
> +	ret = of_clk_add_hw_provider(node, of_clk_hw_onecell_get, data->clk_data);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "Failed to add clk OF provider\n");
> +		goto put_26m_clk;
> +	}
> +
> +	data->genpd.name = "mfg_apm";

"mfg-apm" or "mfg-pwr" please!

Everything else looks good.

Thanks for taking care of that, I started this work way too much time ago and
realistically I wouldn't have been able to finish it due to time constraints.

It's great to see that *finally* we can get some GPU upstream on this old SoC.
As its CPUs are really slow, LLVMPipe is quite unusable from a UX perspective
hence its only big issue was the lack of 3D HW acceleration.

This makes machines embedding this SoC usable, and that's simply awesome.

Cheers!
Angelo


