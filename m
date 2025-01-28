Return-Path: <devicetree+bounces-141500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 80595A20F92
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 18:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 981343A5598
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0A441DB34E;
	Tue, 28 Jan 2025 17:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Sk5W4IMI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303BC1684AE
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 17:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738085379; cv=none; b=fN18C3QpVfPtNAaLiDQXcpKxNM8TD6KSlTSmVTy3axqQqUEruX57GD9tqBwrDbV5gAvj8YFn/tY1XkrKT6/Igx16wvJQFi4hBHnjPNmtmmj2CUCHoztnRyMwPJBHd0zLpFcQx0v4ErgNFdvBFYHHZBXBWE4EpE+8acmVcZVh+UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738085379; c=relaxed/simple;
	bh=fKuHBkO6gVVCFCdSJFQAmff53FXkCTXexy+1dsxfSo0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=FM6FVVwYRPCsWBW09hBdKvlyGu1IXfmvqFWqQ0OE8zz8NiBE1av2JRZxCN6qM1E4K60FPWj4AV9NbmTqyvHKJRONoY84xd21jDm2cI+58J2dvtNjB2xLzZP8iny0sfmfSG1fmKpkBo30OvPf+YFG9TO/4SZRqtXIVyiv0r9BvC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Sk5W4IMI; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-436a03197b2so40406025e9.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738085375; x=1738690175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kAOnfJk8Ll5ALd+bAgw7fUl/0BuZl2jjNY6ByjGEDvQ=;
        b=Sk5W4IMIE8oPoQT5baYKfQq/spmbVlq4FueAkeQx7QoQS5kJS+ercrbGVgkQngR1Dg
         Z5s0LL1EUVHTomHvsTotSGNmp7lqwYhJ92GOe2HsRW7WAOxhMzkOBsaH9SVBgtMGHpkX
         r3ZsP7R46Hjz8Ew4T2Uz6kYgfam0WvoBXTo1uPZ9sjlB9qxOg3mViXpb2GDPJsXHD3zs
         hPyJJPYZUdM0Zw2iMJeWrTDNQZtY38rGuDOu4QEoJQ40GFjGDRPv0Ws7f/H4EsKjGGj/
         77YpTT6Lo+Xq0bhMxPzEKmfwUSkGSb8K2wKUo73pHAcldUugwpV79sYUyih1GU0RRO3y
         B6KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738085375; x=1738690175;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kAOnfJk8Ll5ALd+bAgw7fUl/0BuZl2jjNY6ByjGEDvQ=;
        b=kUm0sgqGxAzMUnyUqKVRlXrsd1oYZoYVqvLAGA3iIX2RGEkDRI7yeAY7xWa020aakY
         eHSImJ35LmkgnOUcI/aZiSADwdpU7vzESwjNfibnQt56uhVcF+5csnrm1uiKWWBscfBg
         qXakE7Vl+0eR/qFVtDv5pRHIFj/xLHJzIJC6tNo60cqfLGoljAh8niJkt5ZGIwzYhJV5
         YoOmwOeubUI5ueFByhQg1z8MkxaKDjmoj2UyhgUlfEJClMPrbx3tISwQAv4bmiKmPYxu
         YV1/GvoKTFS+Q6sZpEBSqc/6/rc9ntaGM6q2OVfvOxpKvP1Q5BH6vHb2cCtPvNIzG/FH
         g08A==
X-Forwarded-Encrypted: i=1; AJvYcCXFZP0P9RLL+++mE4OeSsktU9QvQrYmmNCQyee0LTuweHKu3Xt3PT2CYdkhjJR5Fquwtfcp10F95qsD@vger.kernel.org
X-Gm-Message-State: AOJu0YzFF448wIlnmaeJbHRroM16M8JLsMjB/zgHvVf9UYzsUB354YNW
	VP1l0DNWIguY6Y+2Bfow7Y7lZFYb7rtc3wvJE8DvYdKeSZy679/NO6m0EtUAiDo=
X-Gm-Gg: ASbGnctN2mvREjBGmCbbTkzeWpV5F9WwaPQNwLC5DRUp3tIpzces2Ct2qFsN7ELiYco
	/E0FM0e4qWwEAhekVF1X7LiZQiRXrhcpj6wtiq5tA0nm8jRuK/Y8t0yTn8epPizBk/GUdmCIcNJ
	8Tx64VSVsZyEUQAufCeB98GDnfoolvi9l2PTmI/RCLPw/cOn90B5QDWY7+p6GW6qfPyYQ5BIG76
	6K3a2WaMBZ8no7fXRLHVkXKOG8AkWMI4B5dvu/OcwbbrSP1iklbdx6I5cVZ45hoQBnwG5E556y9
	TwyvFRaD+2lH5loI11XdJH1kCYgw2y9gpg+rpqrp5p8lL7FsHZK4UZ9ZkQ==
X-Google-Smtp-Source: AGHT+IHnpSIh7KU+VCphvReRqNWdtBF2d0uF1DAtcKvgsSCXu3zyZ0DubN85Diq5BBxqLd4dY6fFfA==
X-Received: by 2002:a05:600c:1d07:b0:436:488f:50a with SMTP id 5b1f17b1804b1-438913ef4b7mr434270445e9.17.1738085375435;
        Tue, 28 Jan 2025 09:29:35 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd4d3dbcsm179373075e9.40.2025.01.28.09.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 09:29:35 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RESEND PATCH] ARM: dts: socfpga: Add basic support for Terrasic's de10-nano
Date: Tue, 28 Jan 2025 18:29:17 +0100
Message-ID: <20250128172917.4565-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3277; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=fKuHBkO6gVVCFCdSJFQAmff53FXkCTXexy+1dsxfSo0=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnmRPuX5/KFs5VhMXgFqmSiVVzJ5bVQ6PPqTreF OJZrXZWdRuJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ5kT7gAKCRCPgPtYfRL+ Th6LCACXWfB1qMkmQaGWkV0VXqqQa6kJih4Vt2gIq1LZIscv0643PwW/2NSQcz2V9NHDeJTS0sM t88P4qTYZYQnMHWdkE5qkU0v324hMsIZVKyr/Xdid6C4rqCETDUNOSsqNZhLI4qyUWPGWRmBhmO XVk4FVdRS9FBb+Jl3rLItBmSFXisCYzytrtMdK6Bh1Sb97LeHnta6/cZZLNcz3oJ7dOaBz2QdQ7 RZ4fYRFr6pC1o5JsS4h8wRYTJ/6mQJ2XLUXPz4oGV2U+L+U33DxGyBaXpZISbNFeMODQHRuOdVR JxsU1IuH77mmFeCQLAbMHmzw8/qHjN1+EAMLFR0aeGy77Iac
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

This dts is enough to make the board boot to Linux with the rootfs on
a micro SD card.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
Hello,

in the variant I sent 15 min ago I fatfingered the address of the
linux-arm-kernel list. So here comes a resend with the right address ...

Sorry for the noise
Uwe

 arch/arm/boot/dts/intel/socfpga/Makefile      |  1 +
 .../socfpga/socfpga_cyclone5_de10nano.dts     | 90 +++++++++++++++++++
 2 files changed, 91 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts

diff --git a/arch/arm/boot/dts/intel/socfpga/Makefile b/arch/arm/boot/dts/intel/socfpga/Makefile
index c467828aeb4b..7f69a0355ea5 100644
--- a/arch/arm/boot/dts/intel/socfpga/Makefile
+++ b/arch/arm/boot/dts/intel/socfpga/Makefile
@@ -10,6 +10,7 @@ dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
 	socfpga_cyclone5_mcvevk.dtb \
 	socfpga_cyclone5_socdk.dtb \
 	socfpga_cyclone5_de0_nano_soc.dtb \
+	socfpga_cyclone5_de10nano.dtb \
 	socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb \
 	socfpga_cyclone5_sodia.dtb \
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts
new file mode 100644
index 000000000000..d1f23a57a94d
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts
@@ -0,0 +1,90 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2017, Intel Corporation
+ *
+ * based on socfpga_cyclone5_de0_nano_soc.dts
+ */
+/dts-v1/;
+
+#include "socfpga_cyclone5.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Terasic DE10-Nano";
+	compatible = "altr,socfpga-cyclone5", "altr,socfpga";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@0 {
+		/* 1 GiB */
+		device_type = "memory";
+		reg = <0x0 0x40000000>;
+	};
+
+	soc {
+		fpga_axi: axi_h2f_lw_bridge@ff200000 {
+			compatible = "simple-bus";
+			reg = <0xff200000 0x00200000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x00000000 0xff200000 0x00200000>;
+		};
+	};
+};
+
+&gmac1 {
+	/* Uses a KSZ9031RNX phy */
+	status = "okay";
+	phy-mode = "rgmii";
+
+	rxd0-skew-ps = <420>;
+	rxd1-skew-ps = <420>;
+	rxd2-skew-ps = <420>;
+	rxd3-skew-ps = <420>;
+	txen-skew-ps = <0>;
+	txc-skew-ps = <1860>;
+	rxdv-skew-ps = <420>;
+	rxc-skew-ps = <1680>;
+};
+
+&gpio0 {
+	status = "okay";
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gpio2 {
+	status = "okay";
+};
+
+&i2c0 {
+	clock-frequency = <100000>;
+	status = "okay";
+
+	accelerometer@53 {
+		compatible = "adi,adxl34x";
+		reg = <0x53>;
+		/* HPS_GSENSOR_INT is routed to UART0_RX/CAN0_RX/SPIM0_SS1/HPS_GPIO61 */
+		interrupt-parent = <&portc>;
+		interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+	};
+};
+
+&mmc0 {
+	/* micro SD card socket J11 */
+	status = "okay";
+};
+
+&uart0 {
+	/*
+	 * Accessible via USB (FT232R) on Mini-USB plug J4
+	 * RX = TRACE_D0/SPIS0_CLK/UART0_RX/HPS_GPIO49
+	 * TX = TRACE_D1/SPIS0_MOSI/UART0_TX/HPS_GPIO50
+	 */
+	clock-frequency = <100000000>;
+};

base-commit: 5ffa57f6eecefababb8cbe327222ef171943b183
-- 
2.47.1


