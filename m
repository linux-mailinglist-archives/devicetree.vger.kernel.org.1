Return-Path: <devicetree+bounces-11101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2B77D439C
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 02:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90CB8B20E71
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 00:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36C417EC;
	Tue, 24 Oct 2023 00:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="P7SEjy8r"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F0CEBB
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:07:34 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2B0710C
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:07:32 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1c434c33ec0so24357165ad.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698106052; x=1698710852; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P/cqlLo1xMu6vyNWnJHXRu9HX9PDmOzSMx42M7GKBk4=;
        b=P7SEjy8rShTQ9tKrWrt3Ka6aQZrN2D2sFhA6Tq5QLHKXd0FWyfuT8gBpMTW/RE7yEA
         nQ1AUGy54mciQGH95XQIAR/FlRNtN8x298guJ2QHcklXTW47MyYBoZLxvm66UczWgffg
         71KeNTPVnBtCI4trNAWhgye9u5p3NSL9MNE1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698106052; x=1698710852;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P/cqlLo1xMu6vyNWnJHXRu9HX9PDmOzSMx42M7GKBk4=;
        b=Z8HxUJkEG6Lq8i9Q569+zTudyjJqUuGYxFLBZG7NiXOwaPtNP0BvzCDRQ1u3SQF/6f
         qonXNwLrscHOL1mc3BRQH+g8Rp2DI+L4R3QyGJYkJ3rysabEx0gF5Gguj0WgZgxeuN/2
         W6x+L/OY+m/Su3LTLa5a3ZBKI2nEWAs2bKdBtZZgWtzVDF8Zj6uXkL6YUQYQT4OyTmJX
         bYiH+a0MaJvcjL54KTYXi+vE+HHQiGuEftBqeWVqcmeXZZ6/48v1mtQ+qK3Tw+k083Mm
         uGlEfxNBxDgCrEtvH+DvmXrCSjTTrXs3X6rpo+9MGimf+IFzz0GP9FsTGvqeu64Jug+N
         sJYA==
X-Gm-Message-State: AOJu0YxepxItwR81WbGhGQh+jyi8LBHwxWBXvbMB/IXbrigQ7bVFwVx2
	KQgNgmErKbMICfgQh/G15MXrhg==
X-Google-Smtp-Source: AGHT+IFT8y4oceUEuy0SEQ+ul3MihnsSlfHCilt0mzADZwMzgUKtHOU072RmvvZwuEF1XYCziybQyA==
X-Received: by 2002:a17:903:28cd:b0:1c3:5f05:922a with SMTP id kv13-20020a17090328cd00b001c35f05922amr7136070plb.60.1698106052413;
        Mon, 23 Oct 2023 17:07:32 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:5a2d:c345:7f3f:d26c])
        by smtp.gmail.com with ESMTPSA id a10-20020a170902ecca00b001c5dea67c26sm6505510plh.233.2023.10.23.17.07.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 17:07:32 -0700 (PDT)
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
Subject: [PATCH 2/6] arm64: dts: mt8183: Add kukui katsu board
Date: Mon, 23 Oct 2023 17:02:25 -0700
Message-ID: <20231024000724.57714-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231024000724.57714-1-hsinyi@chromium.org>
References: <20231024000724.57714-1-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

kodama is also known as ASUS Chromebook Detachable CZ1.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 .../dts/mediatek/mt8183-kukui-katsu-sku38.dts | 44 +++++++++++++++++++
 .../boot/dts/mediatek/mt8183-kukui-katsu.dts  | 40 +++++++++++++++++
 2 files changed, 84 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu.dts

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
new file mode 100644
index 000000000000..491d04692432
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
@@ -0,0 +1,44 @@
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
+	compatible = "google,katsu-sku38", "mediatek,mt8183";
+};
+
+&i2c0 {
+	status = "okay";
+
+	/delete-node/touchscreen@10;
+	touchscreen1: touchscreen@5d {
+		compatible = "goodix,gt7375p";
+		reg = <0x5d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&open_touch>;
+
+		interrupt-parent = <&pio>;
+		interrupts = <155 IRQ_TYPE_LEVEL_LOW>;
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
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu.dts
new file mode 100644
index 000000000000..595b0afdb2db
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu.dts
@@ -0,0 +1,40 @@
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
+	compatible = "google,katsu", "mediatek,mt8183";
+};
+
+&i2c0 {
+	status = "okay";
+
+	/delete-node/touchscreen@10;
+	touchscreen1: touchscreen@5d {
+		compatible = "goodix,gt7375p";
+		reg = <0x5d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&open_touch>;
+
+		interrupt-parent = <&pio>;
+		interrupts = <155 IRQ_TYPE_LEVEL_LOW>;
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
-- 
2.42.0.758.gaed0368e0e-goog


