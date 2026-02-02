Return-Path: <devicetree+bounces-261631-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHS4HuI+gGkY5QIAu9opvQ
	(envelope-from <devicetree+bounces-261631-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:06:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB13C878A
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:06:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8031530143C9
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 06:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E39242F39C2;
	Mon,  2 Feb 2026 06:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EOU3yHDX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0EE2F6164
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770012355; cv=none; b=i8BM/kmvFwOZSd2UsLulyKq/izdR8/a2oNRC7kMJiCZ4SjIUw1xglAvNezRr3EynUtkAtbR16MDjL7VbTJy4sr5yxkM7kAEwHsSTkAYQJGuyWlpJ5N4rXVrF9usnyk20AME2UVLqeGUF21JHEhRCpCNRnjD5M8w0jlpMDbEgvhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770012355; c=relaxed/simple;
	bh=st5vHNBjd2Ov6RdsQlrvoGE1QtJUzf0qGdcB1RWKIms=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dTrzB8o+ngoU30+Gel2vX1M1/ADsJtACsoCagMLGnn7FB+pHGSerQ/W2Tru3bm1xr+dD6lDS66u9pJQi6pse/bFqDB5C43W0FIe5L5HoszYAvtjxrsBkME+G6pHzEqCBdMbJygAAhNxxB9XAOR0kVvrmWow3P4rqfokp5/8H0uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EOU3yHDX; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a7a23f5915so26185115ad.2
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 22:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770012353; x=1770617153; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=acpoNPq8n706BNSOL8GplU6mfR6j1oCcZ2KNYnv6YR4=;
        b=EOU3yHDXjajJf45t0NC+K5so1vWWETtUvL/jpO50QMAEBNWd17nmAd9kXEv1VWtz9Y
         tM856yUmykJJ85Oz0O7VhL3jI6QwFEYMETlkYUIjVEowVYu0Q3WbRYvRiMuuc1peHvn+
         +O3ht6uW1w5PoZn8SSuXUupeQKxnjQHe3smuaoadU49NsKvDEEKIFKbt40vooA+5cjsy
         gKhnciHK5c8eNCO5YUkYBM+OaGKW3r3gq9TWaOrLvyny2kbcziY/H1jF5FfJpcdWO+nR
         70K+QT8e8nophnU7WRhhclTdN66kpZkM9ggS2PpK/ONaWapqXi/zOmHGzhc/rH8XczrA
         /wng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770012353; x=1770617153;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=acpoNPq8n706BNSOL8GplU6mfR6j1oCcZ2KNYnv6YR4=;
        b=Q4J5lYhnFTmOsJCArJRTkKH7BtSu9Hjf0qBb9bvDLVWRXsK3xRiXnrkj6KdB3+zITL
         LaeU+IlGhHmEEU2w1ftzkYmViZfbpyeixAj1vlKH9Kfs/+z1QK+x986vKAIVX0VCyL/2
         jeTcb4F9pS2t5NFtU5UaXeZ/pNPNEXzeNTExdaY9XHF5QwEqp7A48WqVNjKJbFash+dM
         UvzwU4qT5rede/onDmHmJw2FMvkjMbxpxF4xnlbmnCS06cen5rMXtoJrdm3KsAysVCwM
         kbPJl+hjQqWKvhsCKoORNOATj0mN6hE0qiapSKjsYtsbsrkD80tTAvH6UY8uLhEmVDGO
         aL3w==
X-Gm-Message-State: AOJu0Yx7Bls1BTBBjbw+Ejymaxf4w6AZQm05M+dKJnM5XBQ7ugsWcT7y
	QKlKCWUQR9hkA3lEoz1ywauZOemnTHO5Q38S9cMmQTfI/eon/cvHpzW1
X-Gm-Gg: AZuq6aJ2Bx0Sktkg0J2mWqMsiWdh5DbxKyQoY/13kt6JeKpg5A6cTJzZ/831sTkzsR4
	8WrhHd64v+ZsetOSpN9+XS7PRn5UcXeZOBpme2pJSf7M9SczEc03Agn9JuOVm36Y6Ddqjce0K04
	lZkVTSRdkiA/4NeiuVVb2KRAkmciOopdM6W4KL4Go8yZa7J5akWwHJxNFVF0YiGt99xnokM8Q4K
	TBE1lwn//S67QrQbZGGpRx6Cr2f0vTJykcw+UPbGaTGBVcqJqtUnPmJ/Vtuu7TDnW5MgdGvLw2C
	kB1OZ4sySoc57AkJzNzYrC+TcdEHrsmEAF2clkJ6xuL7eEA0/6aVKjv+Pw3lUP2lHT5fw2vR6iG
	sBUjhHMoKli6PaWQyT8H9VIsp6mWHmVywGeUA2d+WJdqgKRDrFbnWQqngBGwBtPAr5iPUtCVDe1
	Vg4xSzVPIvq9xObc+WMxGoXbGXKNW5884B3KDOpJnF5Yw/jHQ5463n48aLOv5KwnM=
X-Received: by 2002:a17:903:298d:b0:2a9:34:eb65 with SMTP id d9443c01a7336-2a90034f0c4mr43481685ad.26.1770012353007;
        Sun, 01 Feb 2026 22:05:53 -0800 (PST)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b5d99eesm132926135ad.78.2026.02.01.22.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 22:05:52 -0800 (PST)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Mon, 02 Feb 2026 14:03:17 +0800
Subject: [PATCH 2/2] ARM: dts: aspeed: add Meta SanMiguel BMC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-sanmiguel_init_dts-v1-2-c0023ae41899@gmail.com>
References: <20260202-sanmiguel_init_dts-v1-0-c0023ae41899@gmail.com>
In-Reply-To: <20260202-sanmiguel_init_dts-v1-0-c0023ae41899@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, 
 Potin Lai <potin.lai@quantatw.com>, Roger Kan <Roger.Kan@quantatw.com>, 
 Potin Lai <potin.lai.pt@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770012344; l=28582;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=st5vHNBjd2Ov6RdsQlrvoGE1QtJUzf0qGdcB1RWKIms=;
 b=3QbrwoZShbqh1Psqr8TUqshyKdoZPj1O6tzgeNdZVQAc08r656ITEl2GSXQIaNy6uVE1LQlIM
 VeDsSfvMYtGCP9FQm/vPpLeHkRyQdklGEgwmcBBKwKLR8M4TV6vbSiy
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261631-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[potinlaipt@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0FB13C878A
X-Rspamd-Action: no action

Add linux device tree entry for Meta (Facebook) SanMiguel compute-tray
BMC using AT2620 SoC.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
 arch/arm/boot/dts/aspeed/Makefile                  |    1 +
 .../dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts   | 1163 ++++++++++++++++++++
 2 files changed, 1164 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
index 9adf9278dc94..ab2effc29f6f 100644
--- a/arch/arm/boot/dts/aspeed/Makefile
+++ b/arch/arm/boot/dts/aspeed/Makefile
@@ -30,6 +30,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-bmc-facebook-harma.dtb \
 	aspeed-bmc-facebook-minerva.dtb \
 	aspeed-bmc-facebook-minipack.dtb \
+	aspeed-bmc-facebook-sanmiguel.dtb \
 	aspeed-bmc-facebook-santabarbara.dtb \
 	aspeed-bmc-facebook-tiogapass.dtb \
 	aspeed-bmc-facebook-wedge40.dtb \
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts
new file mode 100644
index 000000000000..bcf857835b23
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts
@@ -0,0 +1,1163 @@
+// SPDX-License-Identifier: GPL-2.0+
+// Copyright (c) 2025 Facebook Inc.
+
+/dts-v1/;
+#include "aspeed-g6.dtsi"
+#include <dt-bindings/gpio/aspeed-gpio.h>
+#include <dt-bindings/usb/pd.h>
+#include <dt-bindings/leds/leds-pca955x.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/i2c/i2c.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "AST2600 VR NVL144 BMC";
+	compatible = "aspeed,ast2600";
+
+	aliases {
+		serial0 = &uart1;
+		serial1 = &uart2;
+		serial2 = &uart3;
+		serial3 = &uart4;
+		serial4 = &uart5;
+		i2c16	= &imux16;
+		i2c17	= &imux17;
+		i2c18	= &imux18;
+		i2c19	= &imux19;
+		i2c20   = &i2c20;
+		i2c21   = &i2c21;
+	};
+
+	chosen {
+		stdout-path = "serial4:57600n8";
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x80000000>;
+	};
+
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&adc0 0>, <&adc0 1>, <&adc0 2>, <&adc0 3>,
+			      <&adc0 4>, <&adc0 5>, <&adc0 6>;
+	};
+
+	spi2_gpio: spi {
+		compatible = "spi-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		sck-gpios = <&gpio0 ASPEED_GPIO(X, 3) GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio0 ASPEED_GPIO(X, 4) GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio0 ASPEED_GPIO(X, 5) GPIO_ACTIVE_HIGH>;
+		cs-gpios = <&gpio0 ASPEED_GPIO(X, 2) GPIO_ACTIVE_LOW>;
+		num-chipselects = <1>;
+
+		tpm@0 {
+			compatible = "infineon,slb9670", "tcg,tpm_tis-spi";
+			spi-max-frequency = <33000000>;
+			reg = <0>;
+		};
+	};
+
+	standby_power_regulator: standby-power-regulator {
+		status = "okay";
+		compatible = "regulator-fixed";
+		regulator-name = "standby_power";
+		gpio = <&gpio0 ASPEED_GPIO(M, 3) GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		enable-active-high;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	scm-leds {
+		compatible = "gpio-leds";
+		led-0 {
+			label = "bmc_heartbeat_amber";
+			gpios = <&gpio0 ASPEED_GPIO(P, 7) GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	fio-leds {
+		compatible = "gpio-leds";
+		led-0 {
+			label = "power_blue";
+			gpios = <&fio_ioexp 4 GPIO_ACTIVE_HIGH>;
+		};
+		led-1 {
+			label = "power_amber";
+			gpios = <&fio_ioexp 5 GPIO_ACTIVE_LOW>;
+		};
+		led-2 {
+			label = "id_blue";
+			gpios = <&fio_ioexp 6 GPIO_ACTIVE_HIGH>;
+		};
+		led-3 {
+			label = "id_amber";
+			gpios = <&fio_ioexp 7 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&fmc {
+	status = "okay";
+	flash@0 {
+		status = "okay";
+		m25p,fast-read;
+		label = "bmc";
+		spi-max-frequency = <50000000>;
+#include "openbmc-flash-layout-128.dtsi"
+	};
+	flash@1 {
+		status = "okay";
+		m25p,fast-read;
+		label = "alt-bmc";
+		spi-max-frequency = <50000000>;
+	};
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&uart3 {
+	status = "okay";
+};
+
+&uart5 {
+	status = "okay";
+};
+
+&uart_routing {
+	status = "okay";
+};
+
+&mdio0 {
+	status = "okay";
+	ethphy0: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+};
+
+&mac0 {
+	status = "okay";
+	pinctrl-names = "default";
+	phy-mode = "rgmii-rxid";
+	max-speed = <1000>;
+	phy-handle = <&ethphy0>;
+	pinctrl-0 = <&pinctrl_rgmii1_default>;
+};
+
+&ehci1 {
+	status = "okay";
+	hub@1 {
+		reg = <1>;
+		hub@2 {
+			reg = <2>;
+			hub@1 {
+				reg = <1>;
+				device@1 {
+					reg = <1>;
+					cp2112a: interface@1 {
+						reg = <1 1>;
+
+						gpio-controller;
+						interrupt-controller;
+						#gpio-cells = <2>;
+						#interrupt-cells = <2>;
+
+						i2c20: i2c {
+							#address-cells = <1>;
+							#size-cells = <0>;
+						};
+					};
+				};
+				hub@3 {
+					reg = <3>;
+					cp2112c: device@2 {
+						reg = <2>;
+						gpio-controller;
+						#gpio-cells = <2>;
+						interrupt-controller;
+						#interrupt-cells = <2>;
+
+						gpio-line-names =
+							"IOB0_MCP_P0_2-B",
+							"IOB0_MCU_RST_L-O",
+							"IOB0_MCU_RECOVERY_L-O",
+							"IOB0_GLOBAL_WP-O",
+							"IOB0_GLOBAL_ADDR_L_R-O",
+							"IOB0_GLOBAL_ADDR_U_D-O",
+							"IOB0_PWR_EN-O",
+							"IOB0_MCU_READY_STATUS-I";
+					};
+				};
+				hub@4 {
+					reg = <4>;
+					cp2112d: device@2 {
+						reg = <2>;
+						gpio-controller;
+						#gpio-cells = <2>;
+						interrupt-controller;
+						#interrupt-cells = <2>;
+
+						gpio-line-names =
+							"IOB1_MCP_P0_2-B",
+							"IOB1_MCU_RST_L-O",
+							"IOB1_MCU_RECOVERY_L-O",
+							"IOB1_GLOBAL_WP-O",
+							"IOB1_GLOBAL_ADDR_L_R-O",
+							"IOB1_GLOBAL_ADDR_U_D-O",
+							"IOB1_PWR_EN-O",
+							"IOB1_MCU_READY_STATUS-I";
+					};
+				};
+			};
+			hub@2 {
+				reg = <2>;
+				device@1 {
+					reg = <1>;
+					cp2112b: interface@1 {
+						reg = <1 1>;
+
+						gpio-controller;
+						interrupt-controller;
+						#gpio-cells = <2>;
+						#interrupt-cells = <2>;
+
+						i2c21: i2c {
+							#address-cells = <1>;
+							#size-cells = <0>;
+						};
+					};
+				};
+				hub@3 {
+					reg = <3>;
+					cp2112e: device@2 {
+						reg = <2>;
+						gpio-controller;
+						#gpio-cells = <2>;
+						interrupt-controller;
+						#interrupt-cells = <2>;
+
+						gpio-line-names =
+							"IOB2_MCP_P0_2-B",
+							"IOB2_MCU_RST_L-O",
+							"IOB2_MCU_RECOVERY_L-O",
+							"IOB2_GLOBAL_WP-O",
+							"IOB2_GLOBAL_ADDR_L_R-O",
+							"IOB2_GLOBAL_ADDR_U_D-O",
+							"IOB2_PWR_EN-O",
+							"IOB2_MCU_READY_STATUS-I";
+					};
+				};
+				hub@4 {
+					reg = <4>;
+					cp2112f: device@2 {
+						reg = <2>;
+						gpio-controller;
+						#gpio-cells = <2>;
+						interrupt-controller;
+						#interrupt-cells = <2>;
+
+						gpio-line-names =
+							"IOB3_MCP_P0_2-B",
+							"IOB3_MCU_RST_L-O",
+							"IOB3_MCU_RECOVERY_L-O",
+							"IOB3_GLOBAL_WP-O",
+							"IOB3_GLOBAL_ADDR_L_R-O",
+							"IOB3_GLOBAL_ADDR_U_D-O",
+							"IOB3_PWR_EN-O",
+							"IOB3_MCU_READY_STATUS-I";
+					};
+				};
+			};
+		};
+	};
+};
+
+&adc0 {
+	aspeed,int-vref-microvolt = <2500000>;
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_adc0_default &pinctrl_adc1_default
+		&pinctrl_adc2_default &pinctrl_adc3_default
+		&pinctrl_adc4_default &pinctrl_adc5_default
+		&pinctrl_adc6_default>;
+};
+
+&wdt1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdtrst1_default>;
+	aspeed,reset-type = "soc";
+	aspeed,external-signal;
+	aspeed,ext-push-pull;
+	aspeed,ext-active-high;
+	aspeed,ext-pulse-duration = <256>;
+};
+
+&i2c0 {
+	status = "okay";
+	aspeed,enable-byte;
+
+	ssif-bmc@10 {
+		compatible = "ssif-bmc";
+		reg = <0x10>;
+		alert-gpios = <&gpio1 ASPEED_GPIO(D, 7) GPIO_ACTIVE_LOW>;
+		timeout-ms = <5000>;
+	};
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&i2c2 {
+	status = "okay";
+
+	hpm0_ioexp_20: gpio@20 {
+		compatible = "nxp,pca9555";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <ASPEED_GPIO(B, 6) IRQ_TYPE_LEVEL_LOW>;
+		vcc-supply = <&standby_power_regulator>;
+		gpio-line-names =
+			"B0_M0_SHDN_FORCE_L-O",
+			"B0_M0_STBY_POWER_PG-I",
+			"B0_M0_THERM_OVERT_L-I",
+			"B0_M0_THERM_WARN_L-I",
+			"B0_M0_GLOBAL_WP-O",
+			"B0_M0_USB_HUB0_RST_L-O",
+			"B0_M0_PRE_SYS_RST_L-O",
+			"B0_M0_LEAK_DETECT_ALERT_L-I",
+			"B0_M0_RUN_POWER_EN-O",
+			"B0_M0_RUN_POWER_PG-I",
+			"B0_M0_CPU_CHIPTHROT_L-O",
+			"B0_M0_SHDN_REQ_L-O",
+			"B0_M0_CPU_SHDN_OK_L-I",
+			"B0_M0_CPLD_READY-I",
+			"B0_M0_PWR_BRAKE_L-O",
+			"B0_M0_PWR_BRAKE_STATUS_L-I";
+	};
+
+	hpm0_ioexp_21: gpio@21 {
+		compatible = "nxp,pca9555";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <ASPEED_GPIO(B, 6) IRQ_TYPE_LEVEL_LOW>;
+		vcc-supply = <&standby_power_regulator>;
+
+		gpio-line-names =
+			"B0_M0_I2C_BUS_MUX_RESET_L-O",
+			"B0_M0_HPM_MCU_OK-I",
+			"B0_M0_AIC_USB_EN-O",
+			"B0_M0_C0_SOCAMM_DAC_SEL0-O",
+			"B0_M0_C1_SOCAMM_DAC_SEL1-O",
+			"B0_M0_C0_SOCAMM_I2C_SEL_R-O",
+			"B0_M0_C1_SOCAMM_I2C_SEL_R-O",
+			"B0_M0_EEPROM_POWER_DISABLE-O",
+			"B0_M0_L0L1_RST_L-I",
+			"B0_M0_L2_RST_L-I",
+			"B0_M0_BRD_ID_0-I",
+			"B0_M0_BRD_ID_1-I",
+			"B0_M0_BMC_LEAK_TEST_L-O",
+			"B0_M0_MCU_BMC_ALERT_L-I",
+			"B0_M0_CPU_BOOT_COMPLETE_3V3-I",
+			"B0_M0_BRD_ID_2-I";
+	};
+};
+
+&i2c3 {
+	status = "ok";
+
+	hmc_fru: eeprom@51 {
+		compatible = "atmel,24c02";
+		reg = <0x51>;
+	};
+
+	hpm0_fru: eeprom@52 {
+		compatible = "atmel,24c02";
+		reg = <0x52>;
+	};
+
+	hpm1_fru: eeprom@53 {
+		compatible = "atmel,24c02";
+		reg = <0x53>;
+	};
+};
+
+&i2c4 {
+	status = "okay";
+};
+
+&i2c5 {
+	status = "okay";
+
+	smm_ioexp_20: gpio@20 {
+		compatible = "nxp,pca9555";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <ASPEED_GPIO(B, 6) IRQ_TYPE_LEVEL_LOW>;
+		gpio-line-names =
+			"HMC_RST_R_L-O", "HMC_RECOVERY_R-O",
+			"HMC_SPI_MUX_R_SEL-O", "GLOBAL_WP-O",
+			"HMC_READY-I", "HMC_PRSNT_R-I",
+			"BMC_SELF_PWR_CYCLE-O", "EEDO_LED2-O",
+			"PWR_LED_L-O", "PWR_BTN_L-I",
+			"UID_LED_L-O", "UID_BTN_L-I",
+			"FAULT_LED_L-O", "USB2_HUB_RST_L-O",
+			"IOX_GPIO_P16_TP", "WARN_LED_L-O";
+	};
+
+	smm_ioexp_21: gpio@21 {
+		compatible = "nxp,pca9555";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <ASPEED_GPIO(B, 6) IRQ_TYPE_LEVEL_LOW>;
+		gpio-line-names =
+			"BMC_HMC_MUX_SEL-O", "BMC_TPM_MUX_SEL-O",
+			"BMC_USB2_MUX_SEL-O", "HMC_PGOOD_3V3-I",
+			"BF3_AOC_NCSI_PRSNT_L-I", "HDR_SPI_PRSNT_L-I",
+			"SW_NRESET_R_L-O", "MUX_I2C_ESPI_SEL-O",
+			"I2C_BUS_MUX_RESET_L-O", "USB_MUX_EN-O",
+			"PDB_TRAY_RST-O", "USB_PWR_EN-O",
+			"RTC_CLR_L-O", "I2C_RTC_ALERT_L-I",
+			"I2C_PDB_ALERT_L-I", "BMC_MUX_PI3DP_SEL-O";
+	};
+
+	smm_temp: temperature-sensor@4e {
+		compatible = "national,lm75";
+		reg = <0x4e>;
+	};
+
+	smm_fru: eeprom@50 {
+		compatible = "atmel,24c02";
+		reg = <0x50>;
+	};
+
+	rtc@6f {
+		compatible = "nuvoton,nct3018y";
+		reg = <0x6f>;
+	};
+};
+
+&i2c6 {
+	status = "okay";
+
+	hmc_ioexp: gpio@20 {
+		compatible = "ti,tca6408";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		gpio-line-names =
+			"", "", "HMC_EROT_FATAL_ERROR_L-I", "",
+			"", "HMC_EROT_RECOVERY_L-O", "HMC_EROT_RESET_L-O", "";
+	};
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9546";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x70>;
+		i2c-mux-idle-disconnect;
+
+		imux16: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+
+		imux17: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+		};
+
+		imux18: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+		};
+
+		imux19: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+
+			rtc@6f {
+				compatible = "nuvoton,nct3018y";
+				reg = <0x6f>;
+			};
+		};
+	};
+};
+
+&i2c7 {
+	status = "okay";
+
+	hpm1_ioexp_20: gpio@20 {
+		compatible = "nxp,pca9555";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <ASPEED_GPIO(B, 6) IRQ_TYPE_LEVEL_LOW>;
+		vcc-supply = <&standby_power_regulator>;
+		gpio-line-names =
+			"B1_M0_SHDN_FORCE_L-O",
+			"B1_M0_STBY_POWER_PG-I",
+			"B1_M0_THERM_OVERT_L-I",
+			"B1_M0_THERM_WARN_L-I",
+			"B1_M0_GLOBAL_WP-O",
+			"B1_M0_USB_HUB0_RST_L-O",
+			"B1_M0_PRE_SYS_RST_L-O",
+			"B1_M0_LEAK_DETECT_ALERT_L-I",
+			"B1_M0_RUN_POWER_EN-O",
+			"B1_M0_RUN_POWER_PG-I",
+			"B1_M0_CPU_CHIPTHROT_L-O",
+			"B1_M0_SHDN_REQ_L-O",
+			"B1_M0_CPU_SHDN_OK_L-I",
+			"B1_M0_CPLD_READY-I",
+			"B1_M0_PWR_BRAKE_L-O",
+			"B1_M0_PWR_BRAKE_STATUS_L-I";
+	};
+
+	hpm1_ioexp_21: gpio@21 {
+		compatible = "nxp,pca9555";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <ASPEED_GPIO(B, 6) IRQ_TYPE_LEVEL_LOW>;
+		vcc-supply = <&standby_power_regulator>;
+
+		gpio-line-names =
+			"B1_M0_I2C_BUS_MUX_RESET_L-O",
+			"B1_M0_HPM_MCU_OK-I",
+			"B1_M0_AIC_USB_EN-O",
+			"B1_M0_C0_SOCAMM_DAC_SEL0-O",
+			"B1_M0_C1_SOCAMM_DAC_SEL1-O",
+			"B1_M0_C0_SOCAMM_I2C_SEL_R-O",
+			"B1_M0_C1_SOCAMM_I2C_SEL_R-O",
+			"B1_M0_EEPROM_POWER_DISABLE-O",
+			"B1_M0_L0L1_RST_L-I",
+			"B1_M0_L2_RST_L-I",
+			"B1_M0_BRD_ID_0-I",
+			"B1_M0_BRD_ID_1-I",
+			"B1_M0_BMC_LEAK_TEST_L-O",
+			"B1_M0_MCU_BMC_ALERT_L-I",
+			"B1_M0_CPU_BOOT_COMPLETE_3V3-I",
+			"B1_M0_BRD_ID_2-I";
+	};
+};
+
+&i2c8 {
+	status = "okay";
+};
+
+&i2c9 {
+	status = "okay";
+
+	pdb_mps_hsc1: power-monitor@10 {
+		compatible = "mps,mp5926";
+		reg = <0x10>;
+	};
+
+	pdb_ti_hsc1: power-monitor@11 {
+		compatible = "ti,lm5066i";
+		reg = <0x11>;
+		shunt-resistor-micro-ohms = <763>;
+	};
+
+	pdb_mps_hsc2: power-monitor@12 {
+		compatible = "mps,mp5926";
+		reg = <0x12>;
+	};
+
+	pdb_ti_hsc2: power-monitor@13 {
+		compatible = "ti,lm5066i";
+		reg = <0x13>;
+		shunt-resistor-micro-ohms = <294>;
+	};
+
+	pdb_mps_hsc3: power-monitor@14 {
+		compatible = "mps,mp5926";
+		reg = <0x14>;
+	};
+
+	pdb_ti_hsc3: power-monitor@15 {
+		compatible = "ti,lm5066i";
+		reg = <0x15>;
+		shunt-resistor-micro-ohms = <294>;
+	};
+
+	pdb_mps_hsc4: power-monitor@16 {
+		compatible = "mps,mp5926";
+		reg = <0x16>;
+	};
+
+	pdb_ti_hsc4: power-monitor@17 {
+		compatible = "ti,lm5066i";
+		reg = <0x17>;
+		shunt-resistor-micro-ohms = <381>;
+	};
+
+	pdb_temp: temperature-sensor@4e {
+		compatible = "national,lm75";
+		reg = <0x4e>;
+	};
+
+	pdb_fru: eeprom@50 {
+		compatible = "atmel,24c02";
+		reg = <0x50>;
+	};
+
+	pdb_ioexp_20: gpio@20 {
+		compatible = "nxp,pca9555";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <ASPEED_GPIO(B, 6) IRQ_TYPE_LEVEL_LOW>;
+
+		gpio-line-names =
+			"PDB_STRAP-I", "STBY_POWER_EN-O", "STBY_PWR_OK-I", "",
+			"", "MAIN_PWR_EN-O", "MAIN_PWR_OK-I", "GLOBAL_WP-O",
+			"PDB_PWR_BRK_L-I", "FAN_PRSNT-I", "", "",
+			"", "", "", "";
+	};
+
+	pdb_ioexp_75: gpio@75 {
+		compatible = "nxp,pca9555";
+		reg = <0x75>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <ASPEED_GPIO(B, 6) IRQ_TYPE_LEVEL_LOW>;
+		gpio-line-names =
+			"SNN_PDB_RUN_IO0_A_R_PG-I", "RST_STBY_R_L-O",
+			"SNN_PDB_RUN_IO0_B_R_EN-O", "PSU1_PRSNT_R_N-O",
+			"PSU2_PRSNT_R_N-O", "PSU3_PRSNT_R_N-O",
+			"PSU4_PRSNT_R_N-O", "PDB_12V_PG_R-I",
+			"PDB_12V_2_PG_R-I", "PDB_12V_2_EN_R-O",
+			"PDB_12V_EN_N_R-O", "",
+			"HSC_PG_VIN_PG_R-I", "PDB_PSU_SMB_ALERT_L_R-O",
+			"SNN_JSB2_17_R-I", "TRAY_RST_L_R-I";
+	};
+};
+
+&i2c10 {
+	status = "okay";
+
+	scm_temp: temperature-sensor@48 {
+		compatible = "national,lm75";
+		reg = <0x48>;
+	};
+
+	scm_fru: eeprom@50 {
+		compatible = "atmel,24c128";
+		reg = <0x50>;
+	};
+};
+
+&i2c11 {
+	status = "ok";
+
+	sw_config: eeprom@50 {
+		compatible = "atmel,24c64";
+		reg = <0x50>;
+	};
+};
+
+&i2c12 {
+	status = "ok";
+};
+
+&i2c13 {
+	status = "ok";
+	mctp-controller;
+	multi-master;
+
+	mctp@10 {
+		compatible = "mctp-i2c-controller";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+	};
+
+	smm_ext_ioexp: gpio@38 {
+		compatible = "nxp,pca9554";
+		reg = <0x38>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		gpio-line-names =
+			"SSD0_PRSNT_L-I", "E1S_PWR_EN-O",
+			"SSD0_PWRDIS-O", "I2C_PDB_ALERT_L-I",
+			"BMC_SSD0_RST_L-O", "GLOBAL_WP_E1S-O",
+			"12V_SSD0_PGD-I", "SSD0_LED-O";
+	};
+
+	smm_ext_fru: eeprom@55 {
+		compatible = "atmel,24c02";
+		reg = <0x55>;
+	};
+};
+
+&i2c14 {
+	status = "okay";
+
+	fio_ioexp: gpio@20 {
+		compatible = "nxp,pca9555";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <ASPEED_GPIO(B, 6) IRQ_TYPE_LEVEL_LOW>;
+		gpio-line-names =
+			"", "", "", "",
+			"PWR_LED_BLUE", "PWR_LED_AMBER_R_N",
+			"BEEP_ID_LED_BLUE", "BEEP_ID_LED_AMBER_R_N",
+			"", "", "", "",
+			"FM_MAIN_PWREN_RMC_ISO_EN_N", "LEAK_DETECT_RMC_N",
+			"PWRGD_RMC_N", "SMALL_LEAK_RMC_N";
+
+		pwrgd-rmc-hog {
+			gpio-hog;
+			gpios = <14 GPIO_ACTIVE_LOW>;
+			output-low;
+		};
+	};
+
+	fio_fru: eeprom@50 {
+		compatible = "atmel,24c64";
+		reg = <0x50>;
+	};
+};
+
+&i2c15 {
+	status = "okay";
+};
+
+&gpio0 {
+	gpio-line-names =
+	/*A0-A7*/	"", "", "", "", "", "", "", "",
+	/*B0-B7*/	"", "", "", "", "", "", "", "",
+	/*C0-C7*/	"", "", "", "", "", "", "", "",
+	/*D0-D7*/	"", "", "", "", "", "FPGA_PEX_RST_L", "", "",
+	/*E0-E7*/	"RTL8221_PHY_RST_L-O", "RTL8211_PHY_INT_L-I", "", "",
+			"", "", "", "MUX_SGPIO_SEL-O",
+	/*F0-F7*/	"", "", "", "", "", "", "", "",
+	/*G0-G7*/	"", "", "", "", "", "", "", "",
+	/*H0-H7*/	"", "", "", "", "", "", "", "",
+	/*I0-I7*/	"", "", "", "",
+			"", "QSPI2_RST_L-O",
+			"GLOBAL_WP_BMC-I", "BMC_DDR4_TEN-O",
+	/*J0-J7*/	"", "", "", "", "", "", "", "",
+	/*K0-K7*/	"", "", "", "", "", "", "", "",
+	/*L0-L7*/	"", "", "", "", "", "", "", "",
+	/*M0-M7*/	"USB_HUB_RST_N-O", "BMC_FRU_WP-O",
+			"", "HMC_STBY_POWER_EN-O",
+			"STBY_POWER_PG-I", "PCIE_EP_RST_L-O", "", "",
+	/*N0-N7*/	"", "", "", "", "", "", "", "",
+	/*O0-O7*/	"", "", "", "", "", "", "", "",
+	/*P0-P7*/	"", "", "", "", "", "", "", "",
+	/*Q0-Q7*/	"", "", "", "", "", "", "", "",
+	/*R0-R7*/	"", "SP0_AP_INTR_N-I", "", "", "", "", "", "",
+	/*S0-S7*/	"", "", "", "", "", "", "", "",
+	/*T0-T7*/	"", "", "", "", "", "", "", "",
+	/*U0-U7*/	"", "", "", "", "", "", "", "",
+	/*V0-V7*/	"", "", "", "", "", "PCB_TEMP_ALERT-I",	"", "",
+	/*W0-W7*/	"", "", "", "", "", "", "", "CPU_RST_L-I",
+	/*X0-X7*/	"", "", "", "", "", "", "", "",
+	/*Y0-Y7*/	"", "", "", "EMMC_RST-O", "", "", "", "",
+	/*Z0-Z7*/	"HMC_EROT_SPI_INT_L-I", "", "", "", "", "", "", "";
+};
+
+&gpio1 {
+	/* 36 1.8V GPIOs */
+	gpio-line-names =
+	/*A0-A7*/	"", "", "", "", "", "", "", "",
+	/*B0-B7*/	"", "", "", "",
+			"AP_EROT_REQ-O", "EROT_AP_GNT-I",
+			"IO_EXPANDER_INT_L-I", "",
+	/*C0-C7*/	"", "", "", "", "", "", "", "",
+	/*D0-D7*/	"", "", "", "", "", "", "", "I2C_SSIF_ALERT_L-I",
+	/*E0-E7*/	"", "", "", "", "", "", "", "";
+};
+
+&i2c20 {
+	hpm0_sma_ioexp_50: gpio@50 {
+		compatible = "nxp,pca9555";
+		reg = <0x50>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cp2112a>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+
+		gpio-line-names =
+			"CPU0_IROT_RECOVERY_L_3V3-I",
+			"CPU0_IROT_FATAL_ERR_L_3V3-I",
+			"CPU0_OVERT_L-I",
+			"C0_THERM_WARN_N-I",
+			"C0_SOC_THERM_OVERT_N-I",
+			"CPU0_CHIPTHROT_L-I",
+			"C0_SOCAMM_0_ID_PRSNT_N-I",
+			"C0_SOCAMM_1_ID_PRSNT_N-I",
+			"C0_SOCAMM_2_ID_PRSNT_N-I",
+			"C0_SOCAMM_3_ID_PRSNT_N-I",
+			"C0_SOCAMM_4_ID_PRSNT_N-I",
+			"C0_SOCAMM_5_ID_PRSNT_N-I",
+			"C0_SOCAMM_6_ID_PRSNT_N-I",
+			"C0_SOCAMM_7_ID_PRSNT_N-I",
+			"JTAG_BYPASS_CPU0_S_DIE-O",
+			"JTAG_BYPASS_CPU0_C_DIE-O";
+	};
+	hpm0_sma_ioexp_51: gpio@51 {
+		compatible = "nxp,pca9555";
+		reg = <0x51>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cp2112a>;
+		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
+
+		gpio-line-names =
+			"C0_UPHY0_PRSNT0_L-I",
+			"C0_UPHY0_PRSNT2_L-I",
+			"C0_UPHY_PRSNT1_L-I",
+			"C0_UPHY2_PRSNT0_L-I",
+			"C0_UPHY2_PRSNT2_L-I",
+			"C0_UPHY3_PRSNT0_L-I",
+			"C0_UPHY3_PRSNT1_L-I",
+			"GPU_THERM_WARN_N-I",
+			"JTAG_BYPASS_GPU1-O",
+			"JTAG_BYPASS_GPU2-O",
+			"C0_ALL_SOCAMM_PGOOD-I",
+			"DDR_VDDQ_PGOOD-I",
+			"CPU0_OOB_CS1_L-O",
+			"CPU0_OOB_CS0_L-O",
+			"LEAK_SELF_TEST_L-I",
+			"TRAY_FAST_SHDN_L-I";
+	};
+	hpm0_sma_ioexp_52: gpio@52 {
+		compatible = "nxp,pca9555";
+		reg = <0x52>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cp2112a>;
+		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+
+		gpio-line-names =
+			"C0_WAKE_L-I",
+			"MCU_THERM_OVERT_N-I",
+			"MCU_THERM_WARN_N-I",
+			"PRIMARY_NODE_L-I",
+			"GLOBAL_WP-I",
+			"PCIE_CLKBUF_LOS-I",
+			"LEAK_DETECT_L-I",
+			"vLeakDetect1Status0-I",
+			"vLeakDetect1Status1-I",
+			"vLeakDetect2Status0-I",
+			"vLeakDetect2Status1-I",
+			"BMC_IOX_INT_L-I",
+			"MCU_BMC_ALERT_L-I",
+			"MCU_HMC_ALERT_L-I",
+			"MCU_USER_STRAP-I",
+			"HPM_MCU_OK-I";
+	};
+	hpm0_sma_ioexp_53: gpio@53 {
+		compatible = "nxp,pca9555";
+		reg = <0x53>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cp2112a>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+		gpio-line-names =
+			"CPLD_RESET_L-I",
+			"CPLD_PSEQ_FAULT-I",
+			"CPLD_READY-I",
+			"CPLD_PROGRAM-I",
+			"MCU_12V_HSCC_PGOOD-I",
+			"RUN_PWR_EN-I",
+			"MODULE_PWR_GOOD-I",
+			"VDD_1V8_PGOOD-I",
+			"VDD_3V3_PGOOD-I",
+			"C0_CVDD_PGOOD-I",
+			"C0_5V_SOCAMM_PGOOD-I",
+			"OOB_MUX_CTRL1-O",
+			"OOB_MUX_CTRL0-O",
+			"C2CVDD_PGOOD-I",
+			"SLOT_PWR_BRAKE_EN_L-I",
+			"MCU_I2C_RTC_ALERT_L-I";
+	};
+	hpm0_sma_ioexp_54: gpio@54 {
+		compatible = "nxp,pca9555";
+		reg = <0x54>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cp2112a>;
+		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+
+		gpio-line-names =
+			"JTAG_SEL_MCU-O",
+			"JTAG_TCK_MCU-O",
+			"JTAG_TMS_MCU-O",
+			"JTAG_TDO_MCU-I",
+			"JTAG_TDI_MCU-O",
+			"JTAG_TRST_L_MCU-O",
+			"CPU0_SSIF_ALERT_L_3V3-O",
+			"USB_HMC_TO_CPU_FORCE_EN-O",
+			"MCU_RECOVERY_L-I",
+			"v_BUS_BAR_OVERT-I",
+			"v_CPLD_AUTH_FAIL-I",
+			"",
+			"",
+			"",
+			"",
+			"";
+	};
+};
+
+&i2c21 {
+	hpm1_sma_ioexp_50: gpio@50 {
+		compatible = "nxp,pca9555";
+		reg = <0x50>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cp2112b>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+
+		gpio-line-names =
+			"SEC_CPU0_IROT_RECOVERY_L_3V3-I",
+			"SEC_CPU0_IROT_FATAL_ERR_L_3V3-I",
+			"SEC_CPU0_OVERT_L-I",
+			"SEC_C0_THERM_WARN_N-I",
+			"SEC_C0_SOC_THERM_OVERT_N-I",
+			"SEC_CPU0_CHIPTHROT_L-I",
+			"SEC_C0_SOCAMM_0_ID_PRSNT_N-I",
+			"SEC_C0_SOCAMM_1_ID_PRSNT_N-I",
+			"SEC_C0_SOCAMM_2_ID_PRSNT_N-I",
+			"SEC_C0_SOCAMM_3_ID_PRSNT_N-I",
+			"SEC_C0_SOCAMM_4_ID_PRSNT_N-I",
+			"SEC_C0_SOCAMM_5_ID_PRSNT_N-I",
+			"SEC_C0_SOCAMM_6_ID_PRSNT_N-I",
+			"SEC_C0_SOCAMM_7_ID_PRSNT_N-I",
+			"SEC_JTAG_BYPASS_CPU0_S_DIE-O",
+			"SEC_JTAG_BYPASS_CPU0_C_DIE-O";
+	};
+	hpm1_sma_ioexp_51: gpio@51 {
+		compatible = "nxp,pca9555";
+		reg = <0x51>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cp2112b>;
+		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
+
+		gpio-line-names =
+			"SEC_C0_UPHY0_PRSNT0_L-I",
+			"SEC_C0_UPHY0_PRSNT2_L-I",
+			"SEC_C0_UPHY_PRSNT1_L-I",
+			"SEC_C0_UPHY2_PRSNT0_L-I",
+			"SEC_C0_UPHY2_PRSNT2_L-I",
+			"SEC_C0_UPHY3_PRSNT0_L-I",
+			"SEC_C0_UPHY3_PRSNT1_L-I",
+			"SEC_GPU_THERM_WARN_N-I",
+			"SEC_JTAG_BYPASS_GPU1-O",
+			"SEC_JTAG_BYPASS_GPU2-O",
+			"SEC_C0_ALL_SOCAMM_PGOOD-I",
+			"SEC_DDR_VDDQ_PGOOD-I",
+			"SEC_CPU0_OOB_CS1_L-O",
+			"SEC_CPU0_OOB_CS0_L-O",
+			"SEC_LEAK_SELF_TEST_L-I",
+			"SEC_TRAY_FAST_SHDN_L-I";
+	};
+	hpm1_sma_ioexp_52: gpio@52 {
+		compatible = "nxp,pca9555";
+		reg = <0x52>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cp2112b>;
+		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+
+		gpio-line-names =
+			"SEC_C0_WAKE_L-I",
+			"SEC_MCU_THERM_OVERT_N-I",
+			"SEC_MCU_THERM_WARN_N-I",
+			"SEC_PRIMARY_NODE_L-I",
+			"SEC_GLOBAL_WP-I",
+			"SEC_PCIE_CLKBUF_LOS-I",
+			"SEC_LEAK_DETECT_L-I",
+			"SEC_vLeakDetect1Status0-I",
+			"SEC_vLeakDetect1Status1-I",
+			"SEC_vLeakDetect2Status0-I",
+			"SEC_vLeakDetect2Status1-I",
+			"SEC_BMC_IOX_INT_L-I",
+			"SEC_MCU_BMC_ALERT_L-I",
+			"SEC_MCU_HMC_ALERT_L-I",
+			"SEC_MCU_USER_STRAP-I",
+			"SEC_HPM_MCU_OK-I";
+	};
+	hpm1_sma_ioexp_53: gpio@53 {
+		compatible = "nxp,pca9555";
+		reg = <0x53>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cp2112b>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+		gpio-line-names =
+			"SEC_CPLD_RESET_L-I",
+			"SEC_CPLD_PSEQ_FAULT-I",
+			"SEC_CPLD_READY-I",
+			"SEC_CPLD_PROGRAM-I",
+			"SEC_MCU_12V_HSCC_PGOOD-I",
+			"SEC_RUN_PWR_EN-I",
+			"SEC_MODULE_PWR_GOOD-I",
+			"SEC_VDD_1V8_PGOOD-I",
+			"SEC_VDD_3V3_PGOOD-I",
+			"SEC_C0_CVDD_PGOOD-I",
+			"SEC_C0_5V_SOCAMM_PGOOD-I",
+			"SEC_OOB_MUX_CTRL1-O",
+			"SEC_OOB_MUX_CTRL0-O",
+			"SEC_C2CVDD_PGOOD-I",
+			"SEC_SLOT_PWR_BRAKE_EN_L-I",
+			"SEC_MCU_I2C_RTC_ALERT_L-I";
+	};
+	hpm1_sma_ioexp_54: gpio@54 {
+		compatible = "nxp,pca9555";
+		reg = <0x54>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cp2112b>;
+		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+
+		gpio-line-names =
+			"SEC_JTAG_SEL_MCU-O",
+			"SEC_JTAG_TCK_MCU-O",
+			"SEC_JTAG_TMS_MCU-O",
+			"SEC_JTAG_TDO_MCU-I",
+			"SEC_JTAG_TDI_MCU-O",
+			"SEC_JTAG_TRST_L_MCU-O",
+			"SEC_CPU0_SSIF_ALERT_L_3V3-O",
+			"SEC_USB_HMC_TO_CPU_FORCE_EN-O",
+			"SEC_MCU_RECOVERY_L-I",
+			"SEC_v_BUS_BAR_OVERT-I",
+			"SEC_v_CPLD_AUTH_FAIL-I",
+			"",
+			"",
+			"",
+			"",
+			"";
+	};
+};
+

-- 
2.31.1


