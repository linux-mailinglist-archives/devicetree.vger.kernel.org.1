Return-Path: <devicetree+bounces-256083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17396D31992
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:12:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E40130D7317
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C62E23C503;
	Fri, 16 Jan 2026 13:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Dy1TBqxE"
X-Original-To: devicetree@vger.kernel.org
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011051.outbound.protection.outlook.com [52.101.62.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF1822FDE6;
	Fri, 16 Jan 2026 13:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.62.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768569087; cv=fail; b=i0chTt+ffiToOoNVDabhhau2p7MjcPZxrHbnx3iew+jTXbixV7PW0M2mfiJa6aaiZ5yK8iW0FOALLhlu5QK6FFgrCmeDdCNrBtsf3cWm6OcL3KJOQ7bYvLo23K7h8M/qofid+XbvKDJLkPaHd6ZmneGL/0SDlwp8UIa7o5M+HbU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768569087; c=relaxed/simple;
	bh=M7WuY9/OdIM0ee4mcawoIsxAHskRdnvel3KOVkgOVqk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=lgMQta9envm2BBzdvVCY+rQQbU5qduN1qJUNsSnW0dVQDulmLDkRwbQKsgp+sEjEhtn6F3yrfF+xQJKe58ztNha33yqENHFc2/4jf6swZ9V6bf8POKOEhr+p55lmw5ms8BPmQA0CmyDDX1jZHZhW04xMFbt6OHvp5G+coYVmlDo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Dy1TBqxE; arc=fail smtp.client-ip=52.101.62.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CUwLz14EEvMj9X97AyP9N59AXuPvL9UabrI00mqLbsGP6sTt52YGre56YNvmtJo0jP6Kl81pne58GRt4Ntnb4zLxYQkf6gq0ZQPXtTAdSrzp3UIbiHqo9FWt8EjGPhBKqeo9Gq66fJyuc5alKjYb6Q99fqMgZzp5kdOT6plXqJsFS+vlVjWdrR9Avo3ZmlgMa3UGSKdTZZsDCAoXvqKwBh8vya/yK45G5lVDuG1c0Mxu4TRykF7VyFV9EzyCq13kezyQc8N1Ep85B69TcUIjKRoX3bKAjkMNE1126MYIVbcZAXTSmuZr8FPG0GQsZuJ1JVVb3EVoQWGwd25f8PWgbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eqWSRxEo1PMrKiGT4i1yXUBYM7aRqrafRjPy59IfNMA=;
 b=otaGbgnGYbX50a/VCngIap0T7Po+edCtwqWjdr9KZyp8+t+/aNc+Whx5ZQ4lmCRLpsobFWN/iUH62mz+sXMDoZrTYFmJoGEEvUynTh95Q1D3YgBsk779pT3Kflhzw0oiYD+2TXJpSfG8MhpflMy8nWqwJy3G59iy1HbR5Wdvhiivdeibyz3eA6Km7GOF7k3Fddck1d2UrwAEpas9JTPZ5V16eFFg/MgLIAbJXaQ4n5gfd+EKLywPD7MzUnl8nhKRiGdCoOmCmzXmEpa7/DaPWjQerzl4yFQM7NVlWCbk5aIRFM0iUeqZu16nTIPDQRuYLeJve6sr+pPehtC+qg4iDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eqWSRxEo1PMrKiGT4i1yXUBYM7aRqrafRjPy59IfNMA=;
 b=Dy1TBqxEl7uV8+s6wQD9JwTQz80xgu7klRJDoo+I+4d7adkD80RktshK6i1OJ1D0HRwsE+n2UgRaGBimyv85ET50pADesrkjnfRzlxA+jT8bQgUvdZQ9Pqs+VcpGW8n4Mc7gJeKateId1Dft+KCV45o4G7zmA/QACfM2kWZKnBk=
Received: from CH0PR03CA0080.namprd03.prod.outlook.com (2603:10b6:610:cc::25)
 by SA1PR10MB6565.namprd10.prod.outlook.com (2603:10b6:806:2bd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Fri, 16 Jan
 2026 13:11:18 +0000
Received: from CH1PEPF0000A347.namprd04.prod.outlook.com
 (2603:10b6:610:cc:cafe::f7) by CH0PR03CA0080.outlook.office365.com
 (2603:10b6:610:cc::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.8 via Frontend Transport; Fri,
 16 Jan 2026 13:11:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CH1PEPF0000A347.mail.protection.outlook.com (10.167.244.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.4 via Frontend Transport; Fri, 16 Jan 2026 13:11:17 +0000
Received: from DFLE205.ent.ti.com (10.64.6.63) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 16 Jan
 2026 07:11:12 -0600
Received: from DFLE206.ent.ti.com (10.64.6.64) by DFLE205.ent.ti.com
 (10.64.6.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 16 Jan
 2026 07:11:11 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 16 Jan 2026 07:11:11 -0600
Received: from psdkl-workstation0.dhcp.ti.com (psdkl-workstation0.dhcp.ti.com [172.24.234.127])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60GDB0HG3181044;
	Fri, 16 Jan 2026 07:11:06 -0600
From: Aniket Limaye <a-limaye@ti.com>
Date: Fri, 16 Jan 2026 18:38:41 +0530
Subject: [PATCH 1/2] dt-bindings: interrupt-controller: ti,sci-intr:
 Per-line interrupt-types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260116-ul-driver-i2c-j722s-v1-1-c28e8ba38a9e@ti.com>
References: <20260116-ul-driver-i2c-j722s-v1-0-c28e8ba38a9e@ti.com>
In-Reply-To: <20260116-ul-driver-i2c-j722s-v1-0-c28e8ba38a9e@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, <u-kumar1@ti.com>, Nishanth Menon
	<nm@ti.com>, Tero Kristo <kristo@kernel.org>, Santosh Shilimkar
	<ssantosh@kernel.org>, Thomas Gleixner <tglx@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>
CC: <j-mcarthur@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, Aniket Limaye
	<a-limaye@ti.com>
X-Mailer: b4 0.14.3
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A347:EE_|SA1PR10MB6565:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ade1d57-82ee-4bb7-e841-08de5500bbe3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|82310400026|34020700016|1800799024|921020;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bUtTYU81MDNZNDJ3OURHbHBheDF6bXFHYzNjTTVaa3I2Zi9NMFdoWXpvSEFO?=
 =?utf-8?B?Y2Y2bk5NVmJVaFRUUndQVlhmU0ZneDJlZEJvNjZrN2Jrb0sxTy9rZ3pveDV3?=
 =?utf-8?B?OG5ZalhHelBzczRQTXRaT1A2QU5MSGRsbzNRcDFQek9PWW9XWWtZdWhMWVRS?=
 =?utf-8?B?NUtXYTA2NWdXUTNTRlNVQWlSVEVKMnpMMmtqV0JaOFAyem41Yy9ac0tKaTZ5?=
 =?utf-8?B?OTZQZjhjYklKc0dzWTYrR0ttU09sQklITkhhUlNoaE8zcmdwbDZPMXNDTmNl?=
 =?utf-8?B?SXlURWpGbm13UHhKZ3Z5ZHNMb2U1RmptbXNmcXRlWnAraCt5cGovWWhHaVNR?=
 =?utf-8?B?V2tBU2RmYmlmZGJFemhaNGNWaEpzVytXOGl3c1l3cWFaQmpSZEtGUWMxVE9X?=
 =?utf-8?B?aFFEY3g5VlRWYXgwSXpXRGY1ZThVTEFud3pnSWR6cFYvcWFJdTdHakpWZ0Q5?=
 =?utf-8?B?YVBOU2V6MTUxWFFuWkkzNmx0TzZJdEhQZXJBQmlpOWJqeTBIdklxV2lrY2w5?=
 =?utf-8?B?U1NTVlRqcXJ6RFZwWXF2d1gzNWxRc00yMlJqYVVlN1BPTXNuRDZZZE5TRjdp?=
 =?utf-8?B?KzNKbmZqSy9HekpsR2d5RXcvZTNqWmFqcDY4S1phY012NHN4Z2p6ZkVkS1Fv?=
 =?utf-8?B?TmFUNjNyOEd0VTE2L0ZRQ2E4VkE0NXBLdHNBZkt2TXVRZ1RGaHpkQlNrd0FM?=
 =?utf-8?B?blk3SS9yaGlRN2d5QTlCb0Joei9aM3hMdzVRVjFJTi8wOEZrclQxSm1DTzJF?=
 =?utf-8?B?N0dJam1XZE0yWDhvakhyMld1cUpHV0haTEVET2ZHOGhvcVhqaUNMK3VtMUE1?=
 =?utf-8?B?eFhJbzE2S0JVdmZYeE9jUzU0S1h2ODZSaTROL04wMEMvSTVYdjdxUkNIMlhH?=
 =?utf-8?B?eURkNkdXdFpJcFZlU2JuZHNiVWN2OVBqQmJRSnFxZnUveDB1YVBoTzdiZm1r?=
 =?utf-8?B?Qmd4WmZvWWpoWExyOHFNRXBYa1ZGWkRvdncxbEpITmJJR1hQS3NnMTdlSHVU?=
 =?utf-8?B?ZkpoVVhYK2UzcFEvSzVLckF5NjFSTjRGS25Jc3JYaFJTeEtYSWFjRG8way9J?=
 =?utf-8?B?TDdxTkZHMVJxN2xucU8yK0V2Q0ZxMGVMUFVCcjc0ak1wTmQwNXJaNW5EcUJo?=
 =?utf-8?B?R3lYWXVBQmVmdDdJcVlsKzRPdzZVWUpSK2YyRk1BbU8zY3k1MHZHOXoxaDlH?=
 =?utf-8?B?Wlg5eUJhTndlT3lpTm13N0ZjUS9oTExweGMvbnJCRGtxakN0dGE0blJaRTFh?=
 =?utf-8?B?UjgxNGZGQ1dJMlZlM0V4VUN4NnljZjVobjBFMUFwZ21LaGVPOHZIYzVQWkkx?=
 =?utf-8?B?bmo4dFBnMUpVNWJUSmoxN1RjNjRxeVNpREN1emJuaUJpcWRmSUxVdHM4R00w?=
 =?utf-8?B?UjRQRTdEdHltYUhMVXcrKzVzYjFxbDlqc0Rsd2xNNURDejE5Q3FVN0NkZDUr?=
 =?utf-8?B?VmpxTjVEU280cytEZlZMK3JuVGM4anh5L0NoNTJIMys3eWIzZmwwUUdNVDZv?=
 =?utf-8?B?TkVTUzljL292OWlhdElVYnA0V2VRVjhCZDlqUkJtM0lobGhJM1NNSzhaMU0z?=
 =?utf-8?B?QXN1djhxdWVuSHgzWkNidVlJMDNwS0lsdjNzQVlPR3dzTk55RTVQRXQzK3li?=
 =?utf-8?B?U0dmd3lwNFhhMDZqM1VDWG5iMXBxWWg4TGF0MnFFTmJXTDd3QmVtb0JpVDdQ?=
 =?utf-8?B?MHJ1MVJBSncyaGVtMEJwaXFGdlgvQVUyeFNkaUUwZDRaM3lNVzdxMC9XdllT?=
 =?utf-8?B?bDZkeGxoOWpNdFBneWxFNDlaVFVWTnRPWTdzdDRzeEh3TFBtcW42RjY3TFlw?=
 =?utf-8?B?Vjdld1BLZlZsZjNDcWlRVjdMWi9LVWpZR1RZeXk3ZnM0ck0raGF6TzJhVVQ1?=
 =?utf-8?B?RDIrVmVtNk1RTFROZUtRZVlWQnJveVBBZkxubmFkM09uYkZSekJEVkZ4THI4?=
 =?utf-8?B?eXNpMWJnMlp3ZkswR3R0cVZ2K3NwS0RuRTlTRHcyR1djT3p2UzdYZDA4eEZa?=
 =?utf-8?B?YlB6U1dsK3kwbzk4VjdpVjI3OCtZS29iK3FDTVNWbFBUSzZ3djZIRnFlK09h?=
 =?utf-8?B?YiszeUNuQmFacHB5ejd4eDJCYW03ZXZvdzlzWEZyWnhIR1RuNlZNbGlzekZk?=
 =?utf-8?B?RVJSbkErTnMvQUFuZzd2aDBhQXdKVmZNcjMvandJaEpmdFlQamd1RDZKSDlW?=
 =?utf-8?B?aW1nUTVFNm5nZVROb1pndkZNbFk0MENiazBCUUFNZCs5ckVidjc4RE9aL3A0?=
 =?utf-8?B?THN2aFI0RUE4bW5GaG91TmExVElRPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(34020700016)(1800799024)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2026 13:11:17.2860
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ade1d57-82ee-4bb7-e841-08de5500bbe3
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH1PEPF0000A347.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6565

Update the bindings to allow setting per-line interrupt-types.

Some Interrupt Router instances can only work with a specific trigger
type (edge or level), while others act as simple passthroughs that
preserve the source interrupt type unchanged.

Previously this binding enforced setting the interrupt type globally via
the mandatory "ti,intr-trigger-type" property with values 1 (edge) or 4
(level), meaning all interrupt sources for that router instance had to
be homogeneous -- All edge or all level type interrupts.

Add a third enum value 15 (IRQ_TYPE_DEFAULT) to indicate the router acts
as a passthrough. When set to 15, #interrupt-cells becomes 2 to allow
each interrupt source to specify its trigger type per-line.

Signed-off-by: Aniket Limaye <a-limaye@ti.com>
---
 .../bindings/interrupt-controller/ti,sci-intr.yaml | 42 +++++++++++++++++++---
 1 file changed, 37 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
index c99cc7323c71..59c01f327f3b 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
@@ -15,8 +15,7 @@ allOf:
 description: |
   The Interrupt Router (INTR) module provides a mechanism to mux M
   interrupt inputs to N interrupt outputs, where all M inputs are selectable
-  to be driven per N output. An Interrupt Router can either handle edge
-  triggered or level triggered interrupts and that is fixed in hardware.
+  to be driven per N output.
 
                                    Interrupt Router
                                +----------------------+
@@ -52,11 +51,12 @@ properties:
 
   ti,intr-trigger-type:
     $ref: /schemas/types.yaml#/definitions/uint32
-    enum: [1, 4]
+    enum: [1, 4, 15]
     description: |
       Should be one of the following.
         1 = If intr supports edge triggered interrupts.
         4 = If intr supports level triggered interrupts.
+        15 = If intr preserves the source interrupt type.
 
   reg:
     maxItems: 1
@@ -64,9 +64,14 @@ properties:
   interrupt-controller: true
 
   '#interrupt-cells':
-    const: 1
+    enum: [1, 2]
     description: |
-      The 1st cell should contain interrupt router input hw number.
+      Number of cells in interrupt specifier. Depends on ti,intr-trigger-type:
+      - If ti,intr-trigger-type is 1 or 4: must be 1
+        The 1st cell should contain interrupt router input hw number.
+      - If ti,intr-trigger-type is 15: must be 2
+        The 1st cell should contain interrupt router input hw number.
+        The 2nd cell should contain interrupt trigger type (preserved by router).
 
   ti,interrupt-ranges:
     $ref: /schemas/types.yaml#/definitions/uint32-matrix
@@ -82,6 +87,21 @@ properties:
         - description: |
             "limit" specifies the limit for translation
 
+if:
+  properties:
+    ti,intr-trigger-type:
+      enum: [1, 4]
+then:
+  properties:
+    '#interrupt-cells':
+      const: 1
+      description: Interrupt ID only. Interrupt type is specified globally
+else:
+  properties:
+    '#interrupt-cells':
+      const: 2
+      description: Interrupt ID and corresponding interrupt type
+
 required:
   - compatible
   - ti,intr-trigger-type
@@ -105,3 +125,15 @@ examples:
         ti,sci-dev-id = <131>;
         ti,interrupt-ranges = <0 360 32>;
     };
+
+  - |
+    main_gpio_intr1: interrupt-controller1 {
+        compatible = "ti,sci-intr";
+        ti,intr-trigger-type = <15>;
+        interrupt-controller;
+        interrupt-parent = <&gic500>;
+        #interrupt-cells = <2>;
+        ti,sci = <&dmsc>;
+        ti,sci-dev-id = <131>;
+        ti,interrupt-ranges = <0 360 32>;
+    };

-- 
2.52.0


