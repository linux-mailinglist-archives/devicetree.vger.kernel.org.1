Return-Path: <devicetree+bounces-18858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD237F8D96
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 20:05:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 46AC7B21065
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 19:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C35D2EAF9;
	Sat, 25 Nov 2023 19:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="mST2b1mM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95B19F7
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:43 -0800 (PST)
Received: by mail-il1-x133.google.com with SMTP id e9e14a558f8ab-35c7cacb0d8so3486055ab.0
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939143; x=1701543943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DvuwrCeF04BFFkMvqZ1QiR2hthL4MoPo0rmlb95gpko=;
        b=mST2b1mM6KjnPRcRSCEDuipTc+S8A4DsySMTdMLbZl0ynz96rYi2p/UpdXcEbO4zj4
         oxKF6VgBJdJyJ2WZxnXnsEnlLXW5ifrM6z2HPlX3m5vobnUReN0W7M4CL5i5yNIz20Lq
         K7U/eWB8V+u6BgEGEdL3UEFu1hRv1kgYxOtTqJBAOt+IToKntYzx4xvPF9QCPdsgUP4J
         4tla7rohoV/bdwylANZoGNI9ajNn2wJC5qtt99Pmaim/9hQv2fGkFa6BLxBMQGqxnzeR
         AOHQNMOW/uQqInw0zaW0Kf3xwFfwpMHXSSh6uRejXl3Ef4GvUiBx6FZF1mZUQixDY9to
         vJTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939143; x=1701543943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DvuwrCeF04BFFkMvqZ1QiR2hthL4MoPo0rmlb95gpko=;
        b=Fj9CpVBvd+IWoDUwY60mf/ct4uNqN7UtO7Y0RcOo8Ql/IPRMxlqWxWfwzaAJDcsNgj
         V3m3D37r8V5kMnbZ/ZmubkrQq5NUVesl8Qv0tmqbJya//Mh3wUy7oFjLHfMAHAVn8xWG
         FISxz90o1Os8+5qE0Qz++Kv5ehitjhN4Z/tIX/V7POhb/fOyyXxc6Es/AvX7Z6n+S0mo
         A88bpkWQIj87YZfxVKclWJn0RAgXM3i2bt5nCT6cGSDIT9bu9Dk3JRC6rEB+oq7HNP2b
         26soKJ4Y8Yzd+Iz7GQiQVw/+0X8plC0+nkG+4edBiIsHRdtSjITZDjj4ZmaPEp3a4ofH
         7F2Q==
X-Gm-Message-State: AOJu0Yw8yI6aETvkFhK7HpilXqg/7mHRF9/88CC4HAblR+fF4YsbqjYy
	+1UY2s5oU7TJ5m1z2ToSxeOBVQ==
X-Google-Smtp-Source: AGHT+IH471zsp9ZCfqzQCm6FnhQAVF2Z8L8x/RKYC5P0dSeO1A/wBrLIAQr4jlQsEm/JhKbjuhAzYQ==
X-Received: by 2002:a92:cdab:0:b0:35b:112e:60d2 with SMTP id g11-20020a92cdab000000b0035b112e60d2mr10185882ild.22.1700939141463;
        Sat, 25 Nov 2023 11:05:41 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:40 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 04/10] arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
Date: Sun, 26 Nov 2023 00:35:16 +0530
Message-Id: <20231125190522.87607-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
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
Changes for v2:
- none

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


