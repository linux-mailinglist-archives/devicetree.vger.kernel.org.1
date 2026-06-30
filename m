Return-Path: <devicetree+bounces-317629-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w4LGJjOcQ2o6dQoAu9opvQ
	(envelope-from <devicetree+bounces-317629-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:36:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F35A96E2F67
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:36:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=yJNs5K0R;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317629-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317629-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6071A310F326
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF4AA3ED5A6;
	Tue, 30 Jun 2026 10:30:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11010010.outbound.protection.outlook.com [52.101.84.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0AC3F1678;
	Tue, 30 Jun 2026 10:30:07 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782815409; cv=fail; b=BAmj5FAEpz07S/oTGcnGKW1Hzr+vfJa1rNWfYUIuCKKiKiQ0+8OigHiC8dHRy/fZgT5SlwQXEjorIxUSWsXkkgdxfnyCnvatBaUrZhmWIxosUBrr43HZJWdZiG5rIXpGyXSj2dhu1wZrQslKkU4j+TJ5re0bLdGRok+QQ3KYGCU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782815409; c=relaxed/simple;
	bh=Nm2VxcjNWCLffWIU35sp4hs8+cGwsrqs9KUAh6QmO0o=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=GHDuJiCszhnlJyDMXvswtQ4pXZWVeQaVpSSYmJ3hpvUYAD4sqJxO0JxHRxrYZq/LKI/KHSg74CYo+PFoZio5TXbUIarE7KWGwgz7DVp8nVgWAfOkJZTG7/JwNvhdJhGvOhAMOLkvRp2xmxf/toG1EHK+lBlECXrx8Ie3RDr15OA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=yJNs5K0R; arc=fail smtp.client-ip=52.101.84.10
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jF/9Hzvu9YnKKuMwnXBLocrbZyeeuLGi0vASWoazoe7KDUO1cu3reffqbrdBVaERWCDCq5D424LoXyYrG8oXpEDMVSq8gPYf3J+93oERHnullWfpTzDfFPFkzSJxQebxECLM0qsF7eqd7m9cbNVS1NBjPuRI+Ttk8NyDOwYPxHqaoD23VoXQoN8DmnNM3BpwHOjfp8Hi8a2DhWXtnsuy3IKW5xDfIURjTS/bcYP0a596ynSMbiAO9i0zUpuFZyXYV9z/vG0fCVbA2cimXhomLMcYot+w/l203Ly540Wpl/Dr3DVl9EIwPIPOJdWshBEx+x8heOsI9wjooRsNiF2fHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yr0aadfrNXL03G8hyRR4WaFkTg2/Z1hbqTtUQmWYexQ=;
 b=FGdzigr9t6yq3FYWgbGoZ7OFx5E2GpFq4Q20MMlA5v18IXcR77S8PsIHuWHLKUvxrAkUibEMD0ip0VsqDwKZeFZO9WnfFflcFh20+L8U6dRr3xJbnQMKC1NiN2sZo+3pEFPvUVN/nS66IKODbvdaBI7AcM3c+7XYHTFT3UdHftXXpAAbqo6guzuZ6uxsaYt+06oxOvF6Q8nvvUWgaFWLYLs1qot6g9U6X1nrAnNNqDYRQPh/zNoLLM4rLTK5ayFpX0uongc5O9EprMDdu/a4ftXw2aKdZzLzAGj4652+mqmI+q3asnoJfBcS9+jVu7LhAOXSwq7cLHkpLoVhHCFjyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yr0aadfrNXL03G8hyRR4WaFkTg2/Z1hbqTtUQmWYexQ=;
 b=yJNs5K0RrrSspt+18rl9QErHXWCn87E+0vEB/7X8oqJmvIjnbKlOI1wdZp5Tl8FpkOa2jtCUIqT0eQBbjrQuy3zK0c7llCCBoMA67cqfouxhefHTV9irpgDr0dvTRpT3YGrwehzLDWRF33TxFSM39td6pGEsZuQvHSr9rqc7wWeJEB0qnwOfT8obZXYkWEaTcLOwxb8KrMEQG17EQpYlPqy4f6nGxKOYXlZO7GpcZ5Asc4HQurB2vC51b6KNJWImH9MDBSgmFrSjNlcZHqlHfomnClHtLOPvnVgCIZN7U0k2lS7OTDkJpu/g9pL/10zzDSbm7t36c9/Bgq3Jgrebqg==
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
 by AS8PR04MB8547.eurprd04.prod.outlook.com (2603:10a6:20b:422::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 10:30:04 +0000
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be]) by VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be%5]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 10:30:04 +0000
From: "Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	amitkumar.karwar@nxp.com,
	neeraj.sanjaykale@nxp.com,
	marcel@holtmann.org,
	luiz.dentz@gmail.com,
	hongxing.zhu@nxp.com,
	l.stach@pengutronix.de,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	brgl@kernel.org
Cc: imx@lists.linux.dev,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-bluetooth@vger.kernel.org,
	linux-pm@vger.kernel.org,
	sherry.sun@nxp.com
Subject: [PATCH V4 0/8] Add PCIe M.2 Key E connector support for NXP i.MX boards
Date: Tue, 30 Jun 2026 18:31:31 +0800
Message-ID: <20260630103139.3823329-1-sherry.sun@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA5PR01CA0221.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f3::11) To VI2PR04MB11276.eurprd04.prod.outlook.com
 (2603:10a6:800:296::7)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI2PR04MB11276:EE_|AS8PR04MB8547:EE_
X-MS-Office365-Filtering-Correlation-Id: 7565068a-ebc8-454a-d8b0-08ded6928be4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|7416014|19092799006|23010399003|921020|18002099003|56012099006|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info:
	pFKUMtZuN6OMSjiHP/kzS9h1hDGgkvXbhjOCU9KFeNVZz3kfFzWs8Ki9eOWgHrpIUxRmtyWEBmlzdYGRcRgk3IreHGlNgIea6rud9pOR7abb4BrT68zyHFPcbhMWTCxMP4q9VMMCIfyPh3SrpDdqHcsA5yg3BVqIoonQvAfhLSmGmnO7wqIyN2yY4gyRzKLiqiwq6B/ZRvC3K8foH+fCnP5QiRDBQa8eHx46LPpaUrJWvCiazPd6zg/4g2sFhdsms7RbkHbIZF5FgubQgR9lllWx89kCwKwk72pK4KhonxrBlnHpr44yW0bLG8hLwE/4v+hG5HCCvF1zcBFKYbOZSNkyPoLGRWbn0fuZ7dJF7m65fGVDB0bdV+uh0SBKFV0OVo3Gj9nv3oGv2mHBEHi+IODdX6RDuJ/3N+bECQrZ8ig0zwT4nQItKrlCuVaPVw1KKYqwGUHfjwg4cW1ZtLUU5QecgNbQFp2qtixurbbeo2jCNdE/yrTOEjieiR0tp6nH3Hr94/64doH4+wC14TfMhq1BKJ3BPQ1dZ7kysNdBhHTp5bWKB29/ZCKmUlsr2YfroPysrYB8A4QtNOMfEUA+ZsXLRRVEsMmmvesGGMTtLjDg8prkjGbTXmVkFabYCFLSvaHLKSsv6XM4HdGL20i77WYc22AgtS+B27NHwika//9MmjF8sjQMEsd06y7IKvu9AJM2205fEP9ofa2RMcr7BQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI2PR04MB11276.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(19092799006)(23010399003)(921020)(18002099003)(56012099006)(11063799006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?usrWwZse5v8++Ii8iUmbHgtypl9kOZ5UNhCjQSXer89qSIcgn4x11KCD6Q00?=
 =?us-ascii?Q?ESBXhS9gYqYwI3uEMpvhAvXK77r71Q74pNG177gAKnZwOYpfYgdkbRLNki35?=
 =?us-ascii?Q?AnJmuGDFHyMZXAfBCjdkSY7JXgPI6RfQDEieyUFTOgeP1zv98U29wP8gRyTf?=
 =?us-ascii?Q?21FCHRd1wgZUCZpBAQPhufrpBTr2wUWjH4/Ekixmgefa+3Hhu5gg6Ce3OT5D?=
 =?us-ascii?Q?MvD/mTMJcTDfdd5dSKuzqpIw3PYxqadXvVpH6pgpG0Ap0v8rt3oOYhfpBA6S?=
 =?us-ascii?Q?sryENKmahGMzd7zcZLoHDgRjEzir0awmjy+HNC4d5vcZIyW0hQvXHG6W39ab?=
 =?us-ascii?Q?rxXb2glwy70mfZv6YQ7mHmF191MQCv9lHQBoN7pmFOEIGEsKxiqE9iCfOv3p?=
 =?us-ascii?Q?XeR4WKBq6BckKFX9fgJ/jDV0+xsc0D3PJX1sa6wuJ6IFxRg/qbivSEJbUzyb?=
 =?us-ascii?Q?8cYQPt7gr2CNnVcWsG1oRzL5ytBvmcT93BFKbmhsk2xxeAvoD3mspKk21RSa?=
 =?us-ascii?Q?vNqidgCA/cOzgOM5YTZ7A5kKYpGfESl+NkyQBoon4cH03jBpvofVskVOXHnE?=
 =?us-ascii?Q?wUmazZfruTi7voEM18ECZOJgfzT8tv3UE+X42lIHfymLUqq7XmpxEzBFcWg+?=
 =?us-ascii?Q?yWbTsxuIW9IwS0oBlrFrZoIlOl3Iq2IijJGz8LrxwwSCtN+sGJLvQA07fcvq?=
 =?us-ascii?Q?Oord7MQ4AG5EjUF5Qnt2H+mmZoQFqsIPIkteO9xvGSz8gH7Pw+bUhec+84ED?=
 =?us-ascii?Q?WDvvCrmkWO2I6AaQYc2igtcsQPJABEPKzbc33mGpBxYF/2oa1ix1z/i16o4C?=
 =?us-ascii?Q?TVHVxyrv6vz0RkjdMB8lp471POesptIz4G1gnl2yEFbyPpWXyV0k0ob0rGYr?=
 =?us-ascii?Q?7TWrP4N1Hv6CyVxM9wI8w7E0dHUedtZrU43+dlKG5Wvakxt6kEOC1lj35qqP?=
 =?us-ascii?Q?NIP+X6Eg5r2gHTwEGQUYU4mYeuSo2/wYVFNa1ppqlS2ENkcF+3zF1dizRSIW?=
 =?us-ascii?Q?v0BRknTX0S7/3hFtvc1nfHm+nG2b12APy96QF1opMIfNKvsbx+XLaerIi94R?=
 =?us-ascii?Q?MusDGEU6SuI0O7AwNiVuWf0cUC9uuHzu74y3C1TkVfgN+/JGJYudX//Spxbc?=
 =?us-ascii?Q?zTJuTDC1FspfIll1ZogCR4BRtv64NcKOA9jKEsAqa7Iqs5mYCYw495yGKi78?=
 =?us-ascii?Q?6Fr6Yic49Z6e7qp9SMc3wHvGNxVPLbsJ+aZCx6WiWjJICJdFfOi45C4Xq1+a?=
 =?us-ascii?Q?HNQFS7mj7Ex/F0oLF6C05YosSmkT2vmfmda7p1wfaAdi4yAgAZxxDpuaZGUu?=
 =?us-ascii?Q?nGYyLKd6d4ooUqDed/jzxa1/xAfYaTjoha2dhY/VBa4gRDfWxKwQ6zi5BKVm?=
 =?us-ascii?Q?wI2j0M/gcQW9nFjv9MoJ8saaBhfTQU/fpW++/G6etYEQVlfJBjPC1EuvbOFZ?=
 =?us-ascii?Q?8Aj/U0S9VbBD3zccD4c19vu0Vc31uA+CF5nAhvmBwSszvzNKlwXzBV8rsa4P?=
 =?us-ascii?Q?rH3so6bO1GL/6VPEq55APvwTNsYXQ2bvJMCEaip/2IGALATumLKw/6G7lBAz?=
 =?us-ascii?Q?T9r7dAWaajqXLmNwxmz7WlyDcZV8ZeMYZiB46wZp6l3PgNdijxhnOmPt36AJ?=
 =?us-ascii?Q?qNqDMe3AyfIqo2eO5deKxsq59AhMFJjcH0aeSVasGM4DxYJn6MYuXGZAeAHd?=
 =?us-ascii?Q?mjH2jAezcN4U2PhtLW+tsfd1dKOUkio0T4msIAEJtwNcufxC65ljabYfP7dL?=
 =?us-ascii?Q?utyg0tH7wUT1RWEG/eUt/wgRq6EoGa4GknwrhtdUosbuC3IaR1Rs?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7565068a-ebc8-454a-d8b0-08ded6928be4
X-MS-Exchange-CrossTenant-AuthSource: VI2PR04MB11276.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 10:30:04.0523
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BSu7V5Y9Drp7CwvlLyGvaC6KpJwxExVmcrkvNftasnasLAdwbLTlbKckB/YTidBQg7MpavWu5fWfGVOQAif+lI31j2QfjzDzHTw8988JwCE7T4rnO0s9fiPtMyLog8u0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8547
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317629-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:amitkumar.karwar@nxp.com,m:neeraj.sanjaykale@nxp.com,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:hongxing.zhu@nxp.com,m:l.stach@pengutronix.de,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:bhelgaas@google.com,m:brgl@kernel.org,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-pm@vger.kernel.org,m:sherry.sun@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,holtmann.org,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[NXP1.onmicrosoft.com:dkim,oss.nxp.com:mid,oss.nxp.com:from_mime,vger.kernel.org:from_smtp,i.mx:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F35A96E2F67

From: Sherry Sun <sherry.sun@nxp.com>

This series adds support for NXP Wi-Fi/BT combo chips (88W9098, AW693)
inserted into PCIe M.2 Key E connectors on several i.MX EVK/MEK boards.

For M.2 cards that rely on PCIe L2 link state and wake-up mechanisms, the
card must remain powered during suspend. Patch #1 uses the existing
dw_pcie_rp::skip_pwrctrl_off flag to skip power-off during suspend and skip
power-on during the init path.

Also the btnxpuart driver is extended to obtain a pwrseq descriptor via the
OF graph on the UART controller device in patch #3.

Note: Patch #4-8 in this patch set depends on the following [1] and [2]
DTS patches.
[1] https://lore.kernel.org/all/20260616105201.3214395-1-sherry.sun@oss.nxp.com/
[2] https://lore.kernel.org/all/20260630060710.3294811-1-sherry.sun@oss.nxp.com/

---
Changes in V4:
1. Add a seperate patch to move pci_pwrctrl_create_devices() to
   imx_pcie_probe() as suggested by Frank.
2. Rebase the dts patches based on [2] patchset.
3. Drop pwrseq-pcie-m2 ID patch as it got applied.

Changes in V3:
1. Move pci_pwrctrl_create_devices() to imx_pcie_probe() in parch #1,
   similar to other regulator_get calls as suggested by Frank.
2. Collected the tags.

Changes in V2:
1. Rebased on top of 7.1.0.
2. Removed the power_off error handling in patch #3 because pwrseq_put()
   would call pwrseq_power_off() to automatically clean.
3. Collected the tags.
---

Sherry Sun (8):
  PCI: imx6: Move pci_pwrctrl_create_devices() to imx_pcie_probe()
  PCI: imx6: Add skip_pwrctrl_off flag support
  Bluetooth: btnxpuart: Add M.2 Bluetooth device support using pwrseq
  arm64: dts: imx8mq-evk: Describe the PCIe M.2 Key E connector
  arm64: dts: imx95-19x19-evk: Describe the PCIe M.2 Key E connector
  arm64: dts: imx8dxl-evk: Describe the PCIe M.2 Key E connector
  arm64: dts: imx8qm-mek: Describe the PCIe M.2 Key E connector
  arm64: dts: imx8qxp-mek: Describe the PCIe M.2 Key E connector

 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts | 56 +++++++++++++-----
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts  | 44 ++++++++++++--
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts  | 58 ++++++++++++++-----
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 54 ++++++++++++-----
 .../boot/dts/freescale/imx95-19x19-evk.dts    | 55 +++++++++++++-----
 drivers/bluetooth/btnxpuart.c                 | 14 +++++
 drivers/pci/controller/dwc/pci-imx6.c         | 43 ++++++++------
 7 files changed, 246 insertions(+), 78 deletions(-)

-- 
2.50.1


