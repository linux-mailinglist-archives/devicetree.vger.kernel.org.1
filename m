Return-Path: <devicetree+bounces-12017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A607D772D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:55:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09B151C20E3F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:55:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6B5637156;
	Wed, 25 Oct 2023 21:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SSVEzoZi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1C035888
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:55:29 +0000 (UTC)
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 531CCB9
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:28 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6b497c8575aso215722b3a.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698270928; x=1698875728; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sEfKy8RhyGOVxHTIJDdIS07Ad83fgC8FjysuvnSTTyQ=;
        b=SSVEzoZipkCvK7cYtWO98FWFa/+7dndz9SF7DBrv+Qpv/SBJEdZzR+y8rshSXMHWaA
         QuxWbXfToZykqr8PV0P00IFw1K+R8aNX7qLN1FPM8Iy8/wMlPjjDJoZ306yrkVhTexPn
         t8wF1P8QSQmygRqLXX7J3b4HIyjz8402LU0hs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698270928; x=1698875728;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sEfKy8RhyGOVxHTIJDdIS07Ad83fgC8FjysuvnSTTyQ=;
        b=txgahAnLv+ueHA1On3iiAxRpReWFVbGHjz6gcTb9wWz5gHofDv8Aga28AIeDZRjJgI
         kacxDmwR0EiCMSh9LAgHN23KWaniZ9o7v/lbs4F3O7C/iK/qLJ8n/TAaPb0IOxgTBvep
         An4b4ByKsAPAbujkmdcmIWl6S/JMUtLepdZrHKCrCeFfy0atr9WZ2ud4tldVr3mcZdDY
         6ghA2YB5tzdchQYW4Rd9qNdH9sBFesgVdBTHdABdgNvEmD6Jhf7wKIc41etvYTzZc3wp
         H4FcB6x8GMU5ppEnWsoOs8fTd/lJQcO8JlBSaahoEfDpzNvJ89jdw+z9JeJ5AI0Rr4uz
         OeJA==
X-Gm-Message-State: AOJu0YwQp9qduq+RC//cl4tfWjh/DPc5/EyiLN77+w/sUVYQABJOLcCd
	4I6CGcViNakMBIuJndaP3OstWw==
X-Google-Smtp-Source: AGHT+IGObdYqsckT2K8tu/eeMqz6oQlt3HNCIlHe6QNro0NHPg1bmfQIxcUK7yTgLmIgfT5+VxiQfQ==
X-Received: by 2002:a05:6a21:4841:b0:172:9b19:66b6 with SMTP id au1-20020a056a21484100b001729b1966b6mr6706548pzc.32.1698270927727;
        Wed, 25 Oct 2023 14:55:27 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:f0fe:5c3b:1d70:d0bb])
        by smtp.gmail.com with ESMTPSA id w14-20020a63160e000000b005b8ebef9fa0sm2994943pgl.83.2023.10.25.14.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 14:55:27 -0700 (PDT)
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
Subject: [PATCH v3 3/7] arm64: dts: mt8183: Add kukui katsu board
Date: Wed, 25 Oct 2023 14:48:45 -0700
Message-ID: <20231025215517.1388735-4-hsinyi@chromium.org>
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

katsu is also known as ASUS Chromebook Detachable CZ1.

Let katsu and kakadu set its own touchscreen and panel compatible. Remove
these setting from the common dtsi for readability.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
v2->v3: clean up panel and touchscreen.
---
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8183-kukui-kakadu-sku22.dts    | 18 +++++++++
 .../boot/dts/mediatek/mt8183-kukui-kakadu.dts | 18 +++++++++
 .../dts/mediatek/mt8183-kukui-kakadu.dtsi     | 15 +------
 .../dts/mediatek/mt8183-kukui-katsu-sku32.dts | 36 +++++++++++++++++
 .../dts/mediatek/mt8183-kukui-katsu-sku38.dts | 40 +++++++++++++++++++
 6 files changed, 115 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index e6e7592a3645..a13419e67e8e 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -36,6 +36,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-willow-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-willow-sku1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kakadu.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kakadu-sku22.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-katsu-sku32.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-katsu-sku38.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku16.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku272.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku288.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu-sku22.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu-sku22.dts
index fcce8ea1232e..1ecf39458d93 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu-sku22.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu-sku22.dts
@@ -14,6 +14,24 @@ / {
 		     "google,kakadu", "mediatek,mt8183";
 };
 
+&i2c0 {
+	touchscreen: touchscreen@10 {
+		compatible = "hid-over-i2c";
+		reg = <0x10>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&open_touch>;
+
+		interrupts-extended = <&pio 155 IRQ_TYPE_EDGE_FALLING>;
+
+		post-power-on-delay-ms = <10>;
+		hid-descr-addr = <0x0001>;
+	};
+};
+
+&panel {
+	compatible = "boe,tv105wum-nw0";
+};
+
 &sound {
 	compatible = "mediatek,mt8183_mt6358_ts3a227_rt1015p";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dts
index ebfabba72507..ba74109a4909 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dts
@@ -13,3 +13,21 @@ / {
 	compatible = "google,kakadu-rev3", "google,kakadu-rev2",
 			"google,kakadu", "mediatek,mt8183";
 };
+
+&i2c0 {
+	touchscreen: touchscreen@10 {
+		compatible = "hid-over-i2c";
+		reg = <0x10>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&open_touch>;
+
+		interrupts-extended = <&pio 155 IRQ_TYPE_EDGE_FALLING>;
+
+		post-power-on-delay-ms = <10>;
+		hid-descr-addr = <0x0001>;
+	};
+};
+
+&panel {
+	compatible = "boe,tv105wum-nw0";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
index a11adeb29b1f..b6a9830af269 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
@@ -63,19 +63,6 @@ &bluetooth {
 
 &i2c0 {
 	status = "okay";
-
-	touchscreen: touchscreen@10 {
-		compatible = "hid-over-i2c";
-		reg = <0x10>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&open_touch>;
-
-		interrupt-parent = <&pio>;
-		interrupts = <155 IRQ_TYPE_EDGE_FALLING>;
-
-		post-power-on-delay-ms = <10>;
-		hid-descr-addr = <0x0001>;
-	};
 };
 
 &mt6358_vcama2_reg {
@@ -384,5 +371,5 @@ &qca_wifi {
 
 &panel {
 	status = "okay";
-	compatible = "boe,tv105wum-nw0";
+	/* compatible will be set in board dts */
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
new file mode 100644
index 000000000000..05361008e8ac
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-kakadu.dtsi"
+#include "mt8183-kukui-audio-da7219-rt1015p.dtsi"
+
+/ {
+	model = "Google katsu board";
+	chassis-type = "tablet";
+	compatible = "google,katsu-sku32", "google,katsu", "mediatek,mt8183";
+};
+
+&i2c0 {
+	touchscreen1: touchscreen@5d {
+		compatible = "goodix,gt7375p";
+		reg = <0x5d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&open_touch>;
+
+		interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
+
+		reset-gpios = <&pio 156 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&lcd_pp3300>;
+	};
+};
+
+&panel {
+	compatible = "starry,2081101qfh032011-53g";
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_KATSU";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
new file mode 100644
index 000000000000..cf008ed82878
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-kakadu.dtsi"
+#include "mt8183-kukui-audio-rt1015p.dtsi"
+
+/ {
+	model = "Google katsu sku38 board";
+	chassis-type = "tablet";
+	compatible = "google,katsu-sku38", "google,katsu", "mediatek,mt8183";
+};
+
+&i2c0 {
+	touchscreen1: touchscreen@5d {
+		compatible = "goodix,gt7375p";
+		reg = <0x5d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&open_touch>;
+
+		interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
+
+		reset-gpios = <&pio 156 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&lcd_pp3300>;
+	};
+};
+
+&panel {
+	compatible = "starry,2081101qfh032011-53g";
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_KATSU";
+};
+
+&sound {
+	compatible = "mediatek,mt8183_mt6358_ts3a227_rt1015p";
+};
-- 
2.42.0.758.gaed0368e0e-goog


