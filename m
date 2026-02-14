Return-Path: <devicetree+bounces-265515-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +J7UEWkxkGkTWwEAu9opvQ
	(envelope-from <devicetree+bounces-265515-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:25:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9494613B621
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:25:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A96763038A4E
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 08:24:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 860C82D7DF8;
	Sat, 14 Feb 2026 08:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="nOeQ0j+R"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010011.outbound.protection.outlook.com [52.101.193.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E80630BB81;
	Sat, 14 Feb 2026 08:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.11
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771057462; cv=fail; b=I1C99rE9ApgNCsTofCWGmj8cyUOaRvZuPRgo/KR3TmXlphrALisOykWAg4ZYkuANjPQ8GDdXw6H7fP8ps7vXfBaHg47cgCAsuP2pMzq5kWaIIA0BH/YcZCQ9z8PpdqCIC1e9Sq7X6+qlHA8hM6Lkt0o4dkG09ZpCT0lMF+e+GJs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771057462; c=relaxed/simple;
	bh=DDSXhLFsWJbDDoASdktXnKoC3F9nbYCWscbex9J+Qn0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QCzXho1R4tSYzSAVBHOkwsZ5HtdlL7chYz9bExy2pr+zco16YBLYWgVs/BsVOc0Sgji/II+Y+R4aVe66GQfqxoeAwCUjWTT+RglK7fqZl9T2BgoQ4TP7oBjL2SGEdP0HRcB8bB4jqBm6rIMzYNGWlwY9otxg7WMDgfvoUeGKGag=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=nOeQ0j+R; arc=fail smtp.client-ip=52.101.193.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WshJppI0h3NKv+pR58kN8NgVNcguXgXR5yzt+flJTgvC1E1GZhTHsN4as89o7/cF+3Oq+/54F+vVISZ/N3KpcdDPr5rF05gkg4njDmtdEPdrZPzP9sIL/hcQHwFjPbG/IP+WldZtxeJdrZl74mo5BvRId8tHVcpzbg9jUl6nGzsCRX5THn/K6q83bqLBAX5xgafCk/vxseqrYGzfP/4o/qTYFfr9fd6wnbW4QhH0IB9lA2vsYligDmUYoqyoDaaYi5cYMrf2LsH80MGJBVb9zVJO7JjMEgr0eZS/o291RA48WSnyJ3PpNAYJoj2l0u9BkfAYaMy1BPiCK1f4mc9Exg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y2Xzw9gv4KHsMn/ija2ZtwOxCu6sGdSq4lBBLBwkS/U=;
 b=JqpTLDjZuqqTq2GhGsuetMlpwIck7okMx3F8/n2gzT9Z3OiJRIhX1mcZf1w9xw5DFpVAFVGe50YcTXx5iZuqYP2wHK7yeZtde0o+XzklciPRS4ge/XqadsZkSwiI1yYCEyX8TUMw46GIHkdhKz01bHP/GydDKu00VBpSg0+/qzZajinZNrFaMOk4Cefg2oJi78czQLAJXc5KODQM6u3o1g8X+KObIeOY1hkUEQ9qkuoE1QhLrUfFI5FwYkea8FkJUQkYF/TR2texyx5MduHeUpBVqFMp9R1hPCMpkbypDGpOjoQW8FaqCwsz40Bzy1ierETUj4dfbpUE2BXSJt/M4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y2Xzw9gv4KHsMn/ija2ZtwOxCu6sGdSq4lBBLBwkS/U=;
 b=nOeQ0j+RRiS+Vn45SvK5LGMmGVeBMnsc5MLsr8Ulll3Sj204GXsdCKcrlKiJrLPXmzVLJBqs9sLLggba0uZc7KSY2ibEhR5R+c1FdYvjAeSOu7MZ97F35rhJqJ+rqhf9nSoAGoL4jzMQe+nwlHrssNypqFGXfqFIBOpbYz4SSEY=
Received: from SJ0PR03CA0135.namprd03.prod.outlook.com (2603:10b6:a03:33c::20)
 by IA1PR10MB5994.namprd10.prod.outlook.com (2603:10b6:208:3ee::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Sat, 14 Feb
 2026 08:24:17 +0000
Received: from MWH0EPF000C618B.namprd02.prod.outlook.com
 (2603:10b6:a03:33c:cafe::56) by SJ0PR03CA0135.outlook.office365.com
 (2603:10b6:a03:33c::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.13 via Frontend Transport; Sat,
 14 Feb 2026 08:23:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 MWH0EPF000C618B.mail.protection.outlook.com (10.167.249.123) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Sat, 14 Feb 2026 08:24:16 +0000
Received: from DFLE210.ent.ti.com (10.64.6.68) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sat, 14 Feb
 2026 02:24:15 -0600
Received: from DFLE213.ent.ti.com (10.64.6.71) by DFLE210.ent.ti.com
 (10.64.6.68) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sat, 14 Feb
 2026 02:24:15 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Sat, 14 Feb 2026 02:24:15 -0600
Received: from localhost (ula0502350.dhcp.ti.com [172.24.233.249])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61E8OEfW2623156;
	Sat, 14 Feb 2026 02:24:15 -0600
From: Paresh Bhagat <p-bhagat@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <praneeth@ti.com>, <khasim@ti.com>, <v-singh1@ti.com>, <devarsht@ti.com>,
	<sen@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-am62d2-evm: Add PCM6240 ADC support
Date: Sat, 14 Feb 2026 13:53:43 +0530
Message-ID: <20260214082343.2109890-3-p-bhagat@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260214082343.2109890-1-p-bhagat@ti.com>
References: <20260214082343.2109890-1-p-bhagat@ti.com>
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
X-MS-TrafficTypeDiagnostic: MWH0EPF000C618B:EE_|IA1PR10MB5994:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ef5e341-54cd-4735-d9e1-08de6ba2716a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?7uBp5WHWQViOh7OR59Ijb2QVUc4GsOpDNA2g4ghWcvUiMeb30QuoFPTzMBPa?=
 =?us-ascii?Q?uggt2umBm4wI3CkNGYONIuNSdyuexmH25alimknGIMslAHEXbrAq2ku+ArCr?=
 =?us-ascii?Q?32YSJZhjU8D8URXaXuyVePmjbP+qcDVf1vj8urj6eah8+gQOzEFOUpA6Br1E?=
 =?us-ascii?Q?zCaUZIZuXMu51w3GJeYY5O2eBVrvyJwrP06gqckybu2PSpt6yQH+LB5V/RiI?=
 =?us-ascii?Q?ampdypHwbsI6uZfK4L94UPwPTTMx6Z8tX9bio3ki/AodgnT9DjtdU9poh1rT?=
 =?us-ascii?Q?dtaNPE8moWlYqBDubTncljcFLIaH44REzOx+YnC5dBEwUHAlpYi8VfhvQdcp?=
 =?us-ascii?Q?vv9RiO8U4oPZXnSNgsKFZvAVTH30rS8fKPEEkBRbYx9qONZ+xDlFlREigEmI?=
 =?us-ascii?Q?tcx2wFBBNYjPcClLk9J6z216GhtETe5fNxqln46UrNh/5PKgy0qwpxy9o/kE?=
 =?us-ascii?Q?ugCOB0Re5qlo0w7AD8wI9dM6L6rKalubVQqn8RlGREJGDI0ciBcHw1ngLeeM?=
 =?us-ascii?Q?A2imTuH3fiLKIPJv5+pCv/y6egGTBx3WugDC2Lbkku5ZNPhFEAlZmomPoEqH?=
 =?us-ascii?Q?9DAPLOAEjVDH8W0THHA7ScA54G+9boTFLTMlKUrVgt0Exw8qg+06KsysZBFb?=
 =?us-ascii?Q?UsTea2VcQca/q0x7DZmnYsfUJAgykRw7OXJ7USzulA7YliHH83SQGA1JK1c4?=
 =?us-ascii?Q?Su4rSSoHUkSWdbqndcHdePYlWB5PJSuXjncTxVtImojdm+ZXfMQeHwgSwyIr?=
 =?us-ascii?Q?4SBB9FNWKidvDMeJpUebOamWIjbV7p4vqVbK8dHOt/J1eEhoIMBBDcvOre3D?=
 =?us-ascii?Q?wu44er7rIEKzN6gQK99ZgZ4ywrb+6mtNYrKYxxfuQ9xMxqH9rQQOPGtbe54m?=
 =?us-ascii?Q?XHRf/WYyQd1OUynL4LKwUF6Owr1kUYLT80qStes3q38xrQXbsqkvncOp5Q9M?=
 =?us-ascii?Q?Pn/FhFTsoqsCkivkTWF9CVOBiu5Mk3FRfWYGGmHG0++CeZ/CyhjIcsuVoqLD?=
 =?us-ascii?Q?AF3x73gp9uuUprdd39dErdzc1R11joPNqW71TedysBEu9Xw/uCDvFBMyKTxk?=
 =?us-ascii?Q?wgVaEFYZvt24hQHu+lHDRct2i8rry64sdsPK2etsbeqIG/i+WBrVXWNwkkPb?=
 =?us-ascii?Q?C50yE74c16dh3Vz8ZbBUPlmPEMAN4iKO/JAjmVk8PTGnt0vmSy4HUPgW7SuX?=
 =?us-ascii?Q?QcOX/x6rHHDM/c8Qczwk9IE+7oZ66TVIbpeQqC2jCOBwdlJ03naxGY3lp1qg?=
 =?us-ascii?Q?XJ7XcEjK+4JSroLKyBEDMuJ1BAf+fX22xWhR9CfX5bC22Bw/WC1w+1vyCFpR?=
 =?us-ascii?Q?kgPoT08X/g/qrq3+ON/6mR06OezE5qfD7Nv3/AYlEQUnh8mfX2vYL9fn75ur?=
 =?us-ascii?Q?vv7zGDwiuOyxve14vtfm4i69nlxP4Zjwz0MjQN8j/QHmxgtRUt3UILJtOy0X?=
 =?us-ascii?Q?yrn7cUN73wD0VJRdmVXbOg+dk0z2C/AwJRbwbRWKK1cOkqNlINT2v7cA7rr2?=
 =?us-ascii?Q?yxTBazx19LKu3ew2x8Fyn+iyQyHvu+59xpdzgup1ynAxeTU6wxwnO9EzKl+g?=
 =?us-ascii?Q?AgVoAREthLpjTLYdB16UAbTC3S77vdgjvFs5cCR9k2rlDdQlS/Myq4oisKPn?=
 =?us-ascii?Q?TuToV2gn6yULXkQg0cJAUwGCm45qPz9NFXiNvzcscUmV4rDXompbI9Netmnk?=
 =?us-ascii?Q?30GkzA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(82310400026)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	EAlTb0znv9BGbbPSU2ma2gL0/LheN5kO/D9zYd/PcB4a24iqtvteoPRx5UklWv+AFcJa1ivNIHf4iNkLcxLcItHosI6FZceMFp6HeffgM2T5kmXF2N8WyWfaLWRe23H64KxYLhfGvvIDvv3ck+sWw16FvR15xuJEvq4bU8vivFsZUW8vAWN0Lpw+zoZFOeOeKq5NGz0vzYpXctCyjU7jQI022cFHIfIKh+Ly/8lkBs/o6fLKqFGR4a+r1TxPJhB5qEtBvG4y2ZyajFpCzFZYLkxh1HQegs7i0OPpWtTLJBH3+QDqIYuF0DOD69pJFXnauIyzLtUtRph001Bc5XXT4eUW898blZBOfUgm7+REDJEEOqlC0tungvYcBRLBgNmt/tuyESM5kw0u6AFyzUEkcuvi857xaWIQ4RH2QtPgITNtzObRwMCeERFzGvsq5bPk
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2026 08:24:16.3527
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ef5e341-54cd-4735-d9e1-08de6ba2716a
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MWH0EPF000C618B.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB5994
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
	TAGGED_FROM(0.00)[bounces-265515-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p-bhagat@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:mid,ti.com:dkim,ti.com:url,ti.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.20:email,0.0.0.48:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 9494613B621
X-Rspamd-Action: no action

From: Vishnu Singh <v-singh1@ti.com>

Enable multi-channel audio record functionality for AM62D2-EVM with
PCM6240 ADC enablement, McASP2 interface, and corresponding pin
multiplexing.

Audio recording for AM62D2-EVM is managed by 2 PCM6240 ADC devices with
each supporting 4 channel audio input with selectable profiles for
different I2C addresses. These are connected through McASP2 and AXR14
serializer.

Tech Ref Manual-https://www.ti.com/lit/pdf/sprujd4
Schematics Link-https://www.ti.com/lit/zip/sprcal5

Signed-off-by: Vishnu Singh <v-singh1@ti.com>
Signed-off-by: Sen Wang <sen@ti.com>
Signed-off-by: Paresh Bhagat <p-bhagat@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62d2-evm.dts | 63 ++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts b/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts
index a5d5dc0a7bec..156fca927164 100644
--- a/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts
@@ -181,6 +181,29 @@ vddshv_sdio: regulator-6 {
 		bootph-all;
 	};
 
+	codec_audio: sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "AM62D2-EVM";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		simple-audio-card,dai-link@0 {
+			reg = <0>;
+			format = "dsp_a";
+			bitclock-master = <&master0>;
+			frame-master = <&master0>;
+
+			master0: cpu {
+				sound-dai = <&mcasp2>;
+				system-clock-direction-out;
+			};
+
+			codec {
+				sound-dai = <&pcm6240>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -337,6 +360,20 @@ AM62DX_IOPAD(0x0164, PIN_OUTPUT, 0) /* (Y19) RGMII2_TX_CTL */
 		bootph-all;
 	};
 
+	main_mcasp2_pins_default: main-mcasp2-default-pins {
+		pinctrl-single,pins = <
+			AM62DX_IOPAD(0x0078, PIN_INPUT, 3) /* (T21) GPMC0_AD15.MCASP2_ACLKR */
+			AM62DX_IOPAD(0x0070, PIN_INPUT, 3) /* (R21) GPMC0_AD13.MCASP2_ACLKX */
+			AM62DX_IOPAD(0x0074, PIN_INPUT, 3) /* (T20) GPMC0_AD14.MCASP2_AFSR */
+			AM62DX_IOPAD(0x006c, PIN_INPUT, 3) /* (T22) GPMC0_AD12.MCASP2_AFSX */
+			AM62DX_IOPAD(0x005c, PIN_INPUT, 3) /* (P22) GPMC0_AD8.MCASP2_AXR0 */
+			AM62DX_IOPAD(0x0060, PIN_INPUT, 3) /* (R19) GPMC0_AD9.MCASP2_AXR1 */
+			AM62DX_IOPAD(0x0068, PIN_INPUT, 3) /* (R22) GPMC0_AD11.MCASP2_AXR3 */
+			AM62DX_IOPAD(0x003c, PIN_INPUT, 3) /* (N21) GPMC0_AD0.MCASP2_AXR4 */
+			AM62DX_IOPAD(0x00a8, PIN_INPUT, 3) /* (M19) GPMC0_CSn0.MCASP2_AXR14 */
+		>;
+	};
+
 	main_gpio1_ioexp_intr_pins_default: main-gpio1-ioexp-intr-default-pins {
 		pinctrl-single,pins = <
 			AM62DX_IOPAD(0x01d4, PIN_INPUT, 7) /* (C15) UART0_RTSn.GPIO1_23 */
@@ -453,6 +490,12 @@ exp2: gpio@20 {
 				  "CPLD2_TDO", "ADDR1_IO_EXP",
 				  "SoC_I2C0_SCL", "SoC_I2C0_SDA";
 	};
+
+	pcm6240: adc@48 {
+		compatible = "ti,pcm6240";
+		reg = <0x48>, <0x49>;
+		#sound-dai-cells = <0>;
+	};
 };
 
 &main_i2c1 {
@@ -469,6 +512,26 @@ &main_i2c2 {
 	status = "okay";
 };
 
+&mcasp2 {
+	status = "okay";
+	#sound-dai-cells = <0>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mcasp2_pins_default>;
+
+	auxclk-fs-ratio = <2177>;
+	op-mode = <0>;          /* MCASP_IIS_MODE */
+	tdm-slots = <2>;
+	tdm-slots-rx = <8>;
+	ti,async-mode;
+	serial-dir = <
+	       0 0 0 0
+	       0 0 0 0
+	       0 0 0 0
+	       0 0 2 0
+	>;
+};
+
 &wkup_i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&wkup_i2c0_pins_default>;
-- 
2.34.1


