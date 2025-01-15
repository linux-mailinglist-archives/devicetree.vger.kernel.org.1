Return-Path: <devicetree+bounces-138679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9EDA11B36
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 08:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2C8A3A9B6F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 07:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9CB28EC62;
	Wed, 15 Jan 2025 07:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b="x4DHllQg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBBC236A87
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 07:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736927052; cv=none; b=V2GifgNYudYpw6SidE9drS4IR05APYKEr7d3teucVMiPJQ1ksFhEboJSQWj9sL3llkAjzN3Aw3n3ZnjPWvODJFdbROTMRa/U9ijOYt4qeouDHt6AEKx/acDk7fQf9MchdIMmhatr4o2R65RrtWLGQMyJrNyfikPjcDW4gKw6GEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736927052; c=relaxed/simple;
	bh=xgFEOHhyTXycUkRi65Eww7YQ5BY7+zt0b7RDW0dNem4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W+C+uUWgrvxIjXlI3EcHaBnDfnmBHBuEREAeO0p/rLgZXnwgNGf4Bm6cB7pdJMJvVFfCZaFeAaDte6ca5atFGpp4uZAsKXZIGJHeOx2oXVQlsGr0Koc6lb0wcJnRKVX2mj1Y8kB1DVKJakfgviqK9pP08rtrgw2dMC9zEuU6CLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com; dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b=x4DHllQg; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-21644aca3a0so140676675ad.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 23:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pegatron-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1736927048; x=1737531848; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KBzdP99yV3ZxCwnGo2sE7OX1HCuNFPynfYdsPZrFS/k=;
        b=x4DHllQgwly5D3ie+tjAc+QPuS5drCRSQ4v6q9kCnFbhRdRLRmlEsyhMOX0utKkRco
         V2tcEuPWlSIuuTNJZtFE/US9k+weEZ85vj7MehXtPYqelPfp3b1U40n3hkBE+h53fset
         QtiKj7X0n7BZVmWTIHao8x2+fIQ+BDlOA+KA6119L7pYiQlaYoWlbhAsLEgMmJe4z06R
         XH0JH+5IByDk49bSGMqwlQOdBsQFCpk+pgnvsQwMdHucH8+HLQ/rjBPgV0SdLtcetiiW
         e1SoBmeVpK2Ys/3bcN3/aDCtw1cICzQfW2+BbbyXUqv6yJoTA9cwVSO1JjbrkprNiY9S
         qhPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736927048; x=1737531848;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KBzdP99yV3ZxCwnGo2sE7OX1HCuNFPynfYdsPZrFS/k=;
        b=pV4nFwb5Hcnhq/QYiayGvdMKAdJuP9N2BRK2xzbyrVxswY5Y+TyoMUG9/xE4DDk76N
         I7/ADnvanAtKFvTcrq0IHtw82ufrsHiuvWTrCLy+tFFEFLglLUiGfTw9txbPlXHPvTf5
         3V3zrfVAf4AmeF2hti1qFFjLBktaWFcEF/ruseHMBfyMcjROrFV1aW+08Qt18xOO6kIn
         tLOwolfdwDIIL2Zok9NqeOFO2w6hbOeoetZB4G8l3YRIKjeNiIqO9sOC+tDdbCDPZDLS
         BaoDXZr6xbolc9yx+zhf/qnP5QAtiYzBZXsOQRUIPgXepU5QYAjHzKeqXrk18mRp90Pc
         4+zg==
X-Gm-Message-State: AOJu0YyAMk4qHNjROAiQ8Z/nyqoCVfMbdEKbD8YwWJaRnMlDWq6NrZZf
	X8QEY9s+eE699pY6BIxZIGTE386kFH3R71+rx6SkWjbGJEzoG3mst7zVYrNDWFk=
X-Gm-Gg: ASbGncsXJ7GYZNNK1autBCxsaKLfvH8vrbXbM0jRFXm5AH5pytx4l9zAfOdTDTdXyCT
	Y45/EoIo+vJK4Zj95iBRatnYAhNyre2xyQqLWujmORnYPUFadGI+nqwGHeag5R5nfUe4dg3zspA
	D4YL31MHUTS9Q2fr9u+PHlsJEtHRqAHax0gAzkkujPfny3fi7bIf7Kxe0rXXzstYLLlvnzxowEK
	p4qTHnCFnnJtSMtsZOjoMMH3o6ysdlrVMGPcS2IFImzR4vWBaGjJaPXoFKyeUGkpys24l2k3TRY
	yGumUXf4B4gDNqQ2db5GcZTE8hgjG/bkqwZBoVYq2LY6tk9GmWi5kk9u1xQcxifNQGRwPvogmlY
	PCXT9EKoMoPyXArdC
X-Google-Smtp-Source: AGHT+IHxJYTMrcJUwmiV9sxWbdmBVkObu5KSmsI25YIzuCtHYnmnfHBaHATP9T7P49ge6j/aR2nDyA==
X-Received: by 2002:a05:6a20:7491:b0:1e1:a06b:375a with SMTP id adf61e73a8af0-1e88d0ddc82mr51120833637.35.1736927047711;
        Tue, 14 Jan 2025 23:44:07 -0800 (PST)
Received: from [127.0.1.1] (2001-b400-e25f-ed65-f855-8c86-b103-448b.emome-ip6.hinet.net. [2001:b400:e25f:ed65:f855:8c86:b103:448b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-a31d5047ea0sm9335482a12.58.2025.01.14.23.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 23:44:07 -0800 (PST)
From: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
Date: Wed, 15 Jan 2025 15:43:44 +0800
Subject: [PATCH 2/2] arm64: dts: mt8186: Add MT8186 Krabby platform based
 Skitty
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-skitty_kernel-v1-2-6ef2086858ba@pegatron.corp-partner.google.com>
References: <20250115-skitty_kernel-v1-0-6ef2086858ba@pegatron.corp-partner.google.com>
In-Reply-To: <20250115-skitty_kernel-v1-0-6ef2086858ba@pegatron.corp-partner.google.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 herbert1_wu@pegatron.corp-partner.google.com, 
 Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736927028; l=11366;
 i=geoffrey_chien@pegatron.corp-partner.google.com; s=20241216;
 h=from:subject:message-id; bh=xgFEOHhyTXycUkRi65Eww7YQ5BY7+zt0b7RDW0dNem4=;
 b=AjUW+fK2yzwazSwM+i9OJNDIJOdJ2TRCqbRPCjvo9HSpqO74liUTsS0Eg92Xnv3J/1bJmYiFF
 ecyieQcmAgGAzA6U+MlCFLB6E9baYPtNIRDVeAL6nB9s5j87sXKKC36
X-Developer-Key: i=geoffrey_chien@pegatron.corp-partner.google.com; a=ed25519;
 pk=P8X+ifKsuR9w8T8cIa35nudXKmZX6qk0iS+5EcuwtrU=

Skitty is MT8186 based Chromebook based on the Krabby design.

Skitty also known as the HP Chromebook G1m 11 inch. The device is
a clamshell laptop with an optional touchscreen and keyboard.

The SKU IDs of the Skitty devices map to different touchscreen and
keyboard.

This patch depends on patch "dt-bindings: arm: mediatek: Add MT8186 Skitty"

Signed-off-by: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
---
 arch/arm64/boot/dts/mediatek/Makefile              |  4 +
 .../dts/mediatek/mt8186-corsola-skitty-sku1.dts    | 92 +++++++++++++++++++++
 .../dts/mediatek/mt8186-corsola-skitty-sku2.dts    | 82 +++++++++++++++++++
 .../dts/mediatek/mt8186-corsola-skitty-sku3.dts    | 93 ++++++++++++++++++++++
 .../dts/mediatek/mt8186-corsola-skitty-sku4.dts    | 83 +++++++++++++++++++
 5 files changed, 354 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 8fd7b2bb7a1590341e7bb4ea1ecf039ae3e8eb0d..328e1ee444bd81b5a2aa3d21acb7a5c5a3318a87 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -59,6 +59,10 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393216.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393217.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393218.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-rusty-sku196608.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-skitty-sku1.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-skitty-sku2.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-skitty-sku3.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-skitty-sku4.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-steelix-sku131072.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-steelix-sku131073.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-tentacool-sku327681.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku1.dts
new file mode 100644
index 0000000000000000000000000000000000000000..d0f22888c14914aecc47351408f0fa2474d9ab3d
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku1.dts
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2024 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-krabby.dtsi"
+
+/ {
+	model = "Google Skitty board";
+	compatible = "google,skitty-sku1", "google,skitty", "mediatek,mt8186";
+	chassis-type = "laptop";
+};
+
+&keyboard_controller {
+	function-row-physmap = <
+		MATRIX_KEY(0x00, 0x02, 0)	/* T1 */
+		MATRIX_KEY(0x03, 0x02, 0)	/* T2 */
+		MATRIX_KEY(0x02, 0x02, 0)	/* T3 */
+		MATRIX_KEY(0x01, 0x02, 0)	/* T4 */
+		MATRIX_KEY(0x03, 0x04, 0)	/* T5 */
+		MATRIX_KEY(0x02, 0x04, 0)	/* T6 */
+		MATRIX_KEY(0x01, 0x04, 0)	/* T7 */
+		MATRIX_KEY(0x02, 0x09, 0)	/* T8 */
+		MATRIX_KEY(0x01, 0x09, 0)	/* T9 */
+		MATRIX_KEY(0x00, 0x04, 0)	/* T10 */
+	>;
+
+	linux,keymap = <
+		MATRIX_KEY(0x00, 0x02, KEY_BACK)
+		MATRIX_KEY(0x03, 0x02, KEY_REFRESH)
+		MATRIX_KEY(0x02, 0x02, KEY_ZOOM)
+		MATRIX_KEY(0x01, 0x02, KEY_SCALE)
+		MATRIX_KEY(0x03, 0x04, KEY_SYSRQ)
+		MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
+		MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
+		MATRIX_KEY(0x02, 0x09, KEY_MUTE)
+		MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
+		MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
+		CROS_STD_MAIN_KEYMAP
+	>;
+};
+
+&usb_c1 {
+	status = "disabled";
+};
+
+&target {
+	temperature = <76000>;
+};
+
+&i2c1 {
+	/delete-node/ touchscreen@10;
+	touchscreen: touchscreen@10 {
+		compatible = "elan,ekth3500";
+		reg = <0x10>;
+		interrupts-extended = <&pio 12 IRQ_TYPE_LEVEL_LOW>;
+		status = "okay";
+	};
+};
+
+&i2c2 {
+	touchpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		vcc-supply = <&pp3300_s3>;
+		wakeup-source;
+	};
+};
+
+&mmc1_pins_uhs {
+	pins-clk {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+
+	pins-cmd-dat {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+};
+
+&i2c_tunnel {
+	/delete-node/ sbs-battery@b;
+
+	battery: sbs-battery@f {
+		compatible = "sbs,sbs-battery";
+		reg = <0xf>;
+		sbs,i2c-retry-count = <2>;
+		sbs,poll-retry-count = <1>;
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku2.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku2.dts
new file mode 100644
index 0000000000000000000000000000000000000000..201195631d2411880a748bd46dbe4efb200002be
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku2.dts
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2024 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-krabby.dtsi"
+
+/ {
+	model = "Google Skitty board";
+	compatible = "google,skitty-sku2", "google,skitty", "mediatek,mt8186";
+	chassis-type = "laptop";
+};
+
+&keyboard_controller {
+	function-row-physmap = <
+		MATRIX_KEY(0x00, 0x02, 0)	/* T1 */
+		MATRIX_KEY(0x03, 0x02, 0)	/* T2 */
+		MATRIX_KEY(0x02, 0x02, 0)	/* T3 */
+		MATRIX_KEY(0x01, 0x02, 0)	/* T4 */
+		MATRIX_KEY(0x03, 0x04, 0)	/* T5 */
+		MATRIX_KEY(0x02, 0x04, 0)	/* T6 */
+		MATRIX_KEY(0x01, 0x04, 0)	/* T7 */
+		MATRIX_KEY(0x02, 0x09, 0)	/* T8 */
+		MATRIX_KEY(0x01, 0x09, 0)	/* T9 */
+		MATRIX_KEY(0x00, 0x04, 0)	/* T10 */
+	>;
+
+	linux,keymap = <
+		MATRIX_KEY(0x00, 0x02, KEY_BACK)
+		MATRIX_KEY(0x03, 0x02, KEY_REFRESH)
+		MATRIX_KEY(0x02, 0x02, KEY_ZOOM)
+		MATRIX_KEY(0x01, 0x02, KEY_SCALE)
+		MATRIX_KEY(0x03, 0x04, KEY_SYSRQ)
+		MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
+		MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
+		MATRIX_KEY(0x02, 0x09, KEY_MUTE)
+		MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
+		MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
+		CROS_STD_MAIN_KEYMAP
+	>;
+};
+
+&usb_c1 {
+	status = "disabled";
+};
+
+&target {
+	temperature = <76000>;
+};
+
+&i2c2 {
+	touchpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		vcc-supply = <&pp3300_s3>;
+		wakeup-source;
+	};
+};
+
+&mmc1_pins_uhs {
+	pins-clk {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+
+	pins-cmd-dat {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+};
+
+&i2c_tunnel {
+	/delete-node/ sbs-battery@b;
+
+	battery: sbs-battery@f {
+		compatible = "sbs,sbs-battery";
+		reg = <0xf>;
+		sbs,i2c-retry-count = <2>;
+		sbs,poll-retry-count = <1>;
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku3.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku3.dts
new file mode 100644
index 0000000000000000000000000000000000000000..42a0bcbd61283c865dd9c167e203694f9d8891b9
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku3.dts
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2024 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-krabby.dtsi"
+
+/ {
+	model = "Google Skitty board";
+	compatible = "google,skitty-sku3", "google,skitty", "mediatek,mt8186";
+	chassis-type = "laptop";
+};
+
+&keyboard_controller {
+	function-row-physmap = <
+		MATRIX_KEY(0x00, 0x02, 0)	/* T1 */
+		MATRIX_KEY(0x03, 0x02, 0)	/* T2 */
+		MATRIX_KEY(0x02, 0x02, 0)	/* T3 */
+		MATRIX_KEY(0x01, 0x02, 0)	/* T4 */
+		MATRIX_KEY(0x03, 0x04, 0)	/* T5 */
+		MATRIX_KEY(0x02, 0x04, 0)	/* T6 */
+		MATRIX_KEY(0x01, 0x04, 0)	/* T7 */
+		MATRIX_KEY(0x02, 0x09, 0)	/* T8 */
+		MATRIX_KEY(0x01, 0x09, 0)	/* T9 */
+		MATRIX_KEY(0x00, 0x04, 0)	/* T10 */
+	>;
+
+	linux,keymap = <
+		MATRIX_KEY(0x00, 0x02, KEY_BACK)
+		MATRIX_KEY(0x03, 0x02, KEY_REFRESH)
+		MATRIX_KEY(0x02, 0x02, KEY_ZOOM)
+		MATRIX_KEY(0x01, 0x02, KEY_SCALE)
+		MATRIX_KEY(0x03, 0x04, KEY_SYSRQ)
+		MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
+		MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
+		MATRIX_KEY(0x02, 0x09, KEY_MUTE)
+		MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
+		MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
+		CROS_STD_MAIN_KEYMAP
+		MATRIX_KEY(0x04, 0x00, KEY_102ND)
+	>;
+};
+
+&usb_c1 {
+	status = "disabled";
+};
+
+&target {
+	temperature = <76000>;
+};
+
+&i2c1 {
+	/delete-node/ touchscreen@10;
+	touchscreen: touchscreen@10 {
+		compatible = "elan,ekth3500";
+		reg = <0x10>;
+		interrupts-extended = <&pio 12 IRQ_TYPE_LEVEL_LOW>;
+		status = "okay";
+	};
+};
+
+&i2c2 {
+	touchpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		vcc-supply = <&pp3300_s3>;
+		wakeup-source;
+	};
+};
+
+&mmc1_pins_uhs {
+	pins-clk {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+
+	pins-cmd-dat {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+};
+
+&i2c_tunnel {
+	/delete-node/ sbs-battery@b;
+
+	battery: sbs-battery@f {
+		compatible = "sbs,sbs-battery";
+		reg = <0xf>;
+		sbs,i2c-retry-count = <2>;
+		sbs,poll-retry-count = <1>;
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku4.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku4.dts
new file mode 100644
index 0000000000000000000000000000000000000000..581642e27043c0149bbf72b4252394f3e2f3c6ec
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-skitty-sku4.dts
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2024 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-krabby.dtsi"
+
+/ {
+	model = "Google Skitty board";
+	compatible = "google,skitty-sku4", "google,skitty", "mediatek,mt8186";
+	chassis-type = "laptop";
+};
+
+&keyboard_controller {
+	function-row-physmap = <
+		MATRIX_KEY(0x00, 0x02, 0)	/* T1 */
+		MATRIX_KEY(0x03, 0x02, 0)	/* T2 */
+		MATRIX_KEY(0x02, 0x02, 0)	/* T3 */
+		MATRIX_KEY(0x01, 0x02, 0)	/* T4 */
+		MATRIX_KEY(0x03, 0x04, 0)	/* T5 */
+		MATRIX_KEY(0x02, 0x04, 0)	/* T6 */
+		MATRIX_KEY(0x01, 0x04, 0)	/* T7 */
+		MATRIX_KEY(0x02, 0x09, 0)	/* T8 */
+		MATRIX_KEY(0x01, 0x09, 0)	/* T9 */
+		MATRIX_KEY(0x00, 0x04, 0)	/* T10 */
+	>;
+
+	linux,keymap = <
+		MATRIX_KEY(0x00, 0x02, KEY_BACK)
+		MATRIX_KEY(0x03, 0x02, KEY_REFRESH)
+		MATRIX_KEY(0x02, 0x02, KEY_ZOOM)
+		MATRIX_KEY(0x01, 0x02, KEY_SCALE)
+		MATRIX_KEY(0x03, 0x04, KEY_SYSRQ)
+		MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
+		MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
+		MATRIX_KEY(0x02, 0x09, KEY_MUTE)
+		MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
+		MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
+		CROS_STD_MAIN_KEYMAP
+		MATRIX_KEY(0x04, 0x00, KEY_102ND)
+	>;
+};
+
+&usb_c1 {
+	status = "disabled";
+};
+
+&target {
+	temperature = <76000>;
+};
+
+&i2c2 {
+	touchpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		vcc-supply = <&pp3300_s3>;
+		wakeup-source;
+	};
+};
+
+&mmc1_pins_uhs {
+	pins-clk {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+
+	pins-cmd-dat {
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+};
+
+&i2c_tunnel {
+	/delete-node/ sbs-battery@b;
+
+	battery: sbs-battery@f {
+		compatible = "sbs,sbs-battery";
+		reg = <0xf>;
+		sbs,i2c-retry-count = <2>;
+		sbs,poll-retry-count = <1>;
+	};
+};

-- 
2.34.1


