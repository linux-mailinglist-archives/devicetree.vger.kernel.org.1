Return-Path: <devicetree+bounces-169595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C25A97824
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 23:04:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E39A216E92B
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 21:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B832D3222;
	Tue, 22 Apr 2025 21:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k5/z645D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AECC2D29DC
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 21:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745355837; cv=none; b=mx4nUUhw+xQAbTcUl5RgcFHZqwQ237kjaW9ZdwFsAz5yqarg9/URGokB7jXYrIXdXjU5pSbDiwRO0ieqgBihMritbwmKX4r2Vq4UmZ8S7585ca4Mg4nwAf0cmL60Gazsrkx/mau8IVkgGROMzipKS6iB2EGzkRd5R6I0T43TP2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745355837; c=relaxed/simple;
	bh=kmVRw2bppNR5Mbu8fzmD3GsU9LHQkldTj0iJ2CbQh5Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rOZKcyldYyCcOhgWgrGwWdP9Ww1YdQ5hcnc18J3gnLreebXPYRmRgQuksgVN2rwKrWqoHgaq/E3rGjdOkg15SSKF1GZatNzvEe+raHjBKwkq59MFL6GHdU6FLEbN7yxRJ4XI+qm7ci4lW06cjlDuETjW/HNLdrqCpYgklwoxGYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k5/z645D; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4769aef457bso68170581cf.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 14:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745355835; x=1745960635; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g7BrT2+nT+N4tgNO1pioJM6cfeiIHX1JI8prXFl5Eq4=;
        b=k5/z645DnGKU4bTzwqrc4zVaEET+NiK+jUFegvIXaNcytKhdCybSID1woIW2CL5Avg
         e3jrI+FCcYqTiaqUomTe2cX2d2eBAPmb0Homqpr4KV4AxheEyt+TsrWVOzVN8g4QP2gn
         5eUThdIqqXpi6ii3gMe6hCVUKaoa4gSwq1c5T5ho4XpsEkqRQhdOjvFkY5u0/3NZyWUS
         yZchzEcv90Z9rU3KQ29d4ZnvcdBSbEnZ2Rj3c58qy7tCmuw7BcUOXpSGPoR9E6Q2BLlT
         AghdraZphBMUTlDKuQvKb8KrET6LRxsW4H72fsIT72Ku5zFxL+0wj8ZNFXMH2KEYMRSx
         tfrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745355835; x=1745960635;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g7BrT2+nT+N4tgNO1pioJM6cfeiIHX1JI8prXFl5Eq4=;
        b=ktefgaZv+hjkZyBccDG6u9e1BXEC2BIt/TD1L82Dpw9ZcxrNDAK9TwAdAEBLebAi2L
         gvWh2QtJQ0ljGZSEoAAQCJfR0u5FB9yNO/0tYrkt71OopAEJ5QGe84PZ8fMUfwQWMPiz
         QrnbQMlP1T6wm06se1mT3Z2DUhh3ZBiofPx7Um85Q5BP/XQ5Mie1IBXlV8Vh2SdDbtaX
         A6ShcBNs8RPIE214p1zGrjyxts97rhw/IigKkZEoc9e8d+JJlXXV3tZOk10UZ3F11Eax
         ge7zGagFqQ9DWBSNPlj1cwQ9YSsnk6kALactNIRZkE2tG7b5p0anR2aXM4R1plKLnIEc
         xEIw==
X-Forwarded-Encrypted: i=1; AJvYcCUwQYrZTRZ2jn7DcxsaawEPO6VoXZdDH6T3a/EML85l5JjIvTe0jS/U77B+qTtVuLs9IQ/yfW7aRg/Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3Plr77FyaxWbhPSBpgQE0USBpoRMAL+8srARaUW2hG0ME2sdy
	oXAPe61uM4XazQN17nHbR5042RwnxBV6N69ZK7ITI8WhBh11eRV6
X-Gm-Gg: ASbGncs51cdPZlzuwYN95zZa0U4iiP2zc+BZUbJJ/2XPUO4B/mRH/6CcFp7Z+XOu7Hj
	4XJvdwa9rrLvBnBwDyWJTEHZc8Qh3c53no/vFxDcFyUSw2hrn/pzcsZ34RhxdwI0YGnPddPmiF0
	UpbFPuCn9Ij40Ps7morT1/xRPrzVtkRlazFU6wDu+m39PpSIOLiwwO1prlgdYEO0L1arOr9Ecr1
	DbBVIx2MYxtRXhiJsAuhSgstVbIgD2o8LhnszNIvAyubqo0OKo4wwk8huuNJWOONLKdIa0k8PZh
	3BCBgYw4pnGhr3rRCC3mrsgdA024Of1XpZd7QmZ5j3t0HXCV7auP
X-Google-Smtp-Source: AGHT+IGxwGTSRZInSkpN3XIto/A4QPy1xC+3qrFHbb9hVq1/2bj9Uzz0M1o299cR0cZz+hXdDFtIRg==
X-Received: by 2002:a05:622a:1a01:b0:476:aead:802c with SMTP id d75a77b69052e-47aec49fea9mr313701251cf.36.1745355835019;
        Tue, 22 Apr 2025 14:03:55 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-47ae9cf9881sm60031321cf.65.2025.04.22.14.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 14:03:54 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: heiko@sntech.de,
	robh@kernel.org,
	krzk@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sigmaris@gmail.com,
	John Clark <inindev@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: rk3588-nanopc-t6: fix usb-c port functionality
Date: Tue, 22 Apr 2025 17:03:45 -0400
Message-Id: <20250422210345.196050-1-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250419023715.16811-1-inindev@gmail.com>
References: <20250419023715.16811-1-inindev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The USB-C port on the NanoPC-T6 was not providing VBUS (vbus5v0_typec
regulator disabled, gpio-58 out lo) due to misconfiguration. The
original setup with regulator-always-on and regulator-boot-on forced
the port on, masking the issue, but removing these properties revealed
that the fusb302 driver was not enabling the regulator dynamically.

Changes:
- Removed regulator-always-on and regulator-boot-on from vbus5v0_typec
  and vbus5v0_usb to allow driver control.
- Changed power-role from "source" to "dual" in the usb-c-connector to
  support OTG functionality.
- Added pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2> to the FUSB302MPX
  node to specify USB Power Delivery (PD) Revision 2.0, Version 1.2,
  ensuring the driver correctly advertises PD capabilities and
  negotiates power roles (source/sink).
- Added op-sink-microwatt and sink-pdos for proper sink mode
  configuration (1W min, 15W max).
- Added typec-power-opmode = "1.5A" to enable 1.5A fallback for non-PD
  USB-C devices, aligning with the 5V/2A hardware limit.
- Set try-power-role to "source" to prioritize VBUS enablement.
- Adjusted usb_host0_xhci dr_mode from "host" to "otg" and added
  usb-role-switch for dual-role support.

Testing:
- Verified VBUS (5V) delivery to a sink device (USB thumb drive).
- Confirmed USB host mode with lsusb detecting connected devices.
- Validated USB device mode with adb devices when connected to a PC.
- Tested dual-role (OTG) functionality with try-power-role set to
  "source" and "sink"; "source" prioritizes faster VBUS activation.
- Validated functionality with a mobile device, including USB Power
  Delivery, file transfer, USB tethering, MIDI, and image transfer.
- Tested USB-C Ethernet adapter compatibility in host mode.
- Tested USB-C hub compatibility in host mode.

Signed-off-by: John Clark <inindev@gmail.com>

---
Changes in v2:
- Changed typec-power-opmode from "3.0A" to "1.5A" to conservatively
  align with the 5V/2A hardware limit, addressing feedback from Hugh
  Cole-Baker.
---
 .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   | 21 ++++++++++---------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index cecfb788b..3d8b6f0c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -174,8 +174,6 @@ vbus5v0_typec: regulator-vbus5v0-typec {
 		gpio = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&typec5v_pwren>;
-		regulator-always-on;
-		regulator-boot-on;
 		regulator-name = "vbus5v0_typec";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
@@ -188,8 +186,6 @@ vbus5v0_usb: regulator-vbus5v0-usb {
 		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&usb5v_pwren>;
-		regulator-always-on;
-		regulator-boot-on;
 		regulator-name = "vbus5v0_usb";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
@@ -465,24 +461,30 @@ regulator-state-mem {
 };
 
 &i2c6 {
-	clock-frequency = <200000>;
 	status = "okay";
 
-	fusb302: typec-portc@22 {
+	usbc0: usb-typec@22 {
 		compatible = "fcs,fusb302";
 		reg = <0x22>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-0 = <&usbc0_int>;
 		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_int>;
 		vbus-supply = <&vbus5v0_typec>;
+		status = "okay";
 
 		connector {
 			compatible = "usb-c-connector";
 			data-role = "dual";
 			label = "USB-C";
-			power-role = "source";
+			op-sink-microwatt = <1000000>;
+			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
+			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
+			power-role = "dual";
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 			source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
+			try-power-role = "source";
+			typec-power-opmode = "1.5A";
 
 			ports {
 				#address-cells = <1>;
@@ -1135,9 +1137,8 @@ &usb_host0_ohci {
 };
 
 &usb_host0_xhci {
-	dr_mode = "host";
-	status = "okay";
 	usb-role-switch;
+	status = "okay";
 
 	port {
 		usb_host0_xhci_drd_sw: endpoint {
-- 
2.39.5


