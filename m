Return-Path: <devicetree+bounces-262282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAWvKTUGgmn3OAMAu9opvQ
	(envelope-from <devicetree+bounces-262282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:29:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A22ADA983
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:29:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAA39315C285
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 231F83A9605;
	Tue,  3 Feb 2026 14:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=leica-geosystems.com header.i=@leica-geosystems.com header.b="G7/tU0hZ"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013066.outbound.protection.outlook.com [52.101.83.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125FB3A9604;
	Tue,  3 Feb 2026 14:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770128555; cv=fail; b=m7X1NezO75rIQn9dAf8Pu0/nZZWE8gdX6dv5g+qjVC3ECzyEj1c6HZ3imHEF7HuhbpH0KqrgbkrV/hIYcPULsqOO7px6BoMGS16xSGrVa+UrnnUz0YsxKedd2VjVGbifeWXer8oBND0YoiQoPd43oiYnaTuCHRharjNpP20oB8Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770128555; c=relaxed/simple;
	bh=N1v2GBSt8BLzpJR8faLcIKqXg3jOc9pHxqIFJoEvNoA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ccOWkU40rR/2cwbJT84uILPMdSCN6Nva6sly63CyLiWMBGkmN94KxpsolWATr4fxkKHrI5pL9f3cxsRgCzQt58qO9P5NteiEuVsC+PH4fx0BQD0U3DFQo73fTbRlUNoHIK+pUGtkTZlLzDtqxhBBKrSMg3mV8PooLTA6jU2f++8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=leica-geosystems.com; spf=fail smtp.mailfrom=leica-geosystems.com; dkim=pass (1024-bit key) header.d=leica-geosystems.com header.i=@leica-geosystems.com header.b=G7/tU0hZ; arc=fail smtp.client-ip=52.101.83.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=leica-geosystems.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=leica-geosystems.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Iqcd2n1Ou/20b6qBEdjljzLcwSnnOdQnSU0wZgaGCmOkX+MN9JmTLKwbVKqDeuaxj8s7Fmg5KFlbC8Th8K6fxIdcrOQMQGV1r7bdFYMaMPNJrtEyskn/I3lOXqwosgnxRjgsn16OKkqecwjfc+ZcDzeBAlbrKQ6YYAG6Zpy+lPo4/mh9ttJJKZ/hhCpmRKu378PJpYU9eIfZ9fNzhUzKlVAkEg8ej/FUoWUmGMKKX/WFT8o/iqX8fI4rWV6KHlLTAgMcnHP30SbiIGgVKemGprBJy7GRSUcYudkQ0sMnhpYhBM5wLT5+RVV0IUYi9N599iqr9GT5i7pwv4k3UOBZdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8LAyPmO+VzQkVLEDy1YMMHHGNzE7ifB/R8XYQ60wPvQ=;
 b=GKkfXzvKKsXXROKHOUih0yEdWvvK/uoPBUb3xFJxzREptg847ZfAv/JK420zs+fdPB7OjXAxLFKqOFSFnUJDJcfXDuQhr3147O89Ys38cIuIl6TUOLGrvQWG9eE+BsEJ4lnfDxl5bYOylmm803AMSMsbYt11tObo5ghT16HYJ4m66/LrDvu5+ztNewcrdUtVnapjQvrdcleG79UtjQAzkSI0jhh9jXN5gwzeZM3vNf5rgrHNhG5CZnowIWAtqN0RVYUcE11CmXmWBYVd4hA2XLbv38hD7nqvPtsyHHnu748dPS07QKQLmHqfF7wxHcngOYhQL0ulEUu/fuYb11/sEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8LAyPmO+VzQkVLEDy1YMMHHGNzE7ifB/R8XYQ60wPvQ=;
 b=G7/tU0hZIbZdsdHKlp9uLUS0vuaHY3ElTYZTquiHR71VFPZqbuorzqiaAPUswNzSuoKzMJTqzJ3sBSa1uqkaB/Bz1pcPwZHxAJTWuZjRGicfCXIBdtr7o/FKlzVkIhatiZI90MwF6wVD6XlkH23G51SV1XR0CwGDU9FN+9IFwAY=
Received: from CWLP123CA0186.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:19b::15)
 by PA2PR06MB9221.eurprd06.prod.outlook.com (2603:10a6:102:401::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 14:22:28 +0000
Received: from AM4PEPF00027A5F.eurprd04.prod.outlook.com
 (2603:10a6:400:19b:cafe::3e) by CWLP123CA0186.outlook.office365.com
 (2603:10a6:400:19b::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.12 via Frontend Transport; Tue,
 3 Feb 2026 14:22:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AM4PEPF00027A5F.mail.protection.outlook.com (10.167.16.74) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Tue, 3 Feb 2026 14:22:27 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 3 Feb 2026 15:22:27 +0100
From: Mario Peter <mario.peter@leica-geosystems.com>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Mario Peter <mario.peter@leica-geosystems.com>
Subject: [PATCH v1] arm64: dts: freescale: imx8mm-evk: share usdhc3 setup
Date: Tue,  3 Feb 2026 14:21:58 +0000
Message-ID: <20260203142158.3929433-1-mario.peter@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 03 Feb 2026 14:22:27.0767 (UTC) FILETIME=[86355C70:01DC9518]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM4PEPF00027A5F:EE_|PA2PR06MB9221:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 9abce9e7-cad2-4c0e-059f-08de632fa8ff
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?y0jSjcTT2MUe6x/9ETUuMvF8JhFc3slQIqGGECrhEf2yiT7SenWmMwijbjau?=
 =?us-ascii?Q?TmBQbsG4FFg4tyEZqkt1opgrK0cXHzOdj2ydfpvbofmpyImLaq2FhEB2Z0b9?=
 =?us-ascii?Q?fLEaqJQEa1DnICR+zqdwosaCFPQAOXjt8FVqbtRknRYFPTohAWakqGySjTpL?=
 =?us-ascii?Q?vLxccJ1Xnib+Abn6ntIk7uhZQKZbaDTihgON5In6hVawDXPGoDIl1yCl2U+T?=
 =?us-ascii?Q?Y5J+JCQy5/afW326hkJGtQ8bBPuGcVP9wuk7YwV5cAXDfr8t1X5RwEEKWwXz?=
 =?us-ascii?Q?+b14CR8SjuoNHOb/8TWLCvHY8jPJ3eZF6rqXTBkXHRtw2Xtg1oFK+XphgdXF?=
 =?us-ascii?Q?N5/hcYc/nGwtqRpdQ66sh98k9cE+QBuVk5pmWjoSUZ2QlodZxurpjmQbHQ5+?=
 =?us-ascii?Q?z38lv+cCDvHPSYN8yF1oVXvChGADJnyOWuH/JJGGR8iKAZTsZ+vrlXtGfqXT?=
 =?us-ascii?Q?0PKqclbMLW1mVoztlYkCyT+M9E+WzJJhlJDQR4EM+hrg2fpTiPrb8UdakJLn?=
 =?us-ascii?Q?H+bPsN7xHFEuhoaCq9yjwKpHwCxAFNpkB9Fq6pX9OJVJ5u1zq0GrNr/SMllJ?=
 =?us-ascii?Q?cTC2uE59bix4KRu9sr7fc4bAomGOu27bfGg9qQXvO4kiN6I3i4sTVV837xRn?=
 =?us-ascii?Q?h33iR9d4yOzaWNGj/vUelwiFgf/a44Z19TkGr9z4xv3mxz8A9bVXdFbW4bLa?=
 =?us-ascii?Q?PZgDi0bfW+4VA5Fw3LWPsuNPSUnRVELZQ0QJntb/Khu/66ro+veoAPMcfoYi?=
 =?us-ascii?Q?Pe2vCFJTZ64xAEt6Yqmd4R9y23qlg2A5KGFO2smHf5OT1MVZEVg+OiA1gH22?=
 =?us-ascii?Q?pCHQiDzWAx/7vp58J9byGE33OoVKaWgmSGTXRGLD/zB3ym/rMtsbQEFUmI5k?=
 =?us-ascii?Q?ZlZqlF3xfhbRTUB7bJcIbtysT2zmKyD9VrHtBrfDmUBjL8hYLv4PdM0uymKN?=
 =?us-ascii?Q?zAPX3WZ85jrxJn9fCHB0bRd/intsJKC6ftc8dcNqz3JZtBNTjV9db+s/EdaT?=
 =?us-ascii?Q?EDC3n8f788DQXLr9k0LXjm5X2CCn+uMqL1OJkOF6n8yzl3dMzzPwqAoZcQ/K?=
 =?us-ascii?Q?r0mcyGYGDKSlyCvAxZhtScigosfd+RkUjUhxb/T87uJBxS6opd4rJU3dGXIW?=
 =?us-ascii?Q?LtDms5N2KCirt4UioNyB1xaSvOVI61+DUppvUFaIWvLwIMYOFpdbM0pAHthy?=
 =?us-ascii?Q?WiVuSRGtbRye4HUYBsBEPjXluPBdf+CfZJqmWGw5dBDKpm02/fQNTarn9SHx?=
 =?us-ascii?Q?T5xwHm8IO4IYXke1jR6QD0CnVyq9cH6okhgPkn9Ux9kYZs8KLq3QmrUVDLqi?=
 =?us-ascii?Q?m1ERt8hA8IzgY21m7GUd1MneJLwzZBJzHYHq4SxzOGdIQZxVYfOfkrKuFkya?=
 =?us-ascii?Q?UilHNzjXPvl/uruitrooRjxaj0nLsdyfYvQaasW3whHDA9/SLa9f1gXuu5g/?=
 =?us-ascii?Q?hnah4yE4EdGHdNOgfSCe0LZqLCcz7XGr3MDtfAvpQPVtisMmT5XLo5/e2pOK?=
 =?us-ascii?Q?WDqNjpNIyTFnj5+zn17unmW57QU+w5+GgBGbVdMjQhY4kufMvGTmIvEkOCls?=
 =?us-ascii?Q?bQMzuwzLQR0ZTatEXH38yAOmbVwbo92gmkXJSDXHQtYDMJBVw/seJTAjv5Na?=
 =?us-ascii?Q?G/mpdkE6tqgXH5DHZWUCBbC0i/6cAebzyT+6dDcy7F4Gw7cZoJGRosyMdY0v?=
 =?us-ascii?Q?eQb7Qg=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	bswzmUOE3lY5yCe6rEgUF1lVng2PCdU6GiuqRgSO0CkJ+xgiTnWDip7V/Hb6urW6gxmT1pKpLTkvDamHp4U3Qc56GjG1nkUogcVBSgM615C9iCXsc6IUhjn6SZfFZLqyN41WMYpe7X5KYLmGquOMw4FWFghs+2HRBkxRgORafhyvBtvt7XPF1nGoWK9uhgu92+pt+0qhoGkJDs9S4haYUFD8WS7E4o0Wx+9OYqaM7wsDvHrehxm2BGHjhk6jIbZWr6QrEcsfGfDjxEg0qFT4ar5pQDy0lnSZN3AEAIe/7qhYzoWHbiUFito+diAI1KmH4yfYX9+mHBpPNOX5/MNa9zoEwqOJheQ7oADcIT1PQ9xhaCkIbzN+XPyBnHH4YvEGYuuz0/kAMI27I9Q/JbeHXV72Wjm4J2RsuZ1kogLIwTTrhi5/9pzIMT0htao25zMs
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 14:22:27.9711
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9abce9e7-cad2-4c0e-059f-08de632fa8ff
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM4PEPF00027A5F.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR06MB9221
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[leica-geosystems.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,leica-geosystems.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262282-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[leica-geosystems.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mario.peter@leica-geosystems.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,leica-geosystems.com:email,leica-geosystems.com:dkim,leica-geosystems.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2A22ADA983
X-Rspamd-Action: no action

The eMMC controller on EVK and EVKB uses the same usdhc3
configuration and pinmux. Move the common node and pinctrl groups
into imx8mm-evk.dtsi so both boards inherit the shared setup and
avoid duplication in the board DTS files.

Signed-off-by: Mario Peter <mario.peter@leica-geosystems.com>
---
v1: submitted

 arch/arm64/boot/dts/freescale/imx8mm-evk.dts  | 61 -------------------
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 61 +++++++++++++++++++
 2 files changed, 61 insertions(+), 61 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index b68954bcc383..002ebdeeb2d6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -53,18 +53,6 @@ flash@0 {
 	};
 };
 
-&usdhc3 {
-	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
-	assigned-clock-rates = <400000000>;
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc3>;
-	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
-	bus-width = <8>;
-	non-removable;
-	status = "okay";
-};
-
 &iomuxc {
 	pinctrl_flexspi: flexspigrp {
 		fsl,pins = <
@@ -76,53 +64,4 @@ MX8MM_IOMUXC_NAND_DATA02_QSPI_A_DATA2           0x82
 			MX8MM_IOMUXC_NAND_DATA03_QSPI_A_DATA3           0x82
 		>;
 	};
-
-	pinctrl_usdhc3: usdhc3grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x190
-			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d0
-			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d0
-			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d0
-			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
-			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
-			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d0
-			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d0
-			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d0
-			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d0
-			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d0
-			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x190
-		>;
-	};
-
-	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
-		fsl,pins = <
-			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x194
-			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d4
-			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d4
-			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d4
-			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d4
-			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d4
-			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d4
-			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d4
-			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d4
-			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d4
-			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x194
-		>;
-	};
-
-	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
-		fsl,pins = <
-			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x196
-			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d6
-			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d6
-			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d6
-			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d6
-			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d6
-			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d6
-			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d6
-			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d6
-			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d6
-			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x196
-		>;
-	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 6eab8a6001db..6e53828b5d30 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -649,6 +649,18 @@ &usdhc2 {
 	status = "okay";
 };
 
+&usdhc3 {
+	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
 &wdog1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_wdog>;
@@ -839,6 +851,55 @@ MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
 		>;
 	};
 
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x190
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d0
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d0
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d0
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d0
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d0
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d0
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d0
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d0
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x194
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d4
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d4
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d4
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d4
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d4
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d4
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d4
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d4
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d4
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x196
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d6
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d6
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d6
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d6
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d6
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d6
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d6
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d6
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d6
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x196
+		>;
+	};
+
 	pinctrl_wdog: wdoggrp {
 		fsl,pins = <
 			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0x166
-- 
2.43.0


