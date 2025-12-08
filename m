Return-Path: <devicetree+bounces-245119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D63ACAC5B1
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 08:33:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 958CD300CA22
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 07:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D4BF22258C;
	Mon,  8 Dec 2025 07:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PpCFZX1D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8766D25B1DA
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 07:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765179209; cv=none; b=l4zir9mNKqMaiQ/tyZ0os78fOwNczW2eoH/YdZ+uQsgAtbJFriUYXscSEnqJvG8vC7RQXgw0VJhi66lhn5eVl7JqqwN02f7+coac+nLJfbuW3f5+D//tMIU/MbgpIKjNLifWJrJ1GYSIchLY/JnnYUd8UCm8CQT4D67m8Uk8y4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765179209; c=relaxed/simple;
	bh=SK8qhgJDYE5gVQTI0M+uR0reKW7zD59w/6b5mzVTqIk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Zqbgj5TK/kncyHVTr097fd5kXYNOx5DMnWy4I4Be878P9/n4W9eQaj50FGDnHyR82rJIBYRmrrX7noIpN7q2KYXGViVtBwHl3hCf8bFiJ0olY99dHUn75+7Fu4v3tjG10u5q8zzG0M6/cqioYCI/JI6ce5fkxIegWMDT8uH/soY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PpCFZX1D; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7b7828bf7bcso4782661b3a.2
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 23:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1765179206; x=1765784006; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eh8zbwl3BBYVc+9B6hMq3b7GWPBAajSCppyaHXoFIk4=;
        b=PpCFZX1D/4eS1gJjnWl6dADv9cGKKnKjm9gHdcFo8WsyJ0mjIWOQg6cUy/YQ5sP3VE
         5EE/kjsVhQ2gAha8GUWIVrOAKWefQ0Z/uJAmBlzVpTxN3IuRq61pta+Mj2yCdA9NNd86
         OBTGPf2+BzLELNYs5WCK3dUqvuNLuddK0T3AM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765179206; x=1765784006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Eh8zbwl3BBYVc+9B6hMq3b7GWPBAajSCppyaHXoFIk4=;
        b=v1utcRMoGdhKHzYo/yQOAe1hu/zkm1azlrFeN1PYzk4/4nDMstCUWvz/bZzOfAp5Vj
         HGteqpnSCKB6AVZFmTgaZbS25RxzjZJHKAgHgioAxgm0km84nU5px+sH8V4TgstLkO8U
         vQlpEQWbCcvRdRfyVfQ/xcuwk0UHwyfw6HcI37C1suttyArsnf4EQ4MOWD45qdFHV4Qq
         Y3PmE+KcjJ2h1Xz6e8A2d4tR+1WfM0YhYl/DvFH5L3AnykO9gGk4oAw+agpQM0skjDnR
         CGaMVA+RZ5synL5sEOsVXB4ZacgqKXBxSsguUJ6vletPbP43qTGnzT8m5yf7z5DAUCfV
         fVgw==
X-Forwarded-Encrypted: i=1; AJvYcCUE7jdyZlHEjyFPOfDm6fAgdrBu04m05gQTcwlzcnz/UL1C4WQp+K6OkCVLk+HioXkxDdPDaw6MTn5j@vger.kernel.org
X-Gm-Message-State: AOJu0YxAiPnFPmE7egH6EAARmLJySIX1BLQTfaNS6tkcMzt0h9AmRnwK
	hAQz/YzTUoXQMAzwh2qgXSsQRIm5FSqQI7+Uydw19uFvRdPTbsLTDWqfVYH5yb2SDQ==
X-Gm-Gg: ASbGnctPXr5W6YfV+HUu+L6WQGvuLlWrvJbn9vKayjWcA4Vr81L95DqWxFQfR/w3SU/
	JLEfNqk0UzCRqCKUGlgJC2j4FZyTrPi9zYpjHcqvi1pecz9u3DF4sSY8k8fCpJVUHIl2hJF9+wj
	jU11/5l8lQ0WB29NIPMSqT9W7LGCLtcQ0feBqN7+2Wpnkalu9BTZW3bn35xg/sElx5BXzmi1KPz
	u82izdmvscaoxnLr6dvSNy1p1xt5GyhpCsH7xB5/ODGVmMp+LmAytNROEoUh9pOB39TPVnJvO7L
	on2S7hMTG28XF6D9/AFPG3s6uOEFskL65AYwz8iXwpGPGmeTUFrVsRyQWXvgjv5h2Ce1v1gPd8R
	d0k/cGJFTmnLAZLyMCv4hxLewJwKf3aFNbvvHhRd0qBwPdX69+yTWHqNOUjomVYe+h0X1okWn0a
	Yrgk1Z/y153QN6c/uhC+rCnARCJPqSZbQ7nMqDk2IcIiAChaBctXE8YMnnzNeC9eirBQKa
X-Google-Smtp-Source: AGHT+IE+INKuhg3s+6b8+naNepG4jj8nvP01S3s32sLn7T7V4DzcQdK7nbVe2ipp2f5euqAiLmaZbQ==
X-Received: by 2002:a05:6a00:a28:b0:7e8:4398:b354 with SMTP id d2e1a72fcca58-7e8c4a766bamr6669231b3a.39.1765179205747;
        Sun, 07 Dec 2025 23:33:25 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:d31e:c84f:5cc1:d554])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e29ff6b56esm12127686b3a.20.2025.12.07.23.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Dec 2025 23:33:25 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/3] arm64: dts: mt8188-ciri: Split into base and overlays based on components
Date: Mon,  8 Dec 2025 15:33:03 +0800
Message-ID: <20251208073306.75279-3-wenst@chromium.org>
X-Mailer: git-send-email 2.52.0.223.gf5cc29aaa4-goog
In-Reply-To: <20251208073306.75279-1-wenst@chromium.org>
References: <20251208073306.75279-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MT8188-based Ciri device has 8 SKUs. These are derived from the
combinations of 3 types of components (headphone codec, speaker codec,
and display panel), each having 2 options.

Decompose the existing dtsi / dts files into 6 overlays for each
component option. The audio codec have combined audio routing and graph
connections,  cannot be easily separated into separate bits without
adding even more glue overlays. The per-SKU dts files are also converted
to overlays, though now they only contain the final board compatible and
model name.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/Makefile         | 34 ++++++++
 ...88-geralt-ciri-audio-max98390-es8326.dtso} | 40 ++++++---
 ...88-geralt-ciri-audio-max98390-rt5682s.dtso | 81 +++++++++++++++++++
 ...188-geralt-ciri-audio-tas2563-es8326.dtso} | 18 ++---
 ...88-geralt-ciri-audio-tas2563-rt5682s.dtso} | 46 +++++------
 .../mt8188-geralt-ciri-panel-boe.dtso         | 10 +++
 .../mt8188-geralt-ciri-panel-ivo.dtso         | 10 +++
 .../dts/mediatek/mt8188-geralt-ciri-sku0.dts  | 32 --------
 .../dts/mediatek/mt8188-geralt-ciri-sku0.dtso | 11 +++
 .../dts/mediatek/mt8188-geralt-ciri-sku1.dtso | 11 +++
 .../dts/mediatek/mt8188-geralt-ciri-sku2.dts  | 59 --------------
 .../dts/mediatek/mt8188-geralt-ciri-sku2.dtso | 11 +++
 .../dts/mediatek/mt8188-geralt-ciri-sku3.dts  | 32 --------
 .../dts/mediatek/mt8188-geralt-ciri-sku3.dtso | 11 +++
 .../dts/mediatek/mt8188-geralt-ciri-sku4.dts  | 48 -----------
 .../dts/mediatek/mt8188-geralt-ciri-sku4.dtso | 11 +++
 .../dts/mediatek/mt8188-geralt-ciri-sku5.dtso | 11 +++
 .../dts/mediatek/mt8188-geralt-ciri-sku6.dtso | 11 +++
 .../dts/mediatek/mt8188-geralt-ciri-sku7.dts  | 48 -----------
 .../dts/mediatek/mt8188-geralt-ciri-sku7.dtso | 11 +++
 ...eralt-ciri.dtsi => mt8188-geralt-ciri.dts} | 54 ++-----------
 21 files changed, 285 insertions(+), 315 deletions(-)
 rename arch/arm64/boot/dts/mediatek/{mt8188-geralt-ciri-sku1.dts => mt8188-geralt-ciri-audio-max98390-es8326.dtso} (59%)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-max98390-rt5682s.dtso
 rename arch/arm64/boot/dts/mediatek/{mt8188-geralt-ciri-sku5.dts => mt8188-geralt-ciri-audio-tas2563-es8326.dtso} (78%)
 rename arch/arm64/boot/dts/mediatek/{mt8188-geralt-ciri-sku6.dts => mt8188-geralt-ciri-audio-tas2563-rt5682s.dtso} (52%)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-panel-boe.dtso
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-panel-ivo.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dtso
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dtso
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dtso
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dtso
 rename arch/arm64/boot/dts/mediatek/{mt8188-geralt-ciri.dtsi => mt8188-geralt-ciri.dts} (81%)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index c5fd6191a925..39a844386366 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -86,6 +86,40 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-tentacruel-sku262148.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-voltorb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-evb.dtb
+
+mt8188-geralt-ciri-sku0-dtbs := mt8188-geralt-ciri.dtb \
+				mt8188-geralt-ciri-panel-boe.dtbo \
+				mt8188-geralt-ciri-audio-max98390-rt5682s.dtbo \
+				mt8188-geralt-ciri-sku0.dtbo
+mt8188-geralt-ciri-sku1-dtbs := mt8188-geralt-ciri.dtb \
+				mt8188-geralt-ciri-panel-ivo.dtbo \
+				mt8188-geralt-ciri-audio-max98390-es8326.dtbo \
+				mt8188-geralt-ciri-sku1.dtbo
+mt8188-geralt-ciri-sku2-dtbs := mt8188-geralt-ciri.dtb \
+				mt8188-geralt-ciri-panel-boe.dtbo \
+				mt8188-geralt-ciri-audio-max98390-es8326.dtbo \
+				mt8188-geralt-ciri-sku2.dtbo
+mt8188-geralt-ciri-sku3-dtbs := mt8188-geralt-ciri.dtb \
+				mt8188-geralt-ciri-panel-ivo.dtbo \
+				mt8188-geralt-ciri-audio-max98390-rt5682s.dtbo \
+				mt8188-geralt-ciri-sku3.dtbo
+mt8188-geralt-ciri-sku4-dtbs := mt8188-geralt-ciri.dtb \
+				mt8188-geralt-ciri-panel-boe.dtbo \
+				mt8188-geralt-ciri-audio-tas2563-rt5682s.dtbo \
+				mt8188-geralt-ciri-sku4.dtbo
+mt8188-geralt-ciri-sku5-dtbs := mt8188-geralt-ciri.dtb \
+				mt8188-geralt-ciri-panel-ivo.dtbo \
+				mt8188-geralt-ciri-audio-tas2563-es8326.dtbo \
+				mt8188-geralt-ciri-sku5.dtbo
+mt8188-geralt-ciri-sku6-dtbs := mt8188-geralt-ciri.dtb \
+				mt8188-geralt-ciri-panel-boe.dtbo \
+				mt8188-geralt-ciri-audio-tas2563-es8326.dtbo \
+				mt8188-geralt-ciri-sku6.dtbo
+mt8188-geralt-ciri-sku7-dtbs := mt8188-geralt-ciri.dtb \
+				mt8188-geralt-ciri-panel-ivo.dtbo \
+				mt8188-geralt-ciri-audio-tas2563-rt5682s.dtbo \
+				mt8188-geralt-ciri-sku7.dtbo
+
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-geralt-ciri-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-geralt-ciri-sku1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-geralt-ciri-sku2.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-max98390-es8326.dtso
similarity index 59%
rename from arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dts
rename to arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-max98390-es8326.dtso
index ef5ea9d12b1d..b99bd4c78ec5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-max98390-es8326.dtso
@@ -2,20 +2,14 @@
 /*
  * Copyright 2023 Google LLC
  */
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 /dts-v1/;
-#include "mt8188-geralt-ciri.dtsi"
-
-/ {
-	model = "Google Ciri sku1 board";
-	compatible = "google,ciri-sku1", "google,ciri", "mediatek,mt8188";
-};
-
-&dsi_panel {
-	compatible = "ivo,t109nw41", "himax,hx83102";
-};
+/plugin/;
 
 &i2c0 {
-	/delete-node/ audio-codec@1a;
+	#address-cells = <1>;
+	#size-cells = <0>;
 
 	es8326: audio-codec@19 {
 		compatible = "everest,es8326";
@@ -27,6 +21,23 @@ es8326: audio-codec@19 {
 		everest,jack-pol = [0e];
 		everest,interrupt-clk = [00];
 	};
+
+	max98390_38: amplifier@38 {
+		compatible = "maxim,max98390";
+		reg = <0x38>;
+		sound-name-prefix = "Front Right";
+		reset-gpios = <&pio 118 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&speaker_en>;
+		#sound-dai-cells = <0>;
+	};
+
+	max98390_39: amplifier@39 {
+		compatible = "maxim,max98390";
+		reg = <0x39>;
+		sound-name-prefix = "Front Left";
+		#sound-dai-cells = <0>;
+	};
 };
 
 &sound {
@@ -45,6 +56,13 @@ &sound {
 		"Left Spk", "Front Left BE_OUT",
 		"Right Spk", "Front Right BE_OUT";
 
+	dai-link-1 {
+		codec {
+			sound-dai = <&max98390_38>,
+				    <&max98390_39>;
+		};
+	};
+
 	dai-link-2 {
 		codec {
 			sound-dai = <&es8326>;
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-max98390-rt5682s.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-max98390-rt5682s.dtso
new file mode 100644
index 000000000000..44dd82926280
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-max98390-rt5682s.dtso
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+/dts-v1/;
+/plugin/;
+
+&i2c0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	rt5682s: audio-codec@1a {
+		compatible = "realtek,rt5682s";
+		reg = <0x1a>;
+		interrupts-extended = <&pio 108 IRQ_TYPE_EDGE_BOTH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&audio_codec_pins>;
+		#sound-dai-cells = <1>;
+
+		AVDD-supply = <&mt6359_vio18_ldo_reg>;
+		DBVDD-supply = <&mt6359_vio18_ldo_reg>;
+		LDO1-IN-supply = <&mt6359_vio18_ldo_reg>;
+		MICVDD-supply = <&pp3300_s3>;
+		realtek,jd-src = <1>;
+	};
+
+	max98390_38: amplifier@38 {
+		compatible = "maxim,max98390";
+		reg = <0x38>;
+		sound-name-prefix = "Front Right";
+		reset-gpios = <&pio 118 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&speaker_en>;
+		#sound-dai-cells = <0>;
+	};
+
+	max98390_39: amplifier@39 {
+		compatible = "maxim,max98390";
+		reg = <0x39>;
+		sound-name-prefix = "Front Left";
+		#sound-dai-cells = <0>;
+	};
+};
+
+&sound {
+	compatible = "mediatek,mt8188-rt5682s";
+	model = "mt8188_m98390_5682";
+
+	audio-routing =
+		"ETDM1_OUT", "ETDM_SPK_PIN",
+		"ETDM2_OUT", "ETDM_HP_PIN",
+		"ETDM1_IN", "ETDM_SPK_PIN",
+		"ETDM2_IN", "ETDM_HP_PIN",
+		"ADDA Capture", "MTKAIF_PIN",
+		"Headphone Jack", "HPOL",
+		"Headphone Jack", "HPOR",
+		"IN1P", "Headset Mic",
+		"Left Spk", "Front Left BE_OUT",
+		"Right Spk", "Front Right BE_OUT";
+
+	dai-link-1 {
+		codec {
+			sound-dai = <&max98390_38>,
+				    <&max98390_39>;
+		};
+	};
+
+	dai-link-2 {
+		codec {
+			sound-dai = <&rt5682s 0>;
+		};
+	};
+
+	dai-link-3 {
+		codec {
+			sound-dai = <&rt5682s 0>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dts b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-tas2563-es8326.dtso
similarity index 78%
rename from arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dts
rename to arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-tas2563-es8326.dtso
index bf87201ccf27..c64094c6c249 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-tas2563-es8326.dtso
@@ -2,22 +2,14 @@
 /*
  * Copyright 2024 Google LLC
  */
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 /dts-v1/;
-#include "mt8188-geralt-ciri.dtsi"
-
-/ {
-	model = "Google Ciri sku5 board (rev4)";
-	compatible = "google,ciri-sku5", "google,ciri", "mediatek,mt8188";
-};
-
-&dsi_panel {
-	compatible = "ivo,t109nw41", "himax,hx83102";
-};
+/plugin/;
 
 &i2c0 {
-	/delete-node/ audio-codec@1a;
-	/delete-node/ amplifier@38;
-	/delete-node/ amplifier@39;
+	#address-cells = <1>;
+	#size-cells = <0>;
 
 	es8326: audio-codec@19 {
 		compatible = "everest,es8326";
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dts b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-tas2563-rt5682s.dtso
similarity index 52%
rename from arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dts
rename to arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-tas2563-rt5682s.dtso
index 17d7359dfb6a..b8e6220a449e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-tas2563-rt5682s.dtso
@@ -2,32 +2,28 @@
 /*
  * Copyright 2024 Google LLC
  */
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 /dts-v1/;
-#include "mt8188-geralt-ciri.dtsi"
-
-/ {
-	model = "Google Ciri sku6 board (rev4)";
-	compatible = "google,ciri-sku6", "google,ciri", "mediatek,mt8188";
-};
-
-&dsi_panel {
-	compatible = "boe,nv110wum-l60", "himax,hx83102";
-};
+/plugin/;
 
 &i2c0 {
-	/delete-node/ audio-codec@1a;
-	/delete-node/ amplifier@38;
-	/delete-node/ amplifier@39;
+	#address-cells = <1>;
+	#size-cells = <0>;
 
-	es8326: audio-codec@19 {
-		compatible = "everest,es8326";
-		reg = <0x19>;
-		interrupts-extended = <&pio 108 IRQ_TYPE_LEVEL_LOW>;
+	rt5682s: audio-codec@1a {
+		compatible = "realtek,rt5682s";
+		reg = <0x1a>;
+		interrupts-extended = <&pio 108 IRQ_TYPE_EDGE_BOTH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&audio_codec_pins>;
-		#sound-dai-cells = <0>;
-		everest,jack-pol = [0e];
-		everest,interrupt-clk = [00];
+		#sound-dai-cells = <1>;
+
+		AVDD-supply = <&mt6359_vio18_ldo_reg>;
+		DBVDD-supply = <&mt6359_vio18_ldo_reg>;
+		LDO1-IN-supply = <&mt6359_vio18_ldo_reg>;
+		MICVDD-supply = <&pp3300_s3>;
+		realtek,jd-src = <1>;
 	};
 
 	tas2563: amplifier@4f {
@@ -39,8 +35,8 @@ tas2563: amplifier@4f {
 };
 
 &sound {
-	compatible = "mediatek,mt8188-es8326";
-	model = "mt8188_tas2563_8326";
+	compatible = "mediatek,mt8188-rt5682s";
+	model = "mt8188_tas2563_5682";
 
 	audio-routing =
 		"ETDM1_OUT", "ETDM_SPK_PIN",
@@ -50,7 +46,7 @@ &sound {
 		"ADDA Capture", "MTKAIF_PIN",
 		"Headphone Jack", "HPOL",
 		"Headphone Jack", "HPOR",
-		"MIC1", "Headset Mic";
+		"IN1P", "Headset Mic";
 
 	dai-link-1 {
 		codec {
@@ -60,13 +56,13 @@ codec {
 
 	dai-link-2 {
 		codec {
-			sound-dai = <&es8326>;
+			sound-dai = <&rt5682s 0>;
 		};
 	};
 
 	dai-link-3 {
 		codec {
-			sound-dai = <&es8326>;
+			sound-dai = <&rt5682s 0>;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-panel-boe.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-panel-boe.dtso
new file mode 100644
index 000000000000..4d61226713bc
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-panel-boe.dtso
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+/dts-v1/;
+/plugin/;
+
+&dsi_panel {
+	compatible = "boe,nv110wum-l60", "himax,hx83102";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-panel-ivo.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-panel-ivo.dtso
new file mode 100644
index 000000000000..8cdacf64c100
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-panel-ivo.dtso
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+/dts-v1/;
+/plugin/;
+
+&dsi_panel {
+	compatible = "ivo,t109nw41", "himax,hx83102";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dts b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dts
deleted file mode 100644
index 79d6d12394b9..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dts
+++ /dev/null
@@ -1,32 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2023 Google LLC
- */
-/dts-v1/;
-#include "mt8188-geralt-ciri.dtsi"
-
-/ {
-	model = "Google Ciri sku0 board";
-	compatible = "google,ciri-sku0", "google,ciri", "mediatek,mt8188";
-};
-
-&dsi_panel {
-	compatible = "boe,nv110wum-l60", "himax,hx83102";
-};
-
-&sound {
-	compatible = "mediatek,mt8188-rt5682s";
-	model = "mt8188_m98390_5682";
-
-	audio-routing =
-		"ETDM1_OUT", "ETDM_SPK_PIN",
-		"ETDM2_OUT", "ETDM_HP_PIN",
-		"ETDM1_IN", "ETDM_SPK_PIN",
-		"ETDM2_IN", "ETDM_HP_PIN",
-		"ADDA Capture", "MTKAIF_PIN",
-		"Headphone Jack", "HPOL",
-		"Headphone Jack", "HPOR",
-		"IN1P", "Headset Mic",
-		"Left Spk", "Front Left BE_OUT",
-		"Right Spk", "Front Right BE_OUT";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dtso
new file mode 100644
index 000000000000..884a7b2d943c
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dtso
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	model = "Google Ciri sku0 board";
+	compatible = "google,ciri-sku0", "google,ciri", "mediatek,mt8188";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dtso
new file mode 100644
index 000000000000..d3ed6ea535d7
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dtso
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	model = "Google Ciri sku1 board";
+	compatible = "google,ciri-sku1", "google,ciri", "mediatek,mt8188";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dts b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dts
deleted file mode 100644
index ef56786fc2be..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dts
+++ /dev/null
@@ -1,59 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2024 Google LLC
- */
-/dts-v1/;
-#include "mt8188-geralt-ciri.dtsi"
-
-/ {
-	model = "Google Ciri sku2 board";
-	compatible = "google,ciri-sku2", "google,ciri", "mediatek,mt8188";
-};
-
-&dsi_panel {
-	compatible = "boe,nv110wum-l60", "himax,hx83102";
-};
-
-&i2c0 {
-	/delete-node/ audio-codec@1a;
-
-	es8326: audio-codec@19 {
-		compatible = "everest,es8326";
-		reg = <0x19>;
-		interrupts-extended = <&pio 108 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&audio_codec_pins>;
-		#sound-dai-cells = <0>;
-		everest,jack-pol = [0e];
-		everest,interrupt-clk = [00];
-	};
-};
-
-&sound {
-	compatible = "mediatek,mt8188-es8326";
-	model = "mt8188_m98390_8326";
-
-	audio-routing =
-		"ETDM1_OUT", "ETDM_SPK_PIN",
-		"ETDM2_OUT", "ETDM_HP_PIN",
-		"ETDM1_IN", "ETDM_SPK_PIN",
-		"ETDM2_IN", "ETDM_HP_PIN",
-		"ADDA Capture", "MTKAIF_PIN",
-		"Headphone Jack", "HPOL",
-		"Headphone Jack", "HPOR",
-		"MIC1", "Headset Mic",
-		"Left Spk", "Front Left BE_OUT",
-		"Right Spk", "Front Right BE_OUT";
-
-	dai-link-2 {
-		codec {
-			sound-dai = <&es8326>;
-		};
-	};
-
-	dai-link-3 {
-		codec {
-			sound-dai = <&es8326>;
-		};
-	};
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtso
new file mode 100644
index 000000000000..3f9d38bc2ad2
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtso
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2024 Google LLC
+ */
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	model = "Google Ciri sku2 board";
+	compatible = "google,ciri-sku2", "google,ciri", "mediatek,mt8188";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dts b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dts
deleted file mode 100644
index 524f7f0064c1..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dts
+++ /dev/null
@@ -1,32 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2024 Google LLC
- */
-/dts-v1/;
-#include "mt8188-geralt-ciri.dtsi"
-
-/ {
-	model = "Google Ciri sku3 board";
-	compatible = "google,ciri-sku3", "google,ciri", "mediatek,mt8188";
-};
-
-&dsi_panel {
-	compatible = "ivo,t109nw41", "himax,hx83102";
-};
-
-&sound {
-	compatible = "mediatek,mt8188-rt5682s";
-	model = "mt8188_m98390_5682";
-
-	audio-routing =
-		"ETDM1_OUT", "ETDM_SPK_PIN",
-		"ETDM2_OUT", "ETDM_HP_PIN",
-		"ETDM1_IN", "ETDM_SPK_PIN",
-		"ETDM2_IN", "ETDM_HP_PIN",
-		"ADDA Capture", "MTKAIF_PIN",
-		"Headphone Jack", "HPOL",
-		"Headphone Jack", "HPOR",
-		"IN1P", "Headset Mic",
-		"Left Spk", "Front Left BE_OUT",
-		"Right Spk", "Front Right BE_OUT";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dtso
new file mode 100644
index 000000000000..e6a6f8f06141
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dtso
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2024 Google LLC
+ */
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	model = "Google Ciri sku3 board";
+	compatible = "google,ciri-sku3", "google,ciri", "mediatek,mt8188";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dts b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dts
deleted file mode 100644
index ea953d7e1543..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dts
+++ /dev/null
@@ -1,48 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2024 Google LLC
- */
-/dts-v1/;
-#include "mt8188-geralt-ciri.dtsi"
-
-/ {
-	model = "Google Ciri sku4 board (rev4)";
-	compatible = "google,ciri-sku4", "google,ciri", "mediatek,mt8188";
-};
-
-&dsi_panel {
-	compatible = "boe,nv110wum-l60", "himax,hx83102";
-};
-
-&i2c0 {
-	/delete-node/ amplifier@38;
-	/delete-node/ amplifier@39;
-
-	tas2563: amplifier@4f {
-		compatible = "ti,tas2563", "ti,tas2781";
-		reg = <0x4f>, <0x4c>; /* left / right channel */
-		reset-gpios = <&pio 118 GPIO_ACTIVE_HIGH>;
-		#sound-dai-cells = <0>;
-	};
-};
-
-&sound {
-	compatible = "mediatek,mt8188-rt5682s";
-	model = "mt8188_tas2563_5682";
-
-	audio-routing =
-		"ETDM1_OUT", "ETDM_SPK_PIN",
-		"ETDM2_OUT", "ETDM_HP_PIN",
-		"ETDM1_IN", "ETDM_SPK_PIN",
-		"ETDM2_IN", "ETDM_HP_PIN",
-		"ADDA Capture", "MTKAIF_PIN",
-		"Headphone Jack", "HPOL",
-		"Headphone Jack", "HPOR",
-		"IN1P", "Headset Mic";
-
-	dai-link-1 {
-		codec {
-			sound-dai = <&tas2563>;
-		};
-	};
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dtso
new file mode 100644
index 000000000000..ee5b28c4ef00
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dtso
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2024 Google LLC
+ */
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	model = "Google Ciri sku4 board (rev4)";
+	compatible = "google,ciri-sku4", "google,ciri", "mediatek,mt8188";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dtso
new file mode 100644
index 000000000000..ccf8d2f0eb70
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dtso
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2024 Google LLC
+ */
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	model = "Google Ciri sku5 board (rev4)";
+	compatible = "google,ciri-sku5", "google,ciri", "mediatek,mt8188";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dtso
new file mode 100644
index 000000000000..773c702b59d8
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dtso
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2024 Google LLC
+ */
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	model = "Google Ciri sku6 board (rev4)";
+	compatible = "google,ciri-sku6", "google,ciri", "mediatek,mt8188";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dts b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dts
deleted file mode 100644
index 825015b452d5..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dts
+++ /dev/null
@@ -1,48 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2024 Google LLC
- */
-/dts-v1/;
-#include "mt8188-geralt-ciri.dtsi"
-
-/ {
-	model = "Google Ciri sku7 board (rev4)";
-	compatible = "google,ciri-sku7", "google,ciri", "mediatek,mt8188";
-};
-
-&dsi_panel {
-	compatible = "ivo,t109nw41", "himax,hx83102";
-};
-
-&i2c0 {
-	/delete-node/ amplifier@38;
-	/delete-node/ amplifier@39;
-
-	tas2563: amplifier@4f {
-		compatible = "ti,tas2563", "ti,tas2781";
-		reg = <0x4f>, <0x4c>; /* left / right channel */
-		reset-gpios = <&pio 118 GPIO_ACTIVE_HIGH>;
-		#sound-dai-cells = <0>;
-	};
-};
-
-&sound {
-	compatible = "mediatek,mt8188-rt5682s";
-	model = "mt8188_tas2563_5682";
-
-	audio-routing =
-		"ETDM1_OUT", "ETDM_SPK_PIN",
-		"ETDM2_OUT", "ETDM_HP_PIN",
-		"ETDM1_IN", "ETDM_SPK_PIN",
-		"ETDM2_IN", "ETDM_HP_PIN",
-		"ADDA Capture", "MTKAIF_PIN",
-		"Headphone Jack", "HPOL",
-		"Headphone Jack", "HPOR",
-		"IN1P", "Headset Mic";
-
-	dai-link-1 {
-		codec {
-			sound-dai = <&tas2563>;
-		};
-	};
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dtso
new file mode 100644
index 000000000000..c22860eab9f8
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dtso
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2024 Google LLC
+ */
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	model = "Google Ciri sku7 board (rev4)";
+	compatible = "google,ciri-sku7", "google,ciri", "mediatek,mt8188";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri.dtsi b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri.dts
similarity index 81%
rename from arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri.dtsi
rename to arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri.dts
index 6815c435a57e..2c9e9e67c8e2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri.dts
@@ -5,6 +5,11 @@
 /dts-v1/;
 #include "mt8188-geralt.dtsi"
 
+/ {
+	model = "Google Ciri board";
+	compatible = "google,ciri", "mediatek,mt8188";
+};
+
 &aud_etdm_hp_on {
 	pins-mclk {
 		pinmux = <PINMUX_GPIO114__FUNC_O_I2SO2_MCK>;
@@ -19,40 +24,6 @@ pins-mclk {
 	};
 };
 
-&i2c0 {
-	rt5682s: audio-codec@1a {
-		compatible = "realtek,rt5682s";
-		reg = <0x1a>;
-		interrupts-extended = <&pio 108 IRQ_TYPE_EDGE_BOTH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&audio_codec_pins>;
-		#sound-dai-cells = <1>;
-
-		AVDD-supply = <&mt6359_vio18_ldo_reg>;
-		DBVDD-supply = <&mt6359_vio18_ldo_reg>;
-		LDO1-IN-supply = <&mt6359_vio18_ldo_reg>;
-		MICVDD-supply = <&pp3300_s3>;
-		realtek,jd-src = <1>;
-	};
-
-	max98390_38: amplifier@38 {
-		compatible = "maxim,max98390";
-		reg = <0x38>;
-		sound-name-prefix = "Front Right";
-		reset-gpios = <&pio 118 GPIO_ACTIVE_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&speaker_en>;
-		#sound-dai-cells = <0>;
-	};
-
-	max98390_39: amplifier@39 {
-		compatible = "maxim,max98390";
-		reg = <0x39>;
-		sound-name-prefix = "Front Left";
-		#sound-dai-cells = <0>;
-	};
-};
-
 &i2c_tunnel {
 	/*
 	 * The virtual battery I2C addr is 0xf on Ciri, so we describe it
@@ -77,6 +48,8 @@ &mt6359_vm18_ldo_reg {
 };
 
 &sound {
+	/* compatible, model, routing, and dai-link codecs added by overlays */
+
 	dai-link-0 {
 		link-name = "ETDM1_IN_BE";
 		dai-format = "i2s";
@@ -87,29 +60,16 @@ dai-link-1 {
 		link-name = "ETDM1_OUT_BE";
 		dai-format = "i2s";
 		mediatek,clk-provider = "cpu";
-
-		codec {
-			sound-dai = <&max98390_38>,
-				    <&max98390_39>;
-		};
 	};
 
 	dai-link-2 {
 		link-name = "ETDM2_IN_BE";
 		mediatek,clk-provider = "cpu";
-
-		codec {
-			sound-dai = <&rt5682s 0>;
-		};
 	};
 
 	dai-link-3 {
 		link-name = "ETDM2_OUT_BE";
 		mediatek,clk-provider = "cpu";
-
-		codec {
-			sound-dai = <&rt5682s 0>;
-		};
 	};
 
 	dai-link-4 {
-- 
2.52.0.223.gf5cc29aaa4-goog


