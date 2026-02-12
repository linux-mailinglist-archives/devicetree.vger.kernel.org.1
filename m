Return-Path: <devicetree+bounces-265182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EjTND4fjmnp/gAAu9opvQ
	(envelope-from <devicetree+bounces-265182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:43:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB5E13060F
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:43:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AA1D8304EA65
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:42:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F7F32DA75A;
	Thu, 12 Feb 2026 18:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="n3kWkEVE"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010068.outbound.protection.outlook.com [52.101.85.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC922C028B;
	Thu, 12 Feb 2026 18:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.68
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770921777; cv=fail; b=kCB5G71Wm/Wv+jf6uYCc/MHJHKJVDSO2N0pOMv+77uZmnBrl0Urjawz5gu5o+012ypxmkaWrXdu7oN79HU1bByQ5j/q+mX637P1vjFVLUNSFU2N6Rt2zBCgeI99vSCuJYv3Wxs0L1fo/oX8M1JkIUdXePUSxXOghKJsJ3oTCTOQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770921777; c=relaxed/simple;
	bh=4si/WTcK45HVbpxW4Tlgr7J5QFu2BO1zFPi2vDtjSOk=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GDkIfC/u8c9xtLUINqDoQncUhT7EOS2wrwkeSmy7Y4x7kTo1sPT4DlPfibV8b5INtp9BBoIBVrkhTDh8dAIl0+oZaDVCs475vORf6qdMcMRDBbf6mhP+XSrqzwLZ5Plwlxlmw0ONo17eUeZi4u4SXwC+97IefSaR8Y+p+kXc+bM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=n3kWkEVE; arc=fail smtp.client-ip=52.101.85.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ByZne+GxIyYBAs6iqh7semh8Y1yd0rIQqp2RoVlQzXyXUCkKH13Z9sFIFEJJuuD/xp29Vo7fhkzdMKkFJNvJ5OYd7zwVq8XOEaMDiWgiHqkleKL40h6PBMCYkFjUUfojfaWRNeADI7XKEoVHWMp5QFWOYWzW9VMa7eDL+vifhAn1DTO3ZB9ZxNLia4TeCFBwLp6qtUQZQd/vtg4utxP2AG5CXLiN058i8NBdluRgrH41EFwj9eXhaKDNAoGK+xO6H75cvIsr1J8bURedj4oV4kPU8AokU7k3dDkdutWtKOAmL4bDKMN4/7gHK8JPUOZ0T0LL8zcNbYMWk5lOLlUGmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SB5/ELV6yY6ftguJPNKL6+NbN7mrEO1sOuaYvPJAO3M=;
 b=u7jQ8tLF76BLE2zeRM9y5J0N9N0jV42opRKGGUNv+qFNuwlN0sec5ZWJAAlxFa8/QgSbpPY0JZcbcZ8nZDELRfScB0KPOYvLGRDDeQ5E1W3V6CftKPkih+2nzOlNwjBEuWGBhF2EwzNR9+vKRpjeKU+KYroqtr40UDIW3yymMLm02rfhvcLuX45svb8PA19w7CcejtXmyTyDAMK684aN8v/hM0VLzEWuQzsr91eaNylLbg3RkD9NsCqTfo5Ctd7iv53NCN4x6ZQhB7JeI/h60bVSeeO9xIXlAFPSOCrvD1qDJwLF/chq29hAOGOjOn0Qbs78wnML2ECeBBg+Q+Efnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SB5/ELV6yY6ftguJPNKL6+NbN7mrEO1sOuaYvPJAO3M=;
 b=n3kWkEVEQedt8SZ7Ko+OxY1HX9Og7/r/o3a7gJsi2WHY6WlYTWeIp3UjyZyqqb9Lgw6B1nOwzHPy+vpPFejFxLnOOwUHMh5xelJ6W7u7JRMVItDbWXBPaHPECHHpiAsRgweZfWAvlDXYc/HXW+fz2QQ/AQUhab0aDjoJLTOInRI=
Received: from BL1PR13CA0436.namprd13.prod.outlook.com (2603:10b6:208:2c3::21)
 by LV3PR10MB7981.namprd10.prod.outlook.com (2603:10b6:408:21e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.11; Thu, 12 Feb
 2026 18:42:54 +0000
Received: from BL02EPF0001A103.namprd05.prod.outlook.com
 (2603:10b6:208:2c3:cafe::45) by BL1PR13CA0436.outlook.office365.com
 (2603:10b6:208:2c3::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.12 via Frontend Transport; Thu,
 12 Feb 2026 18:42:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BL02EPF0001A103.mail.protection.outlook.com (10.167.241.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Thu, 12 Feb 2026 18:42:52 +0000
Received: from DLEE201.ent.ti.com (157.170.170.76) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 12:42:46 -0600
Received: from DLEE205.ent.ti.com (157.170.170.85) by DLEE201.ent.ti.com
 (157.170.170.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 12:42:46 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE205.ent.ti.com
 (157.170.170.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 12 Feb 2026 12:42:46 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61CIgku44002204;
	Thu, 12 Feb 2026 12:42:46 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Moteen Shah <m-shah@ti.com>, Andrew Davis
	<afd@ti.com>
Subject: [PATCH 2/4] arm64: dts: ti: k3-am62l-evm: Disable MMC0 internal pulls
Date: Thu, 12 Feb 2026 12:42:44 -0600
Message-ID: <20260212184246.2316659-3-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: BL02EPF0001A103:EE_|LV3PR10MB7981:EE_
X-MS-Office365-Filtering-Correlation-Id: 4697dc4e-bf35-46f0-6f66-08de6a66873f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?aGs4lQ8b1pM/Uz8pINEVe6DzfYdUIBd2YOHTWaIvglAoZWircvjYKssGWyPr?=
 =?us-ascii?Q?zuJV602iDjNNCgSztKXwNru2usQZxESBxtMqJFv8THvp+DX2q0RDBy2KX/Fn?=
 =?us-ascii?Q?D+SLorcj/xRMGpJvY8gt2rj7rmrSNOUxZsL9XFn2iQIIfWHmADMQ+4cBYCoU?=
 =?us-ascii?Q?Av9+Uu/27LLNne4TB0lw6Z7dV4Jo628Gg4DYZf95COF6GpBw/6WU4KXhukLK?=
 =?us-ascii?Q?U4DhNEDQfWkNSDmcU+g/K/OmGxT0k+pfnqgghBOSPl3siAvzNYQjaKdLoZ/X?=
 =?us-ascii?Q?44He8E7ZfdeR8bFpWlcf65KjNK2E/HvQ4ZYN4dJXMFhygl6KFZLuCATgCR3o?=
 =?us-ascii?Q?aCcq9u1vQRXk5/uA9zCGsIOI56o6W9qPk5XO/IT62SUNN+ZaS+NVsthwzOLF?=
 =?us-ascii?Q?73JgUmNGjAhXbBSw1UhQ32onKzFhPa4FWz/vkcxZsXuhzoIFD76iv7L0UwV3?=
 =?us-ascii?Q?hlAx5FUOLieqJZ/QMV36LZJJvhDonHjm5l/1Ul3h9rXlxclcd4v2Zj8qHkTH?=
 =?us-ascii?Q?Ddf2jsVNjB/WevnyRnaBBrolmQ97nhSKaH41sMU0kWqxyryAn9KBVAzs2p2n?=
 =?us-ascii?Q?AHHfoy8A7frMblMPFRr6y7YcWBCBAlzg6JnNIiDKb5Hz8BVKindnmlrn1gES?=
 =?us-ascii?Q?efZqDh9uA3sSZCEaVc+ToC2i/tlnTNUha6AohIOD4IkIVTGBBQ1DDD+bBlvn?=
 =?us-ascii?Q?gx9Atxek2wisijH9ZP2eD5ocLT7BXDDOLiuRdM995yxGcHY2qtToargx0XRi?=
 =?us-ascii?Q?JNnhBu/dWCx49gyltF0Ah2uJUKcmQ9MT2UW6Kgj4YtAw4TQUMCFbOQeD+daI?=
 =?us-ascii?Q?9CxIryjJNtSk5WZz0b568dw1HfU7hMIHcjo6IdI11tYYQFpDGFysEqTvYfdK?=
 =?us-ascii?Q?KsLBUDZjdLPyoOsfco+Yueh+AfFWOPYcASkCIg1sRGOBmY5YHNszwPcPOXeY?=
 =?us-ascii?Q?RxMUDFXiJnhFlh1467oIZ8UuIoYh9pZmv8kM098Z/ndUTPUESU4Qe/u7lFdm?=
 =?us-ascii?Q?OwbpLlM0fRp1Ca5zbSptX8F8bzZU9geu2Z/FAX7oL4MSWcwq9qkKeyq47z6S?=
 =?us-ascii?Q?pLPqVTFLuNAHS4RKzUPkDllxOtDGUnzCmyksWhKN1+rxg6J+ksqIaj49fx9G?=
 =?us-ascii?Q?ccTn6al5DY/XVNW89LZ5n9TXjxXp/1zz5hX/lJ0U7eTfojwY+rhJJSATmSGm?=
 =?us-ascii?Q?9mWm0Cts4SjXOQKVh6YbI4ebvaeDGu0a5DDmMuB7RzdGC1S27SXBvBTUR66V?=
 =?us-ascii?Q?jzYShBPDArYT9Hg7NKLFJsC9+ASICCg8vwmNVGMQGPF8Wj6rzzYhb57v+pkm?=
 =?us-ascii?Q?j7sh9yVpxSD0jLmdCYvZot0MNxusfQ8xvzEY/jLynElXN/HsxFV7Zr3Oc59V?=
 =?us-ascii?Q?kL+JrKgNh9g2dNxo5M0J9Kiis/gfqq/6RZ55PU2dy/YvQ9qc39MJjQiDwJd0?=
 =?us-ascii?Q?dJOXZJFmSEkdQmGXLjqScRPUxO5/+Up7ZrNheyoC4yf5amQXRXOhJPzb+Vyx?=
 =?us-ascii?Q?bUqwPOf+ub+tHdOqYPef1VOLjBMV+wIdVaCo6fOjcXKqJptVd1Z/5JWJNuVC?=
 =?us-ascii?Q?72wp+P9Yb9/PwaeDF0rIOYN3CuLM4nIy0XnLJuTSYCMPp3hZStWcnLtbG12o?=
 =?us-ascii?Q?HkJSwbbKLaxINTfbjQxitfmeInKBbhi+3RhxQDuM2CQNmlEKDPvxoPJYBMmb?=
 =?us-ascii?Q?LSwTjA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	4klzzHw/sUO9nwu7hwzFpg/RtU60s6d07lXpYaa5FBRCYuuc7Bbdtcp2rF1UlfuLl74GmtnRJekSh4nt3LnEPHA0Qpz70x1vp2UxBUZD9JMMFLrGAuGeTBv0aGDZbaia3Q1AMZcd0/wB8gvzHbx3rtzF2oFhQjY8jakKQPoWl9GQYmFMkg6Ab3r9ExH3bPTfGTuK2y1E2UYnFfvgE0EHpQLUPWU5VpYB8Ai5+g19w7x9RY60ItrBbWVF/AUlKRS5c3b9sXYlXkOjCxNEV6T8qX4yXi4538yaR7xbsO7srJMUOGnwW+L4AUhIWDuNXOXSwqRVcEOrA4jtdtaJyoYlGHGNuVDi6wcLfSQbvojGTlsWEuq4JPMCnoRGYpCcs/8jz8objucnynkwzN0pS6K5pmBj64RrzOuKw2CLAdXtLclcZqpB222nWund9ypPZA9z
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 18:42:52.0312
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4697dc4e-bf35-46f0-6f66-08de6a66873f
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A103.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB7981
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-265182-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ti.com:mid,ti.com:dkim,ti.com:url,ti.com:email];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 8AB5E13060F
X-Rspamd-Action: no action

AM62L EVM has external pullups on MMC0 CMD and D0 pins [0]. Remove
internal pullups considering:
- having both internal and external pullups reduces the total pull-up
  resistance < 47K resulting in a value below the spec recommended 50K ohms
- having both pullups results in unnecessary power consumption

Fixes: 00fb4c73b67d ("arm64: dts: ti: k3-am62l: add initial reference board file")
[0] https://www.ti.com/lit/zip/SPRCAL6
Signed-off-by: Judith Mendez <jm@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
index cae04cce33736..5085cd255fcd5 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
@@ -253,9 +253,9 @@ AM62LX_IOPAD(0x01e0, PIN_INPUT_PULLUP, 0) /* (D8) I2C2_SDA */
 
 	mmc0_pins_default: mmc0-default-pins {
 		pinctrl-single,pins = <
-			AM62LX_IOPAD(0x0214, PIN_INPUT_PULLUP, 0) /* (D2) MMC0_CMD */
+			AM62LX_IOPAD(0x0214, PIN_INPUT, 0) /* (D2) MMC0_CMD */
 			AM62LX_IOPAD(0x020c, PIN_OUTPUT, 0) /* (B2) MMC0_CLK */
-			AM62LX_IOPAD(0x0208, PIN_INPUT_PULLUP, 0) /* (D3) MMC0_DAT0 */
+			AM62LX_IOPAD(0x0208, PIN_INPUT, 0) /* (D3) MMC0_DAT0 */
 			AM62LX_IOPAD(0x0204, PIN_INPUT_PULLUP, 0) /* (D4) MMC0_DAT1 */
 			AM62LX_IOPAD(0x0200, PIN_INPUT_PULLUP, 0) /* (C1) MMC0_DAT2 */
 			AM62LX_IOPAD(0x01fc, PIN_INPUT_PULLUP, 0) /* (C2) MMC0_DAT3 */
-- 
2.52.0


