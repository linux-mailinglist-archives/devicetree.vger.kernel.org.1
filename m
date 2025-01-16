Return-Path: <devicetree+bounces-139060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A76B9A13CB7
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA0AF188E3A8
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B58722D4CD;
	Thu, 16 Jan 2025 14:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="gncACmDp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B61622CF1A
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 14:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737038901; cv=none; b=aCLkIAi6nw1pdozETlL+sj1echCRJZ9Tdo2/y26aTx6f10N72iCJYaUL/gmPIQrmev/ZlOsSAGCxDnwDWIpUrHb28Xd/WFKRk0Jxg1JzQ/lWDh77WQWFz5/FR6kPerNwaUDcV80UcFYYqIUpRzCkv2k8sKQT9TLXJqNIm44QR5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737038901; c=relaxed/simple;
	bh=HK3JpGdhQRobIdF3deBVPv/1aNYFMUvCnv+zkCVfHxo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hMFbIQYykEm0B62mGVosoJay2vY3RFUFyQSotiPvd4vOOL22eCSyx0DTu/rGSfjcefLJrhLaM5x/hqGEdbn3tgB/I7V1lkdyoO/ThSVf5Fu0AIvubGq8LVZg1YKUQMJBe1aCju7EA+u6vYCXal+SkQnhE+ULhG1zD5Ube3lwe/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=gncACmDp; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-216401de828so18011935ad.3
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 06:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1737038899; x=1737643699; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a+ImoZeCgDi17lkAamCCvBTMAZc2xhlZE/Yp3EuPuXM=;
        b=gncACmDpug46dBN5MxSWZ6WTIKyKQiHmmfUIAglbRDPue5xMZQsCapNVJ3mSS2SFJN
         ZatdHltueaeHP5wsFoZCdtg39AKFHHzXyijJ04m5qkAYaX/fvQwHJ0TiOEgbuYFYvd+o
         E6vYs0uUYQkPoDOetfx5euyOB/Y3O/T10e7iVHlhwrKImERAAmHiSukJ0lj87XQVAyiJ
         /tVZ98r6F/MBrFG+8EDJxSbpIcKCd7m1bgU9To6I/UBtiw0sWZldiAZ5+mqtfxNh8dYq
         ouOZdWxlAOVfShTm9/KBgZuGPifWZ5JbYnlRn0utNiTnD4WvQrUNdhaTMoibIyK26UJv
         yoeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737038899; x=1737643699;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a+ImoZeCgDi17lkAamCCvBTMAZc2xhlZE/Yp3EuPuXM=;
        b=p81gp+0zni0zwQZ9dl4X04Cmxi6mUsPCmYZU987bsO4CjWcB5tSGr8NuGH+NdFUEA9
         hDXTDs9UkuNhUIODXaWjHw3jwitvNesY6T0ndxjiMnan9t0pPPDse8sI3ue/HtfkXXM4
         /oQVT5I4CS9HnKSviU0++hI+HFJ8WkUIncTpGnBov+Als8qxQwqRD3dOF0m6r7cWbzze
         PvyD048zLxf0ZPqoGZbNuTDCAMAHk23krMTiA3QcN/UtqnmPmJQJpCwrFNhog07gLINp
         R3GuGTRle3Ctzqo44UJQxQh9HfY0+iUoBJBoVg1lr7OrrrhsYIphjQvOtcU0S6V0rl34
         Ad0A==
X-Forwarded-Encrypted: i=1; AJvYcCW+Y37xUS9juvvoQkvMZ38lFNg5oDWnwsCx4fHl0lsetKdDwGhcedXP2Qf7SScZMMHRzvHIcoEWlPJq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8jLLWTRH79uURFzAe0DmkkD6xxo9Npod+FAbj6l/oTnmhkAT8
	+W3BBWWmAcFj/PawNi9ZLwt7Yk39jv5QXXmFz4kzw1RzAJn4F4P9MKCJc575
X-Gm-Gg: ASbGncv6Jx7PSYuahylmz2m4nIQirIzo0uY0R0rk4n4aiu1qEFz02vjJx6fLgzDgAvb
	8NSXcHfdszlPvklqhqf+ZlJ9QRTLYssR0oQMQy8aYMOk9qFCtTECWhxLw7wb8CsSieSgag7ql1X
	tKSi38WwiIgqdk8BrU+7NhMSqpyJBGQNcHwLVh+wE3yoo17q0RqH3ZKcMVNuUZFL0HTO+qurzgz
	PLOAsCoe39XWI17x2mu/qX3/Nbz+mMhCCyIRziSW3rCR0KEvq0bNINaiA==
X-Google-Smtp-Source: AGHT+IFuxUkqJjlyXPonoX5N6Dyz1mmSLUYEA5EYZIsLBdReusU74cwAkR2Dn+QHucpLaV1Be/RYuQ==
X-Received: by 2002:a17:903:1c5:b0:216:431b:e577 with SMTP id d9443c01a7336-21a8400afc8mr444626485ad.51.1737038898964;
        Thu, 16 Jan 2025 06:48:18 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:4323:933a:5975:d650])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21c2d3d7d98sm1222535ad.177.2025.01.16.06.48.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 06:48:18 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Masato Kiuchi <kiuchi_masato@yuridenki.co.jp>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH v2 4/4] arm64: dts: renesas: Add initial device tree for Yuridenki-Shokai Kakip board
Date: Thu, 16 Jan 2025 23:47:52 +0900
Message-ID: <20250116144752.1738574-5-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250116144752.1738574-1-iwamatsu@nigauri.org>
References: <20250116144752.1738574-1-iwamatsu@nigauri.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add basic support for Yuridenki-Shokai Kakip board based on R9A09G057H48.
This commit supports the following:

  - Memory
  - Input clocks
  - Pin Control
  - SCIF
  - OSTM0 - OSTM7
  - SDHI0

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>

---
v2: Drop bootargs from chosen.
    Fix binding name for regulators.
    Fix the name style of the regulator.
    Use DTS coding style.

 arch/arm64/boot/dts/renesas/Makefile          |   1 +
 .../boot/dts/renesas/r9a09g057h48-kakip.dts   | 136 ++++++++++++++++++
 2 files changed, 137 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index 928635f2e76bbb..698f790bd42524 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -149,6 +149,7 @@ dtb-$(CONFIG_ARCH_R9A09G011) += r9a09g011-v2mevk2.dtb
 dtb-$(CONFIG_ARCH_R9A09G047) += r9a09g047e57-smarc.dtb
 
 dtb-$(CONFIG_ARCH_R9A09G057) += r9a09g057h44-rzv2h-evk.dtb
+dtb-$(CONFIG_ARCH_R9A09G057) += r9a09g057h48-kakip.dtb
 
 dtb-$(CONFIG_ARCH_RCAR_GEN3) += draak-ebisu-panel-aa104xd12.dtbo
 dtb-$(CONFIG_ARCH_RCAR_GEN3) += salvator-panel-aa104xd12.dtbo
diff --git a/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
new file mode 100644
index 00000000000000..b35a6c0499ee7c
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
@@ -0,0 +1,136 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for Yuridenki-Shokai the Kakip board
+ *
+ * Copyright (C) 2024 Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/pinctrl/renesas,r9a09g057-pinctrl.h>
+#include <dt-bindings/gpio/gpio.h>
+#include "r9a09g057.dtsi"
+
+/ {
+	model = "Yuridenki-Shokai Kakip Board based on r9a09g057h48";
+	compatible = "yuridenki,kakip", "renesas,r9a09g057h48", "renesas,r9a09g057";
+
+	aliases {
+		serial0 = &scif;
+		mmc0 = &sdhi0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@48000000 {
+		device_type = "memory";
+		/* first 128MB is reserved for secure area. */
+		reg = <0x0 0x48000000 0x1 0xF8000000>;
+	};
+
+	reg_3p3v: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	vqmmc_sdhi0: regulator-vccq-sdhi0 {
+		compatible = "regulator-gpio";
+		regulator-name = "SDHI0 VccQ";
+		gpios = <&pinctrl RZV2H_GPIO(A, 0) GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios-states = <0>;
+		states = <3300000 0 1800000 1>;
+	};
+};
+
+&qextal_clk {
+	clock-frequency = <24000000>;
+};
+
+&pinctrl {
+	scif_pins: scif {
+		pins =  "SCIF_RXD", "SCIF_TXD";
+	};
+
+	sd0-pwr-en-hog {
+		gpio-hog;
+		gpios = <RZV2H_GPIO(A, 1) GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "sd0_pwr_en";
+	};
+
+	sdhi0_pins: sd0 {
+		sd0-data {
+			pins = "SD0DAT0", "SD0DAT1", "SD0DAT2", "SD0DAT3", "SD0CMD";
+			input-enable;
+			renesas,output-impedance = <3>;
+			slew-rate = <0>;
+		};
+
+		sd0-clk {
+			pins = "SD0CLK";
+			renesas,output-impedance = <3>;
+			slew-rate = <0>;
+		};
+
+		sd0-mux {
+			pinmux = <RZV2H_PORT_PINMUX(A, 5, 15)>; /* SD0_CD */
+		};
+	};
+};
+
+&scif {
+	pinctrl-0 = <&scif_pins>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&ostm0 {
+	status = "okay";
+};
+
+&ostm1 {
+	status = "okay";
+};
+
+&ostm2 {
+	status = "okay";
+};
+
+&ostm3 {
+	status = "okay";
+};
+
+&ostm4 {
+	status = "okay";
+};
+
+&ostm5 {
+	status = "okay";
+};
+
+&ostm6 {
+	status = "okay";
+};
+
+&ostm7 {
+	status = "okay";
+};
+
+&sdhi0 {
+	pinctrl-0 = <&sdhi0_pins>;
+	pinctrl-names = "default";
+	vmmc-supply = <&reg_3p3v>;
+	vqmmc-supply = <&vqmmc_sdhi0>;
+	bus-width = <4>;
+
+	status = "okay";
+};
-- 
2.47.1


