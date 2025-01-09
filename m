Return-Path: <devicetree+bounces-137205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CADA9A08149
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 21:20:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A3E0188C12C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 20:20:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EFAD1F75B3;
	Thu,  9 Jan 2025 20:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Wwx4cIuo"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB90F2B9BF;
	Thu,  9 Jan 2025 20:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736454013; cv=none; b=CeUB6NUx3sfxElRTwm8bDwO58WC0hiLHukAjVCNd//ke4mPMzXW9oz4YHY5NKM0UEi3ptmGlg3NiWT2HN0IeCBh8rQ79j1nExNGfJskWKH1Jh6oagQVHc3BUNnYTKRj72olq5MNrwTWO8MzdZDeRNNKGpSaKoEXFA96LZ8euNMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736454013; c=relaxed/simple;
	bh=2wOV/5h+BlA76ZQ1MnUdf1tKI3HOtOXPHzrFkr76j4w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=pYk0RF6qYvSG9KYdvOU5UbxgGfWkXE57pRMtoZziMi6oOCImdlBl/PM99sEGFCWhIT3QCVhjN6YBercaJn3ZNS+UtxS5s7J77bn4wYLL22Q6ecfAARHAkRyepeml8+s6MojfsThY/riVztHP7VT93vHfp73NbUsdr9nfmPVAObI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Wwx4cIuo; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 509KK3OP3011558
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 9 Jan 2025 14:20:04 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736454004;
	bh=j4v0m6DhAtwCcR2FHYeZKXNyq2xkLzonMXMc5I0H6zY=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=Wwx4cIuoIm0nMqyOdKPZ96+QqOrEVZlqJFP4wzG8odYGuRNm3j7dMgnWkUJ+6rfvR
	 CRrG1pKUf+sQC4IL2cRL/crPhIqGA2Psu4U4gw3OZq+y1S3p4Q+GU2TMTeZrBUuJMv
	 bcnehRpLQXv49dAUIRXIb4pXUuTGpLRI77xGO8kM=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 509KK3DO043802
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Jan 2025 14:20:03 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 9
 Jan 2025 14:20:03 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 9 Jan 2025 14:20:03 -0600
Received: from localhost (bb.dhcp.ti.com [128.247.81.12])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 509KK3nq051378;
	Thu, 9 Jan 2025 14:20:03 -0600
From: Bryan Brattlof <bb@ti.com>
Date: Thu, 9 Jan 2025 14:20:04 -0600
Subject: [PATCH v3 3/3] arm64: dts: ti: k3-am62l: add initial reference
 board file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250109-am62lx-v3-3-ef171e789527@ti.com>
References: <20250109-am62lx-v3-0-ef171e789527@ti.com>
In-Reply-To: <20250109-am62lx-v3-0-ef171e789527@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Bryan Brattlof <bb@ti.com>
X-Mailer: b4 0.13.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

From: Vignesh Raghavendra <vigneshr@ti.com>

Add the initial board file for the AM62L3's Evaluation Module.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Bryan Brattlof <bb@ti.com>
---
Changes from v1:
 - switched to non-direct links so TRM updates are automatic
 - removed current-speed property from main_uart0
 - removed empty reserved-memory{} node
 - removed serial2 from aliases{} node
 - corrected main_uart0 pinmux

Changes from v2:
 - alphabetized phandles
 - corrected macros and node names for main_uart0 pinmux node
---
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts | 43 ++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
new file mode 100644
index 0000000000000..ef06cf193c65b
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Device Tree file for the AM62L3 Evaluation Module
+ * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ */
+
+/dts-v1/;
+
+#include "k3-am62l3.dtsi"
+
+/ {
+	compatible = "ti,am62l3-evm", "ti,am62l3";
+	model = "Texas Instruments AM62L3 Evaluation Module";
+
+	chosen {
+		stdout-path = &main_uart0;
+	};
+
+	memory@80000000 {
+		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
+		device_type = "memory";
+		bootph-all;
+	};
+};
+
+&main_uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_uart0_pins_default>;
+	status = "okay";
+	bootph-all;
+};
+
+&pmx0 {
+	main_uart0_pins_default: main-uart0-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x01b4, PIN_INPUT, 0)	/* (D13) UART0_RXD */
+			AM62LX_IOPAD(0x01b8, PIN_OUTPUT, 0)	/* (C13) UART0_TXD */
+		>;
+		bootph-all;
+	};
+};

-- 
2.47.1


