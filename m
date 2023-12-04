Return-Path: <devicetree+bounces-21227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E364E802D6E
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0902D1C209FC
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 08:42:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 168D0EAE3;
	Mon,  4 Dec 2023 08:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Wd0Z6rGN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B76C10E5
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 00:42:41 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1d045097b4cso13477265ad.0
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 00:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701679361; x=1702284161; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jy3wE8QoVFuCdeDjxGiH3OX0Xt5eOjHqlvzeLRn8ddk=;
        b=Wd0Z6rGNjRc9b4hUcNXqx9IQ++ziTaJhH8JU1uXF8xegGMMzg+InCmkYSuq6SM0Uzv
         DNuCUWuFXuCDE2/bCzHmks5zfxZfrF5hxwtJidrknHE/7pEMsJ9qnJH9psyEmpEsGKHf
         a4jYNBvBRRS72MiI6hvF9N1wr0jfXjf+1tTHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701679361; x=1702284161;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jy3wE8QoVFuCdeDjxGiH3OX0Xt5eOjHqlvzeLRn8ddk=;
        b=OAc0PyIW5+BXXgMFGdknCTBNmS/FtkUY9aiEXzxSZniZs6jLXMaAG1Og2Zce2cQmwB
         isoxaCz2G5Zw1QeUtecfxKrTlkxeqpbGlknIBzRWh63f8boTPn+Tnewg5M/6mbE3V/93
         BUxmq9jzp3jeeJKCq3GTNppEAedIx5anAz07NMuTQOKj1lvyk28egHtBG6LOuij00Teh
         LcbfS+7/IXt/q6Sj/N8tFNNzjLAAtCUvK9eWjeJ+/kbBlySkTJ9GHO/fuBp1OhBfAT/4
         rEnsf7LjCITyXsEcsFnxd3yf9K9VLsxq24uzzLFngggHuuHAf1Xt0s8q44QYXKjNipp5
         J6bw==
X-Gm-Message-State: AOJu0YwQ0CBcqO5a2kFffKJyDDYMqCIFViRUq4JWZa3lw3NScqkQxV8c
	0vFqQ/prfw4YUg0psd3Af/+VZQ==
X-Google-Smtp-Source: AGHT+IEPGBPJ8kYyNF14VJdYMjPUal8vsvhVNFDhDwyTws8/JnGl7oITwY5R9dTBjQ+Tb0w+uP12tA==
X-Received: by 2002:a17:903:1104:b0:1d0:8876:7082 with SMTP id n4-20020a170903110400b001d088767082mr961866plh.72.1701679360934;
        Mon, 04 Dec 2023 00:42:40 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6084:72e2:9ac2:f115])
        by smtp.gmail.com with ESMTPSA id p14-20020a1709028a8e00b001cfc3f73927sm7871795plo.9.2023.12.04.00.42.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 00:42:40 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 9/9] arm64: dts: mediatek: Add MT8186 Magneton Chromebooks
Date: Mon,  4 Dec 2023 16:40:11 +0800
Message-ID: <20231204084012.2281292-10-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231204084012.2281292-1-wenst@chromium.org>
References: <20231204084012.2281292-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add entries for the MT8186 based Chromebooks, also collectively known
as the Lenovo IdeaPad Slim 3 Chromebook (14M868). It is also based on
the "Steelix" design. Being a laptop instead of a convertible device,
there is no stylus, which is similar to Rusty. However Magneton does
not have ports on the right side of the device.

Three variants are listed separately. These use different touchscreen
controllers, or lack a touchscreen altogether.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v2:
- Picked up Conor's ack

Changes since v1:
- Reorder SKU numbers in descending order.
- Mark missing components as disabled instead of deleting the node
- Switched to interrupts-extended in touchscreen nodes
- Dropped reset-gpios from touchscreen nodes
- Drop status = "okay", which is the default

 arch/arm64/boot/dts/mediatek/Makefile         |  3 ++
 .../mt8186-corsola-magneton-sku393216.dts     | 39 +++++++++++++++++++
 .../mt8186-corsola-magneton-sku393217.dts     | 39 +++++++++++++++++++
 .../mt8186-corsola-magneton-sku393218.dts     | 26 +++++++++++++
 4 files changed, 107 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393216.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393217.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393218.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 6b05f1f2e645..7e365e9516ab 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -43,6 +43,9 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku32.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane-sku176.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-pumpkin.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393216.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393217.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393218.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-rusty-sku196608.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-steelix-sku131072.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-steelix-sku131073.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393216.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393216.dts
new file mode 100644
index 000000000000..c9673381ad3b
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393216.dts
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2022 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-steelix.dtsi"
+
+/ {
+	model = "Google Magneton board";
+	compatible = "google,steelix-sku393219", "google,steelix-sku393216",
+		     "google,steelix", "mediatek,mt8186";
+	chassis-type = "laptop";
+};
+
+&gpio_keys {
+	status = "disabled";
+};
+
+&i2c1 {
+	touchscreen@10 {
+		compatible = "hid-over-i2c";
+		reg = <0x10>;
+		interrupts-extended = <&pio 12 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&touchscreen_pins>;
+		vdd-supply = <&pp3300_s3>;
+		post-power-on-delay-ms = <350>;
+		hid-descr-addr = <0x0001>;
+	};
+};
+
+&touchscreen {
+	status = "disabled";
+};
+
+&usb_c1 {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393217.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393217.dts
new file mode 100644
index 000000000000..28e3bbe56421
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393217.dts
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2022 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-steelix.dtsi"
+
+/ {
+	model = "Google Magneton board";
+	compatible = "google,steelix-sku393220", "google,steelix-sku393217",
+		     "google,steelix", "mediatek,mt8186";
+	chassis-type = "laptop";
+};
+
+&gpio_keys {
+	status = "disabled";
+};
+
+&i2c1 {
+	touchscreen@40 {
+		compatible = "hid-over-i2c";
+		reg = <0x40>;
+		interrupts-extended = <&pio 12 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&touchscreen_pins>;
+		vdd-supply = <&pp3300_s3>;
+		post-power-on-delay-ms = <450>;
+		hid-descr-addr = <0x0001>;
+	};
+};
+
+&touchscreen {
+	status = "disabled";
+};
+
+&usb_c1 {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393218.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393218.dts
new file mode 100644
index 000000000000..332894218f07
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-magneton-sku393218.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2022 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-steelix.dtsi"
+
+/ {
+	model = "Google Magneton board";
+	compatible = "google,steelix-sku393221", "google,steelix-sku393218",
+		     "google,steelix", "mediatek,mt8186";
+	chassis-type = "laptop";
+};
+
+&gpio_keys {
+	status = "disabled";
+};
+
+&touchscreen {
+	status = "disabled";
+};
+
+&usb_c1 {
+	status = "disabled";
+};
-- 
2.43.0.rc2.451.g8631bc7472-goog


