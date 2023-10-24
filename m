Return-Path: <devicetree+bounces-11464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C867D5D2C
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:26:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E857B210B1
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DBAF3F4D9;
	Tue, 24 Oct 2023 21:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="E5hSPMoc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2EF53D967
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:26:34 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F21A410F1
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:32 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1ca215cc713so31621405ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698182792; x=1698787592; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FSSAIRAjh0FblIlijhwcqDI147sW8GxwqzKtVngITgA=;
        b=E5hSPMocJ/PUgOLDqSQw1LQkdC0hmgLq08UrBAM15TASy+CyLUT6FVlmc5Sd7D5Wm9
         XIWkR8NKabsvLAfEgfWj9zUo74Tn1tFr8KBDUbVd2SgjkBAupizg4+DdP+aHS/WGjYRn
         MPOOYx7FdhHnrwhMGDtxWwLaETIgnRcj632xw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698182792; x=1698787592;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FSSAIRAjh0FblIlijhwcqDI147sW8GxwqzKtVngITgA=;
        b=Wxh69Krl1RLAzlGxU4vs4HUQJhUUr8ZoF8EmftMx2lD6Hm1lOCSBstLhJ/0s3hSm8z
         GxAtiYp6EgC6pNQ1B2DRkAVNuNX4cBtKqj6LeoNrAq1qBIibyg6HiJnwDB6zqC5je+ya
         qtu5MGluuzpM+7tvm534TokAVzWW3Ira3wqdal9IjUB0tqL3eCeeUfNDoHAvgRlPjApY
         e/18vLKSfMdCjOdJed6lHxnbEpnH+IqjioUhIyJxjm8KjKl7/B/JDGyA0TUAKUBDL0Ks
         hSx66hFgMQS+w+nvc2XV73+Lbnlo7d3vwbAP58MFbSSp47gCsYrLXGfPxRORh05JzGvH
         OqnA==
X-Gm-Message-State: AOJu0Yzay3Au3yJQF5hf2MZzg9Qm9r+VGChGIqIm+zmxu+r3DueQGbxF
	cd8LuphdH0F5BFBOF8aI1n0X9g==
X-Google-Smtp-Source: AGHT+IFqabPTNFviy4qnRl3tLV6sbyK3rMqrpRoup0N8XUxr0kQup+08tmcTgwqHuBVHedjDLGo2vw==
X-Received: by 2002:a17:903:2450:b0:1ca:2ec4:7f3f with SMTP id l16-20020a170903245000b001ca2ec47f3fmr12177580pls.45.1698182792244;
        Tue, 24 Oct 2023 14:26:32 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:5a2d:c345:7f3f:d26c])
        by smtp.gmail.com with ESMTPSA id p9-20020a170902e74900b001b850c9d7b3sm7824140plf.249.2023.10.24.14.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 14:26:31 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 7/7] arm64: dts: mt8183: Add jacuzzi pico/pico6 board
Date: Tue, 24 Oct 2023 14:22:29 -0700
Message-ID: <20231024212618.1079676-8-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231024212618.1079676-1-hsinyi@chromium.org>
References: <20231024212618.1079676-1-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

pico is also known as Acer Chromebook Spin 311.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
v1->v2: fix node names.
---
 arch/arm64/boot/dts/mediatek/Makefile         |   2 +
 .../mediatek/mt8183-kukui-jacuzzi-pico.dts    |  36 ++++++
 .../mediatek/mt8183-kukui-jacuzzi-pico6.dts   | 110 ++++++++++++++++++
 3 files changed, 148 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 1b85a8c12850..ed174dde97e1 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -34,6 +34,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-kappa.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-kenzo.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-makomo-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-makomo-sku1.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-pico.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-pico6.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-willow-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-willow-sku1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kakadu.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico.dts
new file mode 100644
index 000000000000..e230323b3a54
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico.dts
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi.dtsi"
+#include "mt8183-kukui-audio-ts3a227e-max98357a.dtsi"
+
+/ {
+	model = "Google pico board";
+	chassis-type = "convertible";
+	compatible = "google,pico-sku1", "google,pico", "mediatek,mt8183";
+};
+
+&i2c_tunnel {
+	google,remote-bus = <0>;
+};
+
+&i2c2 {
+	i2c-scl-internal-delay-ns = <25000>;
+
+	trackpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+		hid-descr-addr = <0x20>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_pins>;
+
+		interrupts-extended = <&pio 7 IRQ_TYPE_LEVEL_LOW>;
+
+		wakeup-source;
+	};
+};
+
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
new file mode 100644
index 000000000000..535464c0df04
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi.dtsi"
+#include "mt8183-kukui-audio-ts3a227e-max98357a.dtsi"
+
+/ {
+	model = "Google pico6 board";
+	chassis-type = "convertible";
+	compatible = "google,pico-sku2", "google,pico", "mediatek,mt8183";
+
+	bt_wakeup: bt-wakeup {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_pins_wakeup>;
+
+		wobt {
+			label = "Wake on BT";
+			gpios = <&pio 42 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_WAKEUP>;
+			wakeup-source;
+		};
+	};
+};
+
+&i2c_tunnel {
+	google,remote-bus = <0>;
+};
+
+&i2c2 {
+	i2c-scl-internal-delay-ns = <25000>;
+
+	trackpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+		hid-descr-addr = <0x20>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_pins>;
+
+		interrupts-extended = <&pio 7 IRQ_TYPE_LEVEL_LOW>;
+
+		wakeup-source;
+	};
+};
+
+&wifi_wakeup {
+	wowlan {
+		gpios = <&pio 113 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&wifi_pwrseq {
+	post-power-on-delay-ms = <50>;
+
+	/* Toggle WIFI_ENABLE to reset the chip. */
+	reset-gpios = <&pio 8 GPIO_ACTIVE_LOW>;
+};
+
+&wifi_pins_pwrseq {
+	pins-wifi-enable {
+		pinmux = <PINMUX_GPIO8__FUNC_GPIO8>;
+	};
+};
+
+&mmc1_pins_default {
+	pins-cmd-dat {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+	pins-clk {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+};
+
+&mmc1_pins_uhs {
+	pins-clk {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+};
+
+&mmc1 {
+	bt_reset: bt-reset {
+		compatible = "mediatek,mt7921s-bluetooth";
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_pins_reset>;
+		reset-gpios = <&pio 120 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pio {
+	bt_pins_wakeup: bt-pins-wakeup {
+		pins_bt_wakeup {
+			pinmux = <PINMUX_GPIO42__FUNC_GPIO42>;
+			input-enable;
+		};
+	};
+
+	bt_pins_reset: bt-pins-reset {
+		pins_bt_reset {
+			pinmux = <PINMUX_GPIO120__FUNC_GPIO120>;
+			output-high;
+		};
+	};
+};
+
+/delete-node/ &bluetooth;
+/delete-node/ &bt_pins;
-- 
2.42.0.758.gaed0368e0e-goog


