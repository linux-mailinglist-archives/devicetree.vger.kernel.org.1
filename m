Return-Path: <devicetree+bounces-258585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ENkMy9lcmmrjwAAu9opvQ
	(envelope-from <devicetree+bounces-258585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:58:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DB16BD11
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:58:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0ED66309CFA3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1A3D36F423;
	Thu, 22 Jan 2026 17:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="gZRKmy+1"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010068.outbound.protection.outlook.com [52.101.61.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B83431A044;
	Thu, 22 Jan 2026 17:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.68
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769102414; cv=fail; b=AJPtB2X0lF1RY4j7sfQyHJ0Vt2McUcGDtg33XnacXUi39tbzwnUd/IorDtJi9xdGKLGfJQCiNq/nScOMYJ/URS6DNlZN+p5IMY9asFO+qmdhzt0PJnzhLhPY+3cUqUmZ+5GQg4WRqd0080wXqrSkxKzjt2tBzbDaDhk+8iKTXYo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769102414; c=relaxed/simple;
	bh=geoModA8WrR+gZD8T4GkzGa89s2zlEevJFB4EBsEjtY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=p9J1frkmn/7KMXRBfS2xVzgRps405MBSrmf1O+wEWhGd0hl7eymfCtgTXeiHnajtrX3bwj3Omaq3e/D85ovXbIrgwb5Tn24WKtzbO0ZtAyPT7F4hGzlOqWBmeDYos2o72XqsTexDb+zzzVmtLq8pEtFt2YWu2LO5NDuiU3MEm10=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=gZRKmy+1; arc=fail smtp.client-ip=52.101.61.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uQ7yv3N6wfnJyLTfrChrKsfVhAP9qEFLXMVyVKAm+i0JpSlr0N7Cofjw3m90GPBxsfQWv6HACy6oQ/uCIBQOT4GKjJSw2JxFi93E7oYxHx71yDpTJHq/9qXc1dAh+rAwd1220r1U8y3P90gKmOf/rhuTj/xnSUWAvRXRJ1tHPhoukSJTX6KYOdamL0d1XcoeuhSr/OyOoqc8iN6xwNURleM684NlxObvyNdJNgnZPluLbyI3A6KwpC4zidvVPHlQy2AR5Wtqr2r+O2oxJE13SmRrIoLVHjfZM15G3QnGYg9y2zv+7u5cWemSNgpydw6J7p6LNoZA+UDjt0uGxCCRFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5yBuxPGDCpEphM/KZt/cMvZHfJnkc1tQPoLWsiBEtpw=;
 b=n6/4lGMnOuMZFFRo50r0dzi113yLRcvvkc0LxxYuIcFd6vtx3eWS7EezKUOinB9uLQ5zw4wrN28QI9u9WWdrcZ0bmwXPFbu3Oh/I8cTKsmYK59Ppr0p3527tDW3q7Cn5B2XX2Az2vv+sx/sZ/jMeM6lGKNamn3QLGCXxO0ZUMZ0MDq8ALY5kZJc9xj5oBuuUthsIkmqb0+m9rtASKpxINqI9CpPXUYpheLhluW0arkcV2KB2wo1pfUPIZ5lSwE0gCQ9m9qPxwRYoKVPL1VEZ/fbf2vUqwJsscxB0Pw1W/zW8HpKWPC3BK8ao/qrQuyLsVIBHj0ucqPPBinIt9tL9ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yBuxPGDCpEphM/KZt/cMvZHfJnkc1tQPoLWsiBEtpw=;
 b=gZRKmy+1xvJs6HesYsAvMtnq4RuPIs3korfDYe3uzgtTrVzMcUcnJuc+DfuyEbZJ+/WNUI9EwJGr3cJaCGequ4XRrHJk0UkbDlvUrOFN/L0/z3N0qy61lpgt4/UaPfOexRBRdtH+EDgSfEeKDzFVxw06Yq2CTK/ecnZmQZ72s/U=
Received: from BY1P220CA0025.NAMP220.PROD.OUTLOOK.COM (2603:10b6:a03:5c3::12)
 by IA3PR10MB8164.namprd10.prod.outlook.com (2603:10b6:208:514::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Thu, 22 Jan
 2026 17:19:56 +0000
Received: from SJ5PEPF000001F1.namprd05.prod.outlook.com
 (2603:10b6:a03:5c3:cafe::e9) by BY1P220CA0025.outlook.office365.com
 (2603:10b6:a03:5c3::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.11 via Frontend Transport; Thu,
 22 Jan 2026 17:20:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SJ5PEPF000001F1.mail.protection.outlook.com (10.167.242.69) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 22 Jan 2026 17:19:55 +0000
Received: from DFLE200.ent.ti.com (10.64.6.58) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 11:19:50 -0600
Received: from DFLE208.ent.ti.com (10.64.6.66) by DFLE200.ent.ti.com
 (10.64.6.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 11:19:50 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE208.ent.ti.com
 (10.64.6.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 22 Jan 2026 11:19:50 -0600
Received: from psdkl-workstation0.dhcp.ti.com (psdkl-workstation0.dhcp.ti.com [172.24.234.127])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60MHJcoP912039;
	Thu, 22 Jan 2026 11:19:46 -0600
From: Aniket Limaye <a-limaye@ti.com>
Date: Thu, 22 Jan 2026 22:49:14 +0530
Subject: [PATCH v3 2/2] irqchip/ti-sci-intr: Allow parsing interrupt-types
 per-line
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260122-ul-driver-i2c-j722s-v3-2-4ec3478f3866@ti.com>
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
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001F1:EE_|IA3PR10MB8164:EE_
X-MS-Office365-Filtering-Correlation-Id: df893655-3f3d-445e-f59a-08de59da7618
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?THpwYWMzSU9HK1RLT0NGOGt2NmQrUjdBTHEyVkJJeEl3Qmd6S0VOZUxWcjI1?=
 =?utf-8?B?M1pFbTB3S3lYVkk5bnhiSVBEZ0xyNklrNEdsYk9uYWlxZEdpMWpsaG9HR0x6?=
 =?utf-8?B?MHF1Ulc0bmZvcnJkUTZvdGVMQXBrSmViVkdyUU1sYjM1c2ZobC9EZnhGczdZ?=
 =?utf-8?B?R01KaGMwWDJtdXJzanAzUnpOZ1lHM1ZqNDNuby9UY2ExaVliNDQ3eURqTERn?=
 =?utf-8?B?MnNJbVFlbFBMY2Q0cS9HZkgzVzlsdGtoeVVnVTlQbWZBSnErSC9tQ1RJekVo?=
 =?utf-8?B?ZUg5WWxXL25XRS90VWNjRGNPY3ZaemJVb0dUWjAxRlVtTloxbmphMjZrWGdX?=
 =?utf-8?B?MklMR0xuOUVEdWEzUHFXTzgvV0hqN1ExQytlK1BYNXA4U01SWHBPN25OUnVq?=
 =?utf-8?B?dTV5bVpZN2tCK1RWUkgza1A4cVlwMVhSV05UeFlVS29JSWZUSUsvek5Gbngr?=
 =?utf-8?B?NVV3K2UwbExsN2VLZndZSnpmeXFFWXVRWXNvNjRHQlZOdDVNVEpKVmgvTHFE?=
 =?utf-8?B?WEZSNXNtVHVjaStqMnVlb0pjZGJxNHpWcW9nUEU2dTlKaEtwRkNQY1BxZllJ?=
 =?utf-8?B?UHlkUklZK09MTVZFUk12Y3ZkNWlhcUpxTkN1bmxMSEM1d0MxUlVxSnBxRmJN?=
 =?utf-8?B?ZTJhbXgyRzgvTFllVXRuSnlFdEFIYmRsVk1MVFVtM0NXY1pzenY2WFNIZ0Jh?=
 =?utf-8?B?SU94OE9oM2Z5a2RuK2JHZEZMK1FCcmFqcHEzREJrMTlXSTlUb2J4QWtXZzU0?=
 =?utf-8?B?V0oxZ2ZBVXVZdHlkQW9zYnBHSDFqUVBiSndYVFRORFM0WG9TMHhlb0tnY0lo?=
 =?utf-8?B?VFhsY29TVzdYNmpFUUZFTG9HbERIVk9rTmFsZzZNc25lbHBTV0RydWxnNkdS?=
 =?utf-8?B?eW5ZN3hoQkRJTllDSFRuVnlab2h4QWxlQnZhUG5rQjdXaDdhWmZYVW40Ymxh?=
 =?utf-8?B?ZTVOdVdZdFpEQUNuYnZ3ZzB3OHUwc3BSTjVWZ2VsbmY3bGJtNE1xT3FIbkhx?=
 =?utf-8?B?dUFvdTBmZnpCWUcveW9VU21xeUt0OGdmSUhCOHZzLzFFTE1WTkFYaGRUV0lV?=
 =?utf-8?B?eVBpdXR2cFlJWHBWS3BKYm93bHhvQk04bGswdEwwWkxrSFo5M1dwa1VJTkJC?=
 =?utf-8?B?QkVHWTJVWUI2d1hhaE9BK0Q0UFhRVUdNejdUdEJxSzVaZVNwRnNtL3g4d1pE?=
 =?utf-8?B?QVVPSjlrZnVWTDhNMjl4R29kZ2pCQUxmcm5RSjZ5NTZQWVZEYWZrUkUvMmRn?=
 =?utf-8?B?V0dTODVNWURjbzFzd1NqSkRyMHVDdDVrV3J6SDRuSTcyK3crdnJTeFZucWxh?=
 =?utf-8?B?aWFjYzdKUnFWZ0Fib1Zzb2crV2czbjMyMk1oZ2NxVm15ZmZ6bllUdXRTTkMr?=
 =?utf-8?B?OThhdjR1Tkg0T1BhdSsxbU92aDY0bFFNaUxGaUprQy9HM25XLzVzK0hUQmdq?=
 =?utf-8?B?RUZsMGFpb0FPL1FYMFJwbi9nb1VuYjdOUlB0M2orRTdmalFEdU9BMlBxSW5U?=
 =?utf-8?B?ZHErV2MyUWFsM0xoc3hDZzlmSWpjNHNYNm0zVTJjdDlvNVluUVZSMDNJRGl6?=
 =?utf-8?B?U0tSUlhBbko3bnZ2V3Q5TVhPOWtxTnNjanV6YXJwSVMyL2lLUFVzUlJrRE1v?=
 =?utf-8?B?L1B4QldLQkRxQkNNblhaM2U1dkZPRWxmT0hqRFNZYWdhZ0lpNHE5ZHovQ2NH?=
 =?utf-8?B?UzBrVklpeE80S0NMdDZ4eXpFc2d5aGc0YjdtYmtHLzdOQVUyZnNnYVNkclVM?=
 =?utf-8?B?MG5GUUpzNzF1bldjV0JndWdTaTE3ZU5odE1YUm5JeGJWNTNKcUxGM0NtdUxS?=
 =?utf-8?B?RC9BNDRQTmdpTWRxRktONElYNTJlTHR0anlkeElsbXRkU1NMMHZMQ2lFQ1Fx?=
 =?utf-8?B?K3N1eUR3SDNEZy9BK3M0R2NDY01lWUxOMS9iaVVNUm5uUnRuNVpkNFdqY2l0?=
 =?utf-8?B?bGtqNDh5cXplU2NVcFJMbnExbjNsVHpSRUZFbER0U2VEVWdSQkREZkhuc2t3?=
 =?utf-8?B?R2kxT3pkM1JVSTRTeU9jU2IxQ1ZrSDRTREVKRnovdklzaEFidytDQUJ5aWRs?=
 =?utf-8?B?RXZzVDkrTFZXVEorcExNbGJJemppZVFBZm8vV01OR1lDaHQ2Z2UzYlBzTUpq?=
 =?utf-8?B?NHZHNFJHQ2VoamJ3MzBPdjlpbkFHOHp3a05ldlR0M3ZiWVNYOHVNdG4zdW9i?=
 =?utf-8?B?WDBjQ05vcHBnVW9abGpjdTNBTlFaK3pZN0xRZzZ1N01VbFdYdURqQ1dtTkRz?=
 =?utf-8?Q?79LA35jkMwwYMxSBPtVHzFnVT8HyU//g0mEtgTNOog=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(1800799024)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 17:19:55.0885
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: df893655-3f3d-445e-f59a-08de59da7618
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF000001F1.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8164
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258585-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a-limaye@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 28DB16BD11
X-Rspamd-Action: no action

Some INTR router instances act as simple passthroughs that preserve the
source interrupt type unchanged at the output line, rather than
converting all interrupts to a fixed type.

When interrupt sources are not homogeneous with respect to trigger type,
the driver needs to read each source's interrupt type from DT and pass
it unchanged to its interrupt parent.

Add support to check for absence of "ti,intr-trigger-type" to indicate
passthrough mode. When this property is absent, parse interrupt type
per-line from the DT fwspec provided by the interrupt source. Else, use
the global setting for all interrupt lines.

Signed-off-by: Aniket Limaye <a-limaye@ti.com>
---
Changes in v3:
- Avoid new redundant value IRQ_TYPE_DEFAULT for "ti,intr-trigger-type"
  when "#interrupt-cells"==2. Instead, make this property optional and
  check for its absence to use the per-line interrupt-type setting.
- Link to v2:
https://lore.kernel.org/r/20260120-ul-driver-i2c-j722s-v2-2-832097c6b64f@ti.com

Changes in v2:
- Use correct Patch Subject prefix
- Reword Commit msg to better describe the patch
- Fix function argument alignment as per coding style
- Fix variable declaration ordering as per coding style
- Link to v1:
https://lore.kernel.org/r/20260116-ul-driver-i2c-j722s-v1-2-c28e8ba38a9e@ti.com
---
 drivers/irqchip/irq-ti-sci-intr.c | 49 ++++++++++++++++++++++++++++-----------
 1 file changed, 36 insertions(+), 13 deletions(-)

diff --git a/drivers/irqchip/irq-ti-sci-intr.c b/drivers/irqchip/irq-ti-sci-intr.c
index 354613e74ad0..0c6065e66e6a 100644
--- a/drivers/irqchip/irq-ti-sci-intr.c
+++ b/drivers/irqchip/irq-ti-sci-intr.c
@@ -61,11 +61,22 @@ static int ti_sci_intr_irq_domain_translate(struct irq_domain *domain,
 {
 	struct ti_sci_intr_irq_domain *intr = domain->host_data;
 
-	if (fwspec->param_count != 1)
-		return -EINVAL;
 
-	*hwirq = fwspec->param[0];
-	*type = intr->type;
+	if (intr->type) {
+		/* Global interrupt-type */
+		if (fwspec->param_count != 1)
+			return -EINVAL;
+
+		*hwirq = fwspec->param[0];
+		*type = intr->type;
+	} else {
+		/* Per-Line interrupt-type */
+		if (fwspec->param_count != 2)
+			return -EINVAL;
+
+		*hwirq = fwspec->param[0];
+		*type = fwspec->param[1];
+	}
 
 	return 0;
 }
@@ -128,11 +139,12 @@ static void ti_sci_intr_irq_domain_free(struct irq_domain *domain,
  * @domain:	Pointer to the interrupt router IRQ domain
  * @virq:	Corresponding Linux virtual IRQ number
  * @hwirq:	Corresponding hwirq for the IRQ within this IRQ domain
+ * @hwirq_type:	Corresponding hwirq trigger type for the IRQ within this IRQ domain
  *
  * Returns intr output irq if all went well else appropriate error pointer.
  */
 static int ti_sci_intr_alloc_parent_irq(struct irq_domain *domain,
-					unsigned int virq, u32 hwirq)
+					unsigned int virq, u32 hwirq, u32 hwirq_type)
 {
 	struct ti_sci_intr_irq_domain *intr = domain->host_data;
 	struct device_node *parent_node;
@@ -156,11 +168,23 @@ static int ti_sci_intr_alloc_parent_irq(struct irq_domain *domain,
 		fwspec.param_count = 3;
 		fwspec.param[0] = 0;	/* SPI */
 		fwspec.param[1] = p_hwirq - 32; /* SPI offset */
-		fwspec.param[2] = intr->type;
+		fwspec.param[2] = hwirq_type;
 	} else {
 		/* Parent is Interrupt Router */
-		fwspec.param_count = 1;
-		fwspec.param[0] = p_hwirq;
+		u32 parent_trigger_type;
+
+		if (!of_property_read_u32(parent_node,
+					  "ti,intr-trigger-type",
+					  &parent_trigger_type)) {
+			/* Parent has global trigger type */
+			fwspec.param_count = 1;
+			fwspec.param[0] = p_hwirq;
+		} else {
+			/* Parent supports per-line trigger types */
+			fwspec.param_count = 2;
+			fwspec.param[0] = p_hwirq;
+			fwspec.param[1] = hwirq_type;
+		}
 	}
 
 	err = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
@@ -196,15 +220,15 @@ static int ti_sci_intr_irq_domain_alloc(struct irq_domain *domain,
 					void *data)
 {
 	struct irq_fwspec *fwspec = data;
+	unsigned int hwirq_type;
 	unsigned long hwirq;
-	unsigned int flags;
 	int err, out_irq;
 
-	err = ti_sci_intr_irq_domain_translate(domain, fwspec, &hwirq, &flags);
+	err = ti_sci_intr_irq_domain_translate(domain, fwspec, &hwirq, &hwirq_type);
 	if (err)
 		return err;
 
-	out_irq = ti_sci_intr_alloc_parent_irq(domain, virq, hwirq);
+	out_irq = ti_sci_intr_alloc_parent_irq(domain, virq, hwirq, hwirq_type);
 	if (out_irq < 0)
 		return out_irq;
 
@@ -250,8 +274,7 @@ static int ti_sci_intr_irq_domain_probe(struct platform_device *pdev)
 	ret = of_property_read_u32(dev_of_node(dev), "ti,intr-trigger-type",
 				   &intr->type);
 	if (ret) {
-		dev_err(dev, "missing ti,intr-trigger-type property\n");
-		return -EINVAL;
+		intr->type = IRQ_TYPE_NONE;
 	}
 
 	intr->sci = devm_ti_sci_get_by_phandle(dev, "ti,sci");

-- 
2.52.0


