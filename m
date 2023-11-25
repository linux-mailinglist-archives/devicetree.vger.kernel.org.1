Return-Path: <devicetree+bounces-18808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A76F7F8BC8
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:40:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DE8D2815CD
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:40:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 497291F5E6;
	Sat, 25 Nov 2023 14:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="wJZbB029"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 080A9C6
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:38 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-5bd6ac9833fso1701115a12.0
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923237; x=1701528037; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NzlBnLufD7oVNcRvY6JWcDhMriiui9QvM7K18mFiWxk=;
        b=wJZbB029a8/GFfdrBdvGj7eKqAco4FMCbCxjBW5ZtWULCNOSHPTkT4df5aOopC63Uw
         DuTY5ki89uYzdQrBThNVXyevMk0sg5wdEuceHnjHRiOp92UCGf6Ia8ZCKSqt7JzaSkJb
         7GowCTxiQtzvMJeGryx9yCPJbwWBUS2t9R6VQ1auAccYYsbx9X7HSNQfoGVReczWeTLI
         JEZHG5bg+k5IovVeUs+Qn14/UpMseYjzkB8OAPpRccoBLEk3DPe4RsNbjDo/wVWL2NsC
         T2jCognh/YOI9w5LIf2E93/J+NI11C+i6ow1BusFRCZdpX/MTy0h+9Ye8Bd9VHgWcdou
         OJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923237; x=1701528037;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NzlBnLufD7oVNcRvY6JWcDhMriiui9QvM7K18mFiWxk=;
        b=sCdSiJsfb7DOuHNY35WuXrjjJX2qGBcHkMyNdQ9SmVvx7zUvvXqb8WpV3f9ayqFNeJ
         +ZTVsm+bwK//R4SMX9g7irvO/wHjZRSmJf1EFddJZqqzCeguKtrxcbAj0JDnM92UnFGu
         3oxrdgBWpNOzWj22g9gfOzpbWVZ6s1v/wCPZ087W/F//5V8qic6famf6zmW1HArXsn/U
         S2aEg2wD2FagePQ12YAfhmuV2ohmTfH/0XxsO/J3UwYV6PvVDDQB2aYDcfr2TMkCXwTC
         QdmhFrOcgd9k6yKeyahXqyoqVv+hOgqbfWdEHO99pMxO6ZrYPfhT8pq1ArL0HoKuWqmz
         6VzA==
X-Gm-Message-State: AOJu0YxJK1wFAqc+1/Mn+ZUny6FVNzKv4OmIaSvLzzQvf3SUgxVcHxPl
	y9z7YsI622hIF6Z5JyhsIbeCFOzOyAM4ssCw/HVKyw==
X-Google-Smtp-Source: AGHT+IGUpx2dWwwIti3/hitS3s5W0kZRx0FGyaL5LsZeccvgh+YQXkgHvKMCz7C8b4W9uHNPBzOZJg==
X-Received: by 2002:a17:90b:3c2:b0:285:772b:91a3 with SMTP id go2-20020a17090b03c200b00285772b91a3mr6280913pjb.27.1700923237448;
        Sat, 25 Nov 2023 06:40:37 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:37 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 04/10] arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
Date: Sat, 25 Nov 2023 20:10:06 +0530
Message-Id: <20231125144012.58668-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble NCM6A SOM has on-module M.2 1216-compatible WiFi modules.

Currently, AW-XM548NF WiFi6 and Intel 8260D2W WiFi5 modules are supported.

WiFi modules are fixed on SoM, not pluggable M.2 slots, so different SoM's
for each type of WiFi module.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../rockchip/rk3588-edgeble-neu6a-wifi.dtso   | 56 +++++++++++++++++++
 2 files changed, 57 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index f969618da352..543a2f68b654 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -100,6 +100,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso
new file mode 100644
index 000000000000..e9a3855e8752
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ *
+ * DT-overlay for Edgeble On-SoM WiFi6/BT M.2 1216 modules,
+ * - AW-XM548NF
+ * - Intel 8260D2W
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&{/} {
+	vcc3v3_pcie2x1l1: vcc3v3-pcie2x1l1-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>; /* WIFI_3V3_EN */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie2_1_vcc3v3_en>;
+		regulator-name = "vcc3v3_pcie2x1l1";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&combphy2_psu {
+	status = "okay";
+};
+
+/* WiFi6 */
+&pcie2x1l1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_1_rst>;
+	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>; /* PCIE20_2_WIFI_PERSTn */
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l1>;
+	status = "okay";
+};
+
+&pinctrl {
+	pcie2 {
+		pcie2_1_rst: pcie2-1-rst {
+			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie2_1_vcc3v3_en: pcie2-1-vcc-en {
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.25.1


