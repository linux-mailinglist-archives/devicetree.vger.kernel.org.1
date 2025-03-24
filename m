Return-Path: <devicetree+bounces-160039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD3DA6D5FD
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 09:18:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4E103ADBEB
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 08:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F3C525D204;
	Mon, 24 Mar 2025 08:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="h4i9pxqU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A0C1459F6
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 08:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742804300; cv=none; b=mY5ypSYIJoNfyga1AXQgf8N4wMuI2DPk4tUR9FnwYf/P8IyJY9+mdQfB7Z8wgpzbva1mX2v4kCsSvbAznNOELn/fi6MCJWGNoLFS5uYwaOX5gWH8Wa3CJ/qNvnSTEHNUqS8UUkszCQGIzdemYMqEKMBoI9tnaAU9KPkk0wHRJio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742804300; c=relaxed/simple;
	bh=JLZ66GxJVpTDjYLlVv51cla0oQzR06ka0F8Q/2IX0vA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=emGfiu9+tyjKHvmxJNc8fz2olEvZM4PAkI43kxvKIBbY6cU9GO7QGAdXVutaGyyX9NtjXWPV6muCND4Y8vQxC0F4T3Kh+abD2F8XMna6PvS7wQhxrFuuFmp6MDEsBWaB04A4dFJ89KLBfbmnEdpFz0HDHkj0TO1cZB9ZG9Tx5UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=h4i9pxqU; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cfdc2c8c9so24061205e9.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 01:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1742804296; x=1743409096; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+zNYy4BfOEaeniqsuFf8sjHcFv5+D+gjfplz2a0K2Xo=;
        b=h4i9pxqUTsi/CYiQWpNrcd8Uzw2ZtWib/obprTcvQLZIdqBqwnT+9Kwr3QdtJwDZdv
         jXBC72lIyCEl1nJ0WMf/y6ZA5MN2gw4RxmwSTMwRNWvL2aqzNDNOwteP3Q3vhP0RnWHy
         INi8FqfYkSggPRF3tRaLdiPiH/+ULY3chb3LYHfOyrJbLqLxpZMsNWpqhpmWCJm5WH/E
         r9UZvSnB/MdeCSwvtxYPx1K0KLe5yv0s/L79XUsEy+3roFq8r7XURGz0Gf+t45JyRRt/
         MdUD3CIbFrk90Gt8CQeezEVvs4lJ9Vg+UngnAIs9J7xD0UKp6OJ2WbtdScFPIgfRQuV0
         jr2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742804296; x=1743409096;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+zNYy4BfOEaeniqsuFf8sjHcFv5+D+gjfplz2a0K2Xo=;
        b=vl7+L9tWj4x3NkrvdhoprV2SC6vD6b8hQMA398jYsrNDKFDPJRg1n8jW/iVH2p6j5Y
         i8lr1m5lAWzltp6jEozGKyGuck+me4k1467Ikxt7mxw/GhSKLzXCqDSVTJjWdsQ4c4Qo
         XsLKPnOeqkMEOK/W3k2HO2aZ7a1VplQ8t8WhFiOWDL6Od8QLTgvqMKyTJmN3fjrg8N6l
         DUcTLXRndSl5B/Jkwt9MeSxsj6XLnpESd5vhCejKlL666NvvoJXxHQ8VEGiQVT809x7P
         6qsLAWg8hkdpt0SE+Pe0w8vVnRZ4mBNd1GldBcmFlBuxo6p1ToRzxfIMx06n0uqDZ8fh
         +ydA==
X-Forwarded-Encrypted: i=1; AJvYcCWBdeoCOqJ8XypvyWsp2Xbs0dVW7pfw0Ooo+EgiNkoA8TvHDi5eJJ0jGwEVSUqtdTa9rFgmHG0NVXcN@vger.kernel.org
X-Gm-Message-State: AOJu0YxmV7EQ/+Ymc+FdPuKhww1Qf2H10kfHCpgda31ptKXTFkjjaIHi
	lPc1tbZOz2UPnpuYTNSu6rxVzeFji/xcXNelG/8U0BrGfJv976CU/5IVXMdpem4=
X-Gm-Gg: ASbGncv5urK8C6Vrm99Vf4elc1w7oORAhyI4luYay8Dbwjas4zWrTagLO0kvfVgBoQv
	OD4O5E6beGoikwwzafJFDUklc8L51QyOPZnBWMV2Y5g8C5zKFk5jUC0SWCAAoCtTpVU8j3FnSpY
	QFCaUilzyp5g30UKWJuFtAejVuTpJoGgp8GNyarxUnrYXnLPkCrAD6NS7HtJOBflgRE85rtLDRC
	BPQKvch927hXbIBpKPUBt6c3XL2TlG978XJvHIkkqVFpWN/vtkjbZ+ErFrh6xNOORJ1IMC94rPy
	SbLk6k2+wQFU41hZr0QOTkTdcX0WI8bAYUTPV4grN6QyAdvfennnNC4gf9YB6J4=
X-Google-Smtp-Source: AGHT+IFQLedEpN/T/xP3t+SfyD2x7HKS8CDYDWPPHjI3S1V/tjpZzq1XfrShknc2cO3vCzsS/UQ4Tw==
X-Received: by 2002:a5d:588c:0:b0:391:3fde:1da with SMTP id ffacd0b85a97d-3997f8fa023mr11538944f8f.16.1742804295901;
        Mon, 24 Mar 2025 01:18:15 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a3f2asm10300753f8f.30.2025.03.24.01.18.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 01:18:14 -0700 (PDT)
Message-ID: <ea5de004-a26c-43a1-9408-0089fa18b44d@tuxon.dev>
Date: Mon, 24 Mar 2025 10:18:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 10/13] net: macb: Add "mobileye,eyeq5-gem"
 compatible
To: =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Samuel Holland <samuel.holland@sifive.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-mips@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>
References: <20250321-macb-v1-0-537b7e37971d@bootlin.com>
 <20250321-macb-v1-10-537b7e37971d@bootlin.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250321-macb-v1-10-537b7e37971d@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Theo,

On 21.03.2025 21:09, Théo Lebrun wrote:
> Add support for the two GEM instances inside Mobileye EyeQ5 SoCs, using
> compatible "mobileye,eyeq5-gem". With it, add a custom init sequence
> that accesses two system-controller registers.
> 
> Noteworthy: NET_IP_ALIGN=2 on MIPS but the hardware does not align and
> low bits aren't configurable, so we cannot respect the requested IP
> header alignment.
> 
> Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
> ---
>  drivers/net/ethernet/cadence/macb_main.c | 95 ++++++++++++++++++++++++++++++++
>  1 file changed, 95 insertions(+)
> 
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index 79161d559166478f85a6f8294d488ed961d9be7f..9f2a5bf9a5ebca5941229bd96091a0fb96f0607d 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -22,6 +22,7 @@
>  #include <linux/iopoll.h>
>  #include <linux/ip.h>
>  #include <linux/kernel.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/moduleparam.h>
>  #include <linux/netdevice.h>
> @@ -34,6 +35,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/ptp_classify.h>
> +#include <linux/regmap.h>
>  #include <linux/reset.h>
>  #include <linux/slab.h>
>  #include <linux/tcp.h>
> @@ -4967,6 +4969,86 @@ static int init_reset_optional(struct platform_device *pdev)
>  	return ret;
>  }
>  
> +#define EYEQ5_OLB_GP_TX_SWRST_DIS	BIT(0)		// Tx SW reset
> +#define EYEQ5_OLB_GP_TX_M_CLKE		BIT(1)		// Tx M clock enable
> +#define EYEQ5_OLB_GP_SYS_SWRST_DIS	BIT(2)		// Sys SW reset
> +#define EYEQ5_OLB_GP_SYS_M_CLKE		BIT(3)		// Sys clock enable
> +#define EYEQ5_OLB_GP_SGMII_MODE		BIT(4)		// SGMII mode
> +#define EYEQ5_OLB_GP_RGMII_DRV		GENMASK(8, 5)	// RGMII mode
> +#define EYEQ5_OLB_GP_SMA_DRV		GENMASK(12, 9)

Defines starting here:

> +#define EYEQ5_OLB_GP_RGMII_PD		BIT(13)		// RGMII pull-down
> +#define EYEQ5_OLB_GP_MDIO_PU		BIT(14)		// RGMII pull-up
> +#define EYEQ5_OLB_GP_RGMII_RX_ST	BIT(15)		// Schmitt trigger on RGMII Rx
> +#define EYEQ5_OLB_GP_RGMII_TX_ST	BIT(16)		// Schmitt trigger on RGMII Tx
> +#define EYEQ5_OLB_GP_MDIO_ST		BIT(17)
> +#define EYEQ5_OLB_GP_MDC_ST		BIT(18)
> +#define EYEQ5_OLB_GP_MBIST_ENABLE	BIT(19)

ending here are unused.

> +
> +#define EYEQ5_OLB_SGMII_PWR_EN		BIT(0)
> +#define EYEQ5_OLB_SGMII_RST_DIS		BIT(1)
> +#define EYEQ5_OLB_SGMII_PLL_EN		BIT(2)
> +#define EYEQ5_OLB_SGMII_SIG_DET_SW	BIT(3)
> +#define EYEQ5_OLB_SGMII_PWR_STATE_MASK	GENMASK(8, 4)

Unused


> +#define EYEQ5_OLB_SGMII_PWR_STATE	BIT(4)
> +#define EYEQ5_OLB_SGMII_TX_ELECT_IDLE	BIT(9)		// Tx elect idle

Unused

> +#define EYEQ5_OLB_SGMII_POWER_ACK	BIT(16)

Unused

> +#define EYEQ5_OLB_SGMII_PLL_ACK		BIT(18)
> +#define EYEQ5_OLB_SGMII_SIG_DET		BIT(19)
> +#define EYEQ5_OLB_SGMII_PWR_STATE_ACK	GENMASK(24, 20)

Unused.

> +
> +static int eyeq5_init(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct net_device *netdev = platform_get_drvdata(pdev);
> +	struct macb *bp = netdev_priv(netdev);
> +	struct device_node *np = dev->of_node;
> +	unsigned int gp, sgmii;
> +	struct regmap *regmap;
> +	unsigned int args[2];
> +	unsigned int reg;
> +	int ret;
> +
> +	regmap = syscon_regmap_lookup_by_phandle_args(np, "mobileye,olb", 2, args);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	gp = args[0];
> +	sgmii = args[1];
> +
> +	/* Forced reset */
> +	regmap_write(regmap, gp, 0);
> +	regmap_write(regmap, sgmii, 0);
> +	usleep_range(5, 20);
> +
> +	if (bp->phy_interface == PHY_INTERFACE_MODE_SGMII) {
> +		regmap_write(regmap, gp, EYEQ5_OLB_GP_SGMII_MODE);
> +
> +		reg = EYEQ5_OLB_SGMII_PWR_EN | EYEQ5_OLB_SGMII_RST_DIS |
> +		      EYEQ5_OLB_SGMII_PLL_EN;
> +		regmap_write(regmap, sgmii, reg);
> +
> +		ret = regmap_read_poll_timeout(regmap, sgmii, reg,
> +					       reg & EYEQ5_OLB_SGMII_PLL_ACK,
> +					       1, 100);
> +		if (ret)
> +			return dev_err_probe(dev, ret, "PLL timeout");
> +
> +		regmap_read(regmap, sgmii, &reg);
> +		reg |= EYEQ5_OLB_SGMII_PWR_STATE | EYEQ5_OLB_SGMII_SIG_DET_SW;
> +		regmap_write(regmap, sgmii, reg);

You can use regmap_update_bits() here.

> +	}
> +
> +	regmap_read(regmap, gp, &reg);
> +	reg &= ~EYEQ5_OLB_GP_RGMII_DRV;
> +	if (phy_interface_mode_is_rgmii(bp->phy_interface))
> +		reg |= FIELD_PREP(EYEQ5_OLB_GP_RGMII_DRV, 0x9);
> +	reg |= EYEQ5_OLB_GP_TX_SWRST_DIS | EYEQ5_OLB_GP_TX_M_CLKE;
> +	reg |= EYEQ5_OLB_GP_SYS_SWRST_DIS | EYEQ5_OLB_GP_SYS_M_CLKE;
> +	regmap_write(regmap, gp, reg);

To me it looks like this code could be abstracted as a phy driver. E.g.,
check the init_reset_optional() and its usage on "cdns,zynqmp-gem" (phy
driver here: drivers/phy/xilinx/phy-zynqmp.c).


> +
> +	return macb_init(pdev);
> +}
> +
>  static const struct macb_usrio_config sama7g5_usrio = {
>  	.mii = 0,
>  	.rmii = 1,
> @@ -5135,6 +5217,18 @@ static const struct macb_config versal_config = {
>  	.usrio = &macb_default_usrio,
>  };
>  
> +static const struct macb_config eyeq5_config = {
> +	.caps = MACB_CAPS_GIGABIT_MODE_AVAILABLE | MACB_CAPS_JUMBO |
> +		MACB_CAPS_GEM_HAS_PTP | MACB_CAPS_QUEUE_DISABLE |
> +		MACB_CAPS_NO_LSO,
> +	.hw_ip_align = 0,
> +	.dma_burst_length = 16,
> +	.clk_init = macb_clk_init,
> +	.init = eyeq5_init,
> +	.jumbo_max_len = 10240,
> +	.usrio = &macb_default_usrio,
> +};
> +
>  static const struct of_device_id macb_dt_ids[] = {
>  	{ .compatible = "cdns,at91sam9260-macb", .data = &at91sam9260_config },
>  	{ .compatible = "cdns,macb" },
> @@ -5152,6 +5246,7 @@ static const struct of_device_id macb_dt_ids[] = {
>  	{ .compatible = "cdns,zynqmp-gem", .data = &zynqmp_config}, /* deprecated */
>  	{ .compatible = "cdns,zynq-gem", .data = &zynq_config }, /* deprecated */
>  	{ .compatible = "sifive,fu540-c000-gem", .data = &fu540_c000_config },
> +	{ .compatible = "mobileye,eyeq5-gem", .data = &eyeq5_config },

Maybe move it after microchip to have it a bit sorted.

Thank you,
Claudiu

>  	{ .compatible = "microchip,mpfs-macb", .data = &mpfs_config },
>  	{ .compatible = "microchip,sama7g5-gem", .data = &sama7g5_gem_config },
>  	{ .compatible = "microchip,sama7g5-emac", .data = &sama7g5_emac_config },
> 


