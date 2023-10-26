Return-Path: <devicetree+bounces-12249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC827D88C5
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:14:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A402B1C20F53
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 425933B2B4;
	Thu, 26 Oct 2023 19:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="U5ncsxII"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5186F3B28E
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:13:53 +0000 (UTC)
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5B001AE
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:13:51 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-27d0e3d823fso1024854a91.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698347631; x=1698952431; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CAO4Vq2lAtqVduwbRFXBpJqHTTi1hnz8FUzyO8B5YMU=;
        b=U5ncsxIIQ7I63EVCJ++TKou2vMoNeROB92U+KC/FJWxC4MhukOVXpPfBW68WBEsUpz
         PlPoUyW1TV484mp8YBzKpxMEnpRnuISK/SU/0/mtf8tBskl7eY7xyJpkwmsavObo84Jw
         hrR2rB1+i5Hh1Ev0n6nmJ01+cfSmWxDiipZDw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698347631; x=1698952431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CAO4Vq2lAtqVduwbRFXBpJqHTTi1hnz8FUzyO8B5YMU=;
        b=ojbrrqPU6lRL89Ilo3uukisOfR63w7Sn5X0reHrl4Q05U9jS3IAXWcAclCBNgaXDFM
         Y6GQk06g40P3isUmjjcAIxU/6fo8gDarptwmhX6h9aGKTLOpYmhJwAO9F/Xi6W875EDp
         zFQCZQE1TtKVdVDnyfC8YL4o6wNIRzhzqbY6gHa1XIi9aAsXP1jPCjEWbrqHMxzKmXQh
         SLg76+byjGNrXYCuFPOiXLkAq7EmlsSHac7pxVtdKPnVFur28wnMSFAMAUwVCnEGg9tg
         4d+Qb5bkg6mLWhErYnWdEuhpjk1V6Ca19SqbiWBSk+2s2YF6X2g7g7pJYyVQJgS/I9bB
         sHdg==
X-Gm-Message-State: AOJu0Ywo5gaHNamF2n89M8RO7XZy3U8mIsgg0WFiQsRdq33gq61d+8Ii
	sVX7Wxr24C1D74LtgkLtGPLa0g==
X-Google-Smtp-Source: AGHT+IE6uCrGdUzHI14GAQsOlabr/a7U4b+OoiEvBWYCgy4ZHcU/W16zsfazUOqGXXykfy7jnZB7rA==
X-Received: by 2002:a17:90a:db92:b0:280:e0:9071 with SMTP id h18-20020a17090adb9200b0028000e09071mr520259pjv.28.1698347631047;
        Thu, 26 Oct 2023 12:13:51 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:f0fe:5c3b:1d70:d0bb])
        by smtp.gmail.com with ESMTPSA id 22-20020a17090a031600b0027476c68cc3sm2183639pje.22.2023.10.26.12.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 12:13:50 -0700 (PDT)
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
Subject: [PATCH v4 3/7] arm64: dts: mt8183: Add kukui katsu board
Date: Thu, 26 Oct 2023 12:09:12 -0700
Message-ID: <20231026191343.3345279-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.820.g83a721a137-goog
In-Reply-To: <20231026191343.3345279-1-hsinyi@chromium.org>
References: <20231026191343.3345279-1-hsinyi@chromium.org>
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
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8183-kukui-kakadu-sku22.dts    | 18 +++++++++
 .../boot/dts/mediatek/mt8183-kukui-kakadu.dts | 18 +++++++++
 .../dts/mediatek/mt8183-kukui-kakadu.dtsi     | 14 +------
 .../dts/mediatek/mt8183-kukui-katsu-sku32.dts | 36 +++++++++++++++++
 .../dts/mediatek/mt8183-kukui-katsu-sku38.dts | 40 +++++++++++++++++++
 6 files changed, 115 insertions(+), 13 deletions(-)
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
index a23543d7a11e..b6a9830af269 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
@@ -63,18 +63,6 @@ &bluetooth {
 
 &i2c0 {
 	status = "okay";
-
-	touchscreen: touchscreen@10 {
-		compatible = "hid-over-i2c";
-		reg = <0x10>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&open_touch>;
-
-		interrupts-extended = <&pio 155 IRQ_TYPE_EDGE_FALLING>;
-
-		post-power-on-delay-ms = <10>;
-		hid-descr-addr = <0x0001>;
-	};
 };
 
 &mt6358_vcama2_reg {
@@ -383,5 +371,5 @@ &qca_wifi {
 
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
2.42.0.820.g83a721a137-goog


