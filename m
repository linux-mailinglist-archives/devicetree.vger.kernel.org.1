Return-Path: <devicetree+bounces-25391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A218131CA
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:40:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6F721F22240
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78EA856B87;
	Thu, 14 Dec 2023 13:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="TvaB6Obu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89719114
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702561202; x=1734097202;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=mU/LhIYL5RBgQEbNWg80SqOIneRvkeJakwqWdi62WHE=;
  b=TvaB6ObuCmK+EBUPH0lFZ0ERydrSXyGfOVbHH6p2KvPGCWWlo1vz2/Wr
   8sdP1Xn3dLQxvDTgPBzdL6X5xf3yymZWwvzaiFOjfOzHybub0iDvS2sV/
   MIvlSmn+fcRVF11+5sX5FRJ77IwtZ9zmzo//N0UereUlEOHJHB31l+RoW
   SZ/aSFxpdceEQEn/Sp/d6W4k/h2bXm3njAZ1V1toHwtovJClTXb+LrCQM
   QTwU9f5aqTaPCQzBJtAzAZvlkLqZNfnRVZMExUzYGywauJN4kx7x4EzNv
   NeJPAC0I4V7VR+PR5GxqiPjrF/h/g2wQMMMmFUWnJRASDJ4HLp11E4WBg
   A==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34510718"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 14:40:00 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9FB5D280075;
	Thu, 14 Dec 2023 14:40:00 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Cc: linux-imx@nxp.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Xu Yang <xu.yang_2@nxp.com>
Subject: Re: [PATCH 4/4] arm64: dts: imx93-11x11-evk: enable usb and typec nodes
Date: Thu, 14 Dec 2023 14:40:01 +0100
Message-ID: <1952554.PYKUYFuaPT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20231214112442.2412079-4-xu.yang_2@nxp.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com> <20231214112442.2412079-4-xu.yang_2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,

thanks for the patch.

Am Donnerstag, 14. Dezember 2023, 12:24:42 CET schrieb Xu Yang:
> There are 2 Type-C ports and 2 USB controllers on i.MX93. Enable them.
>=20
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  .../boot/dts/freescale/imx93-11x11-evk.dts    | 108 ++++++++++++++++++
>  1 file changed, 108 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts index
> 2b9d47716f75..42b1ea7d5220 100644
> --- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> @@ -5,6 +5,7 @@
>=20
>  /dts-v1/;
>=20
> +#include <dt-bindings/usb/pd.h>
>  #include "imx93.dtsi"
>=20
>  / {
> @@ -103,6 +104,70 @@ &mu2 {
>  	status =3D "okay";
>  };
>=20
> +&lpi2c3 {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +	clock-frequency =3D <400000>;
> +	pinctrl-names =3D "default", "sleep";
> +	pinctrl-0 =3D <&pinctrl_lpi2c3>;
> +	pinctrl-1 =3D <&pinctrl_lpi2c3>;
> +	status =3D "okay";
> +
> +	ptn5110: tcpc@50 {

I do not know if there is already some consent, but personally I do not lik=
e=20
tcpc for the node name. Maybe change that to usb-typec@50.

> +		compatible =3D "nxp,ptn5110";
> +		reg =3D <0x50>;
> +		interrupt-parent =3D <&gpio3>;
> +		interrupts =3D <27 IRQ_TYPE_LEVEL_LOW>;
> +		status =3D "okay";

status not needed here, "okay" is default and node is added here.

> +
> +		port {
> +			typec1_dr_sw: endpoint {
> +				remote-endpoint =3D <&usb1_drd_sw>;
> +			};
> +		};
> +
> +		typec1_con: connector {
> +			compatible =3D "usb-c-connector";
> +			label =3D "USB-C";
> +			power-role =3D "dual";
> +			data-role =3D "dual";
> +			try-power-role =3D "sink";
> +			source-pdos =3D <PDO_FIXED(5000, 3000,=20
PDO_FIXED_USB_COMM)>;
> +			sink-pdos =3D <PDO_FIXED(5000, 3000,=20
PDO_FIXED_USB_COMM)
> +				     PDO_VAR(5000, 20000, 3000)>;
> +			op-sink-microwatt =3D <15000000>;
> +			self-powered;
> +		};
> +	};
> +
> +	ptn5110_2: tcpc@51 {

See above.

> +		compatible =3D "nxp,ptn5110";
> +		reg =3D <0x51>;
> +		interrupt-parent =3D <&gpio3>;
> +		interrupts =3D <27 IRQ_TYPE_LEVEL_LOW>;
> +		status =3D "okay";

See above.

Best regards,
Alexander

> +
> +		port {
> +			typec2_dr_sw: endpoint {
> +				remote-endpoint =3D <&usb2_drd_sw>;
> +			};
> +		};
> +
> +		typec2_con: connector {
> +			compatible =3D "usb-c-connector";
> +			label =3D "USB-C";
> +			power-role =3D "dual";
> +			data-role =3D "dual";
> +			try-power-role =3D "sink";
> +			source-pdos =3D <PDO_FIXED(5000, 3000,=20
PDO_FIXED_USB_COMM)>;
> +			sink-pdos =3D <PDO_FIXED(5000, 3000,=20
PDO_FIXED_USB_COMM)
> +				     PDO_VAR(5000, 20000, 3000)>;
> +			op-sink-microwatt =3D <15000000>;
> +			self-powered;
> +		};
> +	};
> +};
> +
>  &eqos {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&pinctrl_eqos>;
> @@ -155,6 +220,42 @@ &lpuart5 {
>  	status =3D "okay";
>  };
>=20
> +&usbotg1 {
> +	dr_mode =3D "otg";
> +	hnp-disable;
> +	srp-disable;
> +	adp-disable;
> +	usb-role-switch;
> +	disable-over-current;
> +	samsung,picophy-pre-emp-curr-control =3D <3>;
> +	samsung,picophy-dc-vol-level-adjust =3D <7>;
> +	status =3D "okay";
> +
> +	port {
> +		usb1_drd_sw: endpoint {
> +			remote-endpoint =3D <&typec1_dr_sw>;
> +		};
> +	};
> +};
> +
> +&usbotg2 {
> +	dr_mode =3D "otg";
> +	hnp-disable;
> +	srp-disable;
> +	adp-disable;
> +	usb-role-switch;
> +	disable-over-current;
> +	samsung,picophy-pre-emp-curr-control =3D <3>;
> +	samsung,picophy-dc-vol-level-adjust =3D <7>;
> +	status =3D "okay";
> +
> +	port {
> +		usb2_drd_sw: endpoint {
> +			remote-endpoint =3D <&typec2_dr_sw>;
> +		};
> +	};
> +};
> +
>  &usdhc1 {
>  	pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
>  	pinctrl-0 =3D <&pinctrl_usdhc1>;
> @@ -221,6 +322,13 @@ MX93_PAD_ENET2_TX_CTL__ENET1_RGMII_TX_CTL	0x57e
>=20
>  		>;
>=20
>  	};
>=20
> +	pinctrl_lpi2c3: lpi2c3grp {
> +		fsl,pins =3D <
> +			MX93_PAD_GPIO_IO28__LPI2C3_SDA		=09
0x40000b9e
> +			MX93_PAD_GPIO_IO29__LPI2C3_SCL		=09
0x40000b9e
> +		>;
> +	};
> +
>  	pinctrl_uart1: uart1grp {
>  		fsl,pins =3D <
>  			MX93_PAD_UART1_RXD__LPUART1_RX		=09
0x31e


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



