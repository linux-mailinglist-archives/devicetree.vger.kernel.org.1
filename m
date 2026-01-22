Return-Path: <devicetree+bounces-258592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMbZIIlkcmnfjQAAu9opvQ
	(envelope-from <devicetree+bounces-258592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:55:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC7D6BC70
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:55:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CCA6430A26E3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C18F3644D5;
	Thu, 22 Jan 2026 17:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="eo5yov6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012012.outbound.protection.outlook.com [52.101.43.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3842E3AEA;
	Thu, 22 Jan 2026 17:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.43.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769103537; cv=fail; b=afMr0KrLp39RQvQ6hrL6zRaglU5is6hs32cPjrzXvjDnkKMqX2NwdH1jzCeaDCApkxQ13KJTdwIfbYwaaaKWwm4ltz3/afMtc+hy0OI/Z/oMbC/FUPYFCy5mS6UqR1QFzDE8sapBOoAe+lrUdddQgWn2GbzAv+TJWy9GbvjhLSs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769103537; c=relaxed/simple;
	bh=r2MIPOWlBnmzHXuRDQt2DFsyc3DGQ5cU+Fq1l5hB1vA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=Z+eOMGK2RwBt7gRRurvTR4vhYnJIg/9k3qSnCTOth1cwq/W6GpUYVoRD5mO5cCJ60vX3vEv6ZQ1ti1ZXb2gXN0p6oT5Eym1hhWc9DaK3/aLFO/S48uJVPBhYUXECSQK6+wWamlwXT8NVCXIm0aDWay767GIMrzCQKdHXGkazpVI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=eo5yov6Q; arc=fail smtp.client-ip=52.101.43.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hjFNXtNS6KT25qWwGGpLPMaGkXL7KDu18+YpFtHoWNjsod944WX+/7/bmn7ktQ2Syz0ZxJgTA2s3cOz62NyX8d2GNYy6gkEJQ877OjnGg0+dvZ04AlBFxStB3/F0BkHyyX0qGhPffbEV6sUyqWE2ucCvSINCMEM1fvAAdbyXJyAVWm+XK/Q5daW4mbWeaffUKDXWp4VoPEjBRCa7msYIDJeBZFPBmu80/7HoJ9O7UmmbZuTNCD1olJcjfa8a8KEtIL0HZ+EEGCuoN7SvyaasyO/gm8M3r38lzHGVk1f1/tUiZUxaahS7YI1GAsrOiM3I04NKvCWeGk5FmsBOjC7/uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yRn0HXBNm3wE7l+hqt0y6hzV6R3VO+ecWecaOkIe/5I=;
 b=YHZZ4U1bFZb50jQPlOVXv9eTt4u1WqlnMf5zZXsn0ElXxlAbam4QpKitK7/Axr4Nt41Rw8/Pw4YGYc7W9bTTz8RYhktvKsrGmCH0YbUu0IzkGEucYFYq14HZkfIw9bmLwSo9pWWC7DM8QNZB1xxvNqsWZIP5G8VEMRvKA7i3J0EXVI1TxNAopcEMEr/jc/SbyKnq39+GdqmfHFvpX/DetwVZGcdyRwyd27DNSTGUx/Zlw16t9fHRlJgVRGgHGmMGQHJr2MggVQKQDx09Tcq2fUEvwxJXU8pM10GHlhoqCo246ChQIG8jMyD7UIhy/04oqG1/ySgKD2pP8JvOI/fJkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yRn0HXBNm3wE7l+hqt0y6hzV6R3VO+ecWecaOkIe/5I=;
 b=eo5yov6QCNi8+qWEEFNyfkZJQ8NqS2aFqvohzeyy3hbQh+vZGXqSiwZaCJZyPxPkj/l+hSmqZmgK6rUAfJGBpBCl+tIov00+uz5H1uvfVCh8HWM/WALXZg8znwtLdce8lUHTw5Cc8jzC9XdBcvoAecx3aqeNfZRycPaR351sr/0=
Received: from SJ0PR13CA0133.namprd13.prod.outlook.com (2603:10b6:a03:2c6::18)
 by DS4PPFB6B52B4A1.namprd10.prod.outlook.com (2603:10b6:f:fc00::d43) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 22 Jan
 2026 17:38:46 +0000
Received: from SJ1PEPF00002314.namprd03.prod.outlook.com
 (2603:10b6:a03:2c6:cafe::ff) by SJ0PR13CA0133.outlook.office365.com
 (2603:10b6:a03:2c6::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.3 via Frontend Transport; Thu,
 22 Jan 2026 17:38:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 SJ1PEPF00002314.mail.protection.outlook.com (10.167.242.168) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 22 Jan 2026 17:38:45 +0000
Received: from DLEE202.ent.ti.com (157.170.170.77) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 11:38:45 -0600
Received: from DLEE211.ent.ti.com (157.170.170.113) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 11:38:44 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE211.ent.ti.com
 (157.170.170.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 22 Jan 2026 11:38:44 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60MHciJG934604;
	Thu, 22 Jan 2026 11:38:44 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Thu, 22 Jan 2026 11:38:33 -0600
Subject: [PATCH v4 3/4] arm64: dts: ti: k3-am62p5-sk: Enable Main UART
 wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260122-b4-uart-daisy-chain-dts-v4-3-cfdabdf5e6c1@ti.com>
References: <20260122-b4-uart-daisy-chain-dts-v4-0-cfdabdf5e6c1@ti.com>
In-Reply-To: <20260122-b4-uart-daisy-chain-dts-v4-0-cfdabdf5e6c1@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<d-gole@ti.com>, <msp@baylibre.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>, <khilman@baylibre.com>,
	<a-kaur@ti.com>, <s-kochidanadu@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Kendall Willis <k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769103524; l=1903;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=r2MIPOWlBnmzHXuRDQt2DFsyc3DGQ5cU+Fq1l5hB1vA=;
 b=cte8t16ge7XwSEWEGMPyM6pFXiGmdZ6zXMNSQuIcyoKCVV+meJUAN16wiagaZALQmKekfkHRG
 KeWvt1Hi5SbBpbxVIZyAj/Kst4b5OXKoL/x0gJu2KScV/EHE7s2KrE4
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00002314:EE_|DS4PPFB6B52B4A1:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c6b74f8-2c3b-4320-2440-08de59dd17ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|376014|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MHR4dDlqVkdJSFNqcW1YanRXdzZJVFV0SythUHRCekdDTHJwVFBjcHJsMTUx?=
 =?utf-8?B?b0JJdjF3eHlROFgybFI1QlJOeUlidWwvTmx4WTFPVThFa21kMnZYNGp4VUlM?=
 =?utf-8?B?TFZYSElZeTIzM3BSSWtVMnJvRVN5SURQNUg1VnI1eW16RDJNU2NyQlpKKzIx?=
 =?utf-8?B?dDlXZURHN08wU3BCV08wMm5HYVU5Q0NrZU04anlSQVBlUUlUR3B5aUhSVUx5?=
 =?utf-8?B?eDFvOHB1dzNnZi9CT1g0UkdYemVqeUh4dmI0MThhYWRsejgvTlNzVytEci9u?=
 =?utf-8?B?T2hhR2pUbnRmVlJTRkR0QlRnMEFMTjZmRGIxMVFGTklJVHlmTUcraFhsYVpq?=
 =?utf-8?B?NnpXRXBRby9zbFk1UmltVWpMYmpjd0w2Q3BWdVAyTFF6OXVpQVlJaEROTkxp?=
 =?utf-8?B?cXpUZ3VsS3d3QWVJa2VDOHJDK0JVVGxMWEVJbUdjT1VIbWVKQ296eG1jOU1w?=
 =?utf-8?B?azJDUG56S2xqaFIwcjEwdGlNOFFHdHV0Y0NEQ0xFTUNxOXprQUpmS0ljUUpO?=
 =?utf-8?B?NVZ0ODVPRG82dEVibldTNlU1b2ZuMnZOYmY2Y25wZlhrWGd5OUsxbnlIakZY?=
 =?utf-8?B?dG1LQjQ0OGEvR3kvSG9RNldBZmd2YmpNMDkzYllxOHl2eXcyNEZBSXJUMjEv?=
 =?utf-8?B?c0tuajBVQkd6a0F4c1I5UVIxbTRHVXFsV3p4L2Y2elZmbW0xS1o4VEl4UmVa?=
 =?utf-8?B?ODlFYWNTN0ExbklLU2NhUElqY1JMV1ZCbGhPdy9KUXI5NWdoUDRxNGlpZXVT?=
 =?utf-8?B?Ry9pQVJ1RmpTRFE5K2REUVdDUHhHVFhkazhuVEIzYzNJSm9WeTR1YkppbnQv?=
 =?utf-8?B?NEJlMHpEOHR0Y2lxMHpEYXBmMnp2dWovOHNUemdrNUlrZUpHOWNEN2JGeHRp?=
 =?utf-8?B?Q2Q3Rk53cEJUbDNEUVRNTnduR1JNSEpIMmYzaTlBNXJRcDVYYXhSSSs4dVZ5?=
 =?utf-8?B?NG1weU1yTHMzQ25RKzlna0pteSthYTBKWlA5MFZqNWdDWjkzSVFST0RwUHYr?=
 =?utf-8?B?VG5DSGJzVVNSQnd2WVpTaG95TEMreC96dFg1SFJPMzV5TjZDcTQvYkxaNndl?=
 =?utf-8?B?SXJRMjY4N1JYMUhUck5DYVBQY1hIYzRBYWdOVTMwcVRuQnAzK1E5dXN4RVEr?=
 =?utf-8?B?Smczb1hWRVRmZW1jT2wyWlU3a015TUZhbURsNERPRzIwREtoNmZ4OEEreXlG?=
 =?utf-8?B?ci83K296TTF2ck9TWmRMd0RTbGJjWGhSUyt1WUZheFYvZGFFL2dWekpBTzRl?=
 =?utf-8?B?MWo2Ty93ZmRNTGpxN1A5RjVMOEtWcllkSGhYYmw5dys0bWp1RWYrODJrVC9t?=
 =?utf-8?B?TTBobHlvbGx3YmM1L0lqbU9tTUNLQ2p4RjNwd3ZaKzg2MkV5T3FLN3B5VUtq?=
 =?utf-8?B?c2NWUzhjYVJCTlpWcllMbTZnMzdmVGsxM1I5cW9UNldPSExCYmhDUktGNUw5?=
 =?utf-8?B?N2d0WjhodW9oRXl1U0RlMDlkVUpsL3RTKzF1MlJwbUJuS2hkRFovOU82Y1Jz?=
 =?utf-8?B?U1JnVk1BS1ZBWG1vWW45S21nSlhCUGhCa2NmekxGQ2pYTGhxcU80VFZLWDFQ?=
 =?utf-8?B?UmFnMFN4T1IxbnpxMCtacUxoNTRmb3h3TE14U1lJcXJFVDZoazJaRHpGa0Jp?=
 =?utf-8?B?anpPcGpDTlBKZXVMMzhyYVZpcVU5TS9RSHVCVllWU3VweGo4R3VRSlppTWl0?=
 =?utf-8?B?c01DdkZNNGc2dWhnR2tlTTZudWlsaVdqWmY0V0hUVCtxZ2hiUGM1WUtkUnVZ?=
 =?utf-8?B?MEppK2FRUzRYeVVBV0NhVlJ2Q1pqSmt1cllMbEFXZ3MzTnZVTEphWElubFpn?=
 =?utf-8?B?cTQxeElya1NqdHZDVk5PN1lheC9ubUdicFQ4YnV4cEt4MDQzazhWdkVNQ1lh?=
 =?utf-8?B?SVVKY3h5SWJUeUlKQkZ4ZWl6ajZZak5RN2VzVVFjUXQ3ajhZblhJbHZjOVVQ?=
 =?utf-8?B?SmpqZTIvSUtRVXJsb29VOGNpdzJRaXFTODhna2lNaS9JSHh3VGNtUy8zRTJ5?=
 =?utf-8?B?UFNheDR3TFZaUEluSkphc1dwMSttNU82Uk5zNFAzcEdFcmsvMVd5YmlibHN2?=
 =?utf-8?B?c1VMNWpaYlBPaVZ5VFZmL0NTSlNOSWV4eWZYSGEzdC8yTzJTQlJ2TmhWZS9k?=
 =?utf-8?B?SEFCakQ2VTVrbHp3d29ONndTbmJpekdzMWp1M0x0R3cxNXNudEFQSkthYVpx?=
 =?utf-8?B?ODIwSUxQckkzQXg4SVNsaWtNbEU5SnMxcFBqL0hSQ0ZoV2dOQS9ZditCaTky?=
 =?utf-8?B?QWErUXRJZ3VlOGJSMFFwbnJGNDlnPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 17:38:45.6027
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c6b74f8-2c3b-4320-2440-08de59dd17ed
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00002314.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFB6B52B4A1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258592-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,3fc0000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 9BC7D6BC70
X-Rspamd-Action: no action

The Main UART can resume from suspend to RAM states when PIN_WKUP_EN
is enabled. Add the necessary pins needed to wakeup the system. Add the
system idle states that the Main UART can wakeup the system from.

The UART driver uses the "default" pinctrl state when the system is
active. In the suspend hook, if the UART is wakeup enabled, the "wakeup"
pinctrl state is selected by the UART driver in order to allow wakeup.
Upon resume, the default pinctrl state is selected again.

Reviewed-by: Markus Schneider-Pargmann <msp@baylibre.com>
Reviewed-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index 4f7f6f95b02ef94a140edcef595ad8f6cc4b4113..fd323a64880970e17007ab130161dae56efd09d7 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -336,6 +336,13 @@ AM62PX_IOPAD(0x1cc, PIN_OUTPUT, 0)	/* (B22) UART0_TXD */
 		bootph-all;
 	};
 
+	main_uart0_pins_wakeup: main-uart0-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62PX_IOPAD(0x1c8, PIN_INPUT | PIN_WKUP_EN, 0)	/* (A22) UART0_RXD */
+			AM62PX_IOPAD(0x1cc, PIN_OUTPUT, 0)	/* (B22) UART0_TXD */
+		>;
+	};
+
 	main_uart1_pins_default: main-uart1-default-pins {
 		pinctrl-single,pins = <
 			AM62PX_IOPAD(0x0194, PIN_INPUT, 2) /* (D25) MCASP0_AXR3.UART1_CTSn */
@@ -692,8 +699,12 @@ partition@3fc0000 {
 };
 
 &main_uart0 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "wakeup";
 	pinctrl-0 = <&main_uart0_pins_default>;
+	pinctrl-1 = <&main_uart0_pins_wakeup>;
+	wakeup-source = <&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
 	status = "okay";
 	bootph-all;
 };

-- 
2.34.1


