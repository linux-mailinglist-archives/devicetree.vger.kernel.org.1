Return-Path: <devicetree+bounces-234817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E40C3114D
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:54:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D64A3421130
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37664189BB0;
	Tue,  4 Nov 2025 12:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f4g2iz3R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78351F131A
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762260738; cv=none; b=EswgN5xv4zKkJoNhahpbrGxA+yb1YW3v7FMxgM3E7oBkrnlPCHvJTJWoNZcQXbgYjopaT9k1pKSwEF44xqWFuoHZCDiplQPkfwZ7XYYqgV1hzZ0AQUrR5YWQpO+FGQZh/BkD1i/FeLcS6abpMVvuen2l9QeTSabODbmi5IwRgFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762260738; c=relaxed/simple;
	bh=GxgC0TolWtnzi7SvFdkB4vNBCzd2oYzDY3pnyXAe9bQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=PJQDzks6uThpsO/zFNb6KA3320DBr1OSNDrRFWXqdMKQk4zISro13dAzagO4Jeur5CBAcUrGaFVtf3oOBuphQGK3WwIcOOuRn8j05Tzm485cST3KTSkOmdpFa42kEWxPw6kez42MZ4426ZKr06eQ9f6L2V2qWlPymTSDZAvlX10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f4g2iz3R; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b9a5b5b47bfso1596018a12.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762260736; x=1762865536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q70u+s1V/4l35FFXxxmayKruUxA7+UqrHWq0UpA0ngQ=;
        b=f4g2iz3RO1n9h+5cgUcBoSmI5YEiCALAUMMXwcBTPrViL7TttVyK14PefvA8cs8guz
         gV8DX6WSIdm6ipKytdpxtz0e7XP/HlXwgFIXeTiYhxzWcVd4HL909ZKI2zxDIVrdChmK
         VSZzGoK1CKadfZrm25/33FHKjEZxb/ioiWAfXB/INUtNgvj/7z1GHHPxZwcgkI5oFQpx
         J0CfWWNJhpy2ezYrODfgJd5A+blwlkktF3eKL3HWBEG59IPUWzCHlz/Zv60c2iEX0g37
         WDjD5KAqZ3tAJwcOPEXj5u2RlC76Ri/4/5+sk7jUPq6ws+08D+2oyOxkV8hk1DoHtvZ5
         B9UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762260736; x=1762865536;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q70u+s1V/4l35FFXxxmayKruUxA7+UqrHWq0UpA0ngQ=;
        b=vrhd/8MWJfR+Eg0D/wmZ8tH5H83oIn0PCfSP4pCULc1m9Q2sAAW8Cj9uaL+CqifSu6
         Db7kbLzBoofA0v+KxBTYET86b95FagUPexryKapJUS17Tyk5c8j2XXXaWQhYOIseTkrB
         PVT5F0IplFIW0bez5gyMMmqXr4/jc40dvbx347w3jytLwEknHHyYUYKLp4I47S27h10C
         jl5NcpOI3XWzfuYSGapwBOpH2fglSZH5uT9In8I2NkJRxpcQH/0JSzaL4BzZA/n8YUUn
         MMlj5PP1WvDgMHsBkpr45KZH2SvPmZDNYnRVuilskzGPfAVQZJ4Atk9rIdWIAkWYm1w9
         7J1g==
X-Forwarded-Encrypted: i=1; AJvYcCUXaeKdXlgNFlbSQPkovqGWi7b1mOD6c95OfbPqu++8lhyGLbfNWq1U6axrowF9lv12n0C0i8dmSLEV@vger.kernel.org
X-Gm-Message-State: AOJu0YymD0bSwkxKEgTxYvzQyZABc3KTTqXNuaY3TpYYwYcKv+Zv8cEc
	A6FsuPqz9lHVXWhOgP9muUPOpZZ1XHanRQDUM8p/9p5f8E+gr4DvsEHX
X-Gm-Gg: ASbGncujzR3QI1xru8ITA46WUXIjQ5VJJbmGu/eTI8S+NUD3oqhFyqLUFJiuWlX5vJb
	brveUI2+R9dQ8MVIbKt+7qyRRRJu+LBGjBYIrsEEFh2hYjkeAP15L/L2l/MuXVS6AJczQUibPgP
	N06YFCaMgqbjkrcwX8Z6oXpXZfaCxSmrXMrdaZVJgCS3Qymonvx3qMZijczW8Ivu0wxQY+HBJzZ
	WIXP8Qa3j/b746SYcPUjHVikL76AdDEsuzXka5YF8Fj8M+K4jS8FYc+7zPc9v1jsyq6wQZhTPOf
	dSjZGjg+uZBnIS1EMKWRO3IewC5fy0O15eWpUOBRYbEH2hrNaAwsFg0zdtL5afoBh5nHbeEwP0N
	WIJNfVcOGLAKfeSLwdEcgWX4JOXvxgd4Zv2I69o465CUUsSZpQtY0/9wQm/WiS3MXV8oYPIMxTj
	rKdJajt6sBNrz+kasEo9GgtGRrww==
X-Google-Smtp-Source: AGHT+IFVFLda8Bb+Khe8BewvQJ3eDill+4KKAYhhfWLntuu8ommlDpF8ZcZXn8A+V/wqz2WhWv2q/Q==
X-Received: by 2002:a05:6a20:7d9f:b0:342:fb2d:e7ff with SMTP id adf61e73a8af0-348cd41de50mr18742995637.53.1762260735928;
        Tue, 04 Nov 2025 04:52:15 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7acd586f862sm2876463b3a.34.2025.11.04.04.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 04:52:15 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v2] arm64: dts: qcom: talos-evk: Add support for dual-channel LVDS panel
Date: Tue,  4 Nov 2025 18:22:08 +0530
Message-Id: <20251104125208.1009695-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The QCS615-based Talos EVK platform supports a dual-channel
LVDS display configuration using the TI SN65DSI84 DSI-to-LVDS bridge.
This setup enables dual-link LVDS operation where channel A
carries odd pixels and channel B carries even pixels.

A dedicated device tree variant is introduced to describe this
specific hardware configuration. It extends the base Talos EVK
device tree with the additional bridge node and display
pipeline settings required for dual-channel LVDS operation.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
Changes in v2:
- Renamed node 'lcd0_pwm_en' to 'lcd0-pwm-en' as per review feedback
- Restructured Talos DT hierarchy to avoid including a .dts file
  directly
- Updated 'talos-evk-lvds.dts' to include 'talos-evk-som.dtsi' and
 'talos-evk-cb.dtsi'

 arch/arm64/boot/dts/qcom/Makefile           |   1 +
 arch/arm64/boot/dts/qcom/talos-evk-lvds.dts | 122 ++++++++++++++++++++
 2 files changed, 123 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index d5a3dd98137d..6e7b04e67287 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -307,6 +307,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-mtp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-qrd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-dsi.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-lvds.dtb
 x1e001de-devkit-el2-dtbs	:= x1e001de-devkit.dtb x1-el2.dtbo
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e001de-devkit.dtb x1e001de-devkit-el2.dtb
 x1e78100-lenovo-thinkpad-t14s-el2-dtbs	:= x1e78100-lenovo-thinkpad-t14s.dtb x1-el2.dtbo
diff --git a/arch/arm64/boot/dts/qcom/talos-evk-lvds.dts b/arch/arm64/boot/dts/qcom/talos-evk-lvds.dts
new file mode 100644
index 000000000000..3754ed1b4423
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/talos-evk-lvds.dts
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+/dts-v1/;
+#include "talos-evk-cb.dtsi"
+
+/ {
+
+	backlight: backlight {
+		compatible = "gpio-backlight";
+		gpios = <&tlmm 115 GPIO_ACTIVE_HIGH>;
+		default-on;
+	};
+
+	lcd-pwm-en {
+		compatible = "gpio-backlight";
+		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>;
+		default-on;
+	};
+
+	panel-lvds {
+		compatible = "auo,g133han01";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			/* LVDS A (Odd pixels) */
+			port@0 {
+				reg = <0>;
+				dual-lvds-odd-pixels;
+
+				lvds_panel_out_a: endpoint {
+					remote-endpoint = <&sn65dsi84_out_a>;
+				};
+			};
+
+			/* LVDS B (Even pixels) */
+			port@1 {
+				reg = <1>;
+				dual-lvds-even-pixels;
+
+				lvds_panel_out_b: endpoint {
+					remote-endpoint = <&sn65dsi84_out_b>;
+				};
+			};
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	bridge: bridge@2c {
+		compatible = "ti,sn65dsi84";
+		reg = <0x2c>;
+		enable-gpios = <&tlmm 42 GPIO_ACTIVE_HIGH>;
+		ti,dsi-lanes = <4>;
+		ti,lvds-format = "jeida-24";
+		ti,lvds-bpp = <24>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				sn65dsi84_in: endpoint {
+					data-lanes = <0 1 2 3>;
+					remote-endpoint = <&mdss_dsi0_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				sn65dsi84_out_a: endpoint {
+					data-lanes = <0 1 2 3>;
+					remote-endpoint = <&lvds_panel_out_a>;
+				};
+			};
+
+			port@3 {
+				reg = <3>;
+
+				sn65dsi84_out_b: endpoint {
+					data-lanes = <0 1 2 3>;
+					remote-endpoint = <&lvds_panel_out_b>;
+				};
+			};
+		};
+	};
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l11a>;
+
+	status = "okay";
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&sn65dsi84_in>;
+	data-lanes = <0 1 2 3>;
+};
+
+&tlmm {
+	lcd_bklt_en: lcd-bklt-en-state {
+		pins = "gpio115";
+		function = "gpio";
+		bias-disable;
+	};
+
+	lcd_bklt_pwm: lcd-bklt-pwm-state {
+		pins = "gpio59";
+		function = "gpio";
+		bias-disable;
+	};
+};
-- 
2.34.1


