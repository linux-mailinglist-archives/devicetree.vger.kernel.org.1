Return-Path: <devicetree+bounces-125887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F249DF9B3
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 04:55:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35A7528156E
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 03:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 272A5165F09;
	Mon,  2 Dec 2024 03:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="bP8Ukc/l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D5E17C2
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 03:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733111708; cv=none; b=OmumOF+AGnE+7qFi/iM5UIYQr3NdNS+dTiJ9QQZxPh/uQLCMpA7YHTxIFmTD/2slAfmsovbIHtC+RlGXJ3XYejLNT1hUweUC9aY7EEy5OqMWPRMkAH6L/zPsnpUFfNHFrBpvOSrdFvjy+NbBi9Tegcm5fX4/kV2I8bveiU+PSiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733111708; c=relaxed/simple;
	bh=L7GtHfORJEA/zVGwl8Yz/YrzFENt1h3AwEYpTi3JDtw=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=lk2fOD8maZcAJvg3p9Zsu8cKj5ZjHEY3hC3gcSg5mjmcbYB0i3qkGIISWobHEqpIwuwb03zXSr5i1Aa4CIztCFy1e6bJpEFSmfmDyB5o6nkUAylitUnE2Xtpo5i7u7X1Jzry9d2e6Ok7QPtY3R/JMo9AJ2C7t6+lCadwBeFIptw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=bP8Ukc/l; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733111704;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=964CsZFa0DtdYQz702jag30/6F8XCIRo36K7Z0RRRTU=;
	b=bP8Ukc/lpLFkUHoG6g6sdznQyR5ivg8vmC7QZjMRvwKpheOA2Gi+CcB1aS7jf764fqwKK1
	4STa9w5npVT6Xoc2tuVzvQcFc9tN+9VK95y2G+uldqyX6qK22uAGyEAjNAfrHddqseSRCv
	L+eLVDF1i6C6WeVEmV6BX381R4SfZgvX3556DPPoZYiYeksgu4tUxTJ6oGBJpLKD5PWgjC
	VDwQSIQLE1HgkvHSjqZb2lPPbZTCPcvigWoKfyQRxuD3a+MxPT40TdZMIOS2FxRfRDWZ9A
	XJGpg9ZVTx8p78uB712B9CWUgFCv+CLoY1Leo5AV77vyf1b0mw8eXulObf33zQ==
Date: Mon, 02 Dec 2024 04:55:03 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable rng on all rk356x
In-Reply-To: <20241201234613.52322-1-pbrobinson@gmail.com>
References: <a> <20241201234613.52322-1-pbrobinson@gmail.com>
Message-ID: <302bdae2f4defeefe88ea4018a0be11f@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Peter,

On 2024-12-02 00:46, Peter Robinson wrote:
> The rk356x rng is available on both the rk3566 and rk3568
> parts, the IP is all self contained within the SoCs so
> it's enabled already by default on rk3568 so let's enable
> it in the base rk356x.dtsi so it's enabled consistently
> everywhere.

Please, go through the mailing list threads [1][2] that have led us
to the current state.  To sum it up, it isn't about what's supported
in the two RK356x SoC variants, but about the RK3566's HWRNG being
disabled because the testing showed that it produces unacceptably
low quality of random data, for some yet unknown reason.

[1] 
https://lore.kernel.org/linux-rockchip/cover.1720969799.git.daniel@makrotopia.org/T/#u
[2] 
https://lore.kernel.org/linux-rockchip/cover.1722355365.git.daniel@makrotopia.org/T/#u

> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 4 ----
>  arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 1 -
>  2 files changed, 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index ecaefe208e3e..9dc09db5034d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -397,10 +397,6 @@ power-domain@RK3568_PD_PIPE {
>  	};
>  };
> 
> -&rng {
> -	status = "okay";
> -};
> -
>  &usb_host0_xhci {
>  	phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
>  	phy-names = "usb2-phy", "usb3-phy";
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> index 62be06f3b863..2994cddb3464 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> @@ -1038,7 +1038,6 @@ rng: rng@fe388000 {
>  		clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
>  		clock-names = "core", "ahb";
>  		resets = <&cru SRST_TRNG_NS>;
> -		status = "disabled";
>  	};
> 
>  	i2s0_8ch: i2s@fe400000 {

