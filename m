Return-Path: <devicetree+bounces-170964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0547FA9CCB7
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:20:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 184981739B5
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 15:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A12128BA95;
	Fri, 25 Apr 2025 15:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="sQWUlTDm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0272820D3
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 15:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745594332; cv=none; b=opYQqbzvMLdoACSKlK3ee+xLLGKtgMwdhVs/0agCBg2DuiLss5DbZQrSzU20rsVj0gQe5dnR7NMQUuboRMj4aVoAcHHyKdAeSmbg10rsOZoe8o/zgxWErjWG6xds3Uez2UEZrVY8kvBqGB9RdJwnNLaipONfvF88BgCPOJrH61U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745594332; c=relaxed/simple;
	bh=OraUiKfm1Dyuf5j7XdekXggByDjVCkBh3H2EGp18ffI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h/0DZ2gbyEyOQatg01GxwmEle6Pi9vX+7VE/XGw+W23ow9WsrO7wpwgJwvEcgZa902locYAdiPmLWk4hrxtlSynLzxGy2h21t3Ip/D+sn9KbeHUVMzwi19K2KXRRjfdN8V3Bp/6iJHB5Ws6ndUIR45N2O/kyiFPdgTEFr88GtkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=sQWUlTDm; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e5c7d6b96fso4549388a12.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1745594328; x=1746199128; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3NqGpeCgEQAUcPs6hxmWuzzpxKmr/yNO0w1y1ZqO3+o=;
        b=sQWUlTDmlF9kKrpIOx2QFPry03qIbhgA1GzI4Mq8Vt8juEe8Pryqngtr0hc5SMEpiA
         QqEKmwgYjNmLWatq8Hquxw+tJ3OSrMJV8PSD2e6TlkVtXvquv4u+k3J2kT+tqsi5Pb9/
         YlCJvNjxSYvZJABQYl7GYAtKQJzGOM3iQmKi+c9Gdp/JzjD0+1O+cXOfKOMWZiP529jC
         g/DDqh9CXMtWOxmYtdWNG99k+WjO3TdcgvfNztchA4xluN4rS1ITI55IIJPfInglxcma
         DZo7f9zRMohQClSlYRjpfUkqHUnnQRvOLy8F64lUsPSNRgH7JsrDlA2sVaT+KQ5qbm2S
         TN1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594328; x=1746199128;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3NqGpeCgEQAUcPs6hxmWuzzpxKmr/yNO0w1y1ZqO3+o=;
        b=CW+k7tR9C8OXRt8P28aQFxj7qDHUrcQqNy6qU2BcO/TJk7+HtkdU5OBaNP/e4cKO7P
         YeNopK4s7smq3ZDcJP0ZmI9oyLS4v1l9JCvPxk2sM8cvo9KBztR9+eTyXKZCk4R4ICT7
         7hNadK5rz65+rXpVUAVktvBKFcc4XXerXT5drfFKvP0uv9/Q6Tio/GIE1BWMyAbAvMAd
         6L4VInXXlLLfJ+pETu1CJTTcicNrPLlgaAnx9/G+weG/SBMFmgxyUEhfdwhRhlepXyJ7
         K1q5YILvaVjB1MCNAfg5SaLJIMgNxc2cydLsBgzkl7q4VLx86/zcF/5VYzngKkkENRS7
         ffEg==
X-Forwarded-Encrypted: i=1; AJvYcCW86ulfugDlhJynrmPZjtjuCIYi938QAq4dEUm+m8aXo05+AQdndAaS0Odp9T/Q2+cUUu1iS/3ejEUx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8aY2JFbKSvQfCPH/5elRk0IpO9Z3xC3RY2/7/0T80rXWLG18R
	4n1xi8W6J+m2iYtLL3IBC+cjs0cqi/WKLPmuFXO2SH5zudQrPHuW2fNJX7vwKTo=
X-Gm-Gg: ASbGncuicWYjZ1ZBVEGH2RaCjWb/fTIv6ZnGcYhGfhSmxZnZXnMLwuXmFV4i/VHdAjt
	ysC5ByBaQGYaxDYtAESe/J8HojtSSQsYUlG4gXyLGiJPEptE12Ym38FMPMC21SDbYz+MCyLyGkh
	cu7+dFWflm0awtvuJIUF8+6bO6SLOhnJLTZ/6wq7OOzdZf0Zssg0bjnUUo4vVAabuMDxOjHIxXb
	lcrW9nEyXUrh1vJxsYhbcAJz6v0PWgG9vqjkBSOs8gtUGJb2TR9cLgzbrO40w2+nZw1rIkuwHmN
	JE7aOK5Dbs0vCQdxIDZW2tq9LJb00g2uXE2OOcHjLdAgBRszT4Ru6YafoA==
X-Google-Smtp-Source: AGHT+IEUamcP+7odYOOdpoBpwq4Ga4sU/sBxRb/GHkSRX9M2Uw0bvZNoH1NBuPxH9S4vCQHnw3MNhg==
X-Received: by 2002:a17:907:72cf:b0:ac7:150e:8013 with SMTP id a640c23a62f3a-ace710a20a1mr291795166b.15.1745594328214;
        Fri, 25 Apr 2025 08:18:48 -0700 (PDT)
Received: from [127.0.1.1] ([185.164.142.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e59649fsm151099766b.85.2025.04.25.08.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:18:48 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Fri, 25 Apr 2025 17:18:08 +0200
Subject: [PATCH v2 3/5] arm64: dts: rockchip: fix internal USB hub
 instability on RK3399 Puma
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250425-onboard_usb_dev-v2-3-4a76a474a010@thaumatec.com>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
In-Reply-To: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.2

Currently, the onboard Cypress CYUSB3304 USB hub is not defined in
the device tree, and hub reset pin is provided as vcc5v0_host
regulator to usb phy. This causes instability issues, as a result
of improper reset duration.

The fixed regulator device requests the GPIO during probe in its
inactive state (except if regulator-boot-on property is set, in
which case it is requested in the active state). Considering gpio
is GPIO_ACTIVE_LOW for Puma, it means it’s driving it high. Then
the regulator gets enabled (because regulator-always-on property),
which drives it to its active state, meaning driving it low.

The Cypress CYUSB3304 USB hub actually requires the reset to be
asserted for at least 5 ms, which we cannot guarantee right now
since there's no delay in the current config, meaning the hub may
sometimes work or not. We could add delay as offered by
fixed-regulator but let's rather fix this by using the proper way
to model onboard USB hubs.

Define hub_2_0 and hub_3_0 nodes, as the onboard Cypress hub
consist of two 'logical' hubs, for USB2.0 and USB3.0.
Use the 'reset-gpios' property of hub to assign reset pin instead
of using regulator. Rename the vcc5v0_host regulator to
cy3304_reset to be more meaningful. Pin is configured to
output-high by default, which sets the hub in reset state
during pin controller initialization. This allows to avoid double
enumeration of devices in case the bootloader has setup the USB
hub before the kernel.
The vdd-supply and vdd2-supply properties in hub nodes are
added to provide correct dt-bindings, although power supplies are
always enabled based on HW design.

Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
Cc: stable@vger.kernel.org # 6.6
Cc: stable@vger.kernel.org # Backport of the patch in this series fixing product ID in onboard_dev_id_table in drivers/usb/misc/onboard_usb_dev.c driver
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 40 +++++++++++++++++----------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 995b30a7aae01a0326e9f80d6be930f227968539..dd5a9bca26d1d221607e73071685d5774330d760 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -60,16 +60,6 @@ vcc3v3_sys: regulator-vcc3v3-sys {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc5v0_host: regulator-vcc5v0-host {
-		compatible = "regulator-fixed";
-		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_host_en>;
-		regulator-name = "vcc5v0_host";
-		regulator-always-on;
-		vin-supply = <&vcc5v0_sys>;
-	};
-
 	vcc5v0_sys: regulator-vcc5v0-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -521,10 +511,10 @@ pmic_int_l: pmic-int-l {
 		};
 	};
 
-	usb2 {
-		vcc5v0_host_en: vcc5v0-host-en {
+	usb {
+		cy3304_reset: cy3304-reset {
 			rockchip,pins =
-			  <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+			  <4 RK_PA3 RK_FUNC_GPIO &pcfg_output_high>;
 		};
 	};
 
@@ -591,7 +581,6 @@ u2phy1_otg: otg-port {
 	};
 
 	u2phy1_host: host-port {
-		phy-supply = <&vcc5v0_host>;
 		status = "okay";
 	};
 };
@@ -603,6 +592,29 @@ &usbdrd3_1 {
 &usbdrd_dwc3_1 {
 	status = "okay";
 	dr_mode = "host";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cy3304_reset>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	hub_2_0: hub@1 {
+		compatible = "usb4b4,6502", "usb4b4,6506";
+		reg = <1>;
+		peer-hub = <&hub_3_0>;
+		reset-gpios = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
+		vdd-supply = <&vcc1v2_phy>;
+		vdd2-supply = <&vcc3v3_sys>;
+
+	};
+
+	hub_3_0: hub@2 {
+		compatible = "usb4b4,6500", "usb4b4,6504";
+		reg = <2>;
+		peer-hub = <&hub_2_0>;
+		reset-gpios = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
+		vdd-supply = <&vcc1v2_phy>;
+		vdd2-supply = <&vcc3v3_sys>;
+	};
 };
 
 &usb_host1_ehci {

-- 
2.43.0


