Return-Path: <devicetree+bounces-105160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCD898542B
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 09:30:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02250B20A5D
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 07:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD0F114B950;
	Wed, 25 Sep 2024 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="2Cb3SF/R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D7791B85D5
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 07:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727249434; cv=none; b=Osldf9K+CaoUzA2q92bq5zYezE5f/iExgSwIZBDMaySAsANTYn7BHjFawKeh4LbfofD8nZmFHevKVjQfWn6ireW0pU118z4D7oHUFw/qbpGbb12aFYTn8qPhbqweQquzstF3N6svmle3KalIzXbsXWR15iUcSg08e3aK3aMY3N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727249434; c=relaxed/simple;
	bh=9yNHdw3Ut0tD5rlxs7ZFyrggJpJ2Zmh6CMfFjqxf6vo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JusrndmEacV/RT6AMu3N0Tzc8+noucLn+Sj9v7mLJxVloRH6VkGHnRRdiAZ2r0R3AUsQB+ylAb/indT/L869PJvfc1oSVPg8Y7U9MKiuK8fFus29KOhm2h2QA2IXpf0Ah3rHPR7JvRDMzhdXCmPFDQbrNbOuDw4aB67LxP8qi4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=2Cb3SF/R; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53654e2ed93so7568930e87.0
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 00:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1727249430; x=1727854230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vY26RNbOL3F9f/8+p4WI4feXCTMewUkKUz2YQ62h6ug=;
        b=2Cb3SF/RoM+oHe4vvQy8o8uFiBNpyfZbCefSoXse+x57FHVMj4PcsTUnODSUCBozC1
         Tq1yNtUYu55WkN5zp78c2FC/tbT1gFe8egCgr7ubEh0hxQEPMlNb/Elhxf1LXCNfPzb5
         dhODCYjtF8UNthgw7Sg/uxdQz7OxjwetIYDSWpEyIfSIaQPaCYHwkX+d9+j/MsmH8qmQ
         p1tefsV8ECEaqygyEsy2XK+pK5Xu3fBqDB7vtLugMf9nSwhmw59vJk6vQioCz+J6hzul
         /zUxav8g0vFbqZ0agiIMLOTUVAis6Pvb/C+wjdGCmgtkdiDYCYJtPhhWDpRRz16FTIXb
         GbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727249430; x=1727854230;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vY26RNbOL3F9f/8+p4WI4feXCTMewUkKUz2YQ62h6ug=;
        b=vFbPWvnrTgjyE1bY9/IqLUIKhVttuL1F7wC3goyCu++9Sc0chS1m7QoI+hbC4SNVd9
         n92bRivSLrdUy/Knz89aGnpdMXtLGJgWiiRor+XEHhrQES5G1XXJWfkYsvsqLn27WaYf
         5DMgKul0QfjICR7e2dxqnRA+x10UyuRQjd8ljiT4cZqT9yjO0JIg7yEvmc0NzMr86883
         FVFUPst5ckvqjYwMOhGTLY9jUZ8U5Dc+e91pRSPfIrXeHJjWGed0OXB1gWhyPapfXDYh
         gxy+XEMHsfVXo37Mp8i14zCdJYgA7XicTMp42YzLvKIOlM8BFHGfilKyHBbJvULioEeY
         RPDg==
X-Forwarded-Encrypted: i=1; AJvYcCVPNyNcjGce+BBDUodYMV+H3FnW0XBOUx5WLh+wo3ERTE0dpdgYBbQgmHrWk4IkoJ2I3NxNjL+AQNtW@vger.kernel.org
X-Gm-Message-State: AOJu0YzpTxz7o+eF03VeLbBcUR59nKH+Dz3qC3v4jjk4K/au0OxKldks
	wej21z63Vgeuu2FdIcc37udKGQhKK5586NGBVVbMEuWLVFC4V3UYoit0MyFuVz8=
X-Google-Smtp-Source: AGHT+IHU5dm7r3LAh2i3BDE497vobimRWDIK6ta2lMT2081YWOISe9Wte37bCoUqfx8JxDi26jupXw==
X-Received: by 2002:a05:6512:3f07:b0:535:6ba7:7725 with SMTP id 2adb3069b0e04-5387048a6d7mr1031326e87.3.1727249430423;
        Wed, 25 Sep 2024 00:30:30 -0700 (PDT)
Received: from localhost.localdomain ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9392f5466asm178204866b.76.2024.09.25.00.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 00:30:30 -0700 (PDT)
From: Daniel Semkowicz <dse@thaumatec.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Semkowicz <dse@thaumatec.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
	Iskander Amara <iskander.amara@theobroma-systems.com>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Add power button for RK3399 Puma
Date: Wed, 25 Sep 2024 09:28:52 +0200
Message-ID: <20240925072945.18757-1-dse@thaumatec.com>
X-Mailer: git-send-email 2.46.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is a PWRBTN# input pin exposed on a Q7 connector. The pin
is routed to a GPIO0_A1 through a diode. Q7 specification describes
the PWRBTN# pin as a Power Button signal.
Configure the pin as KEY_POWER, so it can function as power button and
trigger device shutdown.
Add the pin definition to RK3399 Puma dts, so it can be reused
by derived platforms, but keep it disabled by default.

Enable the power button input on Haikou development board.

Signed-off-by: Daniel Semkowicz <dse@thaumatec.com>
---

 .../boot/dts/rockchip/rk3399-puma-haikou.dts  |  4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 22 +++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index f6f15946579e..0999026b16d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -143,6 +143,10 @@ vddd_codec: vddd-codec {
 	};
 };
 
+&gpio_key_power {
+	status = "okay";
+};
+
 &hdmi {
 	ddc-i2c-bus = <&i2c3>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 650b1ba9c192..389ffe604e74 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2017 Theobroma Systems Design und Consulting GmbH
  */
 
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/pwm/pwm.h>
 #include "rk3399.dtsi"
 
@@ -39,6 +40,19 @@ clkin_gmac: external-gmac-clock {
 		#clock-cells = <0>;
 	};
 
+	gpio_key_power: gpio-key-power {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&pwrbtn_pin>;
+		pinctrl-names = "default";
+		status = "disabled";
+
+		button-pwrbtn-n {
+			gpios = <&gpio0 RK_PA1 GPIO_ACTIVE_LOW>;
+			label = "PWRBTN#";
+			linux,code = <KEY_POWER>;
+		};
+	};
+
 	vcc1v2_phy: vcc1v2-phy {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc1v2_phy";
@@ -475,6 +489,14 @@ &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&q7_thermal_pin &bios_disable_override_hog_pin>;
 
+	buttons {
+		pwrbtn_pin: pwrbtn-pin {
+			rockchip,pins =
+				/* PWRBTN# */
+				<0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	gpios {
 		bios_disable_override_hog_pin: bios-disable-override-hog-pin {
 			rockchip,pins =
-- 
2.46.1



