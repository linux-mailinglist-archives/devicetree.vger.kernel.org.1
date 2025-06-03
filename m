Return-Path: <devicetree+bounces-182566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA17CACCDB7
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 21:42:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F3073A55C0
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 19:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CF4A21D3EC;
	Tue,  3 Jun 2025 19:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hl7lpb0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3301187346
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 19:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748979724; cv=none; b=AiAJrwmYPLaSkPusdX40V/R2A7WL2/A9UdH9n73VkyW2Mn77egCAEognvfgYzeL0L8ojWojI+NKm1JALFN/Qy0hNMO+L+220Vy1T6S6BoTJXcr2Dnsa08AriN3Du+7QAkgYcTSTfZU921/HC1tFTULk1Nub53uSzwvJXcBGJMa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748979724; c=relaxed/simple;
	bh=0BwMJcKAnwGlreccT+J74TqS179drWW3Xwaerz0BQaU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LzG1VcKKRZ7RSg3v8+bik5NQBWNqS5PkWI46N4cf1iry4GQRAffZcUtA5oRgkkq1copl6dHkOVw4p+fP3kJ17wd7aRDEEgwA0mlxzKpIK8+XfuvPDTjUH1iNx806sXLncm88Cu6z1xUZQkJpBmdyhxkXIJl/cCMujWVIypGH9Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hl7lpb0u; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-606477d77easo134753eaf.1
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 12:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748979722; x=1749584522; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FgLtrMgHhQ/oGFMvm8sSOBZ5dDdVEtN1pzHrZf4N+fU=;
        b=Hl7lpb0uuPhcLBKRhgDW9MLZ/Melq3SQboJ7r0VupCR5BqUZeX2REzs2TRQYe2sYzP
         X1Tt2fo2gaNWXcOL80FtJZBStPksEX4WphBkbDCSxRybecBAlv4a103Df1BcRPWWC2vb
         TKV/PsEDtmSH+ypIgdNlbWhrFXQeOT016jcOLQPNltBzImyqtK86Of2QcNnDBxB8fwip
         RN2HB8QhRSLpVOAJG1dtJ/oPcw8geDMlRqiTAhKL7P1zwfEf8veQmtSXlSmCWmErwo/a
         tf8yzri9raN5ouSexFA5yVOyzofgK7LdyXsSwGiUSz6u1fRfdZVKQErd+8GKtyHz9ppB
         +1dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748979722; x=1749584522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FgLtrMgHhQ/oGFMvm8sSOBZ5dDdVEtN1pzHrZf4N+fU=;
        b=OnGMCGTkTkEeprnEdAZFalJ+BD3bw/kDnJSAiveZRbWoBxOpCCxzgVqblRgNmhgmNL
         8j/mU2ViMTM338I2XGqy75d2tRQC/WUa0cJMRn+UIJQnOr7ac5I//dVgV1qViCA1ek4T
         gOiyOGpO5k9dWoRvD/u42FlcsboXxZT2XLC9Z7ux8cBcWW/lALVOt4fpNU5fsrAw6x4g
         tVvXjCMgkvdu9mCL3tN61mDD/veECI08uFb98WYX2IiSrPrUPnu5TnlPkSBKMFerqny6
         /LbJi4vcRTZrrrFUXwca2ceHkipQWLLiKQ8lXdiGuLWxEVn1Ji+29DkZzD43zTBaLBJz
         LbYg==
X-Forwarded-Encrypted: i=1; AJvYcCWAldDf3NPWPAd9Av3Z/6HnySIukhg4YZ1PiwE22KDJfXQwdgBVjbAHPfy33YhVj5dZdHaX59AlDyN2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2yDhJnKdgwjHlz26KQDdaUjyjciAIT1dZzSpgH+dOzvWckBLE
	W482iVgvO5C9bO1qiusUIp7OBVV/zxoZ5+x8UWQsT1vQpmpG06piJ56/
X-Gm-Gg: ASbGnctTxNzsJB1P0ehM8L1NBnsBDQj+g+naKSHnVmWNZOUPjHwZXlYPZ8y/R0GRU7M
	xQruDBB+PprokcXUrAsHElOy7/uHAitP5j43FbJhaleUuiKXhCJ6+XRC/YgYtYwW6jYvRPAvmaJ
	zUdZmHlNuEThtVHfcoSB2Dm0PpJZ7p2AcXMGvnSqVf2zUJ8kEb0UcMXHrlpManZXISdn39TVdF7
	rKeY2x679/kNqZvYq54Qf+KA4e5pL9mnSW9R86iajGcwCjKFvmdbLKGOwWHmkghUsZtTonn8wey
	wVeyumKoEWOOz3bPnFHlMJxBiMHCPyPiZXpDjbz514I7vn2jd4vn+aPb615rn7GF9j96sss=
X-Google-Smtp-Source: AGHT+IE9tiwKq/R/e3U5EawJb79KooQ4IxNgVCBv1cslv8xmu0yJpXxxMeDxU3qVBvLMhI+JZsrssA==
X-Received: by 2002:a4a:dc48:0:b0:608:3493:b807 with SMTP id 006d021491bc7-60efdd1f98dmr1851832eaf.2.1748979722009;
        Tue, 03 Jun 2025 12:42:02 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:d19a:d10c:4358:1346])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c88f96sm1967615eaf.17.2025.06.03.12.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:42:01 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Add DSI panel support for gameforce-ace
Date: Tue,  3 Jun 2025 14:39:30 -0500
Message-ID: <20250603193930.323607-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Enable the DSI controller, DSI DCPHY, and Huiling hl055fhav028c
1080x1920 panel for the Gameforce Ace.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index 873a2bd6a6de..bb7c1b732cc2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -7,6 +7,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
@@ -456,6 +457,42 @@ &cpu_b3 {
 	cpu-supply = <&vdd_cpu_big1_s0>;
 };
 
+&dsi0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	panel@0 {
+		compatible = "huiling,hl055fhav028c", "himax,hx8399c";
+		reg = <0>;
+		backlight = <&backlight>;
+		iovcc-supply = <&vcc3v3_lcd0_n>;
+		pinctrl-0 = <&lcd_rst>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_LOW>;
+		rotation = <90>;
+		vcc-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_panel_in: endpoint {
+				remote-endpoint = <&dsi0_out_panel>;
+			};
+		};
+	};
+};
+
+&dsi0_in {
+	dsi0_in_vp3: endpoint {
+		remote-endpoint = <&vp3_out_dsi0>;
+	};
+};
+
+&dsi0_out {
+	dsi0_out_panel: endpoint {
+		remote-endpoint = <&mipi_panel_in>;
+	};
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu_s0>;
 	status = "okay";
@@ -633,6 +670,10 @@ &i2s0_sdi0
 	status = "okay";
 };
 
+&mipidcphy0 {
+	status = "okay";
+};
+
 &package_thermal {
 	polling-delay = <1000>;
 
@@ -769,6 +810,13 @@ lcd_bl_en: lcd-bl-en {
 		};
 	};
 
+	lcd_rst {
+		lcd_rst: lcd-rst {
+			rockchip,pins =
+				<1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie-pins {
 		pcie_rst: pcie-rst {
 			rockchip,pins =
@@ -1239,3 +1287,21 @@ bluetooth {
 		shutdown-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_HIGH>;
 	};
 };
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	vp3_out_dsi0: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI0>;
+		remote-endpoint = <&dsi0_in_vp3>;
+	};
+};
-- 
2.43.0


