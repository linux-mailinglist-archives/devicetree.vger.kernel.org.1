Return-Path: <devicetree+bounces-109177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94039995874
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:31:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C558A1C20A0A
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:31:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EF33215F63;
	Tue,  8 Oct 2024 20:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="sIsgd1sj"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03230215F5A
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728419231; cv=none; b=VpXXEnnqPttjBsZQp0InVTT5kh5OGyObSUUDaQNuyCNivx7OpDG3RZIQkocl2sLLx3zDhGQXEZAaK0FZb6D5wbJ1Kzm5tGfPScfddxQMutXkqiIwKJpUI4qJuv87q4iC78YZ7qgiQ1cNTAZhMzAe6DnTXqVHyVBJ96P+ohax06I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728419231; c=relaxed/simple;
	bh=JwgUJCofLta2QKx6MgXqAx9NDWeifCc9gmbF5x/8Chk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=jN4Ma+Se9+PZrZOqZRv+17xaS3ewiNyK40Ri/nv/aBH/4CwsLPYJ8Bvdfcdnp7ExVYppTP3y9uOeEOK4LUZVRLQBZLG9pKzEXVyR9y6IrWdUv77cMvbFCKAQuymBygiYOA/Uvhz5HaFUacGAGCYQM8agWTwPguqbZk9GOnmZ5SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=sIsgd1sj; arc=none smtp.client-ip=91.218.175.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728419225;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CLnKoUkAXXgz6phE+IIQuIRe649FqmYeaZ92g9c27QQ=;
	b=sIsgd1sj3CT7rC/WgQXwo6fOmj9CNdum1pwopMfRgATD2UEGQj/wWw075FoBDWw7bNYG1t
	Y75bHcvDRTLV48vk8BHkGaaqHarXDEMr+0TMyynXMxWjFwXng2hW7iw7Vc3YXB/75Q5jlJ
	BrRNHDUBq6gaExYv/SnQEZjqzmis02VTY3uDnw9CRsEx4pTfRijWzE2M/36Logo4HHKCIN
	P0DVdKbEqJi1Oaa4g4ML8p1AKo1EfcQJhGQD4cfpxeYaYrqTFts2stq2U1AwtOev9hUt9W
	lYXJQHupE0kJcq6M7qRdWIOd2o0/TnjlmCzekuPT/6yI0ovzyZnk3kFtkVJe+g==
Content-Type: multipart/signed;
 boundary=f01c82960899fefa03cdc785db30994e81e3f61a35aabc7eb4e49d766e5d;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Tue, 08 Oct 2024 22:26:50 +0200
Message-Id: <D4QPH3M5DQC0.66J2EUEZAW8R@cknow.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 "Andy Yan" <andyshrk@163.com>
Subject: Re: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on
 rk3566 box demo
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <4607042.LvFx2qVVIh@diego> <D4PTPHH4ELA3.34KQLVNGTP15E@cknow.org>
 <9353258.CDJkKcVGEf@diego>
In-Reply-To: <9353258.CDJkKcVGEf@diego>
X-Migadu-Flow: FLOW_OUT

--f01c82960899fefa03cdc785db30994e81e3f61a35aabc7eb4e49d766e5d
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Oct 8, 2024 at 10:20 PM CEST, Heiko St=C3=BCbner wrote:
> Am Montag, 7. Oktober 2024, 21:33:11 CEST schrieb Diederik de Haas:
> > On Mon Oct 7, 2024 at 6:04 PM CEST, Heiko St=C3=BCbner wrote:
> > > Am Montag, 7. Oktober 2024, 17:27:12 CEST schrieb Diederik de Haas:
> > > > On Mon Sep 30, 2024 at 11:01 PM CEST, Heiko Stuebner wrote:
> > > > > The expected clock-name is different (ext_clock -> extclk) and th=
e wakeup
> > > >=20
> > > > According to "brcm,bluetooth.yaml", 'extclk' is deprecated in favor=
 of
> > > > 'txco', so it seems better to use that?
> > > > Same would be true for Rock960 boards (patch 6 of this series).
> > >
> > > thanks for that catch. I mainly stumbled upon the "_" underscore, fou=
nd the
> > > clockname without but didn't take into account that there was a depre=
cated
> > > flag set in the binding :-)
> >=20
> > Doing research for another improvement, I stumbled upon this commit:
> >=20
> > ebceec271e55 ("arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 bo=
ards")
> >=20
> > with the following diff:
> >=20
> > ```
> >  	sdio_pwrseq: sdio-pwrseq {
> >  		compatible =3D "mmc-pwrseq-simple";
> >  		clocks =3D <&rk808 1>;
> > -		clock-names =3D "ext_clock";
> > +		clock-names =3D "lpo";
> >  		pinctrl-names =3D "default";
> >  		pinctrl-0 =3D <&wifi_enable_h>;
> >  		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> > ```
> >=20
>
> The brcm,bluetooth binding is pretty clear, it's
> txco - for an "external reference clock, not a crystal"
> lpo - for a low power 32.768 kHz clock.
>
> The rk808 and also the pmucru are both "not crystals", so I'll just go
> with the "txco".
>
> The hci_bcm driver also handles txco and extclk the same, so there won't
> be a behaviour change with existing code.

Excellent. Thanks for verifying :-)

Cheers,
  Diederik

> > But do read the full git commit message.
> >=20
> > The corresponding bluetooth node had 'lpo' as new value for
> > 'clock-names' though ... from "ext_clock", but it also changed
> > its compatible, so it's not the same. For details, see commit
> > f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards"=
)
> >=20
> > So it's possible the change needs to be more extensive.
> > And a Tested-by tag from someone with the board is probably a good idea=
.
> >=20
> > Regards,
> >   Diederik
> >=20
> > > > > gpio properties are named differently when changing from vendor-t=
ree to
> > > > > mainline. So fix those to match the binding.
> > > > >
> > > > > Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip =
rk3566 box demo board")
> > > > > Cc: Andy Yan <andyshrk@163.com>
> > > > > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > > > > ---
> > > > >  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
> > > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/a=
rch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > > index 0c18406e4c59..dd6fe964d618 100644
> > > > > --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > > @@ -449,9 +449,9 @@ &uart1 {
> > > > >  	bluetooth {
> > > > >  		compatible =3D "brcm,bcm43438-bt";
> > > > >  		clocks =3D <&pmucru CLK_RTC_32K>;
> > > > > -		clock-names =3D "ext_clock";
> > > > > -		device-wake-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > > > -		host-wake-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > > > > +		clock-names =3D "extclk";
> > > > > +		device-wakeup-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > > > +		host-wakeup-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > > > >  		shutdown-gpios =3D <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> > > > >  		pinctrl-names =3D "default";
> > > > >  		pinctrl-0 =3D <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> > > >=20
> > > >=20
> >=20
> >=20


--f01c82960899fefa03cdc785db30994e81e3f61a35aabc7eb4e49d766e5d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwWVjwAKCRDXblvOeH7b
bvJCAP9ctue54qTFYKYkDawObOJ/AmZdg+nNzQb2TrWYiK3O8AEAtZOVdlJP/yGt
yjzCvHkhoP+FiHMJaOsnfPEaAxTX7gg=
=fvyt
-----END PGP SIGNATURE-----

--f01c82960899fefa03cdc785db30994e81e3f61a35aabc7eb4e49d766e5d--

