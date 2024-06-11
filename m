Return-Path: <devicetree+bounces-74511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBFF9038A3
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 12:16:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 23A3AB21FF6
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 10:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03592178CD9;
	Tue, 11 Jun 2024 10:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCcERj+i"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3E4174EE2;
	Tue, 11 Jun 2024 10:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718100940; cv=none; b=l4GtfwUBA/ivfNCXzqEZm2u6BkhcTpStK/oi8fpzEixmm9JaH+2USlYMBe1xXKWTQM3QpM3Ie7/FMNRie3Lw7ImS8r2wD50y0XXw3ASFtq7l8GLvktOgSOc7CyBY2fdlknIBAW1saq61nrqDpZ+E6g5ivHsjjhRLNX2u4/6gQos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718100940; c=relaxed/simple;
	bh=lwtvF8TxyoK5ymJEUqL+Fdnx72KICz4bi8hcR1ZN2pk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uBK9ri1mFDNK2vC/yVIJchG+Qyydw4S4RWqrml7r4tZcPsJlmT1EiFJbxJl1M/DDqtg71PTnkUKGvmRc43VbxE4uwFV2SR4mNhIzip/M3v21U0xTODIaCXiWK3fLfmS8WVY8Lb5LcPY1T/YtA+6XnPXKNAVYbf3+Phz/1TiW9Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCcERj+i; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EAA0C2BD10;
	Tue, 11 Jun 2024 10:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718100940;
	bh=lwtvF8TxyoK5ymJEUqL+Fdnx72KICz4bi8hcR1ZN2pk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WCcERj+iqpu+bZrTYQgOyGthvcZ/X2gu2+GqD1bh3N3awgteDMG9mU+ACV+3pLH4R
	 XskRK+Cwj2BK6OmWFJ2prqWvoXbpWi/fv0AAcF5SCxPI5dvLkplU1gG5bF4BquXc48
	 3FdozzoIzVNDlT4MU0bfZCi6cy9FWQp16bUJNxTf/CQs380s3QWDQw7ZXKShlr6mv1
	 +roaCUeCOoUwe03l9bXJIY26YI51b0e/VuqHM45uIb/tLDkv4kJi9AVCWPUCkv24aG
	 48WWBZQ34zOGhJhiuJ5Ot9doIBsmw89AEGSiNn1Mvbca22RkVbLntiBFZI4A/C/Evd
	 oo0NoeTHwe1rQ==
Message-ID: <6cd2897f-a61d-4351-abac-714bae2ab154@kernel.org>
Date: Tue, 11 Jun 2024 12:15:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Patch v2 1/2] ASoC: fsl: Add i2s and pcm drivers for LPC32xx
 CPUs
To: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Russell King <linux@armlinux.org.uk>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Chancel Liu <chancel.liu@nxp.com>,
 Arnd Bergmann <arnd@arndb.de>, Michael Ellerman <mpe@ellerman.id.au>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 alsa-devel@alsa-project.org, linuxppc-dev@lists.ozlabs.org
References: <[PATCH] ASoC: fsl: Add i2s and pcm drivers for LPC32xx CPUs>
 <20240611094810.27475-1-piotr.wojtaszczyk@timesys.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240611094810.27475-1-piotr.wojtaszczyk@timesys.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/06/2024 11:47, Piotr Wojtaszczyk wrote:
> This driver was ported from an old version in linux 2.6.27 and adjusted
> for the new ASoC framework and DMA API.
> 
> Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
> ---
> Changes for v2:
> - Coding Style cleanup
> - Use dev_err_probe() for error handling in probe function
> - Removed unneded err_clk_disable label
> - Removed empty function
> - Droped of_match_ptr in lpc32xx_i2s_match DT match table
> - ASoC struct adjustmes for the latest 6.10-rc3 kernel
> 
>  MAINTAINERS                            |   7 +

1:
>  arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi |   4 +

2:
>  arch/arm/mach-lpc32xx/phy3250.c        |  60 ++++

3:
>  sound/soc/fsl/Kconfig                  |   7 +
>  sound/soc/fsl/Makefile                 |   2 +
>  sound/soc/fsl/lpc3xxx-i2s.c            | 383 +++++++++++++++++++++++++
>  sound/soc/fsl/lpc3xxx-i2s.h            |  94 ++++++
>  sound/soc/fsl/lpc3xxx-pcm.c            |  75 +++++

Three separate subsystems, so three separate patches.

>  8 files changed, 632 insertions(+)
>  create mode 100644 sound/soc/fsl/lpc3xxx-i2s.c
>  create mode 100644 sound/soc/fsl/lpc3xxx-i2s.h
>  create mode 100644 sound/soc/fsl/lpc3xxx-pcm.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index aacccb376c28..7616f61d6327 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8909,6 +8909,13 @@ S:	Maintained
>  F:	sound/soc/fsl/fsl*
>  F:	sound/soc/fsl/imx*
>  
> +FREESCALE SOC LPC32XX SOUND DRIVERS
> +M:	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
> +L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
> +L:	linuxppc-dev@lists.ozlabs.org
> +S:	Orphan

Not sure if we want it in the first place. Why would we like to support
orphaned drivers? Sorry, if there is no one to care about it, then it
should not be merged.

...

> +
> +static int lpc32xx_i2s_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct lpc3xxx_i2s_info *i2s_info_p;
> +	struct resource *res;
> +	void __iomem *iomem;
> +	int ret;
> +
> +	i2s_info_p = devm_kzalloc(dev, sizeof(*i2s_info_p), GFP_KERNEL);
> +	if (!i2s_info_p)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, i2s_info_p);
> +	i2s_info_p->dev = dev;
> +
> +	iomem = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
> +	if (IS_ERR(iomem))
> +		return dev_err_probe(dev, PTR_ERR(iomem), "Can't map registers\n");
> +
> +	i2s_info_p->regs = devm_regmap_init_mmio(dev, iomem, &lpc32xx_i2s_regconfig);
> +	if (IS_ERR(i2s_info_p->regs))
> +		return dev_err_probe(dev, PTR_ERR(i2s_info_p->regs),
> +				     "failed to init register map: %d\n", ret);
> +
> +	i2s_info_p->clk = devm_clk_get(dev, "i2s_clk");
> +	if (IS_ERR(i2s_info_p->clk))
> +		return dev_err_probe(dev, PTR_ERR(i2s_info_p->clk), "Can't get clock\n");
> +
> +	i2s_info_p->clkrate = clk_get_rate(i2s_info_p->clk);
> +	if (i2s_info_p->clkrate == 0)
> +		return dev_err_probe(dev, -EINVAL, "Invalid returned clock rate\n");
> +
> +	mutex_init(&i2s_info_p->lock);
> +
> +	ret = devm_snd_soc_register_component(dev, &lpc32xx_i2s_component,
> +					      &lpc3xxx_i2s_dai_driver, 1);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Can't register cpu_dai component\n");
> +
> +	i2s_info_p->playback_dma_config.addr = (dma_addr_t)(res->start + I2S_TX_FIFO);
> +	i2s_info_p->playback_dma_config.maxburst = 4;
> +	i2s_info_p->playback_dma_config.filter_data = "i2s-tx";
> +	i2s_info_p->capture_dma_config.addr = (dma_addr_t)(res->start + I2S_RX_FIFO);
> +	i2s_info_p->capture_dma_config.maxburst = 4;
> +	i2s_info_p->capture_dma_config.filter_data = "i2s-rx";
> +
> +	ret = lpc3xxx_pcm_register(pdev);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Can't register pcm component\n");
> +
> +	return 0;
> +}
> +
> +static int lpc32xx_i2s_remove(struct platform_device *pdev)
> +{
> +	return 0;
> +}

You did not respond to comment about this. Drop.


Best regards,
Krzysztof


