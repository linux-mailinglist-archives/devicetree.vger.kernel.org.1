Return-Path: <devicetree+bounces-11462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DE57D5D2B
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:26:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C565CB21073
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A723F4CA;
	Tue, 24 Oct 2023 21:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lcbblh6g"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9196B3D967
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:26:32 +0000 (UTC)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 579CE10CF
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:30 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1ca215cc713so31621125ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698182789; x=1698787589; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BqBvSMG9LTmSH1Vb3PwfGl/Hx8UtacJHo7vM+y24jyY=;
        b=lcbblh6g6BqrBQjQBFk+OaqJT8mJH3wUD0OK3i1l0QIIomAKVN+JG1ZPwOzjqERwpg
         M0QQRu2BA2vhgrPGWo+I872+1NbHkivo7s0Ad4iheuZvUuBYt774Iqsrr5BscqTxO4rX
         YB8h4k+BJbhEDXMxO+vQOaxgo3a6MxqfaXqYc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698182789; x=1698787589;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BqBvSMG9LTmSH1Vb3PwfGl/Hx8UtacJHo7vM+y24jyY=;
        b=nftCLKyfiYZcJg90Kbv+E/H2EdtUa6YKyCw29BeFPIDUg8n9cX/P0kUWWvSon5ZuOr
         tr0E3ab1A8gBKajOYeNojC23QdMWhTJXQdFkg6QBDywJQy0tf9gRJHe/+4LVPD7vVlcR
         yj1ewkcktO5fHfGZVtO4+RtYa91abIxag8FOobnrcljzFM5fAJAciY9ioprpn6f64S2j
         RTsVxdQzRbo18FC/pRpAXRgAdC+o13A1Jsj6qKqzrXbHSPM2tjSB92Oh1zDfQ84wH91t
         /CjY3s7/ak0/JFhOsjYTtxCMjbdVRfPBy/UXuxsgCb2w+rN4ANNjAbVZIqjlELUkBKLi
         t5EA==
X-Gm-Message-State: AOJu0YzUEI6x5gw8SF83G6wvuLFEj/bNyQbfwBZIbHDdlPGaYvicPj7z
	3ifUs5db2lThpqXvP6YoK48/lg==
X-Google-Smtp-Source: AGHT+IH1AW8JAq39x7E1ngbf71f9Pwodg3WjGm0Awfz9epIcu+y26PSLY2m+wi3/GSrVAhY8uKMlSQ==
X-Received: by 2002:a17:902:d2c9:b0:1c4:3294:74ca with SMTP id n9-20020a170902d2c900b001c4329474camr11326207plc.17.1698182789628;
        Tue, 24 Oct 2023 14:26:29 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:5a2d:c345:7f3f:d26c])
        by smtp.gmail.com with ESMTPSA id p9-20020a170902e74900b001b850c9d7b3sm7824140plf.249.2023.10.24.14.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 14:26:29 -0700 (PDT)
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
Subject: [PATCH v2 5/7] arm64: dts: mt8183: Add jacuzzi makomo board
Date: Tue, 24 Oct 2023 14:22:27 -0700
Message-ID: <20231024212618.1079676-6-hsinyi@chromium.org>
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

makomo is also known as Lenovo 100e Chromebook 2nd Gen MTK 2.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
v1->v2: fix node names.
---
 arch/arm64/boot/dts/mediatek/Makefile         |  2 ++
 .../mt8183-kukui-jacuzzi-makomo-sku0.dts      | 25 +++++++++++++++++++
 .../mt8183-kukui-jacuzzi-makomo-sku1.dts      | 25 +++++++++++++++++++
 3 files changed, 52 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index a13419e67e8e..1b85a8c12850 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -32,6 +32,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-fennel14-sku2.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-juniper-sku16.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-kappa.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-kenzo.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-makomo-sku0.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-makomo-sku1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-willow-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-willow-sku1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kakadu.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts
new file mode 100644
index 000000000000..39276f57fd01
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi-fennel.dtsi"
+#include "mt8183-kukui-audio-da7219-rt1015p.dtsi"
+
+/ {
+	model = "Google makomo sku0 board";
+	chassis-type = "laptop";
+	compatible = "google,makomo-rev4-sku0", "google,makomo-rev5-sku0",
+		     "google,makomo", "mediatek,mt8183";
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_FENNEL14";
+};
+
+&mmc1_pins_uhs {
+	pins-clk {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts
new file mode 100644
index 000000000000..21d2dcd15c03
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi-fennel.dtsi"
+#include "mt8183-kukui-audio-ts3a227e-rt1015p.dtsi"
+
+/ {
+	model = "Google makomo sku1 board";
+	chassis-type = "laptop";
+	compatible = "google,makomo-rev4-sku1", "google,makomo-rev5-sku1",
+		     "google,makomo", "mediatek,mt8183";
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_FENNEL14";
+};
+
+&mmc1_pins_uhs {
+	pins-clk {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+};
-- 
2.42.0.758.gaed0368e0e-goog


