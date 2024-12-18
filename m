Return-Path: <devicetree+bounces-132294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF99B9F6627
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 13:46:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08E0D1692DA
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B669A1A239C;
	Wed, 18 Dec 2024 12:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="pZ1IiM/G"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9E4191F79;
	Wed, 18 Dec 2024 12:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734525963; cv=none; b=rflXQoR+3qkszEHnKu1V/rLcvSpwCS3f7+yIxlFELc8Il03vQ2JhTh/CgiDMpZCyEugFVIFRZSSJVH4kXpFWKFBlz5CmrdqOBPzzh9wHzl9Tbxj9ZgFF4cTF1y6Kmd8EUWHgcQa/JDyvu1+Tc134vDH6HFXZH1qNqTbzia7qcI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734525963; c=relaxed/simple;
	bh=ZV3h1pD+Suny5rJTJGIp4lbIaUqI+Z+kDKTv/NQdZrc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bcNrU0mXh3T2ldldbzz5zY6Aehr+s1DZdzvCqkKwzKrtXV/B2Zw37YFOnMGLJOInI5pxtqBrmPzccwf+Ij+94lJIZiFMirYMm9t6f/ABrz9v17hgsG3iIgSwkKYZ6kVssKVY+rqQOMQ+kM53bMuYo23dGw7svf6pSqjRxnEbBww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=pZ1IiM/G; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=TLJpu+b23LSwwdvL7n7XLGKUllrDriyC6Kq2l3Yieb8=; b=pZ1IiM/GepDBlm0BzCnzLzCJVS
	3TV/p+VgoCYxMIjBPchJKO8Z/heOB3k1A9MhaR6+1FK6XaNs8lxNEhe1qWzjm2QvkxkPPVZCCxOBu
	stQz1ybGI9V+vhkgK/G9RndtK3WZnpSiMcyK6Zlv9XmcdpZdHhdN023CUQYoGxEuNL2wEHS9KgpQk
	w4Xf3CDWuSeLuDenMdS3LBNRRcxM6rWuvlivsuWmbHOVUx2sMRsIvsx+UgMKW/DIjUJDadPC0GtB1
	VttAj5eE9fp63i42Q3OYcwgvy1Jajki7fZL+DRT0JUR3WaTqH2d8nn+1PqVyfnSGPZVGC8s1W5XKZ
	x+Y0HQsg==;
Received: from i53875bfb.versanet.de ([83.135.91.251] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tNtR5-0000QS-4R; Wed, 18 Dec 2024 13:45:55 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com,
 cristian.ciocaltea@collabora.com, l.stach@pengutronix.de,
 andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com,
 kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>
Subject:
 Re: [PATCH v2 11/11] arm64: dts: rockchip: Add nodes related to eDP1 for
 RK3588
Date: Wed, 18 Dec 2024 13:45:54 +0100
Message-ID: <2173171.OBFZWjSADL@diego>
In-Reply-To: <20241216031225.3746-12-damon.ding@rock-chips.com>
References:
 <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-12-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Damon,

Am Montag, 16. Dezember 2024, 04:12:25 CET schrieb Damon Ding:
> The related nodes are hdptxphy1_grf, hdptxphy1 and edp1. And the
> aliases edp0 and edp1 are added to separate two independent eDP
> devices.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../arm64/boot/dts/rockchip/rk3588-extra.dtsi | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> index 0ce0934ec6b7..17cc0b619744 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> @@ -7,6 +7,11 @@
>  #include "rk3588-extra-pinctrl.dtsi"
>  
>  / {
> +	aliases {
> +		edp0 = &edp0;
> +		edp1 = &edp1;
> +	};
> +

drop aliases please


> @@ -67,6 +72,11 @@ u2phy1_otg: otg-port {
>  		};
>  	};
>  
> +	hdptxphy1_grf: syscon@fd5e4000 {
> +		compatible = "rockchip,rk3588-hdptxphy-grf", "syscon";
> +		reg = <0x0 0xfd5e4000 0x0 0x100>;
> +	};
> +
>  	i2s8_8ch: i2s@fddc8000 {
>  		compatible = "rockchip,rk3588-i2s-tdm";
>  		reg = <0x0 0xfddc8000 0x0 0x1000>;

> @@ -395,6 +434,22 @@ sata-port@0 {
>  		};
>  	};
>  
> +	hdptxphy1: phy@fed70000 {
> +		compatible = "rockchip,rk3588-hdptx-phy";
> +		reg = <0x0 0xfed70000 0x0 0x2000>;
> +		clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>, <&cru PCLK_HDPTX1>;
> +		clock-names = "ref", "apb";
> +		#phy-cells = <0>;
> +		resets = <&cru SRST_HDPTX1>, <&cru SRST_P_HDPTX1>,
> +			 <&cru SRST_HDPTX1_INIT>, <&cru SRST_HDPTX1_CMN>,
> +			 <&cru SRST_HDPTX1_LANE>, <&cru SRST_HDPTX1_ROPLL>,
> +			 <&cru SRST_HDPTX1_LCPLL>;
> +		reset-names = "phy", "apb", "init", "cmn", "lane", "ropll",
> +			      "lcpll";
> +		rockchip,grf = <&hdptxphy1_grf>;
> +		status = "disabled";
> +	};

the hdptxphy nodes should be their own patch, also because most likely
Cristian's patch for hdmi1 [0] will be slightly faster.


[0] https://lore.kernel.org/r/20241211-rk3588-hdmi1-v2-2-02cdca22ff68@collabora.com




