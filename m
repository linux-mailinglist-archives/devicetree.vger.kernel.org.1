Return-Path: <devicetree+bounces-141499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD6DA20F7C
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 18:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E61383A6B65
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDF83193084;
	Tue, 28 Jan 2025 17:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="M+wK459A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987301684AE
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 17:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738084569; cv=none; b=cICLTCluEA7vUuajPjzPaiJcVVE5iuWSOBjG4wqHklkOuMsiKnQK1KTG3/HLr7g/lYIRnxhSdCr+XvcX2/U/CmikyrfsAgmDPkihRyWjLvUF7JA/xp+JN866jAJPHryMwOK4O8clNn3Fa6C7U36g8S36MHNgX/WxSNysiYkiNzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738084569; c=relaxed/simple;
	bh=QMZ/XvkweAPoe46VgNf1XY/0LwZdCFmd6qv/UpxY7YQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=F4xZCH7Cy7wkoSwqH741YKrmSEqsD+/s0MCqaFGxrDS5xThtabk2BGOhXpY7KF3AsK/OeYkr8PtnN6EkaEzrSjyss0SCMrykAOd1tvTsq0Im0LA3K3nMzJf/bQ/Nu4V1Fh8VQKYvqQLZIY/rrIsj78PLjN+am6yp0lv2tvkdYPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=M+wK459A; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3862d6d5765so3556475f8f.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738084565; x=1738689365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GtKHk5OuOKVS4XECraUREwb+pHnUWcAkIiYsVCyL/F0=;
        b=M+wK459AN0qs2oE2f4CUiRQmeTpn3+GZX3uTbo4rXv3WR2zswciq8PlJPurCmuy8vg
         fdyHQ4EuJsTzGWe7UdhhbROQoVl92SjX2b2nT9yButBAvXPP1c3+3TMJx/Bav7vl6Yaa
         j4P/r80Zjhbbo8o6R+v2WlmIFxyZKsNUIQumzFB1TMnz32QYE7ioe4UX4PowSzw+jPOk
         veUQi5ELr2OACRRXlrUavxsmp4YnTpzRHHw84hqHGRBOs9miKwNNk9mbur5SYDeDlEi1
         LHkXGk8gp2fWHMU6y+mzZ20626/eiYSZkIibryddg8cS5IjlVBkY1WdU2rKj7YlwDVDG
         FSOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738084565; x=1738689365;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GtKHk5OuOKVS4XECraUREwb+pHnUWcAkIiYsVCyL/F0=;
        b=pFs9C7mpEasUALXIbr//8NATZGLymEIgQdZilZY9K96GmTQfLRK8f/L7gdAc/lAmqK
         k4ln8EHQdCgWkX5U8LwcL2N8fsa9/ogyHLWgTVSAKfG6+7zTs61TO6ZFSKXvJiaBmuD7
         GZmJayvWaDgm37+XarTsfThoM9BbaAj2WzBEes6NFylO2f3QQdLbD0NauM3YNKqMx2wa
         mo8aJV2Ai17PkvfcQtMU2eNSVUpfgIUkP0w65/4ZLNkllVRHpc1Qb6qVhPEYPDWTgtDc
         CosACc7Bd3KJZ+HG5Gwl2i3e9nsBCAOwFTzzDRZn911xgGcMKdZzTeoDegsiXn7jaFQe
         2FrA==
X-Forwarded-Encrypted: i=1; AJvYcCWZkoThcQk7gcP4i976avyLbDAj0U9PTWe5agRA//WndJl7hRONQ9cNlcd7UN4aenlVViyh+B4DiBsC@vger.kernel.org
X-Gm-Message-State: AOJu0YwPc7Bhv4y5XAZIAkurgh4LypgLPbYXG0Ae5G8OaH1hiy1KIw2m
	9linvfFVQdL3l4dVz3DXOg5H2qgVTYkJxiGuSZql4J5mepC9PmnZCO+fSjOMSKI=
X-Gm-Gg: ASbGnctnRXhKb3Ny9SvUYW8efu4FGTCHZ8QyFGZana6NSG7E1g55pLFAsGw8N44XUKT
	kGTTvyNWbehvy2T0ViCq8lWcAlvKPJsH1IIWSJ66B52lSN1RZ7V+vxEsFLS7lMQD44Z5VSrQkEH
	nJdiJ/28wF1TEfArhP0x4DUxA6ikIK+/+/ayMz8zi3tzuTUnAnI2YWMYlM/aEWaI5x9AisowLqT
	PdIdjB/9UUdJGHoL15udb1GAmXzKEmqQ/GWmYWZFblGXVU5NOVkDxJOvknBORZwJQTF9Ib1Seh1
	U2ZUHJ49DZ0wwQiQJryFS1LQ8SGlp5gJa4+7484w02Oism90X83Ar16/FQ==
X-Google-Smtp-Source: AGHT+IGvLelAGjP3Cp2NtFnJU1ZBrvpSEr1QQ/aekKmtr/sBfPTElE2SYJmLWChkgQi4KPqF+xdNCg==
X-Received: by 2002:a05:6000:1acc:b0:386:4a16:dad7 with SMTP id ffacd0b85a97d-38bf566e605mr42464688f8f.10.1738084564811;
        Tue, 28 Jan 2025 09:16:04 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a1bb057sm14845730f8f.62.2025.01.28.09.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 09:16:04 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: socfpga: Add basic support for Terrasic's de10-nano
Date: Tue, 28 Jan 2025 18:15:55 +0100
Message-ID: <20250128171556.1499810-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3096; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=QMZ/XvkweAPoe46VgNf1XY/0LwZdCFmd6qv/UpxY7YQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnmRDMdfxA+UOslSYa5+JkWzCdHpCvw5lHuKL+5 y5uo86ycs6JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ5kQzAAKCRCPgPtYfRL+ TnAsCACM4/0P1OIAwzHsTJOTWKa797EqJdKMuT+H/yxsu7KuYgKIPwoqIkx2b97t2SbWYnc1RUH Y+atAyzS+GapAhXdvrk+RomFGCWQXiuGEX7t1DyKmTGkhstDTKB+h7PwL0PqehkJEQ1WMcJbKkQ pi992GUHW5et20FQBMoxxxkGivTQtqL5u93CFP0WPZbipv55PKhDb/5FyMcPOCWPQPvi9RSeLa1 d96uG6RnAuc+Fm6y4/yaRbvvVqAAi4K5Nv17JuzwBZb5DsoMSthDUlBosLth89zVnFEVAP54h/p MDR6hoO2P4cBVEIiQ7KqbfUk90+s7eAmx+D/qquND2LM/nHw
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

This dts is enough to make the board boot to Linux with the rootfs on
a micro SD card.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
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


