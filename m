Return-Path: <devicetree+bounces-109323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CC786996103
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:37:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B3881F21B40
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D78183CC2;
	Wed,  9 Oct 2024 07:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="fNMtd12n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8112884E18
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728459455; cv=none; b=Q0HtbVxsTuhfXieVJ89+GpoUiII3xFo+o47H8nAp9IDTPJjWH9F5FKfR5ed8stuwODa1d8xPQNqwDpXLi0uigAKS4tbIewnHIqlzdVwjyd5Cgf47LJYbn/X15FTHTzCQzJxo4wug62JKUsetaqj2WmzBn5LINlgRHuWahWTl8QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728459455; c=relaxed/simple;
	bh=MOcso2TiwoNo/ppoZrIKfHDSm6CslDbDI3cXRFZ/C9A=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=OvuJz43vfa/4+hTkr+o6SeImpPP+F/U8PaUlvC6PCVVmEXe2HP64459vEmIKrSAwjC5YIV/Oh2thNeD+mIWuyDi/CX48v+ywy7pxRfs2iIoRCd3ZQABSlSs2BRWSXRUdadn6OTNYfeFUhQZWKZvXkN5YiS7MGikT8kqESCCRBRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=fNMtd12n; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728459451;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AbWJb505WIa4s94mFp8zyjinYDs5YYe1TRbBJaJlz4c=;
	b=fNMtd12n1HUt/Pfi2vyUactjFuzeZsFTFwjhJ5itdEDfS4AIU9vwLOGNHFVdMP8ywgiYtB
	tap+s/jWaDTouRZWvxfQccLu/+7Zb+UxA/3uVUTBfE9FVRo87G7cWCpyEGlTKPNzywEzLf
	txYD6fvD3jf0f8x5IHCCH9xlEf62rvaexEchjQDDZWjfMIUBFa1ONXo0NbEJAno3x7ZglJ
	MD7XYvXntvev2ruYRbBmLSSvaP5AULMd44uVqBZkc7tLyY0dSrauso5T7gnyLBiJMzIm18
	Iv3fs0o3tHikss9ybK36JXbQUMzsdYaXC56STtx1/YTWVXx0xFO6w5FRSFLiiw==
Date: Wed, 09 Oct 2024 09:37:31 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Caesar
 Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v2 12/14] ARM: dts: rockchip: drop grf reference from
 rk3036 hdmi
In-Reply-To: <20241008203940.2573684-13-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-13-heiko@sntech.de>
Message-ID: <9f75abfcf0406238cae0cce694feec88@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> Neither the binding nor the driver implementation specify/use the grf
> reference provided in the rk3036. And neither does the newer rk3128
> user of the hdmi controller. So drop the rockchip,grf property.
> 
> Fixes: b7217cf19c63 ("ARM: dts: rockchip: add hdmi device node for 
> rk3036")
> Cc: Caesar Wang <wxt@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  There's nothing about the
"rockchip,grf" property in drivers/gpu/drm/rockchip/inno_hdmi.c.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm/boot/dts/rockchip/rk3036.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index 37369538483f..09371f07d7b4 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -400,7 +400,6 @@ hdmi: hdmi@20034000 {
>  		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
>  		clocks = <&cru  PCLK_HDMI>;
>  		clock-names = "pclk";
> -		rockchip,grf = <&grf>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&hdmi_ctl>;
>  		#sound-dai-cells = <0>;

