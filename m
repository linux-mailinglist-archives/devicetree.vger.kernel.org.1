Return-Path: <devicetree+bounces-260153-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAoXIOk+eWkmwAEAu9opvQ
	(envelope-from <devicetree+bounces-260153-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:40:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B56AF9B28D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:40:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B2B23062242
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 22:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41B402E7166;
	Tue, 27 Jan 2026 22:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Jdibe2Rq"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013030.outbound.protection.outlook.com [40.93.196.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F422E1EF8;
	Tue, 27 Jan 2026 22:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.30
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769553594; cv=fail; b=JaOGzUJO5/a5Ey2de1M5a7yziNnlN9idtGysNrioj8G+HGU+uzojdiWLgKsRlrZ4IMncNmRW860859UuaSknZftxrhxTDgDSTAjCnwpfxMFl/MMI2/EkpDjDaKOynJnfEomnOOxaecwEFABwAe0z7HcHtBKBEPC1QOStrwPcKpM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769553594; c=relaxed/simple;
	bh=tk098XTfssSPtY7jBh1/YqYku8gyjoYr1+zcywvW9Mc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=C4UhH//3j/yXfoJYZy1tLE+JwOW5nD2y94LfVVq/zoNJvrbgUeXEARz6/fspDCoRplPfpqshzY+1/mrMldh3ErGNPQ0lrbXhl9wllE3OlRbwaMKwLzihsA8zqPOWYFpyYOM2U7B/stlndKJiBB7WtnNugX7hxovLcZayKs09ZZ0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Jdibe2Rq; arc=fail smtp.client-ip=40.93.196.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u4O1K9iByhIZzy0CO07ixVP+RcUUzR0LngKpECTp3rRhg4nvZPTzsv5brUBnrHLDGVwpLPh+g276/tuWVO1rM6lpFUzuyV7fd2IBsBpiLktvUew1b0tWdWAjD9CCvGcL82Mys9I+uI/bPe0+6xYLggfiS59QJLU3P+RLSUWNA+3O3epXwj4hLMeFFQj4bc3Q0pb87XQe2U33iGIYj1iw/bfKOwdQvDkw9LY1Xegrjka5/08XiT5AmKY+fiKhhrroLRYC2G4viEj9pTskxH13YL5WYOgH4qcwRF+qTKOSiMsMIsNzAoUa5EjLl2i5+erLjaJWrey+pHirLvx30hF7Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SamU2zU/E2VFC0+OFF45Fs4+nHaBK64joLuaLigrfHk=;
 b=hrRE0CB+rhc9ome4Tqmgxy05uE1GF2rluFKLOmtoRJjy0aqJUjXi8nmpwvfpjhFs/UGaAodbMwXkRL5EbWfstz4fLgn+wSsE9LHFjzLpUMMpMZMDVYJY4i4qaBCe8tc3VB5tZ13QY2jSfEM/5eq0lcXy1F8ySHgs0SMMi5DzJfeLcPvD/YqPvFts0YlWMdR1VTB+FxlpiqGRF9uTwd6b5zmooBv4AcXvd695Pp6FuMY7beR/Sz7p4TTH0T9V8QTD6oG6Ie+/yAhgKTaYDp32ZHTa9tKYlf8fDKFd1Yr3nsWXzVtTpKK+Qkhzttw75KX09n4jLn/C8u17vAP1gGhNzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SamU2zU/E2VFC0+OFF45Fs4+nHaBK64joLuaLigrfHk=;
 b=Jdibe2Rq87USDp0U5rsT+NC991OOmz43z/rhvEVwLm+dtceA6mfYmeHHtw2OoW8VxAf6SLc0ZDFGRlnzMO1VbPe4InMGKv05KQ7XoH6ezHsFj7nMhgFLQ89kfrHyhqYrL9Ih8QyBtscquLQJMCc4ASX4Xtdkcvp0aFu9cN6O/Oc=
Received: from SJ0PR03CA0375.namprd03.prod.outlook.com (2603:10b6:a03:3a1::20)
 by DS0PR10MB7204.namprd10.prod.outlook.com (2603:10b6:8:f3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Tue, 27 Jan
 2026 22:39:48 +0000
Received: from SJ5PEPF000001CA.namprd05.prod.outlook.com
 (2603:10b6:a03:3a1:cafe::a4) by SJ0PR03CA0375.outlook.office365.com
 (2603:10b6:a03:3a1::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.7 via Frontend Transport; Tue,
 27 Jan 2026 22:39:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SJ5PEPF000001CA.mail.protection.outlook.com (10.167.242.39) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Tue, 27 Jan 2026 22:39:46 +0000
Received: from DFLE215.ent.ti.com (10.64.6.73) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 27 Jan
 2026 16:39:46 -0600
Received: from DFLE213.ent.ti.com (10.64.6.71) by DFLE215.ent.ti.com
 (10.64.6.73) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 27 Jan
 2026 16:39:46 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 27 Jan 2026 16:39:46 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60RMdjvD1270209;
	Tue, 27 Jan 2026 16:39:45 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Tue, 27 Jan 2026 16:39:36 -0600
Subject: [PATCH v3 1/4] arm64: dts: ti: k3-am62l: include WKUP_UART0 in
 wakeup peripheral window
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260127-v6-19-wkup-uart-wakeup-v3-1-e7ccac761f3a@ti.com>
References: <20260127-v6-19-wkup-uart-wakeup-v3-0-e7ccac761f3a@ti.com>
In-Reply-To: <20260127-v6-19-wkup-uart-wakeup-v3-0-e7ccac761f3a@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Dhruva
 Gole" <d-gole@ti.com>, Bryan Brattlof <bb@ti.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>, <msp@baylibre.com>,
	<khilman@baylibre.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Kendall Willis
	<k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769553585; l=1916;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=tk098XTfssSPtY7jBh1/YqYku8gyjoYr1+zcywvW9Mc=;
 b=H7JEw5y8a99a7vi0kQlhO0/LIWlnHtEZ2SnnU55eEV8wjb31bM6X6AXpLlIzkLtyZ61P/8v6t
 eZVtVw1Q3weCMQiiA4J8XLKbSzyAfM5P2hlwhv8/gHzZ0LDKv8W3Vdz
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001CA:EE_|DS0PR10MB7204:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f1dd25b-4efb-4f3f-6a95-08de5df4f956
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SXJHU1ZYbFY2T1BLNU1JVzNxNU53Z0R5NjMyQ3IwNnJpQnRzcEUxRUxSVmFr?=
 =?utf-8?B?eUNydFVHNVNxVXVCWTZFa2xCNmFsa3JTdnZkRXZmV0hibzVyWmtZV3IyN0Qy?=
 =?utf-8?B?ZDM2cmh4eDM0WHJZQzdCTWx3SVZpVjAycTRURlZQQ085RTdpTVU4WEJLWVJm?=
 =?utf-8?B?WjdKbms4WENFNGkrZmxmZVNoQklPejBjek54WS9jcElNY0o3K1ZZbjhqOE1W?=
 =?utf-8?B?cTFHL0VvdGdObjlBR25HenhDVVFHWTY4OUZNSlBZNFNXTXZ4WWdBV0g2aHNi?=
 =?utf-8?B?aWc5SnZnR0lSMEdhZ2dPQjRQVE9acHlKY3hISDYvb2hNNnJKbisxUDJ6aExT?=
 =?utf-8?B?Vm4xVlV4eWFkNm9hUndudmpRWm1BMkswQVhZRGFvbHBTOUtkV0JEWmJ2ZWk1?=
 =?utf-8?B?dnNHNFM4WEwrWTduRFNKNURpMEMyeWdHakxQaHNZcjhaMHpqZWZhUDg0a1RW?=
 =?utf-8?B?UEdObUlkam52R1dGaDh3TFhtM2lDOHJNZndoanZTSlRkbjF1WHhNczdnY1Vk?=
 =?utf-8?B?KzVzaEMxeVVVdGxwS1hiR0d5RlJkbGg2T1JINnRMMkszdS80dDZEaGw5eVlF?=
 =?utf-8?B?dzAwczl6bW1kRHgwQ0x0NGIzam92dVIrVXl5NFZjNi9Kc0IvU1Z0WlVHL2pv?=
 =?utf-8?B?T3FjdWlnRTNQUTRRYUdlcldkRGJzYUNXNXlqczM5V0VEZmQvNm5XQkpjSHZH?=
 =?utf-8?B?dTNjVzNJQzFPd2ZFNU9BY3NqSXVYdUkrWUk1RlQ1ZDNNT3ppVzhoVFY4YmpS?=
 =?utf-8?B?aUtSVjlqNGNFZWQ5ZjZRVUN1aGpqRUdyT3U1T2VuWUp0ZHlQT2E4UXN1aDhW?=
 =?utf-8?B?aHlUVVNqMjlXNkZIQ3JNUjBoOWJ2M1pyczJFM3NPZk8wZmM4Y3JGVk83TGVJ?=
 =?utf-8?B?OEMzV0FJVVc4MU5TeGthVVB3MnZZVjlzQzhvbExkbm5kWk5xdkhGTHQ1cjJI?=
 =?utf-8?B?VXdwK0xTY2hNZE9MNzh0RWx2Q3pLQWRVTU45Sjd3RXduYTBCV09iVzFBanMz?=
 =?utf-8?B?aXpRSkxhZDRDczl2WGZXT1NrdXhIRVpWa3Jad0pGY0ZqWkRWN3prYmtZY3ds?=
 =?utf-8?B?aEF0UXBZbkpWRExjMFRPak9SZVE1V0g2eUloRGFsenE0NmQzU0pyV0YyNmhM?=
 =?utf-8?B?OWNWMG1nNWtwZEVnY3Y5M0F6SjJxQ3FLL2RKYkZ4VVkva3RINEJobXN3eHJG?=
 =?utf-8?B?TnBlWEN3NFlKWnJnYWFZT285OHZXWjRFbnUvMktqRm54R2dtVFhBYkpDdlhQ?=
 =?utf-8?B?b3Z0c0pkZnNDM0VUNkxXY2RlSHN0SnFTZ0lwQlNPNmc3VmZMd1U1TWwvNkE4?=
 =?utf-8?B?Ti83d0pkZXVxS2g1eWZ4Y25zUnpFR2ZZUy9jbnpGRlVTRFZoZnNWSjdpWjRk?=
 =?utf-8?B?Qmo4cW11WnZIVWpMaXBhODBBUVBrS2x0d09lbnpMdzNydkdBQW5kLzBxMzhX?=
 =?utf-8?B?aXM4dFlpT1ZBd0hyTmxuWkhFNDRZWDBNNVRNNk15SlgzNXZBWXg3aGdYMjRp?=
 =?utf-8?B?RnJiQVZVNHJJcm9uSGl0K3ZJMExNTWwza1pza2ZQVGRraHFOOENkZzR5Skhu?=
 =?utf-8?B?ZXZjK2czQTdYL2d6Y3VKRzBlWVhLVGVObjdGdTdkUGFLdGJyOGtoZFZlL2hL?=
 =?utf-8?B?TGxYV1psRTcvdFozMzlld0pBNHFva0t3TWhLVmtwUmFweDdyNE1HbWRrdElZ?=
 =?utf-8?B?L05HQTZRTzFRRFZFNllndFBDOFhrNWFLVWV5Y01vMlNrdnVucjVQdHY0b0pR?=
 =?utf-8?B?TUV0NmU3T3diVHJORWk1TGVYZU5jR1RHUG9sMmhyekpvYUF4V2NWVm13K3oy?=
 =?utf-8?B?bnNkcWpyTTF4T3dBb0R5Y0F1OXZwOFZtMExTY2VlZHMzbGloYi9NZEZVeFhW?=
 =?utf-8?B?M0VHQ3NVNEhOODBHMnR0Y3dFaHF0OE5TZGFzakxZNFNNTnFtamMrUmIyWE9J?=
 =?utf-8?B?TVF2cjY5NndSa2V0L2poVkdaMVRKR09CRlplQUhoV0xvSXNXVW0zWVNVVHMw?=
 =?utf-8?B?RVRLelJWK3k1OVNRV1BRZENxTkljcnpCSisxc0phZFQySUlpQmlrSFJSSmZs?=
 =?utf-8?B?TnlxQWNHcFBCZXgxTW0ySC8rczBvTkRYOG1XUFcxcWthOS9GMWlsUmRKWlpR?=
 =?utf-8?B?WkdrT0gvNlBiMXJwU2pVSEcvelB5UjZiUWcrRWlJVlplS2U4bmhtYmRrM3Vo?=
 =?utf-8?B?SnRHQS9qYVhPTWNNRDdYNFNvcmZzOGlxSEx3RFFCVzJTdmxxaU02dXluakJG?=
 =?utf-8?B?N3VRVi9WWWFjclFPSmt0TEpUeFdBPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(82310400026)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 22:39:46.8408
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f1dd25b-4efb-4f3f-6a95-08de5df4f956
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF000001CA.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7204
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260153-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[a80000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: B56AF9B28D
X-Rspamd-Action: no action

WKUP_UART0 is apart of the wakeup peripherals and has a range from
0x002B300000 to 0x002B3001FF. Expand the wakeup peripheral window to
include WKUP_UART0.

Fixes: 5f016758b0ab ("arm64: dts: ti: k3-am62l: add initial infrastructure")
Reviewed-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62l.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l.dtsi b/arch/arm64/boot/dts/ti/k3-am62l.dtsi
index 23acdbb301fe38e6045c0ef3ae340196009ed217..e01e342c26daaa06a72036cc3a9a7b13a60e6738 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62l.dtsi
@@ -92,7 +92,7 @@ cbass_main: bus@f0000 {
 			 <0x00 0x00b00000 0x00 0x00b00000 0x00 0x00001400>, /* VTM */
 			 <0x00 0x04080000 0x00 0x04080000 0x00 0x00008000>, /* PDCFG */
 			 <0x00 0x04201000 0x00 0x04201000 0x00 0x00000100>, /* GPIO */
-			 <0x00 0x2b100000 0x00 0x2b100000 0x00 0x00100100>, /* Wakeup Peripheral Window */
+			 <0x00 0x2b100000 0x00 0x2b100000 0x00 0x00200200>, /* Wakeup Peripheral Window */
 			 <0x00 0x40800000 0x00 0x40800000 0x00 0x00014000>, /* DMA */
 			 <0x00 0x43000000 0x00 0x43000000 0x00 0x00080000>; /* CTRL MMRs */
 		#address-cells = <2>;
@@ -104,7 +104,7 @@ cbass_wakeup: bus@a80000 {
 				 <0x00 0x00b00000 0x00 0x00b00000 0x00 0x00001400>, /* VTM */
 				 <0x00 0x04080000 0x00 0x04080000 0x00 0x00008000>, /* PDCFG */
 				 <0x00 0x04201000 0x00 0x04201000 0x00 0x00000100>, /* GPIO */
-				 <0x00 0x2b100000 0x00 0x2b100000 0x00 0x00100100>, /* Wakeup Peripheral Window */
+				 <0x00 0x2b100000 0x00 0x2b100000 0x00 0x00200200>, /* Wakeup Peripheral Window */
 				 <0x00 0x40800000 0x00 0x40800000 0x00 0x00014000>, /* DMA */
 				 <0x00 0x43000000 0x00 0x43000000 0x00 0x00080000>; /* CTRL MMRs */
 			#address-cells = <2>;

-- 
2.34.1


