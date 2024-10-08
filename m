Return-Path: <devicetree+bounces-109176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE32995846
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:20:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 168D51F24808
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D13C220A5FF;
	Tue,  8 Oct 2024 20:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="LHk/Fg9S"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2FD2905
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728418836; cv=none; b=RY5mjY0L6+Myp/xUlkJ2hFU7UpCKHx6iyY83pwJ8ngPDrvO6ceiAhOH6qNoksp1Py9+zmZHrgzT9twEdSW5qhjS1RLUrNJyl0uLKdRhurgvjIej+IQU27KKsWZjRlPzNGVpJScuxtN9CUP6+pNv6G6ATPKmdBZPXDJz5ZPeFaS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728418836; c=relaxed/simple;
	bh=hprjW3kiKwmctPMys/ilJtn+pl2w+KQpnqXEfHySLhU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=njz5HqkEQkKHEupYyqNfGUVkoryX9MjrZAUC/o7vtRaJeGPqDDsUUfjoMXZd9822iqBW0zJtVZJQHQH63JBn0J1vaLJ8efIPNrnXiRNAIqtiCzWugBbgc4YA4GNMyEb4p8jNCWNSWflJcyxx9gxaVC9sjaIVoKCJHEZ7/Gp9NUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=LHk/Fg9S; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WBogwjdRaNv2MRfiO9IzluSvCD5ItLH+5gKaouSEMxc=; b=LHk/Fg9SIBIebIoMz0WYH0Jt8B
	K1rCEwE/ukwb/gh0owV4c3uv+evv4Gabys7WUQt34wpYM89eXn36Wb94p2hrAnXHMvJtp0byIYBae
	em7z5A+s37rwNbPqJZPOBJ9ClVmz7v/1o0HXhl5NLOFJkDdocbX4K3wmRugM0lg4FJMCvvfRISK26
	G4z4986oPKJ+EPZb2/gqKctgjwjc0s2BkfRwA3vh9DnhFMeinGgU5NM4TLJKJcOubnqT7bZO4pXVv
	soAsxC/pAIndk/evoSAspAp5fMjff1BbBZ4mgTOrIxjAu2CdCAicRDE+VH3LXGnZpSqSm0TV0hhUF
	5ztJzn5g==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGh4-0007bB-CQ; Tue, 08 Oct 2024 22:20:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Andy Yan <andyshrk@163.com>, Diederik de Haas <didi.debian@cknow.org>
Subject:
 Re: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on rk3566 box
 demo
Date: Tue, 08 Oct 2024 22:20:29 +0200
Message-ID: <9353258.CDJkKcVGEf@diego>
In-Reply-To: <D4PTPHH4ELA3.34KQLVNGTP15E@cknow.org>
References:
 <20240930210112.1993625-1-heiko@sntech.de> <4607042.LvFx2qVVIh@diego>
 <D4PTPHH4ELA3.34KQLVNGTP15E@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Montag, 7. Oktober 2024, 21:33:11 CEST schrieb Diederik de Haas:
> Hi Heiko,
>=20
> On Mon Oct 7, 2024 at 6:04 PM CEST, Heiko St=FCbner wrote:
> > Am Montag, 7. Oktober 2024, 17:27:12 CEST schrieb Diederik de Haas:
> > > On Mon Sep 30, 2024 at 11:01 PM CEST, Heiko Stuebner wrote:
> > > > The expected clock-name is different (ext_clock -> extclk) and the =
wakeup
> > >=20
> > > According to "brcm,bluetooth.yaml", 'extclk' is deprecated in favor of
> > > 'txco', so it seems better to use that?
> > > Same would be true for Rock960 boards (patch 6 of this series).
> >
> > thanks for that catch. I mainly stumbled upon the "_" underscore, found=
 the
> > clockname without but didn't take into account that there was a depreca=
ted
> > flag set in the binding :-)
>=20
> Doing research for another improvement, I stumbled upon this commit:
>=20
> ebceec271e55 ("arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 boar=
ds")
>=20
> with the following diff:
>=20
> ```
>  	sdio_pwrseq: sdio-pwrseq {
>  		compatible =3D "mmc-pwrseq-simple";
>  		clocks =3D <&rk808 1>;
> -		clock-names =3D "ext_clock";
> +		clock-names =3D "lpo";
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&wifi_enable_h>;
>  		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> ```
>=20

The brcm,bluetooth binding is pretty clear, it's
txco - for an "external reference clock, not a crystal"
lpo - for a low power 32.768 kHz clock.

The rk808 and also the pmucru are both "not crystals", so I'll just go
with the "txco".

The hci_bcm driver also handles txco and extclk the same, so there won't
be a behaviour change with existing code.


Heiko

> But do read the full git commit message.
>=20
> The corresponding bluetooth node had 'lpo' as new value for
> 'clock-names' though ... from "ext_clock", but it also changed
> its compatible, so it's not the same. For details, see commit
> f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards")
>=20
> So it's possible the change needs to be more extensive.
> And a Tested-by tag from someone with the board is probably a good idea.
>=20
> Regards,
>   Diederik
>=20
> > > > gpio properties are named differently when changing from vendor-tre=
e to
> > > > mainline. So fix those to match the binding.
> > > >
> > > > Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk=
3566 box demo board")
> > > > Cc: Andy Yan <andyshrk@163.com>
> > > > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > > > ---
> > > >  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
> > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arc=
h/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > index 0c18406e4c59..dd6fe964d618 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > @@ -449,9 +449,9 @@ &uart1 {
> > > >  	bluetooth {
> > > >  		compatible =3D "brcm,bcm43438-bt";
> > > >  		clocks =3D <&pmucru CLK_RTC_32K>;
> > > > -		clock-names =3D "ext_clock";
> > > > -		device-wake-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > > -		host-wake-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > > > +		clock-names =3D "extclk";
> > > > +		device-wakeup-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > > +		host-wakeup-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > > >  		shutdown-gpios =3D <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> > > >  		pinctrl-names =3D "default";
> > > >  		pinctrl-0 =3D <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> > >=20
> > >=20
>=20
>=20





