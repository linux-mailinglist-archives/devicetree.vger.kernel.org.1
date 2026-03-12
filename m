Return-Path: <devicetree+bounces-274511-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIGTGIOMsmkQNgAAu9opvQ
	(envelope-from <devicetree+bounces-274511-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:50:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C21B726FE14
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:50:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 41D2330F0FFD
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5523BC674;
	Thu, 12 Mar 2026 09:49:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023075.outbound.protection.outlook.com [40.107.44.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4123BB9E8;
	Thu, 12 Mar 2026 09:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.75
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773308977; cv=fail; b=JnHpIjVcEvJTD3pr0OsMnA1OLk0VlyfSZWm6wIt92upQKiEbTuP7ZkeX+OC+tKLec0trz4vDd0PpKfUvdQwpjuNzGwjXicTyyWVHA1AmvHdPTUa/+oUyzwpE2uFA+HR2dZzJiHxaaQAdIk1F4uKqZjJi2IGFZvk6TkCzEtKr3uk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773308977; c=relaxed/simple;
	bh=xc5/UgaQ9u5wXwuaSd8mULAKuzSyQBTHdJMeBxCfHaY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=HvvqwBj2OY0E0VTvcw5i1h88o7lm7M3/ikHIKyRVRJaxItCQxukFqO7KrFdMloVHYvKabudz87znHGpGRxC4cc0S+Ng9a+IVrSYLuQnTF7m1sejWNxpm6Zb6Vca+e1LOC8SUz7w0McjLXoQrCZpVwMP58XRrdMDbFpQlNb9wFQc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ODzNC5oUny3oWMwPsbvD9fRy/oywTC07XslD0Yw3jSrPLdBlM2gpPi5DBRguPS1Aqnk0ajaHOYhO48S3GXmvMytEA7rdbyILMvcyPy7Hiv2hWXkK1Tz3Z8X2WDI1u4YBPB2hE2Cy9s61F/ENjCr/4phyuiN5ARyhwbOsMP2ckA08Jle2TuJEZn5pUQOoFxAKRyR5m2D0xQu+tp7lMlnb+IaLs+8HPby5X394a79GBdfnNtsekcBjM6R8jlHMlzEaqaG7m/6wW4h/j2uuBaIIEcJlnlmsLtsQ2PPnqCaX/KdhlTv6om6T8BPVT8uQo+IhyjvCV8xaYEvyg4EwQhvNrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XjdH+oxcKZ7uD5+IfaMe6vghxLubFU+aHN7w3fOfXL4=;
 b=pZAFUogEte0XGRLbeMFLUrhQ7WXamGae6y0WMpk7gZ0jgPOFlhEDzUU2BGHwWelT5h3CakYcKg7jt0dEISXha5su1GljzX7vvF0gH8dr5izEMsDVYu5yDdTdJ5ZkYzj9+2qHjmFwjzuBqgdp3XedNDTu18Gh6ltHkYnI2mzAY101uRYJQLlxGjsuhkz43iT7Ue56aBvHJg0BK90G2OkPSyL8VbvexyQTx8r6ux+vdg6qVii5j9BtwHu+7XqC02WZG6+vyEAG+ux+lfnX0y0LSUi7VdHI2bEa6ih9HUTzGLvVR37mF2zOIgpKwsx8b77GI8sd8P5Hx6eOM4XlpRdjDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SGBP274CA0013.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::25) by
 TYZPR06MB6238.apcprd06.prod.outlook.com (2603:1096:400:33f::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.15; Thu, 12 Mar 2026 09:49:25 +0000
Received: from SG2PEPF000B66D0.apcprd03.prod.outlook.com
 (2603:1096:4:b0:cafe::84) by SGBP274CA0013.outlook.office365.com
 (2603:1096:4:b0::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.27 via Frontend Transport; Thu,
 12 Mar 2026 09:49:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66D0.mail.protection.outlook.com (10.167.240.26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Thu, 12 Mar 2026 09:49:24 +0000
Received: from ZicharPC.. (unknown [172.16.64.205])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id AE2E541604E0;
	Thu, 12 Mar 2026 17:49:23 +0800 (CST)
From: Zichar Zhang <zichar.zhang@cixtech.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	peter.chen@cixtech.com,
	fugang.duan@cixtech.com
Cc: linusw@kernel.org,
	cix-kernel-upstream@cixtech.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Zichar Zhang <zichar.zhang@cixtech.com>
Subject: [PATCH v2 0/1] arm64: dts: cix: add FCH(S0)/S5 GPIO controllers for sky1
Date: Thu, 12 Mar 2026 17:49:22 +0800
Message-Id: <20260312094923.3473444-1-zichar.zhang@cixtech.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66D0:EE_|TYZPR06MB6238:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: b12acf85-e22f-448f-5d13-08de801ca4b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700016|376014|1800799024|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	mHmh3ySyDP64aYDJ8B2990JruFyrpCzHvzXCQwf3TvzQpyWyis5Rcn1DOmCElxFD/5Z0hEuKeUO5gBM1Z0573Tr8kENmKfYstVO9TlUy/PCU+l+9SKgRfn+B77oZZJo+Z4/t1lPN1wOBe2nOnLssCK56h3ktvgr1PDKgO1demKvmfdFTJ8RjoyyL4aF8jn+OPpmrI+ZDSAzNO5RFnhIIgR19UtKrt7/yH56DE2ja/D7qsNxzKVyVP8zLOKJFqIMw/lR3ixBbS++loS0cb8oVz60AYeGQlwl5ACDHcMTw8OFXJyDPZ09WNSBAJS0Wf5bY1dAafAhqbHX1NhoxvPKLqCZPR4jIX0W5r0LYmyoBpji/+7C2W5I3O9IVnpNckCwo9xwwz06OIAbRM0QQOUZOHj/54oCozNqHZd6E2uymIUheOjTNrNZ7lgi/gynniTswj5g1PZsFbtT2K/5aa3FipclRSBX2ZSX1Lca27JD0u0V2O9K2L8uE6NlcaTi+H00pV4/lozJVRFcAHFdHlhxxbgIIHYiAHpes6nmMjROlWn+ZQTB783IkQxTnCCncyrWSKeosg7n+J1C2ULvoAdHxJPdJCNq09xp8x3qww/mX/uDR/8Flg9ipiDO8TJ9YItGnEe5uJaU64FiB7XYK6Wki0tCF4WTGuBi6xwHm9v1nuMDKAgUEmGypyi9aQSDGcNwwzd2dPth8lQSwkr5w9K1yMISHG5xWIwEPFSTYZo1WS6U=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(376014)(1800799024)(18002099003)(56012099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	CnOyScdW/gmLmoi3MM+Leao0op8a03La9c8snHV0wjwH7qUKGa1yxqAxufzv5EYNjrIHSWzkdM+xo3QDICIhdDb4BVc5u8+rVGYRr0f6npAmJCrAYsdO/mk/M/icnEEIqDMLyVwwwhw2lksCLj1L0sOFkFNeN+GiX/Qv63THNcE0JkAzYIjviKayiV4yLiLiOl3MYBsM1gv33jzl0RQNIkjTI1Edhv9N0TKZr4ZmmJIMGEzvz8pOonM0b6GfxNcVgv2wVej1rnc1Pt5t+2N9IpmEtRAjZQl9akvfou/LWBEpXLD8jKQ+d5rVXk7oF0xJRJRrTt3bR8jHF+nXsuhBaKOhWVTbn+SgbIRmqDLap7BAT1owKv+nX6erKHgNHxdJgsr91Joe3cFXi7mgisrkFvzoP4LQcw5qmTmFvmsTGdGtknA3VMWxADoUu1EnA14L
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 09:49:24.2565
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b12acf85-e22f-448f-5d13-08de801ca4b9
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SG2PEPF000B66D0.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB6238
X-Spamd-Result: default: False [2.04 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7];
	TAGGED_FROM(0.00)[bounces-274511-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zichar.zhang@cixtech.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[cixtech.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.803];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,cixtech.com:mid]
X-Rspamd-Queue-Id: C21B726FE14
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds Cadence GPIO controller nodes for the Sky1 FCH(S0) and
S5 domains in sky1.dtsi, and enables the corresponding controllers on
sky1-orion-o6.dts.

Changes in v2:
- reorder fch_gpioX and s5_gpioX nodes alphabetically
- rename fixed-clock node to clock-100000000
- remove unnecessary clock-names property from GPIO controllers
- drop unnecessary YAML binding changes

Link: https://lore.kernel.org/linux-arm-kernel/20260306093238.2715269-1-zichar.zhang@cixtech.com/

Zichar Zhang (1):
  arm64: dts: cix: add FCH(S0)/S5 GPIO controllers for sky1

 arch/arm64/boot/dts/cix/sky1-orion-o6.dts |  28 +++++
 arch/arm64/boot/dts/cix/sky1.dtsi         | 119 ++++++++++++++++++++++
 2 files changed, 147 insertions(+)

-- 
2.34.1


