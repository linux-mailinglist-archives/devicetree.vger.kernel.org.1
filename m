Return-Path: <devicetree+bounces-267667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBF1ElLlnGlNMAQAu9opvQ
	(envelope-from <devicetree+bounces-267667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 00:40:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D49EA17FB78
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 00:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E701F309EE3B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 23:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9810437F8D5;
	Mon, 23 Feb 2026 23:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="gSBAR35Q"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010030.outbound.protection.outlook.com [52.101.85.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9966937E317;
	Mon, 23 Feb 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.30
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771889855; cv=fail; b=pSyNjx47d2pYXaiWRocws6hFNW5LizeCY615xZkv3PYavLx6tU0zLIGjECdI5XuyHim0nbh9mV4NcQA8vIsHEwUgzZlwOmnF4lY//nUsXE9fURBltESDsuTp0w/wp0DoExOB7zE4x9DwIvsMydqZL70Gh4eMpBBwNYGGRBux8YE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771889855; c=relaxed/simple;
	bh=bdC/UXIJSGS5aqLYPzcb4xCH3ediXKKBfzAzVBGK3DE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=meZAE10Q6Cm5KnrD7zVbVgP7EGh+2KheC1uRgEzT3obD+ey598C48wgSSLc85ClXIAdagmW9OR/EDuuFdGrCQHydTktrXaOqBmahgpxiU2H4j3NHrRGhn0q6yreHHCX11z/1kVj9NeUYIYqMAn2mZm2h7DD66pzR4du1e7E8eiw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=gSBAR35Q; arc=fail smtp.client-ip=52.101.85.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QmgXxbJvxoyQM5hvZnMq7lKruBiUeQu9jC+l4TzJ4RrZeMUVvTikxqz7b4R5gPS99B5lNkJglqoezNLmSeHTxhlmFXhgsfbsiAKQbGT2nVLfAoMlZD/MQacImaqLdT2Cmbo7o88kXqXDOmiNgFbXGnSGAFjezOuJ7cNPEbBo5DXJ2qazGewx3ZfPb7ofwSMlrghFUriYEoTFfC+6vwlU0VIiPH2sGWt34fCKlGcutHxIJWEedgzgCywTqtDdbT2nS4rF7KZiCttWkSQzFjt1hKrMGcxfqtj+NAHxqg246SQBOJt0L6RbfshqiRdRXJVCziK8012dgH132D/RFGCtfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gxfSNTnBXBlJLTxykspocTi2YbvIOvcQ01B6OM8bEDc=;
 b=uQGWiaGe+UrSgPm67uhuh2WOWa/c8LflGAe1r8OsuDw65K84bqaZtMZycaw6KYApJ41wVyYn+mHXecYfIra63UYt9sC1iqRW0y1TqmYNkt1+2TeP3WWcdDNGHzUQnr7LdKpHsq4XJCKejaFAmsXSyOIB6Uct4qK9zD2q4g8IZ2cGL1mmuNZS94MbaYYevooDqqm9voqy+XMQn/OcBfXAM68gTt/hArTiRphNYDVx0nhmVzBBMHF/Lu6XpbV48CW1/m74iGL0e2zkIslE/BerkpSmtPx/7RIeM1J49ABTYJ+gCSq4EIJuSZcQ0V0CwQvxmRsQeEAr0V6qBEqYnfdasw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gxfSNTnBXBlJLTxykspocTi2YbvIOvcQ01B6OM8bEDc=;
 b=gSBAR35Q1t5XvNCQawSe/xkhGP0DnrKqXpgZaUSUhPcJeCpp3jT+54MZo2YNmXB6X748FT78qTumALUtnVwnF/qh6Rc/SGy+BGmYRYUt6OUJ2ksq2mN8b84sIlvAgtnclZ4H5N/bVnf21UmZiBBMZ3bN+P10BycdmvpaKwgyYDc=
Received: from BL1PR13CA0218.namprd13.prod.outlook.com (2603:10b6:208:2bf::13)
 by DSWPR10MB997825.namprd10.prod.outlook.com (2603:10b6:8:36e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 23:37:32 +0000
Received: from BL02EPF0001A103.namprd05.prod.outlook.com
 (2603:10b6:208:2bf:cafe::a0) by BL1PR13CA0218.outlook.office365.com
 (2603:10b6:208:2bf::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.21 via Frontend Transport; Mon,
 23 Feb 2026 23:37:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BL02EPF0001A103.mail.protection.outlook.com (10.167.241.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Mon, 23 Feb 2026 23:37:31 +0000
Received: from DLEE211.ent.ti.com (157.170.170.113) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 23 Feb
 2026 17:37:31 -0600
Received: from DLEE201.ent.ti.com (157.170.170.76) by DLEE211.ent.ti.com
 (157.170.170.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 23 Feb
 2026 17:37:31 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE201.ent.ti.com
 (157.170.170.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 23 Feb 2026 17:37:31 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61NNbVXs1677488;
	Mon, 23 Feb 2026 17:37:31 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Moteen Shah <m-shah@ti.com>, Andrew Davis
	<afd@ti.com>
Subject: [PATCH v2 1/3] arm64: dts: ti: k3-am62p5-sk: Disable MMC1 internal pulls on data pins
Date: Mon, 23 Feb 2026 17:37:29 -0600
Message-ID: <20260223233731.2690472-2-jm@ti.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260223233731.2690472-1-jm@ti.com>
References: <20260223233731.2690472-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: BL02EPF0001A103:EE_|DSWPR10MB997825:EE_
X-MS-Office365-Filtering-Correlation-Id: 84d180e4-3109-4032-01f0-08de733483d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?44TLX7y0oLFQlh+pXSAslS/viKuF3faJqZ+czP74ucLMm5jAPogP/us2vJIR?=
 =?us-ascii?Q?vdC9qzWe7fVW60BXVi6oanVXwH7JZdhRJiZdc+Lq7isoov3I2d9kd60ksByX?=
 =?us-ascii?Q?YZPd1AIZr4dalf0taFx+qRCO6ghgheriYBTco0qZG7kw0On3MkxUEX+pQyIU?=
 =?us-ascii?Q?RbkvLBlw+0Jws6mg4zCxlLsBMW7fyTLN8ugGfEWi3bRiAozhgugGAMlqhO5F?=
 =?us-ascii?Q?2eHLgQo0Wawmp3VFsQ08fhUtHIC+LfBIT5v22R7ddNKzGk3ilV6wqoxL0+K8?=
 =?us-ascii?Q?533lhrSbZCCvqHySWbEN/FPgeUPbqqqZW7GVEjri3P7DldIO30p8/efJeSL3?=
 =?us-ascii?Q?LAp34GaFT6NRFrApJt5ffJe4YKD83nPgI7a61qgGgWHuAWxUjCbU8Buoq+eg?=
 =?us-ascii?Q?duCGTafof10zTVTIJl0pvy2k8T/6mIafUzp/RNwLhZAsD7ne6s/OrnNATCrS?=
 =?us-ascii?Q?e6Z/KzH9bKGgoEo8qTvD92Z8i7drJWfla1um1KIO5Kt0e60iiI2cSNoi9fUb?=
 =?us-ascii?Q?QTdpHtDXReCAvPQi3/5c/uOs3z97rilkae+dJBI+LNPMKOGYA7yZzPE3jvP3?=
 =?us-ascii?Q?YRAjyy2ikKgmSpDGPjGErERDNb8YvvD3V+MIghFgfBo2eiJpU7aoKZZQSFZB?=
 =?us-ascii?Q?Ovf/feDmebtXnj9fOwAH0f4iGgmSOrFxBYd6Paau7oIt4sqKvwwJxGcVUvHa?=
 =?us-ascii?Q?bxV22PCUosCFowZWM7Ox2OPhWS/ecuy+40tT5WgUlIuqGz6Bgjt9WL+o5FrG?=
 =?us-ascii?Q?dmYgEieP+K4Mm1wnSMuQVRue6+pqRRnOYAZpJ/QXhzp5CQWcJgTO/jprEu0T?=
 =?us-ascii?Q?bTRiDVDjLJLe6hHcV1XryPhC+sA3/Uo9Pot1TwTdbHCLWPtDLeeo8vOyya5r?=
 =?us-ascii?Q?mkBxqIYAUwKT4Zl7W3aMZJlh+2vD+bf+AIaiRUW5HUxAUS00aGPAS396q0F3?=
 =?us-ascii?Q?kdGAdu+ffq5Ie2huS0wsI6ZWqntS63Fv8zwHxgDYr9xXTgukA/deYDLBA40y?=
 =?us-ascii?Q?Cibdv43PWMFb//Q+XjmR3ekEd4iNwWTfL5K6M8jAipxjC4Mph35/bFH/0CG2?=
 =?us-ascii?Q?5X2HSkiIS0PnVKuXbEKu5epwBhody64i/LZkMSfFQdB7bTOJ4gZgXOHiusIe?=
 =?us-ascii?Q?24G2+YqfaJCqEJ8e+YctWN/Z8F4ZLiNHbrcZ0ZTb3XF8+5UJz3CYdlNom1VG?=
 =?us-ascii?Q?fQzIc2X8ElOITtvp/cJAyhSoQm+/jVAZuRglqSwbkXp1uFIK/FOxBIUhMisD?=
 =?us-ascii?Q?irHi+yINmEvLCqahhuLdWFgVNt0gKkPWZEu059Rt5PhqZ8xDZVrfpm8BLE31?=
 =?us-ascii?Q?V2bDcc6DjWzMK3AqQNBTYj4iuFRg172eZvrLvsNNezj+BawDrVP7V4bFRHmC?=
 =?us-ascii?Q?/9++y1DuC8M8hyRsCuPAAkeROwxfa3lW89n3CZFDS+5EnoodRjmL+YwzCjkQ?=
 =?us-ascii?Q?DHM+fqnnNj4F8QbNPYtdTzRpjDKNjg6NU+dSAjaoTdm6m2/FNOm5mNsKAMn8?=
 =?us-ascii?Q?di5NqtIeEPyo1OvWzTYHtjDwkMCZpXfS+SlzsrtflxBuzT5KWCWidkxuYZQQ?=
 =?us-ascii?Q?bMkHn2KUPBrkV8vn6DN81A0gXMZHuhE2SELeXEA4g3PwRUEj44vza8o8+JFB?=
 =?us-ascii?Q?If9AQgEy42+B9m3LUhuNwaVKzIpOLYzKCahJHE4XosjXOey++r88ShFsZ11F?=
 =?us-ascii?Q?nyuPWA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	TRazfQy10nai5kJGWJ48890Zy4aJFHfyMHwkKJrF9j6JmeeuvOojnbzdFZeGBAsjjKOxaNeOk9WpKhMphbILkD/i1BRcvPMQEVSnvmV6dWULLWnY/30FbpnH7QleA/BFCF8Ft7cymfGnc5FuYkSLaYihu23n/yTryGb3T4ap4nwXBhGlTILYPNXDKuxM4IaarXvvzJUUbiKpQMVx36EoYX2VhE7mHka2hNiqkGvoNoYkvmCShRT7Kyw1UkfIE7grcE/C5NKFASoVjaUR00VjtLzpJenUKS5QeoIZ+IFOrK43hPpgEDbE9N+PUTMDxxP4zADadgCtaFXZ/B29DAJbfXWjYiFFgyFVB+aO9RfWtiV3ieNH6cJj1kw83Rku2rN9ugxLa//athSb5muArYvR+l94PY7DWZd0jFZUY8+/b7hxrhyYnzKsupL5KmSebfd1
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2026 23:37:31.9099
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 84d180e4-3109-4032-01f0-08de733483d2
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A103.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR10MB997825
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267667-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:mid,ti.com:dkim,ti.com:url,ti.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: D49EA17FB78
X-Rspamd-Action: no action

AM62P SK has external 10K pullups on MMC1 DAT1-DAT3 pins [0].
Disable internal pullups on DAT1-DAT3 so that each line has a
single pullup source:
- with both pullups enabled, the effective parallel resistance on
  DAT1-3 (~8.33K) drops below the 10K minimum pullup requirement
  for data lines (per SD Physical Layer Specification)
- removing internal pullups makes DAT1-3 match DAT0 10K
  external pullup so its consistent and within spec
- both internal and external pullups enabled equals unnecessary power
  consumption

Fixes: c00504ea42c0 ("arm64: dts: ti: k3-am62p5-sk: Updates for SK EVM")
[0] https://www.ti.com/lit/zip/SPRR487
Signed-off-by: Judith Mendez <jm@ti.com>
Reviewed-by: Moteen Shah <m-shah@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index 4f7f6f95b02ef..35baa777b9121 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -271,9 +271,9 @@ main_mmc1_pins_default: main-mmc1-default-pins {
 			AM62PX_IOPAD(0x023c, PIN_INPUT, 0) /* (H20) MMC1_CMD */
 			AM62PX_IOPAD(0x0234, PIN_OUTPUT, 0) /* (J24) MMC1_CLK */
 			AM62PX_IOPAD(0x0230, PIN_INPUT, 0) /* (H21) MMC1_DAT0 */
-			AM62PX_IOPAD(0x022c, PIN_INPUT_PULLUP, 0) /* (H23) MMC1_DAT1 */
-			AM62PX_IOPAD(0x0228, PIN_INPUT_PULLUP, 0) /* (H22) MMC1_DAT2 */
-			AM62PX_IOPAD(0x0224, PIN_INPUT_PULLUP, 0) /* (H25) MMC1_DAT3 */
+			AM62PX_IOPAD(0x022c, PIN_INPUT, 0) /* (H23) MMC1_DAT1 */
+			AM62PX_IOPAD(0x0228, PIN_INPUT, 0) /* (H22) MMC1_DAT2 */
+			AM62PX_IOPAD(0x0224, PIN_INPUT, 0) /* (H25) MMC1_DAT3 */
 			AM62PX_IOPAD(0x0240, PIN_INPUT, 0) /* (D23) MMC1_SDCD */
 		>;
 		bootph-all;
-- 
2.52.0


