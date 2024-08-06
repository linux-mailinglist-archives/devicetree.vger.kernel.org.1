Return-Path: <devicetree+bounces-91454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BD38194960E
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 19:01:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF2A01C21B40
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 17:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D6B34CD8;
	Tue,  6 Aug 2024 17:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="BpBc8wmg"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8289482D8;
	Tue,  6 Aug 2024 17:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722963697; cv=none; b=ZG4rc0875EMwc+sDJbsEVhpfRaXBRZHEQ7CKqAJ/UGO4mf3CpBn4gSRvT87A/fLGJledpPG5xs7S0W/X9QDl6obz7R9pe7CyQH9FfCB2XQk5DbrXCp65qX6a2N6uKmNowTMfSk5lcdKAHMuGfr+rhwGD+VKBPEsS0M8Y85puoxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722963697; c=relaxed/simple;
	bh=4zqDyWqTQTrK+jNEhpJzM11nbPhPLqhRqG0GcClrp2s=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VD1pSMGtqK4fo6Rc/9BcNAwkrgNBxd5BJ81jWLSjrf2c2yMBewOrc+1MsofQzRL0yhu2fhUfVQ0QjNvHFnr830vYHCnArtyIR9d+TZNN1EDonyzEcwbFRo78CQfj5w8MYy9KIor6tGY1tgiVIXnF27xSgaPN772ZqciR1O+qspI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=BpBc8wmg; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 476H1SR1055272;
	Tue, 6 Aug 2024 12:01:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1722963688;
	bh=D3BYH+c4+v9/TCb1eLjg2rWqpH715CLIMEdGywtJ/Ac=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=BpBc8wmgP60R0ikSwoXfusa9qYqpcWlTY+7pT2sHocDKofQLUWJZq1omfESuL2VIf
	 EHbNNZqX+PjqTprAYBf5lshL4/kIe/uauP/PENaLuCnBWTsDvqpdwgkKo5O7AAo/fs
	 Ely/Sbmf0sbRWY1A3Vyy6depW6ORiKiEt/XzoenA=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 476H1SdH006216
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 6 Aug 2024 12:01:28 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 6
 Aug 2024 12:01:27 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 6 Aug 2024 12:01:28 -0500
Received: from localhost (udb0389739.dhcp.ti.com [137.167.1.149])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 476H1RU2036747;
	Tue, 6 Aug 2024 12:01:27 -0500
From: Michael Nemanov <michael.nemanov@ti.com>
To: Kalle Valo <kvalo@kernel.org>, "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo
 Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, <linux-wireless@vger.kernel.org>,
        <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
CC: Sabeeh Khan <sabeeh-khan@ti.com>, Michael Nemanov <michael.nemanov@ti.com>
Subject: [PATCH v3 02/17] wifi: cc33xx: Add debug.h
Date: Tue, 6 Aug 2024 20:00:03 +0300
Message-ID: <20240806170018.638585-3-michael.nemanov@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240806170018.638585-1-michael.nemanov@ti.com>
References: <20240806170018.638585-1-michael.nemanov@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

These are trace macros used throughout the driver.

Signed-off-by: Michael Nemanov <michael.nemanov@ti.com>
---
 drivers/net/wireless/ti/cc33xx/debug.h | 92 ++++++++++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 drivers/net/wireless/ti/cc33xx/debug.h

diff --git a/drivers/net/wireless/ti/cc33xx/debug.h b/drivers/net/wireless/ti/cc33xx/debug.h
new file mode 100644
index 000000000000..53b2168c04c7
--- /dev/null
+++ b/drivers/net/wireless/ti/cc33xx/debug.h
@@ -0,0 +1,92 @@
+/* SPDX-License-Identifier: GPL-2.0-only
+ *
+ * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+#ifndef __DEBUG_H__
+#define __DEBUG_H__
+
+#define DRIVER_NAME "cc33xx"
+#define DRIVER_PREFIX DRIVER_NAME ": "
+
+enum {
+	DEBUG_NONE		= 0,
+	DEBUG_IRQ		= BIT(0),
+	DEBUG_SPI		= BIT(1),
+	DEBUG_BOOT		= BIT(2),
+	DEBUG_CORE_STATUS	= BIT(3),
+	DEBUG_TESTMODE		= BIT(4),
+	DEBUG_EVENT		= BIT(5),
+	DEBUG_TX		= BIT(6),
+	DEBUG_RX		= BIT(7),
+	DEBUG_SCAN		= BIT(8),
+	DEBUG_CRYPT		= BIT(9),
+	DEBUG_PSM		= BIT(10),
+	DEBUG_MAC80211		= BIT(11),
+	DEBUG_CMD		= BIT(12),
+	DEBUG_ACX		= BIT(13),
+	DEBUG_SDIO		= BIT(14),
+	DEBUG_FILTERS		= BIT(15),
+	DEBUG_ADHOC		= BIT(16),
+	DEBUG_AP		= BIT(17),
+	DEBUG_PROBE		= BIT(18),
+	DEBUG_IO		= BIT(19),
+	DEBUG_MASTER		= (DEBUG_ADHOC | DEBUG_AP),
+	DEBUG_CC33xx		= BIT(20),
+	DEBUG_ALL		= GENMASK(31, 0),
+	DEBUG_NO_DATAPATH = (DEBUG_ALL & ~DEBUG_IRQ & ~DEBUG_TX & ~DEBUG_RX & ~DEBUG_CORE_STATUS),
+};
+
+extern u32 cc33xx_debug_level;
+
+#define DEBUG_DUMP_LIMIT 1024
+
+#define cc33xx_error(fmt, arg...) \
+	pr_err(DRIVER_PREFIX "ERROR " fmt "\n", ##arg)
+
+#define cc33xx_warning(fmt, arg...) \
+	pr_warn(DRIVER_PREFIX "WARNING " fmt "\n", ##arg)
+
+#define cc33xx_notice(fmt, arg...) \
+	pr_info(DRIVER_PREFIX fmt "\n", ##arg)
+
+#define cc33xx_info(fmt, arg...) \
+	pr_info(DRIVER_PREFIX fmt "\n", ##arg)
+
+/* define the debug macro differently if dynamic debug is supported */
+#if defined(CONFIG_DYNAMIC_DEBUG)
+#define cc33xx_debug(level, fmt, arg...) \
+	do { \
+		if (unlikely((level) & cc33xx_debug_level)) \
+			dynamic_pr_debug(DRIVER_PREFIX fmt "\n", ##arg); \
+	} while (0)
+#else
+#define cc33xx_debug(level, fmt, arg...) \
+	do { \
+		if (unlikely((level) & cc33xx_debug_level)) \
+			pr_debug(pr_fmt(DRIVER_PREFIX fmt "\n"), \
+			       ##arg); \
+	} while (0)
+#endif /* CONFIG_DYNAMIC_DEBUG */
+
+#define cc33xx_dump(level, prefix, buf, len)					\
+	do {									\
+		if ((level) & cc33xx_debug_level)				\
+			print_hex_dump_debug(DRIVER_PREFIX prefix,		\
+					DUMP_PREFIX_OFFSET, 16, 1,		\
+					buf,					\
+					min_t(size_t, len, DEBUG_DUMP_LIMIT),	\
+					0);					\
+	} while (0)
+
+#define cc33xx_dump_ascii(level, prefix, buf, len)				\
+	do {									\
+		if ((level) & cc33xx_debug_level)				\
+			print_hex_dump_debug(DRIVER_PREFIX prefix,		\
+					DUMP_PREFIX_OFFSET, 16, 1,		\
+					buf,					\
+					min_t(size_t, len, DEBUG_DUMP_LIMIT),	\
+					true);					\
+	} while (0)
+
+#endif /* __DEBUG_H__ */
-- 
2.34.1


