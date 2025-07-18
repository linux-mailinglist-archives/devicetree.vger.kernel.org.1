Return-Path: <devicetree+bounces-197588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8D3B09E42
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 10:44:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDDDA1C2041F
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 08:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09AC12957C0;
	Fri, 18 Jul 2025 08:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="jy02NJ3W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159DE2951D0
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752828271; cv=none; b=cCPWLa5Ve1djJSygb6npFJ5OxT5n08uK9awKtGj5fT3RDQvDwXNWfsLzZONkG8/KSF14HlbaLdVs7Zwm/i6c0AKt5ipuDSqFnLe4VhxbhBBt8FxuxypNHZqMhKBltyHIXzRgacSFKlj3YTmvoXSNH3KKVJ22AUcnbNaDE/vg7OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752828271; c=relaxed/simple;
	bh=b2MYDK+PAwESQkrD0k9SN6tJHVK+oPHFALbYh/bbzxc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GkVfuCTb+2eeyXyvfPK8+FZN24xQR+Vat+mkKSPMax9hac9R8t2YzZvaMXhcaRbAY6IpLZoQ9fFrh8EOKScr7wKytGZdFd/Dx4UL5erb5ILVwYoC7F0zYYLby3A48kDWq64MkRqqWwQSKuZL5xpFr5bzj1VPbpbJoOm4o+5Yuw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=jy02NJ3W; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4561a4a8bf2so19468535e9.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 01:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1752828268; x=1753433068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZF7vneJ/oeaOQ29Nz/sbY4GH4SE3qUarTuWdFIe75qc=;
        b=jy02NJ3Wt8fw5spFKf+nFw/jYgIT0UZ8xUTLX60XEZTODPhsDsOtxjttR2NcfJcuFO
         1PFEPqzas1eU1KhfHxrII1l6qtoVs3akOpUr/qgwArBFd17a0jFEiuFwEFvss9XCcriE
         URhKKSmjl3pXnesHtTIDLtnDPNU6wpyhREnmPwiR8v2vAZ8pmIQExI7mCoxu8bQ7HUSi
         0vHLkW7oXXczUHHrMD8c3sDHJ/GMsKh3HsZIMke7mBcVRecglw474RNFS/A0nQnzZg78
         PFicz/B0RXd+CY+DspzvdA74IxHokXg+mQpeVt+kbEJr/qaZBykbJW5FLAe7jcnkYLRu
         1WWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752828268; x=1753433068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZF7vneJ/oeaOQ29Nz/sbY4GH4SE3qUarTuWdFIe75qc=;
        b=nLPqskC7t6uYmsmyW7i5h8fnytWA+t0ACnJa1DJOvY6+Cn8HIZvUn7L2RNhmp6jXvc
         N2kUeN9uOj2AiBx3fwE9ahMmEfj+FRKduYebr6HYi2WC61I/Q8PlW7aSAF/cWB+A0p/4
         gqaXk43ooTrjoJaRD9IeWVhQadhON7DdAHsOWMI9CzIXBHPxNr4tkzZ+hWMuGmfcHIgT
         8ay0Z3FjHKsJRqr/voELUGxzB915mQRYSdQ4SqIoZcrnuK0dZAkuHiRdABXdnBllJ65U
         htwNSh0zbwmZbfZo/0Obi/CSxQuiVxOtfHlXTntMbM+NySFvm2S6q4MGCNpoF2f27/Os
         tl9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXs6FWYUaku2C/XOsIGj9t4AsWa6Nz70K03fRIob6dxraoiuKHBHTGPT3jn0Z24Pr2rivcMCYW9cuoR@vger.kernel.org
X-Gm-Message-State: AOJu0YwMUBQkmXIO6I6Lxj25zykDr6DqJ7w3mhu0LSwntb7pWs75lOke
	G0fVTXpxgUspU3ri7q68yLE+uX3Ms13j/smLqnUaIauFj4Qx8YieECBg6cYqWvdBHXk=
X-Gm-Gg: ASbGncvDAciS+wKQmZIxwvzhxAOObZNQuW8Pkqf9yhuaomYUaoOj3qJOU0mjbq77tXv
	/9DH9pBm4X6EscVpkeXJfIg0COd6OgNum53ao6abS/xR0aZlUyyScqBZFzOYL8EnH52HytoncOU
	Cd3fB2MBsk6jl0yW2vNPJbYllB0MucoNVZstfBiLb2ZmjnmHkpb6tckwD/2obYgdHI36WMH+bm6
	St33gtnf/TEAIzUHZFoJruYaruQrSVONeDaM/u7s2aH9nO2qrBipbeP9omGkc3+eGKxNtXRXpE4
	CV7r9d4pkGhZf3Emi42/x9o2rXcfjuHrIOhgxKc05OKMtf1nvW22OeBJFvfTkMl6dTLyACOgiPg
	VpMpOZjIrAVAh+/h0Djq6UaXBmaR8rHvODvfkJNe31pLOHysW
X-Google-Smtp-Source: AGHT+IGqz0s/AaH2jo7lzKlm58e4CdVC6fpR5T/WfzdfwX2FhNDW9nmVqoPf2WlNPuA5uOQWGsE3zg==
X-Received: by 2002:a05:600c:8b0b:b0:456:1442:86e with SMTP id 5b1f17b1804b1-45635e6d11emr49725385e9.21.1752828268318;
        Fri, 18 Jul 2025 01:44:28 -0700 (PDT)
Received: from pop-os.telenet.be ([2a02:1807:2a00:3400:9aa9:dd5c:bad6:e31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45627962384sm58208115e9.2.2025.07.18.01.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 01:44:27 -0700 (PDT)
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	palmer@dabbelt.com
Cc: skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Subject: [PATCH v2 2/2] riscv: dts: spacemit: Add OrangePi RV2 board device tree
Date: Fri, 18 Jul 2025 10:43:39 +0200
Message-ID: <20250718084339.471449-3-hendrik.hamerlinck@hammernet.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250718084339.471449-1-hendrik.hamerlinck@hammernet.be>
References: <20250718084339.471449-1-hendrik.hamerlinck@hammernet.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add initial device tree support for the OrangePi RV2 board [1], which is
marketed as using the Ky X1 SoC but has been confirmed to be 
identical to the SpacemiT K1 [2].

The device tree is adapted from the OrangePi vendor tree [3], and similar
integration can be found in the Banana Pi kernel tree [4], confirming SoC
compatibility.

This minimal device tree enables booting into a serial console with UART
output and a blinking LED.

Link: http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-RV2.html [1]
Link: https://www.spacemit.com/en/key-stone-k1 [2]
Link: https://github.com/BPI-SINOVOIP/pi-linux/blob/linux-6.6.63-k1/arch/riscv/boot/dts/spacemit/k1-x_orangepi-rv2.dts [3]
Link: https://github.com/orangepi-xunlong/linux-orangepi/tree/orange-pi-6.6-ky [4]
Signed-off-by: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
---
Changes since v1:
- Added the aliases section to the device tree.
- Removed the memory section, as it is populated by the bootloader.
- Replaced unclear copyright similar to the other K1-based boards.
---
 arch/riscv/boot/dts/spacemit/Makefile         |  1 +
 .../boot/dts/spacemit/k1-orangepi-rv2.dts     | 40 +++++++++++++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts

diff --git a/arch/riscv/boot/dts/spacemit/Makefile b/arch/riscv/boot/dts/spacemit/Makefile
index 92e13ce1c16d..152832644870 100644
--- a/arch/riscv/boot/dts/spacemit/Makefile
+++ b/arch/riscv/boot/dts/spacemit/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_SPACEMIT) += k1-bananapi-f3.dtb
 dtb-$(CONFIG_ARCH_SPACEMIT) += k1-milkv-jupiter.dtb
+dtb-$(CONFIG_ARCH_SPACEMIT) += k1-orangepi-rv2.dtb
diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
new file mode 100644
index 000000000000..337240ebb7b7
--- /dev/null
+++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2024 Yangyu Chen <cyy@cyyself.name>
+ * Copyright (C) 2025 Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
+ */
+
+/dts-v1/;
+
+#include "k1.dtsi"
+#include "k1-pinctrl.dtsi"
+
+/ {
+	model = "OrangePi RV2";
+	compatible = "xunlong,orangepi-rv2", "spacemit,k1";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led1 {
+			label = "sys-led";
+			gpios = <&gpio K1_GPIO(96) GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+			default-state = "on";
+		};
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_2_cfg>;
+	status = "okay";
+};
-- 
2.43.0


