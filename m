Return-Path: <devicetree+bounces-11779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D9D7D6908
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:40:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 89E75B21241
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3E0326E08;
	Wed, 25 Oct 2023 10:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D2E266D8
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:40:14 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A967D43;
	Wed, 25 Oct 2023 03:40:10 -0700 (PDT)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 386FC828C;
	Wed, 25 Oct 2023 18:39:59 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 18:39:59 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 18:39:58 +0800
From: Keith Zhao <keith.zhao@starfivetech.com>
To: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
CC: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, "Rob
 Herring" <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	"Emil Renner Berthing" <kernel@esmil.dk>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel
	<p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>,
	<christian.koenig@amd.com>, Bjorn Andersson <andersson@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki
	<jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Keith Zhao
	<keith.zhao@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>,
	Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang
	<changhuang.liang@starfivetech.com>
Subject: [PATCH v2 2/6] riscv: dts: starfive: jh7110: add dc controller and hdmi node
Date: Wed, 25 Oct 2023 18:39:53 +0800
Message-ID: <20231025103957.3776-3-keith.zhao@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231025103957.3776-1-keith.zhao@starfivetech.com>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

Add the dc controller and hdmi node for the Starfive JH7110 SoC.

Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
---
 .../jh7110-starfive-visionfive-2.dtsi         | 91 +++++++++++++++++++
 arch/riscv/boot/dts/starfive/jh7110.dtsi      | 41 +++++++++
 2 files changed, 132 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dt=
si b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
index de0f40a8b..97909b6d2 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
@@ -31,6 +31,25 @@ memory@40000000 {
 		reg =3D <0x0 0x40000000 0x1 0x0>;
 	};
=20
+	reserved-memory {
+		#address-cells =3D <2>;
+		#size-cells =3D <2>;
+		ranges;
+
+		/* vout applies for space from this CMA
+		 * Without this CMA reservation,
+		 * vout may not work properly.
+		 */
+		linux,cma {
+			compatible =3D "shared-dma-pool";
+			reusable;
+			size =3D <0x0 0x20000000>;
+			alignment =3D <0x0 0x1000>;
+			alloc-ranges =3D <0x0 0x70000000 0x0 0x20000000>;
+			linux,cma-default;
+		};
+	};
+
 	gpio-restart {
 		compatible =3D "gpio-restart";
 		gpios =3D <&sysgpio 35 GPIO_ACTIVE_HIGH>;
@@ -231,6 +250,41 @@ GPOEN_DISABLE,
 			slew-rate =3D <0>;
 		};
 	};
+
+	hdmi_pins: hdmi-0 {
+		hdmi-scl-pins {
+			pinmux =3D <GPIOMUX(0, GPOUT_SYS_HDMI_DDC_SCL,
+					     GPOEN_SYS_HDMI_DDC_SCL,
+					     GPI_SYS_HDMI_DDC_SCL)>;
+			input-enable;
+			bias-pull-up;
+		};
+
+		hdmi-sda-pins {
+			pinmux =3D <GPIOMUX(1, GPOUT_SYS_HDMI_DDC_SDA,
+					     GPOEN_SYS_HDMI_DDC_SDA,
+					     GPI_SYS_HDMI_DDC_SDA)>;
+			input-enable;
+			bias-pull-up;
+		};
+
+		hdmi-cec-pins {
+			pinmux =3D <GPIOMUX(14, GPOUT_SYS_HDMI_CEC_SDA,
+					     GPOEN_SYS_HDMI_CEC_SDA,
+					     GPI_SYS_HDMI_CEC_SDA)>;
+			input-enable;
+			bias-pull-up;
+		};
+
+		hdmi-hpd-pins {
+			pinmux =3D <GPIOMUX(15, GPOUT_HIGH,
+					     GPOEN_ENABLE,
+					     GPI_SYS_HDMI_HPD)>;
+			input-enable;
+			bias-disable; /* external pull-up */
+		};
+	};
+
 };
=20
 &uart0 {
@@ -254,3 +308,40 @@ &U74_3 {
 &U74_4 {
 	cpu-supply =3D <&vdd_cpu>;
 };
+
+&voutcrg {
+	status =3D "okay";
+};
+
+&display {
+	status =3D "okay";
+};
+
+&hdmi {
+	status =3D "okay";
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&hdmi_pins>;
+
+	hdmi_in: port {
+		#address-cells =3D <1>;
+		#size-cells =3D <0>;
+		hdmi_in_dc: endpoint@0 {
+			reg =3D <0>;
+			remote-endpoint =3D <&dc_out_hdmi>;
+		};
+	};
+};
+
+&dc8200 {
+	status =3D "okay";
+
+	dc_out: port {
+		#address-cells =3D <1>;
+		#size-cells =3D <0>;
+		dc_out_hdmi: endpoint@0 {
+			reg =3D <0>;
+			remote-endpoint =3D <&hdmi_in_dc>;
+		};
+
+	};
+};
diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/d=
ts/starfive/jh7110.dtsi
index 0005fa163..1670452fb 100644
--- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
@@ -282,6 +282,11 @@ tdm_ext: tdm-ext-clock {
 		#clock-cells =3D <0>;
 	};
=20
+	display: display-subsystem {
+		compatible =3D "starfive,display-subsystem";
+		ports =3D <&dc_out>;
+	};
+
 	soc {
 		compatible =3D "simple-bus";
 		interrupt-parent =3D <&plic>;
@@ -613,5 +618,41 @@ voutcrg: clock-controller@295c0000 {
 			#reset-cells =3D <1>;
 			power-domains =3D <&pwrc JH7110_PD_VOUT>;
 		};
+
+		dc8200: lcd-controller@29400000 {
+			compatible =3D "starfive,jh7110-dc8200";
+			reg =3D <0x0 0x29400000 0x0 0x100>,
+			      <0x0 0x29400800 0x0 0x2000>;
+			interrupts =3D <95>;
+			clocks =3D <&syscrg JH7110_SYSCLK_NOC_BUS_DISP_AXI>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_PIX0>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_PIX1>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_CORE>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_AXI>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_AHB>,
+				<&hdmitx0_pixelclk>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_PIX>;
+			clock-names =3D "noc_bus", "channel0", "channel1",
+				      "dc_core", "axi_core", "ahb",
+				      "hdmi_tx", "dc_parent";
+			resets =3D <&voutcrg JH7110_VOUTRST_DC8200_AXI>,
+				 <&voutcrg JH7110_VOUTRST_DC8200_AHB>,
+				 <&voutcrg JH7110_VOUTRST_DC8200_CORE>;
+			reset-names =3D "axi","ahb", "core";
+		};
+
+		hdmi: hdmi@29590000 {
+			compatible =3D "starfive,jh7110-inno-hdmi";
+			reg =3D <0x0 0x29590000 0x0 0x4000>;
+			interrupts =3D <99>;
+
+			clocks =3D <&voutcrg JH7110_VOUTCLK_HDMI_TX_SYS>,
+				 <&voutcrg JH7110_VOUTCLK_HDMI_TX_MCLK>,
+				 <&voutcrg JH7110_VOUTCLK_HDMI_TX_BCLK>,
+				 <&hdmitx0_pixelclk>;
+			clock-names =3D "sysclk", "mclk", "bclk", "pclk";
+			resets =3D <&voutcrg JH7110_VOUTRST_HDMI_TX_HDMI>;
+			#sound-dai-cells =3D <0>;
+		};
 	};
 };
--=20
2.34.1


