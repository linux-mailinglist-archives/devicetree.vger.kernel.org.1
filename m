Return-Path: <devicetree+bounces-33733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F19188362E2
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 13:14:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F6AB28BFB6
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 536233B196;
	Mon, 22 Jan 2024 12:14:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABE03BB21
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 12:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705925677; cv=none; b=sOotfUvHKKEDnpkt/3QcK1UKgVGa68NBQdw3VwiTyn08nqGJvAnPx2rDaIQ0k+8h8dGb/V991XIdW/LV/xdWcaYaB9iZ5KNL03kSxaamMaMO/83/E6NBvKMTD8E5wnWckXLQnndP3GDBk72vvQ3fLycbNVY/E0RqgJiuZXlfGHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705925677; c=relaxed/simple;
	bh=EdlZn7jiQ1mMb/8Kan94EYiiuYd/nwjj3bd8Pvobfc8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XybaY6hoE801APoeXGM2EG8PwfGMHJOIhV6OWw17NbEgcS8PTVq7Wy0/J6tzC0DlAwYFRb20lzQR8kLYH31PRYehZAoAFA883N1uCLWx6PjfFB5Ac3G83eJUfA0XOwQt2kA3WNmN8gTcod2aB5Rjb1M+Qs4r9N8KoEje/jxu+B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rRtBt-0001Ez-7i; Mon, 22 Jan 2024 13:14:13 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rRtBp-001al3-I5; Mon, 22 Jan 2024 13:14:09 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rRtBp-001Bwe-En; Mon, 22 Jan 2024 13:14:09 +0100
Date: Mon, 22 Jan 2024 13:14:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Algea Cao <algea.cao@rock-chips.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 3/3] phy: rockchip: Add Samsung HDMI/DP Combo PHY driver
Message-ID: <20240122121409.GW4700@pengutronix.de>
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
 <20240119193806.1030214-4-cristian.ciocaltea@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240119193806.1030214-4-cristian.ciocaltea@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Fri, Jan 19, 2024 at 09:38:03PM +0200, Cristian Ciocaltea wrote:
> Add driver for the Rockchip HDMI/eDP TX Combo PHY found on RK3588 SoC.
> 
> The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
> and eDP links.  The maximum data rate is 12Gbps (HDMI 2.1 FRL), while
> the minimum is 250Mbps (HDMI 2.1 TMDS).
> 
> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/Kconfig                  |    8 +
>  drivers/phy/rockchip/Makefile                 |    1 +
>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 2045 +++++++++++++++++
>  3 files changed, 2054 insertions(+)
>  create mode 100644 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index 94360fc96a6f..95666ac6aa3b 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -83,6 +83,14 @@ config PHY_ROCKCHIP_PCIE
>  	help
>  	  Enable this to support the Rockchip PCIe PHY.
>  
> +config PHY_ROCKCHIP_SAMSUNG_HDPTX
> +	tristate "Rockchip Samsung HDMI/DP Combo PHY driver"
> +	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support the Rockchip HDMI/DP Combo PHY
> +	  with Samsung IP block.
> +
>  config PHY_ROCKCHIP_SNPS_PCIE3
>  	tristate "Rockchip Snps PCIe3 PHY Driver"
>  	depends on (ARCH_ROCKCHIP && OF) || COMPILE_TEST
> diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
> index 7eab129230d1..3d911304e654 100644
> --- a/drivers/phy/rockchip/Makefile
> +++ b/drivers/phy/rockchip/Makefile
> @@ -8,6 +8,7 @@ obj-$(CONFIG_PHY_ROCKCHIP_INNO_HDMI)	+= phy-rockchip-inno-hdmi.o
>  obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2)	+= phy-rockchip-inno-usb2.o
>  obj-$(CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY)	+= phy-rockchip-naneng-combphy.o
>  obj-$(CONFIG_PHY_ROCKCHIP_PCIE)		+= phy-rockchip-pcie.o
> +obj-$(CONFIG_PHY_ROCKCHIP_SAMSUNG_HDPTX)	+= phy-rockchip-samsung-hdptx.o
>  obj-$(CONFIG_PHY_ROCKCHIP_SNPS_PCIE3)	+= phy-rockchip-snps-pcie3.o
>  obj-$(CONFIG_PHY_ROCKCHIP_TYPEC)	+= phy-rockchip-typec.o
>  obj-$(CONFIG_PHY_ROCKCHIP_USB)		+= phy-rockchip-usb.o
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> new file mode 100644
> index 000000000000..d8171ea5ce2b
> --- /dev/null
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -0,0 +1,2045 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (c) 2021-2022 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2024 Collabora Ltd.
> + *
> + * Author: Algea Cao <algea.cao@rock-chips.com>
> + * Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> + */
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/rational.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +
> +#define GRF_HDPTX_CON0			0x00
> +#define HDPTX_I_PLL_EN			BIT(7)
> +#define HDPTX_I_BIAS_EN			BIT(6)
> +#define HDPTX_I_BGR_EN			BIT(5)
> +#define GRF_HDPTX_STATUS		0x80
> +#define HDPTX_O_PLL_LOCK_DONE		BIT(3)
> +#define HDPTX_O_PHY_CLK_RDY		BIT(2)
> +#define HDPTX_O_PHY_RDY			BIT(1)
> +#define HDPTX_O_SB_RDY			BIT(0)
> +
> +#define CMN_REG0000			0x0000

These register names are not particularly helpful. Maybe use a

#define CMN_REG(x)			((x) * 4)

Instead?

> +
> +static int hdptx_lcpll_frl_mode_config(struct rockchip_hdptx_phy *hdptx,
> +				       u32 rate)
> +{
> +	u32 bit_rate = rate & DATA_RATE_MASK;
> +	u8 color_depth = (rate & COLOR_DEPTH_MASK) ? 1 : 0;
> +	const struct lcpll_config *cfg = lcpll_cfg;
> +
> +	for (; cfg->bit_rate != ~0; cfg++)
> +		if (bit_rate == cfg->bit_rate)
> +			break;

You could use ARRAY_SIZE() to iterate over the array and save the extra
entry at the end. Likewise for the other arrays used in the driver.

> +
> +	if (cfg->bit_rate == ~0)
> +		return -EINVAL;
> +

> +static int rockchip_hdptx_phy_power_on(struct phy *phy)
> +{
> +	struct rockchip_hdptx_phy *hdptx = phy_get_drvdata(phy);
> +	int bus_width = phy_get_bus_width(hdptx->phy);
> +	int bit_rate = bus_width & DATA_RATE_MASK;

What is going on here? bus_width is set to 8 in probe() using
phy_set_bus_width(), but the value you pull out of phy_get_bus_width()
is expected to contain the bit_rate and several other flags.

It looks like you are tunneling flags from some other driver using this
field. Isn't there a better way to accomplish this? If not, I think this
needs some explanation.

At least the variable should be renamed. it's called "bus_width" and it's
passed to functions like hdptx_lcpll_frl_mode_config() which has this
parameter named "rate" which is quite confusing.

Sascha

> +	int ret;
> +
> +	dev_dbg(hdptx->dev, "%s bus_width=%x rate=%d\n",
> +		__func__, bus_width, bit_rate);
> +
> +	ret = pm_runtime_resume_and_get(hdptx->dev);
> +	if (ret) {
> +		dev_err(hdptx->dev, "Failed to resume phy: %d\n", ret);
> +		return ret;
> +	}
> +
> +	if (bus_width & HDMI_EARC_MASK)
> +		hdptx->earc_en = true;
> +	else
> +		hdptx->earc_en = false;
> +
> +	if (bus_width & HDMI_MODE_MASK) {
> +		if (bit_rate > 24000000)
> +			ret = hdptx_lcpll_frl_mode_config(hdptx, bus_width);
> +		else
> +			ret = hdptx_ropll_frl_mode_config(hdptx, bus_width);
> +	} else {
> +		ret = hdptx_ropll_tmds_mode_config(hdptx, bus_width);
> +	}
> +
> +	if (ret)
> +		pm_runtime_put(hdptx->dev);
> +
> +	return ret;
> +}
> +

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

