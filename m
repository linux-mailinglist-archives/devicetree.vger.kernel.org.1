Return-Path: <devicetree+bounces-48238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5301C871042
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 23:45:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBA011F21A3F
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 22:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E5747BB14;
	Mon,  4 Mar 2024 22:45:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8856B482DA
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 22:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709592317; cv=none; b=RpnhpYbqK4YOhL2DwNIuw87ut8SMDJqqNEgatocOZDi9Hu+nZ0dwFrm7TMYSq17jE2dLEzM7WL6ok5Oy19WqcofYiQwpMmvKi5adqiSFJ7gD9Mmwi5486gC44YO/yCZVCPIA7IoUepBJsvoGTfz0oEuBRsrMF37NiZIKxbUQrsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709592317; c=relaxed/simple;
	bh=qmxE8v5j4Tw2Hfu8elxAYuMasbqWPs9bFNIDUyl9F2w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LcarBsgGBIXjXMgjFJ3EGXzndLk8lvNjQocAgwfG5XHQ5VDtDzHJKZPeHSIJ+A1Yj2bwK3TB2hFwuSzzxx5BiHydOJF0loucPqeqTfH2G6yBcPsZF7NYWiTU73TCFLEwUym8wpOHSoqg23lYuDywR5k0ARvfr1TwefVnuCO5SX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rhH3U-0001oC-Ow; Mon, 04 Mar 2024 23:45:08 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rhH3T-004REp-Bg; Mon, 04 Mar 2024 23:45:07 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rhH3T-00H7rN-0r;
	Mon, 04 Mar 2024 23:45:07 +0100
Date: Mon, 4 Mar 2024 23:44:48 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Chen-Yu Tsai <wens@kernel.org>, 
	linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
Message-ID: <yumnuz5w5yw4pixruukeeh5pjdheiuuxkiazmke5oh3wxpfg7c@4l3rcxcgjfts>
References: <20240304084612.711678-2-ukleinek@debian.org>
 <27139798.WhXITi6ROJ@bagend>
 <b614dd49-7dbe-452e-b3b5-cb014b30f0f8@lunn.ch>
 <2662566.GSV3oLgti5@bagend>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dkkowzgn4atazppy"
Content-Disposition: inline
In-Reply-To: <2662566.GSV3oLgti5@bagend>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--dkkowzgn4atazppy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, Mar 04, 2024 at 05:43:08PM +0100, Diederik de Haas wrote:
> On Monday, 4 March 2024 16:59:38 CET Andrew Lunn wrote:
> > On Mon, Mar 04, 2024 at 04:32:03PM +0100, Diederik de Haas wrote:
> > > On Monday, 4 March 2024 14:09:15 CET Andrew Lunn wrote:
> > > > > > Andrew already pointed out when I posted the patch introducing =
the
> > > > > > gmac0 node that rgmii-id would be the preferred way to setup th=
ings.
> > > > > > Back then this didn't happen because this change broke receptio=
n of
> > > > > > network packets. However this only happend because I didn't hav=
e the
> > > > > > right phy driver loaded.
> > > > >=20
> > > > > It could be that the PHY is strapped to not use its internal RX d=
elay.
> > > > > And the PHY has some weird default TX delay, so having the driver
> > > > > put some sensible values in is probably better.
> > > >=20
> > > > It could also be the bootloader putting odd values into the PHY.
> > > >=20
> > > > Anyway, it will work better with the correct PHY, and enable WoL
> > > > support.
> > >=20
> > > Not sure if this is the right place or way, but here we go...
> > >=20
> > > A few days ago on #debian-kernel@OFTC:
> > > [28.02 16:35] <ukleinek> u-boot should be out of the game
> > > [28.02 16:36] <diederik> I'm not so sure anymore. On Quartz64 Model A=
 and
> > > B
> > > (rk3566) I had massive packet loss and tracked it down to a change in
> > > u-boot [28.02 16:37] <ukleinek> diederik: sounds like the Linux netwo=
rk
> > > driver on that machine could do something better
> > > [28.02 16:38] <diederik> yeah, probably
> > >=20
> > > I reported this about a month ago to Jonas Karlman as I bisected the
> > > problem>=20
> > > to a change in u-boot:
> > > > diederik@bagend:~/dev/u-boot/u-boot$ git bisect bad
> > > > 25f56459aebced8e4bb7d01061dcb1b765b197e2 is the first bad commit
> > > > commit 25f56459aebced8e4bb7d01061dcb1b765b197e2
> > > > Author: Jonas Karlman <jonas@kwiboo.se>
> > > > Date:   Sun Oct 1 19:17:21 2023 +0000
> > > >=20
> > > >     configs: rockchip: Enable ethernet driver on RK356x boards
> > > >    =20
> > > >     Enable DWC_ETH_QOS_ROCKCHIP and related PHY driver on RK356x bo=
ards
> > > >     that
> > > >     have an enabled gmac node.
> > >=20
> > > I just checked and both Quartz64 Model A and B have `phy-mode =3D "rg=
mii";`
> > > and set `tx_delay` and `rx_delay` to some (other) values.
> > > Without knowing nor understanding the details, this seem very much
> > > related?
> >=20
> > If you don't have a specific Linux PHY driver, you are at the mercies
> > of how the bootloader, or strapping set up the PHY. So it is always
> > best to use the correct PHY driver.=20
>=20
> This part is a bit over my head (that's ok, no need to explain it).
>=20
> > The Linux PHY driver should assume
> > nothing and setup the hardware from scratch, removing anything odd the
> > bootloader did. However, the fall back generic PHY driver has no chip
> > specific knowledge, so it cannot undo whatever the bootloader did.
> >=20
> > So, in an ideal world, we don't care about what the bootloader did,
> > just use the correct MAC and PHY driver and it should work. And if it
> > does not work, it is a Linux bug, which needs to be found and fixed.
>=20
> I agree.
>=20
> > > Not sure if this is the right place or way, but here we go...
>=20
> That was because it's actually a bug report (wrt Quartz64 A and B), but=
=20
> especially your remark made all the pieces I found earlier fall into plac=
e.
> Therefor I 'abused' this thread/patch to report it.
>=20
> I'm happy to test patches, but I lack the knowledge to come up with one=
=20
> myself.

I guess that would be:

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm6=
4/boot/dts/rockchip/rk3566-quartz64-a.dts
index 59843a7a199c..f4d1deba3110 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -269,7 +269,7 @@ &gmac1 {
 	assigned-clock-parents =3D <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC=
1>, <&gmac1_clkin>;
 	clock_in_out =3D "input";
 	phy-supply =3D <&vcc_3v3>;
-	phy-mode =3D "rgmii";
+	phy-mode =3D "rgmii-id";
 	pinctrl-names =3D "default";
 	pinctrl-0 =3D <&gmac1m0_miim
 		     &gmac1m0_tx_bus2
@@ -281,8 +281,6 @@ &gmac1m0_clkinout
 	snps,reset-active-low;
 	/* Reset time is 20ms, 100ms for rtl8211f */
 	snps,reset-delays-us =3D <0 20000 100000>;
-	tx_delay =3D <0x30>;
-	rx_delay =3D <0x10>;
 	phy-handle =3D <&rgmii_phy1>;
 	status =3D "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm6=
4/boot/dts/rockchip/rk3566-quartz64-b.dts
index 2d92713be2a0..ec1351a171d4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -176,7 +176,7 @@ &gmac1 {
 	assigned-clocks =3D <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1_RGMII_SPEED=
>, <&cru SCLK_GMAC1>;
 	assigned-clock-parents =3D <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC=
1>, <&gmac1_clkin>;
 	clock_in_out =3D "input";
-	phy-mode =3D "rgmii";
+	phy-mode =3D "rgmii-id";
 	phy-supply =3D <&vcc_3v3>;
 	pinctrl-names =3D "default";
 	pinctrl-0 =3D <&gmac1m1_miim
@@ -189,8 +189,6 @@ &gmac1m1_clkinout
 	snps,reset-active-low;
 	/* Reset time is 20ms, 100ms for rtl8211f, also works well here */
 	snps,reset-delays-us =3D <0 20000 100000>;
-	tx_delay =3D <0x4f>;
-	rx_delay =3D <0x24>;
 	phy-handle =3D <&rgmii_phy1>;
 	status =3D "okay";
 };

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--dkkowzgn4atazppy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXmTt8ACgkQj4D7WH0S
/k7fvwf/ahDTgIknS2dCz9wAhHSepa0xfncRl6VVdR7aVbTXvHZChbgFFgmiT6KP
gHQLpjnX6YYTwX+if4TcupatKceBx50DeNZqgycYbBbBBKcv69IOwhM0FiuNXiKe
uApDcDp00A7u52i5KXeFjnKsavCx/bHv5BOecygIJFWtFWpefIj+wwnycSHOJNST
gaODQYBW8V3J3EL0nF8SAExmZeliN18SYeigwSl5ggyJbwq3D3szVQUQ9SZ16p9G
MIIv6rVzheZCy4lCWXvNn8plLY5rdrC3mUSmIZcglmoiWlzw6qcFA9xPszAz8Yvl
w2Xcr4yQlPch+Q/ed0puSCzQvYM3Mw==
=Z4tS
-----END PGP SIGNATURE-----

--dkkowzgn4atazppy--

