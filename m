Return-Path: <devicetree+bounces-96722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B1995F3DE
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 16:29:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0F1D1F22A15
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 14:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46BBF18E038;
	Mon, 26 Aug 2024 14:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="NPSr3PDW"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF2018D624
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 14:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724682552; cv=none; b=soyFXaAWQC9iihE59FoFtV8Q9i8K1ii1p+FpNQ+qbuv5BHVAEm7kfXpQp/Q5EtRYLgV+a+7Cya7EaxcwfZReqlV8OUqwMfoZ5kOw7e4PxgMvmN7dT8oazufgoWni5EyZQZBDIo51L6paJmhf6F6h1ELOjerZNBWcdSOvWBuVShQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724682552; c=relaxed/simple;
	bh=KQDjVGlS1MvzhndxRSElYqb6hfSxS9TDM5jZsjzmMeM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b+CBYfZDMApyPXT5biDv/xGsd1zr2kJywmAg2CzWyXLp3R0wYAosTHKpUf2HRgPThfAMKxw+VMUwEAiUy3QYp3dLWAcWVoGEKJ6MevqQ/LuMVbuA17Y26tbStazD7Le6ywXnf7XPK18ehW7jRN+DvO+OiLboxpV+N1lcGkuT+XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=NPSr3PDW; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 202408261429028426adf78377ec7d1f
        for <devicetree@vger.kernel.org>;
        Mon, 26 Aug 2024 16:29:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=EVq9VQ8J6EPvFL5j90kLD0YYUlBOESmGhSbO7jhKHWM=;
 b=NPSr3PDWhUex5gCsrqMDho/T4x1KETj86XQXgeQKwyYn98/3H6MIRl5JRml0pchiapen7L
 dF1Lef4glvh0h3a9bWcSgYsaAdOItuDuG6E+Ir2cKfiR7Eyylt+vhJgQOicSCklwrQhn8aE4
 iWq/2c/4CRqy3kRxXJedn0N4CiHxC0bwax8Q89wjQKTKXbY0zNVUtUm8cwdQLEWtk3FbNWX2
 7hIH6JpfIxowTlIcWqcz9ytpmsWR4946pL73Fj8SnNvPW2rNylA9wdhzsE6q8TgHVY79LE4O
 4fx1wcxxvWYpSKJfTAbdPBjsFhhwcUcWqFllQkBTvTt5NCH5Gz1tEG9A==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Hua Qian Li <huaqian.li@siemens.com>
Subject: [PATCH 2/2] arm64: dts: ti: iot2050: Add overlays for M.2 used by firmware
Date: Mon, 26 Aug 2024 16:28:59 +0200
Message-ID: <7062ec915ecd161f6c62952eb7c1cd5036785dba.1724682539.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1724682539.git.jan.kiszka@siemens.com>
References: <cover.1724682539.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

To allow firmware to pick up all DTs from here, move the overlays that
are normally applied during DT fixup to the kernel source as well. Hook
then into the build nevertheless to ensure that regular checks are
performed.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/Makefile               |  2 +
 ...48-iot2050-advanced-m2-bkey-ekey-pcie.dtso | 27 +++++++++++
 ...-am6548-iot2050-advanced-m2-bkey-usb3.dtso | 47 +++++++++++++++++++
 3 files changed, 76 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-ekey-pcie.dtso
 create mode 100644 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-usb3.dtso

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index e20b27ddf901..f459af7fac0d 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -77,6 +77,8 @@ dtb-$(CONFIG_ARCH_K3) += k3-am6528-iot2050-basic.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am6528-iot2050-basic-pg2.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am6548-iot2050-advanced.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am6548-iot2050-advanced-m2.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-am6548-iot2050-advanced-m2-bkey-ekey-pcie.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am6548-iot2050-advanced-m2-bkey-usb3.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am6548-iot2050-advanced-pg2.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am6548-iot2050-advanced-sm.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am654-base-board.dtb
diff --git a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-ekey-pcie.dtso b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-ekey-pcie.dtso
new file mode 100644
index 000000000000..666237f6d79c
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-ekey-pcie.dtso
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * IOT2050 M.2 variant, overlay for B-key PCIE0_LANE0 + E-key PCIE1_LANE0
+ * Copyright (c) Siemens AG, 2022-2024
+ *
+ * Authors:
+ *   Chao Zeng <chao.zeng@siemens.com>
+ *   Jan Kiszka <jan.kiszka@siemens.com>
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/phy/phy.h>
+#include <dt-bindings/gpio/gpio.h>
+
+&pcie0_rc {
+	num-lanes = <1>;
+	phys = <&serdes0 PHY_TYPE_PCIE 1>;
+	phy-names = "pcie-phy0";
+	reset-gpios = <&main_gpio1 15 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&pcie1_rc {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-usb3.dtso b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-usb3.dtso
new file mode 100644
index 000000000000..0f86235c9771
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-usb3.dtso
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * IOT2050 M.2 variant, overlay for B-key USB3.0 + E-key PCIE1_LANE0
+ * Copyright (c) Siemens AG, 2022-2024
+ *
+ * Authors:
+ *   Chao Zeng <chao.zeng@siemens.com>
+ *   Jan Kiszka <jan.kiszka@siemens.com>
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/phy/phy.h>
+#include <dt-bindings/gpio/gpio.h>
+
+&serdes0 {
+	assigned-clock-parents = <&k3_clks 153 7>, <&k3_clks 153 4>;
+};
+
+&pcie0_rc {
+	status = "disabled";
+};
+
+&pcie1_rc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&minipcie_pins_default>;
+
+	num-lanes = <1>;
+	phys = <&serdes1 PHY_TYPE_PCIE 0>;
+	phy-names = "pcie-phy0";
+	reset-gpios = <&wkup_gpio0 27 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&dwc3_0 {
+	assigned-clock-parents = <&k3_clks 151 4>,  /* set REF_CLK to 20MHz i.e. PER0_PLL/48 */
+				 <&k3_clks 151 8>;  /* set PIPE3_TXB_CLK to WIZ8B2M4VSB */
+	phys = <&serdes0 PHY_TYPE_USB3 0>;
+	phy-names = "usb3-phy";
+};
+
+&usb0 {
+	maximum-speed = "super-speed";
+	snps,dis-u1-entry-quirk;
+	snps,dis-u2-entry-quirk;
+};
-- 
2.43.0


