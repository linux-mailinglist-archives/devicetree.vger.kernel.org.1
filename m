Return-Path: <devicetree+bounces-247840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB6ECCBF78
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 14:20:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3A7D330287DF
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 13:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 782C933F39F;
	Thu, 18 Dec 2025 13:11:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ABA33F39B
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766063481; cv=none; b=Oc4Iun3G5mehH1NEwQqOzd5sKMKFBMxSyiH9Q7Spcp2Xb0K6LCjCORD7lTUpwzQzBWASa94Ir4oZ0SIoZLqK215XdfuObZdUrbLLqUmNrvC8H3U7RT4mn3HiBbcq5poQmZ0LT3N8QJQ7ChHa04drOypdMml7vni/bZsoY2RmvM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766063481; c=relaxed/simple;
	bh=X9xUJSYHyHqN6rnC3yv5bm3A0E2OkWZ7sUNcTVYo1qE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JGL5+cQ7PeZYQrOLytbleSErd51nkck4axuCuDD0FmppXu1RZtkXm67D0EoVNuUqbS6VyXS9EbblbZEj6xRvuUlNdTA2rl4wsyfQMN4tQF33uuME3MZoBRSFUCX75oFXLme0pdyc/T6wMjszUHH8siMOLICBQj2C3jMPdxjLXcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWDme-0004ey-0I; Thu, 18 Dec 2025 14:11:08 +0100
Message-ID: <e15437918fc2e162eec92985e8f11f8e0de91246.camel@pengutronix.de>
Subject: Re: [PATCH v4 0/2] Add devicetree for NXP i.MX93 FRDM board
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo
	 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, Lei Xu
 <lei.xu@nxp.com>, 	linux-kernel@vger.kernel.org, Krzysztof Kozlowski
 <krzk@kernel.org>, Haidong Zheng <haidong.zheng@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Danwei Luo	 <danwei.luo@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Date: Thu, 18 Dec 2025 14:11:07 +0100
In-Reply-To: <9a96f664-00ba-4589-b3b8-a04355c0ad0b@pengutronix.de>
References: <20251218-fpg-nxp-imx93-frdm-v4-0-cd3a9f6ac89a@pengutronix.de>
	 <9a96f664-00ba-4589-b3b8-a04355c0ad0b@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: f.pflug@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Ahmad,

On Thu, 2025-12-18 at 13:52 +0100, Ahmad Fatoum wrote:
> Hello Fabian,
>=20
> On 12/18/25 12:39 PM, Fabian Pflug wrote:
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > Changes in v4:
> > - remove it6263 block in i2c1, since it is not finished
> > - remove usdhc3 pwrsequence, since WLAN is not tested on my board
> > - remove eee-broken-1000t on phy2, since it is not broken
> > - update min/max-microvlt on buck converters
>=20
> I know you changed this due to reviewer feedback, but it was wrong
> advice. The Linux driver already has information about the minimum and
> maximum range support for the PMIC, what you need to write here is the
> actual board-level constraints.

Yeah, I know, that why I only updated the other two rails and changed to mi=
nimum for CPU 0.64 to 0.61V for core.
And 1.06 to 1.14V for DRAM, as it is the settings allowed by the CPU.

VCC3.3 and VCC1.8 were not changed, due to them being connected to multiple=
 devices and I did not want to make them
flexible, as it would be a hassle in the drivers.

Kind regards
Fabian

>=20
> I don't think the board will like VDD_3V3 at 1.62V or VDD_1V8 at 3.4V.
> For the fixed voltage rails just set min =3D max =3D fixed voltage.
>=20
> Thanks,
> Ahmad
>=20
> > - Link to v3: https://lore.kernel.org/r/20251022-fpg-nxp-imx93-frdm-v3-=
0-03ec40a1ccc0@pengutronix.de
> >=20
> > Changes in v3:
> > - Add Signed-off for original NXP contributors.
> > - Fixed whitespace errors (Thanks Francesco Valla)
> > - Added mu1 with status okay (Thanks Francesco Valla)
> > - Removed address cells from lpi2c3 (Thanks Frank Li)
> > - Configure pin for watchdog (Thanks Peng Fan)
> > - Updated regulator config
> > - Configure i2c0
> > - Link to v2: https://lore.kernel.org/r/20250526-fpg-nxp-imx93-frdm-v2-=
0-e5ad0efaec33@pengutronix.de
> >=20
> > Changes in v2:
> > - 1/2: remove CAN node, as it has not been tested.
> > - 1/2: ran dt-format (Thanks Frank Li)
> > 	But also reordered some nodes afterwards again to have
> > 	regulator-min before regulator-max, have the pinmux at the end
> > 	of the file, and have the regulator-name as the first node
> > 	inside the regulators.
> > 	Re-added comments, that were deleted.
> > - 1/2: changes subjet to ar64:dts (Thanks Fabio Estevan)
> > - 1/2: removed reg_vdd_12v (Tanks Fabio Estevan)
> > - 1/2: added aliases for rtc, emmc, serial (Thanks Fabio Estevan)
> > - reordered the series to have documentation before dts. (Thanks
> > =C2=A0 Krzystof Kozlowski)
> > - Link to v1: https://lore.kernel.org/r/20250523-fpg-nxp-imx93-frdm-v1-=
0-546b2d342855@pengutronix.de
> >=20
> > ---
> > Fabian Pflug (2):
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dt-bindings: arm: fsl: add i.MX93 11x11 =
FRDM board
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 arm64: dts: freescale: add support for N=
XP i.MX93 FRDM
> >=20
> > =C2=A0Documentation/devicetree/bindings/arm/fsl.yaml=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0=C2=A0 1 +
> > =C2=A0arch/arm64/boot/dts/freescale/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 1 +
> > =C2=A0arch/arm64/boot/dts/freescale/imx93-11x11-frdm.dts | 620 ++++++++=
+++++++++++++
> > =C2=A03 files changed, 622 insertions(+)
> > ---
> > base-commit: ea1013c1539270e372fc99854bc6e4d94eaeff66
> > change-id: 20250523-fpg-nxp-imx93-frdm-5cc180a1fda9
> >=20
> > Best regards,

