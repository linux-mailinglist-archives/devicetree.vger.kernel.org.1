Return-Path: <devicetree+bounces-109332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BDA996138
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:43:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D951E1C22466
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDB841865E6;
	Wed,  9 Oct 2024 07:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="iXPR7tY8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210DE185B78
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728459756; cv=none; b=hmvrFFzOEkb6H/FlvvUnMY0WG+RWCYMRIIeMCLuXxzdgAFAunxIAok7tZJIpKRU1cvFK5m6JZNjtR++SVweoh4hbdV952XlQIRROC25Fef4a5kNoV7bgpdJ9s7R+4zXFP6v4gLKrxgoMGHkEbFm0AaZ3QhyBbbwk3xK9u7gEWYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728459756; c=relaxed/simple;
	bh=pFW/nT0EjaQY7XVATE4I66z1A1PPzTrNH6tWieaGPEM=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=CHI9XDrCpiQI7vXBZdskE2lomQf6jfW0rBsy6IJQSmMLzfHrwgiPffS1y0R+2M5ALvRE6ZtdfmlKyxcjzq/mU6aSLI7ZHy7R7AzLoMoRWzx1ufNkKPhv4rgrCaDqvQmYDsWVC9vqkpi541gU0Q5t9sRlsS/8qS/TP1fTsoLcHp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=iXPR7tY8; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728459753;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iZkPBbRSepvAA/AJkm6TNe9b3MmJazsErRm3wcrYPlA=;
	b=iXPR7tY8UXX+GJ2VbkU4ERkSe/+4svjnd3dqAd/4GbfIi7VBCiR0jTjsNXtMtSnr/8FQuN
	SVFATgW9R5O/sSTAPaimvLh63TIz+0gOLfMCV+bssLkOHs1Iz5juRg4cfpxcQ7IfVJ1QYl
	tIG0/7G/oiGr6NcpoZ4iHY+MMHCRooCLrB1BGJWzs0IZ3dCtMeBzmAxmcY6AdA0TLyzBxn
	gbY+WRJjrr+5RnPCQz7hWTtQQ6Rkk6ZpAGRwoen3xYqfo70GXLNdJphX87bNi9YKdxQHx3
	BnBWKMc6kWVbekkYXzpeqiJSaWxw3+N75Kradm3tqIIpisH505hud61+FEgWhw==
Date: Wed, 09 Oct 2024 09:42:32 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Caesar
 Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v2 13/14] ARM: dts: rockchip: Fix the spi controller on
 rk3036
In-Reply-To: <20241008203940.2573684-14-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-14-heiko@sntech.de>
Message-ID: <fd4b7e8678e59a3911442227300879da@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> Compatible and clock names did not match the existing binding.
> So set the correct values and re-order+rename the clocks.
> 
> It looks like no rk3036 board did use the spi controller so far,
> so this was never detected on a running device yet.

Wow, that's quite surprising.

> Fixes: f629fcfab2cd ("ARM: dts: rockchip: support the spi for rk3036")
> Cc: Caesar Wang <wxt@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  It all matches with
what drivers/spi/spi-rockchip.c actually expects.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm/boot/dts/rockchip/rk3036.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index 09371f07d7b4..63b9912be06a 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -553,11 +553,11 @@ i2c0: i2c@20072000 {
>  	};
> 
>  	spi: spi@20074000 {
> -		compatible = "rockchip,rockchip-spi";
> +		compatible = "rockchip,rk3036-spi";
>  		reg = <0x20074000 0x1000>;
>  		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&cru PCLK_SPI>, <&cru SCLK_SPI>;
> -		clock-names = "apb-pclk","spi_pclk";
> +		clocks = <&cru SCLK_SPI>, <&cru PCLK_SPI>;
> +		clock-names = "spiclk", "apb_pclk";
>  		dmas = <&pdma 8>, <&pdma 9>;
>  		dma-names = "tx", "rx";
>  		pinctrl-names = "default";

