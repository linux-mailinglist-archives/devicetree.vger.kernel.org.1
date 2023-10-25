Return-Path: <devicetree+bounces-12021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B1A7D7731
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:55:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2478281CF7
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22D336B1B;
	Wed, 25 Oct 2023 21:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IbBCFGtk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E81B34CF1
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:55:34 +0000 (UTC)
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 457F118D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:33 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-5849fc56c62so175655eaf.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698270932; x=1698875732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mvz4tU2Qi3kZRU4orX2BxAMTB3NfFO65aFnqQhNCI7Y=;
        b=IbBCFGtkvHW2nsniiwm/p66FHrOymirM8oSScRZYq9Lj7t9r87YvQVFSC3dSkn5zkp
         PbDhlXruZt7H/mOOGTLu+wXgKb6A/hDWhxM6mPkvieUU8nu2kwXAxihMzA+vnK5D4F0Y
         ssnL+YSHZZdVyUQV6nWRd4dVGH1m/gr7nj470=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698270932; x=1698875732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mvz4tU2Qi3kZRU4orX2BxAMTB3NfFO65aFnqQhNCI7Y=;
        b=Fofa1woVAezg+L/Z1SO+zVtiaGp4OhIye9wsclKwalpmEXmah2NSQM9pXJKRVGSlVI
         RGXsYBEZD+yhHyayctbSER1+9sw6MTGxXXbXbLCGr2CqWDIPIEYj67ceB7kqglIlT/EI
         dpYBaz1a5rsmcyz9gEV4ekWVJ+p953skSLvGkpYszoYvZ6tkhY25/4pYOU5DVqRsXz/8
         ktLABvJnqHmpGbZur8Fl++zwl6rlfoT8+dn1S5H+sG1Hf5/6o+JqDrX6Sbt0NW9bCgjH
         iY+l+chZQAdhH9Xni71hxh8GGmCev7Lzobo3b9+zQr3ASOna8FJlyPxCJcLkxb0s8M4R
         aLUA==
X-Gm-Message-State: AOJu0YzdJOEAS99wy/faxKSvZ5hUvq5BTswYGb6W+BzooadiFh9s3jEV
	2rh4LO3KEooNTYMrZSAVAMCxpQ==
X-Google-Smtp-Source: AGHT+IFzZGyrSX4bCvvYPaMFtrc5/5C2CQegRX6eJpmjL60TzO3nh2cFdtwYMUQ8abYyMq08g1gEfA==
X-Received: by 2002:a05:6359:2e88:b0:168:dc03:5b90 with SMTP id rp8-20020a0563592e8800b00168dc035b90mr9214497rwb.23.1698270932278;
        Wed, 25 Oct 2023 14:55:32 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:f0fe:5c3b:1d70:d0bb])
        by smtp.gmail.com with ESMTPSA id w14-20020a63160e000000b005b8ebef9fa0sm2994943pgl.83.2023.10.25.14.55.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 14:55:31 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 7/7] arm64: dts: mt8183: Add jacuzzi pico/pico6 board
Date: Wed, 25 Oct 2023 14:48:49 -0700
Message-ID: <20231025215517.1388735-8-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231025215517.1388735-1-hsinyi@chromium.org>
References: <20231025215517.1388735-1-hsinyi@chromium.org>
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
index 000000000000..a2e74b829320
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
+		piins-bt-wakeup {
+			pinmux = <PINMUX_GPIO42__FUNC_GPIO42>;
+			input-enable;
+		};
+	};
+
+	bt_pins_reset: bt-pins-reset {
+		pins-bt-reset {
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


