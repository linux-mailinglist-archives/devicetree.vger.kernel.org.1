Return-Path: <devicetree+bounces-76775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 201E690C004
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 02:03:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6129F1F229E0
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 00:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10EAA28FD;
	Tue, 18 Jun 2024 00:03:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D72F6629;
	Tue, 18 Jun 2024 00:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718669014; cv=none; b=r0axlVxNFqBXcM29k2/8Cok9LZ7xGU21qFzpVInTaINn60VJD51/GIFftsXRx3vSKW/hmraxVRjK0A4hCMp5g81iz9sTHeSJHmSch9tns1Xfu9ESYOJWH8aiFXLkB/oNHyQ5IrTRluJb2inRdkYqqrpEPJBzf7zy73fsqJXYpEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718669014; c=relaxed/simple;
	bh=MgiMgWssKDMxYMWw0xLn0lYUrG+N9PMFKAImWt8YdiQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SqPMOWizrFe7ODNeCYYPv2R5+MpSvHIlpoo27T0l/yv+gS/s76bbT1XP49RDiZ1zCb5590e+8kMZxvsm5Pr8Y/+CNMl0iXDFetBbh2RFEqxlXD3u3xWbzqN19kXQz/rZ9xJ+OZ6nOzqdyvM4WLzHDYnZgCZK4R7oBz+FV6lnVrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30428DA7;
	Mon, 17 Jun 2024 17:03:48 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C1CCE3F64C;
	Mon, 17 Jun 2024 17:03:20 -0700 (PDT)
Date: Tue, 18 Jun 2024 01:01:48 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Ryan Walklin <ryan@testtoast.com>
Cc: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Michael
 Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Chris
 Morgan <macroalpha82@gmail.com>, John Watts <contact@jookia.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH RFC 8/8] drm: sun4i: add Display Engine 3.3 (DE33)
 support
Message-ID: <20240618010148.2c0ed83a@minigeek.lan>
In-Reply-To: <20240607110227.49848-9-ryan@testtoast.com>
References: <20240607110227.49848-1-ryan@testtoast.com>
	<20240607110227.49848-9-ryan@testtoast.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri,  7 Jun 2024 23:00:04 +1200
Ryan Walklin <ryan@testtoast.com> wrote:

Hi Ryan,

> The DE33 is a newer version of the Allwinner Display Engine IP block,
> found in the H616, H618, H700 and T507 SoCs. DE2 and DE3 are already
> supported by the mainline driver.
>=20
> Notable features (from the H616 datasheet and implemented):
> - 4096 x 2048 (4K) output support
> - AFBC ARM Frame Buffer Compression support
> - YUV420 input support
>=20
> Extend the driver to support the DE33.

many thanks again for taking up the task and sending this!
=46rom a purely generic look at this patch, it seems to be quite large and
hard to review.

As Conor already mentioned, the clock driver in here should
definitely be a separate patch, this might go through a separate tree,
even.
=46rom the looks of it, this patch also mixes refactoring with new
features, which is often not a good idea.
So I suggest you try to split up the changes, to *prepare* for the new
SoC first, and then add the H616 bits in a separate step.
One way would be for instance to change is_de3 to de_type first, but
just for the existing DE2 and DE3 cases. This should be easy to review,
since it's more a mechanical refactoring, with identical functionality.
Then plugging in the DE33 support separately makes it much clearer
what's going on, and helps understanding and bisecting.
I have only glanced over it, but it looks like there might be more
refactoring opportunities. Multiple smaller patches would really be
better here, from a review and from a bisecting perspective.
I would expect the final H616 patch to just contain patterns like:

-	}
+	} else if (de_type =3D=3D sun8i_mixer_de33) {
+		... new code ...
+	}

Everything should have been done in patches before.

I hope this makes sense, let me know if you need any help with that, I
just really glanced over the patch quickly.

Cheers,
Andre
=20
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> Co-developed-by: Ryan Walklin <ryan@testtoast.com>
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  drivers/clk/sunxi-ng/Makefile           |   2 +-
>  drivers/clk/sunxi-ng/sun8i-de33.c       | 185 +++++++++++++++++++++
>  drivers/clk/sunxi-ng/sun8i-de33.h       |  19 +++
>  drivers/gpu/drm/sun4i/sun4i_tcon.c      |   4 +
>  drivers/gpu/drm/sun4i/sun4i_tcon.h      |   1 +
>  drivers/gpu/drm/sun4i/sun50i_afbc.c     |  16 +-
>  drivers/gpu/drm/sun4i/sun50i_fmt.c      |  75 ++++++---
>  drivers/gpu/drm/sun4i/sun50i_fmt.h      |  21 ++-
>  drivers/gpu/drm/sun4i/sun8i_csc.c       |  98 ++++++++++-
>  drivers/gpu/drm/sun4i/sun8i_csc.h       |   3 +
>  drivers/gpu/drm/sun4i/sun8i_mixer.c     | 209 +++++++++++++++++++-----
>  drivers/gpu/drm/sun4i/sun8i_mixer.h     |  31 +++-
>  drivers/gpu/drm/sun4i/sun8i_ui_layer.c  |  36 ++--
>  drivers/gpu/drm/sun4i/sun8i_ui_scaler.c |   2 +-
>  drivers/gpu/drm/sun4i/sun8i_vi_layer.c  |  33 ++--
>  drivers/gpu/drm/sun4i/sun8i_vi_scaler.c | 115 ++++++++-----
>  drivers/gpu/drm/sun4i/sun8i_vi_scaler.h |   3 +-
>  17 files changed, 703 insertions(+), 150 deletions(-)
>  create mode 100644 drivers/clk/sunxi-ng/sun8i-de33.c
>  create mode 100644 drivers/clk/sunxi-ng/sun8i-de33.h
>=20
> diff --git a/drivers/clk/sunxi-ng/Makefile b/drivers/clk/sunxi-ng/Makefile
> index 6b3ae2b620db6..fce8a1ce61137 100644
> --- a/drivers/clk/sunxi-ng/Makefile
> +++ b/drivers/clk/sunxi-ng/Makefile
> @@ -68,7 +68,7 @@ sun8i-a83t-ccu-y		+=3D ccu-sun8i-a83t.o
>  sun8i-h3-ccu-y			+=3D ccu-sun8i-h3.o
>  sun8i-r40-ccu-y			+=3D ccu-sun8i-r40.o
>  sun8i-v3s-ccu-y			+=3D ccu-sun8i-v3s.o
> -sun8i-de2-ccu-y			+=3D ccu-sun8i-de2.o
> +sun8i-de2-ccu-y			+=3D ccu-sun8i-de2.o sun8i-de33.o
>  sun8i-r-ccu-y			+=3D ccu-sun8i-r.o
>  sun9i-a80-ccu-y			+=3D ccu-sun9i-a80.o
>  sun9i-a80-de-ccu-y		+=3D ccu-sun9i-a80-de.o
> diff --git a/drivers/clk/sunxi-ng/sun8i-de33.c b/drivers/clk/sunxi-ng/sun=
8i-de33.c
> new file mode 100644
> index 0000000000000..4287dafbc26e4
> --- /dev/null
> +++ b/drivers/clk/sunxi-ng/sun8i-de33.c
> @@ -0,0 +1,185 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2017 Icenowy Zheng <icenowy@aosc.io>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/of_address.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +
> +#include "ccu_common.h"
> +#include "ccu_div.h"
> +#include "ccu_gate.h"
> +#include "ccu_reset.h"
> +
> +#include "sun8i-de33.h"
> +
> +static SUNXI_CCU_GATE(bus_mixer0_clk,	"bus-mixer0",	"bus-de",
> +		      0x04, BIT(0), 0);
> +static SUNXI_CCU_GATE(bus_mixer1_clk,	"bus-mixer1",	"bus-de",
> +		      0x04, BIT(1), 0);
> +static SUNXI_CCU_GATE(bus_wb_clk,	"bus-wb",	"bus-de",
> +		      0x04, BIT(2), 0);
> +
> +static SUNXI_CCU_GATE(mixer0_clk,	"mixer0",	"mixer0-div",
> +		      0x00, BIT(0), CLK_SET_RATE_PARENT);
> +static SUNXI_CCU_GATE(mixer1_clk,	"mixer1",	"mixer1-div",
> +		      0x00, BIT(1), CLK_SET_RATE_PARENT);
> +static SUNXI_CCU_GATE(wb_clk,		"wb",		"wb-div",
> +		      0x00, BIT(2), CLK_SET_RATE_PARENT);
> +
> +static SUNXI_CCU_M(mixer0_div_clk, "mixer0-div", "de", 0x0c, 0, 4,
> +		   CLK_SET_RATE_PARENT);
> +static SUNXI_CCU_M(mixer1_div_clk, "mixer1-div", "de", 0x0c, 4, 4,
> +		   CLK_SET_RATE_PARENT);
> +static SUNXI_CCU_M(wb_div_clk, "wb-div", "de", 0x0c, 8, 4,
> +		   CLK_SET_RATE_PARENT);
> +
> +static struct ccu_common *sun50i_h616_de33_clks[] =3D {
> +	&mixer0_clk.common,
> +	&mixer1_clk.common,
> +	&wb_clk.common,
> +
> +	&bus_mixer0_clk.common,
> +	&bus_mixer1_clk.common,
> +	&bus_wb_clk.common,
> +
> +	&mixer0_div_clk.common,
> +	&mixer1_div_clk.common,
> +	&wb_div_clk.common,
> +};
> +
> +static struct clk_hw_onecell_data sun50i_h616_de33_hw_clks =3D {
> +	.hws	=3D {
> +		[CLK_MIXER0]		=3D &mixer0_clk.common.hw,
> +		[CLK_MIXER1]		=3D &mixer1_clk.common.hw,
> +		[CLK_WB]		=3D &wb_clk.common.hw,
> +
> +		[CLK_BUS_MIXER0]	=3D &bus_mixer0_clk.common.hw,
> +		[CLK_BUS_MIXER1]	=3D &bus_mixer1_clk.common.hw,
> +		[CLK_BUS_WB]		=3D &bus_wb_clk.common.hw,
> +
> +		[CLK_MIXER0_DIV]	=3D &mixer0_div_clk.common.hw,
> +		[CLK_MIXER1_DIV]	=3D &mixer1_div_clk.common.hw,
> +		[CLK_WB_DIV]		=3D &wb_div_clk.common.hw,
> +	},
> +	.num	=3D CLK_NUMBER,
> +};
> +
> +static struct ccu_reset_map sun50i_h616_de33_resets[] =3D {
> +	[RST_MIXER0]	=3D { 0x08, BIT(0) },
> +	[RST_MIXER1]	=3D { 0x08, BIT(1) },
> +	[RST_WB]	=3D { 0x08, BIT(2) },
> +};
> +
> +static const struct sunxi_ccu_desc sun50i_h616_de33_clk_desc =3D {
> +	.ccu_clks	=3D sun50i_h616_de33_clks,
> +	.num_ccu_clks	=3D ARRAY_SIZE(sun50i_h616_de33_clks),
> +
> +	.hw_clks	=3D &sun50i_h616_de33_hw_clks,
> +
> +	.resets		=3D sun50i_h616_de33_resets,
> +	.num_resets	=3D ARRAY_SIZE(sun50i_h616_de33_resets),
> +};
> +
> +static int sunxi_de33_clk_probe(struct platform_device *pdev)
> +{
> +	struct resource *res;
> +	struct clk *bus_clk, *mod_clk;
> +	struct reset_control *rstc;
> +	void __iomem *reg;
> +	const struct sunxi_ccu_desc *ccu_desc;
> +	int ret;
> +
> +	ccu_desc =3D of_device_get_match_data(&pdev->dev);
> +	if (!ccu_desc)
> +		return -EINVAL;
> +
> +	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	reg =3D devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(reg))
> +		return PTR_ERR(reg);
> +
> +	bus_clk =3D devm_clk_get(&pdev->dev, "bus");
> +	if (IS_ERR(bus_clk)) {
> +		ret =3D PTR_ERR(bus_clk);
> +		if (ret !=3D -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "Couldn't get bus clk: %d\n", ret);
> +		return ret;
> +	}
> +
> +	mod_clk =3D devm_clk_get(&pdev->dev, "mod");
> +	if (IS_ERR(mod_clk)) {
> +		ret =3D PTR_ERR(mod_clk);
> +		if (ret !=3D -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "Couldn't get mod clk: %d\n", ret);
> +		return ret;
> +	}
> +
> +	rstc =3D devm_reset_control_get_exclusive(&pdev->dev, NULL);
> +	if (IS_ERR(rstc)) {
> +		ret =3D PTR_ERR(rstc);
> +		if (ret !=3D -EPROBE_DEFER)
> +			dev_err(&pdev->dev,
> +				"Couldn't get reset control: %d\n", ret);
> +		return ret;
> +	}
> +
> +	/* The clocks need to be enabled for us to access the registers */
> +	ret =3D clk_prepare_enable(bus_clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Couldn't enable bus clk: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D clk_prepare_enable(mod_clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Couldn't enable mod clk: %d\n", ret);
> +		goto err_disable_bus_clk;
> +	}
> +
> +	/* The reset control needs to be asserted for the controls to work */
> +	ret =3D reset_control_deassert(rstc);
> +	if (ret) {
> +		dev_err(&pdev->dev,
> +			"Couldn't deassert reset control: %d\n", ret);
> +		goto err_disable_mod_clk;
> +	}
> +
> +	writel(0, reg + 0x24);
> +	writel(0x0000A980, reg + 0x28);
> +
> +	ret =3D devm_sunxi_ccu_probe(&pdev->dev, reg, ccu_desc);
> +	if (ret)
> +		goto err_assert_reset;
> +
> +	return 0;
> +
> +err_assert_reset:
> +	reset_control_assert(rstc);
> +err_disable_mod_clk:
> +	clk_disable_unprepare(mod_clk);
> +err_disable_bus_clk:
> +	clk_disable_unprepare(bus_clk);
> +	return ret;
> +}
> +
> +static const struct of_device_id sunxi_de33_clk_ids[] =3D {
> +	{
> +		.compatible =3D "allwinner,sun50i-h616-de33-clk",
> +		.data =3D &sun50i_h616_de33_clk_desc,
> +	},
> +	{ }
> +};
> +
> +static struct platform_driver sunxi_de33_clk_driver =3D {
> +	.probe	=3D sunxi_de33_clk_probe,
> +	.driver	=3D {
> +		.name	=3D "sunxi-de33-clks",
> +		.of_match_table	=3D sunxi_de33_clk_ids,
> +	},
> +};
> +builtin_platform_driver(sunxi_de33_clk_driver);
> diff --git a/drivers/clk/sunxi-ng/sun8i-de33.h b/drivers/clk/sunxi-ng/sun=
8i-de33.h
> new file mode 100644
> index 0000000000000..83cbef5a3f76f
> --- /dev/null
> +++ b/drivers/clk/sunxi-ng/sun8i-de33.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Copyright 2016 Icenowy Zheng <icenowy@aosc.io>
> + */
> +
> +#ifndef _CCU_SUN8I_DE2_H_
> +#define _CCU_SUN8I_DE2_H_
> +
> +#include <dt-bindings/clock/sun8i-de2.h>
> +#include <dt-bindings/reset/sun8i-de2.h>
> +
> +/* Intermediary clock dividers are not exported */
> +#define CLK_MIXER0_DIV	3
> +#define CLK_MIXER1_DIV	4
> +#define CLK_WB_DIV	5
> +
> +#define CLK_NUMBER	(CLK_WB + 1)
> +
> +#endif /* _CCU_SUN8I_DE2_H_ */
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/s=
un4i_tcon.c
> index e39926e9f0b5d..12b73907788fa 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> @@ -1277,6 +1277,10 @@ static int sun4i_tcon_bind(struct device *dev, str=
uct device *master,
>  			goto err_free_dclk;
>  	}
> =20
> +	regmap_update_bits(tcon->regs, SUN4I_TCON_GCTL_REG,
> +			   SUN4I_TCON_GCTL_PAD_SEL,
> +			   SUN4I_TCON_GCTL_PAD_SEL);
> +
>  	if (tcon->quirks->needs_de_be_mux) {
>  		/*
>  		 * We assume there is no dynamic muxing of backends
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/s=
un4i_tcon.h
> index fa23aa23fe4a4..d56c9764ff4c6 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
> @@ -19,6 +19,7 @@
> =20
>  #define SUN4I_TCON_GCTL_REG			0x0
>  #define SUN4I_TCON_GCTL_TCON_ENABLE			BIT(31)
> +#define SUN4I_TCON_GCTL_PAD_SEL				BIT(1)
>  #define SUN4I_TCON_GCTL_IOMAP_MASK			BIT(0)
>  #define SUN4I_TCON_GCTL_IOMAP_TCON1			(1 << 0)
>  #define SUN4I_TCON_GCTL_IOMAP_TCON0			(0 << 0)
> diff --git a/drivers/gpu/drm/sun4i/sun50i_afbc.c b/drivers/gpu/drm/sun4i/=
sun50i_afbc.c
> index 27a771608eef8..b55e1c5533714 100644
> --- a/drivers/gpu/drm/sun4i/sun50i_afbc.c
> +++ b/drivers/gpu/drm/sun4i/sun50i_afbc.c
> @@ -13,6 +13,16 @@
>  #include "sun50i_afbc.h"
>  #include "sun8i_mixer.h"
> =20
> +static u32 sun50i_afbc_get_base(struct sun8i_mixer *mixer, unsigned int =
channel)
> +{
> +	u32 base =3D sun8i_channel_base(mixer, channel);
> +
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de3)
> +		return base + SUN50I_AFBC_CH_OFFSET;
> +
> +	return base + 0x4000;
> +}
> +
>  bool sun50i_afbc_format_mod_supported(struct sun8i_mixer *mixer,
>  				      u32 format, u64 modifier)
>  {
> @@ -29,7 +39,7 @@ bool sun50i_afbc_format_mod_supported(struct sun8i_mixe=
r *mixer,
>  		return true;
>  	}
> =20
> -	if (!mixer->cfg->is_de3)
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de2)
>  		return false;
> =20
>  	mode =3D AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> @@ -69,7 +79,7 @@ void sun50i_afbc_atomic_update(struct sun8i_mixer *mixe=
r, unsigned int channel,
>  	struct regmap *regs;
>  	dma_addr_t dma_addr;
> =20
> -	base =3D sun8i_channel_base(mixer, channel) + SUN50I_AFBC_CH_OFFSET;
> +	base =3D sun50i_afbc_get_base(mixer, channel);
>  	regs =3D mixer->engine.regs;
> =20
>  	src_w =3D drm_rect_width(&state->src) >> 16;
> @@ -234,7 +244,7 @@ void sun50i_afbc_atomic_update(struct sun8i_mixer *mi=
xer, unsigned int channel,
> =20
>  void sun50i_afbc_disable(struct sun8i_mixer *mixer, unsigned int channel)
>  {
> -	u32 base =3D sun8i_channel_base(mixer, channel) + SUN50I_AFBC_CH_OFFSET;
> +	u32 base =3D sun50i_afbc_get_base(mixer, channel);
> =20
>  	regmap_write(mixer->engine.regs, SUN50I_FBD_CTL(base), 0);
>  }
> diff --git a/drivers/gpu/drm/sun4i/sun50i_fmt.c b/drivers/gpu/drm/sun4i/s=
un50i_fmt.c
> index 18a8d5032ddce..39682d4e6d208 100644
> --- a/drivers/gpu/drm/sun4i/sun50i_fmt.c
> +++ b/drivers/gpu/drm/sun4i/sun50i_fmt.c
> @@ -34,41 +34,66 @@ static u32 sun50i_fmt_get_colorspace(u32 format)
>  	}
>  }
> =20
> +static void sun50i_fmt_de3_limits(u32 *limits, u32 colorspace, bool bit1=
0)
> +{
> +	if (colorspace !=3D SUN50I_FMT_CS_YUV444RGB) {
> +		limits[0] =3D SUN50I_FMT_LIMIT(64, 940);
> +		limits[1] =3D SUN50I_FMT_LIMIT(64, 960);
> +		limits[2] =3D SUN50I_FMT_LIMIT(64, 960);
> +	} else if (bit10) {
> +		limits[0] =3D SUN50I_FMT_LIMIT(0, 1023);
> +		limits[1] =3D SUN50I_FMT_LIMIT(0, 1023);
> +		limits[2] =3D SUN50I_FMT_LIMIT(0, 1023);
> +	} else {
> +		limits[0] =3D SUN50I_FMT_LIMIT(0, 1021);
> +		limits[1] =3D SUN50I_FMT_LIMIT(0, 1021);
> +		limits[2] =3D SUN50I_FMT_LIMIT(0, 1021);
> +	}
> +}
> +
> +static void sun50i_fmt_de33_limits(u32 *limits, u32 colorspace)
> +{
> +	if (colorspace =3D=3D SUN50I_FMT_CS_YUV444RGB) {
> +		limits[0] =3D SUN50I_FMT_LIMIT(0, 4095);
> +		limits[1] =3D SUN50I_FMT_LIMIT(0, 4095);
> +		limits[2] =3D SUN50I_FMT_LIMIT(0, 4095);
> +	} else {
> +		limits[0] =3D SUN50I_FMT_LIMIT(256, 3840);
> +		limits[1] =3D SUN50I_FMT_LIMIT(256, 3840);
> +		limits[2] =3D SUN50I_FMT_LIMIT(256, 3840);
> +	}
> +}
> +
>  void sun50i_fmt_setup(struct sun8i_mixer *mixer, u16 width,
>  		      u16 height, u32 format)
>  {
> -	u32 colorspace, limit[3];
> +	u32 colorspace, limit[3], base;
> +	struct regmap *regs;
>  	bool bit10;
> =20
>  	colorspace =3D sun50i_fmt_get_colorspace(format);
>  	bit10 =3D sun50i_fmt_is_10bit(format);
> +	base =3D mixer->cfg->de_type =3D=3D sun8i_mixer_de3 ?
> +		SUN50I_FMT_DE3 : SUN50I_FMT_DE33;
> +	regs =3D sun8i_blender_regmap(mixer);
> =20
> -	regmap_write(mixer->engine.regs, SUN50I_FMT_CTRL, 0);
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de3)
> +		sun50i_fmt_de3_limits(limit, colorspace, bit10);
> +	else
> +		sun50i_fmt_de33_limits(limit, colorspace);
> =20
> -	regmap_write(mixer->engine.regs, SUN50I_FMT_SIZE,
> -		     SUN8I_MIXER_SIZE(width, height));
> -	regmap_write(mixer->engine.regs, SUN50I_FMT_SWAP, 0);
> -	regmap_write(mixer->engine.regs, SUN50I_FMT_DEPTH, bit10);
> -	regmap_write(mixer->engine.regs, SUN50I_FMT_FORMAT, colorspace);
> -	regmap_write(mixer->engine.regs, SUN50I_FMT_COEF, 0);
> +	regmap_write(regs, SUN50I_FMT_CTRL(base), 0);
> =20
> -	if (colorspace !=3D SUN50I_FMT_CS_YUV444RGB) {
> -		limit[0] =3D SUN50I_FMT_LIMIT(64, 940);
> -		limit[1] =3D SUN50I_FMT_LIMIT(64, 960);
> -		limit[2] =3D SUN50I_FMT_LIMIT(64, 960);
> -	} else if (bit10) {
> -		limit[0] =3D SUN50I_FMT_LIMIT(0, 1023);
> -		limit[1] =3D SUN50I_FMT_LIMIT(0, 1023);
> -		limit[2] =3D SUN50I_FMT_LIMIT(0, 1023);
> -	} else {
> -		limit[0] =3D SUN50I_FMT_LIMIT(0, 1021);
> -		limit[1] =3D SUN50I_FMT_LIMIT(0, 1021);
> -		limit[2] =3D SUN50I_FMT_LIMIT(0, 1021);
> -	}
> +	regmap_write(regs, SUN50I_FMT_SIZE(base),
> +		     SUN8I_MIXER_SIZE(width, height));
> +	regmap_write(regs, SUN50I_FMT_SWAP(base), 0);
> +	regmap_write(regs, SUN50I_FMT_DEPTH(base), bit10);
> +	regmap_write(regs, SUN50I_FMT_FORMAT(base), colorspace);
> +	regmap_write(regs, SUN50I_FMT_COEF(base), 0);
> =20
> -	regmap_write(mixer->engine.regs, SUN50I_FMT_LMT_Y, limit[0]);
> -	regmap_write(mixer->engine.regs, SUN50I_FMT_LMT_C0, limit[1]);
> -	regmap_write(mixer->engine.regs, SUN50I_FMT_LMT_C1, limit[2]);
> +	regmap_write(regs, SUN50I_FMT_LMT_Y(base), limit[0]);
> +	regmap_write(regs, SUN50I_FMT_LMT_C0(base), limit[1]);
> +	regmap_write(regs, SUN50I_FMT_LMT_C1(base), limit[2]);
> =20
> -	regmap_write(mixer->engine.regs, SUN50I_FMT_CTRL, 1);
> +	regmap_write(regs, SUN50I_FMT_CTRL(base), 1);
>  }
> diff --git a/drivers/gpu/drm/sun4i/sun50i_fmt.h b/drivers/gpu/drm/sun4i/s=
un50i_fmt.h
> index 0fa1d2d22e592..3e60d5c788b39 100644
> --- a/drivers/gpu/drm/sun4i/sun50i_fmt.h
> +++ b/drivers/gpu/drm/sun4i/sun50i_fmt.h
> @@ -8,15 +8,18 @@
> =20
>  #include "sun8i_mixer.h"
> =20
> -#define SUN50I_FMT_CTRL   0xa8000
> -#define SUN50I_FMT_SIZE   0xa8004
> -#define SUN50I_FMT_SWAP   0xa8008
> -#define SUN50I_FMT_DEPTH  0xa800c
> -#define SUN50I_FMT_FORMAT 0xa8010
> -#define SUN50I_FMT_COEF   0xa8014
> -#define SUN50I_FMT_LMT_Y  0xa8020
> -#define SUN50I_FMT_LMT_C0 0xa8024
> -#define SUN50I_FMT_LMT_C1 0xa8028
> +#define SUN50I_FMT_DE3 0xa8000
> +#define SUN50I_FMT_DE33 0x5000
> +
> +#define SUN50I_FMT_CTRL(base)   ((base) + 0x00)
> +#define SUN50I_FMT_SIZE(base)   ((base) + 0x04)
> +#define SUN50I_FMT_SWAP(base)   ((base) + 0x08)
> +#define SUN50I_FMT_DEPTH(base)  ((base) + 0x0c)
> +#define SUN50I_FMT_FORMAT(base) ((base) + 0x10)
> +#define SUN50I_FMT_COEF(base)   ((base) + 0x14)
> +#define SUN50I_FMT_LMT_Y(base)  ((base) + 0x20)
> +#define SUN50I_FMT_LMT_C0(base) ((base) + 0x24)
> +#define SUN50I_FMT_LMT_C1(base) ((base) + 0x28)
> =20
>  #define SUN50I_FMT_LIMIT(low, high) (((high) << 16) | (low))
> =20
> diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.c b/drivers/gpu/drm/sun4i/su=
n8i_csc.c
> index 3b022bfb85adc..5f32c57fe7769 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_csc.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_csc.c
> @@ -238,6 +238,14 @@ static const u32 yuv2yuv_de3[2][3][3][12] =3D {
>  	},
>  };
> =20
> +static u32 sun8i_csc_base(struct sun8i_mixer *mixer, int layer)
> +{
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de33)
> +		return sun8i_channel_base(mixer, layer) - 0x800;
> +	else
> +		return ccsc_base[mixer->cfg->ccsc][layer];
> +}
> +
>  static void sun8i_csc_setup(struct regmap *map, u32 base,
>  			    enum format_type fmt_type,
>  			    enum drm_color_encoding encoding,
> @@ -358,6 +366,90 @@ static void sun8i_de3_ccsc_setup(struct sunxi_engine=
 *engine, int layer,
>  			   mask, val);
>  }
> =20
> +/* extract constant from high word and invert sign if necessary */
> +static u32 sun8i_de33_ccsc_get_constant(u32 value)
> +{
> +	value >>=3D 16;
> +
> +	if (value & BIT(15))
> +		return 0x400 - (value & 0x3ff);
> +
> +	return value;
> +}
> +
> +static void sun8i_de33_convert_table(const u32 *src, u32 *dst)
> +{
> +	dst[0] =3D sun8i_de33_ccsc_get_constant(src[3]);
> +	dst[1] =3D sun8i_de33_ccsc_get_constant(src[7]);
> +	dst[2] =3D sun8i_de33_ccsc_get_constant(src[11]);
> +	memcpy(&dst[3], src, sizeof(u32) * 12);
> +	dst[6] &=3D 0xffff;
> +	dst[10] &=3D 0xffff;
> +	dst[14] &=3D 0xffff;
> +}
> +
> +static void sun8i_de33_ccsc_setup(struct sun8i_mixer *mixer, int layer,
> +				  enum format_type fmt_type,
> +				  enum drm_color_encoding encoding,
> +				  enum drm_color_range range)
> +{
> +	u32 addr, val =3D 0, base, csc[15];
> +	struct sunxi_engine *engine;
> +	struct regmap *map;
> +	const u32 *table;
> +	int i;
> +
> +	table =3D yuv2rgb_de3[range][encoding];
> +	base =3D sun8i_csc_base(mixer, layer);
> +	engine =3D &mixer->engine;
> +	map =3D engine->regs;
> +
> +	switch (fmt_type) {
> +	case FORMAT_TYPE_RGB:
> +		if (engine->format =3D=3D MEDIA_BUS_FMT_RGB888_1X24)
> +			break;
> +		val =3D SUN8I_CSC_CTRL_EN;
> +		sun8i_de33_convert_table(rgb2yuv_de3[engine->encoding], csc);
> +		regmap_bulk_write(map, SUN50I_CSC_COEFF(base, 0), csc, 15);
> +		break;
> +	case FORMAT_TYPE_YUV:
> +		table =3D sun8i_csc_get_de3_yuv_table(encoding, range,
> +						    engine->format,
> +						    engine->encoding);
> +		if (!table)
> +			break;
> +		val =3D SUN8I_CSC_CTRL_EN;
> +		sun8i_de33_convert_table(table, csc);
> +		regmap_bulk_write(map, SUN50I_CSC_COEFF(base, 0), csc, 15);
> +		break;
> +	case FORMAT_TYPE_YVU:
> +		table =3D sun8i_csc_get_de3_yuv_table(encoding, range,
> +						    engine->format,
> +						    engine->encoding);
> +		if (!table)
> +			table =3D yuv2yuv_de3[range][encoding][encoding];
> +		val =3D SUN8I_CSC_CTRL_EN;
> +		sun8i_de33_convert_table(table, csc);
> +		for (i =3D 0; i < 15; i++) {
> +			addr =3D SUN50I_CSC_COEFF(base, i);
> +			if (i > 3) {
> +				if (((i - 3) & 3) =3D=3D 1)
> +					addr =3D SUN50I_CSC_COEFF(base, i + 1);
> +				else if (((i - 3) & 3) =3D=3D 2)
> +					addr =3D SUN50I_CSC_COEFF(base, i - 1);
> +			}
> +			regmap_write(map, addr, csc[i]);
> +		}
> +		break;
> +	default:
> +		val =3D 0;
> +		DRM_WARN("Wrong CSC mode specified.\n");
> +		return;
> +	}
> +
> +	regmap_write(map, SUN8I_CSC_CTRL(base), val);
> +}
> +
>  void sun8i_csc_set_ccsc(struct sun8i_mixer *mixer, int layer,
>  			enum format_type fmt_type,
>  			enum drm_color_encoding encoding,
> @@ -365,10 +457,14 @@ void sun8i_csc_set_ccsc(struct sun8i_mixer *mixer, =
int layer,
>  {
>  	u32 base;
> =20
> -	if (mixer->cfg->is_de3) {
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de3) {
>  		sun8i_de3_ccsc_setup(&mixer->engine, layer,
>  				     fmt_type, encoding, range);
>  		return;
> +	} else if (mixer->cfg->de_type =3D=3D sun8i_mixer_de33) {
> +		sun8i_de33_ccsc_setup(mixer, layer, fmt_type,
> +				      encoding, range);
> +		return;
>  	}
> =20
>  	if (layer < mixer->cfg->vi_num) {
> diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.h b/drivers/gpu/drm/sun4i/su=
n8i_csc.h
> index b7546e06e315c..2b762cb79f02c 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_csc.h
> +++ b/drivers/gpu/drm/sun4i/sun8i_csc.h
> @@ -20,6 +20,9 @@ struct sun8i_mixer;
>  #define SUN8I_CSC_CTRL(base)		((base) + 0x0)
>  #define SUN8I_CSC_COEFF(base, i)	((base) + 0x10 + 4 * (i))
> =20
> +#define SUN50I_CSC_COEFF(base, i)	((base) + 0x04 + 4 * (i))
> +#define SUN50I_CSC_ALPHA(base)		((base) + 0x40)
> +
>  #define SUN8I_CSC_CTRL_EN		BIT(0)
> =20
>  enum format_type {
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/=
sun8i_mixer.c
> index b1525906a25d8..65615b5f9dbab 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> @@ -254,10 +254,16 @@ int sun8i_mixer_drm_format_to_hw(u32 format, u32 *h=
w_format)
> =20
>  static void sun8i_mixer_commit(struct sunxi_engine *engine)
>  {
> +	struct sun8i_mixer *mixer =3D engine_to_sun8i_mixer(engine);
> +
>  	DRM_DEBUG_DRIVER("Committing changes\n");
> =20
> -	regmap_write(engine->regs, SUN8I_MIXER_GLOBAL_DBUFF,
> -		     SUN8I_MIXER_GLOBAL_DBUFF_ENABLE);
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de33)
> +		regmap_write(mixer->top_regs, SUN50I_MIXER_GLOBAL_DBUFF,
> +			     SUN8I_MIXER_GLOBAL_DBUFF_ENABLE);
> +	else
> +		regmap_write(engine->regs, SUN8I_MIXER_GLOBAL_DBUFF,
> +			     SUN8I_MIXER_GLOBAL_DBUFF_ENABLE);
>  }
> =20
>  static struct drm_plane **sun8i_layers_init(struct drm_device *drm,
> @@ -306,25 +312,33 @@ static void sun8i_mixer_mode_set(struct sunxi_engin=
e *engine,
>  				 const struct drm_display_mode *mode)
>  {
>  	struct sun8i_mixer *mixer =3D engine_to_sun8i_mixer(engine);
> +	struct regmap *bld_regs, *disp_regs;
>  	u32 bld_base, size, val;
>  	bool interlaced;
> =20
>  	bld_base =3D sun8i_blender_base(mixer);
> +	bld_regs =3D sun8i_blender_regmap(mixer);
>  	interlaced =3D !!(mode->flags & DRM_MODE_FLAG_INTERLACE);
>  	size =3D SUN8I_MIXER_SIZE(mode->hdisplay, mode->vdisplay);
> =20
>  	DRM_DEBUG_DRIVER("Updating global size W: %u H: %u\n",
>  			 mode->hdisplay, mode->vdisplay);
> =20
> -	regmap_write(engine->regs, SUN8I_MIXER_GLOBAL_SIZE, size);
> -	regmap_write(engine->regs, SUN8I_MIXER_BLEND_OUTSIZE(bld_base), size);
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de33) {
> +		disp_regs =3D mixer->disp_regs;
> +		regmap_write(mixer->top_regs, SUN50I_MIXER_GLOBAL_SIZE, size);
> +	} else {
> +		disp_regs =3D mixer->engine.regs;
> +		regmap_write(mixer->engine.regs, SUN8I_MIXER_GLOBAL_SIZE, size);
> +	}
> +	regmap_write(bld_regs, SUN8I_MIXER_BLEND_OUTSIZE(bld_base), size);
> =20
>  	if (interlaced)
>  		val =3D SUN8I_MIXER_BLEND_OUTCTL_INTERLACED;
>  	else
>  		val =3D 0;
> =20
> -	regmap_update_bits(engine->regs, SUN8I_MIXER_BLEND_OUTCTL(bld_base),
> +	regmap_update_bits(bld_regs, SUN8I_MIXER_BLEND_OUTCTL(bld_base),
>  			   SUN8I_MIXER_BLEND_OUTCTL_INTERLACED, val);
> =20
>  	DRM_DEBUG_DRIVER("Switching display mixer interlaced mode %s\n",
> @@ -335,10 +349,8 @@ static void sun8i_mixer_mode_set(struct sunxi_engine=
 *engine,
>  	else
>  		val =3D 0xff108080;
> =20
> -	regmap_write(mixer->engine.regs,
> -		     SUN8I_MIXER_BLEND_BKCOLOR(bld_base), val);
> -	regmap_write(mixer->engine.regs,
> -		     SUN8I_MIXER_BLEND_ATTR_FCOLOR(bld_base, 0), val);
> +	regmap_write(disp_regs, SUN8I_MIXER_BLEND_BKCOLOR(bld_base), val);
> +	regmap_write(disp_regs, SUN8I_MIXER_BLEND_ATTR_FCOLOR(bld_base, 0), val=
);
> =20
>  	if (mixer->cfg->has_formatter)
>  		sun50i_fmt_setup(mixer, mode->hdisplay,
> @@ -378,12 +390,29 @@ static const struct sunxi_engine_ops sun8i_engine_o=
ps =3D {
>  };
> =20
>  static const struct regmap_config sun8i_mixer_regmap_config =3D {
> +	.name		=3D "layers",
>  	.reg_bits	=3D 32,
>  	.val_bits	=3D 32,
>  	.reg_stride	=3D 4,
>  	.max_register	=3D 0xffffc, /* guessed */
>  };
> =20
> +static const struct regmap_config sun8i_top_regmap_config =3D {
> +	.name		=3D "top",
> +	.reg_bits	=3D 32,
> +	.val_bits	=3D 32,
> +	.reg_stride	=3D 4,
> +	.max_register	=3D 0x3c,
> +};
> +
> +static const struct regmap_config sun8i_disp_regmap_config =3D {
> +	.name		=3D "display",
> +	.reg_bits	=3D 32,
> +	.val_bits	=3D 32,
> +	.reg_stride	=3D 4,
> +	.max_register	=3D 0x20000,
> +};
> +
>  static int sun8i_mixer_of_get_id(struct device_node *node)
>  {
>  	struct device_node *ep, *remote;
> @@ -404,6 +433,76 @@ static int sun8i_mixer_of_get_id(struct device_node =
*node)
>  	return of_ep.id;
>  }
> =20
> +static void sun8i_mixer_de2_init(struct sun8i_mixer *mixer)
> +{
> +	unsigned int base;
> +	int plane_cnt, i;
> +
> +	base =3D sun8i_blender_base(mixer);
> +
> +	/* Enable the mixer */
> +	regmap_write(mixer->engine.regs, SUN8I_MIXER_GLOBAL_CTL,
> +		     SUN8I_MIXER_GLOBAL_CTL_RT_EN);
> +
> +	/* Set background color to black */
> +	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_BKCOLOR(base),
> +		     SUN8I_MIXER_BLEND_COLOR_BLACK);
> +
> +	/*
> +	 * Set fill color of bottom plane to black. Generally not needed
> +	 * except when VI plane is at bottom (zpos =3D 0) and enabled.
> +	 */
> +	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
> +		     SUN8I_MIXER_BLEND_PIPE_CTL_FC_EN(0));
> +	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_ATTR_FCOLOR(base, 0),
> +		     SUN8I_MIXER_BLEND_COLOR_BLACK);
> +
> +	plane_cnt =3D mixer->cfg->vi_num + mixer->cfg->ui_num;
> +	for (i =3D 0; i < plane_cnt; i++)
> +		regmap_write(mixer->engine.regs,
> +			     SUN8I_MIXER_BLEND_MODE(base, i),
> +			     SUN8I_MIXER_BLEND_MODE_DEF);
> +
> +	regmap_update_bits(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
> +			   SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, 0);
> +}
> +
> +static void sun8i_mixer_de33_init(struct sun8i_mixer *mixer)
> +{
> +	unsigned int base;
> +	int plane_cnt, i;
> +
> +	base =3D sun8i_blender_base(mixer);
> +
> +	/* Enable the mixer */
> +	regmap_write(mixer->top_regs, SUN50I_MIXER_GLOBAL_CTL,
> +		     SUN8I_MIXER_GLOBAL_CTL_RT_EN);
> +
> +	regmap_write(mixer->top_regs, SUN50I_MIXER_GLOBAL_CLK, 1);
> +
> +	/* Set background color to black */
> +	regmap_write(mixer->disp_regs, SUN8I_MIXER_BLEND_BKCOLOR(base),
> +		     SUN8I_MIXER_BLEND_COLOR_BLACK);
> +
> +	/*
> +	 * Set fill color of bottom plane to black. Generally not needed
> +	 * except when VI plane is at bottom (zpos =3D 0) and enabled.
> +	 */
> +	regmap_write(mixer->disp_regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
> +		     SUN8I_MIXER_BLEND_PIPE_CTL_FC_EN(0));
> +	regmap_write(mixer->disp_regs, SUN8I_MIXER_BLEND_ATTR_FCOLOR(base, 0),
> +		     SUN8I_MIXER_BLEND_COLOR_BLACK);
> +
> +	plane_cnt =3D mixer->cfg->vi_num + mixer->cfg->ui_num;
> +	for (i =3D 0; i < plane_cnt; i++)
> +		regmap_write(mixer->disp_regs,
> +			     SUN8I_MIXER_BLEND_MODE(base, i),
> +			     SUN8I_MIXER_BLEND_MODE_DEF);
> +
> +	regmap_update_bits(mixer->disp_regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
> +			   SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, 0);
> +}
> +
>  static int sun8i_mixer_bind(struct device *dev, struct device *master,
>  			      void *data)
>  {
> @@ -412,8 +511,6 @@ static int sun8i_mixer_bind(struct device *dev, struc=
t device *master,
>  	struct sun4i_drv *drv =3D drm->dev_private;
>  	struct sun8i_mixer *mixer;
>  	void __iomem *regs;
> -	unsigned int base;
> -	int plane_cnt;
>  	int i, ret;
> =20
>  	/*
> @@ -476,6 +573,30 @@ static int sun8i_mixer_bind(struct device *dev, stru=
ct device *master,
>  		return PTR_ERR(mixer->engine.regs);
>  	}
> =20
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de33) {
> +		regs =3D devm_platform_ioremap_resource(pdev, 1);
> +		if (IS_ERR(regs))
> +			return PTR_ERR(regs);
> +
> +		mixer->top_regs =3D devm_regmap_init_mmio(dev, regs,
> +							&sun8i_top_regmap_config);
> +		if (IS_ERR(mixer->top_regs)) {
> +			dev_err(dev, "Couldn't create the top regmap\n");
> +			return PTR_ERR(mixer->top_regs);
> +		}
> +
> +		regs =3D devm_platform_ioremap_resource(pdev, 2);
> +		if (IS_ERR(regs))
> +			return PTR_ERR(regs);
> +
> +		mixer->disp_regs =3D devm_regmap_init_mmio(dev, regs,
> +							&sun8i_disp_regmap_config);
> +		if (IS_ERR(mixer->disp_regs)) {
> +			dev_err(dev, "Couldn't create the disp regmap\n");
> +			return PTR_ERR(mixer->disp_regs);
> +		}
> +	}
> +
>  	mixer->reset =3D devm_reset_control_get(dev, NULL);
>  	if (IS_ERR(mixer->reset)) {
>  		dev_err(dev, "Couldn't get our reset line\n");
> @@ -515,10 +636,10 @@ static int sun8i_mixer_bind(struct device *dev, str=
uct device *master,
> =20
>  	list_add_tail(&mixer->engine.list, &drv->engine_list);
> =20
> -	base =3D sun8i_blender_base(mixer);
> -
>  	/* Reset registers and disable unused sub-engines */
> -	if (mixer->cfg->is_de3) {
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de33) {
> +		sun8i_mixer_de33_init(mixer);
> +	} else if (mixer->cfg->de_type =3D=3D sun8i_mixer_de3) {
>  		for (i =3D 0; i < DE3_MIXER_UNIT_SIZE; i +=3D 4)
>  			regmap_write(mixer->engine.regs, i, 0);
> =20
> @@ -532,7 +653,9 @@ static int sun8i_mixer_bind(struct device *dev, struc=
t device *master,
>  		regmap_write(mixer->engine.regs, SUN50I_MIXER_FMT_EN, 0);
>  		regmap_write(mixer->engine.regs, SUN50I_MIXER_CDC0_EN, 0);
>  		regmap_write(mixer->engine.regs, SUN50I_MIXER_CDC1_EN, 0);
> -	} else {
> +
> +		sun8i_mixer_de2_init(mixer);
> +	} else if (mixer->cfg->de_type =3D=3D sun8i_mixer_de2) {
>  		for (i =3D 0; i < DE2_MIXER_UNIT_SIZE; i +=3D 4)
>  			regmap_write(mixer->engine.regs, i, 0);
> =20
> @@ -543,33 +666,9 @@ static int sun8i_mixer_bind(struct device *dev, stru=
ct device *master,
>  		regmap_write(mixer->engine.regs, SUN8I_MIXER_ASE_EN, 0);
>  		regmap_write(mixer->engine.regs, SUN8I_MIXER_FCC_EN, 0);
>  		regmap_write(mixer->engine.regs, SUN8I_MIXER_DCSC_EN, 0);
> -	}
> -
> -	/* Enable the mixer */
> -	regmap_write(mixer->engine.regs, SUN8I_MIXER_GLOBAL_CTL,
> -		     SUN8I_MIXER_GLOBAL_CTL_RT_EN);
> -
> -	/* Set background color to black */
> -	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_BKCOLOR(base),
> -		     SUN8I_MIXER_BLEND_COLOR_BLACK);
> -
> -	/*
> -	 * Set fill color of bottom plane to black. Generally not needed
> -	 * except when VI plane is at bottom (zpos =3D 0) and enabled.
> -	 */
> -	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
> -		     SUN8I_MIXER_BLEND_PIPE_CTL_FC_EN(0));
> -	regmap_write(mixer->engine.regs, SUN8I_MIXER_BLEND_ATTR_FCOLOR(base, 0),
> -		     SUN8I_MIXER_BLEND_COLOR_BLACK);
> =20
> -	plane_cnt =3D mixer->cfg->vi_num + mixer->cfg->ui_num;
> -	for (i =3D 0; i < plane_cnt; i++)
> -		regmap_write(mixer->engine.regs,
> -			     SUN8I_MIXER_BLEND_MODE(base, i),
> -			     SUN8I_MIXER_BLEND_MODE_DEF);
> -
> -	regmap_update_bits(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
> -			   SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, 0);
> +		sun8i_mixer_de2_init(mixer);
> +	}
> =20
>  	return 0;
> =20
> @@ -609,6 +708,7 @@ static void sun8i_mixer_remove(struct platform_device=
 *pdev)
> =20
>  static const struct sun8i_mixer_cfg sun8i_a83t_mixer0_cfg =3D {
>  	.ccsc		=3D CCSC_MIXER0_LAYOUT,
> +	.de_type	=3D sun8i_mixer_de2,
>  	.scaler_mask	=3D 0xf,
>  	.scanline_yuv	=3D 2048,
>  	.ui_num		=3D 3,
> @@ -617,6 +717,7 @@ static const struct sun8i_mixer_cfg sun8i_a83t_mixer0=
_cfg =3D {
> =20
>  static const struct sun8i_mixer_cfg sun8i_a83t_mixer1_cfg =3D {
>  	.ccsc		=3D CCSC_MIXER1_LAYOUT,
> +	.de_type	=3D sun8i_mixer_de2,
>  	.scaler_mask	=3D 0x3,
>  	.scanline_yuv	=3D 2048,
>  	.ui_num		=3D 1,
> @@ -625,6 +726,7 @@ static const struct sun8i_mixer_cfg sun8i_a83t_mixer1=
_cfg =3D {
> =20
>  static const struct sun8i_mixer_cfg sun8i_h3_mixer0_cfg =3D {
>  	.ccsc		=3D CCSC_MIXER0_LAYOUT,
> +	.de_type	=3D sun8i_mixer_de2,
>  	.mod_rate	=3D 432000000,
>  	.scaler_mask	=3D 0xf,
>  	.scanline_yuv	=3D 2048,
> @@ -634,6 +736,7 @@ static const struct sun8i_mixer_cfg sun8i_h3_mixer0_c=
fg =3D {
> =20
>  static const struct sun8i_mixer_cfg sun8i_r40_mixer0_cfg =3D {
>  	.ccsc		=3D CCSC_MIXER0_LAYOUT,
> +	.de_type	=3D sun8i_mixer_de2,
>  	.mod_rate	=3D 297000000,
>  	.scaler_mask	=3D 0xf,
>  	.scanline_yuv	=3D 2048,
> @@ -643,6 +746,7 @@ static const struct sun8i_mixer_cfg sun8i_r40_mixer0_=
cfg =3D {
> =20
>  static const struct sun8i_mixer_cfg sun8i_r40_mixer1_cfg =3D {
>  	.ccsc		=3D CCSC_MIXER1_LAYOUT,
> +	.de_type	=3D sun8i_mixer_de2,
>  	.mod_rate	=3D 297000000,
>  	.scaler_mask	=3D 0x3,
>  	.scanline_yuv	=3D 2048,
> @@ -651,6 +755,7 @@ static const struct sun8i_mixer_cfg sun8i_r40_mixer1_=
cfg =3D {
>  };
> =20
>  static const struct sun8i_mixer_cfg sun8i_v3s_mixer_cfg =3D {
> +	.de_type =3D sun8i_mixer_de2,
>  	.vi_num =3D 2,
>  	.ui_num =3D 1,
>  	.scaler_mask =3D 0x3,
> @@ -661,6 +766,7 @@ static const struct sun8i_mixer_cfg sun8i_v3s_mixer_c=
fg =3D {
> =20
>  static const struct sun8i_mixer_cfg sun20i_d1_mixer0_cfg =3D {
>  	.ccsc		=3D CCSC_D1_MIXER0_LAYOUT,
> +	.de_type	=3D sun8i_mixer_de2,
>  	.mod_rate	=3D 297000000,
>  	.scaler_mask	=3D 0x3,
>  	.scanline_yuv	=3D 2048,
> @@ -670,6 +776,7 @@ static const struct sun8i_mixer_cfg sun20i_d1_mixer0_=
cfg =3D {
> =20
>  static const struct sun8i_mixer_cfg sun20i_d1_mixer1_cfg =3D {
>  	.ccsc		=3D CCSC_MIXER1_LAYOUT,
> +	.de_type	=3D sun8i_mixer_de2,
>  	.mod_rate	=3D 297000000,
>  	.scaler_mask	=3D 0x1,
>  	.scanline_yuv	=3D 1024,
> @@ -679,6 +786,7 @@ static const struct sun8i_mixer_cfg sun20i_d1_mixer1_=
cfg =3D {
> =20
>  static const struct sun8i_mixer_cfg sun50i_a64_mixer0_cfg =3D {
>  	.ccsc		=3D CCSC_MIXER0_LAYOUT,
> +	.de_type	=3D sun8i_mixer_de2,
>  	.mod_rate	=3D 297000000,
>  	.scaler_mask	=3D 0xf,
>  	.scanline_yuv	=3D 4096,
> @@ -688,6 +796,7 @@ static const struct sun8i_mixer_cfg sun50i_a64_mixer0=
_cfg =3D {
> =20
>  static const struct sun8i_mixer_cfg sun50i_a64_mixer1_cfg =3D {
>  	.ccsc		=3D CCSC_MIXER1_LAYOUT,
> +	.de_type	=3D sun8i_mixer_de2,
>  	.mod_rate	=3D 297000000,
>  	.scaler_mask	=3D 0x3,
>  	.scanline_yuv	=3D 2048,
> @@ -697,7 +806,7 @@ static const struct sun8i_mixer_cfg sun50i_a64_mixer1=
_cfg =3D {
> =20
>  static const struct sun8i_mixer_cfg sun50i_h6_mixer0_cfg =3D {
>  	.ccsc		=3D CCSC_MIXER0_LAYOUT,
> -	.is_de3		=3D true,
> +	.de_type	=3D sun8i_mixer_de3,
>  	.has_formatter	=3D 1,
>  	.mod_rate	=3D 600000000,
>  	.scaler_mask	=3D 0xf,
> @@ -706,6 +815,18 @@ static const struct sun8i_mixer_cfg sun50i_h6_mixer0=
_cfg =3D {
>  	.vi_num		=3D 1,
>  };
> =20
> +static const struct sun8i_mixer_cfg sun50i_h616_mixer0_cfg =3D {
> +	.ccsc		=3D CCSC_MIXER0_LAYOUT,
> +	.de_type	=3D sun8i_mixer_de33,
> +	.has_formatter	=3D 1,
> +	.mod_rate	=3D 600000000,
> +	.scaler_mask	=3D 0xf,
> +	.scanline_yuv	=3D 4096,
> +	.ui_num		=3D 3,
> +	.vi_num		=3D 1,
> +	.map		=3D {0, 6, 7, 8},
> +};
> +
>  static const struct of_device_id sun8i_mixer_of_table[] =3D {
>  	{
>  		.compatible =3D "allwinner,sun8i-a83t-de2-mixer-0",
> @@ -751,6 +872,10 @@ static const struct of_device_id sun8i_mixer_of_tabl=
e[] =3D {
>  		.compatible =3D "allwinner,sun50i-h6-de3-mixer-0",
>  		.data =3D &sun50i_h6_mixer0_cfg,
>  	},
> +	{
> +		.compatible =3D "allwinner,sun50i-h616-de33-mixer-0",
> +		.data =3D &sun50i_h616_mixer0_cfg,
> +	},
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, sun8i_mixer_of_table);
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h b/drivers/gpu/drm/sun4i/=
sun8i_mixer.h
> index 13401643c7bfc..f1c2cdb88d0eb 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
> @@ -20,6 +20,12 @@
>  #define SUN8I_MIXER_GLOBAL_DBUFF		0x8
>  #define SUN8I_MIXER_GLOBAL_SIZE			0xc
> =20
> +#define SUN50I_MIXER_GLOBAL_CTL			0x0
> +#define SUN50I_MIXER_GLOBAL_STATUS		0x4
> +#define SUN50I_MIXER_GLOBAL_SIZE		0x8
> +#define SUN50I_MIXER_GLOBAL_CLK			0xc
> +#define SUN50I_MIXER_GLOBAL_DBUFF		0x10
> +
>  #define SUN8I_MIXER_GLOBAL_CTL_RT_EN		BIT(0)
> =20
>  #define SUN8I_MIXER_GLOBAL_DBUFF_ENABLE		BIT(0)
> @@ -150,6 +156,12 @@ enum {
>  	CCSC_D1_MIXER0_LAYOUT,
>  };
> =20
> +enum sun8i_mixer_type {
> +	sun8i_mixer_de2,
> +	sun8i_mixer_de3,
> +	sun8i_mixer_de33,
> +};
> +
>  /**
>   * struct sun8i_mixer_cfg - mixer HW configuration
>   * @vi_num: number of VI channels
> @@ -171,9 +183,10 @@ struct sun8i_mixer_cfg {
>  	int		scaler_mask;
>  	int		ccsc;
>  	unsigned long	mod_rate;
> -	unsigned int	is_de3 : 1;
> +	unsigned int	de_type;
>  	unsigned int    has_formatter : 1;
>  	unsigned int	scanline_yuv;
> +	unsigned int	map[6];
>  };
> =20
>  struct sun8i_mixer {
> @@ -185,6 +198,9 @@ struct sun8i_mixer {
> =20
>  	struct clk			*bus_clk;
>  	struct clk			*mod_clk;
> +
> +	struct regmap			*top_regs;
> +	struct regmap			*disp_regs;
>  };
> =20
>  static inline struct sun8i_mixer *
> @@ -196,13 +212,22 @@ engine_to_sun8i_mixer(struct sunxi_engine *engine)
>  static inline u32
>  sun8i_blender_base(struct sun8i_mixer *mixer)
>  {
> -	return mixer->cfg->is_de3 ? DE3_BLD_BASE : DE2_BLD_BASE;
> +	return mixer->cfg->de_type =3D=3D sun8i_mixer_de3 ? DE3_BLD_BASE : DE2_=
BLD_BASE;
> +}
> +
> +static inline struct regmap *
> +sun8i_blender_regmap(struct sun8i_mixer *mixer)
> +{
> +	return mixer->cfg->de_type =3D=3D sun8i_mixer_de33 ?
> +		mixer->disp_regs : mixer->engine.regs;
>  }
> =20
>  static inline u32
>  sun8i_channel_base(struct sun8i_mixer *mixer, int channel)
>  {
> -	if (mixer->cfg->is_de3)
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de33)
> +		return mixer->cfg->map[channel] * 0x20000 + DE2_CH_SIZE;
> +	else if (mixer->cfg->de_type =3D=3D sun8i_mixer_de3)
>  		return DE3_CH_BASE + channel * DE3_CH_SIZE;
>  	else
>  		return DE2_CH_BASE + channel * DE2_CH_SIZE;
> diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun=
4i/sun8i_ui_layer.c
> index 91781b5bbbbce..1649816fe435e 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> @@ -24,14 +24,17 @@
>  #include "sun8i_mixer.h"
>  #include "sun8i_ui_layer.h"
>  #include "sun8i_ui_scaler.h"
> +#include "sun8i_vi_scaler.h"
> =20
>  static void sun8i_ui_layer_enable(struct sun8i_mixer *mixer, int channel,
>  				  int overlay, bool enable, unsigned int zpos,
>  				  unsigned int old_zpos)
>  {
>  	u32 val, bld_base, ch_base;
> +	struct regmap *bld_regs;
> =20
>  	bld_base =3D sun8i_blender_base(mixer);
> +	bld_regs =3D sun8i_blender_regmap(mixer);
>  	ch_base =3D sun8i_channel_base(mixer, channel);
> =20
>  	DRM_DEBUG_DRIVER("%sabling channel %d overlay %d\n",
> @@ -47,12 +50,12 @@ static void sun8i_ui_layer_enable(struct sun8i_mixer =
*mixer, int channel,
>  			   SUN8I_MIXER_CHAN_UI_LAYER_ATTR_EN, val);
> =20
>  	if (!enable || zpos !=3D old_zpos) {
> -		regmap_update_bits(mixer->engine.regs,
> +		regmap_update_bits(bld_regs,
>  				   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
>  				   SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
>  				   0);
> =20
> -		regmap_update_bits(mixer->engine.regs,
> +		regmap_update_bits(bld_regs,
>  				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
>  				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
>  				   0);
> @@ -61,13 +64,13 @@ static void sun8i_ui_layer_enable(struct sun8i_mixer =
*mixer, int channel,
>  	if (enable) {
>  		val =3D SUN8I_MIXER_BLEND_PIPE_CTL_EN(zpos);
> =20
> -		regmap_update_bits(mixer->engine.regs,
> +		regmap_update_bits(bld_regs,
>  				   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
>  				   val, val);
> =20
>  		val =3D channel << SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(zpos);
> =20
> -		regmap_update_bits(mixer->engine.regs,
> +		regmap_update_bits(bld_regs,
>  				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
>  				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(zpos),
>  				   val);
> @@ -101,6 +104,7 @@ static int sun8i_ui_layer_update_coord(struct sun8i_m=
ixer *mixer, int channel,
>  {
>  	struct drm_plane_state *state =3D plane->state;
>  	u32 src_w, src_h, dst_w, dst_h;
> +	struct regmap *bld_regs;
>  	u32 bld_base, ch_base;
>  	u32 outsize, insize;
>  	u32 hphase, vphase;
> @@ -109,6 +113,7 @@ static int sun8i_ui_layer_update_coord(struct sun8i_m=
ixer *mixer, int channel,
>  			 channel, overlay);
> =20
>  	bld_base =3D sun8i_blender_base(mixer);
> +	bld_regs =3D sun8i_blender_regmap(mixer);
>  	ch_base =3D sun8i_channel_base(mixer, channel);
> =20
>  	src_w =3D drm_rect_width(&state->src) >> 16;
> @@ -141,22 +146,33 @@ static int sun8i_ui_layer_update_coord(struct sun8i=
_mixer *mixer, int channel,
>  		hscale =3D state->src_w / state->crtc_w;
>  		vscale =3D state->src_h / state->crtc_h;
> =20
> -		sun8i_ui_scaler_setup(mixer, channel, src_w, src_h, dst_w,
> -				      dst_h, hscale, vscale, hphase, vphase);
> -		sun8i_ui_scaler_enable(mixer, channel, true);
> +		if (mixer->cfg->de_type =3D=3D sun8i_mixer_de33) {
> +			sun8i_vi_scaler_setup(mixer, channel, src_w, src_h,
> +					      dst_w, dst_h, hscale, vscale,
> +					      hphase, vphase,
> +					      state->fb->format);
> +		} else {
> +			sun8i_ui_scaler_setup(mixer, channel, src_w, src_h,
> +					      dst_w, dst_h, hscale, vscale,
> +					      hphase, vphase);
> +			sun8i_ui_scaler_enable(mixer, channel, true);
> +		}
>  	} else {
>  		DRM_DEBUG_DRIVER("HW scaling is not needed\n");
> -		sun8i_ui_scaler_enable(mixer, channel, false);
> +		if (mixer->cfg->de_type =3D=3D sun8i_mixer_de33)
> +			sun8i_vi_scaler_disable(mixer, channel);
> +		else
> +			sun8i_ui_scaler_enable(mixer, channel, false);
>  	}
> =20
>  	/* Set base coordinates */
>  	DRM_DEBUG_DRIVER("Layer destination coordinates X: %d Y: %d\n",
>  			 state->dst.x1, state->dst.y1);
>  	DRM_DEBUG_DRIVER("Layer destination size W: %d H: %d\n", dst_w, dst_h);
> -	regmap_write(mixer->engine.regs,
> +	regmap_write(bld_regs,
>  		     SUN8I_MIXER_BLEND_ATTR_COORD(bld_base, zpos),
>  		     SUN8I_MIXER_COORD(state->dst.x1, state->dst.y1));
> -	regmap_write(mixer->engine.regs,
> +	regmap_write(bld_regs,
>  		     SUN8I_MIXER_BLEND_ATTR_INSIZE(bld_base, zpos),
>  		     outsize);
> =20
> diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_scaler.c b/drivers/gpu/drm/su=
n4i/sun8i_ui_scaler.c
> index ae0806bccac7f..504ffa0971a4f 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_ui_scaler.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_ui_scaler.c
> @@ -93,7 +93,7 @@ static u32 sun8i_ui_scaler_base(struct sun8i_mixer *mix=
er, int channel)
>  {
>  	int vi_num =3D mixer->cfg->vi_num;
> =20
> -	if (mixer->cfg->is_de3)
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de3)
>  		return DE3_VI_SCALER_UNIT_BASE +
>  		       DE3_VI_SCALER_UNIT_SIZE * vi_num +
>  		       DE3_UI_SCALER_UNIT_SIZE * (channel - vi_num);
> diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun=
4i/sun8i_vi_layer.c
> index bda91c3e2bb75..d8a97245cfe1e 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> @@ -25,8 +25,10 @@ static void sun8i_vi_layer_enable(struct sun8i_mixer *=
mixer, int channel,
>  				  unsigned int old_zpos)
>  {
>  	u32 val, bld_base, ch_base;
> +	struct regmap *bld_regs;
> =20
>  	bld_base =3D sun8i_blender_base(mixer);
> +	bld_regs =3D sun8i_blender_regmap(mixer);
>  	ch_base =3D sun8i_channel_base(mixer, channel);
> =20
>  	DRM_DEBUG_DRIVER("%sabling VI channel %d overlay %d\n",
> @@ -42,12 +44,12 @@ static void sun8i_vi_layer_enable(struct sun8i_mixer =
*mixer, int channel,
>  			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN, val);
> =20
>  	if (!enable || zpos !=3D old_zpos) {
> -		regmap_update_bits(mixer->engine.regs,
> +		regmap_update_bits(bld_regs,
>  				   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
>  				   SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
>  				   0);
> =20
> -		regmap_update_bits(mixer->engine.regs,
> +		regmap_update_bits(bld_regs,
>  				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
>  				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
>  				   0);
> @@ -56,13 +58,13 @@ static void sun8i_vi_layer_enable(struct sun8i_mixer =
*mixer, int channel,
>  	if (enable) {
>  		val =3D SUN8I_MIXER_BLEND_PIPE_CTL_EN(zpos);
> =20
> -		regmap_update_bits(mixer->engine.regs,
> +		regmap_update_bits(bld_regs,
>  				   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
>  				   val, val);
> =20
>  		val =3D channel << SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(zpos);
> =20
> -		regmap_update_bits(mixer->engine.regs,
> +		regmap_update_bits(bld_regs,
>  				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
>  				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(zpos),
>  				   val);
> @@ -76,7 +78,7 @@ static void sun8i_vi_layer_update_alpha(struct sun8i_mi=
xer *mixer, int channel,
> =20
>  	ch_base =3D sun8i_channel_base(mixer, channel);
> =20
> -	if (mixer->cfg->is_de3) {
> +	if (mixer->cfg->de_type >=3D sun8i_mixer_de3) {
>  		mask =3D SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK |
>  		       SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_MASK;
>  		val =3D SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA
> @@ -106,6 +108,7 @@ static int sun8i_vi_layer_update_coord(struct sun8i_m=
ixer *mixer, int channel,
>  	struct drm_plane_state *state =3D plane->state;
>  	const struct drm_format_info *format =3D state->fb->format;
>  	u32 src_w, src_h, dst_w, dst_h;
> +	struct regmap *bld_regs;
>  	u32 bld_base, ch_base;
>  	u32 outsize, insize;
>  	u32 hphase, vphase;
> @@ -117,6 +120,7 @@ static int sun8i_vi_layer_update_coord(struct sun8i_m=
ixer *mixer, int channel,
>  			 channel, overlay);
> =20
>  	bld_base =3D sun8i_blender_base(mixer);
> +	bld_regs =3D sun8i_blender_regmap(mixer);
>  	ch_base =3D sun8i_channel_base(mixer, channel);
> =20
>  	src_w =3D drm_rect_width(&state->src) >> 16;
> @@ -207,10 +211,9 @@ static int sun8i_vi_layer_update_coord(struct sun8i_=
mixer *mixer, int channel,
>  		sun8i_vi_scaler_setup(mixer, channel, src_w, src_h, dst_w,
>  				      dst_h, hscale, vscale, hphase, vphase,
>  				      format);
> -		sun8i_vi_scaler_enable(mixer, channel, true);
>  	} else {
>  		DRM_DEBUG_DRIVER("HW scaling is not needed\n");
> -		sun8i_vi_scaler_enable(mixer, channel, false);
> +		sun8i_vi_scaler_disable(mixer, channel);
>  	}
> =20
>  	regmap_write(mixer->engine.regs,
> @@ -234,10 +237,10 @@ static int sun8i_vi_layer_update_coord(struct sun8i=
_mixer *mixer, int channel,
>  	DRM_DEBUG_DRIVER("Layer destination coordinates X: %d Y: %d\n",
>  			 state->dst.x1, state->dst.y1);
>  	DRM_DEBUG_DRIVER("Layer destination size W: %d H: %d\n", dst_w, dst_h);
> -	regmap_write(mixer->engine.regs,
> +	regmap_write(bld_regs,
>  		     SUN8I_MIXER_BLEND_ATTR_COORD(bld_base, zpos),
>  		     SUN8I_MIXER_COORD(state->dst.x1, state->dst.y1));
> -	regmap_write(mixer->engine.regs,
> +	regmap_write(bld_regs,
>  		     SUN8I_MIXER_BLEND_ATTR_INSIZE(bld_base, zpos),
>  		     outsize);
> =20
> @@ -410,7 +413,7 @@ static void sun8i_vi_layer_atomic_disable(struct drm_=
plane *plane,
> =20
>  	sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay, false, 0,
>  			      old_zpos);
> -	if (mixer->cfg->is_de3)
> +	if (mixer->cfg->de_type >=3D sun8i_mixer_de3)
>  		sun50i_afbc_disable(mixer, layer->channel);
>  }
> =20
> @@ -431,7 +434,7 @@ static void sun8i_vi_layer_atomic_update(struct drm_p=
lane *plane,
>  	if (!new_state->visible) {
>  		sun8i_vi_layer_enable(mixer, layer->channel,
>  				      layer->overlay, false, 0, old_zpos);
> -		if (mixer->cfg->is_de3)
> +		if (mixer->cfg->de_type >=3D sun8i_mixer_de3)
>  			sun50i_afbc_disable(mixer, layer->channel);
>  		return;
>  	}
> @@ -448,7 +451,7 @@ static void sun8i_vi_layer_atomic_update(struct drm_p=
lane *plane,
>  				   plane->state->color_encoding,
>  				   plane->state->color_range);
>  	} else {
> -		if (mixer->cfg->is_de3)
> +		if (mixer->cfg->de_type >=3D sun8i_mixer_de3)
>  			sun50i_afbc_disable(mixer, layer->channel);
>  		sun8i_vi_layer_update_alpha(mixer, layer->channel,
>  					    layer->overlay, plane);
> @@ -612,7 +615,7 @@ struct sun8i_vi_layer *sun8i_vi_layer_init_one(struct=
 drm_device *drm,
>  	layer->channel =3D index;
>  	layer->overlay =3D 0;
> =20
> -	if (mixer->cfg->is_de3) {
> +	if (mixer->cfg->de_type >=3D sun8i_mixer_de3) {
>  		formats =3D sun8i_vi_layer_de3_formats;
>  		format_count =3D ARRAY_SIZE(sun8i_vi_layer_de3_formats);
>  		modifiers =3D sun50i_layer_de3_modifiers;
> @@ -637,7 +640,7 @@ struct sun8i_vi_layer *sun8i_vi_layer_init_one(struct=
 drm_device *drm,
> =20
>  	plane_cnt =3D mixer->cfg->ui_num + mixer->cfg->vi_num;
> =20
> -	if (mixer->cfg->vi_num =3D=3D 1 || mixer->cfg->is_de3) {
> +	if (mixer->cfg->vi_num =3D=3D 1 || mixer->cfg->de_type >=3D sun8i_mixer=
_de3) {
>  		ret =3D drm_plane_create_alpha_property(&layer->plane);
>  		if (ret) {
>  			dev_err(drm->dev, "Couldn't add alpha property\n");
> @@ -654,7 +657,7 @@ struct sun8i_vi_layer *sun8i_vi_layer_init_one(struct=
 drm_device *drm,
> =20
>  	supported_encodings =3D BIT(DRM_COLOR_YCBCR_BT601) |
>  			      BIT(DRM_COLOR_YCBCR_BT709);
> -	if (mixer->cfg->is_de3)
> +	if (mixer->cfg->de_type >=3D sun8i_mixer_de3)
>  		supported_encodings |=3D BIT(DRM_COLOR_YCBCR_BT2020);
> =20
>  	supported_ranges =3D BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
> diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c b/drivers/gpu/drm/su=
n4i/sun8i_vi_scaler.c
> index 7ba75011adf9f..9c7f6e7d71d50 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
> @@ -835,7 +835,9 @@ static const u32 bicubic4coefftab32[480] =3D {
> =20
>  static u32 sun8i_vi_scaler_base(struct sun8i_mixer *mixer, int channel)
>  {
> -	if (mixer->cfg->is_de3)
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de33)
> +		return sun8i_channel_base(mixer, channel) + 0x3000;
> +	else if (mixer->cfg->de_type =3D=3D sun8i_mixer_de3)
>  		return DE3_VI_SCALER_UNIT_BASE +
>  		       DE3_VI_SCALER_UNIT_SIZE * channel;
>  	else
> @@ -843,6 +845,14 @@ static u32 sun8i_vi_scaler_base(struct sun8i_mixer *=
mixer, int channel)
>  		       DE2_VI_SCALER_UNIT_SIZE * channel;
>  }
> =20
> +static bool sun8i_vi_scaler_is_vi_plane(struct sun8i_mixer *mixer, int c=
hannel)
> +{
> +	if (mixer->cfg->de_type =3D=3D sun8i_mixer_de33)
> +		return mixer->cfg->map[channel] < mixer->cfg->vi_num;
> +
> +	return true;
> +}
> +
>  static int sun8i_vi_scaler_coef_index(unsigned int step)
>  {
>  	unsigned int scale, int_part, float_part;
> @@ -867,60 +877,74 @@ static int sun8i_vi_scaler_coef_index(unsigned int =
step)
>  	}
>  }
> =20
> -static void sun8i_vi_scaler_set_coeff(struct regmap *map, u32 base,
> -				      u32 hstep, u32 vstep,
> -				      const struct drm_format_info *format)
> +static void sun8i_vi_scaler_set_coeff_vi(struct regmap *map, u32 base,
> +					 u32 hstep, u32 vstep,
> +					 const struct drm_format_info *format)
>  {
>  	const u32 *ch_left, *ch_right, *cy;
> -	int offset, i;
> +	int offset;
> =20
> -	if (format->hsub =3D=3D 1 && format->vsub =3D=3D 1) {
> -		ch_left =3D lan3coefftab32_left;
> -		ch_right =3D lan3coefftab32_right;
> -		cy =3D lan2coefftab32;
> -	} else {
> +	if (format->is_yuv) {
>  		ch_left =3D bicubic8coefftab32_left;
>  		ch_right =3D bicubic8coefftab32_right;
>  		cy =3D bicubic4coefftab32;
> +	} else {
> +		ch_left =3D lan3coefftab32_left;
> +		ch_right =3D lan3coefftab32_right;
> +		cy =3D lan2coefftab32;
>  	}
> =20
>  	offset =3D sun8i_vi_scaler_coef_index(hstep) *
>  			SUN8I_VI_SCALER_COEFF_COUNT;
> -	for (i =3D 0; i < SUN8I_VI_SCALER_COEFF_COUNT; i++) {
> -		regmap_write(map, SUN8I_SCALER_VSU_YHCOEFF0(base, i),
> -			     lan3coefftab32_left[offset + i]);
> -		regmap_write(map, SUN8I_SCALER_VSU_YHCOEFF1(base, i),
> -			     lan3coefftab32_right[offset + i]);
> -		regmap_write(map, SUN8I_SCALER_VSU_CHCOEFF0(base, i),
> -			     ch_left[offset + i]);
> -		regmap_write(map, SUN8I_SCALER_VSU_CHCOEFF1(base, i),
> -			     ch_right[offset + i]);
> -	}
> +	regmap_bulk_write(map, SUN8I_SCALER_VSU_YHCOEFF0(base, 0),
> +			  &lan3coefftab32_left[offset],
> +			  SUN8I_VI_SCALER_COEFF_COUNT);
> +	regmap_bulk_write(map, SUN8I_SCALER_VSU_YHCOEFF1(base, 0),
> +			  &lan3coefftab32_right[offset],
> +			  SUN8I_VI_SCALER_COEFF_COUNT);
> +	regmap_bulk_write(map, SUN8I_SCALER_VSU_CHCOEFF0(base, 0),
> +			  &ch_left[offset], SUN8I_VI_SCALER_COEFF_COUNT);
> +	regmap_bulk_write(map, SUN8I_SCALER_VSU_CHCOEFF1(base, 0),
> +			  &ch_right[offset], SUN8I_VI_SCALER_COEFF_COUNT);
> =20
>  	offset =3D sun8i_vi_scaler_coef_index(hstep) *
>  			SUN8I_VI_SCALER_COEFF_COUNT;
> -	for (i =3D 0; i < SUN8I_VI_SCALER_COEFF_COUNT; i++) {
> -		regmap_write(map, SUN8I_SCALER_VSU_YVCOEFF(base, i),
> -			     lan2coefftab32[offset + i]);
> -		regmap_write(map, SUN8I_SCALER_VSU_CVCOEFF(base, i),
> -			     cy[offset + i]);
> -	}
> +	regmap_bulk_write(map, SUN8I_SCALER_VSU_YVCOEFF(base, 0),
> +			  &lan2coefftab32[offset], SUN8I_VI_SCALER_COEFF_COUNT);
> +	regmap_bulk_write(map, SUN8I_SCALER_VSU_CVCOEFF(base, 0),
> +			  &cy[offset], SUN8I_VI_SCALER_COEFF_COUNT);
>  }
> =20
> -void sun8i_vi_scaler_enable(struct sun8i_mixer *mixer, int layer, bool e=
nable)
> +static void sun8i_vi_scaler_set_coeff_ui(struct regmap *map, u32 base,
> +					 u32 hstep, u32 vstep,
> +					 const struct drm_format_info *format)
>  {
> -	u32 val, base;
> +	const u32 *table;
> +	int offset;
> =20
> -	base =3D sun8i_vi_scaler_base(mixer, layer);
> +	offset =3D sun8i_vi_scaler_coef_index(hstep) *
> +			SUN8I_VI_SCALER_COEFF_COUNT;
> +	regmap_bulk_write(map, SUN8I_SCALER_VSU_YHCOEFF0(base, 0),
> +			  &lan2coefftab32[offset], SUN8I_VI_SCALER_COEFF_COUNT);
> +	offset =3D sun8i_vi_scaler_coef_index(vstep) *
> +			SUN8I_VI_SCALER_COEFF_COUNT;
> +	regmap_bulk_write(map, SUN8I_SCALER_VSU_YVCOEFF(base, 0),
> +			  &lan2coefftab32[offset], SUN8I_VI_SCALER_COEFF_COUNT);
> =20
> -	if (enable)
> -		val =3D SUN8I_SCALER_VSU_CTRL_EN |
> -		      SUN8I_SCALER_VSU_CTRL_COEFF_RDY;
> -	else
> -		val =3D 0;
> +	table =3D format->is_yuv ? bicubic4coefftab32 : lan2coefftab32;
> +	offset =3D sun8i_vi_scaler_coef_index(hstep) *
> +			SUN8I_VI_SCALER_COEFF_COUNT;
> +	regmap_bulk_write(map, SUN8I_SCALER_VSU_CHCOEFF0(base, 0),
> +			  &table[offset], SUN8I_VI_SCALER_COEFF_COUNT);
> +}
> =20
> -	regmap_write(mixer->engine.regs,
> -		     SUN8I_SCALER_VSU_CTRL(base), val);
> +void sun8i_vi_scaler_disable(struct sun8i_mixer *mixer, int layer)
> +{
> +	u32 base;
> +
> +	base =3D sun8i_vi_scaler_base(mixer, layer);
> +
> +	regmap_write(mixer->engine.regs, SUN8I_SCALER_VSU_CTRL(base), 0);
>  }
> =20
>  void sun8i_vi_scaler_setup(struct sun8i_mixer *mixer, int layer,
> @@ -956,7 +980,10 @@ void sun8i_vi_scaler_setup(struct sun8i_mixer *mixer=
, int layer,
>  		cvphase =3D vphase;
>  	}
> =20
> -	if (mixer->cfg->is_de3) {
> +	regmap_write(mixer->engine.regs, SUN8I_SCALER_VSU_CTRL(base),
> +		     SUN8I_SCALER_VSU_CTRL_EN);
> +
> +	if (mixer->cfg->de_type >=3D sun8i_mixer_de3) {
>  		u32 val;
> =20
>  		if (format->hsub =3D=3D 1 && format->vsub =3D=3D 1)
> @@ -994,6 +1021,16 @@ void sun8i_vi_scaler_setup(struct sun8i_mixer *mixe=
r, int layer,
>  		     SUN8I_SCALER_VSU_CHPHASE(base), chphase);
>  	regmap_write(mixer->engine.regs,
>  		     SUN8I_SCALER_VSU_CVPHASE(base), cvphase);
> -	sun8i_vi_scaler_set_coeff(mixer->engine.regs, base,
> -				  hscale, vscale, format);
> +
> +	if (sun8i_vi_scaler_is_vi_plane(mixer, layer))
> +		sun8i_vi_scaler_set_coeff_vi(mixer->engine.regs, base,
> +					     hscale, vscale, format);
> +	else
> +		sun8i_vi_scaler_set_coeff_ui(mixer->engine.regs, base,
> +					     hscale, vscale, format);
> +
> +	if (mixer->cfg->de_type <=3D sun8i_mixer_de3)
> +		regmap_write(mixer->engine.regs, SUN8I_SCALER_VSU_CTRL(base),
> +			     SUN8I_SCALER_VSU_CTRL_EN |
> +			     SUN8I_SCALER_VSU_CTRL_COEFF_RDY);
>  }
> diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.h b/drivers/gpu/drm/su=
n4i/sun8i_vi_scaler.h
> index 68f6593b369ab..9fe056a2c1c79 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.h
> +++ b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.h
> @@ -34,6 +34,7 @@
>  #define SUN50I_SCALER_VSU_EDSCL_CTRL(base)		((base) + 0x28)
>  #define SUN50I_SCALER_VSU_ANGLE_THR(base)		((base) + 0x2c)
>  #define SUN8I_SCALER_VSU_OUTSIZE(base)		((base) + 0x40)
> +#define SUN50I_SCALER_VSU_GLB_ALPHA(base)	((base) + 0x44)
>  #define SUN8I_SCALER_VSU_YINSIZE(base)		((base) + 0x80)
>  #define SUN8I_SCALER_VSU_YHSTEP(base)		((base) + 0x88)
>  #define SUN8I_SCALER_VSU_YVSTEP(base)		((base) + 0x8c)
> @@ -69,7 +70,7 @@
>  #define SUN50I_SCALER_VSU_ANGLE_SHIFT(x)		(((x) << 16) & 0xF)
>  #define SUN50I_SCALER_VSU_ANGLE_OFFSET(x)		((x) & 0xFF)
> =20
> -void sun8i_vi_scaler_enable(struct sun8i_mixer *mixer, int layer, bool e=
nable);
> +void sun8i_vi_scaler_disable(struct sun8i_mixer *mixer, int layer);
>  void sun8i_vi_scaler_setup(struct sun8i_mixer *mixer, int layer,
>  			   u32 src_w, u32 src_h, u32 dst_w, u32 dst_h,
>  			   u32 hscale, u32 vscale, u32 hphase, u32 vphase,


