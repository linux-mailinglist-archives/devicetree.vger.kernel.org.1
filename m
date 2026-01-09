Return-Path: <devicetree+bounces-253097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5225CD07639
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 07:23:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E22CA3006734
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 06:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B79296BCB;
	Fri,  9 Jan 2026 06:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="Pa2sh9ea"
X-Original-To: devicetree@vger.kernel.org
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012032.outbound.protection.outlook.com [52.101.48.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606D628850B;
	Fri,  9 Jan 2026 06:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.48.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767939795; cv=fail; b=HVQWzjJ8+JNAmk5cIMgc9jYtiOilMH+rfBY211i9f7dHlCRLW73A+N/TyywFHdeJGuGJcUvwXeX50SSbCPxav/uaiPJe1TD6joYIsPY+pP4ZqAuweTCr+s7mW/AAB5NZ+SgyWvgn1EQWns4hF984kRodtiXVUDA1fltDuugbmFc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767939795; c=relaxed/simple;
	bh=jLtpnwsgLPUmXxxdkLU7Q2mlSjxJF87fwf3RmK1zEiE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=j6Nm4yBz54k1lAP3Bl7N7HyuL2CiQFpfg44panMxba7corvjZDsltdQSYHAcJ4hwF+Ra/MzoVG1Kxk+WGhwk9FUoLpFUaIm++LOGbBvRg4kDa14PfmrB+a49Cu49XQD4rV3WFHzuWtfyCgfGFsKRr9UZYO3fTlVATbHfLAzF8eU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=Pa2sh9ea; arc=fail smtp.client-ip=52.101.48.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lwt/ti6KCZnhas9laK6fEYol6gTQPiK6UfEriclA9hsTaCgR1RhmetE2Tj8l1DCI7JhuuuJ5f8TFqSVG1+SPjxYj5mi7+fqucHp07tiUKXumeJjbFaNrJSNgvTk+xTpGCbEqum+6moSsvL04Jl6hXXRH98oPz/juQwKsdjvn2YHFb5ePGL88RZPK1n6wX6mL/FNeONBMLjn33cibLHWUUkcekRUGeXgSmOxGs8wUtH0eE7QK4q9H1B8yXQgM1c7sNyVJCo+ioe6K8rZS/PAuk0PqLkwz2XzLklVS5L5RSe1nPLbyK3lpCL6WiVqjvRd1nPkLIb5dysYiVocmFGdPpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nm3ZhIyaZGXtDwP0q4hDzeEfPCJcSzF9WroLOJkY+iY=;
 b=p7cqwEs/JG6P+IwSuez+YT5B/x7/P54GawHBFJyNUfN4Im4RMyHZ6B4hLBD5w+mvY2qcLHBYyxEuVQPcqNJLjFFpGTTqbByJooln1TQWGu6VTWcxYd5Fh0BTGJDlqdtL0MP7TAEGH+XeQTmM4BGIIB3nN8khkETHbp3hsfqzAPjyKKA7+cB2Euomn5Z7tszxMF+ogYbJhZsYIG5zNEYmslSbDczYD69ti8EV6nlyAznXHza62FAlodVWxRDDdhBNhx0yXO5pz/E3ZQ1Q9NOxUvygtgtENCdORF6Ob24/WUdSe2UpdGudrEgwfBUcp7NfHVTjEBw7FNr0lpRTI7sxrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nm3ZhIyaZGXtDwP0q4hDzeEfPCJcSzF9WroLOJkY+iY=;
 b=Pa2sh9eaWqbwLf4G3ivDVjUnoduxUwaMa0GXvRcYJXoM7Pt/OQ8BMLjbTJNpBscK5xw/KDVlHjlRofg2t65TB4Y+mDp81dJrYFyS/jB1JsJRb9ZFzPT6S4ukpqO9SNK0AFifZ4KhnG62ggEjUmfUaopck7TNRdjJM4nGAT5FEuo=
Received: from BY3PR04CA0017.namprd04.prod.outlook.com (2603:10b6:a03:217::22)
 by DS0PR12MB7557.namprd12.prod.outlook.com (2603:10b6:8:130::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Fri, 9 Jan
 2026 06:23:11 +0000
Received: from SJ1PEPF00001CEA.namprd03.prod.outlook.com
 (2603:10b6:a03:217:cafe::cd) by BY3PR04CA0017.outlook.office365.com
 (2603:10b6:a03:217::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.4 via Frontend Transport; Fri, 9
 Jan 2026 06:23:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb08.amd.com; pr=C
Received: from satlexmb08.amd.com (165.204.84.17) by
 SJ1PEPF00001CEA.mail.protection.outlook.com (10.167.242.26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Fri, 9 Jan 2026 06:23:11 +0000
Received: from satlexmb08.amd.com (10.181.42.217) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Fri, 9 Jan
 2026 00:23:09 -0600
Received: from xhdharinit40.xilinx.com (10.180.168.240) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server id 15.2.2562.17 via Frontend
 Transport; Fri, 9 Jan 2026 00:23:06 -0600
From: Harini T <harini.t@amd.com>
To: <jassisinghbrar@gmail.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <michal.simek@amd.com>, <shubhrajyoti.datta@amd.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <git@amd.com>, Harini T
	<harini.t@amd.com>
Subject: [PATCH V2] dt-bindings: mailbox: xlnx,zynqmp-ipi-mailbox: Document msg region requirement
Date: Fri, 9 Jan 2026 11:52:59 +0530
Message-ID: <20260109062259.1769305-1-harini.t@amd.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CEA:EE_|DS0PR12MB7557:EE_
X-MS-Office365-Filtering-Correlation-Id: cfbafc7e-a0e5-4594-6c6d-08de4f479021
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700013|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ZVEj2uEZdxC3S1vzlyMMryoAr+yi3KR05X2BPWM8EhC4ZWqlXQ8O1n29R8Wq?=
 =?us-ascii?Q?bcDplzvdQ5BzD3AXGEdbM4grqq180bbJ56NCPF7U92AMvfRmovSCc67PFXhU?=
 =?us-ascii?Q?gOuIPeLyvwR/Mci+AhgFZkU2onu864n7ab5D8gjM9xJa3MwdzjaAAIQGObK/?=
 =?us-ascii?Q?vSNe9KMWPlHGQiatqZBbpaAiazlrwadZ4a7M/1c7nJJn/qtmAwGkCLcD7kAf?=
 =?us-ascii?Q?BrbYukYnqgHHxtX248WGDvPiCxvA78/Dz1NHhF8J7kitetSAV/bJ88J196s2?=
 =?us-ascii?Q?y0VIYsNOGvoq72GbAmZqiYBaFuDQKpfQ0u9KhpvyxFqqFd7sT9p4BflYO72Z?=
 =?us-ascii?Q?st/AifLor1WH+7HVMQEOMUIB5YPRtS/wbuDtr6fNeWwRLlOzKqF7GDuMwLZ0?=
 =?us-ascii?Q?9AxK6dNBU4iapAtCZFHMG1wXPRttjL9VsErfs7WZ1dxjWC9LT/kGxkfd+6lN?=
 =?us-ascii?Q?Gn4b12HOznU1Tg47e6yP5jxBIGecB6k30GAiL+nAaCS7mngEElf9iarihmre?=
 =?us-ascii?Q?cit/LOJub0NUyqnZ/Gu3LeF8qPPrVkYlwWQxfTRZB4zyHJEzcHMPmt8v12y4?=
 =?us-ascii?Q?xDdiqI2XMq8wrUBwUSN49CVrg1O0HgAu3Fr9OSq8wBfZHykbgiD768Zhkzv1?=
 =?us-ascii?Q?Oy4pFfoPRZ4kafb1qcRdhhzZva4TOda6rPKcQEt3p01fpREDslx72q2XSs7r?=
 =?us-ascii?Q?rvbJQOynuOTm5H80vzohQ0offMrrUoRko51C7Y7vEABySvGW9dOXRrHaIwqa?=
 =?us-ascii?Q?Gcs1mfCha5AkJpiT42dS6Av1nyIqbAUppOiCz7WKeTL2/h8mY7AKPrKyhZRx?=
 =?us-ascii?Q?jPspzDoVOBmrIK3oE+1LwpuO7z/05R9gSLVilsFs6zrgnjW0mF8CVzxNHhvg?=
 =?us-ascii?Q?XRUuLbQgFMR0+NRLmxmo0dERVnXvpjd+bZn7dGIBvs/6XC+L641M4A724Yd4?=
 =?us-ascii?Q?P9zU5zzI9kqGx8OJnt8UQ2PYcoSV3TXfwYobMjoaRDwkMVWLkpjsaBI6d6IX?=
 =?us-ascii?Q?UFrHettbdMVNEkFLwIBLmPLmZTyIFxw7o2TqplPi15JupDWt/2A51J07uI0J?=
 =?us-ascii?Q?5Jv8P3yMF5EKk0ljZXWAaePfDZEYIbgjwHuiczwx0vFqcQtF9qFCM9mTAXBh?=
 =?us-ascii?Q?y4t0SyYMfyxUmMTcGppZpW8POagvJcTzMqdHzpFJYkh5/LzaZBhpL2JlwA8G?=
 =?us-ascii?Q?lnojaEYnVOF49De7pC9kc6vBD7JH+O7eWJPCVBHAd5+nGv1m58rKJ+GMMCBZ?=
 =?us-ascii?Q?xFu6sZZav1k1gC9n35ssgZQU+9Xgj3l2X57kafvy6bRpxeRfCfn9SPLN/tus?=
 =?us-ascii?Q?L6N4JKc4bNsTu5XZE2tlR/rg6lvpmjzqYZHeHTh5wrKxai+F139hEMJysEoe?=
 =?us-ascii?Q?P3TD7vb9TkG27nM67DHmodIrwLI0SpChFRmC7YMw9Nj7uy81BEgfcr6YueXD?=
 =?us-ascii?Q?IbWKcy+Mbm+2L7edSjlsmxQD0467x1guWyvloxGOMcZCgBf9JUeqdAuL+KUo?=
 =?us-ascii?Q?fUGdoS2s0jYSZ9zB0A4/OO/5Oiu80SIPzNZ/lxZQVaV+0hQreWHlMtzwaGxo?=
 =?us-ascii?Q?RFgnKZCULpw8sYr09+Q=3D?=
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb08.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700013)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2026 06:23:11.1230
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cfbafc7e-a0e5-4594-6c6d-08de4f479021
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb08.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CEA.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7557

Add description clarifying that for Versal IPI mailboxes, both host and
remote agents must have the "msg" register region defined for successful
message passing. Without both, only notification-based communication
works.

Signed-off-by: Harini T <harini.t@amd.com>
---
Changes in V2:
- The description regarding the "msg" register region requirement for Versal IPI
mailboxes was moved from the conditional schema section to the main description
block at the top of the YAML file.

V1 link: https://lore.kernel.org/all/20251222044653.1757886-1-harini.t@amd.com/
---
 .../bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml     | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
index 04d6473d666f..a5205ee5ad0f 100644
--- a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
+++ b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
@@ -11,6 +11,17 @@ description: |
   messaging between two Xilinx Zynq UltraScale+ MPSoC IPI agents. Each IPI
   agent owns registers used for notification and buffers for message.
 
+  For Versal devices, there are two types of IPI channels:
+    - Buffered channels: Support message passing and require the "msg"
+    register region to be present on both the host and remote IPI agents.
+    - Buffer-less channels: Support notification only and do not require the
+    "msg" register region. For these channels, the "msg" region should be
+    omitted.
+
+  For message passing, both the host and remote IPI agents must define the "msg"
+  register region. If either agent omits the "msg" region, only notification
+  based communication is possible.
+
                +-------------------------------------+
                | Xilinx ZynqMP IPI Controller        |
                +-------------------------------------+
-- 
2.43.0


