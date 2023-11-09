Return-Path: <devicetree+bounces-14779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF5F7E6761
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 11:07:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8024F1C20940
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 10:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F8CE156C1;
	Thu,  9 Nov 2023 10:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CdwuVzTc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C762C14A83
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 10:07:14 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F2B1358A
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 02:07:13 -0800 (PST)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6b1d1099a84so724570b3a.1
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 02:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699524433; x=1700129233; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=onLNc+Oko6/d4dZDi8m4Ahc5zglhx4oC8hmNsm3uUAA=;
        b=CdwuVzTcLaNuBWm+5+Eyq35jTiVIQezZYsIJ/TuYU3pt1Cm54umZ2eQZ/7u92dCADF
         mVmV/nvqCJrh9HIh3sURGPaARnApWRc39+IT95mTp/ryN3aV4BjyK0dTyGXe8OJcmshg
         BrYsnYxfDR5Y0Onaai+8FCNo5TTuyV1p7O9ZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699524433; x=1700129233;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=onLNc+Oko6/d4dZDi8m4Ahc5zglhx4oC8hmNsm3uUAA=;
        b=uWJlW53IYUGiK3RpdVBN8qjbbAzH70cR0Jmnof9KrdcZ5u0mn8m6m7m1i1AvWmSPId
         +Xnk2mykfeRW+sa/dXMjCj2vByFkHRXqPBvg1qDNjVh9JuKADSVGeLS+w3Bw6KX5+UdY
         eJ6V6nl+7HZOf6J3JOU2l6SXBt+yTr5l/JSrJy6YKTsEe+BoxUKDi5n/oFkQmrGBg68v
         lEJTF2Cw5CW46k77wbxg0b3HRFXv0nXcOIUNgkl3eVTjaPMkWKYjLqDd5buRjhKOAoZe
         psO/58suya+0p/6nre2zM/azTlqns2dO/UKxnflJWG5PAAUJGHLXRCeoqTqeOUWv4N6o
         G3Jw==
X-Gm-Message-State: AOJu0YxvWl4lOya5/S2f08j6SHJcQVzqXj4LLZsLunQYxZc+N6jqN8ht
	7F0kVYGViyjH+KvWkAKfQ7JeSQ==
X-Google-Smtp-Source: AGHT+IE47jHpK3aDbKhKoDgiHCyXY2l2uWAuEaUiNlv/nfVr6trsVMV2KYbXDfC5qwkSNTHKG8ky5g==
X-Received: by 2002:a05:6a21:19a:b0:181:10ee:20d5 with SMTP id le26-20020a056a21019a00b0018110ee20d5mr6079204pzb.12.1699524433438;
        Thu, 09 Nov 2023 02:07:13 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6f57:d4c:468c:5daf])
        by smtp.gmail.com with ESMTPSA id c13-20020a170902d48d00b001c60ba709b7sm3127511plg.125.2023.11.09.02.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 02:07:12 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	andriy.shevchenko@linux.intel.com,
	Jiri Kosina <jikos@kernel.org>,
	linus.walleij@linaro.org,
	broonie@kernel.org,
	gregkh@linuxfoundation.org,
	hdegoede@redhat.com,
	james.clark@arm.com,
	james@equiv.tech,
	keescook@chromium.org,
	petr.tesarik.ext@huawei.com,
	rafael@kernel.org,
	tglx@linutronix.de,
	Jeff LaBundy <jeff@labundy.com>,
	linux-input@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH v2 7/7] arm64: dts: mediatek: mt8183-kukui: Merge Krane device trees
Date: Thu,  9 Nov 2023 18:06:04 +0800
Message-ID: <20231109100606.1245545-8-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
In-Reply-To: <20231109100606.1245545-1-wenst@chromium.org>
References: <20231109100606.1245545-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In cases where the same Chromebook model is manufactured with different
components (MIPI DSI panels, MIPI CSI camera sensors, or trackpad /
touchscreens with conflicting addresses), a different SKU ID is
allocated to each specific combination. This SKU ID is exported by the
bootloader into the device tree, and can be used to "discover" which
combination is present on the current machine.

Merge the separate Krane dtsi/dts files into one shared for all SKUs.
A new device node is added for the alternative panel. Both it and the
original panel are marked as "fail-needs-probe-panel" to let the
hardware prober handle it.

Also move the cros_ec node so that all node references are ordered
alphabetically.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/Makefile         |  3 +-
 .../dts/mediatek/mt8183-kukui-krane-sku0.dts  | 24 ----------
 .../mediatek/mt8183-kukui-krane-sku176.dts    | 24 ----------
 ...ukui-krane.dtsi => mt8183-kukui-krane.dts} | 47 +++++++++++++++++--
 4 files changed, 44 insertions(+), 54 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku0.dts
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts
 rename arch/arm64/boot/dts/mediatek/{mt8183-kukui-krane.dtsi => mt8183-kukui-krane.dts} (86%)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 7e365e9516ab..d4d97b315b2f 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -40,8 +40,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku16.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku272.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku288.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku32.dtb
-dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane-sku0.dtb
-dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane-sku176.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-pumpkin.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393216.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393217.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku0.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku0.dts
deleted file mode 100644
index 4ac75806fa94..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku0.dts
+++ /dev/null
@@ -1,24 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2019 Google LLC
- *
- * Device-tree for Krane sku0.
- *
- * SKU is a 8-bit value (0x00 == 0):
- *  - Bits 7..4: Panel ID: 0x0 (AUO)
- *  - Bits 3..0: SKU ID:   0x0 (default)
- */
-
-/dts-v1/;
-#include "mt8183-kukui-krane.dtsi"
-
-/ {
-	model = "MediaTek krane sku0 board";
-	chassis-type = "tablet";
-	compatible = "google,krane-sku0", "google,krane", "mediatek,mt8183";
-};
-
-&panel {
-	status = "okay";
-	compatible = "auo,kd101n80-45na";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts
deleted file mode 100644
index 095279e55d50..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts
+++ /dev/null
@@ -1,24 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2019 Google LLC
- *
- * Device-tree for Krane sku176.
- *
- * SKU is a 8-bit value (0xb0 == 176):
- *  - Bits 7..4: Panel ID: 0xb (BOE)
- *  - Bits 3..0: SKU ID:   0x0 (default)
- */
-
-/dts-v1/;
-#include "mt8183-kukui-krane.dtsi"
-
-/ {
-	model = "MediaTek krane sku176 board";
-	chassis-type = "tablet";
-	compatible = "google,krane-sku176", "google,krane", "mediatek,mt8183";
-};
-
-&panel {
-        status = "okay";
-        compatible = "boe,tv101wum-nl6";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dts
similarity index 86%
rename from arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi
rename to arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dts
index d5f41c6c9881..75a734c0fbcc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dts
@@ -1,12 +1,24 @@
 // SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright 2019 Google LLC
+ *
+ * Device tree for Krane Chromebook family.
+ *
+ * SKU ID is a 8-bit value (0x00 == 0):
+ *  - Bits 7..4: Panel ID: 0x0 (AUO)
+ *                         0xb (BOE)
+ *  - Bits 3..0: SKU ID:   0x0 (default)
  */
 
+/dts-v1/;
 #include "mt8183-kukui.dtsi"
 #include "mt8183-kukui-audio-max98357a.dtsi"
 
 / {
+	model = "Google Krane Chromebook";
+	chassis-type = "tablet";
+	compatible = "google,krane", "mediatek,mt8183";
+
 	ppvarn_lcd: ppvarn-lcd {
 		compatible = "regulator-fixed";
 		regulator-name = "ppvarn_lcd";
@@ -45,6 +57,34 @@ &bluetooth {
 	firmware-name = "nvm_00440302_i2s_eu.bin";
 };
 
+&cros_ec {
+	keyboard-controller {
+		compatible = "google,cros-ec-keyb-switches";
+	};
+};
+
+&dsi0 {
+	panel2@0 {
+		compatible = "boe,tv101wum-nl6";
+		reg = <0>;
+		enable-gpios = <&pio 45 0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&panel_pins_default>;
+		avdd-supply = <&ppvarn_lcd>;
+		avee-supply = <&ppvarp_lcd>;
+		pp1800-supply = <&pp1800_lcd>;
+		backlight = <&backlight_lcd0>;
+		rotation = <270>;
+		status = "fail-needs-probe-panel";
+
+		port {
+			endpoint {
+				remote-endpoint = <&dsi_out>;
+			};
+		};
+	};
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -343,10 +383,9 @@ rst_pin {
 	};
 };
 
-&cros_ec {
-	keyboard-controller {
-		compatible = "google,cros-ec-keyb-switches";
-	};
+&panel {
+	compatible = "auo,kd101n80-45na";
+	status = "fail-needs-probe-panel";
 };
 
 &qca_wifi {
-- 
2.42.0.869.gea05f2083d-goog


