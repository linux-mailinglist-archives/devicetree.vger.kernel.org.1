Return-Path: <devicetree+bounces-108628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 768C7993272
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 18:05:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EAA31C22F25
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 16:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ECD11DA116;
	Mon,  7 Oct 2024 16:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="m8z1sEit"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6121D4159
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 16:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728317106; cv=none; b=elCS71mzwysJVJnmfPfh8YQ7IjrfA3IVYA5/8ESIjeEpZ0EJoDse0ctQ0W1LsHgmK2oNGYYsKVQ0tcSMh1gVsNBDkWMe3KD70/cGNsgK908kaW9O/USw3XteTVPv/Zh8njXavoSpn0I/kR6WJZpGjS5yXEhPho0udXH79eGY/vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728317106; c=relaxed/simple;
	bh=axWwsZUnKNXMYzhRnWv8sbE1iG0zwqg5BN1W6d4VOOE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AeOw0ghAK6GmBKU6HRHMlqFOrA6rns/tFC0odZzZ7t5UJx+6mnM+IjUpDzNvxpIR+BmPvazRdMPf9Z8I/s6PqHz5VA0iVL1Jr8eiE5kw4K+om9DxNt/CmIJr26B4mFJ8rQBvIE03pldpuplbj5c8y+yklv3wrRoDxCS2CmG0rrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=m8z1sEit; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=a7fx3r4X0Bn5vVtLSFf9bGiuTv0w4FDi3+Uh57xb7q8=; b=m8z1sEitUmLKiuN6py9waIeldx
	e2GW+PBbulKxwu9bR8qWGg9AOuOSB7JEliz58I7NtG+PAuwM61xyPdBO7lgJvXpdQ1i1oQl6mD890
	4PKUXAN+gGVCpm1rdmYKN243a0uvoBaKmwny/ZMwny51z/5nqs6jxjFHkVXtA8C4yIKnSWRxF3wlt
	Ekc91xRC41tJuNDo8mGI1W2qPM0cwfOFYaj7qlm3gONO4iYzAkXCLqBfhedn/w4rIpce2mdOTpLQF
	QMW3aiUKl0GScRor6swJLwBNUDHAkTXTDj8ltrwF/gzx8cqgBmX0/te4gBWPJ7GXngbkB2IQL8O9+
	CXijg/hw==;
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sxqEF-0002YC-S6; Mon, 07 Oct 2024 18:04:59 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Andy Yan <andyshrk@163.com>, Diederik de Haas <didi.debian@cknow.org>
Subject:
 Re: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on rk3566 box
 demo
Date: Mon, 07 Oct 2024 18:04:59 +0200
Message-ID: <4607042.LvFx2qVVIh@diego>
In-Reply-To: <D4POH599C91R.OQUBX190GASQ@cknow.org>
References:
 <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-6-heiko@sntech.de>
 <D4POH599C91R.OQUBX190GASQ@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Diederik,

Am Montag, 7. Oktober 2024, 17:27:12 CEST schrieb Diederik de Haas:
> On Mon Sep 30, 2024 at 11:01 PM CEST, Heiko Stuebner wrote:
> > The expected clock-name is different (ext_clock -> extclk) and the wakeup
> 
> According to "brcm,bluetooth.yaml", 'extclk' is deprecated in favor of
> 'txco', so it seems better to use that?
> Same would be true for Rock960 boards (patch 6 of this series).

thanks for that catch. I mainly stumbled upon the "_" underscore, found the
clockname without but didn't take into account that there was a deprecated
flag set in the binding :-)


> > gpio properties are named differently when changing from vendor-tree to
> > mainline. So fix those to match the binding.
> >
> > Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")
> > Cc: Andy Yan <andyshrk@163.com>
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > index 0c18406e4c59..dd6fe964d618 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > @@ -449,9 +449,9 @@ &uart1 {
> >  	bluetooth {
> >  		compatible = "brcm,bcm43438-bt";
> >  		clocks = <&pmucru CLK_RTC_32K>;
> > -		clock-names = "ext_clock";
> > -		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > -		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > +		clock-names = "extclk";
> > +		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > +		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> >  		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> >  		pinctrl-names = "default";
> >  		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> 
> 





