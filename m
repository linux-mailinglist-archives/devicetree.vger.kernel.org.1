Return-Path: <devicetree+bounces-26594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CF4816FFA
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:13:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F2241C241E9
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 429FA37867;
	Mon, 18 Dec 2023 13:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="ed5//+cA"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FE51D14A
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 13:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=s31663417; t=1702904843; x=1703509643; i=wahrenst@gmx.net;
	bh=eWQKR2FtSC0mAYUpjLMP4NNSyJU/Xf/aGfPCIB1TQFw=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:
	 References;
	b=ed5//+cAG8mZsnk2B11Pd7SVJ8wEjU7QqfvYzWiliTGc/yyEamU7VP9WTe0pM2BS
	 Uln2nnV9UJfTMxJldPVm3C6Wd25rY19ibTH989Ch/fCYdmQZxZVdXGgLQBZLMtzyQ
	 z3LlGa4C0WgMQYFOCfO2Y4oek43KnRrjCngECi0kXuTwHN1szWvqzWxbdhycrlbml
	 CYM/CVteg4Q0V+Wyaj1tgPanLOJVYEc3UX/q4WTEr+csQUTw3KiueyViDHtL1LcBc
	 3Th/M0ujpYmtKm2sUib4Z6aF91r9Zn84/EXOUyKEYupCfXOc6wwlVoBMBMkCLKHP6
	 9WxZgIb7r/+BP1tKuw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.248.43]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N3bSj-1r7LZY0AFP-010Z6P; Mon, 18
 Dec 2023 14:07:23 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Han Xu <han.xu@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Marek Vasut <marex@denx.de>,
	=?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-imx@nxp.com,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH RFT 2/2] ARM: dts: mxs: imx28: Fix NAND hierarchy description
Date: Mon, 18 Dec 2023 14:06:56 +0100
Message-Id: <20231218130656.9020-2-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218130656.9020-1-wahrenst@gmx.net>
References: <20231218130656.9020-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:nYVZsxOZtPW24WMzXP6O5WRlqpD7PEDcnsr6JMLaxiLZgFnyiFi
 IclrqBeUyjmV7jnQrB5bOPlcZL0wVjlXp/AmOC1aLdENtjeXiTH3U3ijb0x0kyUcln0PD4H
 A3CX0CwWpnYI8h7Ifb7AXv/VKYkLSj3PjzjRjEewXeN7XnNAMu6awuy3lr2G8FbDNjuDzB1
 /CjmrdDafoHwRFHH2013Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:sewIBT55R3c=;yrRpFoVRA3+n4q1ty0y6h5Jn1Cl
 avaPbc8Ud1AXkfEWccQDI4Yffx8AGfb1hJRQZ4WluChhIJOBwtd7RaND6bdmVnxoYhTSs7EZL
 koW/KF2AMTBygXP1Ixbw/ARw4amQhmEL8scN1KhYLXM6/9Dayl70wKeVum/nrlsBwuQQSqJ9F
 ZV5jXTcv8Hl2XWAMFWd4kpwwWr9/K6fTMkYly8stK7YuTYXMR6LrcUmOOK5L0A6sW8TdANAfd
 GDZz2OCL6+2HvkzMaKFHJv4xi1HLJwCMMes7BPGeOhqhb312ij3y3H8EaLidEDRjOiYDGgOsu
 78BbcwzSwcHFObJ/gjvGuOWWZ6VrN5muRSD+V4Lc6DjDm1q0CVapAqR4dDzKEeATnejC58MEj
 YhTamBUtz21ZJ427ifRXhDw/KHJ3G05GWMyApXSZUBJwYG3/MybaSRvMMcXfEYfPfvp5JDCX6
 rQ7Nm7bd9N2tInVMUk71D/0H7C+gwZ6NVcckjNSdkFkQClWQ2+WvqhJPrwH+vp9CzhAab/xBm
 GQgu5rRRENX3pVVA2pY7BRG+BUXWi+CYhdmgUhGJV3aIj3qBzZQ18FCXJEbf9/EyImHq1R8kY
 Ir/pD+Q6qldC3pFmXhFqJ5+Cm1+CunB04I54D6DQpi3TwOrl6EY5k3mTi3B1vzjSqxfGv1LnP
 JZ7m3X+KmpM2Omh5zqxqrrqpXCFxvrez0cg8P+OpzpQSSTk+tbvWnx+e4OnYwrC6NnV7DTZgV
 gAMo+6CqYAV5GWqp9W0De1fr0O9ILYM3WfFke/aZXg7CP+J45g5Wknod86gBp32sQdBubS7JT
 9CeDN3UaHlnGNDahFNji1RbtGZw573y71i80a1LfSBaKWVR+Cm5iLnJvUCX7FIx3ugQLBhI4P
 +orqKBzFzIheDUX9FXy1hTMsPq6jj5Jow2rYEvgflpvNRiTV1E9uC2SkB9uD0eGGQ3LT5bmGW
 cTR5ZQ==

The size-cells for GPMI are wrong in imx28.dtsi, which causes the
following warning:

    nand-controller@8000c000: #size-cells:0:0: 0 was expected

The reason for this is the definition of the partitions directly
below the nand controller node. According to nand-controller.yaml
the NAND chip must be defined as a child of the controller. Even
the fixed partitions must be kept in a partitions container.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--

Hi,
unfortunately i don't have access to MSR M28CU3 or an Armadeus Systems APF=
28
so it would be nice if someone can give a try.

 arch/arm/boot/dts/nxp/mxs/imx28-apf28.dts  | 64 +++++++++++++---------
 arch/arm/boot/dts/nxp/mxs/imx28-m28.dtsi   |  2 -
 arch/arm/boot/dts/nxp/mxs/imx28-m28cu3.dts | 28 ++++++----
 arch/arm/boot/dts/nxp/mxs/imx28.dtsi       |  2 +-
 4 files changed, 56 insertions(+), 40 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-apf28.dts b/arch/arm/boot/dts=
/nxp/mxs/imx28-apf28.dts
index 98672932e41b..10bfac31f672 100644
=2D-- a/arch/arm/boot/dts/nxp/mxs/imx28-apf28.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-apf28.dts
@@ -27,39 +27,49 @@ &gpmi {
 	pinctrl-0 =3D <&gpmi_pins_a &gpmi_status_cfg>;
 	status =3D "okay";

-	partition@0 {
-		label =3D "u-boot";
-		reg =3D <0x0 0x300000>;
-	};
+	nand@0 {
+		reg =3D <0>;

-	partition@300000 {
-		label =3D "env";
-		reg =3D <0x300000 0x80000>;
-	};
+		partitions {
+			compatible =3D "fixed-partitions";
+			#address-cells =3D <1>;
+			#size-cells =3D <1>;

-	partition@380000 {
-		label =3D "env2";
-		reg =3D <0x380000 0x80000>;
-	};
+			partition@0 {
+				label =3D "u-boot";
+				reg =3D <0x0 0x300000>;
+			};

-	partition@400000 {
-		label =3D "dtb";
-		reg =3D <0x400000 0x80000>;
-	};
+			partition@300000 {
+				label =3D "env";
+				reg =3D <0x300000 0x80000>;
+			};

-	partition@480000 {
-		label =3D "splash";
-		reg =3D <0x480000 0x80000>;
-	};
+			partition@380000 {
+				label =3D "env2";
+				reg =3D <0x380000 0x80000>;
+			};

-	partition@500000 {
-		label =3D "kernel";
-		reg =3D <0x500000 0x800000>;
-	};
+			partition@400000 {
+				label =3D "dtb";
+				reg =3D <0x400000 0x80000>;
+			};
+
+			partition@480000 {
+				label =3D "splash";
+				reg =3D <0x480000 0x80000>;
+			};
+
+			partition@500000 {
+				label =3D "kernel";
+				reg =3D <0x500000 0x800000>;
+			};

-	partition@d00000 {
-		label =3D "rootfs";
-		reg =3D <0xd00000 0xf300000>;
+			partition@d00000 {
+				label =3D "rootfs";
+				reg =3D <0xd00000 0xf300000>;
+			};
+		};
 	};
 };

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-m28.dtsi b/arch/arm/boot/dts/=
nxp/mxs/imx28-m28.dtsi
index 66facef10ba9..54b0f715f091 100644
=2D-- a/arch/arm/boot/dts/nxp/mxs/imx28-m28.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-m28.dtsi
@@ -24,8 +24,6 @@ reg_3p3v: regulator-0 {
 };

 &gpmi {
-	#address-cells =3D <1>;
-	#size-cells =3D <1>;
 	pinctrl-names =3D "default";
 	pinctrl-0 =3D <&gpmi_pins_a &gpmi_status_cfg>;
 	status =3D "okay";
diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-m28cu3.dts b/arch/arm/boot/dt=
s/nxp/mxs/imx28-m28cu3.dts
index 34b4d3246db1..d069ac907490 100644
=2D-- a/arch/arm/boot/dts/nxp/mxs/imx28-m28cu3.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-m28cu3.dts
@@ -93,21 +93,29 @@ &duart {
 };

 &gpmi {
-	#address-cells =3D <1>;
-	#size-cells =3D <1>;
 	pinctrl-names =3D "default";
 	pinctrl-0 =3D <&gpmi_pins_a &gpmi_status_cfg>;
 	status =3D "okay";

-	partition@0 {
-		label =3D "gpmi-nfc-0-boot";
-		reg =3D <0x00000000 0x01400000>;
-		read-only;
-	};
+	nand@0 {
+		reg =3D <0>;

-	partition@1 {
-		label =3D "gpmi-nfc-general-use";
-		reg =3D <0x01400000 0x0ec00000>;
+		partitions {
+			compatible =3D "fixed-partitions";
+			#address-cells =3D <1>;
+			#size-cells =3D <1>;
+
+			partition@0 {
+				label =3D "gpmi-nfc-0-boot";
+				reg =3D <0x00000000 0x01400000>;
+				read-only;
+			};
+
+			partition@1 {
+				label =3D "gpmi-nfc-general-use";
+				reg =3D <0x01400000 0x0ec00000>;
+			};
+		};
 	};
 };

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi b/arch/arm/boot/dts/nxp/=
mxs/imx28.dtsi
index 4817fba2d938..9655403b7f90 100644
=2D-- a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
@@ -99,7 +99,7 @@ perfmon: perfmon@80006000 {
 			gpmi: nand-controller@8000c000 {
 				compatible =3D "fsl,imx28-gpmi-nand";
 				#address-cells =3D <1>;
-				#size-cells =3D <1>;
+				#size-cells =3D <0>;
 				reg =3D <0x8000c000 0x2000>, <0x8000a000 0x2000>;
 				reg-names =3D "gpmi-nand", "bch";
 				interrupts =3D <41>;
=2D-
2.34.1


