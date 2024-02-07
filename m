Return-Path: <devicetree+bounces-39408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 306F584C8BE
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 11:35:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 614351F23FDC
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 10:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 453C01427E;
	Wed,  7 Feb 2024 10:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5/SqoW8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B89B14273;
	Wed,  7 Feb 2024 10:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707302135; cv=none; b=C5C6iKAreJLW0lSz+64+A7br5wSAMhb8mGdrhUQW9fiA6qYb8MyVY9aZ/vJFNM3W7M1j8KMWzvm56QlUX/2kNihodzdB9INcwfkrni7xIi2KawciUwiama5LIXBcLDnhJ+JR242R8JhTpikhOy9ZwvI69RZFAf5fhVMryZdP1AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707302135; c=relaxed/simple;
	bh=amhnJJzYltfOjwoS2oeBCkkBkbLyx1dJCyBGXv2aaVI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QSqrDmllwZhoY8T2Fgxr1yqvXbLF/wYSX1u576X0YdyO3BYSN9B7YXZumxkHx6/FilXc6K2y98SF/YrvtX8XV9D24kyBm7Q1G08VC2t2AKbG/oS2pZYR48Im3jpBPAoLIZNzeyeKK4xUpkb6zeslSdpWRa/5i9LM0x9rLPDzhAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5/SqoW8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C31B2C433F1;
	Wed,  7 Feb 2024 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707302134;
	bh=amhnJJzYltfOjwoS2oeBCkkBkbLyx1dJCyBGXv2aaVI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K5/SqoW8uvvY5FZhQF1wIOuuXwktm60ojiEajvVdFW0QrY8/vGHqQ/RNSchRX0kp4
	 NGGhYdRoXOOAOVVFhXwZauqvu5+oTfTFUzFgV+JOJlYsf8zNl+OeUoJ7rVPSEhSxRT
	 I5QT5HWj8yymVFUQHMzEPiFIr2lfwP0JYC0Fm2yMPN5jTacsHog6m511A6njLg5gvV
	 42jEocSKKwGyhh0rKO7C3D516iA8JdYdyjNGs/lQpyAqlh0R5BcU4T8XyhPMiVqSg5
	 6SQyIgonJOA+5i5wEAPz8dZNe+lhGr1CkqLuI9MnJDkKXmbR568HEZjznJRsf49tZK
	 3B7x6t38iBzfQ==
Date: Wed, 7 Feb 2024 11:35:31 +0100
From: Vinod Koul <vkoul@kernel.org>
To: Shengyang Chen <shengyang.chen@starfivetech.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	p.zabel@pengutronix.de, minda.chen@starfivetech.com,
	changhuang.liang@starfivetech.com, rogerq@kernel.org,
	geert+renesas@glider.be, keith.zhao@starfivetech.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: starfive: Add mipi dphy tx support
Message-ID: <ZcNc8zZzsVU6viBL@matsya>
References: <20240206061921.107372-1-shengyang.chen@starfivetech.com>
 <20240206061921.107372-3-shengyang.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240206061921.107372-3-shengyang.chen@starfivetech.com>

On 06-02-24, 14:19, Shengyang Chen wrote:
> Add mipi dphy tx support for the StarFive JH7110 SoC.
> It is a module which is used to receive data from DSI
> driver and transfer data to DSI interface like mipi screen.
> 
> Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
> ---
>  MAINTAINERS                               |   7 +
>  drivers/phy/starfive/Kconfig              |  10 +
>  drivers/phy/starfive/Makefile             |   1 +
>  drivers/phy/starfive/phy-jh7110-dphy-tx.c | 635 ++++++++++++++++++++++
>  4 files changed, 653 insertions(+)
>  create mode 100644 drivers/phy/starfive/phy-jh7110-dphy-tx.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 944b8ec33639..5e062b7393cb 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20864,6 +20864,13 @@ S:	Supported
>  F:	Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
>  F:	drivers/phy/starfive/phy-jh7110-dphy-rx.c
>  
> +STARFIVE JH7110 DPHY TX DRIVER
> +M:	Keith Zhao <keith.zhao@starfivetech.com>
> +M:	Shengyang Chen <shengyang.chen@starfivetech.com>
> +S:	Supported
> +F:	Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
> +F:	drivers/phy/starfive/phy-jh7110-dphy-tx.c
> +
>  STARFIVE JH7110 MMC/SD/SDIO DRIVER
>  M:	William Qiu <william.qiu@starfivetech.com>
>  S:	Supported
> diff --git a/drivers/phy/starfive/Kconfig b/drivers/phy/starfive/Kconfig
> index 9508e2143011..d0cdd7cb4a13 100644
> --- a/drivers/phy/starfive/Kconfig
> +++ b/drivers/phy/starfive/Kconfig
> @@ -15,6 +15,16 @@ config PHY_STARFIVE_JH7110_DPHY_RX
>  	  system. If M is selected, the module will be called
>  	  phy-jh7110-dphy-rx.ko.
>  
> +config PHY_STARFIVE_JH7110_DPHY_TX
> +	tristate "StarFive JH7110 D-PHY TX Support"
> +	depends on HAS_IOMEM
> +	select GENERIC_PHY
> +	select GENERIC_PHY_MIPI_DPHY
> +	help
> +	  Choose this option if you have a StarFive D-PHY TX in your
> +	  system. If M is selected, the module will be called
> +	  phy-jh7110-dphy-tx.ko.
> +
>  config PHY_STARFIVE_JH7110_PCIE
>  	tristate "Starfive JH7110 PCIE 2.0/USB 3.0 PHY support"
>  	depends on HAS_IOMEM
> diff --git a/drivers/phy/starfive/Makefile b/drivers/phy/starfive/Makefile
> index b391018b7c47..eedc4a6fec15 100644
> --- a/drivers/phy/starfive/Makefile
> +++ b/drivers/phy/starfive/Makefile
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_PHY_STARFIVE_JH7110_DPHY_RX)	+= phy-jh7110-dphy-rx.o
> +obj-$(CONFIG_PHY_STARFIVE_JH7110_DPHY_TX)	+= phy-jh7110-dphy-tx.o
>  obj-$(CONFIG_PHY_STARFIVE_JH7110_PCIE)		+= phy-jh7110-pcie.o
>  obj-$(CONFIG_PHY_STARFIVE_JH7110_USB)		+= phy-jh7110-usb.o
> diff --git a/drivers/phy/starfive/phy-jh7110-dphy-tx.c b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
> new file mode 100644
> index 000000000000..00be118c9606
> --- /dev/null
> +++ b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
> @@ -0,0 +1,635 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * DPHY TX driver for the StarFive JH7110 SoC
> + *
> + * Copyright (C) 2023 StarFive Technology Co., Ltd.
> + * Author: Keith Zhao <keith.zhao@starfivetech.com>
> + * Author: Shengyang Chen <shengyang.chen@starfivetech.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/io.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/phy/phy.h>
> +#include <linux/phy/phy-mipi-dphy.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/reset.h>
> +
> +#define STF_DPHY_APBIFSAIF_SYSCFG(x)			(x)
> +
> +#define  STF_DPHY_AON_POWER_READY_N_SHIFT		0x0U
> +#define  STF_DPHY_AON_POWER_READY_N_MASK		BIT(0)
> +#define  STF_DPHY_CFG_L0_SWAP_SEL_SHIFT			0xCU

lower case please, here and everywhere

> +#define  STF_DPHY_CFG_L0_SWAP_SEL_MASK			GENMASK(14, 12)
> +#define  STF_DPHY_CFG_L1_SWAP_SEL_SHIFT			0xFU
> +#define  STF_DPHY_CFG_L1_SWAP_SEL_MASK			GENMASK(17, 15)
> +#define  STF_DPHY_CFG_L2_SWAP_SEL_SHIFT			0x12U
> +#define  STF_DPHY_CFG_L2_SWAP_SEL_MASK			GENMASK(20, 18)
> +#define  STF_DPHY_CFG_L3_SWAP_SEL_SHIFT			0x15U
> +#define  STF_DPHY_CFG_L3_SWAP_SEL_MASK			GENMASK(23, 21)
> +#define  STF_DPHY_CFG_L4_SWAP_SEL_SHIFT			0x18U
> +#define  STF_DPHY_CFG_L4_SWAP_SEL_MASK			GENMASK(26, 24)
> +#define  STF_DPHY_RGS_CDTX_PLL_UNLOCK_SHIFT		0x12U
> +#define  STF_DPHY_RGS_CDTX_PLL_UNLOCK_MASK		BIT(18)
> +#define  STF_DPHY_RG_CDTX_L0N_HSTX_RES_SHIFT		0x13U
> +#define  STF_DPHY_RG_CDTX_L0N_HSTX_RES_MASK		GENMASK(23, 19)
> +#define  STF_DPHY_RG_CDTX_L0P_HSTX_RES_SHIFT		0x18U
> +#define  STF_DPHY_RG_CDTX_L0P_HSTX_RES_MASK		GENMASK(28, 24)
> +
> +#define  STF_DPHY_RG_CDTX_L1P_HSTX_RES_SHIFT		0x5U
> +#define  STF_DPHY_RG_CDTX_L1P_HSTX_RES_MASK		GENMASK(9, 5)
> +#define  STF_DPHY_RG_CDTX_L2N_HSTX_RES_SHIFT		0xAU
> +#define  STF_DPHY_RG_CDTX_L2N_HSTX_RES_MASK		GENMASK(14, 10)
> +#define  STF_DPHY_RG_CDTX_L2P_HSTX_RES_SHIFT		0xFU
> +#define  STF_DPHY_RG_CDTX_L2P_HSTX_RES_MASK		GENMASK(19, 15)
> +#define  STF_DPHY_RG_CDTX_L3N_HSTX_RES_SHIFT		0x14U
> +#define  STF_DPHY_RG_CDTX_L3N_HSTX_RES_MASK		GENMASK(24, 20)
> +#define  STF_DPHY_RG_CDTX_L3P_HSTX_RES_SHIFT		0x19U
> +#define  STF_DPHY_RG_CDTX_L3P_HSTX_RES_MASK		GENMASK(29, 25)
> +
> +#define  STF_DPHY_RG_CDTX_L4N_HSTX_RES_SHIFT		0x0U
> +#define  STF_DPHY_RG_CDTX_L4N_HSTX_RES_MASK		GENMASK(4, 0)
> +#define  STF_DPHY_RG_CDTX_L4P_HSTX_RES_SHIFT		0x5U
> +#define  STF_DPHY_RG_CDTX_L4P_HSTX_RES_MASK		GENMASK(9, 5)
> +#define  STF_DPHY_RG_CDTX_PLL_FBK_FRA_SHIFT		0x0U
> +#define  STF_DPHY_RG_CDTX_PLL_FBK_FRA_MASK		GENMASK(23, 0)
> +
> +#define  STF_DPHY_RG_CDTX_PLL_FBK_INT_SHIFT		0x0U
> +#define  STF_DPHY_RG_CDTX_PLL_FBK_INT_MASK		GENMASK(8, 0)
> +#define  STF_DPHY_RG_CDTX_PLL_FM_EN_SHIFT		0x9U
> +#define  STF_DPHY_RG_CDTX_PLL_FM_EN_MASK		BIT(9)
> +#define  STF_DPHY_RG_CDTX_PLL_LDO_STB_X2_EN_SHIFT	0xAU
> +#define  STF_DPHY_RG_CDTX_PLL_LDO_STB_X2_EN_MASK	BIT(10)
> +#define  STF_DPHY_RG_CDTX_PLL_PRE_DIV_SHIFT		0xBU
> +#define  STF_DPHY_RG_CDTX_PLL_PRE_DIV_MASK		GENMASK(12, 11)
> +
> +#define  STF_DPHY_RG_CDTX_PLL_SSC_EN_SHIFT		0x12U
> +#define  STF_DPHY_RG_CDTX_PLL_SSC_EN_MASK		0x40000U
> +
> +#define  STF_DPHY_RG_CLANE_HS_CLK_POST_TIME_SHIFT	0x0U
> +#define  STF_DPHY_RG_CLANE_HS_CLK_POST_TIME_MASK	GENMASK(7, 0)
> +#define  STF_DPHY_RG_CLANE_HS_CLK_PRE_TIME_SHIFT	0x8U
> +#define  STF_DPHY_RG_CLANE_HS_CLK_PRE_TIME_MASK		GENMASK(15, 8)
> +#define  STF_DPHY_RG_CLANE_HS_PRE_TIME_SHIFT		0x10U
> +#define  STF_DPHY_RG_CLANE_HS_PRE_TIME_MASK		GENMASK(23, 16)
> +#define  STF_DPHY_RG_CLANE_HS_TRAIL_TIME_SHIFT		0x18U
> +#define  STF_DPHY_RG_CLANE_HS_TRAIL_TIME_MASK		GENMASK(31, 24)
> +
> +#define  STF_DPHY_RG_CLANE_HS_ZERO_TIME_SHIFT		0x0U
> +#define  STF_DPHY_RG_CLANE_HS_ZERO_TIME_MASK		GENMASK(7, 0)
> +#define  STF_DPHY_RG_DLANE_HS_PRE_TIME_SHIFT		0x8U
> +#define  STF_DPHY_RG_DLANE_HS_PRE_TIME_MASK		GENMASK(15, 8)
> +#define  STF_DPHY_RG_DLANE_HS_TRAIL_TIME_SHIFT		0x10U
> +#define  STF_DPHY_RG_DLANE_HS_TRAIL_TIME_MASK		GENMASK(23, 16)
> +#define  STF_DPHY_RG_DLANE_HS_ZERO_TIME_SHIFT		0x18U
> +#define  STF_DPHY_RG_DLANE_HS_ZERO_TIME_MASK		GENMASK(31, 24)
> +
> +#define  STF_DPHY_RG_EXTD_CYCLE_SEL_SHIFT		0x0U
> +#define  STF_DPHY_RG_EXTD_CYCLE_SEL_MASK		GENMASK(2, 0)
> +#define  STF_DPHY_SCFG_C_HS_PRE_ZERO_TIME_SHIFT		0x0U
> +#define  STF_DPHY_SCFG_C_HS_PRE_ZERO_TIME_MASK		GENMASK(31, 0)
> +
> +#define  STF_DPHY_SCFG_DSI_TXREADY_ESC_SEL_SHIFT	0x1U
> +#define  STF_DPHY_SCFG_DSI_TXREADY_ESC_SEL_MASK		GENMASK(2, 1)
> +#define  STF_DPHY_SCFG_PPI_C_READY_SEL_SHIFT		0x3U
> +#define  STF_DPHY_SCFG_PPI_C_READY_SEL_MASK		GENMASK(4, 3)
> +
> +#define  STF_DPHY_REFCLK_IN_SEL_SHIFT			0x1AU
> +#define  STF_DPHY_REFCLK_IN_SEL_MASK			GENMASK(28, 26)
> +#define  STF_DPHY_RESETB_SHIFT				0x1DU
> +#define  STF_DPHY_RESETB_MASK				BIT(29)
> +
> +#define STF_DPHY_REFCLK_12M				1
> +#define STF_DPHY_BITRATE_ALIGN				10000000
> +
> +#define STF_MAP_LANES_NUM				5
> +
> +struct m31_dphy_config {
> +	int ref_clk;
> +	unsigned long bitrate;
> +	u32 pll_prev_div;
> +	u32 pll_fbk_int;
> +	u32 pll_fbk_fra;
> +	u32 extd_cycle_sel;
> +	u32 dlane_hs_pre_time;
> +	u32 dlane_hs_zero_time;
> +	u32 dlane_hs_trail_time;
> +	u32 clane_hs_pre_time;
> +	u32 clane_hs_zero_time;
> +	u32 clane_hs_trail_time;
> +	u32 clane_hs_clk_pre_time;
> +	u32 clane_hs_clk_post_time;
> +};
> +
> +static const struct m31_dphy_config m31_dphy_configs[] = {
> +	{12000000, 160000000, 0x0, 0x6a, 0xaa << 16 | 0xaa << 8 | 0xaa,

FIELD_PREP/GET instead of bit shifts please

> +	 0x3, 0xa, 0x17, 0x11, 0x5, 0x2b, 0xd, 0x7, 0x3d},
> +	{12000000, 170000000, 0x0, 0x71, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x3, 0xb, 0x18, 0x11, 0x5, 0x2e, 0xd, 0x7, 0x3d},
> +	{12000000, 180000000, 0x0, 0x78, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x3, 0xb, 0x19, 0x12, 0x6, 0x30, 0xe, 0x7, 0x3e},
> +	{12000000, 190000000, 0x0, 0x7e, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x3, 0xc, 0x1a, 0x12, 0x6, 0x33, 0xe, 0x7, 0x3e},
> +	{12000000, 200000000, 0x0, 0x85, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x3, 0xc, 0x1b, 0x13, 0x7, 0x35, 0xf, 0x7, 0x3f},
> +	{12000000, 320000000, 0x0, 0x6a, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x2, 0x8, 0x14, 0xf, 0x5, 0x2b, 0xd, 0x3, 0x23},
> +	{12000000, 330000000, 0x0, 0x6e, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x2, 0x8, 0x15, 0xf, 0x5, 0x2d, 0xd, 0x3, 0x23},
> +	{12000000, 340000000, 0x0, 0x71, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x2, 0x9, 0x15, 0xf, 0x5, 0x2e, 0xd, 0x3, 0x23},
> +	{12000000, 350000000, 0x0, 0x74, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x2, 0x9, 0x15, 0x10, 0x6, 0x2f, 0xe, 0x3, 0x24},
> +	{12000000, 360000000, 0x0, 0x78, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x2, 0x9, 0x16, 0x10, 0x6, 0x30, 0xe, 0x3, 0x24},
> +	{12000000, 370000000, 0x0, 0x7b, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x2, 0x9, 0x17, 0x10, 0x6, 0x32, 0xe, 0x3, 0x24},
> +	{12000000, 380000000, 0x0, 0x7e, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x2, 0xa, 0x17, 0x10, 0x6, 0x33, 0xe, 0x3, 0x24},
> +	{12000000, 390000000, 0x0, 0x82, 0x0 << 16 | 0x0 << 8 | 0x0, 0x2,
> +	 0xa, 0x17, 0x11, 0x6, 0x35, 0xf, 0x3, 0x25},
> +	{12000000, 400000000, 0x0, 0x85, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x2, 0xa, 0x18, 0x11, 0x7, 0x35, 0xf, 0x3, 0x25},
> +	{12000000, 410000000, 0x0, 0x88, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x2, 0xa, 0x19, 0x11, 0x7, 0x37, 0xf, 0x3, 0x25},
> +	{12000000, 420000000, 0x0, 0x8c, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x2, 0xa, 0x19, 0x12, 0x7, 0x38, 0x10, 0x3, 0x26},
> +	{12000000, 430000000, 0x0, 0x8f, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x2, 0xb, 0x19, 0x12, 0x7, 0x39, 0x10, 0x3, 0x26},
> +	{12000000, 440000000, 0x0, 0x92, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x2, 0xb, 0x1a, 0x12, 0x7, 0x3b, 0x10, 0x3, 0x26},
> +	{12000000, 450000000, 0x0, 0x96, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x2, 0xb, 0x1b, 0x12, 0x8, 0x3c, 0x10, 0x3, 0x26},
> +	{12000000, 460000000, 0x0, 0x99, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x2, 0xb, 0x1b, 0x13, 0x8, 0x3d, 0x11, 0x3, 0x27},
> +	{12000000, 470000000, 0x0, 0x9c, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x2, 0xc, 0x1b, 0x13, 0x8, 0x3e, 0x11, 0x3, 0x27},
> +	{12000000, 480000000, 0x0, 0xa0, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x2, 0xc, 0x1c, 0x13, 0x8, 0x40, 0x11, 0x3, 0x27},
> +	{12000000, 490000000, 0x0, 0xa3, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x2, 0xc, 0x1d, 0x14, 0x8, 0x42, 0x12, 0x3, 0x28},
> +	{12000000, 500000000, 0x0, 0xa6, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x2, 0xc, 0x1d, 0x14, 0x9, 0x42, 0x12, 0x3, 0x28},
> +	{12000000, 510000000, 0x0, 0xaa, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x2, 0xc, 0x1e, 0x14, 0x9, 0x44, 0x12, 0x3, 0x28},
> +	{12000000, 520000000, 0x0, 0xad, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x2, 0xd, 0x1e, 0x15, 0x9, 0x45, 0x13, 0x3, 0x29},
> +	{12000000, 530000000, 0x0, 0xb0, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x2, 0xd, 0x1e, 0x15, 0x9, 0x47, 0x13, 0x3, 0x29},
> +	{12000000, 540000000, 0x0, 0xb4, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x2, 0xd, 0x1f, 0x15, 0x9, 0x48, 0x13, 0x3, 0x29},
> +	{12000000, 550000000, 0x0, 0xb7, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x2, 0xd, 0x20, 0x16, 0x9, 0x4a, 0x14, 0x3, 0x2a},
> +	{12000000, 560000000, 0x0, 0xba, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x2, 0xe, 0x20, 0x16, 0xa, 0x4a, 0x14, 0x3, 0x2a},
> +	{12000000, 570000000, 0x0, 0xbe, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x2, 0xe, 0x20, 0x16, 0xa, 0x4c, 0x14, 0x3, 0x2a},
> +	{12000000, 580000000, 0x0, 0xc1, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x2, 0xe, 0x21, 0x16, 0xa, 0x4d, 0x14, 0x3, 0x2a},
> +	{12000000, 590000000, 0x0, 0xc4, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x2, 0xe, 0x22, 0x17, 0xa, 0x4f, 0x15, 0x3, 0x2b},
> +	{12000000, 600000000, 0x0, 0xc8, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x2, 0xe, 0x23, 0x17, 0xa, 0x50, 0x15, 0x3, 0x2b},
> +	{12000000, 610000000, 0x0, 0xcb, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x2, 0xf, 0x22, 0x17, 0xb, 0x50, 0x15, 0x3, 0x2b},
> +	{12000000, 620000000, 0x0, 0xce, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x2, 0xf, 0x23, 0x18, 0xb, 0x52, 0x16, 0x3, 0x2c},
> +	{12000000, 630000000, 0x0, 0x69, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0x7, 0x12, 0xd, 0x5, 0x2a, 0xc, 0x1, 0x15},
> +	{12000000, 640000000, 0x0, 0x6a, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0x7, 0x13, 0xe, 0x5, 0x2b, 0xd, 0x1, 0x16},
> +	{12000000, 650000000, 0x0, 0x6c, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0x7, 0x13, 0xe, 0x5, 0x2c, 0xd, 0x1, 0x16},
> +	{12000000, 660000000, 0x0, 0x6e, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0x7, 0x13, 0xe, 0x5, 0x2d, 0xd, 0x1, 0x16},
> +	{12000000, 670000000, 0x0, 0x6f, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0x8, 0x13, 0xe, 0x5, 0x2d, 0xd, 0x1, 0x16},
> +	{12000000, 680000000, 0x0, 0x71, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0x8, 0x13, 0xe, 0x5, 0x2e, 0xd, 0x1, 0x16},
> +	{12000000, 690000000, 0x0, 0x73, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0x8, 0x14, 0xe, 0x6, 0x2e, 0xd, 0x1, 0x16},
> +	{12000000, 700000000, 0x0, 0x74, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0x8, 0x14, 0xf, 0x6, 0x2f, 0xe, 0x1, 0x16},
> +	{12000000, 710000000, 0x0, 0x76, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0x8, 0x14, 0xf, 0x6, 0x2f, 0xe, 0x1, 0x17},
> +	{12000000, 720000000, 0x0, 0x78, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0x8, 0x15, 0xf, 0x6, 0x30, 0xe, 0x1, 0x17},
> +	{12000000, 730000000, 0x0, 0x79, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0x8, 0x15, 0xf, 0x6, 0x31, 0xe, 0x1, 0x17},
> +	{12000000, 740000000, 0x0, 0x7b, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0x8, 0x15, 0xf, 0x6, 0x32, 0xe, 0x1, 0x17},
> +	{12000000, 750000000, 0x0, 0x7d, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0x8, 0x16, 0xf, 0x6, 0x32, 0xe, 0x1, 0x17},
> +	{12000000, 760000000, 0x0, 0x7e, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0x9, 0x15, 0xf, 0x6, 0x33, 0xe, 0x1, 0x17},
> +	{12000000, 770000000, 0x0, 0x80, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0x9, 0x15, 0x10, 0x6, 0x34, 0xf, 0x1, 0x18},
> +	{12000000, 780000000, 0x0, 0x82, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0x9, 0x16, 0x10, 0x6, 0x35, 0xf, 0x1, 0x18,},
> +	{12000000, 790000000, 0x0, 0x83, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0x9, 0x16, 0x10, 0x7, 0x34, 0xf, 0x1, 0x18},
> +	{12000000, 800000000, 0x0, 0x85, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0x9, 0x17, 0x10, 0x7, 0x35, 0xf, 0x1, 0x18},
> +	{12000000, 810000000, 0x0, 0x87, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0x9, 0x17, 0x10, 0x7, 0x36, 0xf, 0x1, 0x18},
> +	{12000000, 820000000, 0x0, 0x88, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0x9, 0x17, 0x10, 0x7, 0x37, 0xf, 0x1, 0x18},
> +	{12000000, 830000000, 0x0, 0x8a, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0x9, 0x18, 0x10, 0x7, 0x37, 0xf, 0x1, 0x18},
> +	{12000000, 840000000, 0x0, 0x8c, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0x9, 0x18, 0x11, 0x7, 0x38, 0x10, 0x1, 0x19},
> +	{12000000, 850000000, 0x0, 0x8d, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0xa, 0x17, 0x11, 0x7, 0x39, 0x10, 0x1, 0x19},
> +	{12000000, 860000000, 0x0, 0x8f, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0xa, 0x18, 0x11, 0x7, 0x39, 0x10, 0x1, 0x19},
> +	{12000000, 870000000, 0x0, 0x91, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0xa, 0x18, 0x11, 0x7, 0x3a, 0x10, 0x1, 0x19},
> +	{12000000, 880000000, 0x0, 0x92, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0xa, 0x18, 0x11, 0x7, 0x3b, 0x10, 0x1, 0x19},
> +	{12000000, 890000000, 0x0, 0x94, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0xa, 0x19, 0x11, 0x7, 0x3c, 0x10, 0x1, 0x19},
> +	{12000000, 900000000, 0x0, 0x96, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0xa, 0x19, 0x12, 0x8, 0x3c, 0x10, 0x1, 0x19},
> +	{12000000, 910000000, 0x0, 0x97, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0xa, 0x19, 0x12, 0x8, 0x3c, 0x11, 0x1, 0x1a},
> +	{12000000, 920000000, 0x0, 0x99, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0xa, 0x1a, 0x12, 0x8, 0x3d, 0x11, 0x1, 0x1a},
> +	{12000000, 930000000, 0x0, 0x9b, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0xa, 0x1a, 0x12, 0x8, 0x3e, 0x11, 0x1, 0x1a},
> +	{12000000, 940000000, 0x0, 0x9c, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0xb, 0x1a, 0x12, 0x8, 0x3e, 0x11, 0x1, 0x1a},
> +	{12000000, 950000000, 0x0, 0x9e, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0xb, 0x1a, 0x12, 0x8, 0x3f, 0x11, 0x1, 0x1a},
> +	{12000000, 960000000, 0x0, 0xa0, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0xb, 0x1a, 0x12, 0x8, 0x40, 0x11, 0x1, 0x1a},
> +	{12000000, 970000000, 0x0, 0xa1, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0xb, 0x1b, 0x13, 0x8, 0x41, 0x12, 0x1, 0x1b},
> +	{12000000, 980000000, 0x0, 0xa3, 0x55 << 16 | 0x55 << 8 | 0x55,
> +	 0x1, 0xb, 0x1b, 0x13, 0x8, 0x42, 0x12, 0x1, 0x1b},
> +	{12000000, 990000000, 0x0, 0xa5, 0x0 << 16 | 0x0 << 8 | 0x0,
> +	 0x1, 0xb, 0x1b, 0x13, 0x8, 0x42, 0x12, 0x1, 0x1b},
> +	{12000000, 1000000000, 0x0, 0xa6, 0xaa << 16 | 0xaa << 8 | 0xaa,
> +	 0x1, 0xb, 0x1c, 0x13, 0x9, 0x42, 0x12, 0x1, 0x1b},
> +};
> +
> +struct stf_dphy_info {
> +	/**
> +	 * @maps:
> +	 *
> +	 * Physical lanes and logic lanes mapping table.
> +	 *
> +	 * The default order is:
> +	 * [data lane 0, data lane 1, data lane 2, date lane 3, clk lane]
> +	 */
> +	u8 maps[STF_MAP_LANES_NUM];
> +};
> +
> +struct stf_dphy {
> +	struct device *dev;
> +	void __iomem *topsys;
> +	struct clk *txesc_clk;
> +	struct reset_control *sys_rst;
> +
> +	struct phy_configure_opts_mipi_dphy config;
> +
> +	struct phy *phy;
> +	const struct stf_dphy_info *info;
> +};
> +
> +static inline u32 stf_dphy_get_reg(void __iomem *io_addr, u32 addr, u32 shift, u32 mask)
> +{
> +	u32 tmp;
> +
> +	tmp = readl(io_addr);
> +	tmp = (tmp & mask) >> shift;
> +	return tmp;
> +}
> +
> +static inline void stf_dphy_set_reg(void __iomem *io_addr, u32 addr, u32 data, u32 shift, u32 mask)
> +{
> +	u32 tmp;
> +
> +	tmp = readl(io_addr + addr);
> +	tmp &= ~mask;
> +	tmp |= (data << shift) & mask;
> +	writel(tmp, (io_addr + addr));
> +}
> +
> +static int is_pll_locked(struct stf_dphy *dphy)
> +{
> +	int tmp = stf_dphy_get_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(8),
> +				  STF_DPHY_RGS_CDTX_PLL_UNLOCK_SHIFT,
> +				  STF_DPHY_RGS_CDTX_PLL_UNLOCK_MASK);
> +	return !tmp;
> +}
> +
> +static void stf_dphy_hw_reset(struct stf_dphy *dphy, int assert)
> +{
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(100),
> +			 !assert, STF_DPHY_RESETB_SHIFT, STF_DPHY_RESETB_MASK);
> +
> +	if (!assert) {
> +		/*the lock-in time of pll of M31 is 20us-50ms*/
> +		while ((!is_pll_locked(dphy)) && msecs_to_jiffies(50))

former makes sense why later condition, why is this condition here

> +			;
> +		dev_err(dphy->dev, "MIPI dphy-tx # PLL Locked\n");
> +	}
> +}
> +
> +static int stf_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
> +{
> +	struct stf_dphy *dphy;
> +	u32 bitrate;
> +	unsigned long alignment;
> +	int i;
> +	const struct m31_dphy_config *p;
> +	const u32 STF_DPHY_AON_POWER_READY_N_active = 0;
> +	const struct stf_dphy_info *info;
> +
> +	dphy = phy_get_drvdata(phy);
> +	info = dphy->info;
> +	bitrate = opts->mipi_dphy.hs_clk_rate;
> +
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(8), 0x10,
> +			 STF_DPHY_RG_CDTX_L0N_HSTX_RES_SHIFT, STF_DPHY_RG_CDTX_L0N_HSTX_RES_MASK);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(12), 0x10,
> +			 STF_DPHY_RG_CDTX_L0N_HSTX_RES_SHIFT, STF_DPHY_RG_CDTX_L0N_HSTX_RES_MASK);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(12), 0x10,
> +			 STF_DPHY_RG_CDTX_L2N_HSTX_RES_SHIFT, STF_DPHY_RG_CDTX_L2N_HSTX_RES_MASK);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(12), 0x10,
> +			 STF_DPHY_RG_CDTX_L3N_HSTX_RES_SHIFT, STF_DPHY_RG_CDTX_L3N_HSTX_RES_MASK);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(16), 0x10,
> +			 STF_DPHY_RG_CDTX_L4N_HSTX_RES_SHIFT, STF_DPHY_RG_CDTX_L4N_HSTX_RES_MASK);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(8), 0x10,
> +			 STF_DPHY_RG_CDTX_L0P_HSTX_RES_SHIFT, STF_DPHY_RG_CDTX_L0P_HSTX_RES_MASK);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(12), 0x10,
> +			 STF_DPHY_RG_CDTX_L1P_HSTX_RES_SHIFT, STF_DPHY_RG_CDTX_L1P_HSTX_RES_MASK);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(12), 0x10,
> +			 STF_DPHY_RG_CDTX_L2P_HSTX_RES_SHIFT, STF_DPHY_RG_CDTX_L2P_HSTX_RES_MASK);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(12), 0x10,
> +			 STF_DPHY_RG_CDTX_L3P_HSTX_RES_SHIFT, STF_DPHY_RG_CDTX_L3P_HSTX_RES_MASK);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(16), 0x10,
> +			 STF_DPHY_RG_CDTX_L4P_HSTX_RES_SHIFT, STF_DPHY_RG_CDTX_L4P_HSTX_RES_MASK);
> +
> +	alignment = STF_DPHY_BITRATE_ALIGN;
> +	if (bitrate % alignment)
> +		bitrate += alignment - (bitrate % alignment);
> +
> +	p = m31_dphy_configs;
> +	for (i = 0; i < ARRAY_SIZE(m31_dphy_configs); i++, p++) {
> +		if (p->bitrate == bitrate) {
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(100),
> +					 STF_DPHY_REFCLK_12M, STF_DPHY_REFCLK_IN_SEL_SHIFT,
> +					 STF_DPHY_REFCLK_IN_SEL_MASK);
> +
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(0),
> +					 STF_DPHY_AON_POWER_READY_N_active,
> +					 STF_DPHY_AON_POWER_READY_N_SHIFT,
> +					 STF_DPHY_AON_POWER_READY_N_MASK);
> +
> +			/*Lane setting*/
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(0), info->maps[0],
> +					 STF_DPHY_CFG_L0_SWAP_SEL_SHIFT,
> +					 STF_DPHY_CFG_L0_SWAP_SEL_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(0), info->maps[1],
> +					 STF_DPHY_CFG_L1_SWAP_SEL_SHIFT,
> +					 STF_DPHY_CFG_L1_SWAP_SEL_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(0), info->maps[2],
> +					 STF_DPHY_CFG_L2_SWAP_SEL_SHIFT,
> +					 STF_DPHY_CFG_L2_SWAP_SEL_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(0), info->maps[3],
> +					 STF_DPHY_CFG_L3_SWAP_SEL_SHIFT,
> +					 STF_DPHY_CFG_L3_SWAP_SEL_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(0), info->maps[4],
> +					 STF_DPHY_CFG_L4_SWAP_SEL_SHIFT,
> +					 STF_DPHY_CFG_L4_SWAP_SEL_MASK);
> +			/*PLL setting*/
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(28), 0x0,
> +					 STF_DPHY_RG_CDTX_PLL_SSC_EN_SHIFT,
> +					 STF_DPHY_RG_CDTX_PLL_SSC_EN_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(24), 0x1,
> +					 STF_DPHY_RG_CDTX_PLL_LDO_STB_X2_EN_SHIFT,
> +					 STF_DPHY_RG_CDTX_PLL_LDO_STB_X2_EN_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(24), 0x1,
> +					 STF_DPHY_RG_CDTX_PLL_FM_EN_SHIFT,
> +					 STF_DPHY_RG_CDTX_PLL_FM_EN_MASK);
> +
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(24),
> +					 p->pll_prev_div, STF_DPHY_RG_CDTX_PLL_PRE_DIV_SHIFT,
> +					 STF_DPHY_RG_CDTX_PLL_PRE_DIV_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(24),
> +					 p->pll_fbk_int, STF_DPHY_RG_CDTX_PLL_FBK_INT_SHIFT,
> +					 STF_DPHY_RG_CDTX_PLL_FBK_INT_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(20),
> +					 p->pll_fbk_fra, STF_DPHY_RG_CDTX_PLL_FBK_FRA_SHIFT,
> +					 STF_DPHY_RG_CDTX_PLL_FBK_FRA_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(40),
> +					 p->extd_cycle_sel, STF_DPHY_RG_EXTD_CYCLE_SEL_SHIFT,
> +					 STF_DPHY_RG_EXTD_CYCLE_SEL_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(36),
> +					 p->dlane_hs_pre_time,
> +					 STF_DPHY_RG_DLANE_HS_PRE_TIME_SHIFT,
> +					 STF_DPHY_RG_DLANE_HS_PRE_TIME_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(36),
> +					 p->dlane_hs_pre_time,
> +					 STF_DPHY_RG_DLANE_HS_PRE_TIME_SHIFT,
> +					 STF_DPHY_RG_DLANE_HS_PRE_TIME_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(36),
> +					 p->dlane_hs_zero_time,
> +					 STF_DPHY_RG_DLANE_HS_ZERO_TIME_SHIFT,
> +					 STF_DPHY_RG_DLANE_HS_ZERO_TIME_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(36),
> +					 p->dlane_hs_trail_time,
> +					 STF_DPHY_RG_DLANE_HS_TRAIL_TIME_SHIFT,
> +					 STF_DPHY_RG_DLANE_HS_TRAIL_TIME_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(32),
> +					 p->clane_hs_pre_time,
> +					 STF_DPHY_RG_CLANE_HS_PRE_TIME_SHIFT,
> +					 STF_DPHY_RG_CLANE_HS_PRE_TIME_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(36),
> +					 p->clane_hs_zero_time,
> +					 STF_DPHY_RG_CLANE_HS_ZERO_TIME_SHIFT,
> +					 STF_DPHY_RG_CLANE_HS_ZERO_TIME_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(32),
> +					 p->clane_hs_trail_time,
> +					 STF_DPHY_RG_CLANE_HS_TRAIL_TIME_SHIFT,
> +					 STF_DPHY_RG_CLANE_HS_TRAIL_TIME_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(32),
> +					 p->clane_hs_clk_pre_time,
> +					 STF_DPHY_RG_CLANE_HS_CLK_PRE_TIME_SHIFT,
> +					 STF_DPHY_RG_CLANE_HS_CLK_PRE_TIME_MASK);
> +			stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(32),
> +					 p->clane_hs_clk_post_time,
> +					 STF_DPHY_RG_CLANE_HS_CLK_POST_TIME_SHIFT,
> +					 STF_DPHY_RG_CLANE_HS_CLK_POST_TIME_MASK);
> +
> +			break;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int stf_dphy_init(struct phy *phy)
> +{
> +	struct stf_dphy *dphy = phy_get_drvdata(phy);
> +	int ret;
> +
> +	stf_dphy_hw_reset(dphy, 0);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(48), 0,
> +			 STF_DPHY_SCFG_PPI_C_READY_SEL_SHIFT, STF_DPHY_SCFG_PPI_C_READY_SEL_MASK);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(48), 0,
> +			 STF_DPHY_SCFG_DSI_TXREADY_ESC_SEL_SHIFT,
> +			 STF_DPHY_SCFG_DSI_TXREADY_ESC_SEL_MASK);
> +	stf_dphy_set_reg(dphy->topsys, STF_DPHY_APBIFSAIF_SYSCFG(44), 0x30,
> +			 STF_DPHY_SCFG_C_HS_PRE_ZERO_TIME_SHIFT,
> +			 STF_DPHY_SCFG_C_HS_PRE_ZERO_TIME_MASK);
> +
> +	ret = clk_prepare_enable(dphy->txesc_clk);
> +	if (ret) {
> +		dev_err(dphy->dev, "Failed to prepare/enable txesc_clk\n");
> +		return ret;
> +	}
> +
> +	ret = reset_control_deassert(dphy->sys_rst);
> +	if (ret) {
> +		dev_err(dphy->dev, "Failed to deassert sys_rst\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int stf_dphy_exit(struct phy *phy)
> +{
> +	struct stf_dphy *dphy = phy_get_drvdata(phy);
> +	int ret;
> +
> +	ret = reset_control_assert(dphy->sys_rst);
> +	if (ret) {
> +		dev_err(dphy->dev, "Failed to assert sys_rst\n");
> +		return ret;
> +	}
> +
> +	clk_disable_unprepare(dphy->txesc_clk);
> +
> +	stf_dphy_hw_reset(dphy, 1);
> +
> +	return 0;
> +}
> +
> +static int stf_dphy_power_on(struct phy *phy)
> +{
> +	struct stf_dphy *dphy = phy_get_drvdata(phy);
> +	int ret;
> +
> +	ret = pm_runtime_resume_and_get(dphy->dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int stf_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
> +			     union phy_configure_opts *opts)
> +{
> +	if (mode != PHY_MODE_MIPI_DPHY)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static int stf_dphy_power_off(struct phy *phy)
> +{
> +	struct stf_dphy *dphy = phy_get_drvdata(phy);
> +
> +	pm_runtime_put_sync(dphy->dev);
> +
> +	return 0;
> +}
> +
> +static const struct phy_ops stf_dphy_ops = {
> +	.power_on	= stf_dphy_power_on,
> +	.power_off	= stf_dphy_power_off,
> +	.init		= stf_dphy_init,
> +	.exit		= stf_dphy_exit,
> +	.configure	= stf_dphy_configure,
> +	.validate	= stf_dphy_validate,
> +	.owner		= THIS_MODULE,
> +};
> +
> +static int stf_dphy_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	struct stf_dphy *dphy;
> +
> +	dphy = devm_kzalloc(&pdev->dev, sizeof(*dphy), GFP_KERNEL);
> +	if (!dphy)
> +		return -ENOMEM;
> +
> +	dphy->info = of_device_get_match_data(&pdev->dev);
> +
> +	dphy->dev = &pdev->dev;
> +	dev_set_drvdata(&pdev->dev, dphy);
> +
> +	dphy->topsys = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(dphy->topsys))
> +		return PTR_ERR(dphy->topsys);
> +
> +	pm_runtime_enable(&pdev->dev);
> +
> +	dphy->txesc_clk = devm_clk_get(&pdev->dev, "txesc");
> +	if (IS_ERR(dphy->txesc_clk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(dphy->txesc_clk),
> +				     "Failed to get txesc clock\n");
> +
> +	dphy->sys_rst = devm_reset_control_get_exclusive(&pdev->dev, "sys");
> +	if (IS_ERR(dphy->sys_rst))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(dphy->sys_rst),
> +				     "Failed to get sys reset\n");
> +
> +	dphy->phy = devm_phy_create(&pdev->dev, NULL, &stf_dphy_ops);
> +	if (IS_ERR(dphy->phy))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(dphy->phy),
> +				     "Failed to create phy\n");
> +
> +	phy_set_drvdata(dphy->phy, dphy);
> +
> +	phy_provider = devm_of_phy_provider_register(&pdev->dev, of_phy_simple_xlate);
> +	if (IS_ERR(phy_provider))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(phy_provider),
> +				     "Failed to register phy\n");
> +
> +	return 0;
> +}
> +
> +static const struct stf_dphy_info starfive_dphy_info = {
> +	.maps = {0, 1, 2, 3, 4},
> +};
> +
> +static const struct of_device_id stf_dphy_dt_ids[] = {
> +	{
> +		.compatible = "starfive,jh7110-dphy-tx",
> +		.data = &starfive_dphy_info,
> +	},
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, stf_dphy_dt_ids);
> +
> +static struct platform_driver stf_dphy_driver = {
> +	.driver = {
> +		.name	= "starfive-dphy-tx",
> +		.of_match_table = stf_dphy_dt_ids,
> +	},
> +	.probe = stf_dphy_probe,
> +};
> +module_platform_driver(stf_dphy_driver);
> +
> +MODULE_AUTHOR("Keith Zhao <keith.zhao@starfivetech.com>");
> +MODULE_AUTHOR("Shengyang Chen <shengyang.chen@starfivetech.com>");
> +MODULE_DESCRIPTION("StarFive JH7110 DPHY TX driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.17.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

