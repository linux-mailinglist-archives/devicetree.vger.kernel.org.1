Return-Path: <devicetree+bounces-80528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E6D919E41
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 06:34:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9B9A1C2339D
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 04:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D22A535894;
	Thu, 27 Jun 2024 04:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="oJz0BbLm"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62441CD29
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719462810; cv=none; b=Hmotzb/hc67Va+CN7lZ7+bYaPVBS+WbwfcbvwDlag3/aTKa86gG7eGG8ETVFJPnjN0CI2Q3/XFyx8/aVVRJq7GiUDMZbxKmS9ESkjBjp116DGqjVJQJ2ARuyL6+eqfX7sUoKWLlu6sy6AChUjNmqtZQ7J4arS5FS0Merek7Ya2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719462810; c=relaxed/simple;
	bh=9OHHBeRNYkf08tWVOx58hAsOaRBNPBBISNQUuPYyddg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Hq4WbnVBIzf8ZOqW7c9+m/r25jx81Zfd//MrftHZ1KXjPYwm9ekOfyifo4xDJvqYP6/j6t+lFBrkG4Jjxtb11/X5GzV2Y/q6EVbXdjI9BYDgQXjPp428wqtyT4Sxvbw2WQ3s/k+Y8nM4ujTMutGYZmznRkqEkL5D8k6B9LlpRfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=oJz0BbLm; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id E4C6D2C0C2E;
	Thu, 27 Jun 2024 16:33:22 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1719462802;
	bh=OyAj5xTANs1fjuTKws7ah8fvMoeSnsG3zKFlZspY/G4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oJz0BbLmXa7Oo/PtEYHyLCZumN+NOpaPYGEFea+bfEvWiiwyrwjwLdc5ytFNx0ora
	 HO9IbsBV68cacyRQxZ/mBYswWK/NTfaxn5bdKnssP/lJhlbKaB+SkXEqcKmf6SkWtH
	 e2p77VHDx5LWH1gDQxE5l/2P4hlqRoVbqJZMvisHJOttsQa+cn1EZPgDc1JE+6zaUR
	 uBzQPgkWHmO9Dai5VwjF6F84ByJJI4hJKu4D4yFIqpl0Zs+517B9Y2yxNaaGDc60pF
	 QSqVU7zHkXxOLt4cznTPOj03zoJLHIzykQGA3PglsTE3wOu/pCez2nAMokBtOCbjzm
	 k4dws3Xop8EBA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B667ceb920003>; Thu, 27 Jun 2024 16:33:22 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 0ECCA13EE9B;
	Thu, 27 Jun 2024 16:33:22 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 0BE9B28078C; Thu, 27 Jun 2024 16:33:22 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: tglx@linutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	daniel.lezcano@linaro.org,
	paulburton@kernel.org,
	peterz@infradead.org,
	mail@birger-koblitz.de,
	bert@biot.com,
	john@phrozen.org,
	sander@svanheule.net
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org,
	kabel@kernel.org,
	ericwouds@gmail.com,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v3 9/9] mips: dts: realtek: Add RTL9302C board
Date: Thu, 27 Jun 2024 16:33:17 +1200
Message-ID: <20240627043317.3751996-10-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240627043317.3751996-1-chris.packham@alliedtelesis.co.nz>
References: <20240627043317.3751996-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=CvQccW4D c=1 sm=1 tr=0 ts=667ceb92 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=T1WGqf2p2xoA:10 a=FkagyKZCYwirPjr5IuAA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Add support for the RTL9302 SoC and the RTL9302C_2xRTL8224_2XGE
reference board.

The RTL930x family of SoCs are Realtek switches with an embedded MIPS
core (800MHz 34Kc). Most of the peripherals are similar to the RTL838x
SoC and can make use of many existing drivers.

Add in full DSA switch support is still a work in progress.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v3:
    - Use full board name
    Changes in v2:
    - Use specific compatibles instead of rtl930x
    - Remove unnecessary irq flags (interrupt controller is one-cell)
    - Remove earlycon
    - Name clocks as recommended in dt schema

 arch/mips/boot/dts/realtek/Makefile           |  1 +
 .../cameo-rtl9302c-2x-rtl8224-2xge.dts        | 73 +++++++++++++++++
 arch/mips/boot/dts/realtek/rtl930x.dtsi       | 79 +++++++++++++++++++
 3 files changed, 153 insertions(+)
 create mode 100644 arch/mips/boot/dts/realtek/cameo-rtl9302c-2x-rtl8224-=
2xge.dts
 create mode 100644 arch/mips/boot/dts/realtek/rtl930x.dtsi

diff --git a/arch/mips/boot/dts/realtek/Makefile b/arch/mips/boot/dts/rea=
ltek/Makefile
index fba4e93187a6..d2709798763f 100644
--- a/arch/mips/boot/dts/realtek/Makefile
+++ b/arch/mips/boot/dts/realtek/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-y	+=3D cisco_sg220-26.dtb
+dtb-y	+=3D cameo-rtl9302c-2x-rtl8224-2xge.dtb
diff --git a/arch/mips/boot/dts/realtek/cameo-rtl9302c-2x-rtl8224-2xge.dt=
s b/arch/mips/boot/dts/realtek/cameo-rtl9302c-2x-rtl8224-2xge.dts
new file mode 100644
index 000000000000..b51e10ae4950
--- /dev/null
+++ b/arch/mips/boot/dts/realtek/cameo-rtl9302c-2x-rtl8224-2xge.dts
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/dts-v1/;
+
+#include "rtl930x.dtsi"
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/thermal/thermal.h>
+
+/ {
+	compatible =3D "cameo,rtl9302c-2x-rtl8224-2xge", "realtek,rtl9302-soc";
+	model =3D "RTL9302C Development Board";
+
+	memory@0 {
+		device_type =3D "memory";
+		reg =3D <0x0 0x8000000>;
+	};
+
+	chosen {
+		stdout-path =3D "serial0:115200n8";
+	};
+};
+
+&uart0 {
+	status =3D "okay";
+};
+
+&spi0 {
+	status =3D "okay";
+	flash@0 {
+		compatible =3D "jedec,spi-nor";
+		reg =3D <0>;
+		spi-max-frequency =3D <10000000>;
+
+		partitions {
+			compatible =3D "fixed-partitions";
+			#address-cells =3D <1>;
+			#size-cells =3D <1>;
+
+			partition@0 {
+				label =3D "u-boot";
+				reg =3D <0x0 0xe0000>;
+				read-only;
+			};
+			partition@e0000 {
+				label =3D "u-boot-env";
+				reg =3D <0xe0000 0x10000>;
+			};
+			partition@f0000 {
+				label =3D "u-boot-env2";
+				reg =3D <0xf0000 0x10000>;
+				read-only;
+			};
+			partition@100000 {
+				label =3D "jffs";
+				reg =3D <0x100000 0x100000>;
+			};
+			partition@200000 {
+				label =3D "jffs2";
+				reg =3D <0x200000 0x100000>;
+			};
+			partition@300000 {
+				label =3D "runtime";
+				reg =3D <0x300000 0xe80000>;
+			};
+			partition@1180000 {
+				label =3D "runtime2";
+				reg =3D <0x1180000 0xe80000>;
+			};
+		};
+	};
+};
diff --git a/arch/mips/boot/dts/realtek/rtl930x.dtsi b/arch/mips/boot/dts=
/realtek/rtl930x.dtsi
new file mode 100644
index 000000000000..f271940f82be
--- /dev/null
+++ b/arch/mips/boot/dts/realtek/rtl930x.dtsi
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause
+
+#include "rtl83xx.dtsi"
+
+/ {
+	compatible =3D "realtek,rtl9302-soc";
+
+	cpus {
+		#address-cells =3D <1>;
+		#size-cells =3D <0>;
+
+		cpu@0 {
+			device_type =3D "cpu";
+			compatible =3D "mips,mips34Kc";
+			reg =3D <0>;
+			clocks =3D <&baseclk 0>;
+			clock-names =3D "cpu";
+		};
+	};
+
+	baseclk: clock-800mhz {
+		compatible =3D "fixed-clock";
+		#clock-cells =3D <0>;
+		clock-frequency =3D <800000000>;
+	};
+
+	lx_clk: clock-175mhz {
+		compatible =3D "fixed-clock";
+		#clock-cells =3D <0>;
+		clock-frequency  =3D <175000000>;
+	};
+};
+
+&soc {
+	intc: interrupt-controller@3000 {
+		compatible =3D "realtek,rtl9300-intc", "realtek,rtl-intc";
+		reg =3D <0x3000 0x18>, <0x3018 0x18>;
+		interrupt-controller;
+		#interrupt-cells =3D <1>;
+
+		interrupt-parent =3D <&cpuintc>;
+		interrupts =3D <2>, <3>, <4>, <5>, <6>, <7>;
+	};
+
+	spi0: spi@1200 {
+		compatible =3D "realtek,rtl8380-spi";
+		reg =3D <0x1200 0x100>;
+
+		#address-cells =3D <1>;
+		#size-cells =3D <0>;
+	};
+
+	timer0: timer@3200 {
+		compatible =3D "realtek,rtl9302-timer", "realtek,otto-timer";
+		reg =3D <0x3200 0x10>, <0x3210 0x10>, <0x3220 0x10>,
+		    <0x3230 0x10>, <0x3240 0x10>;
+
+		interrupt-parent =3D <&intc>;
+		interrupts =3D <7>, <8>, <9>, <10>, <11>;
+		clocks =3D <&lx_clk>;
+	};
+};
+
+&uart0 {
+	/delete-property/ clock-frequency;
+	clocks =3D <&lx_clk>;
+
+	interrupt-parent =3D <&intc>;
+	interrupts =3D <30>;
+};
+
+&uart1 {
+	/delete-property/ clock-frequency;
+	clocks =3D <&lx_clk>;
+
+	interrupt-parent =3D <&intc>;
+	interrupts =3D <31>;
+};
+
--=20
2.45.2


