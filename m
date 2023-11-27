Return-Path: <devicetree+bounces-19172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E273F7F9E92
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 12:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B4262811DF
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36CA8199D6;
	Mon, 27 Nov 2023 11:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="vKod8A2M"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A66718F;
	Mon, 27 Nov 2023 03:27:48 -0800 (PST)
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7E1C92B6;
	Mon, 27 Nov 2023 12:27:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701084432;
	bh=AuKYoWFJ7sVxjyuT0y2LtlrUIBWzhTWO8cEmpOiB9qI=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=vKod8A2MZvWRjzcKLr4aQcvIZFTcSAMqSOr1Ta/IYYYDxHOvbvkhJf4uj5izp0tjA
	 GWpGzFGXRml8+336jS+dMWuqA5JS1QKI2LLt0fpTKaoZeWURnUqAOj6lNGSMhlnCmr
	 /93pSFnwVdMBuG6DKh7V55dPTuFwtYtIKACKu0hc=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231127025706.GT87953@dragon>
References: <20231101104614.2209986-1-kieran.bingham@ideasonboard.com> <20231127025706.GT87953@dragon>
Subject: Re: [PATCH v2] arm64: dts: freescale: debix-som-a-bmb-08: Add CSI Power Regulators
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: devicetree@vger.kernel.org, Marco Felsch <m.felsch@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>;
To: Shawn Guo <shawnguo@kernel.org>
Date: Mon, 27 Nov 2023 11:27:43 +0000
Message-ID: <170108446363.451646.11141020197161463231@ping.linuxembedded.co.uk>
User-Agent: alot/0.10

Quoting Shawn Guo (2023-11-27 02:57:06)
> On Wed, Nov 01, 2023 at 10:46:11AM +0000, Kieran Bingham wrote:
> > Provide the 1.8 and 3.3 volt regulators that are utilised on the Debix
> > SOM BMB-08 base board.
> >=20
> > Facilitate this by also supplying the pin control used to enable the
> > regulators on the second MIPI CSI port.
> >=20
> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> > Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> >=20
> > ---
> > v2:
> >  - Remove _SW post fixes from regulators.
> >=20
> >  .../freescale/imx8mp-debix-som-a-bmb-08.dts   | 56 +++++++++++++++++++
> >  1 file changed, 56 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dt=
s b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
> > index 0b0c95432bdc..386177c66c6d 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
> > @@ -63,6 +63,50 @@ regulator-som-vdd3v3 {
> >               regulator-always-on;
> >       };
> > =20
> > +     reg_csi1_1v8: regulator-csi1-vdd1v8 {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <1800000>;
> > +             regulator-name =3D "CSI1_VDD1V8";
> > +             gpio =3D <&expander0 13 GPIO_ACTIVE_HIGH>;
> > +             vin-supply =3D <&reg_baseboard_vdd3v3>;
> > +             enable-active-high;
>=20
> Could you move it one line above, so that it appears right after
> GPIO_ACTIVE_HIGH polarity?

Yes, Sorry - I'm not sure why this is inconsistent with all the others.

v3 heading out next.

--
Kieran


>=20
> Shawn
>=20
> > +     };
> > +
> > +     reg_csi1_3v3: regulator-csi1-vdd3v3 {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-min-microvolt =3D <3300000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             regulator-name =3D "CSI1_VDD3V3";
> > +             gpio =3D <&expander0 14 GPIO_ACTIVE_HIGH>;
> > +             enable-active-high;
> > +             vin-supply =3D <&reg_vdd5v0>;
> > +     };
> > +
> > +     reg_csi2_1v8: regulator-csi2-vdd1v8 {
> > +             compatible =3D "regulator-fixed";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&pinctrl_reg_csi2_1v8>;
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <1800000>;
> > +             regulator-name =3D "CSI2_VDD1V8";
> > +             gpio =3D <&gpio3 21 GPIO_ACTIVE_HIGH>;
> > +             enable-active-high;
> > +             vin-supply =3D <&reg_baseboard_vdd3v3>;
> > +     };
> > +
> > +     reg_csi2_3v3: regulator-csi2-vdd3v3 {
> > +             compatible =3D "regulator-fixed";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&pinctrl_reg_csi2_3v3>;
> > +             regulator-min-microvolt =3D <3300000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             regulator-name =3D "CSI2_VDD3V3";
> > +             gpio =3D <&gpio4 25 GPIO_ACTIVE_HIGH>;
> > +             enable-active-high;
> > +             vin-supply =3D <&reg_vdd5v0>;
> > +     };
> > +
> >       regulator-vbus-usb20 {
> >               compatible =3D "regulator-fixed";
> >               regulator-min-microvolt =3D <5000000>;
> > @@ -413,6 +457,18 @@ MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03              0=
x41
> >               >;
> >       };
> > =20
> > +     pinctrl_reg_csi2_1v8: regcsi21v8grp {
> > +             fsl,pins =3D <
> > +                     MX8MP_IOMUXC_SAI5_RXD0__GPIO3_IO21              0=
x19
> > +             >;
> > +     };
> > +
> > +     pinctrl_reg_csi2_3v3: regcsi23v3grp {
> > +             fsl,pins =3D <
> > +                     MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25               0=
x19
> > +             >;
> > +     };
> > +
> >       pinctrl_uart2: uart2grp {
> >               fsl,pins =3D <
> >                       MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX            0=
x14f
> > --=20
> > 2.34.1
> >

