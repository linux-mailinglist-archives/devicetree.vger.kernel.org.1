Return-Path: <devicetree+bounces-136050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F99A03A3D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 09:51:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EAEC5165606
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 08:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66951E0B73;
	Tue,  7 Jan 2025 08:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="YvZSAc1k"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1C051DF276;
	Tue,  7 Jan 2025 08:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736239910; cv=none; b=LmimpQUN3bF4ZyxdaDxIIrzOMpyRWMVIGfgD4f6W8yRbZpl5NP3g7pKgbxhQXz+MXqEh205ts6u3Nu2qcz1PWB0bdbxKLuUdr4CKlagI42ZHadi3o7l/JUvCCgpjm6U0VQnlfUqi5EQ6pio0i027BXpQdG4VSeu8bAAsryZVTqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736239910; c=relaxed/simple;
	bh=LmWkDL317gY3U+dXFRVXKAmtC6HGYAsxYCnveneGcFA=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=AogXJrCOF8/GODIV2h3nd4A0ESJRvSWgw71dF8nIdiN4EV3Ic1Xmr67Kt6/nOVsRLrJNAj1pTNaolnWj/4L+NMkcs6GqLtkluZPH2rP02laXCNZtjcKvL68VP/zPCQQ4MAsfdd0L4X7zfeUnXAgAJlPY/I40dxR38YnFopO65fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=YvZSAc1k; arc=none smtp.client-ip=192.198.163.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736239907; x=1767775907;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=LmWkDL317gY3U+dXFRVXKAmtC6HGYAsxYCnveneGcFA=;
  b=YvZSAc1km+y+H3jPZfcZ/mMaS36Lj5e0CYt4kDTjj/MRi+uR9JY7of25
   ArYz8fOCc0zINiwyrT6gwrfrFaAYKUNpALDzyBZMlRsOl0imlNEVrjM8+
   7uu5YctjHBj5QNwBtFL0lfCDphI0wTOvydQXOzYHZdP9OF4sLuTx21/HZ
   aNw9bb94V3tEkpWFB8t5j0tsVNRtF5bG5gwJgIE/bB+OQQAAM+9mBuPhW
   Rh6F9ZeRj7d1EohKKgEKjaQF3a5RSOpMrSCtRnF2LskrklR+2EWT7aDAI
   +jAc9UbvD3PbjKLrhomle48VMkkvrnba9E65p3wp20hZkVTOUvMpWCTk9
   A==;
X-CSE-ConnectionGUID: 53vNzLJGQ2Kw0zo1bKZ0Yw==
X-CSE-MsgGUID: bOqMNv9sQJ24ntHuQeXrig==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="53949340"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; 
   d="scan'208";a="53949340"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jan 2025 00:51:46 -0800
X-CSE-ConnectionGUID: DMRxU9oOS26DPmSMyaKREw==
X-CSE-MsgGUID: 9gC4xSyQQuWabMbKB8+3qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; 
   d="scan'208";a="102508916"
Received: from pg15swiplab1181.png.altera.com ([10.244.232.167])
  by fmviesa006.fm.intel.com with ESMTP; 07 Jan 2025 00:51:44 -0800
From: niravkumar.l.rabara@intel.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	niravkumar.l.rabara@intel.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: socfpga: agilex5: add NAND board file
Date: Tue,  7 Jan 2025 16:48:30 +0800
Message-Id: <20250107084831.2750035-1-niravkumar.l.rabara@intel.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>

The Agilex5 devkit supports a separate NAND daughter card.
The NAND daughter card replaces the SDMMC slot that is on the default
daughter card thus requires a separate board dts file.

Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
---
 arch/arm64/boot/dts/intel/Makefile            |  1 +
 .../dts/intel/socfpga_agilex5_socdk_nand.dts  | 89 +++++++++++++++++++
 2 files changed, 90 insertions(+)
 create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts

diff --git a/arch/arm64/boot/dts/intel/Makefile b/arch/arm64/boot/dts/intel/Makefile
index d39cfb723f5b..33f6d01266b1 100644
--- a/arch/arm64/boot/dts/intel/Makefile
+++ b/arch/arm64/boot/dts/intel/Makefile
@@ -3,5 +3,6 @@ dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_agilex_n6000.dtb \
 				socfpga_agilex_socdk.dtb \
 				socfpga_agilex_socdk_nand.dtb \
 				socfpga_agilex5_socdk.dtb \
+				socfpga_agilex5_socdk_nand.dtb \
 				socfpga_n5x_socdk.dtb
 dtb-$(CONFIG_ARCH_KEEMBAY) += keembay-evm.dtb
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts
new file mode 100644
index 000000000000..3eeae5c4e24a
--- /dev/null
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier:     GPL-2.0
+/*
+ * Copyright (C) 2025, Altera Corporation
+ */
+#include "socfpga_agilex5.dtsi"
+
+/ {
+	model = "SoCFPGA Agilex5 SoCDK";
+	compatible = "intel,socfpga-agilex5-socdk", "intel,socfpga-agilex5";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		led0 {
+			label = "hps_led0";
+			gpios = <&porta 6 GPIO_ACTIVE_HIGH>;
+		};
+
+		led1 {
+			label = "hps_led1";
+			gpios = <&porta 7 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* We expect the bootloader to fill in the reg */
+		reg = <0x0 0x80000000 0x0 0x0>;
+	};
+};
+
+&gpio0 {
+	status = "okay";
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+};
+
+&i3c0 {
+	status = "okay";
+};
+
+&i3c1 {
+	status = "okay";
+};
+
+&osc1 {
+	clock-frequency = <25000000>;
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&watchdog0 {
+	status = "okay";
+};
+
+&nand {
+	status = "okay";
+
+	flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0>;
+		nand-bus-width = <8>;
+
+		partition@0 {
+			label = "u-boot";
+			reg = <0 0x200000>;
+		};
+		partition@200000 {
+			label = "root";
+			reg = <0x200000 0xffe00000>;
+		};
+	};
+};
-- 
2.25.1


