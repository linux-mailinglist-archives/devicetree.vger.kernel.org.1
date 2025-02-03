Return-Path: <devicetree+bounces-142664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79028A2607E
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 17:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CDDFF7A18A6
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 16:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5676B20B21C;
	Mon,  3 Feb 2025 16:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="U7LX3e87"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2F61804A
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 16:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738601217; cv=none; b=fvdX7U07EwhpcELyxNiCzm2Xo/qHenzAnxy+y67lwg7XOPuv1VcsKOAMFr/eeiRp8zApoAXSuBimoH+7U1FXLSxmAyfCIV2SU0Z5X0EqBGHDhaOgiPwMAqFNoJ0wvd8jRSVOHe5ep5keV58Vz2ouGgfxKcKVdwA64Ohbz2ICLkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738601217; c=relaxed/simple;
	bh=D3N91S8p2QzyAU5S/aUxL5/FSxwbyrZC806jeovc1gw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=q4KGaORVCAGVd9s5nFj5KLMxoyzL0Zmcckl+rhyvy2tFY8r0DN6sXgzwK3d1Q+nFaHGZferjrZAa5Bkmks3rNseMFex4+fy0gx2xeCZvNqWts6vSjoLJptDRoJAW7WG7snOBtO9wxgsNQ0cZAwDrgT+DwbbwOyIGRyUwajaXcMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=U7LX3e87; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5d0ac27b412so5828067a12.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 08:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738601213; x=1739206013; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L9+03P7z0avApzRxSE8OHdOBfBkTQmNQT3BrMB4Jc2o=;
        b=U7LX3e87+d5/br+WSlFXS4N/LN2JGg7Y6mkX1Hp8luW6IjTlzHkb4WxzIQxfBKwksz
         JLxBK41PDJp7X7YygvHfsSU4L7vsd/1z65ZNv19+IngfFEf0vD489WfMfN5/0AtXjgXa
         GS0q/5KVk0xCmVQkZih6WHMUq1TS5LijUU06aDY5bmVTuUUCU/2WmkJTa+S9EmLrgAgE
         CsBNTo2d8UtQD05lYVCjLFOlEuHmDGkOohqC9IIVV2brze7mfpKukcgbPxZKk8PvnD5H
         I733kZ1PNZ43XR4g0M2Oz48G5UMsh1U+ZlowZ4ndm8rdso3aHs/5PD717xVyYaTA76uQ
         ufYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738601213; x=1739206013;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L9+03P7z0avApzRxSE8OHdOBfBkTQmNQT3BrMB4Jc2o=;
        b=S2gfOXQtfmmMYyHpsF25CJlfWhtVek0SK7J2CZ/VECDoCP3OwG1uuZqF1QjMRNbSGF
         KYH3ZrW24pZINBIrYfdtOaF2030yoK/SW+9jA/eE9Y+Thyof0ePe6XDICh4R4h0p9A7h
         bJz7XmN8ZInRWYG+xAVq6suP92OvpbyMS9R3PWnOcRLV9V/+7mA6yy/8OTPyYXeZurll
         hodHMhyyH7wXOvi6DFI5+LIMSYGJeKUQvTX6nvtWhGwuduMW6ozb+3wTO0Zb1iko3ByY
         v5+/6AtBwYxayD+kG5F5lLXGVW5veRCZqv5CWAdSQxFZxVsOxgwHZz9BoHYsmbiVz49f
         FShQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeeeOmi5KwXVAOydyaolQ8Z7yH7jTdBuJ3qpO6AC2Z8Wo4tBGJlu4HxcEBITmU+cpDTcrlmf0xOHmk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5RhlEsXh5FQ7VetW8C5jRV6bQxh/JRnV+tc3g9YJLsNDhKL13
	lp9ofzE8T6yPO2GIaU6MmfLQUqvv+DtzOBGNlNmktRrl4NtZsnCzb7/j11qiBfk=
X-Gm-Gg: ASbGncsWutNKAZxrzNWJ9a7t5c9KagFt4Sjf8IY/RXquxnYK594ZdFxLWXPBuDbYrfV
	IgujELOOveNGFlnIYSHNTZMWAhEa2Y7sUNJH7K74AOLoOXpYZ2YKXFWYjy9T30k2qHy53jJOPjS
	EMNVqXgGew9JpNE5meHXyBMWl19EW9IikP8vBVgnfgjqaZSKBWWrMl3f2S12p4rWV43wn/2ldi4
	ZtG27Xi5z991MtBRt/Tzf8O3XRJGLOCAmnHH6Jqk3TfPaKbMFSOEmp3G5GAInCMs2pv6phi7PlZ
	dwT50gzos2gCFDLh9aNv5Acb0eTC7s3gulmY1qkCD1I2Ig7e8zgcOSUogA==
X-Google-Smtp-Source: AGHT+IGXKowKtyUUoNQsQZKSiRVgsHYNzwy9PBuoWWS5QtZ8kgCfCHy+5XfpxGpFAIktnIAemtNbNw==
X-Received: by 2002:a17:907:2cc2:b0:ab3:a18f:fe7f with SMTP id a640c23a62f3a-ab6cfd08354mr2163573766b.28.1738601213587;
        Mon, 03 Feb 2025 08:46:53 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e47a7ea7sm774071366b.5.2025.02.03.08.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 08:46:53 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/2] ARM: dts: socfpga: Add basic support for Terrasic's de10-nano
Date: Mon,  3 Feb 2025 17:46:37 +0100
Message-ID:  <0cb54b0340ef021e309e49ca0de97809a8c8ee9c.1738600838.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1738600838.git.u.kleine-koenig@baylibre.com>
References: <cover.1738600838.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3242; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=D3N91S8p2QzyAU5S/aUxL5/FSxwbyrZC806jeovc1gw=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnoPLxz8wxH/bB1dnBJcAlNRD4y13WuAOi/ZckD sHSH3mm+A+JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ6Dy8QAKCRCPgPtYfRL+ TkA3CACY8JVC3PdpFlmR11opae8Askv6ZtTAXBjNhhKTuPDAO6bWufxfaZvR1WlJh8cB7Codn9y ikRdM0+PIbmxoNvSkCyX9RaehsTU0gjvMigd/FeyF5nv5rgGtpZNmlvOiVDRWKy2P7tHohiqrfd xEpTLnZi9NgEWcY3xcSAmZeNg8xjN4xzEY0I8PfkDOGbhuRbmEFB0h6EH8wUsZwDDXCYCMYWyCQ +dRjnbvRIM8T4t89tF7aqqd1pxYV0Q5E8soi9qhN8iiGhadxuu18onY0mVRJSzHbi/bB1HIaQeY WTc/U1m0F7pY6R7LJSck2N8IrWSP9Z4ktvWWlathNhlXH5rx
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

This dts is enough to make the board boot to Linux with the rootfs on
a micro SD card.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
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
-- 
2.47.1


