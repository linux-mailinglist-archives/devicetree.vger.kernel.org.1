Return-Path: <devicetree+bounces-25646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AB48141D2
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 07:33:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D96331F2144F
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 06:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C76DF748A;
	Fri, 15 Dec 2023 06:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="Hkb+ncPk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E83CD2E2
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 06:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702622018; x=1734158018;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=mC9legAL+Rsc0CkW3ITeHlMZ6XHUNb1Q1BzbBa9AnFE=;
  b=Hkb+ncPkzRmA9GwQNwb/sgfmYCkDDOy0ya11GbkjEbCLwqUBiqF+udnE
   vFc2m3am+8W2eIDDvvfqLttrEISE4oWLemELLd47CSJK8U5IabZyOlQBp
   MmD70z1hiXnecXimLHaFFGD9pOm1vAqBF2ryqXFfVCZwJ1hXrK/LNWZZW
   xMIlQ83QqdpiLggC8l64Eb9eyPW5D4gfB8xulXtYkQWfC9crmva9R91e6
   taR8Ve7n+AvNeKwNcOL1ab1yrfjMGpWl5xhBm3UBbWY0lgH9x05sdIMLQ
   6Z2ar8CU0rMUKyDl3SzHOu/88jHG2qf7VzSFIa3R4KaUcg76nlmSESxX8
   g==;
X-IronPort-AV: E=Sophos;i="6.04,277,1695679200"; 
   d="scan'208";a="34522247"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 15 Dec 2023 07:32:27 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DB001280075;
	Fri, 15 Dec 2023 07:32:26 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Xu Yang <xu.yang_2@nxp.com>
Cc: dl-linux-imx <linux-imx@nxp.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [EXT] Re: [PATCH 3/4] arm64: dts: imx93: add usb nodes
Date: Fri, 15 Dec 2023 07:32:27 +0100
Message-ID: <3198956.5fSG56mABF@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <DB7PR04MB51462A079F226C6B9FCA9F7C8C93A@DB7PR04MB5146.eurprd04.prod.outlook.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com> <8309719.T7Z3S40VBb@steina-w> <DB7PR04MB51462A079F226C6B9FCA9F7C8C93A@DB7PR04MB5146.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,

Am Freitag, 15. Dezember 2023, 03:12:43 CET schrieb Xu Yang:
> Hi Alexander,
>=20
> > Hi,
> >=20
> > thanks for the patch.
> >=20
> > Am Donnerstag, 14. Dezember 2023, 12:24:41 CET schrieb Xu Yang:
> > > There are 2 USB controllers on i.MX93. Add them.
> > >=20
> > > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > > ---
> > >=20
> > >  arch/arm64/boot/dts/freescale/imx93.dtsi | 58 ++++++++++++++++++++++=
++
> > >  1 file changed, 58 insertions(+)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > > b/arch/arm64/boot/dts/freescale/imx93.dtsi index
> > > 34c0540276d1..bcf4861cfede
> > > 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> > > @@ -171,6 +171,20 @@ cm33: remoteproc-cm33 {
> > >=20
> > >               status =3D "disabled";
> > >      =20
> > >       };
> > >=20
> > > +     usbphynop1: usbphynop1 {
> > > +             #phy-cells =3D <0>;
> > > +             compatible =3D "usb-nop-xceiv";
> >=20
> > compatible first.
>=20
> Okay.
>=20
> > > +             clocks =3D <&clk IMX93_CLK_USB_PHY_BURUNIN>;
> > > +             clock-names =3D "main_clk";
> > > +     };
> > > +
> > > +     usbphynop2: usbphynop2 {
> > > +             #phy-cells =3D <0>;
> > > +             compatible =3D "usb-nop-xceiv";
> >=20
> > compatible first.
>=20
> Okay.
>=20
> > > +             clocks =3D <&clk IMX93_CLK_USB_PHY_BURUNIN>;
> > > +             clock-names =3D "main_clk";
> > > +     };
> > > +
> > >=20
> > >       soc@0 {
> > >      =20
> > >               compatible =3D "simple-bus";
> > >               #address-cells =3D <1>;
> > >=20
> > > @@ -1059,5 +1073,49 @@ ddr-pmu@4e300dc0 {
> > >=20
> > >                       reg =3D <0x4e300dc0 0x200>;
> > >                       interrupts =3D <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> > >              =20
> > >               };
> > >=20
> > > +
> > > +             usbotg1: usb@4c100000 {
> > > +                     compatible =3D "fsl,imx8mm-usb", "fsl,imx7d-usb=
",
> >=20
> > "fsl,imx27-usb";
> >=20
> > > +                     reg =3D <0x4c100000 0x200>;
> > > +                     interrupts =3D <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH=
>;
> > > +                     clocks =3D <&clk IMX93_CLK_USB_CONTROLLER_GATE>,
> > > +                              <&clk IMX93_CLK_HSIO_32K_GATE>;
> > > +                     clock-names =3D "usb_ctrl_root_clk",
> >=20
> > "usb_wakeup_clk";
> >=20
> > drivers/usb/chipidea/ci_hdrc_imx.c uses 3 clocks: "ipg", "ahb" and "per=
",
> > see imx_get_clks(). How is this supposed to work?
>=20
> I have sent another patch to get this clock.
> https://lore.kernel.org/all/20231214112622.2412321-1-xu.yang_2@nxp.com/

Okay, but that adds another clock which is not mentioned in Documentation/
devicetree/bindings/usb/ci-hdrc-usb2.yaml at all. I guess some compatible-
specific constraints regarding number of clocks should be added.

Best regards,
Alexander

>=20
> > > +                     assigned-clocks =3D <&clk IMX93_CLK_HSIO>;
> > > +                     assigned-clock-parents =3D <&clk
> >=20
> > IMX93_CLK_SYS_PLL_PFD1_DIV2>;
> >=20
> > > +                     assigned-clock-rates =3D <133000000>;
> > > +                     fsl,usbphy =3D <&usbphynop1>;
> > > +                     fsl,usbmisc =3D <&usbmisc1 0>;
> > > +                     status =3D "disabled";
> > > +             };
> > > +
> > > +             usbmisc1: usbmisc@4c100200 {
> > > +                     compatible =3D "fsl,imx8mm-usbmisc", "fsl,imx7d-
> >=20
> > usbmisc",
> >=20
> > > +                                     "fsl,imx6q-usbmisc";
> >=20
> > This means you are compatible to fsl,imx7d-usbmisc. Which means you use
> > register MX7D_USB_OTG_PHY_STATUS in USB misc (USBNC). But i.MX93 RM Rev=
=2E 2
> > (04/2023) lacks this and other registers.
>=20
> Some registers in USBNC are not shown. The internal RM has these register=
s.
>=20
> > > +                     #index-cells =3D <1>;
> > > +                     reg =3D <0x4c100200 0x200>;
> >=20
> > reg after compatible.
>=20
> Okay.
>=20
> > > +             };
> > > +
> > > +             usbotg2: usb@4c200000 {
> > > +                     compatible =3D "fsl,imx8mm-usb", "fsl,imx7d-usb=
",
> >=20
> > "fsl,imx27-usb";
> >=20
> > > +                     reg =3D <0x4c200000 0x200>;
> > > +                     interrupts =3D <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH=
>;
> > > +                     clocks =3D <&clk IMX93_CLK_USB_CONTROLLER_GATE>,
> > > +                              <&clk IMX93_CLK_HSIO_32K_GATE>;
> > > +                     clock-names =3D "usb_ctrl_root_clk",
> >=20
> > "usb_wakeup_clk";
> >=20
> > The same as for usbotg1 applies here.
>=20
> Okay.
>=20
> > > +                     assigned-clocks =3D <&clk IMX93_CLK_HSIO>;
> > > +                     assigned-clock-parents =3D <&clk
> >=20
> > IMX93_CLK_SYS_PLL_PFD1_DIV2>;
> >=20
> > > +                     assigned-clock-rates =3D <133000000>;
> > > +                     fsl,usbphy =3D <&usbphynop2>;
> > > +                     fsl,usbmisc =3D <&usbmisc2 0>;
> > > +                     status =3D "disabled";
> > > +             };
> > > +
> > > +             usbmisc2: usbmisc@4c200200 {
> > > +                     compatible =3D "fsl,imx8mm-usbmisc", "fsl,imx7d-
> >=20
> > usbmisc",
> >=20
> > > +                                     "fsl,imx6q-usbmisc";
> > > +                     #index-cells =3D <1>;
> > > +                     reg =3D <0x4c200200 0x200>;
> >=20
> > The same as for usbmisc1 applies here.
>=20
> Okay.
>=20
> > > +             };
> > >=20
> > >       };
> > > =20
> > >  };
> >=20
> > Best regards,
> > Alexander
> >=20
> > --
> > TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
> > Amtsgericht M=FCnchen, HRB 105018
> > Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
> > http://www.tq-/
> > group.com%2F&data=3D05%7C02%7Cxu.yang_2%40nxp.com%7C10ff5a35f53f4047ae1=
d08db
> > fca99c38%7C686ea1d3bc2b4c6fa
> > 92cd99c5c301635%7C0%7C0%7C638381577622080432%7CUnknown%7CTWFpbGZsb3d8ey=
JW
> > IjoiMC4wLjAwMDAiLCJQIjoiV2
> > luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DVlpRPcnJTm=
ywfS
> > amaGB1Ev8aPN2Hi596VbbRNGXF yis%3D&reserved=3D0


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



