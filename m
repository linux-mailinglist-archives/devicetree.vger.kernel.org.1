Return-Path: <devicetree+bounces-274883-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCqfABmps2k7ZgAAu9opvQ
	(envelope-from <devicetree+bounces-274883-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:05:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D2D27D8BA
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:05:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 169DF3027B58
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F1B325491;
	Fri, 13 Mar 2026 06:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="FyRWuGMe"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012022.outbound.protection.outlook.com [40.107.200.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5476A54774;
	Fri, 13 Mar 2026 06:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.22
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773381890; cv=fail; b=X8Vw+kJnKGV7KGg+1j67IwlN36afYYoY0SpffHq8Spkp+yim2pcQH6GZUbzUcU4XowdmW0hTsgfImJBuNITzOyGL8PCtb2x5OaNXiKXHY7wsnwB7/khg9kPbMVKBYn0xbk/sqJqUPESXAEdRaGaNBqDSwMyI1gaCWhnceMVjJ2o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773381890; c=relaxed/simple;
	bh=wXgZQo9oM7tn1yrnkAF6nWOeVHp12K54YF2K65g6XJU=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=CNtJiPE6NJDPiYZKh+gia2O88WzDxR6vE26dW2vfEO/xWQew4Vs0HLZlt9SgheDUQGLAJoW5fQtwFlvKFfDicUgW5yS/e103vkqaQXUHhqr5T7H8wwYWubZvgq9PtsQFI/aOxq1HxT3mRjcfBiLh9Z+n4PZ+pyS0iYHNCX2dIwU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=FyRWuGMe; arc=fail smtp.client-ip=40.107.200.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mjOknX0w28GaG+8NzbQ8cazWPZIudPhPGx7TTZdyUHv5Xq140cF7sAzszsCI71rb00O7IKYbz+xzFK5WQ2P76JrFGRiSOP/vgQ0eNFEv9SFtn2zf2ejHjsLf7rqPSnn9GQApev9Q4nNPSHXZB2mu5XzJ78YdgPZvR2K8UZrESMm39IZkCg+RPcyxF4P8lZPCV0tmzg0nKchl7NYx5i5OfY3qsIKsutGMMpU29w54DNoxsX6/8tQL9l/tMoghNrirHPLbqe45ikMUypgMxi5BxeftANeyOGmJLFjYKsu8xwbS5CajWZuhynOjuxFjJoUX6n/7Miv2DXan7kvwf7Wo7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F0hTIt80xcKtRu0XA1wU8nwBTjohcplw00xu6xJdj4s=;
 b=bXTSelZJnfe1TRDVZ1qP76v1NG1TVeVAbBbQwNzgN7d0/UlsqyGvIkz8hM4rSFFAH81ipM8mG5WKtEsKg0yODOI9u6IblxmHgO87vFArCTvzIO2aqYhZG9ntjvGxWu0iAiReqVKXiLDezmCY+4pKvXCREW7VOuOIZkONd9odi5Ez9Jale5E7OEQHPakbVBnNFB389EkJfDtUIrYKVch+eRYR47XkIDg3Ftmqw2TJOROT0gs2wrpiCxaXZsThMJM/EDs/CPrc//fsFHJgiERtdAH+4xg+zR/E2F2gMuANOVSSJCz5746TuUM8jtXbAzA6vV1S7mhAdgXVQG3aAdFGPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F0hTIt80xcKtRu0XA1wU8nwBTjohcplw00xu6xJdj4s=;
 b=FyRWuGMek+mgtMhvESn+HMXX9I5qNjZHKJxSCuIfokzCDfWC6i1nfuhISIcDxrYV0HMvf4Zt5BXuf3WZ0mgrXVZCZUXZw/HX5W1BLHumpgbuY7+wV//L+kPAUBbTRyMYdYKaee2kMtWKDIaJsruZIfgu6ziKoHMcSGWXdHTUz24=
Received: from PH7PR17CA0019.namprd17.prod.outlook.com (2603:10b6:510:324::16)
 by MN6PR10MB8070.namprd10.prod.outlook.com (2603:10b6:208:4fd::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Fri, 13 Mar
 2026 06:04:46 +0000
Received: from SA2PEPF000015C6.namprd03.prod.outlook.com
 (2603:10b6:510:324:cafe::de) by PH7PR17CA0019.outlook.office365.com
 (2603:10b6:510:324::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.29 via Frontend Transport; Fri,
 13 Mar 2026 06:04:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 SA2PEPF000015C6.mail.protection.outlook.com (10.167.241.196) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Fri, 13 Mar 2026 06:04:45 +0000
Received: from DLEE205.ent.ti.com (157.170.170.85) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 01:04:45 -0500
Received: from DLEE202.ent.ti.com (157.170.170.77) by DLEE205.ent.ti.com
 (157.170.170.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 01:04:44 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 13 Mar 2026 01:04:44 -0500
Received: from uda1253387.dhcp.ti.com (uda1253387.dhcp.ti.com [172.24.233.12])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62D64fK63710415;
	Fri, 13 Mar 2026 01:04:42 -0500
From: Rahul Sharma <r-sharma3@ti.com>
To: <peda@axentia.se>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <vigneshr@ti.com>, <r-sharma3@ti.com>,
	<linux-kernel@vger.kernel.org>
Subject: [RFC uL PATCH 0/2] Add TI's event mux router driver and build
Date: Fri, 13 Mar 2026 11:34:35 +0530
Message-ID: <20260313060437.3704592-1-r-sharma3@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF000015C6:EE_|MN6PR10MB8070:EE_
X-MS-Office365-Filtering-Correlation-Id: 4eb356ff-49f7-4f0c-210f-08de80c66cff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|376014|1800799024|82310400026|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	lFZoOF2YdhxYKHvdxOzPzFH1ZeHHA0oELJWokCQZQwa6fczdfyxDi5KTLrSG2RNdriXDqt81m/gByirletsu8n3dCfcgH5ldo1X4+YeQEkmyTxMCkcnKaVdm7BrGl+hlfY0qiwmYY0sT66IioC7i8U6mKcF2+z3j4r033BtnmBsfgaEaPuMMzNTOk69HYemuJEn/1bVrI+Aby3snJnO9mOFDPtEGBvRJCJrkmhKiZmTRNszDey4hD6TRqTKyjMJJ0GOwO0y6T0g3+UYYMw4tzy1T5BHsjlexvd3fKBwKpTBzf1WQPBNSdGaZ5uhBzyzn8maDCeWjArvabYzPfsGbxwKFS0sQL1UtvjHU++b+Xy7Jk5/U3efpUu015CXL/wXHzQF0skpc0MNE769bDJsrOoRGOV9qE8+C5cpYN9xyxNZnEzBXHoH+nwZDBXxg4trUpnqhKzKyjOj8WaV8gxlZ7lU373FLGus1lunUIyPg2gtd7WBHS6LSTk7Cu9pf1EH7CoOSC10bYoy72Tb9U9zm5oMvxjBrEihWZ3m8uc9mWqx7HDQz6psIt2ZPcKXu1OM9GggNp2xw3JoGWmVPQzexjbtBHBMUVU7OsrqUJ8mj47+OGGZ2lur5TIjpeoDrW9+K9s+aa7dgHqvX9VQZi4tVyxmkRX8P4j3V4fOKghjbXtqOcw6NfEwirxBM/ZlqpY7x64gOs/XNpTlrRvoHPFTNWglw8rV1KpnVr2HJQKUiVkwmX3yeBLfWRK1528yacloOfNWlR+vbWq5AxndseelQEQ==
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(376014)(1800799024)(82310400026)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	EpdmSFJXvsFFiPmok9mg31NKAtpE78CnwXnUNe+9nnbRc1jU006UYC2mf2B0iCy7tBFrBshLU+hG3C73VKLt+S/4mj0tnSk83e3TlEsNMietLPDIobE0vMIJ5x8BhpZeBsdoolnLXhkvzL3XOpnhYymkCdCTe+xSYnQygwwzVb8P3jaHpOs8QJF5cPswBYmSdMfJBW5VAeTz+0lFmRBPcI4hWYIX9mtad1cv1OPkwG0bCe0bDr9o04Zuy0//ZYg1pbHpAa9GY0oF/gLv2uqu7krKsjrnnpiHYsjmgRtNYFDvV3xhEHJ6z868lF5PW9BEFqaIFJQMhx9cZKNf9mMprn7Z8/Shc2fphea+sN2dvSzY2XVNIfdR4bLEZCaKLKVzaA1fYGqMSaR8ZMbP97pfUOHAoK6FrbhAoA2KwmONsy6ZWnwqo38S2/oomFj0oMUx
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 06:04:45.3098
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4eb356ff-49f7-4f0c-210f-08de80c66cff
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SA2PEPF000015C6.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR10MB8070
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	TAGGED_FROM(0.00)[bounces-274883-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:dkim,ti.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[r-sharma3@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 87D2D27D8BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series contains the event mux router support present in TI's K3
platforms. The event mux router are of 2 types
1) gpio-mux router
2) timesync router

In normal scenarios, GPIO signals are received by CPU via GIC, but the
gpio mux router routes the incoming GPIO signal to BCDMA(Block copy
DMA) which the DMA upon receiving uses as HW triger to perform a single
block transfer or as configured.

Time sync router does the same but for the time synchronization based
events.

This driver supports both the routers but this patch series adds support
only for GPIO-mux router.

Rahul Sharma (2):
  dt-bindings: mux-controller: ti: add binding for event mux router
  mux-controller: ti: add driver for event mux router

 .../mux/ti,am62l-event-mux-router.yaml        |  79 ++++++
 drivers/mux/Kconfig                           |  15 ++
 drivers/mux/Makefile                          |   2 +
 drivers/mux/ti-k3-event-mux.c                 | 235 ++++++++++++++++++
 4 files changed, 331 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mux/ti,am62l-event-mux-router.yaml
 create mode 100644 drivers/mux/ti-k3-event-mux.c

-- 
2.34.1


