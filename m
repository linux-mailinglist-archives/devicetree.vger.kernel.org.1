Return-Path: <devicetree+bounces-108705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF43993769
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 21:33:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DBA11C22D3E
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 19:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 194D41DDC11;
	Mon,  7 Oct 2024 19:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="UwEilvkz"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DD415B12F
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 19:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728329608; cv=none; b=q7Zqpc6Tf7I2GiU1vqErTF0cnE5t20eaiM1TEeD8A4GIIDPMoCodRdrWSymcgnx2icMIokhO/0JQxShse2Yt85Lpb6pGgR2q3/Lb+C3/4VPdYrR2AgyU9vtlEEf9zVXhj3+sh1pdEG2LMPIIo3bp+a4v4mpKEV37XnjF08AIJbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728329608; c=relaxed/simple;
	bh=og9FYaNbjx+twUjq7wNgrPA3QpBdd7q2w2LILazGHnI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=b17qf8ZX24RAT1/sWF0zcY8vZ9eHx1Qs3ciIEqwsjFZha1wkkA3Y9q2pW9NmcoGbYYCCYBQMajJQ+PZqVCMiuihIiVux+ZlEqgJPCy6ytPMwuvtSB8t66g7iswNnMRQ5C9FT9o57Qe3d4h9Hqf5qfrzT9thHllq62Tiy7nlk1u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=UwEilvkz; arc=none smtp.client-ip=91.218.175.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728329602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=aBH1aQ4nc/IQjwDY3/G/OgIR+eVLXifVz4iynLmjUxc=;
	b=UwEilvkzZczoN7wwW8/SaxwFulUisjVSiWmlP4v2ZiSgMZ4QO3uboV85Xt9k5k48G10h0N
	71w0SV5krgeLsjKUbvRdT1iN8QdkDsTRoEF2lpcNsRFjX8lMJ4kLJi8La+EFCT/V/Trj9G
	f2IeuYrSlgHNRTSrOUJFcRdvBY32oA6xwmaPyLQUXOlvGaAP94bEPzTIzg75VTgPLsmRXU
	UTLSC6hfoJlcULnblJGJPWl+7jQyXiBu2jp+vpxqNEogFXApO5jA6MrP/R1Yz3yTEBywW2
	P/n4IKOAZ4JvCxCuzjPN8FJQm0vNZIsywM5FpMWa7iN0JV87ZarJfPg0H2Od6w==
Content-Type: multipart/signed;
 boundary=f45485c3e81673a977855857d4940c80f860ee3c09a314d29ce1aa4d9a4b;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Mon, 07 Oct 2024 21:33:11 +0200
Message-Id: <D4PTPHH4ELA3.34KQLVNGTP15E@cknow.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 "Andy Yan" <andyshrk@163.com>, "Diederik de Haas" <didi.debian@cknow.org>
Subject: Re: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on
 rk3566 box demo
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-6-heiko@sntech.de>
 <D4POH599C91R.OQUBX190GASQ@cknow.org> <4607042.LvFx2qVVIh@diego>
In-Reply-To: <4607042.LvFx2qVVIh@diego>
X-Migadu-Flow: FLOW_OUT

--f45485c3e81673a977855857d4940c80f860ee3c09a314d29ce1aa4d9a4b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Heiko,

On Mon Oct 7, 2024 at 6:04 PM CEST, Heiko St=C3=BCbner wrote:
> Am Montag, 7. Oktober 2024, 17:27:12 CEST schrieb Diederik de Haas:
> > On Mon Sep 30, 2024 at 11:01 PM CEST, Heiko Stuebner wrote:
> > > The expected clock-name is different (ext_clock -> extclk) and the wa=
keup
> >=20
> > According to "brcm,bluetooth.yaml", 'extclk' is deprecated in favor of
> > 'txco', so it seems better to use that?
> > Same would be true for Rock960 boards (patch 6 of this series).
>
> thanks for that catch. I mainly stumbled upon the "_" underscore, found t=
he
> clockname without but didn't take into account that there was a deprecate=
d
> flag set in the binding :-)

Doing research for another improvement, I stumbled upon this commit:

ebceec271e55 ("arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 boards=
")

with the following diff:

```
 	sdio_pwrseq: sdio-pwrseq {
 		compatible =3D "mmc-pwrseq-simple";
 		clocks =3D <&rk808 1>;
-		clock-names =3D "ext_clock";
+		clock-names =3D "lpo";
 		pinctrl-names =3D "default";
 		pinctrl-0 =3D <&wifi_enable_h>;
 		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
```

But do read the full git commit message.

The corresponding bluetooth node had 'lpo' as new value for
'clock-names' though ... from "ext_clock", but it also changed
its compatible, so it's not the same. For details, see commit
f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards")

So it's possible the change needs to be more extensive.
And a Tested-by tag from someone with the board is probably a good idea.

Regards,
  Diederik

> > > gpio properties are named differently when changing from vendor-tree =
to
> > > mainline. So fix those to match the binding.
> > >
> > > Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk35=
66 box demo board")
> > > Cc: Andy Yan <andyshrk@163.com>
> > > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/=
arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > index 0c18406e4c59..dd6fe964d618 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > @@ -449,9 +449,9 @@ &uart1 {
> > >  	bluetooth {
> > >  		compatible =3D "brcm,bcm43438-bt";
> > >  		clocks =3D <&pmucru CLK_RTC_32K>;
> > > -		clock-names =3D "ext_clock";
> > > -		device-wake-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > -		host-wake-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > > +		clock-names =3D "extclk";
> > > +		device-wakeup-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > +		host-wakeup-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > >  		shutdown-gpios =3D <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> > >  		pinctrl-names =3D "default";
> > >  		pinctrl-0 =3D <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> >=20
> >=20


--f45485c3e81673a977855857d4940c80f860ee3c09a314d29ce1aa4d9a4b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwQ3egAKCRDXblvOeH7b
bgTcAP930ZcE2Y9ydg+9eyp21Y276gBCSMnNd/9fwfhatRhDAwEA2iP1ybJzHWpH
plaMY5VPnFwIszk+SWr7IPpaELdnnwE=
=8FlG
-----END PGP SIGNATURE-----

--f45485c3e81673a977855857d4940c80f860ee3c09a314d29ce1aa4d9a4b--

