Return-Path: <devicetree+bounces-252233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED39CFC93A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:21:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 216373004D12
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:21:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B8C026ED5C;
	Wed,  7 Jan 2026 08:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="DLwSKyLY"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B14D923372C;
	Wed,  7 Jan 2026 08:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767774091; cv=none; b=d11adMkBnRgTq0S307+75GwUuAPFvQAH+Smn2SIAt3qOshYcX2DIEOTVK814pObs0F9BzYk0Yat3I7cFJkdLuWoT6zm389rbZk1HO7M6StCS0ldBS0zqvpq29lKTwuLRu4OH9zlZyN83L4fChsxxccoXl60vWKtoy7dBqVbd17Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767774091; c=relaxed/simple;
	bh=07vtpQCZ1nyZ6nweruQaSaZK+68zjtGLXbToHDx0ocE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R1MMAFxZgd3AC100kmNBlyMDuf5472LBPmPK3tnKUT8IriH4YqGpgX5nhL7rWybBxb5xHJpGp4/m9JFmj6+g01a1mHCUYkNSB030AjV0sv/ai7p/qxLjtXWkA1XAFYgUWFce2IEq1gVGjnQ0Jp3T30c5q3SbYlYZRYoZf8rhP9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=DLwSKyLY; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=usWnJ1Rw5KKtaFN+POFS8USjtMWUxqAVJ7bixsDUg8k=; b=DLwSKyLYN/LdD0/WXvn2Rs89I5
	2v7J+yhxRIWB39YOFf9Z+MLBFr6j7l8KJ+dLztW8zknXyw1d3LrDfPZB3BuY84D3bzkkdpyk8AjQy
	YJmOSlFVD2/f+HDCpi1g/GZ/NbzkX2IZUPmXQXjIWA5bDSdFo2XSXs2Hakx4vKYeRPWll2qfWdOBA
	GWrbX6AG6PJfWD4krWsr8ycofxnY4W3Mhp2T4+FK3u9A10m1XHWobrxfIozmM81w+xbj3eW8PbHLa
	GTbii7pEW7P88JsVaZKUVyb7XW69PpO+fygTz9GcFYKOPPz+xAMELdWfL17wdp4+oBedV9vOneaX/
	PiinqkuA==;
Received: from i53875b57.versanet.de ([83.135.91.87] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdOmx-001Lir-9F; Wed, 07 Jan 2026 09:21:07 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chaoyi Chen <kernel@airkyi.com>, Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Wed, 07 Jan 2026 09:21:06 +0100
Message-ID: <2437891.BjyWNHgNrj@diego>
In-Reply-To:
 <CABjd4Yw1Dqsa9EsMRFT8LOvyU8QN1C8VP+j0tY6h1uJhhXRSSw@mail.gmail.com>
References:
 <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <CABjd4Yw1Dqsa9EsMRFT8LOvyU8QN1C8VP+j0tY6h1uJhhXRSSw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Mittwoch, 7. Januar 2026, 08:56:04 Mitteleurop=C3=A4ische Normalzeit sch=
rieb Alexey Charkov:
> Hi Chaoyi,
>=20
> On Wed, Jan 7, 2026 at 11:04=E2=80=AFAM Chaoyi Chen <kernel@airkyi.com> w=
rote:
> >
> > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> >
> > General features for rk3576 evb2 board:
> >     - Rockchip RK3576
> >     - LPDDR4/4X
> >     - eMMC5.1
> >     - RK806-2x2pcs + DiscretePower
> >     - 1x HDMI2.1 TX / HDMI2.0 RX
> >     - 1x full size DP1.4 TX (Only 2 Lanes)
> >     - 2x 10/100/1000M Ethernet
> >     - 5x SATA3.0 7Pin Slot
> >     - 2x USB3.2 Gen1 Host
> >     - 3x USB2.0 Host
> >     - WIFI/BT
> >     - ...
> >
> > Tested with eMMC/SDMMC/HDMI/USB/Ethernet/WIFI/BT module.
> >
> > Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>

[...]

> > +       vbus5v0_typec: regulator-vbus5v0-typec {
> > +               compatible =3D "regulator-fixed";
> > +               regulator-name =3D "vbus5v0_typec";
>=20
> This might better be renamed, given that last time you mentioned this
> board doesn't have a Type-C connector. Perhaps regulator-vbus5v0-otg?

Alternatively a comment above it.

I.e. regulator-naming should always follow the naming used in the
schematics, so that it gets easier to reference between schematics
and devicetree.


> > +               regulator-min-microvolt =3D <5000000>;
> > +               regulator-max-microvolt =3D <5000000>;
> > +               enable-active-high;
> > +               gpio =3D <&gpio0 RK_PD1 GPIO_ACTIVE_HIGH>;
> > +               vin-supply =3D <&vcc5v0_device>;
> > +               pinctrl-names =3D "default";
> > +               pinctrl-0 =3D <&usb_otg0_pwren>;
> > +       };
> > +
> > +       vcc12v_dcin: regulator-vcc12v-dcin {
> > +               compatible =3D "regulator-fixed";
> > +               regulator-name =3D "vcc12v_dcin";
> > +               regulator-always-on;
> > +               regulator-boot-on;
> > +               regulator-min-microvolt =3D <12000000>;
> > +               regulator-max-microvolt =3D <12000000>;
> > +       };
> > +
> > +       vcc1v2_ufs_vccq_s0: regulator-vcc1v2-ufs-vccq-s0 {
> > +               compatible =3D "regulator-fixed";
> > +               regulator-name =3D "vcc1v2_ufs_vccq_s0";
> > +               regulator-boot-on;
> > +               regulator-always-on;
> > +               regulator-min-microvolt =3D <1200000>;
> > +               regulator-max-microvolt =3D <1200000>;
> > +               vin-supply =3D <&vcc_sys>;
> > +       };
> > +
> > +       vcc1v8_ufs_vccq2_s0: regulator-vcc1v8-ufs-vccq2-s0 {
> > +               compatible =3D "regulator-fixed";
> > +               regulator-name =3D "vcc1v8_ufs_vccq2_s0";
> > +               regulator-boot-on;
> > +               regulator-always-on;
> > +               regulator-min-microvolt =3D <1800000>;
> > +               regulator-max-microvolt =3D <1800000>;
> > +               vin-supply =3D <&vcc_1v8_s3>;
> > +       };
> > +
> > +       vcc3v3_hubreset: vcc3v3-hubreset {
> > +               compatible =3D "regulator-fixed";
> > +               regulator-name =3D "vcc3v3_hubreset";
> > +               regulator-boot-on;
> > +               regulator-always-on;
>=20
> If this regulator supplies a soldered-on discrete hub and is required
> to power it up, won't it be better to describe the hub in the device
> tree (see binding at [1]), make the regulator its supply, and perhaps
> drop the "regulator-boot-on/regulator-always-on" annotation here,
> letting the regulator core deal with its enabling instead?
>=20
> [1] https://github.com/torvalds/linux/blob/master/Documentation/devicetre=
e/bindings/usb/usb-device.yaml

Yep, it would be nicer to it this way.
A live example can be found in the Rock 5 ITX [2]

[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts#n1266


Heiko


> [snip]
>=20
> Other than these, LGTM - thanks for addressing my comments from v1!
> Feel free to include my:
>=20
> Reviewed-by: Alexey Charkov <alchark@gmail.com>
>=20
> Best regards,
> Alexey
>=20





