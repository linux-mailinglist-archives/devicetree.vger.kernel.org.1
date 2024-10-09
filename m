Return-Path: <devicetree+bounces-109319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 860B99960CB
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:26:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F6A21F21465
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C35C916631C;
	Wed,  9 Oct 2024 07:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="pM6Vk7nI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D8142070
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728458794; cv=none; b=kpxETyd+0VWFk1/bek043Qb9vdTKBSmVZlc3v3mAvT8dU/1iCmPI6wQprpLCiMQHJGSUERVi87e1yDUIgLPt8p4ithxym8etsHu2aYasnYcexAgAhxs6hmygLsSUSgcnRhQVKEu0hqy86UjmLa0wybuvXpyf1jjoH0D0ZBMIxMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728458794; c=relaxed/simple;
	bh=mCjR6lvCsuaXRJpM6QReDHxyn6wA3rKhFFW0ShRy/28=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=LmrQQqrvZSA11cSxMdIGx/GAIz3oGA6FMzMhoBZqTSgTmyzT4lUdZ6NOs3jepJ/CMskHtjmKsjhZ6t+YhS0GaGwtJDYamaGb3CqFuqk2iPqYMNP9MLHqp4wxczLUGdLOnf7osteLXT/9EukZLo7M2K4slUYK13KdSFOYJSUGyOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=pM6Vk7nI; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728458790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g8NBbsg2U9zV9iA6cedWwT4mdfKXU/bO9gUUqrFHKwY=;
	b=pM6Vk7nIhBNLKE5YXjc2goR2zfXNKwIDhEYuevFlhZI94mXb4gvR+8DiqOgVbe6lJOccAc
	c2eXzcDVuiFqMuT0vK9UzqcIl3UFSQqFkRSOxe4O0fffzzg/G4XMsBrOvmI2KnbSIVrIce
	ys4eMWtaWE6DHNPF6cThzw+KNUE3qto1BIOIcB0F3TDGHst9Wb40e5mRN1DalsM5QJN/tH
	Tfz6O+dUwitIycmBtTbHC4QVQrdTcNjdnPWEGdTGCJPCOuuG+a9ztJpGQS7PzjABgUG9Gz
	V21Qy0Jkr9I6EbVQe7r7dfBr2ryjm2cMk7gSVriSWr6M7NsrMQ0KkLEGKpCTnA==
Date: Wed, 09 Oct 2024 09:26:30 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Michael
 Riesch <michael.riesch@wolfvision.net>, Muhammed Efe Cetin <efectn@6tel.net>
Subject: Re: [PATCH v2 09/14] arm64: dts: rockchip: Remove 'enable-active-low'
 from two boards
In-Reply-To: <20241008203940.2573684-10-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-10-heiko@sntech.de>
Message-ID: <0621088b23e24ddec4076267bdfa1a39@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> The 'enable-active-low' property is not a valid, because it is the

s/is not a valid/is not valid/

> default behaviour of the fixed regulator.
> 
> Only 'enable-active-high' is valid, and when this property is absent
> the fixed regulator will act as active low by default.
> 
> Both the rk3588-orange-pi-5 and the Wolfvision pf5 io expander overlay
> smuggled those enable-active-low properties in, so remove them to
> make dtbscheck happier.
> 
> Fixes: 28799a7734a0 ("arm64: dts: rockchip: add wolfvision pf5 io
> expander board")
> Cc: Michael Riesch <michael.riesch@wolfvision.net>
> Fixes: b6bc755d806e ("arm64: dts: rockchip: Add Orange Pi 5")
> Cc: Muhammed Efe Cetin <efectn@6tel.net>
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  According to the bindings
in Documentation/devicetree/bindings/regulator/fixed-regulator.yaml,
only "enable-active-high" is supported.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  .../boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso     | 1 -
>  arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts              | 1 -
>  2 files changed, 2 deletions(-)
> 
> diff --git
> a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> index ebcaeafc3800..fa61633aea15 100644
> --- 
> a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> +++ 
> b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> @@ -49,7 +49,6 @@ vcc1v8_eth: vcc1v8-eth-regulator {
> 
>  	vcc3v3_eth: vcc3v3-eth-regulator {
>  		compatible = "regulator-fixed";
> -		enable-active-low;
>  		gpio = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc3v3_eth_enn>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> index feea6b20a6bf..6b77be643249 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> @@ -71,7 +71,6 @@ vcc5v0_sys: vcc5v0-sys-regulator {
> 
>  	vcc_3v3_sd_s0: vcc-3v3-sd-s0-regulator {
>  		compatible = "regulator-fixed";
> -		enable-active-low;
>  		gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
>  		regulator-name = "vcc_3v3_sd_s0";
>  		regulator-boot-on;

