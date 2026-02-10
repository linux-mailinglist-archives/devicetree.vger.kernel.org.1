Return-Path: <devicetree+bounces-264321-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LJDK5QDi2kMPQAAu9opvQ
	(envelope-from <devicetree+bounces-264321-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:08:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F08B61196E5
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:08:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4F29304AAFC
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B463446B7;
	Tue, 10 Feb 2026 10:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="ADHwGlNU"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013052.outbound.protection.outlook.com [40.107.162.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C34A344D9F;
	Tue, 10 Feb 2026 10:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717838; cv=fail; b=TB3Pwshb8YHx1f9S7DOO9iqquiIwpHGVKenMU/FCl/zP1DUKZ6DlZiyZbQwe3qK5KNJM/VOEKAg6wucxaAHOJfl1832mRM8y+REKtzFGhJvJWcbnBBGx9Ae5HxdV/Jj00a5dTJNWl3M7N4Nq/ct3GtRwyiJp+fMCFjuwS/bv20Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717838; c=relaxed/simple;
	bh=H1ltmxYWvKilO29Jd3LibzNdUSLibdySdpbFG2cn3y0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=NO7FVqLe1ksnB8iCQIKaORr2WRasBc25JuLJGhtz9OkWwZ4yHAVdiY1UlRJhKuZVXES1J9IUSqX4gXAkYq3KEP5iXWAa9JI2hcLQckTJWOaYey1wLSoINWHA1oOot3JZ0Ir18C/68ibpTvSmbxcF3tuyqM4ob+LOqOfRg4Mccpc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=ADHwGlNU; arc=fail smtp.client-ip=40.107.162.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W8WBhXV0ZZiIj41vOfddKI+np1bmzPm5DUj1p+4CsiSMYRR00qAks/dxZC89ZIno249YyfUYG6qO7Io6nXCZKBGZVf3aSpA3HKeAyNlKfpUUk9GXL/xIcBCWqtLTlBZi9lOVmoThRQnZWL64UDQy8+eFceqvKFPC0oW9WdN4OU1ZSgXUQXKnJbW46o8jwYfavjOYXOfpV+NZCbClr0zG63EZ/V1togIjHGyk3sMLmkVMHclncse4X0+RXV+/rTsD48esNfqaPfxYI4QEl6htBG2GD2RG8OimMYrXORlErlOKXAcBPiqSdu+Knvh853K95R/DBZmdCZD1IOFiJLuE2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IOE8xK50LVNC2vo6WIvOKj85WNoxYu8GAz9RsmluCws=;
 b=WzYUeiGPDGRIvsd7lokZYw0r6Zcc3ZWOAhsgUyFHbUdIYWh43MjM/IPdx0/Va8udNk8HnNCFXxRw0tM18PTfSpfFZ3NNOyAy0H8qGSJuybBxnP6HJr/+jMtlm+QvSWrRp6rOubMWthr7ZQYnGyH/+08iFjZw4+AMEsj4ET1TuVBoCshsUYrvGd9ai5HSbks1cM76w1eTq2T8g438TkcWqkTxx+KpU8fxX6Pj3Henef25wLey56jyF9JQgsAuo9mtTBSKMHq3GzIYlaC0mHnQlPes0WyfXWFsDgKfzjYGxdG+afwh1tvH7XzccFGoWHtTm0qAR/UUTbiz8xxp3PgSPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.59) smtp.rcpttodomain=kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOE8xK50LVNC2vo6WIvOKj85WNoxYu8GAz9RsmluCws=;
 b=ADHwGlNUC6TS8pcGq4cTTvCBy2YMBdxClsJ/rJbU7eBMEHR3EwRuOzSbxYEw5qcdYd5+s0nr0JgSINh9QYI6r6SpPftJUuZGIlLCgjO7RameFCJ/K3foCowhKgSMMTD7vlm0c6NTqbLEgQ0DWYJWGaqQb1lj/Kccuz6NVhB/ivRhMKbdCJkk/4dlcCevKkLEahhxHm7RcYiIqpX3CCrPZlwYG9KumIwDQh39PBXRNbleFTQY/2lFVJcbRBX6XnIbttg4ev+w1Plmhxa71lVVLREqegB6uu1XNM23q2Vbz5XlaMGQZs3knH9iruJpXztEZOwHnikLZplgmHIoa0tZCA==
Received: from AS4P189CA0044.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:5dd::13)
 by AS8PR10MB6972.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5a0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 10:03:54 +0000
Received: from AMS1EPF00000040.eurprd04.prod.outlook.com
 (2603:10a6:20b:5dd:cafe::64) by AS4P189CA0044.outlook.office365.com
 (2603:10a6:20b:5dd::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.8 via Frontend Transport; Tue,
 10 Feb 2026 10:03:54 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.59)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.59; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.59) by
 AMS1EPF00000040.mail.protection.outlook.com (10.167.16.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Tue, 10 Feb 2026 10:03:53 +0000
Received: from STKDAG1NODE1.st.com (10.75.128.132) by smtpo365.st.com
 (10.250.44.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 10 Feb
 2026 11:05:44 +0100
Received: from localhost (10.130.75.212) by STKDAG1NODE1.st.com
 (10.75.128.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 10 Feb
 2026 11:03:52 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Date: Tue, 10 Feb 2026 11:03:54 +0100
Subject: [PATCH v2 1/9] arm64: dts: st: add i2c2 pins for stm32mp25
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260210-display-v2-1-0592bd514958@foss.st.com>
References: <20260210-display-v2-0-0592bd514958@foss.st.com>
In-Reply-To: <20260210-display-v2-0-0592bd514958@foss.st.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christophe Roullier <christophe.roullier@foss.st.com>
CC: Philippe Cornu <philippe.cornu@foss.st.com>, Yannick Fertre
	<yannick.fertre@foss.st.com>, =?utf-8?q?Rapha=C3=ABl_Gallais-Pou?=
	<rgallaispou@gmail.com>, <devicetree@vger.kernel.org>,
	<linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: STKCAS1NODE1.st.com (10.75.128.134) To STKDAG1NODE1.st.com
 (10.75.128.132)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS1EPF00000040:EE_|AS8PR10MB6972:EE_
X-MS-Office365-Filtering-Correlation-Id: 17d310e1-be71-4b26-f1a2-08de688bb297
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?T3dzd0NoOFFxNk9BcWFucVNzMGcrTlhiU1M0UXJFTExLODMrYmFUaVhsc1JD?=
 =?utf-8?B?L0hma216cjZwR0hGZ3ZHejlSQnNtdjVXa1hTb3BTZ3lsOWhrZXNiNTdHK2hu?=
 =?utf-8?B?UTFSOS8yMEVJUjg2NDdyamxYQlRGeHRJeUdxcmdpN08vNDBZajFmMWlqdGNr?=
 =?utf-8?B?ZWo0MUNVNTNEMHRkNXgwZzZTanRKVWJkWEpqeXJuQUlrcHdlK216ZDRxQUFn?=
 =?utf-8?B?dVRPbEszMC9WandTazYvL0RScjN4bUJZYk5kSnE3Vm9lMERGQlVEMEZHbVF6?=
 =?utf-8?B?S3R4bDlQWlp0bGxVSG9qdDNBZW41TWZkSFA5SmJnQ1RzRnEvQzBibnVFZ3pH?=
 =?utf-8?B?d0twdC82VUVSUURxUHE4Q2tYaWx6VFZib3N2NXYzN3czZzJKSXdMdEd5bmdU?=
 =?utf-8?B?bUtWdTE4WE5GN0NIZFhjWmdsTjROc0tDQ1pzRzB4dHhWbnRHRC8wVm81QnRw?=
 =?utf-8?B?MnZlNnRPMmNLTkJxZmEyaGx1cUFxVDhEaXNKLy8rblExc0t5NTdXdjNnODV5?=
 =?utf-8?B?cDhCS04ySXdSYmlnZmdYQnJ5M1FjdVBRSHlpeVZvL2Y1TG80bVNsdFpQc29H?=
 =?utf-8?B?NFZlbDY0WWRwUnB0aFlDWGJPd3Vvb3BDV09MVXprZVdZcG5QQTdmdlBQakRR?=
 =?utf-8?B?R2kxRU1vMC9nY0ovU1hRYTNuM1lBN01TVVBzUDNkWXNnTU80N1NtMkFWOEhM?=
 =?utf-8?B?c1FLMzZJRDdKdTZna25IaUwxMlBHbzJEaENWa1hSVGdJeTZnR1hEazNDMllH?=
 =?utf-8?B?MDRCQmxvd2NFb0QrYjg4QzNrVGtGL3M0RVg0bmdzR3d1ckJXb1VoMVhzVkhI?=
 =?utf-8?B?TWFOa0VFTUs4bXRDSFNWZkdzNElvaityVDdmOUJLY2NEZjJpNW92Q3FIWmww?=
 =?utf-8?B?Z0JTTENQa0F3TUhxckdCVmpwS2lHdjRoQU50amxuejhmeEFyWTBqRVNNajcr?=
 =?utf-8?B?dUJwRjZxODNocUxIUDBEMm1ZKzJlRDRsaHVncHRndDN2YWd3NmNhZ2pHbDRG?=
 =?utf-8?B?aDZjQUEyR3dMcFJ3QUp4cm8yRmxIZVhaMEh6NFJyUWdsWEd5Rmk4QldwTTRR?=
 =?utf-8?B?blk3aWd4NXdHVlpiK3hlZVpVa2w1V0xIOGFDUVF2OC9relVoR1IyVVZFbDA5?=
 =?utf-8?B?SzhoeFFTcWJmWGQyOFcxMEVNalpoWTA4ZERNS1NmN2lIRVd5V3c1NjlJU1ZC?=
 =?utf-8?B?VFBkcFczbUNlTEtvWlVPdkZ3R3U2QlE5d0tpdmVTZlhOUEwzOWNnYzFrbkFx?=
 =?utf-8?B?ZDNVblN1VjBlSTM1b2p3WnB2QU1KUkN5UmhUSGRBZTJRbzAyRk1hTDJpSW0y?=
 =?utf-8?B?ei84QkdBMk80SmF3Mkp6RVFjWXJnM0tIa2RkdWI0ZDBnODZIR1JqeG1xSFJT?=
 =?utf-8?B?dGxPOEFJMnZhdW1XUXR1RVhEcXZxMk1JQVBWcEVKbGliclB1MTZNd3o3bzRw?=
 =?utf-8?B?dDhibkNjN1dGb3p0NXJBbUlSNjZyZnVCN2MwV3dYc2cxZFhYNFdjaEc4SXBS?=
 =?utf-8?B?eWt4RFd3NXZBRVczdFJhNGlXaTllWHdhMzRoL0tzSnlDbXZiajJxTzgxcjgv?=
 =?utf-8?B?YWkvZDRCV2Fsc3gvZWdGUUFtMjNxa1ZTd0RyTGFQbys3SlYxRWYzR0YzOVIr?=
 =?utf-8?B?MFFkTTRMcXcwcngySno1bUxJdGVqTVNDcThmS1hPZWRVWXNJTnFIclhDUHI2?=
 =?utf-8?B?SEJ3bTNYZTVDSjMwbTMzVTRaREpBeGtuSEd0d0JDd2dIOG9hcldqeHNPcVIx?=
 =?utf-8?B?U1o3bDZ2Y3MvUHY2Nm5DZFJ1aCt0M2M3NnBjMGJtSE83YlQrSGRROUltMzB3?=
 =?utf-8?B?WitudE1nbTFvWW1XbTJHTnVmYUdwK2tPTDJBa0REc3BHMmlmKytEY2pMbzR1?=
 =?utf-8?B?RGdPMHVjMTN1YWZYYUZ6eTVyOEZRcU9zdzdlU3hoZTBGR0lBNHd5TVR0eGJj?=
 =?utf-8?B?cllTVWpzb2pNZGxoUkswblZVb0NrNkRuVno5SWlRNFlWdXdhNUhjR0ROd3l4?=
 =?utf-8?B?cEV2MHdoM3BiSVdZN0hzVEkwd0xwaDQ5R21NQTQxTkQvQkJMakhvaVdOTlRr?=
 =?utf-8?B?Q2ltYjErUWlFWi9Tbk42bXROWExWM1VMcllXd1hyVG5TRGhsSzJhc0hQK1Uv?=
 =?utf-8?B?eUZ5N245MEMyVElwMHJpdzlSd1JQSGh2UDhGV0paTE11Sk16MG9ubzd6Yk92?=
 =?utf-8?B?bnhaN3VEMXVyWDhrM0s0NzJWZ3NwMkp2UUhNVElGRUpzVWdGbGwyZlJkbEVm?=
 =?utf-8?B?MUhSVEYydkNHdk9JdFZCMktaV1R3PT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.59;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(82310400026)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	A1d5Fkk3PVTcBJOiEKTt8CItBIJOA7JeZyDpuAKrOzd25eyEv4FQWCxADum+KXU+DFt3ac/Kts74X/P9sKN7IZRfhbe2J5kM7ZhyPSIjQSlIXYqgOn1nFT/fKjvZhPIQxkLG2jBIXuv3wkSRmrrWZncqjlvvf85c503YqWQixEy2SMeu7B2r15q5zfiWmo5LX55DtFJoCk4jg8r0+mIDiQhL/R2ENiZaqgETSjRyMAqHqC3r8g3N7tVZFyu+rTsTkx2qq29CF1UiaCcYu7yzhgytoBgH9InOQsqW8xamax0KG2zEOK4QcIlaaGanf/MA5TIXVa+5yoA7N50P7Ju56XJF/ojfPx84kngQolQRDZiAvFy2XZbOu+SmouEbdQPztfnxX1YVifZ7fzAmA+wHic+ePOl8Ovitjlo4s3cH8n0qs6r5ByB+mgRBixNhA1ek
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 10:03:53.8420
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 17d310e1-be71-4b26-f1a2-08de688bb297
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.59];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS1EPF00000040.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB6972
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264321-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,st.com:email,foss.st.com:mid,foss.st.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raphael.gallais-pou@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[foss.st.com,gmail.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[foss.st.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: F08B61196E5
X-Rspamd-Action: no action

Add the i2c2 pins used on several boards.

Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
---
 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index c34cd33cd855fb28b65a39b59b49e089345ce9a6..2f853f3fae6d84756300f19da32d6cb0297d9e20 100644
--- a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
@@ -212,6 +212,23 @@ pins {
 		};
 	};
 
+	i2c2_pins_b: i2c2-1 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 2, AF9)>, /* I2C2_SCL */
+				 <STM32_PINMUX('F', 0, AF9)>; /* I2C2_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c2_sleep_pins_b: i2c2-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('F', 2, ANALOG)>, /* I2C2_SCL */
+				 <STM32_PINMUX('F', 0, ANALOG)>; /* I2C2_SDA */
+		};
+	};
+
 	ospi_port1_clk_pins_a: ospi-port1-clk-0 {
 		pins {
 			pinmux = <STM32_PINMUX('D', 0, AF10)>; /* OSPI1_CLK */

-- 
2.43.0


