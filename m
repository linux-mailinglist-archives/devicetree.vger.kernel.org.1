Return-Path: <devicetree+bounces-258584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAhGIvhocmnckQAAu9opvQ
	(envelope-from <devicetree+bounces-258584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:14:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3561A6C229
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:14:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4416230952DA
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F3E73587BF;
	Thu, 22 Jan 2026 17:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="b0AwVFe4"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013002.outbound.protection.outlook.com [40.93.196.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E7B313E27;
	Thu, 22 Jan 2026 17:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.2
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769102407; cv=fail; b=SJ6rw9oF5DthLI2cXWAGkXgBohLRChPIZ5ve4HKpHvNZP3/ChEg4fw8RRRo+mWkSve9FKMYouitbTzHJL80BGTjyrfh+w4uPLfWsCOdyFVdWqsrQquwfXDe3mmyVycBZYjk2Xx71u+J9JIfNYljcDfNYfIr8EsOpri4Mz1lQSCs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769102407; c=relaxed/simple;
	bh=oCKxGaLLxf8fMQfw+IA9tQkIn485qQoviGEyUZwogd4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=WfaZsNpRnE2XIy1Hm4z8KnqLDFQVoc+pRQqE6THAQoSYAcEleVwxaW2QiWWf770xIlfOLiG+9ifRAqQNZ+VJhxv+e2n9p0uGjlR5UMkdoSbWe49t8iYWZm3qtrwMRpIOK8om5ZBBACZ7qaNAEg+lskt9PBbPh0703IC/4vE9wqI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=b0AwVFe4; arc=fail smtp.client-ip=40.93.196.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LR4AanO5eHAttGrr7WFPPeQZxsW9V9B9ayi39f194b6ve6hItqE7ljp6qOWPUO2BZAlGbB8VO+moH+JEQY0LlxwTc2U3PDi/SICy6KvSdq7l0JORJ+uXzLyUsGnMDBjiqehb86Akj+5GGRBGg2y8q71+DZj/VNJX1Rkp3SiMD0xiyyH43B8MMrl7XyHnDUDzPfKUKrYRDbdnAunAoZWEBZpZKTzunoCKsVOSOcoWw+U80Q5qI+CEFoKYYRsJMepgA2PeMBidABJ1zdMlyId3u6hnV2M5jZkKg0WyPpv5v38MW6ynhoYGt31SboGZZMWw4ETq2P26O+G7YbqLLqavQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OhfSPfWOAwYOvyIZzuXMp0da32tHkG7iKwNzA5Mzx+8=;
 b=UgIOgLKKeIoBZfybQcom3mo6IJ7yddAx+X7dtjJa52/EJDQ+S5RXXl4SP6+HPdattMOXx/PyT6TJH+GanaHO1XGfEHYHSyXnDfBXHiTIOoJqvKGVV/h3hzx0yBremzdNdWP5Twj3EYYYpmMK0NApT73qnmgAWhs4pp8Tikl+munKIdTHhvEVwxOkxN8vNDQHXa88OCa9nWQyeNeoBrunLJe+20/0CDiYUKBiZgkYXGRgygkGhXjbUduisc2oLQg9j2xFSwLfnh4AZ6owTBuPzRVhMvKDgLXW6isxLnONcMaiAIwDQRQ6e/MOQwCYKrhRwSGNn2C7X5dW1DZVuGsUGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OhfSPfWOAwYOvyIZzuXMp0da32tHkG7iKwNzA5Mzx+8=;
 b=b0AwVFe4Bn6mgURaHC6vGaPM3hYomfpPwPW6g7OJiEmfR2HMveMuinGwEIBnX8bgZcDXnaXNaqNOohyaTZliVC3ldgLnjHzwXqXNTuOCcAfU1UulVFX4KJtEST8qrYnduiarqSMgpL+nPpdH6SChpBjwhfWqDFtuWzJ0zYo2nK4=
Received: from BN0PR07CA0014.namprd07.prod.outlook.com (2603:10b6:408:141::7)
 by MN2PR10MB4238.namprd10.prod.outlook.com (2603:10b6:208:1d3::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 22 Jan
 2026 17:19:47 +0000
Received: from BN1PEPF00005FFD.namprd05.prod.outlook.com
 (2603:10b6:408:141:cafe::9c) by BN0PR07CA0014.outlook.office365.com
 (2603:10b6:408:141::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.10 via Frontend Transport; Thu,
 22 Jan 2026 17:19:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BN1PEPF00005FFD.mail.protection.outlook.com (10.167.243.229) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 22 Jan 2026 17:19:47 +0000
Received: from DLEE207.ent.ti.com (157.170.170.95) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 11:19:46 -0600
Received: from DLEE213.ent.ti.com (157.170.170.116) by DLEE207.ent.ti.com
 (157.170.170.95) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 11:19:46 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE213.ent.ti.com
 (157.170.170.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 22 Jan 2026 11:19:46 -0600
Received: from psdkl-workstation0.dhcp.ti.com (psdkl-workstation0.dhcp.ti.com [172.24.234.127])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60MHJcoO912039;
	Thu, 22 Jan 2026 11:19:42 -0600
From: Aniket Limaye <a-limaye@ti.com>
Date: Thu, 22 Jan 2026 22:49:13 +0530
Subject: [PATCH v3 1/2] dt-bindings: interrupt-controller: ti,sci-intr:
 Per-line interrupt-types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260122-ul-driver-i2c-j722s-v3-1-4ec3478f3866@ti.com>
References: <20260122-ul-driver-i2c-j722s-v3-0-4ec3478f3866@ti.com>
In-Reply-To: <20260122-ul-driver-i2c-j722s-v3-0-4ec3478f3866@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, <u-kumar1@ti.com>, Nishanth Menon
	<nm@ti.com>, Tero Kristo <kristo@kernel.org>, Santosh Shilimkar
	<ssantosh@kernel.org>, Thomas Gleixner <tglx@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <j-mcarthur@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, Aniket Limaye
	<a-limaye@ti.com>
X-Mailer: b4 0.14.3
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1PEPF00005FFD:EE_|MN2PR10MB4238:EE_
X-MS-Office365-Filtering-Correlation-Id: 1502f9bc-fc3a-4f37-28e8-08de59da7150
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SEpJbWY4NW9uZExqTWdZbEV2ZmJzb1NzaU81L3RZN0pnaW5KR3RwazJMUTBG?=
 =?utf-8?B?SjFJSWFIS0JxaFl4bTlrcU8xZ3ZWb0I0UVBodmFQVkNaclNZZ1Fzb3VjR3lR?=
 =?utf-8?B?OVEwYkVwTzNCeEdLZmFsc3Jab2RaNUNoNGZTc0xoSG93SlpiUkR4VGZ1SCs2?=
 =?utf-8?B?eFpKNHRTWXBwYkpzWDFpa2tEektrbHR1ZDJERysvb1JtMnU1d09oM0Rsa1FO?=
 =?utf-8?B?VWFGRWpFYmZTZ05EQjBSVUVLTTRUR3dvTUtnSUdkQU5uZTIxajFFQlowQVRJ?=
 =?utf-8?B?cGdRbzRmcHh4d2ZRSzVDdk02alNKWmdjbmxXbUl6KzFVNFI5N0hua2lzb0pj?=
 =?utf-8?B?blp0WHNXT2RXVlRHTVhjMURRb2Y2OGFRNGZ5RUcvMlR0b1Nhb2dCTXlWNnRX?=
 =?utf-8?B?SGN6UlNpR3duSTVEbmVTR2czMXZ5eUhNY0pxR01ScjZJTG9kN3JsejQxVHVZ?=
 =?utf-8?B?ZVlNTk4xREY5NFpYMDY4ZzJ2d3J0UlpjV00zbTFadkp6Lyt4S21qV3lVQ0M2?=
 =?utf-8?B?ckV6V2xSYmpZWGdBa21XRlVsQUNWT21YUFFDeTlqZTJGQ1lnanZpS2w5TGNC?=
 =?utf-8?B?Nk4ycWtteS9CWDJrcnRidTZFa0ZFU2k2YVNKVUtZdXZBVEFUYXd1bjZ2NEFS?=
 =?utf-8?B?SkJpTkdCZ1hIWHh2dmh2aWM0WGlPTytQUlVad0dxUEtJSXFVUEtrTGYrUFNq?=
 =?utf-8?B?QnJYOHA0MmlWQ3VBUFJmUll2dlBDamZVVHp3ZzBnUkZNdnk0VktaaXJ2eVF4?=
 =?utf-8?B?QUNJTm8xSmV2YnBhUUNQVzEzNkg5TzJQUzRSVEtGejJmU29zd0dTVExvUFpw?=
 =?utf-8?B?UlUwTVY3UVd5UFh3VE1GWkNZMzhrQ1owSDJQdUQxdnpzTndLbkZiR0pZZGpp?=
 =?utf-8?B?Y1VhOE5MUG1RY1U1S0dGNVYwSHRIcEVvNCt4ZWFLQ2liMkpUTGFMUWNrSHhy?=
 =?utf-8?B?VFhQUkh5dHlJL3ZVQ1Q5Qmo5amxRZjg2eTV0TFJZaFZMdE9zMVhQNFltZERi?=
 =?utf-8?B?RUZpUk1GU3hSUzVSdnRzdW9XSURVYm44d3BhWVp3SHJ1VXlTanRjNzF1a0I1?=
 =?utf-8?B?cmFPVkY2MHNpbEFSb01Bd3VRemR1QzZ3RUZEeTk5ZEFQbjlmTUdoZjM1dllM?=
 =?utf-8?B?YkllbmVJVC9EY01XY2x3MDhMZ2U1TGhkTVhGLy8wbHpiNUt2THhMcEpxT0hF?=
 =?utf-8?B?NS9mR3lCVFhqNHRuZWptS3VtbGFMY3VFV3VjU1VJdzdKakVyTVB0K1BTektp?=
 =?utf-8?B?cFN4Sk9LN3F5aHh3ZWhUZlh3RWlxVjNvZXZ4c0ZKcWZSeURDZ3E2bm5FRmpI?=
 =?utf-8?B?aVJKb3YzZzVoUTJZUFYxRk9GVW1HSXRUZEdEVU9WeUhvbmFuT2F2Z3YrYXpz?=
 =?utf-8?B?VE0yMVl2U21uYTZGMUFaMEozQU5YdC9oMnpUYTFHSEh0VE44aDNhL0VuRy9H?=
 =?utf-8?B?aU5yY1c5WmFkUVR5N2pWOEl3V2FTNi9RTFVubmg1OUZ6MUt1WXplY0UreEpP?=
 =?utf-8?B?MUVqbVFLME5HYXNsSm1YMVlHTVRTSmFVa2l2TUtadSszQ1VFV2xXMDg4STVH?=
 =?utf-8?B?Wi90Y0ZmOGtBemt2TGV1WFZ5d0pFSHJ2dEVWV0NybCs2L2xGa0dzMHFWMVhY?=
 =?utf-8?B?VGxKUnFHSmpVdzlVZTRUS29kaldyQ2FEdlhQc2toUmRzeGhSTFJWY3IrZk1E?=
 =?utf-8?B?cXNTdDVOLzZpdS93RTJQdS8wbDZ2U0c0SVhTNFZLUzE1SzFTYmVyZnhIWjBO?=
 =?utf-8?B?UWFNSCthY1Z2NFc5Mmgrd0pJSDNoNlduUytXUDRYUUgvRTV2RnBRby9EdW5P?=
 =?utf-8?B?M1ZsU3lxNTlJbHJjZnU3MTVIYzFhVllrVGNvL3Z5QXU1ZDVKUjRLZzFWbC9p?=
 =?utf-8?B?K0xscmVqTEtoZlRETWdDUklkR1NKcTNjNGswMnV6aW42Z0JYcWs3aXU0Rkg2?=
 =?utf-8?B?ZmhzdWcrb0poVlgwTVRiWVFzVjFHRFdFMW81bVJ5YzlId3hnMHZxUjNYOVdQ?=
 =?utf-8?B?OWxrcHRpMnFGLzk4aG4xczFhMWtYUjhWeDl1YmNRS1BvTlI3YVcrUW9wYlM5?=
 =?utf-8?B?TzNkbFBqaHkxQU9iQUJyZFRDd3g1MnFTZW9FTlhvWDZSUDhCZ2RBR1VBV1ZC?=
 =?utf-8?B?MG5yakRCdnFxL0FlZ3EvREZKd0RJYndNYVE2OUFJWEpFTVZjKytHZWRYUXZX?=
 =?utf-8?B?TUJxb1lDYmNHRXRrV0VJYUJVcmU5ZFJlalkrVm1XUjN4N3JySjZuemlmcTll?=
 =?utf-8?Q?LzNIl9vbgpRUJHuDVcrchdh4fRWssT9S8AE4pCVGxE=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(82310400026)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 17:19:47.0790
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1502f9bc-fc3a-4f37-28e8-08de59da7150
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN1PEPF00005FFD.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4238
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258584-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,ti.com:dkim,ti.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[a-limaye@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 3561A6C229
X-Rspamd-Action: no action

Update the bindings to allow setting per-line interrupt-types.

Some Interrupt Router instances can only work with a specific trigger
type (edge or level), while others act as simple passthroughs that
preserve the source interrupt type unchanged.

Make "ti,intr-trigger-type" property optional, with its absence
indicating that the router acts as a passthrough. When absent,
"#interrupt-cells" must be 2 to allow each interrupt source to specify
its trigger type per-line.

Signed-off-by: Aniket Limaye <a-limaye@ti.com>
---
Changes in v3:
- Avoid new redundant value IRQ_TYPE_DEFAULT for "ti,intr-trigger-type"
  when "#interrupt-cells"==2. Instead, make this property optional and
  check for its absence to use the per-line interrupt-type setting.
- Link to v2:
https://lore.kernel.org/r/20260120-ul-driver-i2c-j722s-v2-1-832097c6b64f@ti.com

Changes in v2:
- Reword Commit msg to better describe the patch
- Link to v1:
https://lore.kernel.org/r/20260116-ul-driver-i2c-j722s-v1-1-c28e8ba38a9e@ti.com
---
 .../bindings/interrupt-controller/ti,sci-intr.yaml | 44 +++++++++++++++++++---
 1 file changed, 38 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
index c99cc7323c71..8156ce6d2ab4 100644
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
@@ -54,19 +53,28 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [1, 4]
     description: |
-      Should be one of the following.
+      Optional property - should be one of the following:
         1 = If intr supports edge triggered interrupts.
         4 = If intr supports level triggered interrupts.
 
+      If this property is present, #interrupt-cells must be 1.
+      If this property is absent, #interrupt-cells must be 2 and interrupt
+      source must specify the trigger type in the second cell.
+
   reg:
     maxItems: 1
 
   interrupt-controller: true
 
   '#interrupt-cells':
-    const: 1
+    enum: [1, 2]
     description: |
-      The 1st cell should contain interrupt router input hw number.
+      Number of cells in interrupt specifier. Depends on ti,intr-trigger-type:
+      - If ti,intr-trigger-type is present: must be 1
+        The 1st cell should contain interrupt router input hw number.
+      - If ti,intr-trigger-type is absent: must be 2
+        The 1st cell should contain interrupt router input hw number.
+        The 2nd cell should contain interrupt trigger type (preserved by router).
 
   ti,interrupt-ranges:
     $ref: /schemas/types.yaml#/definitions/uint32-matrix
@@ -82,9 +90,22 @@ properties:
         - description: |
             "limit" specifies the limit for translation
 
+if:
+  required:
+    - ti,intr-trigger-type
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
-  - ti,intr-trigger-type
   - interrupt-controller
   - '#interrupt-cells'
   - ti,sci
@@ -105,3 +126,14 @@ examples:
         ti,sci-dev-id = <131>;
         ti,interrupt-ranges = <0 360 32>;
     };
+
+  - |
+    main_gpio_intr1: interrupt-controller1 {
+        compatible = "ti,sci-intr";
+        interrupt-controller;
+        interrupt-parent = <&gic500>;
+        #interrupt-cells = <2>;
+        ti,sci = <&dmsc>;
+        ti,sci-dev-id = <131>;
+        ti,interrupt-ranges = <0 360 32>;
+    };

-- 
2.52.0


