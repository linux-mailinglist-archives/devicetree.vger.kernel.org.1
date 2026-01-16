Return-Path: <devicetree+bounces-255989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF2AD2F63C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4B1DC300486D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:16:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A2C935CB95;
	Fri, 16 Jan 2026 10:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="uqK5Pblj"
X-Original-To: devicetree@vger.kernel.org
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012051.outbound.protection.outlook.com [40.107.209.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E953C223DEA;
	Fri, 16 Jan 2026 10:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.209.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768558569; cv=fail; b=V3o3g3sWmH8IZYsXrdhnkcG3dZqAv1FRlJV2zpQfF3hgDGXG2a2coCICjkxTVynXEucxsX5VOvaQs/uZULuaPcciPg6GW7Odf5v4k9WgGikBDaRC1mlyzwlQviLQyJTJ3zYrUBXzn+jihdcPgNDtmtt9v6KbTSGQrW4L7KUuK+0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768558569; c=relaxed/simple;
	bh=r3NdYYTlG6f475PV+rqef3nZ6zah0YPcJ1ylxAeN8LE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=AaKdDTyAWhd98uMzMysNxcQ1aCtaOKai06Yfdzojra3wym08FoBDcRLVUt+wt5FeY6A2EEQ3pHtN1VVYhHss/9EF9cDCX+0KtIAEajEXNk0mbRKNYfooFvgMpTTS45XrDxGPpqCvwSOAUGiYZPDOhe2mcIJkLVLNjLsVoT58U+o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=uqK5Pblj; arc=fail smtp.client-ip=40.107.209.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I09HCJVFh5Hp3OJAnf3DxUEFtYijP1fQxaxro46BD/WAAsh/WEdcw+6ZRZ2JTZWi7UmxgBqZIa5xOJLS5roo+V9DhyPja0vpCZoE0MP13KKyQdh6cnPf+eaRWE11blhz7V7Ex7zWwIveInLLsWw/V/Y4MmWI+6Ah2df3cdUCr1MVT2lhP0oWyElLbXsxGHDpbJa8R2f+C0+fkOCjXSXom6foVL4kxIZViyqEqPNowMEbV2Ba7OvlDhSqyNnN9714jYYE1FOO16Vao2n5TwajU8cnuNozkb/oYZV1TCb7VtmkaGi8WBTecidnlZNcIjLM/62pneBWWhvjy6fuCOW29A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uGThnd53i8KeIZehDiJbdQBFuYTW16zDh1v7IyFjJPQ=;
 b=yVuP5h87s/aiU5wBoDK51zEhB1cxogIMYE9wVIL0hkFN0MD3Nvkkzm8zopUCVk7M6HGSmutSgyuWzRHsNM8T70GNf9jDnyljOV6mJLhyHprm2PCsdEv8e40IYsbXnWH/3VqeHCvuA5BVNcHxuglbZqcHuOSbUimI5Te/XxLWFjlIJtZZYgaIVWO2HNYj9FxXNtSm6HDvye2CEYTlMPSTmv0Z1dc/RMPxMcSy98nX4xjjgOM1X22PkF6K76Q28p/cw+u8jhlyA97W3dfPvwypDcuf/FI8BfrhRGY0hyq7HHaAqKeRvotJQgiZdWSlq7BbyMn0XDktymc929PcNa6QRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uGThnd53i8KeIZehDiJbdQBFuYTW16zDh1v7IyFjJPQ=;
 b=uqK5PbljiEYlh3MfDvYT2nBfi2xgdJlQ/fl4Ml8ZrPiAYmDFSye0BI4W010o6CFsIDfLGrVnWx2AGvqxpCMxtNfQ6Ml37O0cPYYQ1LT5gotxny4BarbCG1SLZdsbSK9KtlSyZ3mJ+XJkQ1Ir/TrplKHF2v2SrDbidNAwT2WFPVw=
Received: from MW4PR03CA0359.namprd03.prod.outlook.com (2603:10b6:303:dc::34)
 by SA1PR10MB7791.namprd10.prod.outlook.com (2603:10b6:806:3a9::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.6; Fri, 16 Jan
 2026 10:16:05 +0000
Received: from SJ1PEPF00001CDC.namprd05.prod.outlook.com
 (2603:10b6:303:dc:cafe::d0) by MW4PR03CA0359.outlook.office365.com
 (2603:10b6:303:dc::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.7 via Frontend Transport; Fri,
 16 Jan 2026 10:16:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SJ1PEPF00001CDC.mail.protection.outlook.com (10.167.242.4) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.4 via Frontend Transport; Fri, 16 Jan 2026 10:16:02 +0000
Received: from DFLE208.ent.ti.com (10.64.6.66) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 16 Jan
 2026 04:16:02 -0600
Received: from DFLE213.ent.ti.com (10.64.6.71) by DFLE208.ent.ti.com
 (10.64.6.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 16 Jan
 2026 04:16:01 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 16 Jan 2026 04:16:01 -0600
Received: from localhost (ada0543016.dhcp.ti.com [172.24.233.9])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60GAG0m42986236;
	Fri, 16 Jan 2026 04:16:01 -0600
From: Anshul Dalal <anshuld@ti.com>
Date: Fri, 16 Jan 2026 15:45:50 +0530
Subject: [PATCH v9 1/2] dt-bindings: arm: keystone: add boot_* mboxes to
 ti,sci
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260116-k3_syscon_add_boot_mailboxes-v9-1-6358cd1f2b1f@ti.com>
References: <20260116-k3_syscon_add_boot_mailboxes-v9-0-6358cd1f2b1f@ti.com>
In-Reply-To: <20260116-k3_syscon_add_boot_mailboxes-v9-0-6358cd1f2b1f@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, "Santosh
 Shilimkar" <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Andrew
 Davis" <afd@ti.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
	"Dhruva Gole" <d-gole@ti.com>, Manorit Chawdhry <m-chawdhry@ti.com>, Anshul
 Dalal <anshuld@ti.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768558558; l=2211;
 i=anshuld@ti.com; s=20251022; h=from:subject:message-id;
 bh=r3NdYYTlG6f475PV+rqef3nZ6zah0YPcJ1ylxAeN8LE=;
 b=UIE6h9pyKFumPc9VXTR8x0MN2rC8FLVnj+fb8GBB/Sl+C7p51bEsh/FBDyC50he3LxzgBdzir
 t28Yzd2gF4ABTMvgz+2IFV5FS0Zi4D1I84uAcsyECGD+gP4Tzx9L3UW
X-Developer-Key: i=anshuld@ti.com; a=ed25519;
 pk=Kv8FlQElcrR6efyEHmjtE83y8e0HKvqPyvVY+PJ4UFw=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CDC:EE_|SA1PR10MB7791:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b3f371c-4446-4f75-8c27-08de54e840c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|34020700016|36860700013|376014|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?cHhCcmRpUUNmVUNRM1ZvWmtnYWFGM05FcndzN0w1a1Q1c2FNRTQ5akY0ank4?=
 =?utf-8?B?WVJEUi90cTZHTTNxQWNVaWNtcXVRTy9QUVk5S1BDVWxlN0RNSVN2bGJ4RnRI?=
 =?utf-8?B?TzA0SHF6UVdENXJFbnpJY0w2M0hZRGZkUkJkdElteGg0S05JU0JrRG82SGJ2?=
 =?utf-8?B?Uk4yRHQzRVFoNWVIK3VWZDNVYTVWWEg0U0ozN0ZzekJ1QlFjUW1GRFB1cEkw?=
 =?utf-8?B?YzYwOFgrbFQrcTVlMU41dFNxQ2FFaUFGOFJmK25YcHd4SDdBaThrMWVGRERQ?=
 =?utf-8?B?VnA3ZitBR0JmRVFWM2ZsM3BFTFFBaDNRKzNDYWpBS2FxakhrV2ZrVFJOaWtu?=
 =?utf-8?B?YzhrOXpReHVXcDlEMW55YitsZnltNlFWaDUzL3RFbFM0S2xMZ3hObDByRjJx?=
 =?utf-8?B?S2hOd04wWFFobzduRlZUSVdEOW1zL0Y3Y1pRMi8wQUVwM1pnMUtZRm5yRHIx?=
 =?utf-8?B?SGQ5U3pESHRSWkdQS2R3MnRjMEp4Unp6OGVUa0tCV29KS280RkQ0WjJTb3hn?=
 =?utf-8?B?bHdFVHJqdW5ONDRHRXZZajdwRDZJM3d3MklFQ0NQQnZRQ3NIK2dZZDQ4eld2?=
 =?utf-8?B?R3dvUitINFZ2c1BEMnBGdU81NThsZkNkaDBrWDFXVHBLK3VXcVF4bUZ2Y0dQ?=
 =?utf-8?B?bjNLQVhYNDZvMVNQMldFaTZvU0czV1k4TjJPNHVSWlRHY2ZReThyTjY2SUU4?=
 =?utf-8?B?djcvS2xPYjVQQnJ4bUlyMXFLdTVoQklZTGJRU0gzY24yWDc1eVBIMUJzTzMy?=
 =?utf-8?B?N3hIL0RyVEQ0Z1I5ZHVGUnNibEN0WUNNTXpvdUtqSWpoaDlObm14eTBiVVl2?=
 =?utf-8?B?UEFrdzdVdHMvQzV5dTRHTWU4OGxyWUlqb3g5SnNwcXNYR3dtWmRtdkcvRjJJ?=
 =?utf-8?B?eU1GNFRSRXdXdWhGTm53U29CbVRJMFBJdmtoTmRHRGc2QkU2eHdzMWRZVkhu?=
 =?utf-8?B?SW1rYVRWaFN4a1JpUTFvMXVIOVpvTzYzUGVYV3UrcWZGS25TKzdidDd5RDNp?=
 =?utf-8?B?a1pucE5oL0w1UStNeENndEREc2MyNEZrcGY2T0ZteklTbEhNSXBmUXQ0d21x?=
 =?utf-8?B?VndEL2FxaUZTY0hkazk3Q0hzTXpNVFF5MnJwL3lFUEM5MDViR2FjcG9iVmVE?=
 =?utf-8?B?Y2lMTGlLeFJSbmcvVmNyazEzeVIvUHFEUHlnbGcvLzNmVnJRNVovb0VWb2xU?=
 =?utf-8?B?MWtLQll4aVMzK3MvTDJ1MUtMTTJHc2Fzalc0VUdZbUcxU2pjTjlqTEFjVFR0?=
 =?utf-8?B?KzJ1M1ZXVmY5NWQ1MHRMKzdqSWJ1eUpqLy8wcDhaNnFLeDZ5aDNUdThVYXlP?=
 =?utf-8?B?blZwdUVRZFI5T3NLZFc3NWtVOE9mTjlwMUczbTdJdlg3UVhiUUZXRFI4V08w?=
 =?utf-8?B?aE5SakpFbEJ5Nkpiemxzc1c5K0h5bDErV0lwS3REdHcyU09sUXlZbUtyRkc1?=
 =?utf-8?B?N2VMMkd4SXk2TUIxNG9YRFp4OExTT2Z0aWZtbDFhVmhOSEhrbHQyRXNLWW1s?=
 =?utf-8?B?NklmN3BXNHRQMXc0enJXTjRhY3pzNU9kVVB5N3BEUXN6RHhMYmlNSjFjVmpJ?=
 =?utf-8?B?bElxeFh3QTlLVlJOWDdMYnB6RHFkZVU3RHpXWDVOVWgwYWNNZjV3ZzZSTzZD?=
 =?utf-8?B?b25vN1UxNEd6VWVJSUlacjhBUnQ3eGNRcnU2QWU5Q3ErUktVSUdtZEtSc2h1?=
 =?utf-8?B?aXo1dDFydW8rZDBlaGozb2Z5enB0UkVDRGdDdXFMelNYMnZFMEo0Y0c2ajJE?=
 =?utf-8?B?Qmd6VldEMVNjS2hSdmpnQXZrR2pla0RKTnBianVjTUM3Zm1XTkwwUE5jRUkv?=
 =?utf-8?B?cWdydVRKbFJhQm55S1duQ0FKMHJIenRWU0tucklaRlJnWjBCcEFIcTl3cGlw?=
 =?utf-8?B?QjFyMXpnVUhOL3pxS0p6QVRXdUdXSW11a2dFMDZxeWE3aDM4YVlWWERhd05p?=
 =?utf-8?B?SWlXN014Zmc2UTJBTHpvbVFFa2IxaEFuNnhmWGRDMUN5TVpnNG5YTVJPd1cz?=
 =?utf-8?B?TG12WW4yMFZrb3RRa2NOZG5RKzkwc1pheTFTV1UvVGlSbkQzUUErODlELzlz?=
 =?utf-8?B?c3JwKzZ2TGpNUWVaR0tidHpDS2M4RjVlSnM2VjhkeDhsa0UvcnIvM3lXcUo1?=
 =?utf-8?B?d2N0QmJmWXdseDUyZ0lZVHlUNzBySjE0bDgwc2lpSFZaYVRzOTFZMTQ4WEF2?=
 =?utf-8?B?cVhUOXNqZ0NwMmlNWmtRdFF0KzgrallkOHpTbDNFTi9pUVRRelpwY0tMSjla?=
 =?utf-8?B?cWo2U3pBZ2NNeGJMKytEdFlNQTBRPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(34020700016)(36860700013)(376014)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2026 10:16:02.7808
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b3f371c-4446-4f75-8c27-08de54e840c7
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CDC.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB7791

The bootloader on K3 devices makes use of mailboxes as per the ROM spec
which might be different than one's available to the kernel (firmware
spec).

Therefore, this patch adds the missing mailbox entries to the DT binding
if the matching compatible is ti,am654-sci to represent the mailboxes
exposed by the hardware during boot for the purpose of loading the
firmware.

The newly added mboxes are made optional by keeping minItems as 2 to
remain compliant with existing device-trees. The new 'notify' channel is
not supported on all SoCs and is therefore kept at last in the list.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Anshul Dalal <anshuld@ti.com>
---
 .../devicetree/bindings/arm/keystone/ti,sci.yaml   | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
index 25a2b42105e5..0e505b96e499 100644
--- a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
+++ b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
@@ -51,15 +51,27 @@ properties:
     minItems: 1
 
   mbox-names:
+    minItems: 2
     description: |
       Specifies the mailboxes used to communicate with TI-SCI Controller
       made available from TI-SCI controller.
     items:
       - const: rx
       - const: tx
+      - const: boot_rx
+      - const: boot_tx
+      - const: boot_notify
+      - const: notify
 
   mboxes:
     minItems: 2
+    items:
+      - description: RX thread
+      - description: TX thread
+      - description: boot stage RX thread
+      - description: boot stage TX thread
+      - description: boot stage Notify thread
+      - description: Notify thread
 
   ti,host-id:
     $ref: /schemas/types.yaml#/definitions/uint32
@@ -79,6 +91,18 @@ properties:
     type: object
     $ref: /schemas/reset/ti,sci-reset.yaml#
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: ti,k2g-sci
+then:
+  properties:
+    mbox-names:
+      maxItems: 2
+    mboxes:
+      maxItems: 2
+
 required:
   - compatible
   - mbox-names

-- 
2.52.0


