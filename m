Return-Path: <devicetree+bounces-270332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGdqNvWNpmnxRAAAu9opvQ
	(envelope-from <devicetree+bounces-270332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:29:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5261EA2FB
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:29:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 29AD83011C46
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:29:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5293845B2;
	Tue,  3 Mar 2026 07:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoNRiSIS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275F332E126
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 07:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772522994; cv=none; b=bkIQsWzC1SMN36ABN4k5IzO943T/nsu2E+YbvGnPlHSIk7wx5XxIIEASJcB1jPOSgHQQeUJoyhB8pfLt/8g6V7SIUMW/A1x+81bOgHD2mccQhXOZxyxIzecPBFLcP1wXaYRzIdcCCkM2eGIXdkuZYW7rsTuloyWz18zdO/ahXJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772522994; c=relaxed/simple;
	bh=iXGcciF5FWuc8KXZydCTrE3B2rTksJ1Sr2bCyRyg7Og=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iHpQbeqLRNc/t0bnVm7oxrV+VGwGcnFqx4RT6Pjz+08kJnh0b0BjTbC5O98dsmmo6v6ssUC/nfJevjDYe4e4AhdnUSuekGAUqwJUgC6+oKWJ3rEirf4KBs0COOE315kedwJcolmnFKGnVfyhbnSAlgtydBPoQYehb+j9Ss38iBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoNRiSIS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8E37C2BCAF;
	Tue,  3 Mar 2026 07:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772522994;
	bh=iXGcciF5FWuc8KXZydCTrE3B2rTksJ1Sr2bCyRyg7Og=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=SoNRiSISC8Xsss5ygIcLuYRHo6xU+6awwLpq2j3vW+7eSHSyrG011DVBv738oxq7y
	 Akbklg5wEWIFRiZg2v5N6NgDIcVd6BwzaizHHxXg4h18+/lfdwU3dn/OHDS9Meq2Xb
	 PSh3CIQ6mjTp+f9c/vLS7jOiC5jBHxDrK2T8DrS6+vtueHtkAN7kxJ4JBXMoxAfLXs
	 P8Ws1i1WMbGzNDajS8VMXr3pJBULVHV+e8nEVp/J6eG/eiYuTHA/WghGbcmlXyROYI
	 1qBr6Xw4v8z3c7cFFzF23qVsJgWzODIV+Q7kQA05VX/wrSsZxU+EHkvwcrahd9OQ6p
	 zlb/l1/ismTeQ==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 03 Mar 2026 08:29:39 +0100
Subject: [PATCH v2 7/8] ARM: dts: Add a Raidsonic IB-4210-B DTS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-gemini-dts-fixes-v2-7-5b92ced841ce@kernel.org>
References: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
In-Reply-To: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 7C5261EA2FB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270332-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

This adds a device tree for the Raidsonic IB-4210-B NAS, a slightly
under-powered version of IB-4220-B with half the memory and
the cheaper version of the SoC.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 arch/arm/boot/dts/gemini/Makefile            |   1 +
 arch/arm/boot/dts/gemini/gemini-nas4210b.dts | 205 +++++++++++++++++++++++++++
 2 files changed, 206 insertions(+)

diff --git a/arch/arm/boot/dts/gemini/Makefile b/arch/arm/boot/dts/gemini/Makefile
index d5d32f02e232..4722fb1bac49 100644
--- a/arch/arm/boot/dts/gemini/Makefile
+++ b/arch/arm/boot/dts/gemini/Makefile
@@ -2,6 +2,7 @@
 dtb-$(CONFIG_ARCH_GEMINI) += \
 	gemini-dlink-dir-685.dtb \
 	gemini-dlink-dns-313.dtb \
+	gemini-nas4210b.dtb \
 	gemini-nas4220b.dtb \
 	gemini-ns2502.dtb \
 	gemini-rut1xx.dtb \
diff --git a/arch/arm/boot/dts/gemini/gemini-nas4210b.dts b/arch/arm/boot/dts/gemini/gemini-nas4210b.dts
new file mode 100644
index 000000000000..8bec57c8b7b1
--- /dev/null
+++ b/arch/arm/boot/dts/gemini/gemini-nas4210b.dts
@@ -0,0 +1,205 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree file for the Gemini-based Raidsonic NAS IB-4210-B
+ * Based on the NAS Forum experiments by user "CptSpock".
+ */
+
+/dts-v1/;
+
+#include "gemini.dtsi"
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Raidsonic NAS IB-4210-B";
+	compatible = "raidsonic,ib-4210-b", "cortina,gemini";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	memory@0 { /* 64 MB */
+		device_type = "memory";
+		reg = <0x00000000 0x4000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,19200n8 root=/dev/sda1 rw rootwait";
+		stdout-path = &uart0;
+	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+
+		button-setup {
+			debounce-interval = <100>;
+			wakeup-source;
+			linux,code = <KEY_SETUP>;
+			label = "Backup button";
+			/* Conflict with TVC */
+			gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
+		};
+		button-restart {
+			debounce-interval = <100>;
+			wakeup-source;
+			linux,code = <KEY_RESTART>;
+			label = "Softreset button";
+			/* Conflict with TVC */
+			gpios = <&gpio1 31 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		led-orange-hdd {
+			label = "nas4220b:orange:hdd";
+			/* Conflict with TVC */
+			gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			linux,default-trigger = "disk-activity";
+		};
+		led-green-os {
+			label = "nas4220b:green:os";
+			/* Conflict with TVC */
+			gpios = <&gpio1 30 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	mdio0: mdio {
+		compatible = "virtual,mdio-gpio";
+		gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>, /* MDC */
+			<&gpio0 21 GPIO_ACTIVE_HIGH>; /* MDIO */
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* Realtek RTL8211B */
+		phy0: ethernet-phy@1 {
+			reg = <1>;
+			device_type = "ethernet-phy";
+		};
+	};
+
+	soc {
+		flash@30000000 {
+			status = "okay";
+			/* 16MB of flash */
+			reg = <0x30000000 0x01000000>;
+
+			partitions {
+				compatible = "redboot-fis";
+				/* Eraseblock at 0xfe0000 */
+				fis-index-block = <0x7f>;
+			};
+		};
+
+		syscon: syscon@40000000 {
+			pinctrl {
+				gpio0_default_pins: pinctrl-gpio0 {
+					mux {
+						function = "gpio0";
+						groups =
+						"gpio0egrp",
+						/* Used by MDIO */
+						"gpio0igrp";
+					};
+				};
+				gpio1_default_pins: pinctrl-gpio1 {
+					mux {
+						function = "gpio1";
+						/* Lines 28-31 used by LEDs and buttons */
+						groups = "gpio1dgrp";
+					};
+				};
+				pinctrl-gmii {
+					mux {
+						function = "gmii";
+						groups = "gmii_gmac0_grp";
+					};
+					conf0 {
+						pins = "R8 GMAC0 RXDV", "U11 GMAC1 RXDV";
+						skew-delay = <0>;
+					};
+					conf1 {
+						pins = "T8 GMAC0 RXC";
+						skew-delay = <10>;
+					};
+					conf2 {
+						pins = "T11 GMAC1 RXC";
+						skew-delay = <15>;
+					};
+					conf3 {
+						pins = "P8 GMAC0 TXEN", "V11 GMAC1 TXEN";
+						skew-delay = <7>;
+					};
+					conf4 {
+						pins = "V7 GMAC0 TXC", "P10 GMAC1 TXC";
+						skew-delay = <10>;
+					};
+					conf5 {
+						/* The data lines all have default skew */
+						pins = "U8 GMAC0 RXD0", "V8 GMAC0 RXD1",
+						       "P9 GMAC0 RXD2", "R9 GMAC0 RXD3",
+						       "R11 GMAC1 RXD0", "P11 GMAC1 RXD1",
+						       "V12 GMAC1 RXD2", "U12 GMAC1 RXD3",
+						       "R10 GMAC1 TXD0", "T10 GMAC1 TXD1",
+						       "U10 GMAC1 TXD2", "V10 GMAC1 TXD3";
+						skew-delay = <7>;
+					};
+					conf6 {
+						pins = "U7 GMAC0 TXD0", "T7 GMAC0 TXD1",
+						       "R7 GMAC0 TXD2", "P7 GMAC0 TXD3";
+						skew-delay = <5>;
+					};
+					/* Set up drive strength on GMAC0 to 16 mA */
+					conf7 {
+						groups = "gmii_gmac0_grp";
+						drive-strength = <16>;
+					};
+				};
+			};
+		};
+
+		sata: sata@46000000 {
+			cortina,gemini-ata-muxmode = <0>;
+			cortina,gemini-enable-sata-bridge;
+			status = "okay";
+		};
+
+		gpio0: gpio@4d000000 {
+			pinctrl-names = "default";
+			pinctrl-0 = <&gpio0_default_pins>;
+		};
+
+		gpio1: gpio@4e000000 {
+			pinctrl-names = "default";
+			pinctrl-0 = <&gpio1_default_pins>;
+		};
+
+		ethernet@60000000 {
+			status = "okay";
+
+			ethernet-port@0 {
+				phy-mode = "rgmii";
+				phy-handle = <&phy0>;
+			};
+			ethernet-port@1 {
+				/* Not used in this platform */
+			};
+		};
+
+		ide@63000000 {
+			status = "okay";
+		};
+
+		ide@63400000 {
+			status = "okay";
+		};
+
+		usb@68000000 {
+			status = "okay";
+		};
+
+		usb@69000000 {
+			status = "okay";
+		};
+	};
+};

-- 
2.53.0


