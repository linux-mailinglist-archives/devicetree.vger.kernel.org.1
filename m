Return-Path: <devicetree+bounces-137619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60174A0A1F0
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 09:10:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77E1B188E3E0
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 08:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E1AC1865E3;
	Sat, 11 Jan 2025 08:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="glsJ+t7e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A830C18FC7E
	for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 08:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736582980; cv=none; b=P96dRqty567/jS7UP5vToG+zGs/2Kj/D//FhYBb0CvtlbvSmWue2zKZlqQUzLE1S6tIThs9koLh92Z2VS+/lrYaP7LIGKTOcYzoWztXlw4EkQ2iIEczRBekU70SYcgTZW7aSMJdMY7MDXEYZvoOVS5ErZJDSCSmScwBvkKbGhHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736582980; c=relaxed/simple;
	bh=A4Uyt3UOZV9NkxZNCl27n6y72RfXzI/BzSbQg5Tl8tw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n2dye5PjMHtYGiWBARBHI8DgIsOhEKtOTk3z25oMFtHMh1PhDl47Z99o4D/clhVLxiG2eFIiNm+jcCG9u4dKjIzLz6B+/jgLN5/+/CH+0YMJVoU8u1YpYfh8n3esm7E1Dco41o9+VfmYe/2rOTeQcnnOc0shf5cr4fz4dZJRz/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=glsJ+t7e; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2ef8c012913so3629639a91.3
        for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 00:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1736582978; x=1737187778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EJmA1+cUkZQqYWT17Z2TnXdqbQr34ioZCcvEwe60th8=;
        b=glsJ+t7eagDalY/Foq+m07AfXlhuDjZGRQufXKEWDNxmvOH2IltBe93+zUnmXW6TXG
         3Pe1Eh33PdwElG7uCHx8uu3RfAlNZ1IDN0QQfQZAUZQ/60s4pKww7QOtmelvsALiPajL
         tEv7Csaao2DiVMHZvAmNwY061Ow8ypAgX26ChOmjHz46sHHA1dA87cJzNSC400Wews8B
         DMuy6nSFh32v+uux66ltz7OzksqdytywM0RUVsp9UuAAZxJdrCnui3KfSZSA2d8gdpzE
         m259wKhUw3fgGNtBBHkqsiqV7FR7OTSQBMeMcZb43pXZq2QXKhXpCh21OyP7Q1cgxyVk
         37iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736582978; x=1737187778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EJmA1+cUkZQqYWT17Z2TnXdqbQr34ioZCcvEwe60th8=;
        b=gouv8kihKOVETAzkaAVgxlRQSKPHGz7JXrnuhcb8YoEoPdUt5J0U6TGQiGe9q23nHf
         t5Q1IWleD1/6Z6O+0RKr8HwX1hwjD075IPByKWqeTeRMcUNOua9qbdourO8ClsMYus9n
         9J2vYH8Vj9GaCtg/LTztgmyBv0K/MHjDWsE4FsRkhYLCVXAjOtLkgkiVINlRXSFr71AT
         FlPSIihEdjSCorWyYu57L4RAYTzyIq4uDK7VK70HQpwJHzWl4cSi/XrWVECDKS+Nkg+w
         nFy0pfsShB9c/wRAiBkMu3nkqAMyi8eiMEcdS0I/fc8mXFl90SJR90G21NK6dptxyf5E
         4n8Q==
X-Forwarded-Encrypted: i=1; AJvYcCURgjhNPbNwW9v+qtXdMwPOIIwdJPfSuiLXaNOoCk9hOYHFilgaQQlxmd9JKop0CT5r32fKnLFCyXvY@vger.kernel.org
X-Gm-Message-State: AOJu0YwjbxL/Cr3pOpDC3BUgoamt4897iYuHTvJ62Z15CJeMH9kzw2Hg
	U4dzEucPmEngTEXteTbSDs7LoHbmm6gTFsaCM4prSOvgyMHEv1xRcgiDrooi
X-Gm-Gg: ASbGncvBZa9ej/IK5l/yBE7DUUKoXzNDNUpcnmGc9lDOJ8JO/Wq29u9vmuF3hzuaJ4N
	96Z5ndnSqgZcuzgbwUu3zC+OaQTtywP9aZTYr/z6XXv/dX5WvDWU8loCD1wAwWj5X+YErwHfALX
	MN6TNMZ+skuecEsk+NJoDQmCSd2lL1POXdQQnuXKh0kD4soWv6Yc8aPfH+D9sykvQunoy1tT9+P
	XPKTJUPqU59ngYhO/nJemp9nsLbU/0j54R50bHYXohnl8DZ8HIJ7RJXcw==
X-Google-Smtp-Source: AGHT+IHC4XD2JqlYhh1O1d22Xvj5qQCOneQIjph6oWSVs8txEHRQ3lKYZ0deviHayoheco8rSmsIbg==
X-Received: by 2002:a17:90b:54cb:b0:2ee:863e:9fe8 with SMTP id 98e67ed59e1d1-2f548ec793fmr21562441a91.18.1736582977921;
        Sat, 11 Jan 2025 00:09:37 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:aeaa:a1da:95e3:2274])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f559451a30sm4337119a91.33.2025.01.11.00.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jan 2025 00:09:37 -0800 (PST)
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
Subject: [PATCH 4/4] arm64: dts: renesas: Add initial device tree for Yuridenki-Shokai Kakip board
Date: Sat, 11 Jan 2025 17:09:03 +0900
Message-ID: <20250111080903.3566296-5-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250111080903.3566296-1-iwamatsu@nigauri.org>
References: <20250111080903.3566296-1-iwamatsu@nigauri.org>
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
 arch/arm64/boot/dts/renesas/Makefile          |   1 +
 .../boot/dts/renesas/r9a09g057h48-kakip.dts   | 138 ++++++++++++++++++
 2 files changed, 139 insertions(+)
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
index 00000000000000..4046b87a1f3bd6
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
@@ -0,0 +1,138 @@
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
+		bootargs = "ignore_loglevel";
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@48000000 {
+		device_type = "memory";
+		/* first 128MB is reserved for secure area. */
+		reg = <0x0 0x48000000 0x1 0xF8000000>;
+	};
+
+	reg_3p3v: regulator1 {
+		compatible = "regulator-fixed";
+
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
+		sd0_data {
+			pins = "SD0DAT0", "SD0DAT1", "SD0DAT2", "SD0DAT3", "SD0CMD";
+			input-enable;
+			renesas,output-impedance = <3>;
+			slew-rate = <0>;
+		};
+
+		sd0_clk {
+			pins = "SD0CLK";
+			renesas,output-impedance = <3>;
+			slew-rate = <0>;
+		};
+
+		sd0_mux {
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
2.45.2


