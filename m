Return-Path: <devicetree+bounces-8633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2D87C951D
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 17:10:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E29E2821DB
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 735DC134CE;
	Sat, 14 Oct 2023 15:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30CE134A4
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 15:10:27 +0000 (UTC)
Received: from hsmtpd-def.xspmail.jp (hsmtpd-def.xspmail.jp [202.238.198.241])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E6B6D6
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 08:10:26 -0700 (PDT)
X-Country-Code: JP
Received: from sakura.ysato.name (ik1-413-38519.vs.sakura.ne.jp [153.127.30.23])
	by hsmtpd-out-0.asahinet.cluster.xspmail.jp (Halon) with ESMTPA
	id 17808261-b9b0-400d-b75c-92f1555e158b;
	Sat, 14 Oct 2023 23:54:24 +0900 (JST)
Received: from SIOS1075.ysato.name (ZM005235.ppp.dion.ne.jp [222.8.5.235])
	by sakura.ysato.name (Postfix) with ESMTPSA id 3BBC91C050D;
	Sat, 14 Oct 2023 23:54:24 +0900 (JST)
From: Yoshinori Sato <ysato@users.sourceforge.jp>
To: linux-sh@vger.kernel.org
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>,
	glaubitz@physik.fu-berlin.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH v3 30/35] arch/sh/boot/dts: RTS7751R2D Plus DeviceTree.
Date: Sat, 14 Oct 2023 23:54:05 +0900
Message-Id: <bde5805e90c9e1338becba6f922c23d1b2e4fb21.1697199949.git.ysato@users.sourceforge.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1697199949.git.ysato@users.sourceforge.jp>
References: <cover.1697199949.git.ysato@users.sourceforge.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_SOFTFAIL autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Renesas RTS7751R2D Plus devicetree.

Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
---
 arch/sh/boot/dts/rts7751r2dplus.dts | 157 ++++++++++++++++++++++++++++
 1 file changed, 157 insertions(+)
 create mode 100644 arch/sh/boot/dts/rts7751r2dplus.dts

diff --git a/arch/sh/boot/dts/rts7751r2dplus.dts b/arch/sh/boot/dts/rts7751r2dplus.dts
new file mode 100644
index 000000000000..7fc9692da257
--- /dev/null
+++ b/arch/sh/boot/dts/rts7751r2dplus.dts
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Source for the Renesas RTS7751R2D Plus
+ */
+
+/dts-v1/;
+
+#include "sh7751r.dtsi"
+
+/ {
+	model = "Renesas RTS7715R2D Plus";
+	compatible = "renesas,rts7751r2d", "renesas,sh7751r";
+
+	aliases {
+		serial0 = &scif1;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@c000000 {
+		device_type = "memory";
+		reg = <0x0c000000 0x4000000>;
+	};
+
+	oscillator {
+		clock-frequency = <22222222>;
+	};
+
+	r2dintc: sh7751irl_encoder@a4000000 {
+		compatible = "renesas,sh7751-irl-ext";
+		reg = <0xa4000000 0x02>;
+		interrupt-controller;
+		#address-cells = <0>;
+		#size-cells = <0>;
+		#interrupt-cells = <1>;
+		renesas,width = <16>;
+		renesas,regtype = "enable";
+		renesas,irqbit =  <11>,		/* PCI INTD */
+				  <9>,		/* CF IDE */
+				  <8>,		/* CF CD */
+				  <12>,		/* PCI INTC */
+				  <10>,		/* SM501 */
+				  <6>,		/* KEY */
+				  <5>,		/* RTC ALARM */
+				  <4>,		/* RTC T */
+				  <7>,		/* SDCARD */
+				  <14>,		/* PCI INTA */
+				  <13>,		/* PCI INTB */
+				  <0>,		/* EXT */
+				  <15>;		/* TP */
+	};
+
+	display@1,0 {
+		compatible = "smi,sm501";
+		reg = <0x10000000 0x03e00000
+		       0x13e00000 0x00200000>;
+		interrupt-parent = <&r2dintc>;
+		interrupts = <4>;
+		mode = "640x480-16@60";
+		little-endian;
+		smi,devices = "usb-host","uart0";
+		interrupt-name = "sm501";
+		route = "own";
+		swap-fb-endian;
+
+		crt {
+			flags = "use_init_mode",
+				"use_hwcursor",
+				"use_hwaccel",
+				"disable_at_exit";
+		};
+
+		panel {
+			bpp = <16>;
+			edid = [00 ff ff ff ff ff ff 00 00 00 00 00 00 00 00 00
+				00 00 01 04 00 00 00 00 00 00 00 00 00 00 00 00
+				00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
+				00 00 00 00 00 00 f0 0a 80 fb 20 e0 25 10 32 60
+				02 00 00 00 00 00 00 06 00 00 00 00 00 00 00 00
+				00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
+				00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
+				00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 bd];
+			flags = "use_init_mode",
+				"use_hwcursor",
+				"use_hwaccel",
+				"disable_at_exit";
+		};
+	};
+
+	compact-flash@b4001000 {
+		compatible = "renesas,rts7751r2d-ata", "ata-generic";
+		reg = <0xb4001000 0x0e>, <0xb400080c 2>;
+		reg-shift = <1>;
+		interrupt-parent = <&r2dintc>;
+		interrupts = <1>;
+	};
+
+	flash@0 {
+		compatible = "cfi-flash";
+		reg = <0x00000000 0x02000000>;
+		device-width = <2>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "U-Boot";
+			reg = <0x00000000 0x00040000>;
+		};
+
+		partition@1 {
+			label = "Environemt";
+			reg = <0x00040000 0x00040000>;
+		};
+
+		partition@2 {
+			label = "Kernel";
+			reg = <0x00080000 0x001c0000>;
+		};
+
+		partition@3 {
+			label = "Flash_FS";
+			reg = <0x00240000 0x00dc0000>;
+		};
+	};
+
+	soc {
+		clock-controller@ffc00000 {
+			renesas,mode = <5>;
+		};
+
+		pci@fe200000 {
+			compatible = "renesas,pci-sh7751";
+			interrupt-parent = <&r2dintc>;
+			renesas,bcr1 = <0x40080000>;
+			renesas,intm = <0x0000c3ff>;
+			renesas,aintm = <0x0000380f>;
+			renesas,config = <1 0xfb900047>, <4 0xab000001>;
+			renesas,mcrmask = <0x40000004>;
+
+			interrupt-map = <0x0000 0 0 1 &r2dintc 9>,
+					<0x0000 0 0 2 &r2dintc 10>,
+					<0x0000 0 0 3 &r2dintc 3>,
+					<0x0000 0 0 4 &r2dintc 0>,
+					<0x0800 0 0 1 &r2dintc 10>,
+					<0x0800 0 0 2 &r2dintc 3>,
+					<0x0800 0 0 3 &r2dintc 0>,
+					<0x0800 0 0 4 &r2dintc 9>,
+					<0x1000 0 0 1 &r2dintc 3>,
+					<0x1000 0 0 2 &r2dintc 0>,
+					<0x1000 0 0 3 &r2dintc 9>,
+					<0x1000 0 0 4 &r2dintc 10>;
+			interrupt-map-mask = <0x1800 0 0 7>;
+		};
+	};
+};
-- 
2.39.2


