Return-Path: <devicetree+bounces-274884-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNUpJwaps2k7ZgAAu9opvQ
	(envelope-from <devicetree+bounces-274884-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:04:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F240627D8AB
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:04:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 65CB6302EC82
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09EB132692B;
	Fri, 13 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="D96IjaoP"
X-Original-To: devicetree@vger.kernel.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012066.outbound.protection.outlook.com [52.101.43.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E792132A3DA;
	Fri, 13 Mar 2026 06:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.43.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773381892; cv=fail; b=adkKMmx0yGfFfNsxBkW5ZRQjwFQ6ExnHqlYdkDs5sw42zQwDI1UMV8Gd4MRXYufloc5/hEOp3AyBKrmIvnkNiPmpIFPrzObfA8pMudYntufsNUewwuNy9xiaG1Le1dn0qbZq6a1NliA3H9Wx0RStg2QfiBymakA97Z89YAZqEZE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773381892; c=relaxed/simple;
	bh=p7XBnU7dOK8ovANeaqub1jKuApKHNxOwBqLZpkhVZmc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GT3UNF1V/iucu6+TNvOZi0jP6NSzGqikCcG4+sfqgp+7+OmMmDSS+Udgo4Ucla3LSIj6Z/VyxR9+J0HgzLrtEW81vIlbIYhyOGqfMpgUoki52V0SWvWZQJOkRPnqHKyJOIBrDsZ1P9eyC8e+E9OCP3C1DZMVV+GO86GykQR97EY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=D96IjaoP; arc=fail smtp.client-ip=52.101.43.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eSmNwq6wUKsaTnZpRiqJgdunk/czFiRJpllIjX+zk5LZQbxx6Bgl2EICUV98cCR20XvL9JhG744oOjBfojWx0kMgdWEB/8vYp8fLVcSoy4WVcM/w/eonBEL+lDNVfpg85WpPX2KRQfwAoLMb7QpID/LD7y/VSw+SqmBeSvuNdk430vIkSEY6x/i+V2dOek+QsYr8nJ3aRxn4/jW9IV7Pk+yVLlrFic9mt8MufeyXL5LJi3eYU5mQM7khnpMXG8sCdbyiV2GS23A2G7Lx8tZQjDarHfsBWUaNSduBBjaLZtteGnLoF8bXvYQzBp3ZS1yWIfxS3K73cj9c81+iyHTvOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=srz0hVYQCCEKXS23+A/PU6vdbn7QalO+ebyhiAMKPNQ=;
 b=M6XmSefpofeKj8bO2VDSLK4MK0Fxl34l7H7lRKr//aw6+t4LQ+OYw4Dpx/tpgPyNxVEQpzxweid7enaA3FORsmtpLkgqtVilO9wmenIfPErvfdF5hT3FCGiW/o7Jp8KS94j7q6UVJcTp5IZd2t+LZeZviFk+EQ1IaeYzSCF+jjw6YInb0nwQNuOFBz4z1fvNicMpKITc0VQRuLr1j41oSeu8nxp+ekd/Ucm8Q859tEyCdSKhjocOBpSS5b0ErrbS0cvrjYzOm3virwlz7Ey4EwbdISRN8czZ+y27Iu+zQbp4ZaxIgiGcx6LdDGXR/2po7qeKJk3KhHS1/5YiZ748nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=srz0hVYQCCEKXS23+A/PU6vdbn7QalO+ebyhiAMKPNQ=;
 b=D96IjaoPMQUyGrCQTorBMbWWcjtVg2e4MRKIFwFxBdxLOCvMOnjpg5hYKqPmoTnM24m6HH1ldaqThWOPRgwjk4lYLW/aUiXrxJSJIGazNAjZFswtuCw24Od3/pElRyKaNOHOODhxjnsyTlWbYgfl2croOySsteCh4QafrLhs8HA=
Received: from SJ0PR13CA0168.namprd13.prod.outlook.com (2603:10b6:a03:2c7::23)
 by LV8PR10MB7918.namprd10.prod.outlook.com (2603:10b6:408:1f8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.17; Fri, 13 Mar
 2026 06:04:49 +0000
Received: from SJ1PEPF00001CE2.namprd05.prod.outlook.com
 (2603:10b6:a03:2c7:cafe::27) by SJ0PR13CA0168.outlook.office365.com
 (2603:10b6:a03:2c7::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.12 via Frontend Transport; Fri,
 13 Mar 2026 06:04:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SJ1PEPF00001CE2.mail.protection.outlook.com (10.167.242.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.17 via Frontend Transport; Fri, 13 Mar 2026 06:04:48 +0000
Received: from DLEE204.ent.ti.com (157.170.170.84) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 01:04:47 -0500
Received: from DLEE210.ent.ti.com (157.170.170.112) by DLEE204.ent.ti.com
 (157.170.170.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 01:04:47 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 13 Mar 2026 01:04:47 -0500
Received: from uda1253387.dhcp.ti.com (uda1253387.dhcp.ti.com [172.24.233.12])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62D64fK73710415;
	Fri, 13 Mar 2026 01:04:45 -0500
From: Rahul Sharma <r-sharma3@ti.com>
To: <peda@axentia.se>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <vigneshr@ti.com>, <r-sharma3@ti.com>,
	<linux-kernel@vger.kernel.org>
Subject: [RFC uL PATCH 1/2] dt-bindings: mux-controller: ti: add binding for event mux router
Date: Fri, 13 Mar 2026 11:34:36 +0530
Message-ID: <20260313060437.3704592-2-r-sharma3@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260313060437.3704592-1-r-sharma3@ti.com>
References: <20260313060437.3704592-1-r-sharma3@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CE2:EE_|LV8PR10MB7918:EE_
X-MS-Office365-Filtering-Correlation-Id: ea454e90-7a29-411a-a211-08de80c66ef9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700016|82310400026|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	/rr4ve9XzBJ+BYpqm/F1n3r/SmfAmNc0x6quEOgwP9mfGt/Ukt5PgcbNwyBZcJxxGZyxOjvOFR8PzNLihjIYeNZocU1MmcR8ZRVq1BU9IL8wxlQhLg0bj8N9tR7XKdI+GUVeequU1rs2Qg9HtcaIflZ6X8Nt5jk8mbGn40tyrzEBxEiV9IY29rsAmBKvuEjGtBbw3kgoLq+NwMcccm5MXruT/hsS0UtO1KRHE1KDr+SLHWKcirr7O1HHvt0vBw1CG3TQ+SNW2q9ACVEOJB89ChY/UBZGdCKpasGB/Sb4lUhG4liTenwPwIzBr9z0/YhjF1V5Z1kG2dwpPvWYiuYMXRhQiwsFMFNFhZzK9CkcHckjKabRx92cDLxuDish/iH/O8Wy0kNNj9HHuY+59awzFG0IhMo20KqOkBzB/Ng8Vb4qKhZT6AxmGM0PdKB+Xau72tecD7O/tg+CJkajJPMFkCm/+aEw9eYtM6qlEVPkwvTMsQ2/TUSrzd5rQJM4FQRVeHYm8A6cYsilVF+wLIHL2aKt5FSkntHmzk4Ef+V5xpekg15B8RUYynHe6lYlbZGd3ZWeih26cMcBmnR9t7IxC6hWzGD8CBI8rjgfXWyy2513qccOwwXQAy2cGo7sSckKOk6BGKxlcloDFUjFyCMyct7Rt0LK/Bw8ko7wMlPTMu4kv1waS9/1LW8CnIhA2LaI13gTebpyLvzkvp4wr/M3UzDrwUMQGYSsqljlSabNtk0=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700016)(82310400026)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	Hmq+xBkbSccKONVxsNZG8euq8QGV9GGDKOo/lehWiqDUMdNEF5AEY4OCq9VcoOUA2TX4rNPuNxKMXZH4VZSZhsmJd2OeKOXi8De6XRvabOpG1KKKQUoGx8ya/e5wE4i1ht5L6r1lm1Ow7EUwO+pSljsj9UDDU0vuVJvtnN/Gu+uHr4kyPXu/4YSBCeL5Rco94Fc4rJkphyyvPAoA3NRhIyYDLF9t5R0UtHMZcVAXhZv0DXbocGJpE3Y8dr0JVdZ6zmWNkbffZ54jJ2QKRe7vsK8WJfFfsWsGKV833NziHssj1zmAF6Rxco/841aRpvw56EgpzKmcvyitdCENaqvaTCUFRfdTVvsAkfLl/nDy8mANMPVGfzLpeGjXzhdBhHKTpJMEqx/qH0+bWCjcK6Pqce4RS7y3mjJizQpCTr2BMItWk0RGTGrKfkRqqH0PvDO6
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 06:04:48.5558
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea454e90-7a29-411a-a211-08de80c66ef9
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CE2.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR10MB7918
X-Spamd-Result: default: False [0.84 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274884-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ti.com:dkim,ti.com:mid,ti.com:email,ti.com:url,a00000:email];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[r-sharma3@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: F240627D8AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add binding for the event mux router of TI's K3 based SoC AM62L.

The TI K3 mux routers which route the GPIO input events or Time-Sync
events b/w peripherals instead of routing to a CPU.

Refer Section 10.2 and 10.2.1 of https://www.ti.com/lit/pdf/sprujb4

Signed-off-by: Rahul Sharma <r-sharma3@ti.com>
---
 .../mux/ti,am62l-event-mux-router.yaml        | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mux/ti,am62l-event-mux-router.yaml

diff --git a/Documentation/devicetree/bindings/mux/ti,am62l-event-mux-router.yaml b/Documentation/devicetree/bindings/mux/ti,am62l-event-mux-router.yaml
new file mode 100644
index 000000000000..5401b0542eff
--- /dev/null
+++ b/Documentation/devicetree/bindings/mux/ti,am62l-event-mux-router.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mux/ti,am62l-event-mux-router.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI Event Multiplexer on K3 SoCs
+
+maintainers:
+  - Rahul Sharma <r-sharma3@ti.com>
+
+description:
+  The TI K3 mux routers routes the GPIO input events or Time
+  Sync events between peripherals instead of routing to a CPU.
+
+allOf:
+  - $ref: mux-controller.yaml#
+
+properties:
+  compatible:
+    const: ti,am62l-event-mux-router
+
+  reg:
+    description: Register base address and size.
+    maxItems: 1
+
+  '#mux-control-cells':
+    const: 1
+    description:
+      Number of cells in a mux control specifier. This should be 1.
+      The cell specifies which mux control to use (0-based index).
+
+  ti,reg-mask-val:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    items:
+      items:
+        - description: Register offset (relative to reg base)
+        - description: Bit mask for the mux control bits
+        - description: Value to write when mux is active (state 1)
+    minItems: 1
+    description: |
+      Array of triplets specifying register offset, mask, and value for each
+      mux control. Each triplet contains:
+      - register offset (relative to reg base or syscon)
+      - bit mask for the mux control bits
+      - value to write when mux is active (state 1)
+
+  idle-states:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: |
+      Idle state for each mux control. Each entry corresponds to a mux control:
+      - 0: clear masked bits when idle, also refers to inactive state
+      - 1: set configured value when idle, also refers to active state
+      - MUX_IDLE_AS_IS (-1): keep current state when idle
+
+required:
+  - compatible
+  - reg
+  - '#mux-control-cells'
+  - ti,reg-mask-val
+  - idle-states
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/mux/mux.h>
+
+    // Example 1: TI AM62L GPIO Mux Router
+    mux-controller@a00000 {
+        compatible = "ti,am62l-event-mux-router";
+        reg = <0xa00000 0x400>;
+        #mux-control-cells = <1>;
+
+        /* Mux Register addresses: 0xa00004 + (J × 4) */
+        /* GPIO0_40 -> BCDMA trigger 15 */
+        ti,reg-mask-val = <0x40 0x000ff 0x00028>;
+        idle-states = <0>;
+    };
-- 
2.34.1


