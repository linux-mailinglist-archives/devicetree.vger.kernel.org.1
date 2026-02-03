Return-Path: <devicetree+bounces-262291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aB+7CGIHgmn2OAMAu9opvQ
	(envelope-from <devicetree+bounces-262291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:34:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CC9DAA67
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:34:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 238A33113471
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16C083A9639;
	Tue,  3 Feb 2026 14:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="mAG9OJK4"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010020.outbound.protection.outlook.com [52.101.69.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E783A9606;
	Tue,  3 Feb 2026 14:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.20
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770128899; cv=fail; b=Dlp38wO8/EiHQ6VHT7oDMzTL6PhCCR2W5qPnFZFJtDmKGUeDg9NNB+RISvZfqeiCr/uFxZVIWVpfq1yDPKI6qroGs4+67HnlUBLYna5fWOg+73FiS1RU0lSS+b/KAkngLPZ0GimyxLQR4Sh1m1vf3rlGuBSIVBrKyGdN4PHitus=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770128899; c=relaxed/simple;
	bh=HTWCjm1CUN5rHgpmsW3efHpSPI6CTsh+7Pl7bf1pohE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=I5UvcQ+6Es6+/Ucy33JazoLAIiPfRV80/xl3ZY2u2EyS3HuXUZyaNwzYUiVbPN4/eaIwAXZE9oS45dnqOSQ32ytXe+JkvLHIqZPFTsw9ggDgzJgH37AGrymu0uBGwGGsVdzbhYbhWBqA8ryME/kbOo0Btz9dsmRiWgDJy5aI30w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=mAG9OJK4; arc=fail smtp.client-ip=52.101.69.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VD5zs3FEB1/QLVh3HeSd4elERjMPNyzE6Ay7tQIwi9Khsv3F3hdPurfZpBUc/+RzREyPwl8yHaHvI3JzieINFfRq56MbL9xo3sNxoLHEMe/LhiomEedY89U0xA//uK+nVneBoOomnGHhL5n4LKxtEX5uDJz1Q2Y56GJfx3wwuAJAxq3/6uzRgljwOaiRjgh7T2oEVPxHzXjjsaqmRHtg0FigT07k13gLVhic6a+zk3WmT62kWxAkW6nB0+ZhePxV4lHzhRTYzQ3zJDbSyrPZh+Xz8DWXcirQ/0ZNJd59a8ZRvrNrs1yXPZsqO/ktPHMnEdWMrTqMnTVjQSwQ1+rI6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cgoxLmC9h0jyjW+y5XafpKIl7ZRs6jXrfEOlk4IZ3go=;
 b=k+IKRtwY7FWEt4dEzzIvFvhLOmqaZLAzgnJ0jiqMFaxh5RHfDUtDsbNKBONNSkYNSs5R6SG8VRMMHN8eev5S+OSnKxWWYGlQcQoqcoMcDUCkVYr/lDA7xkoJZePCsA+JK0/0WeOMXqE0FGyWrJylzu0l50+is/SxTLujuoEgHiNS7jiEFIesr2mNx+DZnqOcCzGiC/RSy36sg6l5XBnDCJA8+YSvD3p8csh03/lwcKBls33jiO1J7lGGvGcgpUu6ESfprekdlLy63NFIkWGW6hevb/pAKpIe6MZYfSaYZ4qoFRASuVaQBR++EQwP+t8DPoOrhH7ViNfk9eXpfSWh9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=st-md-mailman.stormreply.com
 smtp.mailfrom=foss.st.com; dmarc=fail (p=none sp=none pct=100) action=none
 header.from=foss.st.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cgoxLmC9h0jyjW+y5XafpKIl7ZRs6jXrfEOlk4IZ3go=;
 b=mAG9OJK46FdrtFAaBi57hJHXQ+4wv31S/wGbfxsAS5Qq4S+7rTW9Z0a6cqfhpRatHgeNKLvZvbtzEbRLg3FIvVDIZ79/eP8vdBwZrjuZswx/x6XPYquLB0nRBwNJi2UyTmXxGAzUA3CTWgHHlGPgpLIku/UrDo19hXhZpOeI6ryWuvVn//Xx6JVOAfrAvCUoCt2mcLBoArAkjqs13qE8puNFTv3tMDmUm8KZIUX8QRURJgs2x+N1WB7XN2+yYrrmwKOp/FNKT7Ilw0OPSqYbNhdp9kFS4MCtHryefq1jbOZO0k1SzeGYM85Mq8gxPEmgBkhna4WgoeCwPROzeEb1hQ==
Received: from AS9PR06CA0281.eurprd06.prod.outlook.com (2603:10a6:20b:45a::30)
 by PA4PR10MB5729.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:266::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Tue, 3 Feb
 2026 14:28:10 +0000
Received: from AM3PEPF00009BA0.eurprd04.prod.outlook.com
 (2603:10a6:20b:45a:cafe::d6) by AS9PR06CA0281.outlook.office365.com
 (2603:10a6:20b:45a::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.16 via Frontend Transport; Tue,
 3 Feb 2026 14:28:01 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 AM3PEPF00009BA0.mail.protection.outlook.com (10.167.16.25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Tue, 3 Feb 2026 14:28:09 +0000
Received: from STKDAG1NODE1.st.com (10.75.128.132) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 3 Feb
 2026 15:29:48 +0100
Received: from localhost (10.48.87.93) by STKDAG1NODE1.st.com (10.75.128.132)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 3 Feb
 2026 15:28:09 +0100
From: Patrice Chotard <patrice.chotard@foss.st.com>
Date: Tue, 3 Feb 2026 15:28:10 +0100
Subject: [PATCH v6 4/7] ARM: dts: stm32: Sort uart nodes by alphabetical
 order in stm32mp13xx-dhcor-som.dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260203-upstream_uboot_properties-v6-4-0a2280e84d31@foss.st.com>
References: <20260203-upstream_uboot_properties-v6-0-0a2280e84d31@foss.st.com>
In-Reply-To: <20260203-upstream_uboot_properties-v6-0-0a2280e84d31@foss.st.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Patrick Delaunay <patrick.delaunay@foss.st.com>, Christoph Niedermaier
	<cniedermaier@dh-electronics.com>, Marek Vasut <marex@denx.de>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<kernel@dh-electronics.com>, Patrice Chotard <patrice.chotard@foss.st.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: STKCAS1NODE1.st.com (10.75.128.134) To STKDAG1NODE1.st.com
 (10.75.128.132)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM3PEPF00009BA0:EE_|PA4PR10MB5729:EE_
X-MS-Office365-Filtering-Correlation-Id: ed227583-99e4-4945-f31b-08de6330748f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?b0RYeGhRNTM2aW03amZTeFhLSVR0S1FKVDNYL0gzMSt5VU5ZU1pKTDFrdjFL?=
 =?utf-8?B?bHN4ZlJwRlBaeU5NbldObyt4d0JPTE5WTjd1VlJQVDgwUDQxeW5zQ0xMVnhy?=
 =?utf-8?B?bGJmbExIcTVxSkMwRG1TWFZtcjQxYTZyOUhRUjBVaVNpd1Z1ZUpqV0ZhOEtD?=
 =?utf-8?B?SWViTERXOVZOVmlPbmhZcDBrWUN4Qk9CbENtM1J0SFZJdkZBVE5KSlBSVEk4?=
 =?utf-8?B?S3J3aG9FZzgrb0FNV1FkUysyeCtNRmNWRXR5WlJBTkRYMXgxbm5JTDNOWmVy?=
 =?utf-8?B?ZFRVOXZDNmtPNEpPeXdxRDJGRTVpV1NsV1k4WEd6VHNpRURFWmpaV0Z6L2dp?=
 =?utf-8?B?dHpSRzNzOCswRUZqazNESk4wbDBzbnZVSGRxdVVZc1lZbHZEMTVnU2V6MDIr?=
 =?utf-8?B?WTQ0WHRLWmNEa2xxRktUdi9BTTNrUHVRakcwbHlxcVBYbEVTMFkwUW16b240?=
 =?utf-8?B?M1R2bEZnL29NeXc2QjJyNUpHcXFyUzdlV3ZrSHN6SFVlMlJOUWNCc0dDL0hD?=
 =?utf-8?B?Z0xtZkJzWFZEQU5vRlE3TWhtZ282cWh6eTA3bVNoUjNKcyswKytGcVRldk9R?=
 =?utf-8?B?OStjaFRGZWxpdHpDTG5sZFgyZ1B4MUdwQjRvMDNOWWp4ZlJDVzhHanNGUC9y?=
 =?utf-8?B?eTN6d0FGa3NWUm9TZFJtSmVtZVk3MGxodjExYWt6NVpOSlJ2ZkFMVFFZdWdY?=
 =?utf-8?B?SkwwaFhHcDI3ekF6ZDB3NGxUYXQ3NmN5NEk5aEd4VmlkNE1jRmM1NTFmZDdM?=
 =?utf-8?B?Y0ZyQmU2emliUVlTcUlONVVjRDBKRE5pc1ZJQWZhRW40VUVjdzhMM2tOL0tP?=
 =?utf-8?B?QlBCRGQrbW5MSzZxUDlyOUk3aVFxazJDdms3OTNJK3FiMVI0U1FkbjQyekk1?=
 =?utf-8?B?MlU5UFVjYU5wNWVpclVGVmo5NGMvV2xUemp6ejRSbHdaU1c2eFFKQ1ZoMlg1?=
 =?utf-8?B?VzdKbDRPRjBpR1l2QjJXQkx3Rm82cHIxQVhMeXFjYlorcnIwMWtXWXNHNXdR?=
 =?utf-8?B?SEM0UlI1YTkvMHVMbDF3aVRhWW9PQzRyTElNVWF2Wk9FRjMxM1p1di8zL2lO?=
 =?utf-8?B?UGVrS3hBVFAxZ0M0Y2tkSDZSakpqYmgrcTg1bENqZTJzdHhOc3p3RUZMV3FL?=
 =?utf-8?B?NmxWektZQlFDQ2lyRzluSzRyemE0OXRMT3E5TVd4TnJjRnllUGl0c0hmU2E3?=
 =?utf-8?B?SmVabmo3bFVWUW9vbWIwc1M4TmZ2QS9ucFowSDVyMGluSUJHVnlKN3V0Zysr?=
 =?utf-8?B?TnV1eDNGVUxnbGFsRm1hYm1HRE1hMnVkNUFobFJzbTA0TjNzYzN2TmNGNThH?=
 =?utf-8?B?TTNWRnpReENEVFY3dDg4RDYzY2lBcWRXTHNJYzZsZUl4em9zR1h4VXE3Z1g3?=
 =?utf-8?B?ZDFobUl3d3pNalB2Rkw1b2RNZVBZMzJkSFJla2h2NjA2eGJ4MjdROTcrdmJO?=
 =?utf-8?B?SEkvekdGWklQaUF4OXgxRnJnSjNRMjdIQnVwc0JVaUZwRHdQWS9najZDS3E2?=
 =?utf-8?B?SktDSGV1WURmL2MzTDZMbW9aVVV4VW9yaW5wQlpDVnVzZVU3dnZyOUJhL1I3?=
 =?utf-8?B?bGhKdEpKMmF3bGx4eU1WUWpZelV0djFLaHQwT0ZlcnlUVUQ0U2JTRnFBaFNv?=
 =?utf-8?B?c1ZKQ2c3V3pqY2dkNmlYN1N2MC9pK2RDWGlIZENTZUErU0gxdXorSHFqQTE0?=
 =?utf-8?B?YVJHMlhuSDM5YnJaQ1pFRGdRdWxnYVFrQlJLVUdMNDd0WG83U2FJdXBMaXYw?=
 =?utf-8?B?ZWZxRmpKOTNaVTA0VzMzNjhPTDBxWWJLOFpUbDJiaEp4VEprQlhwWU85MlJj?=
 =?utf-8?B?bVFyWlBoR0diR3lzVDBCbmtQTFV0aGVUdWpXaUQ3M0xXa3h1dWNqYmRYT2dn?=
 =?utf-8?B?WWM2akUzT21pTnlFaTRZRHFDTWp5Rm5qdzF4SW1ubnZHQWcxemYxUDZSWjZj?=
 =?utf-8?B?bTNwYkdhRlA2UWh3Lzlycm9zbklSN0FmYU1obGlhYkQwOTMxQmY1VmI2cGNx?=
 =?utf-8?B?aUQ3Nkx0RHFpUDNDYzNpMDRTbnhQV2dEVDlSQmNjK1B5MG93UkFmSDJtbGpB?=
 =?utf-8?B?c3pZK3Qwazd2SHoyUVowQnkvTVZvNUJNbzAxNUg4RjBLMG5WRzhDQzBsU3pn?=
 =?utf-8?B?VHdFSmRnQWRINFUvOE83a3EvNmNIN2p0c25qSHkwVU5JT1F0ZGR5b2dOWStC?=
 =?utf-8?B?UjZmNGZMR1JOTFRVK3dHcklpUFVqOThCWEdtK096UFpZUVNvWXZUVGFmTkY2?=
 =?utf-8?B?REtZWDJpV0g2Ynhvd3VsVkhIb0RBPT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(1800799024)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	9Jrzjs1WZcaLy8Rl0mujlLcyTux/ZVd0zEad70BJgKhhH/fLHa0eg+d6bgghneL412uQbgvLBBSU2IFW/tA/NtGX0aI8ZZJjUqhqO2WHtgx0q316eZWFAuXt7fNLb/63fEgKS/IWNoPZR2Rj2Mx5fLJgHnUm1Wb18+8MCxGTlf6gkfW23n3SL0jytQ8p3hdyesrHns4i6ILT0oCoVHUqvOctHfCLqvN2Ab/g3eKP0uQrNxz7DOkh8l9+kwtnhDPfE1Ab75wm9RK7Xnwv5EgTfH0zyQ+bEVZn48XD7bkqK0FF5y+A4RGf8t7lbyEgSuajpY0Z1GwuuXxOC6zkEemY3JL28bmYQtXlR80erMB1R1aqnx+wTk30oXDPdNdadbeOEwvIv9JH4RwCVu22FXinaICw4P1Zc+kFaCX+9xL9XMrLSjxbo1CS6g5rU8LmjOQ6
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 14:28:09.7590
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ed227583-99e4-4945-f31b-08de6330748f
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM3PEPF00009BA0.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR10MB5729
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262291-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com,dh-electronics.com,denx.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[st.com:email,0.0.0.0:email,foss.st.com:mid,foss.st.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[foss.st.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patrice.chotard@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B3CC9DAA67
X-Rspamd-Action: no action

Sort uart4 and uart7 nodes by alphabetical order.

Signed-off-by: Patrice Chotard <patrice.chotard@foss.st.com>
---
 arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi | 56 ++++++++++++-------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
index c18156807027..54ece71085c1 100644
--- a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
@@ -241,34 +241,6 @@ flash0: flash@0 {
 	};
 };
 
-/* Console UART */
-&uart4 {
-	pinctrl-names = "default", "sleep", "idle";
-	pinctrl-0 = <&uart4_pins_b>;
-	pinctrl-1 = <&uart4_sleep_pins_b>;
-	pinctrl-2 = <&uart4_idle_pins_b>;
-	/delete-property/dmas;
-	/delete-property/dma-names;
-	status = "okay";
-};
-
-/* Bluetooth */
-&uart7 {
-	pinctrl-names = "default", "sleep", "idle";
-	pinctrl-0 = <&uart7_pins_a>;
-	pinctrl-1 = <&uart7_sleep_pins_a>;
-	pinctrl-2 = <&uart7_idle_pins_a>;
-	uart-has-rtscts;
-	status = "okay";
-
-	bluetooth {
-		compatible = "infineon,cyw43439-bt", "brcm,bcm4329-bt";
-		max-speed = <3000000>;
-		device-wakeup-gpios = <&gpiog 9 GPIO_ACTIVE_HIGH>;
-		shutdown-gpios = <&gpioi 2 GPIO_ACTIVE_HIGH>;
-	};
-};
-
 /* SDIO WiFi */
 &sdmmc1 {
 	pinctrl-names = "default", "opendrain", "sleep";
@@ -312,3 +284,31 @@ &sdmmc2 {
 	vqmmc-supply = <&vdd>;
 	status = "okay";
 };
+
+/* Console UART */
+&uart4 {
+	pinctrl-names = "default", "sleep", "idle";
+	pinctrl-0 = <&uart4_pins_b>;
+	pinctrl-1 = <&uart4_sleep_pins_b>;
+	pinctrl-2 = <&uart4_idle_pins_b>;
+	/delete-property/dmas;
+	/delete-property/dma-names;
+	status = "okay";
+};
+
+/* Bluetooth */
+&uart7 {
+	pinctrl-names = "default", "sleep", "idle";
+	pinctrl-0 = <&uart7_pins_a>;
+	pinctrl-1 = <&uart7_sleep_pins_a>;
+	pinctrl-2 = <&uart7_idle_pins_a>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "infineon,cyw43439-bt", "brcm,bcm4329-bt";
+		max-speed = <3000000>;
+		device-wakeup-gpios = <&gpiog 9 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpioi 2 GPIO_ACTIVE_HIGH>;
+	};
+};

-- 
2.43.0


