Return-Path: <devicetree+bounces-258733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uICbFx4dc2ngsQAAu9opvQ
	(envelope-from <devicetree+bounces-258733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:02:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C467157D
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:02:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9752F30490CB
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 06:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC5F335067;
	Fri, 23 Jan 2026 06:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="SqD3lLrZ"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013066.outbound.protection.outlook.com [40.93.201.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D79326958;
	Fri, 23 Jan 2026 06:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769151375; cv=fail; b=d/RgYGfD4SfZVi86PgoIhZiP88BxODoXl2viu1A8/9uEa9lH2gCr0WH/IfKUg0W+oV/wmfHhD6NZ519uwT6BEMNJLN09Tteey/e/5s31wV++S7s6pMgnoOfUY0xUMJ0tSBaStok4PpqIxEDIFkptLQjmvmqXczAZrc38FwcinEY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769151375; c=relaxed/simple;
	bh=KP7C19ag6Ub/OJkWXY/xmv8YuFQUwhDEWU/1EMDJo/U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=X5ioTYU5nECCQ13TQj0pmLzhgpjlxm8CaL1McNdwTHCBovd5aiO12GTGjnuMLErMtwYHmXOAIuLqaqwiwQgy+7pxnX8VmE8rTSFzi2i5uGzbpxCOV3bZ6Lfmg9DDFVTbN2IPfftokUfcEBgRRVLhJWPYBA2OJ35OmBv9ONOLDMk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=SqD3lLrZ; arc=fail smtp.client-ip=40.93.201.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MOMPUZnuA76+rSVsXgFHOc87vPSw6Rq5o8hDnvFkOfPNGObLidfL7RnXdsxyj/mW1UEhSHu37s2XpGlLaB4UzM13ocJP4AwHSIqXE3gSuT5IHg5LBpTwGrQG7LEetJh7xfmcvp5Dls1BXv/1VE/bz0+DFRtK6l3DZlSVTD49MKLuXwEt+jHkWEKyQ3d+UTuNizyWke8NjZIJW64S/qfq4TqjeWV4Se7BhrK2CGp0ryP+9W22OPG6ai4S1L9CyNmmQaGVuzgFdp2y7t0rEN1B92auNmozD+x+SXUyXq3hzH6oOmaXzi/uLL6CcXDJvvZeHZxx5sZ7dq4Xh9+i/bQl3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AQucx2QPeEKrNFBkwln1D4hjWlQIfePZNved7T1ZqgQ=;
 b=QsUFkwzLTMlKRz6WbvQj3u12+BosNPODCk+hfYio1iC6JWprr+LxDUoM973yh7lSp4w9413PCY+JTQ+2s5ShWKTk7uZckr3/HCIokJtV6yR1V6BRAd/keyaGgcwISmPUUyPCHzj4iz5wJMcxOy+d5gCslugZZE3JjitmZms5pc/eJFInkLE6xq3mtK2On8/kMTv1Dk7DkYCnQooJEes8XDQsAi5B64OQ8WVk6RSaTZi/B5/8wutX0ltcchZOpbdP7xgL0zGt7wBdsUX8EobN8uiBJVEyUWsAKg3VIlp5AYKRxeYFQm+HoRvQAT7KAlLVyMMGNYVAx2sPbdXm4l8zIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQucx2QPeEKrNFBkwln1D4hjWlQIfePZNved7T1ZqgQ=;
 b=SqD3lLrZdpTXJ/jOoLlKDs/D1dr7qoKkWRjndOTPtfxFXCR+dfNCuQlSiwI5r6tRJeq3pbZmQLUWMqYIrCOwhl8UnCI+RXoNeXzlgD3YUlxNAzSKyu3IC2niAoGUgjTPU9usGAIxrrUtASMdZph6OBG1l/Xseov8LBQSk8o8h+A=
Received: from SJ0PR03CA0257.namprd03.prod.outlook.com (2603:10b6:a03:3a0::22)
 by MN0PR10MB6008.namprd10.prod.outlook.com (2603:10b6:208:3c8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 06:56:10 +0000
Received: from SJ1PEPF000026C4.namprd04.prod.outlook.com
 (2603:10b6:a03:3a0:cafe::c3) by SJ0PR03CA0257.outlook.office365.com
 (2603:10b6:a03:3a0::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.11 via Frontend Transport; Fri,
 23 Jan 2026 06:55:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SJ1PEPF000026C4.mail.protection.outlook.com (10.167.244.101) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Fri, 23 Jan 2026 06:56:09 +0000
Received: from DLEE200.ent.ti.com (157.170.170.75) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 23 Jan
 2026 00:56:08 -0600
Received: from DLEE208.ent.ti.com (157.170.170.97) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 23 Jan
 2026 00:56:08 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE208.ent.ti.com
 (157.170.170.97) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 23 Jan 2026 00:56:08 -0600
Received: from psdkl-workstation0.dhcp.ti.com (psdkl-workstation0.dhcp.ti.com [172.24.234.127])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60N6u01S1765468;
	Fri, 23 Jan 2026 00:56:04 -0600
From: Aniket Limaye <a-limaye@ti.com>
Date: Fri, 23 Jan 2026 12:25:45 +0530
Subject: [PATCH v4 1/2] dt-bindings: interrupt-controller: ti,sci-intr:
 Per-line interrupt-types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260123-ul-driver-i2c-j722s-v4-1-b08625c487d5@ti.com>
References: <20260123-ul-driver-i2c-j722s-v4-0-b08625c487d5@ti.com>
In-Reply-To: <20260123-ul-driver-i2c-j722s-v4-0-b08625c487d5@ti.com>
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
X-MS-TrafficTypeDiagnostic: SJ1PEPF000026C4:EE_|MN0PR10MB6008:EE_
X-MS-Office365-Filtering-Correlation-Id: beb4d8e9-c521-4b55-325d-08de5a4c7d5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Tk9Kcm1qSTJWVkNhMW5uOVM1YlBVMGdSN3grMElkN05wOThVc25Gc2tPVjJx?=
 =?utf-8?B?d3dYUFhTZXQ3Z25CeFlPYllyTG04QTliMXJFUlJKMHo3WGlhY3BiZ1dZZ0NR?=
 =?utf-8?B?akI4cm1TbllKKyt5alJEUXVxcy9aWFMvZS9TU0hVa2swZjRQTy9UTWNpRFVW?=
 =?utf-8?B?aHd4cHc5Y1BEekI5Z2FYZWt1M0FSRDFaMGRNNkY0cG5GVnpHNmd0MjhYcWhE?=
 =?utf-8?B?cTI0YUJPN2tvWTZXUVc3ekxFd0VkaVdwUytzbHAwK3EyTXdrYmhHbHpSNEQw?=
 =?utf-8?B?Vld3ZXJpOUduMWdCK1FMTElFV2hHLzN0WTZmdStLNGYycXVoQm5aZSszSGJY?=
 =?utf-8?B?dHN2cTh5aFQ2MmZ0WEROVFRJeVRYSThnMGE0b0RNUmZkMi9RVS9YQUN4L3Bk?=
 =?utf-8?B?cEMwWkY3aVlOUnV5YTd0bld0ZjdHRmhzOXFGSU1udUZTN2k4dnJFOHRXTmR5?=
 =?utf-8?B?ZTRBUFJSQVZORG0wbG9wYmRmaWN0eEg3bDF0QWNzdUVjeHlJN05wUGNxSXlZ?=
 =?utf-8?B?N2FUVjczbEtNZTB1L0Y4by9ycWpiMmI2a2RxTmt4QWg3eTFuMGc3a2x5Risw?=
 =?utf-8?B?NjBZcXU0ZC9ESytDeWJQMDdSeTBiR3QzTDRoYU1IZmUrRjNlTVVEV01sRmUz?=
 =?utf-8?B?MVBDZG1vVEo0ME16QXBHbSsyaVNoS0lhbmZzSERteVhJS3VYeU15a2J2eGNM?=
 =?utf-8?B?VEFyR3R2VElVUUVIbm1YNm1iOWRzcWJQNGFveG95KzdFWEM2NVgwdVV1Y0Ex?=
 =?utf-8?B?OTdFeUtsb09hVlh4MkZvbFQwakZWa2N0VGwyekp5UGpHazAvdUJQNy9TWkRu?=
 =?utf-8?B?L2ZxTzVIR3RmN1RGM3hXNjRsMUVJVFlPV20vc2JCUmdyNEVSeVUzanRNZmRR?=
 =?utf-8?B?WFhKdDZaRm1ISmx4eiswYmp2WHBiTjBoNkRvOXg5Nlh6eFc0R2pqM1pFNXNY?=
 =?utf-8?B?UFN3MEZmNEpoZU16a3REbk8vaWFYYzBvVHloYTBVUVNhVWFKbng4RGpHelkr?=
 =?utf-8?B?Ti9lN09CVUZnOVlkV3ZUVXdFWXNXc05vV0ZuU2htM016TUttOEIvZ0ZsVHJW?=
 =?utf-8?B?M1BOSlBRUkhJZGpuUVRSamQ0ek5DTDNKU1hlMWtEaTJ6ZEV6c1pTV1p5bUkw?=
 =?utf-8?B?SVlkRHVDRU90Qi9EUTdXMnlnOHExRnlXaVBGN3ZQTlZZK2QzSDQrSEp5dlJh?=
 =?utf-8?B?OUNEOFRkS081NTJCQzk0UFNnaUswOGt0ZHlIMTY5YkhLaEUxbndxbkhNNERt?=
 =?utf-8?B?ejZwcDBRUmduWndmZnRvZlYrdmx5MFBRR1dWREpNZUptdXIrOU53RURGWFZ6?=
 =?utf-8?B?OEUxTDdwZXA1eW5qTjBBamozZjVmTVdDRjB2MEFjSXRZb1MzTFM4WndJM1Nk?=
 =?utf-8?B?eE9wSmM0TGFGZ0ZPU2tud1I1TDQ4TUhMdDBGQU1Wd0VLVG9yalFxSmtlV1Rx?=
 =?utf-8?B?TnlIZllHbVFSaXBNWldtMHVkWW5wQmxuUGpXeVRIMTRZd21FMDBGbmpyWnlE?=
 =?utf-8?B?S0RzOWZRUVFSZ0diQ0JlQ2Q3UDc1cFl6ZElXZEJsZjB0YWZoVm4rbVo5ZnB5?=
 =?utf-8?B?eWt6RWlPT1pkaW5hSUlPaS9DbisyY3N3eWQzMFJyV2JOakVoTzdGU1RFVk1i?=
 =?utf-8?B?TCtiWFhyRzE0ZzM0NHorazJpTVgvQ2JMemw5NlFEM0RBeURjTFU1aFJVYTI1?=
 =?utf-8?B?V2ZIUHBnMUhHSThIeTJFamtKUjRGWjdQaSs5VnFpVDhHeWoxMUxTc2ludGc0?=
 =?utf-8?B?VWc5RDI3aEdORHZzbThHZExLQ3N5ZnBkUjRNTDdPRGdscW9jRGVvaXErdjlU?=
 =?utf-8?B?bmFVVmhlSVBjcEI4b1Y2dy9aK3RLVVFHOEc3bWlpUEV2VkFYTndEdjhJVHlY?=
 =?utf-8?B?TmtWMWFkaUhYVjRkcGxHNnVlN2crNHR0Y1NqMmdVdGdYKzIxZzdkZTNaK2du?=
 =?utf-8?B?OXkrOFcrNGtmQzZMc2JUY05LRnpxNHA2c0tzNEdYNU5QOUF4aktIUnBuSWkv?=
 =?utf-8?B?Q2x2ZU41SWMxV2I2TlFZckJvUFowYU95bkVuTkU5dWlMY0txRDQxZno1dkhT?=
 =?utf-8?B?ZktBYmhCSVpSMkNzanhZUWRxaXJBMXd5TUJTY0NHdXV4NHk4TmlXNEw0c2k0?=
 =?utf-8?B?d2NVL2ozK3hrSzVDK2p5T1NKNk9MNk9hSEpDb2JQTnVpY1hrTmd0bE42T0ts?=
 =?utf-8?B?TW8rbXgwSlAxdUdrTG1yeE1xaGh2a24vcHY0V0hCcXcwVEtQS3hFYnpkV3Zu?=
 =?utf-8?Q?RJlJRlZ7rT6HEI8cvvx46MD12FLkFj1mtjwO2ALpY8=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 06:56:09.9044
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: beb4d8e9-c521-4b55-325d-08de5a4c7d5b
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF000026C4.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR10MB6008
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258733-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a-limaye@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: D0C467157D
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
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes in v4:
- Don't repeat property descriptions at multiple places
- Use generic name for DT example node and remove the label
- Collected R-b
- Link to v3: https://lore.kernel.org/r/20260122-ul-driver-i2c-j722s-v3-1-4ec3478f3866@ti.com

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
 .../bindings/interrupt-controller/ti,sci-intr.yaml | 38 +++++++++++++++++++---
 1 file changed, 33 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
index c99cc7323c71..de45f0c4b1d1 100644
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
@@ -64,9 +63,14 @@ properties:
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
@@ -82,9 +86,22 @@ properties:
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
@@ -105,3 +122,14 @@ examples:
         ti,sci-dev-id = <131>;
         ti,interrupt-ranges = <0 360 32>;
     };
+
+  - |
+    interrupt-controller {
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


