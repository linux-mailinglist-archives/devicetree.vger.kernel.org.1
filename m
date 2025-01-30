Return-Path: <devicetree+bounces-141800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 389FFA2294E
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 08:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AC6E165720
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 07:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5265F17F4F6;
	Thu, 30 Jan 2025 07:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UoKWsjOv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79F07483
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 07:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738223183; cv=none; b=t3hGQpnu9zuPAPcRZAjcg10C8w6bqFWUiekOBSPoJrMk8FmrqaL4PKhVSd6aYkRm9zQyoQclfVIL7ddff4j5Ddza8UBNuZuBDi3q/Tc8GKc2G/ke4JkLY3aqqUE0LD6b1kmFVMVsJ1li4qYR0+B9RYOLNlfJXryd7kUZl2P1ERs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738223183; c=relaxed/simple;
	bh=xlmF6eh30PWWmx8Jnf3W4wGQKgY4ZbGOMbpsInwv5ZU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=NaeGxzPkPx3OUccvvaWGpIKXH5cm5l2sB9WI7b2KKj/66jX7shjFe2vl/nlXUQAsBwBACyALPuwweBrQzJpfa9FtPYTiy7Saa6gXhQjLfnuj3UHzcir0TOHdayoXE4L9VkCTEd02oqHKGE3Ujei4amB17k4bqgChBk3QIHHlQoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UoKWsjOv; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-aab925654d9so107900966b.2
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 23:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738223179; x=1738827979; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z0pIOz024yVvRmPpSADqakt2/CZ1i2/TTqHHzBkDPHE=;
        b=UoKWsjOvysQr8O/37syHUsIWwMpTqMMIEtt2bPgOecZpx6B5aYlpJd1U3RipchpuSE
         Nj8Wd7nGJPWmd7poijKv9DrOs1aExuwC8FbgjE8dNvwm0OJRxRMuf2O8RA+TRhmjCBSo
         vmJEmj6BqdcGvrwj9txKfBqG1Tf6M5O2tYelptAQV10DA1sDQEHQgju/0VY1pxX8dIoi
         vYp/J/xri1mGYDrmaR3ia+myvYIaAC7gqIyCxrLY1syVqpP50rx+XQMTfJG+nME/g1pN
         rWJ2Fe+yw9pfyLC719uK8n22un7rlMeZtWyG8pRwtRGUFslNWgP+AOaPzDorxRgxmsfH
         Ik0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738223179; x=1738827979;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z0pIOz024yVvRmPpSADqakt2/CZ1i2/TTqHHzBkDPHE=;
        b=uWpHDWgd78cDToUTqIYR9vAuUPOOkuZQRWe9mHCDl7X9KC29lV2un3T+b9pNOkoRy9
         XkvcUviOGKZa+vRddDLx4Lr7UIFKa3JH4z/kGlp4mo+DwxiUbb7o0oist5TmlP5NCdlB
         C2SzJvjmigXkdaA8uF0tRHGYl0cAbNS/STskpmGEW+flMEhZ4D0LBA7tEfvv3v9Us2HE
         8VSVzm3PVVDlZ8ABpAZUGQbZ8Q2eqJAh559ib5xQdQ8iOtFSYbzGJ/z2EKE93MOvdCVE
         qNfQ3YpM9RnhUttYVUQwQMMY9KFTLS8bq3nRPRt7udlJbMaA0cvNsxDLlTMRsMT6c9oB
         t+sg==
X-Forwarded-Encrypted: i=1; AJvYcCU8uGNISvsEVF6GWrXGfKotdufQ8jBFwfw/updDE5m6aTHrxBh9BYdgqiGMwBYRGefScKkkBg6uDI4R@vger.kernel.org
X-Gm-Message-State: AOJu0YwqAEwaRYA9LsVtbArELu1TrSx5bfJhJbvs67q1Pcto2jxUvIbc
	6cllazqBuVS9kOvPMabHmr4r642yNFISmPGOuDfrHTiWbo2WelNqu4ddTcUkVFk=
X-Gm-Gg: ASbGncs8Dsm98WwLNwadJg5QzPsbL+sbD4GoQBs9FWJUZNHYJ/3Gmg3OabNmVV2LA00
	c6U9ndqoTPT/ZMrpNt1GK2YIlMSEmrGwKJxrDPi4na6RhD5R/a+0V1wl3qymSm1eAZSSxL5LDs9
	ildI7Nw9gA4S5CfktVJIwBmK/TjuFNNxvnFd8HKa3350e4DkZRWJ5A+KJzrHxpz7AIMRv8zzx25
	tC9eaopaLcBVUCV0aybg0Nx7NKntne0aQFDeq+lxHYYfUpI6xQRABx9PCRKazyuyMReyhHUZeaX
	Mht5ZSvEmtLu35sJxrG0
X-Google-Smtp-Source: AGHT+IFcKDDU+wzywvRFXRv+mz37DoGrhLm44oa0UcC/mBtiS0TuHbl73j+4RdNdYVb39gPos/Tqyw==
X-Received: by 2002:a17:907:72c1:b0:aa6:ab70:4a78 with SMTP id a640c23a62f3a-ab6cfda4254mr731869866b.37.1738223178524;
        Wed, 29 Jan 2025 23:46:18 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e47a7fc2sm74260466b.37.2025.01.29.23.46.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 23:46:17 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2] ARM: dts: socfpga: Add basic support for Terrasic's de10-nano
Date: Thu, 30 Jan 2025 08:45:53 +0100
Message-ID: <20250130074553.92023-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=4066; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=xlmF6eh30PWWmx8Jnf3W4wGQKgY4ZbGOMbpsInwv5ZU=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnmy4xRbHi1C5/vlWMI5uLfwDmzwS1yXxTbwmPF 2gAGIiwXXqJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ5suMQAKCRCPgPtYfRL+ Tij2B/9btUcTBOblVvu0/UTiMNKtXobsN3Gch2FO1mPwSs8y9N2hmGvmIKhxL7zrz9+npfqAAl4 svQqR8zBa41eNWN9L4PvjusFLHC9iZifaI9283HPHAaR1IWETD1GzMt51HBc0pOOsgcy10j1Psk cQGEchXDDVtuMzfcj/+X/ejPbnYrwEP4afgoo2/4pDCRP/+kCqnx2PUd24Q2SOYHIbS3aF8URIH KVBi6vuw6lEKnlbrJeqiLTQqPjJLuAj5FVn2fvBdmyhS7IOE6cEeUpdGAqb52Q92yaieScWNHAe htxgdxH4XlY3YoJypnCe51/ZaX1dcWuyGfCrlvhR+hHoEB+f
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

This dts is enough to make the board boot to Linux with the rootfs on
a micro SD card.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
Hello,

changes since (implicit) v1 available at
https://lore.kernel.org/linux-arm-kernel/20250128172917.4565-2-u.kleine-koenig@baylibre.com/:

 - Use rgmii-id for ethernet/mdio. (Andrew Lunn)
 - Add a compatible entry for the machine (only had the SoC before),
   fix compatible for accelerometer and various other small
   improvements, most of them pointed out by the dt checker.
   (Krzysztof Kozlowski)

There are still warnings when the dtb is built, but they all originate
from the SoC dtsi.

Something I forgot to say in v1: The accelerometer fails to probe
(readout of the device ID yields an error). This also doesn't work for
me with the downstream kernel and dtb. I didn't debug that. Is that a
reason to drop it?

Best regards
Uwe

 arch/arm/boot/dts/intel/socfpga/Makefile      |  1 +
 .../socfpga/socfpga_cyclone5_de10nano.dts     | 95 +++++++++++++++++++
 2 files changed, 96 insertions(+)
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
index 000000000000..ec25106caacf
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts
@@ -0,0 +1,95 @@
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
+	compatible = "terasic,de10-nano", "altr,socfpga-cyclone5", "altr,socfpga";
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
+		fpga: bus@ff200000 {
+			compatible = "simple-bus";
+			reg = <0xff200000 0x00200000>;
+			ranges = <0x00000000 0xff200000 0x00200000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			/*
+			 * Here the devices will appear if an FPGA image is
+			 * loaded. Their description is expected to be added
+			 * using a device tree overlay that matches the image.
+			 */
+		};
+	};
+};
+
+&gmac1 {
+	/* Uses a KSZ9031RNX phy */
+	phy-mode = "rgmii-id";
+	rxd0-skew-ps = <420>;
+	rxd1-skew-ps = <420>;
+	rxd2-skew-ps = <420>;
+	rxd3-skew-ps = <420>;
+	txen-skew-ps = <0>;
+	rxdv-skew-ps = <420>;
+	status = "okay";
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
+		compatible = "adi,adxl345";
+		reg = <0x53>;
+		/* HPS_GSENSOR_INT is routed to UART0_RX/CAN0_RX/SPIM0_SS1/HPS_GPIO61 */
+		interrupt-parent = <&portc>;
+		interrupts = <3 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "INT1";
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
+	 * no handshaking lines
+	 */
+	clock-frequency = <100000000>;
+};

base-commit: a13f6e0f405ed0d3bcfd37c692c7d7fa3c052154
-- 
2.47.1


