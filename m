Return-Path: <devicetree+bounces-25389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C9C8131B1
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:36:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE1CD1F2200F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05C9956767;
	Thu, 14 Dec 2023 13:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="cFjqobWo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A080114
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702560959; x=1734096959;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=RdULjyNo4x0HQt1Yc4rzvZrYNht6UL/1jhIj0E0HlN8=;
  b=cFjqobWoAvolJEe185FMI7q/+4ZbBpEM8evoSshUyBWhmHPSrIWHrlNT
   ofki4qpd+fiF3c91OXHphnGqaBGVmZT1R/mQ2VdecavSThbGNxnIkJBOj
   Ts19bf38Qlirf+wjh19JbXEJiBTU8j7Cpa8VUvvdGB1r2DDdk/7WH4TEP
   c1UYU8HzC3Il5jHggdAWtKgndwsFucfRZ8QYfj4RQAb9JLHVx95kHAlVS
   9kNQ7Ctwoglq2/9rqWjleRNJk9DB74NNXKN/PrL+VRCbwc/Pq6fqnO++O
   K6NZvWDRcE7S5rv0ielo7v6mH9MGqcF7fpxZS0vxEfyL2j8d9UYAwNQSo
   w==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34510600"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 14:35:57 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2E694280075;
	Thu, 14 Dec 2023 14:35:57 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Cc: linux-imx@nxp.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Xu Yang <xu.yang_2@nxp.com>
Subject: Re: [PATCH 3/4] arm64: dts: imx93: add usb nodes
Date: Thu, 14 Dec 2023 14:35:57 +0100
Message-ID: <8309719.T7Z3S40VBb@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20231214112442.2412079-3-xu.yang_2@nxp.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com> <20231214112442.2412079-3-xu.yang_2@nxp.com>
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

Am Donnerstag, 14. Dezember 2023, 12:24:41 CET schrieb Xu Yang:
> There are 2 USB controllers on i.MX93. Add them.
>=20
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 58 ++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
> b/arch/arm64/boot/dts/freescale/imx93.dtsi index 34c0540276d1..bcf4861cfe=
de
> 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -171,6 +171,20 @@ cm33: remoteproc-cm33 {
>  		status =3D "disabled";
>  	};
>=20
> +	usbphynop1: usbphynop1 {
> +		#phy-cells =3D <0>;
> +		compatible =3D "usb-nop-xceiv";

compatible first.

> +		clocks =3D <&clk IMX93_CLK_USB_PHY_BURUNIN>;
> +		clock-names =3D "main_clk";
> +	};
> +
> +	usbphynop2: usbphynop2 {
> +		#phy-cells =3D <0>;
> +		compatible =3D "usb-nop-xceiv";

compatible first.

> +		clocks =3D <&clk IMX93_CLK_USB_PHY_BURUNIN>;
> +		clock-names =3D "main_clk";
> +	};
> +
>  	soc@0 {
>  		compatible =3D "simple-bus";
>  		#address-cells =3D <1>;
> @@ -1059,5 +1073,49 @@ ddr-pmu@4e300dc0 {
>  			reg =3D <0x4e300dc0 0x200>;
>  			interrupts =3D <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
>  		};
> +
> +		usbotg1: usb@4c100000 {
> +			compatible =3D "fsl,imx8mm-usb", "fsl,imx7d-usb",=20
"fsl,imx27-usb";
> +			reg =3D <0x4c100000 0x200>;
> +			interrupts =3D <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&clk IMX93_CLK_USB_CONTROLLER_GATE>,
> +				 <&clk IMX93_CLK_HSIO_32K_GATE>;
> +			clock-names =3D "usb_ctrl_root_clk",=20
"usb_wakeup_clk";

drivers/usb/chipidea/ci_hdrc_imx.c uses 3 clocks: "ipg", "ahb" and "per", s=
ee=20
imx_get_clks(). How is this supposed to work?

> +			assigned-clocks =3D <&clk IMX93_CLK_HSIO>;
> +			assigned-clock-parents =3D <&clk=20
IMX93_CLK_SYS_PLL_PFD1_DIV2>;
> +			assigned-clock-rates =3D <133000000>;
> +			fsl,usbphy =3D <&usbphynop1>;
> +			fsl,usbmisc =3D <&usbmisc1 0>;
> +			status =3D "disabled";
> +		};
> +
> +		usbmisc1: usbmisc@4c100200 {
> +			compatible =3D "fsl,imx8mm-usbmisc", "fsl,imx7d-
usbmisc",
> +					"fsl,imx6q-usbmisc";

This means you are compatible to fsl,imx7d-usbmisc. Which means you use=20
register MX7D_USB_OTG_PHY_STATUS in USB misc (USBNC). But i.MX93 RM Rev. 2=
=20
(04/2023) lacks this and other registers.

> +			#index-cells =3D <1>;
> +			reg =3D <0x4c100200 0x200>;

reg after compatible.

> +		};
> +
> +		usbotg2: usb@4c200000 {
> +			compatible =3D "fsl,imx8mm-usb", "fsl,imx7d-usb",=20
"fsl,imx27-usb";
> +			reg =3D <0x4c200000 0x200>;
> +			interrupts =3D <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&clk IMX93_CLK_USB_CONTROLLER_GATE>,
> +				 <&clk IMX93_CLK_HSIO_32K_GATE>;
> +			clock-names =3D "usb_ctrl_root_clk",=20
"usb_wakeup_clk";

The same as for usbotg1 applies here.

> +			assigned-clocks =3D <&clk IMX93_CLK_HSIO>;
> +			assigned-clock-parents =3D <&clk=20
IMX93_CLK_SYS_PLL_PFD1_DIV2>;
> +			assigned-clock-rates =3D <133000000>;
> +			fsl,usbphy =3D <&usbphynop2>;
> +			fsl,usbmisc =3D <&usbmisc2 0>;
> +			status =3D "disabled";
> +		};
> +
> +		usbmisc2: usbmisc@4c200200 {
> +			compatible =3D "fsl,imx8mm-usbmisc", "fsl,imx7d-
usbmisc",
> +					"fsl,imx6q-usbmisc";
> +			#index-cells =3D <1>;
> +			reg =3D <0x4c200200 0x200>;

The same as for usbmisc1 applies here.

> +		};
>  	};
>  };

Best regards,
Alexander

=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



