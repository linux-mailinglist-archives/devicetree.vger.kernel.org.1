Return-Path: <devicetree+bounces-263914-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qInUIQSqiWnfAQUAu9opvQ
	(envelope-from <devicetree+bounces-263914-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:33:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A4A10D988
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:33:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3C5D93001FBB
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 09:33:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 379DB342C92;
	Mon,  9 Feb 2026 09:33:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022095.outbound.protection.outlook.com [52.101.126.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF353033F4;
	Mon,  9 Feb 2026 09:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770629630; cv=fail; b=lZYMMabhoNb2xYaRutnmLNi4H4HrnTXbiQrSbOpYJXh1hkIsHsbKmBzE32pLY0momDYyCQNBX3bOGLg6Xg5mPZw09jMEdocEmcbsMAJ9dc3WHalDzjCiXw36WMtLWH1nteptZiwaHqj9PPJBPWPLd33bCCpEHknE9PM+1Zm6y7A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770629630; c=relaxed/simple;
	bh=C6bMB+xM+ApkZMBis2n/5YYPYPYu5KZl/Dkt8CCYLWU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ESZhia7RXnLyFZGMhKESwX5/R8FKQtbb1pDOJErpjyuT/vQMm47DRH22kQxkRRfGUSGfZyYeNgPuH2DC5hPmqt5QPNpvdi6NdcJ5SIqiw+hzJ5AbB+OirELbxAjDrA/b5Sh3l6dGCvOszTXRlvDsQ3l6IpZRd5Wq/s4+Qb/l+Zo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.126.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gNgeyJvZd6JURGEuAgNVu2o155F15z+PNhlICQxiftJXC3xT1W7zhuEuJovflfRZzonPzhlSlCIW+LUXwio2n6HhqB5bstfu1jLbOTrCjaYp71fys9fjXS12lsbhd/0lxG2LRkmsMw09FFlsVVY5glf85uuach2VMv95fPWBdgM1WJgyhcjtn9QalJrbwuhWwZm/sNLcd4kRJsYWrXCxK8cGpi/sNvuBBg5h0gExCEY121mnZAtV3ceQXSdqFOvgr4QfsPT15qxgdlDspr+4bB2gcrB7Ma5sBmh7XZ/CXFdU189agf3+1k3WEm24v8AKD5CWS5nZJON0tSpfwMEv5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZO8XtaqsIjWY9aFFiXDcf5tlslBhRgIrrgqUSedHHsQ=;
 b=ClvUG4dfQnF3rsmKhwZ3qylomX+Q0E9bVSX2gzAmGxX7ZT9dCGeNrz5NmCY4i14eKkMmeWpBn96CBA/Nv+sjCarcHyiD39v0yj+CaSr6VJTN098y2y6k4rRA5ush1QUOSsw0gIOXzp8466Tt4WtIdl02gyQ9fqJyMISAw8xQFYoH7/FB5yihj5jyo7VRFm+fOhGvreWEqzJkWNyM3ZFNzVGb6xWOvk12ihNKKbgGsjaassq0z0NNFnE3n56ZIS64GfLy0njtvZR0H63Q7ayF43UUnP30eQbnohTOluGuCxpgn+QBSgxRKbAFQApJcFNfR+0wpPmHWUM7xVhOZurpRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PUZP153CA0009.APCP153.PROD.OUTLOOK.COM (2603:1096:301:c2::10)
 by TY0PR06MB5443.apcprd06.prod.outlook.com (2603:1096:400:32c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Mon, 9 Feb
 2026 09:33:46 +0000
Received: from OSA0EPF000000C8.apcprd02.prod.outlook.com
 (2603:1096:301:c2:cafe::b4) by PUZP153CA0009.outlook.office365.com
 (2603:1096:301:c2::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.4 via Frontend Transport; Mon, 9
 Feb 2026 09:33:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000C8.mail.protection.outlook.com (10.167.240.54) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Mon, 9 Feb 2026 09:33:45 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id C272140A5BE6;
	Mon,  9 Feb 2026 17:33:44 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	peter.chen@cixtech.com,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	alchark@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v8 3/3] arm64: dts: cix: add support for cix sky1 resets
Date: Mon,  9 Feb 2026 17:33:44 +0800
Message-ID: <20260209093344.2013693-4-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260209093344.2013693-1-gary.yang@cixtech.com>
References: <20260209093344.2013693-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000C8:EE_|TY0PR06MB5443:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 3cab4565-5fdb-458e-bb4f-08de67be5289
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|7416014|82310400026|36860700013|32650700017;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?EhPsgHayXOLCkMhZ8E6ws/9C8a/ma0CwJ7fCFxnIwaYNw2K+C2nbFZoMZBf2?=
 =?us-ascii?Q?XTGSHF/unUsBnqB/H1ScOn3xef8mL1LBry3o2s8VbO1Ih9Chu31HfTyMBl9p?=
 =?us-ascii?Q?44AIz77TdYjLc9BPBRszQt9Au/XlQwWISTMa6bMZIWn23Sy4TrQlpCrCCU/a?=
 =?us-ascii?Q?WEpNejL3aKpzsEBtQX6ie+JXJjpSUTpJ0ctD4AvI22t7ZfQIi+x5oyf10nOJ?=
 =?us-ascii?Q?HAiiBGmreutJbyxJ3MoyJa+7EzXWqnJVLZ/6GCi09IFt9BGj9u7Yh3qYjtKj?=
 =?us-ascii?Q?USW8pdhY4e85a/bqi4Sb4BeThqdkMsyLa87rtKGFygBYQSN5Amw9JXvbydvA?=
 =?us-ascii?Q?+/VqoxrkALy20x+Vafm5o2wiHIEpLfjeeDpc4RIp47kFUuVLGN+HPSPrdXWR?=
 =?us-ascii?Q?igwAQtK+nG+FhoE2qIB71gTdDYqQC99KHJEaUUQhmzI0dIWZpuWp2Ks4vOXy?=
 =?us-ascii?Q?yszd590C0r6fzqVnMXFjj7kKOCgSdcan55yA8QxRv3tM4dF2F6Z7lAa/ZmKt?=
 =?us-ascii?Q?weqxdClXRkm7C/pmZQVl5Pg5IHmKtcpNZbP9bGkhNe0VMDa7KDMNEOGFuEE+?=
 =?us-ascii?Q?O39aWPQIP3bqPv4PJ5GXwwyFiH1SCjIAIiZ/Yh93G8FhKWNY2TXr3rRUKPFs?=
 =?us-ascii?Q?Q6Vdcx6uOHST9i1uWhJzTv3T0pV6J6IFEu82nw9oQbtThgdvCLrIcXU8o3rQ?=
 =?us-ascii?Q?RgmOjzxF/Y7GZXRLX/QKAeQvHOurrhA2daMLobEiL7ddkdCGZyEr7lABkvG7?=
 =?us-ascii?Q?cJ86pJBl5GhAZvu5JiryvjmQXQINj2VjkWnkRBB2HzGgZ0/cRXTRgp1y9+DU?=
 =?us-ascii?Q?engjK/+dNvSf0MZruUwM2v027CHBpTTfWacHHkr6DVChG6kDM6E85bgoU8kT?=
 =?us-ascii?Q?ruMFNw/o6bfrXBspmWFqYTjW9MuIQ/3ihjSk/BDCbwS6rxy7AvIJgR7w35xQ?=
 =?us-ascii?Q?4A0U/qzJTHAMCDe60aTCCy7G+451Qt2QA6A+kOaCTRQHUsd1SG53H4ib0gvC?=
 =?us-ascii?Q?/DBRte8wmKoEAc6diF9lzPig75ok03MOieedx8E6TUrnByvjZVw9InBQgqUe?=
 =?us-ascii?Q?1V6mniUU3YsUtJuiKfRmGMQ4IlLrm9d4z9Vkv06g2DEbhk5BevgVTDjW5qz1?=
 =?us-ascii?Q?0uu5eBvH+ZLniViCviwSacgHwzdl7wugAyC2zXfu5asrLgFa9EkiYXWjlPym?=
 =?us-ascii?Q?YIazvArehdQmvcyXmqxGr610BGoGpfa6LXh0WmXeEWJedb0WdjF7CALEgE+i?=
 =?us-ascii?Q?9MXSUFU2auFgoKHUb73w1kyvu01rzkbxRGXpuJlOgNw3t48ajduTpQ8123Hi?=
 =?us-ascii?Q?2GTK2UT531YURLjrK1Q54g29Vi9NKhD7fRPeu/MABYskiS+kJHNdRIC1BJq7?=
 =?us-ascii?Q?IKXyin3cpueKa8tNsjCutYIrt7rOUP1ml2ENWVgJSobQ/G0p5MVa7VMiEY3b?=
 =?us-ascii?Q?cN+HOMMwuzUG6iQlQpm1TxbDQ2Aw0bxz23r5786xHw0WKg3T5Yxm9B+3Ag/w?=
 =?us-ascii?Q?uKc3cZXnusoMZC4SB57tQdF+le1cs4b++u+TTRxD1EXCnDlVLvYeCT34w6yy?=
 =?us-ascii?Q?YYjlX3hoQO2doH7LTwyjGLkYYohGfWDpbTvL+U69IGV0/desoiZQkDf9EA2Y?=
 =?us-ascii?Q?LeYB0vB/5hVe86reY7rZa8KF2pcpapfk8t1X3pcEU6lS?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(82310400026)(36860700013)(32650700017);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	rSvc+vUy0/XsCT/cYbyaAq7mLTsE5BhbxOqhnR39vIR8nNjdpmYwP1QXrPTmiejq3y9tQzNUmqCT9She3a+cghZBHTQcOcnG6jIK4WK7Gtb6Q8KDiIbB7MZV1jiT8EFX7Y4sCh9JIOEVkiWtNFUUfJFTeKqXJ7m0HxAbEYspCTt3yl+H7oyWgAfLx1vcDHhE3ba7kZ0Hr4GP7x5BLd63h/Rh58phtdTrrSivpbCstYzYE9Mr/b2CDk3bMXgxwUSSn+n7U5NwUD3921gENu7VK/R8FWvpKfQbAXrv1zKPZNNht6C6LK0MYOZ1LqTbjFI9OKV1qdgDQ4u3tyW0sZsq63vjuuul/hwp1yjYG4KXtzLE7pYiOrweOERLRFDN4HTHUGLxi+FZyjamdH+3nNqYyKhEzALP6uxP3c5nX5/fFyYLMau7KwSmundlPKf2RvCm
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 09:33:45.6958
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cab4565-5fdb-458e-bb4f-08de67be5289
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000C8.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5443
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-263914-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,cixtech.com,outlook.com,gmail.com];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.553];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 92A4A10D988
X-Rspamd-Action: no action

There are two reset conctrollers on Cix Sky1 Soc. One is located in S0
domain, and the other is located in S0 and S5 domain.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index 64b76905cbff..a28b877cced2 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -348,6 +348,12 @@ i3c1: i3c@4100000 {
 			status = "disabled";
 		};
 
+		syscon: syscon@4160000 {
+			compatible = "cix,sky1-system-control", "syscon";
+			reg = <0x0 0x4160000 0x0 0x100>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc: pinctrl@4170000 {
 			compatible = "cix,sky1-pinctrl";
 			reg = <0x0 0x04170000 0x0 0x1000>;
@@ -568,6 +574,12 @@ ppi_partition1: interrupt-partition-1 {
 			};
 		};
 
+		s5_syscon: syscon@16000000 {
+			compatible = "cix,sky1-s5-system-control", "syscon";
+			reg = <0x0 0x16000000 0x0 0x1000>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc_s5: pinctrl@16007000 {
 			compatible = "cix,sky1-pinctrl-s5";
 			reg = <0x0 0x16007000 0x0 0x1000>;
-- 
2.49.0


