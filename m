Return-Path: <devicetree+bounces-270895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELRzHU/pp2nelgAAu9opvQ
	(envelope-from <devicetree+bounces-270895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:11:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3BC1FC4D5
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 892F330B6CB8
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A54C37FF79;
	Wed,  4 Mar 2026 08:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="AR6NpBAo"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011047.outbound.protection.outlook.com [52.101.70.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A31638C2BB;
	Wed,  4 Mar 2026 08:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772611645; cv=fail; b=Yb1Foeiqz6YjogLAEcK73fhqzyPQrU3xSkBzJKP+3Ui/x7QgM/28feWRj32d6QD7PnaXbeIj9gDh8XT4DtbIGOCU7SOYG7xsn6a+mvBOX5YOefZ/2bVxFNe3mBxE07qa9qW89EDafD5UbXPJ5yUDBPdiO/TfDUhgkZ7NUuy4fB4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772611645; c=relaxed/simple;
	bh=8DSOeayfvToEOoelSJLqmXdVkfMMoC71II6voyWuT2Q=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=OwUe/iuwEtsnHRjdT/8OW6uCnC1TyVYss+y9EEd0DINM6wrL5d0JyGmvktEc5ENgVXPUufKW8Sp6+/0ptDStBN9kY1sOp6Kkv/D2ZDATrd5dOmCp7ycRA5OgK3TQn+CuI6qXXLoCVS2NnjIB0RbL9QDI3S50uL1Guh8GpA1TKbI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=AR6NpBAo; arc=fail smtp.client-ip=52.101.70.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HTpuaS5W7P5Lgih3DK+AwXmszDBt8sIX73I3Up8YpIGeSBgnjBbz7HOptuNSbe/HzQF9NkjoHtuVUvKaFd3IukrwBSHKbyvnl6IRKDqVuBAVn8uIrGzWefQi0M4lNb+SQzssOajRPBJT8siGP0zNR/odA5eRVk3AAiHweTMm5Xt0GroBi89B6Xc+ysymdUYdd7aBX81j33jqgvA15vKSUTnVPbu7C0/O+HAS2BfaUgg90aLIsOBRHuilVeZj9oD1aWbdS2gh8mO61mzEKTOENxnOsG2WlfkaA9kQ1VniAAnK2xaUrWT2w4B1BPhrdeBeZQ3Skx/HPwNou/ayZz2Kxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M1otjRTFzEQWHEopk6818BhFXdffta9D9NOt7veT7UM=;
 b=NrpKzuU953MQ5EwG2IPU/mN7Ez5dtLDgd22KsDZMzVguAXl9GAEzzPGLO17XHshvMKovSUdagBdUyVeylHJWlfXuqocahEjtxFaNbbS1YZwQY+jVG1AwATdQxerEVDiMrijI9hH9hb7N7fe3XprsVRHD7xp07VLCHVxL+mo/lA8bPM6f1ba8P/5CWjrV5+aTH6nx3yMgziKshwgOZAn1rSOx9vQDMxdzXegVg/QTodkCoWHyPAHEm7gcm+ypyMY/gibV0EtvlgsShoghawhqwerbjR9/Iw4XO2Yh72uOK//8nITGbd/hKfhe4STot5rTRfqhSodJR1z/zbkAXMuboQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=foss.st.com; dmarc=fail (p=none sp=none pct=100) action=none
 header.from=foss.st.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M1otjRTFzEQWHEopk6818BhFXdffta9D9NOt7veT7UM=;
 b=AR6NpBAoM9b2KnqrI77CtilJpETwaeBo4NflmZ7SdBJdQKBr1yECdYAbCrexRVoFTaM6Lmsty02Z9KPPiga8enAWAKkWLPB9L6YMVk1U8onKdty1N0HnD7SwkCTaaMeXggs/WVJ1OL/aoLXb7NrrAvB8Taz7DpWwbXU108pt7W/5bzko/DVg24gdKO5tLiMAx/iPAdEVWrdV7swX5xq0EEX9kgTTpA+vS6iFXgb/F65zhD/J65mgeiZMdIXFzPp9aSV9Tcv/8UyWL1g8TgT5Uq6qk+IUlyTqC1chnUrGb7w2XUaqTU5HhYw/rD6f194D8HTpUP94ek6ym5Y2rrAqVg==
Received: from DU2PR04CA0247.eurprd04.prod.outlook.com (2603:10a6:10:28e::12)
 by AS8PR10MB6336.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:522::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 08:07:19 +0000
Received: from DU2PEPF00028D07.eurprd03.prod.outlook.com
 (2603:10a6:10:28e:cafe::32) by DU2PR04CA0247.outlook.office365.com
 (2603:10a6:10:28e::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.22 via Frontend Transport; Wed,
 4 Mar 2026 08:07:18 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 DU2PEPF00028D07.mail.protection.outlook.com (10.167.242.167) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Wed, 4 Mar 2026 08:07:18 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Wed, 4 Mar
 2026 09:09:28 +0100
Received: from localhost (10.252.5.222) by STKDAG1NODE2.st.com (10.75.128.133)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Wed, 4 Mar
 2026 09:07:16 +0100
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
Subject: [PATCH 0/2] ARM: dts: stm32: fix misalignments in nodes of
 STM32MP1x
Date: Wed, 4 Mar 2026 09:06:58 +0100
Message-ID: <20260304-mp1x_alignment_issues-v1-0-19a8013782a5@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACLop2kC/x3MQQqAIBBA0avErBPMgYKuEhGSkw2UhVMhSHdPW
 r7F/xmEIpNAX2WI9LDwEQqauoJ5tcGTYlcMRptWo0a1n02a7MY+7BSuiUVuEtUai4ubsXMaobR
 npIXT/x3G9/0AnWPpB2cAAAA=
X-Change-ID: 20260303-mp1x_alignment_issues-62a3fdc37d03
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: ENXCAS1NODE2.st.com (10.75.128.138) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PEPF00028D07:EE_|AS8PR10MB6336:EE_
X-MS-Office365-Filtering-Correlation-Id: 50355ef6-f650-48b3-5dc3-08de79c50e40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|82310400026|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	ru6SNNPWGbZtOfY+Jp55gXPqAlJ+HSdJ5Wpl9F7OARPE0HaTlZvVlBCCgtRLKqsdpDmInzSife01h5SQq5ouISgh0gWbu5YoQjydexca3q5Btgvb2HCbWKbBcHRNOGQzjB5ZlD3b5YUQZqdpvnv4QDoiwg8/tNdxVgNhlsPJNKSAfumP75yVKV+OkvpvaSKx54yrhEOM/CtF5MWMcbnuiJ7DLw88wpmbR/iw177nxBdZ/aWZzDTIpaqc78C/EMOOoZYRpPljbDT5PXSQtt/0BmC/qAm3xxmnChK96IJ4hZnhc99ekG8D3l1cyHb/bQ82IHrUZap5jIB1laYhFkMAAtaGgOz5DxOiIo1EWHcRj3LE6vJZAvc8aswGWepy8PA3pibO96mcTAmDXDCZJ8I0YcgTuHYVlkwF1ZPYvJJ84+RYJ+q2Ix4kAvhlNq/trxTPE+EQeerVjZfzImTnTQTQWh1brATJgtR4HdhZqojNwNDloob4PJ1zzxuNyamXGdGOjS62gyIkpDzXmPjckLUoA6v7k3wrua1/FeKakLHPOii3dPrk6fjBlgk3xLaVbcna4uCphiwsFY8AVzJK9b25qrgnMofzf+F5WPndhTBPtil5jUmnRAs+JhgtjMSm7Hn8CpOqdxKrzhbYzBV1NKH9YVrtLbWC9EMxyK4OFgceqmGmGE5m/QMH6lx6tpmG8qbxElCB3tpSckCfHFR0+9comCqr/kOQDeGQ7wUwFgI1V9dOQeqJRWudgJyhEaqSRq7Mt0HBGLXRsIMcEzqLCOE+Eg==
X-Forefront-Antispam-Report:
	CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(82310400026)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	N5D/H6gjvAENodiJNGC6y810HUhonC8ipqY2m2JFSXEdNkM3nwMOiuO18/2BMn8V6L+UH4QuEOhuvjkk0St3mgunvgfjKWxgDtwqcqD4lBobOHVQ08cxBbrXtHG4RaygaxDKqEG556SSapbWaCUdk2IzkEoh7/sxPUhJ+E054kJ5J5aBhjnwfOZ+z+p3T62OqDx2IQADLAfRoEzpprCMdyloN/5DwsGA9hCSUJDxXkggZd4pC3+xdUDqB1zwgtU1BOFYCP8wYYv+jBN7kXaUsbYNyAOQ0xqeN8Qdzho/wi70QVkIT6sqhT0uh8eNCY1NUGJ+AMuyQK+ZeTkYLtO3PmPOgfFIw2v8hLUcSk2ohvLS7vwGy5IIRnm22fLLa5dbS296iiwPqKG7gJKUIVTVDGSL1Y1J0KwB4SJLLgBv9XkP96+Mc6zm5qBohSiPM3vl
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 08:07:18.6692
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 50355ef6-f650-48b3-5dc3-08de79c50e40
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DU2PEPF00028D07.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB6336
X-Rspamd-Queue-Id: 2D3BC1FC4D5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270895-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,foss.st.com:dkim,foss.st.com:mid,st.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amelie.delaunay@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[foss.st.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

Since the ETZPC system bus was introduced on STM32MP13 and STM32MP15,
misalignments have appeared in some nodes moved under the etzpc
parent node in stm32mp151.dtsi and stm32mp131.dtsi.

Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
---
Amelie Delaunay (2):
      ARM: dts: stm32: fix misalignments in nodes of stm32mp151
      ARM: dts: stm32: fix misalignments in nodes of stm32mp131

 arch/arm/boot/dts/st/stm32mp131.dtsi | 14 +++++++-------
 arch/arm/boot/dts/st/stm32mp151.dtsi | 14 +++++++-------
 2 files changed, 14 insertions(+), 14 deletions(-)
---
base-commit: 291f393298f72091490dfa70ab4a0ebdbb4c7d7e
change-id: 20260303-mp1x_alignment_issues-62a3fdc37d03

Best regards,
-- 
Amelie Delaunay <amelie.delaunay@foss.st.com>


