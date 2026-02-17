Return-Path: <devicetree+bounces-266128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMp0E2JmlGkpDgIAu9opvQ
	(envelope-from <devicetree+bounces-266128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:00:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E206314C3DB
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:00:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4B6C7301250F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3564435771D;
	Tue, 17 Feb 2026 13:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="NWR9idJq"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012013.outbound.protection.outlook.com [40.107.200.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76CD01D9346;
	Tue, 17 Feb 2026 13:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.13
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333204; cv=fail; b=d0G2zG2hWACjEgcbl3b4X2A+LlTuTzFb6K5kZIpQeiNeJ0gKK68YvxCRpnOdgZV4fJwedsgO9q2mxrEHje6N9S3N11ilLzQVT6iDWKtyastwHPqNs6HT4W4PucnzLFLE+s9mSsH+rqycWIeELdwUeBjuj4lQcBcVW4yDjY9W6Lo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333204; c=relaxed/simple;
	bh=XwagvHewfITdbL5r0PwF8v1pEBUNzUYJ/JR2706Lk6M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=agQbmVx6ykJJCB5Q1Te16BweX9nrcVsTMMdmzy9A4I36OEwmY7vW9CPoR4PUOSKrjbTvt/R5lnWnh6qxfrq5NdCmeae1bG9pH+S63M03570fiLujPhFf2NO8F0gVYy/BAR4vliA6S7DHulBWuSHwyA/B2vmegcG3B8jK+01ojDY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=NWR9idJq; arc=fail smtp.client-ip=40.107.200.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dZDaJrSAVUTH2tk5E6wObenFwvdGFfphJr+nNJNm3Y6umcaTQfHGOqPZ1LJBqctee+P5bX6eB8T6hL4sCSu0SIVqfQfsvN44lZLfPfrtV3AOsITZFlEH4c5ThT4593YmiIea6LF913eTeN6a7Ibn3Kxwewkdm3h+N7A+dlr5rE6YvNSA32Gn9WbitBJ8uTx73IliGu03HrNokqTFH8BCJObT+jK+73ZFKj/uF8DiqgRILWKQjpzyTNvCIPO+yqI4d3WbmuCy6HjQyMpTXtVv2FW6kYBeB4Bfzuc/XXAa1JhB4mbsuSuJoicfKnMedUv4YitNvY5zp9oYS+Xn8lmNaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iRMttMpqtXMMschQ17dp1wWmvQbAZ0i7DDCDXaRiyYc=;
 b=l0y2vyGoxl4drNKhr/WMXB9hpwRycQk++xzoVGSGJVjkfGCZb/L8gZhdw4CuaPoaZ71vsiffQp86Xjc3zLGWf5tRmFEr7iPHme33tsu+s3O3w6beL6Y3p9Qo2IyLu+u/slWnazt0PwR4kFsE+9e6M+oYkFs1Fu/x7/BTRxikA3nK1ADlE6RfilzOJB+7nUU8XIXVEq/BUGuBuSuiDv1ALxvZYbQ1LNJ9aDIUafFnJBVWe7qKIIvhrzrPs+SRYKGBq1iqHkfWIrgtLb+AXl7KRtLDZz7PK9QS2bFiimSd1zVKEgiLTg9l+8GVpQonCrPZz+YJ96HCemN55taTFIRMng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iRMttMpqtXMMschQ17dp1wWmvQbAZ0i7DDCDXaRiyYc=;
 b=NWR9idJq+j3yhjVyQ1cQ/1IZ63KJ1UZEnszEsoSRSC5VG0Em7pUZgGtDfZvTBTpS/QHiJXNolSbWulcmIMgLWDrFHDxD0Ytpbrrihz5LSIoQ0viWRdoqkOXE+Jy2+TZmod+4fb/RFHkkbmxUXp04BXnYx68xbcGI3ZLo/ZumDhV7H2j2KON0m9BofOPuriXMSkDpj14D4X4Ahtf1vGXmDDA+5XX/uR/7AhO3QW+hLvuChE+p3GnesARa2/+l8xttbAON7EN1hdEIz/KZLLx8dF9NmCMmyvXH71vXthZaIDPZMGh7N9dUXG8+sjlNtDj/v0uNf8l5aa+BoanvZOozig==
Received: from BY3PR03CA0012.namprd03.prod.outlook.com (2603:10b6:a03:39a::17)
 by CH3PR22MB5512.namprd22.prod.outlook.com (2603:10b6:610:1e0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 17 Feb
 2026 12:59:59 +0000
Received: from SJ5PEPF000001EA.namprd05.prod.outlook.com
 (2603:10b6:a03:39a:cafe::93) by BY3PR03CA0012.outlook.office365.com
 (2603:10b6:a03:39a::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.13 via Frontend Transport; Tue,
 17 Feb 2026 12:59:59 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=atlrelay2.compute.ge-healthcare.net;
Received: from atlrelay2.compute.ge-healthcare.net (165.85.157.49) by
 SJ5PEPF000001EA.mail.protection.outlook.com (10.167.242.198) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 12:59:58 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id 3B0E8FFDA0;
	Tue, 17 Feb 2026 14:59:55 +0200 (EET)
From: Ian Ray <ian.ray@gehealthcare.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Ian Ray <ian.ray@gehealthcare.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] ARM: dts: imx: b850v3: Disable usdhc4
Date: Tue, 17 Feb 2026 14:59:51 +0200
Message-ID: <20260217125952.53997-5-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260217125952.53997-1-ian.ray@gehealthcare.com>
References: <20260217125952.53997-1-ian.ray@gehealthcare.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001EA:EE_|CH3PR22MB5512:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 0c5408d4-5ef6-4c0c-b712-08de6e247496
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?VwnrUvWgj2coVIZ+J0P5M5UnGC7fIFkbpFvNVMWiGshScWoryUEWO2ia+3hF?=
 =?us-ascii?Q?HoZJw2LrQsLIl+9yBCcym9/89nZrivdTmHtKlZmKWzKmb/lt1jsCO70Fk4s9?=
 =?us-ascii?Q?oZ05hQZcL2feqxiSZzAa8baaldL6jttXaHDbwf9G5x9Z+8DDuoxnvtBiBt7E?=
 =?us-ascii?Q?uhlFK4X2Ep6QPTph4uodpS5dP6Q94DL9HDBXyFjq5Oy5vmFzd8bHv5mYYe95?=
 =?us-ascii?Q?b159Dqka8NfN7HxRH7Y7wFsRw5etwLQgk+4yr6KwLfJ74kUvwFpVSIbwdh8I?=
 =?us-ascii?Q?UH2+jRakt5mkyQSqHpnOpKgoD5CnJvEd7kOfXnuL67jigfbtKqVf5vINJUqp?=
 =?us-ascii?Q?Wdl6hdi1DyB1v6pYoZSpcADAWtcyrInPM5Cd46wTiKBzvx1OVc8mjWUHAOAW?=
 =?us-ascii?Q?tVEgM4hzSmq4ufWM5NaJhqLd8h+GLiRRE1/uZdUks0qobkJzjz3TJhle3kb+?=
 =?us-ascii?Q?jnZ+bOiKbt1wdx0AS9VOYWTUZdIrI86Fsk2CQOTDK5d/JjhsqVzw9NXcomE7?=
 =?us-ascii?Q?SNulg7dj3sWWZNdezFHBDpJoVv7xUgtKJYbbm0THqvPFBI7S6sUlsAGAFxsW?=
 =?us-ascii?Q?1qsivpwK5We+W7PZUI/19410k1pkM+mA88GEHOt5iUKEiFCZCrktR/tlCRuq?=
 =?us-ascii?Q?0V55OlpV6nIjyJX9ZXQMtuTns12HAlxSenJ0NIGvRYMj2hN4YAxkz1LDuZSK?=
 =?us-ascii?Q?FTem9irI+L4+4D1Wq13M08veAmxXTSozTdBYR5zUT7uEXi5I2ErnjHvo/bdE?=
 =?us-ascii?Q?ONwZ1FOo8BRT3yuF1m1qyc1bT+jt1Cs2EBkQ3mPmOkRZgevKlAqi/uTftTrk?=
 =?us-ascii?Q?lShGfIilWRVz5duqKPEMzyDW7k/G28BjY/QYSduSpdmT46kz/VDXWj+IxRrd?=
 =?us-ascii?Q?x2xpKNKBqxoSaWOp7eIdUENDaZI2DUliXPjgwDsUGMqpHqewsG0mJKYTZrHN?=
 =?us-ascii?Q?NKj2s4fjCxR2nwCmnSBZ2z1Pwz6wHOtMIhHXSV2EWRVQVU7yxtiMGccMs+M1?=
 =?us-ascii?Q?XUjHvo6HIsWkpCgyk5+3QuaJc7M3zVxHYixJspu+9IHSO37NAnlqsqN/qIea?=
 =?us-ascii?Q?ZNrXFdERNddphuPHjQw6hItKtJ1V+WHZ0xqUqNpbj1XKr/hUvPwADCGPyZzS?=
 =?us-ascii?Q?208iLqKKlf9hNNEnhLjw8u/2A6bO4uUths94gj9M+rB24Cki/eWmTJAvhQfn?=
 =?us-ascii?Q?SCeT/aDngit/xJTTc4A9QxIoNtx2J0NGceYIlCmD5f5oA+nRZjppHEuYpIIY?=
 =?us-ascii?Q?/X8JdmeT1WcTEVtAMykXx5hoWEUeiLGrd2D+XQe6/Ca/C4yZeBiWK7Th79Vr?=
 =?us-ascii?Q?7W77O5J/3zk46uxo8QlmYtfk1PavqKJCJKrc/7sZerZyPq6f56AHchz66VzM?=
 =?us-ascii?Q?Uacab0PyLwtbC5yBPbAUkHCeQtDYiU5HNKD4KOzXP0r6jLxyo/QQdpdR6YE+?=
 =?us-ascii?Q?at6bp9zN5UzgYfioNqY+xk6mb5E9GWtBwDopyNdgBMRbLuFe60oNUdrUXqeQ?=
 =?us-ascii?Q?n6N1o0ZLtTV4xvpqp30I58emJrqz0kVTaWx/pczdyeogPxytJkeS/37mWT7C?=
 =?us-ascii?Q?p7YGOt9+Fl4XX5gM+H5uRtydCaeFrJ/Udb3cRmaqv8lVA6z4oqoLMXvr2hNz?=
 =?us-ascii?Q?wAME8ypYl6ssBHvMo7lthQap4bXGLCwKmJmtZfg/Xb+g4QNcTVslFkMIWko9?=
 =?us-ascii?Q?AqitaA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:atlrelay2.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	nXplQGIUNu0Er0p+hP5oqZTbmMcFk1yKEBBaFipFAKTzaWXlMG6hexuTkPB/PAUEU8GcocKOYoYHxpoXTQ0zwV/kkC5kCGS6m0GlJ8CjXw4tR2UnBJXjW4tg7nIzhx8/uk43WUwdkPgUhOx/7r5oGwLQMadk1U5p8fKdV4UANyVm112eVWhTM7hOKTvelIaENUyfo/CSYQR72yUM41YOLyn3unc0YcPF26XrjAaorT2FOsrfD31+gcK7LgBwwd6MXSj5PZURgMQheFDFBxANUO7zHntRfgznDijeZwoZVKceJZY/VmN37QOIaZVNhyFTj8FQD9SSO1PV74TLH3lwdawzyLNkraGqquboErAvTr3Jo3xy6G8EfMH+2V3Hw9KrYGK3kmmSkJM3bPqtkJPHItBDq3yakO+mYW8Cm9Jr22UMXI7EzvAoAf+l37r4/1cW
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 12:59:58.4297
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c5408d4-5ef6-4c0c-b712-08de6e247496
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[atlrelay2.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-SJ5PEPF000001EA.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR22MB5512
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-266128-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.4:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E206314C3DB
X-Rspamd-Action: no action

Disable the unused interface, to fix a log message.

```
mmc3: Failed to initialize a non-removable card
```

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
index 30181b5132a9..a030b26e06b4 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
@@ -303,3 +303,7 @@ port@4 {
 		phy-handle = <&switchphy4>;
 	};
 };
+
+&usdhc4 {
+	status = "disabled";
+};
-- 
2.49.0


