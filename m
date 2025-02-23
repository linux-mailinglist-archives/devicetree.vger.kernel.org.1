Return-Path: <devicetree+bounces-149924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D9FA40D3A
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 08:17:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8028D1898977
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 07:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98BF9524B0;
	Sun, 23 Feb 2025 07:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="dgNJ0Qel"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF3D412B63
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 07:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740295031; cv=none; b=cJKn0E0AGqoI+c9mxrTWM9srWHk1oV9LbZnZ8PVQ547jBJBC91itdN+n6hj98cwKVVQw7bGx1uURT7QOX2cuafsXeOphJ5MOOsVMC+hyiV+1x+faQzYCThzOK+Nu5p4YrjdnDm8l5PKYXyPT8o/93//knr8U4BnThvv5VlBsCco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740295031; c=relaxed/simple;
	bh=mX3LVv/cobxwDXr9OZFWDmonGPemuXVlCTCX/kPoSj4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uoESURF5AIcGN9bQvcXPWnlCY/z25n3nK+nIEqEj4zdbvh17X3PXx09AprF1gr+KZzeqCtFBgY2QZnh5lkjKMWYGf4W0xXS89vsZFn3BS9mN25bUomlJvGTjyBVWCf5T4GqtxumRxWvGfLXrSpHv/y/kczEohM9igrRe4l+cj0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=dgNJ0Qel; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=b6vCqpN/5HuZQgBmiAxz4UUgNvspDYiuUeIfB/A1j8k=;
	b=dgNJ0QelQ/ROLJbumLMULkQoKtZXXL1i/EwFo2Uc9GYIhVYrAeuZjlgGbUYHvX
	V4IRtC6EKgHynZ5bHt3OE13llDlXWyT5pA4s08GL1Od4pI/le255DAm4wL9iBfuL
	n+0NjWNGujwEqkFyA7/1yP+eDanygALddJMnR+r0ybF5o=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgB3MO9Yy7pntFqLCQ--.21466S3;
	Sun, 23 Feb 2025 15:16:42 +0800 (CST)
Date: Sun, 23 Feb 2025 15:16:40 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	patchwork-lst@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mp: configure GPU and NPU clocks to
 overdrive rate
Message-ID: <Z7rLWJ52aUqGkFiY@dragon>
References: <20250204182737.3361431-1-l.stach@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204182737.3361431-1-l.stach@pengutronix.de>
X-CM-TRANSID:M88vCgB3MO9Yy7pntFqLCQ--.21466S3
X-Coremail-Antispam: 1Uf129KBjvJXoWxWFWkAw1Utry8urWkKw48JFb_yoW5Xr4Up3
	ZFyw42kF40yr10v34xtwn5Xr1UtayrZF1xWry2ga48Aw1YyF92qF13Jay3uaykXr1xZ3y0
	9ry3tr1SyFs0kaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jwL05UUUUU=
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCQn8ZWe6mgGjTgAAsy

On Tue, Feb 04, 2025 at 07:27:37PM +0100, Lucas Stach wrote:
> A lot of other clocks on the i.MX8MP, including the DRAM set up by the
> bootloader are already running at overdrive clock rates. While this is a
> deviation from the configuration of other i.MX8M* family SoCs, overdrive
> is the default for most i.MX8MP boards and only some special purpose
> boards will choose to run the SoC at nominal drive rates.

Are any of these special purpose boards in upstream?  If so, does this
change have any impact on them?

Shawn

> Up the GPU and
> NPU clock rates to their overdrive level to be consistent with other
> clocks set up in the dtsi.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index e0d3b8cba221..aeaa6a5c2f56 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -816,12 +816,12 @@ pgc_mlmix: power-domain@4 {
>  						assigned-clocks = <&clk IMX8MP_CLK_ML_CORE>,
>  								  <&clk IMX8MP_CLK_ML_AXI>,
>  								  <&clk IMX8MP_CLK_ML_AHB>;
> -						assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
> +						assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>,
>  									 <&clk IMX8MP_SYS_PLL1_800M>,
>  									 <&clk IMX8MP_SYS_PLL1_800M>;
> -						assigned-clock-rates = <800000000>,
> +						assigned-clock-rates = <1000000000>,
>  								       <800000000>,
> -								       <300000000>;
> +								       <400000000>;
>  					};
>  
>  					pgc_audio: power-domain@5 {
> @@ -2232,9 +2232,9 @@ gpu3d: gpu@38000000 {
>  			clock-names = "core", "shader", "bus", "reg";
>  			assigned-clocks = <&clk IMX8MP_CLK_GPU3D_CORE>,
>  					  <&clk IMX8MP_CLK_GPU3D_SHADER_CORE>;
> -			assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
> -						 <&clk IMX8MP_SYS_PLL1_800M>;
> -			assigned-clock-rates = <800000000>, <800000000>;
> +			assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>,
> +						 <&clk IMX8MP_SYS_PLL2_1000M>;
> +			assigned-clock-rates = <1000000000>, <1000000000>;
>  			power-domains = <&pgc_gpu3d>;
>  		};
>  
> @@ -2247,8 +2247,8 @@ gpu2d: gpu@38008000 {
>  				 <&clk IMX8MP_CLK_GPU_AHB>;
>  			clock-names = "core", "bus", "reg";
>  			assigned-clocks = <&clk IMX8MP_CLK_GPU2D_CORE>;
> -			assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
> -			assigned-clock-rates = <800000000>;
> +			assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
> +			assigned-clock-rates = <1000000000>;
>  			power-domains = <&pgc_gpu2d>;
>  		};
>  
> 
> base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
> -- 
> 2.39.5
> 


