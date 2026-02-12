Return-Path: <devicetree+bounces-265183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAr2EHMfjmk+/wAAu9opvQ
	(envelope-from <devicetree+bounces-265183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:44:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9861A13063A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A2BA730FD540
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36EBB2F362D;
	Thu, 12 Feb 2026 18:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="BN5fZ5Xj"
X-Original-To: devicetree@vger.kernel.org
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011018.outbound.protection.outlook.com [40.107.208.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0958299943;
	Thu, 12 Feb 2026 18:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.208.18
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770921779; cv=fail; b=sCw9UwvKhhog475/n8EihWcs9V9PZ2Plehd1xmkwXwdH+8+jyswyw/XuJxnxZO2/uDFpGg7mge29wHWmNhp1ukFmjXdlrE1DTY0qGHwM68iMtlhpYk2bo7TG0XluWKB64cTScoDIBHecyKIIMcb5nkODpjc3vs+4K+I2ISFdi/Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770921779; c=relaxed/simple;
	bh=+j9TDskoBnbI/HppIVoNNZ42FuM5GV3BgO7SbjijsQQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K4jmLfdw/KfEI72g/pjYCFdQvOj1te/aR4EFnfF8dLMbk3Wp10fsr7vkmSe1qxNk4kbABTlXL+2g/ESjP4NoTiYq7EmZ43f6+NJwJfzxFD3U44uRbp6K7Q3eT8tYEQFRfRr55jKsTQaHm9/+fOLnPeS0d8Wc7L/KTLljIcNfaNk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=BN5fZ5Xj; arc=fail smtp.client-ip=40.107.208.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OsebOEL2n8QiuEVj+n+ienLmiXz8HcRDP5lZ5lWb4wTs6T7gJfAhX8a6fO3iT1Rc7o0s79WyV5/uWvSyWVlm7qir4XM6rqtMJI1bgz9PL3ALrvQHotGlrZo7ZtsyRXcjT7S24E5tGD7qg6rVYIcCpycFStfSsgvzYMJGJjS4Kwop6LZet5db67SkD7qtrZQkaKw54iNatvp4HsBGt2b5+FR6ZmoqvmIRxg6kk/z4r8nFMYeNfCKlR9vPFDOmTK3nBA89QtGhKlFZi8yWrzQQpaaETONUfo/3l9tvDnthd8Lh4cQ/Bv88+nYtK9orIpS4XjIvhXa0HKJCgBFD4AgzDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x5dr+rl8FRQZTFWarAL2kGEoPsEOxKSit3l9sN7iInA=;
 b=hFY0So7QUS1fAgA1pWoRRdOVL+7aowUJAHtum1ydivdmLNjBG+unfQipd+94l6WINEG5pt9axk0S5J02zdDEZNPBEkSsyBceJ3ZaZTZzu+3xQl6zKXyiRkMmviezZcxVfiHDgwM4vI9FFbdbgNh6LKEgxWMGnW1y7g+Zg60aFCVNfgXbWbnL7muv9xLWk5lPZhSUMrclLA+DuWhp++TyBGzWIb/bZMabJfaRU/bhCmq5gwDc2Ksplvh9LfQm6hv+JjvGc24q0VQWo/NyrorSU+OJ7el/fQTtB76W7wD3B7zIuHW1STexrncwl0i/ZvrvJhTpdJvrLxN4bh6pCWs6vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x5dr+rl8FRQZTFWarAL2kGEoPsEOxKSit3l9sN7iInA=;
 b=BN5fZ5XjgQp0/f2QBzUKTwdpUrVgGRHRVmwGIIOtQrX45yLC07WUTHOfCQm46pGo94RnKq3pYuHL3/XA+LigId71Wu7U2shaXEwK/yXoRxoF1GVj5Hj/A5Ir1gQwP70ayNtSe4kAljnzH1tx3YIQIFrsfGJjVC5oRgAk1a/xTBg=
Received: from CY8PR10CA0027.namprd10.prod.outlook.com (2603:10b6:930:4b::6)
 by LV3PR10MB7746.namprd10.prod.outlook.com (2603:10b6:408:1bb::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 18:42:54 +0000
Received: from CY4PEPF0000EE39.namprd03.prod.outlook.com
 (2603:10b6:930:4b:cafe::9f) by CY8PR10CA0027.outlook.office365.com
 (2603:10b6:930:4b::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.11 via Frontend Transport; Thu,
 12 Feb 2026 18:42:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CY4PEPF0000EE39.mail.protection.outlook.com (10.167.242.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Thu, 12 Feb 2026 18:42:52 +0000
Received: from DFLE213.ent.ti.com (10.64.6.71) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 12:42:46 -0600
Received: from DFLE209.ent.ti.com (10.64.6.67) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 12:42:46 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE209.ent.ti.com
 (10.64.6.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 12 Feb 2026 12:42:46 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61CIgku64002204;
	Thu, 12 Feb 2026 12:42:46 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Moteen Shah <m-shah@ti.com>, Andrew Davis
	<afd@ti.com>
Subject: [PATCH 4/4] arm64: dts: ti: k3-am62-lp-sk: Enable internal pulls for MMC0 data pins
Date: Thu, 12 Feb 2026 12:42:46 -0600
Message-ID: <20260212184246.2316659-5-jm@ti.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260212184246.2316659-1-jm@ti.com>
References: <20260212184246.2316659-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: CY4PEPF0000EE39:EE_|LV3PR10MB7746:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c27da13-069c-4ae1-7b01-08de6a668759
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?vWwv5V1bX6wfGvUJUHWHHOtCLqgwDuKFbthHj9ufXumlGq+rKQIfOZ/4Frun?=
 =?us-ascii?Q?qvKN2ZfkNS+lkW13hJFUYkM4bbTGoVLBleFp3N1EQL6NBo0ZSJVGSRjVBULs?=
 =?us-ascii?Q?MnKSpVcp1jiN4WZJAvkKy7p8RrNmRXzS7k/LmceXCzIa/cEfXr+zr4H2xrVP?=
 =?us-ascii?Q?jFRF6Wha2duqFJlSvyyeCoTdIDV2pTka2WH6E9BMFdn9CwCY5Gk9bHI62ZOj?=
 =?us-ascii?Q?gRTfh84kEIGQSTp4w0tRa1L1DnucspNRWqI0+RxIrAFXVun31vb2sRJbe/96?=
 =?us-ascii?Q?ekr6yi3YiTKPREXcpwksP31BIRriFIlSq4pBDBHNg/DsKnNcFHoRPncaB59B?=
 =?us-ascii?Q?tcwDY5vcUPQPD2xqfiAs+YJY35hRmDVSz18JWwglrM7bKWKpa6FcuRbAuVzP?=
 =?us-ascii?Q?rejGPs5Qr1Gcvst4ciyzzUPlGadMfVxQEV6hR9jhnRpKXA5q8BgfdzOw//M2?=
 =?us-ascii?Q?ji4FJpkx4NsCgUBVhraPkxohaR21bYF2XE5nlGM2RCe+CQcB+lO61rDWZKqv?=
 =?us-ascii?Q?QPTnvVHg8/HQqUEtfOIG2nGHunBT7AEVpBE/EB3RcrdiaIfpRz3cledvXLAs?=
 =?us-ascii?Q?8WvzRabVXkRYPoUAq0ES0/SrZSEoh0Dj4Hhy8fRqIdjKT4WqqcAhEskdffYa?=
 =?us-ascii?Q?NwCIzCoqRYFB59vAKy+3OMYZHZ4cLESYd9R1kZjRHHQscFJPrzjRr25YRcsj?=
 =?us-ascii?Q?z4n3HnBrCV4wHOBrzY3DP5A2MnF1TqGwvj/547ApMyM+mwpJIyrAJ228Hplx?=
 =?us-ascii?Q?WpvQfo1rfqUnmfvCr5kCew7SJd20so0qdOU5De2d1gArouI/PhcsRQm1hjxl?=
 =?us-ascii?Q?pp0WMSu2BE9z79oej/OUcp2b4XNDiRd5Weau+lV0ZoA8SMpy/B+pYXHmtIim?=
 =?us-ascii?Q?S5/g9ZEN1xo7CX+WV5rsapxrQym84xaLD2YTZVJeWy8iW7pAeet8sm/CQlx3?=
 =?us-ascii?Q?yG4uNYUduHBcKiTN+Hyjzm6cN20oXq/V516ekC/lfEI7R/hLC51xCjV5L6fu?=
 =?us-ascii?Q?Y8o98tXSKQB7BXJWMyqcdO7RfzXoIYcJAzMjwma99z/quJG0w43YiYf9dYRz?=
 =?us-ascii?Q?rATuUMidkQBFogps1/OeUWtgSPzjQyvf1hjyJAxKlCvcoRk1DVB1+u4mKAdg?=
 =?us-ascii?Q?aQjzD9nk3HW8DtHJeTekX4+iKVRgeokHNH4lZGnr7NPPMOR3Ob02yEIGBdCs?=
 =?us-ascii?Q?WJ3sOvxOPBph4eKaIe2a8Qmry/bTaPbTLVvnJYugcpAWDlVONtjY33lHAzRq?=
 =?us-ascii?Q?Opx5kkQzbvYm7J1T3uwMgPdZTBd/kY1TuPCaM0DmSXgelUwHw/oWIVC7NsJL?=
 =?us-ascii?Q?kWkqY6VceZ/egj0Di3jGdboas5tOlzkeBhBiX/C3i/DLIgYSvLGccy3n0X5N?=
 =?us-ascii?Q?toIstHJ1aBb9WRlfDwtHnvWzCC7+jMpjT1LUMKolx3n/+pAlblvy6+Mm3NM6?=
 =?us-ascii?Q?ynq9gXthp+YNkUQRIDRqlZardbBtroXouBddq+Eh3pEWbJh5uMXcXCYKbA10?=
 =?us-ascii?Q?CdxCLJi9hcryqneSvO5ySGUB7yl1pjAXDrqByF8zCywtUpBuuCAj/hFvtSO5?=
 =?us-ascii?Q?Bg2ob287Q4wFzUOt+VlgiblbSWEcx8LshuJeb1uzHXA7LsGcGnWtq6AoF8Pm?=
 =?us-ascii?Q?8S6EW6n1BVkETcXgoQqXLw2AGbF6kjJEIY5shBMKj2nb3PXh3MOi1HtJilX9?=
 =?us-ascii?Q?CZ/Trw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	+cZWWQijuydOEcOnCG/Y42q1r92AQmclYGNSKdRJIk1MtKvlFEpc+XbHtbuBulc62SozSEWTF7vl2LNHxMwXWrSxaNIoPyOau9Q4XPHsalLUsAWeT42d8eC9xkN1rjlc5rGsub2EZ0YmG852d5SWX28dQ+CI22wyYOJHQIzDWub+ED8rsGEfw3wjS8qPcFU7rAwKFzkOxwvV8EDypfp2xl/wgY78FaF6zMHzWmZhgy6jeWzb7fJ5uXuFk6yTBWnktDiF6rDJXYOrLVOF4pg5JGDCraZweiovgKrPbT8RsZJ4oAo7r3rMZ9P4TedjY1ThTV/M9UPUfQ7E6Eg93EA/VIwLi7GEQN//buRsq26me+qcvf8FVgOUHDiZPNZUYF9GdssS2AQpFTV6mJ8cda8ZJYajqzejjKOeb+3ucGOF6FrEayPQRxaFToLrh0fyKTQC
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 18:42:52.2291
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c27da13-069c-4ae1-7b01-08de6a668759
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000EE39.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB7746
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-265183-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:mid,ti.com:dkim,ti.com:url,ti.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 9861A13063A
X-Rspamd-Action: no action

AM62 LP SK board does not have external pullups on MMC0 D1-D7 pins [0],
enable internal pullups considering:
- floating lines violate JDEC spec recommendations
- mismatched pullup resistace between D0 and D1-D7 may cause potential
  issues for modes with tighter timing requirements. The different pull-up
  values cause different rise/fall times on each data line.

Fixes: a0b8da04153e ("arm64: dts: ti: k3-am62*: Move eMMC pinmux to top level board file")
[0] https://www.ti.com/lit/zip/SPRR471
Signed-off-by: Judith Mendez <jm@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
index 3e2d8f6695351..8a556fbbe08b7 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
@@ -88,13 +88,13 @@ main_mmc0_pins_default: main-mmc0-default-pins {
 			AM62X_IOPAD(0x220, PIN_INPUT, 0) /* (V3) MMC0_CMD */
 			AM62X_IOPAD(0x218, PIN_INPUT, 0) /* (Y1) MMC0_CLK */
 			AM62X_IOPAD(0x214, PIN_INPUT, 0) /* (V2) MMC0_DAT0 */
-			AM62X_IOPAD(0x210, PIN_INPUT, 0) /* (V1) MMC0_DAT1 */
-			AM62X_IOPAD(0x20c, PIN_INPUT, 0) /* (W2) MMC0_DAT2 */
-			AM62X_IOPAD(0x208, PIN_INPUT, 0) /* (W1) MMC0_DAT3 */
-			AM62X_IOPAD(0x204, PIN_INPUT, 0) /* (Y2) MMC0_DAT4 */
-			AM62X_IOPAD(0x200, PIN_INPUT, 0) /* (W3) MMC0_DAT5 */
-			AM62X_IOPAD(0x1fc, PIN_INPUT, 0) /* (W4) MMC0_DAT6 */
-			AM62X_IOPAD(0x1f8, PIN_INPUT, 0) /* (V4) MMC0_DAT7 */
+			AM62X_IOPAD(0x210, PIN_INPUT_PULLUP, 0) /* (V1) MMC0_DAT1 */
+			AM62X_IOPAD(0x20c, PIN_INPUT_PULLUP, 0) /* (W2) MMC0_DAT2 */
+			AM62X_IOPAD(0x208, PIN_INPUT_PULLUP, 0) /* (W1) MMC0_DAT3 */
+			AM62X_IOPAD(0x204, PIN_INPUT_PULLUP, 0) /* (Y2) MMC0_DAT4 */
+			AM62X_IOPAD(0x200, PIN_INPUT_PULLUP, 0) /* (W3) MMC0_DAT5 */
+			AM62X_IOPAD(0x1fc, PIN_INPUT_PULLUP, 0) /* (W4) MMC0_DAT6 */
+			AM62X_IOPAD(0x1f8, PIN_INPUT_PULLUP, 0) /* (V4) MMC0_DAT7 */
 		>;
 	};
 
-- 
2.52.0


