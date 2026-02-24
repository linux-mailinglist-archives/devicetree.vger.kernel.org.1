Return-Path: <devicetree+bounces-267968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKHpFsjJnWl9SAQAu9opvQ
	(envelope-from <devicetree+bounces-267968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:54:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AA8189629
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:54:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C952C30EC572
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A94833A641B;
	Tue, 24 Feb 2026 15:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="izmRHG0F"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013007.outbound.protection.outlook.com [40.107.162.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C4F3A63EF;
	Tue, 24 Feb 2026 15:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.7
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771948179; cv=fail; b=PO+SxE/IfckgArDZNfRUKS3PIqrswdk8y5rQluuWsK9rzMe9pviqK2HvDW9q3+b/ng9e3jtsjb0LouLjGNVPiMR0bgVejALMSQYChI1ttsnzvzsyklxi/F7/d7T6SyRUCnoIE0KwxeylvtpzvVh2B87Nfu5l+F7jIyqBvxl4x/0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771948179; c=relaxed/simple;
	bh=q8YRUCMRmIrfUZtq6bchEnTebtciKKKU+4RS6NU6mxw=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=DH13y8zrQQwRsLvfJ38gRd3+wdIHBtP+RyzVS1FY3HvYUUBol54SFjq35A+ePDC0Vk1Tpe0Ab3Aym07Z2+WT41NObCovZWegIc0ha3wI0a8c5DHI75KL5ICjk/sbxvLgmAf+dYwM5hmTXM7Wq45de5cNDsXbLG3lpSiU87IGFMQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=izmRHG0F; arc=fail smtp.client-ip=40.107.162.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LVhnWPOddklGNb124Pah/kslTeze5ytz+D3Wd6vTCmLBA1A9RCdsg6oqwf862ITVtS64qY9Hqm80BUYM7SKWdTcjFlRdkcIloc03b7ARhDElZisleKHSnVPEaB79cvRe8HtBu91tD78HnwXa2tE5v58WuufElDtM/TL3tu6i+EidKMwPXTha/+RDAno/rktGKTX+pIxYR+N7MGfEOaw8n52oCT5UPIGNw5M0BVhMXdW7ez0WDpep+7K2TT5rKmRDPdGTOWlElI+nz81LddIAE/FS7QpJ7+/AIYxIhKtexaTEyf1v3mp/S11gZo1bySrKsyojOAUtqEsbnqCCd2DsCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vDTDl4q+j+L0feF9ApJtgoca1cb1aq7KYodiNG09m9g=;
 b=DLcjk2EXBakcYPHyXHp3X+k3KNPVQfhcJsosIFRcOpXpQo4rlNh2fux2fj0QXJ2w6fABDqgpl2B2RG0765/CXM2yPbbPUUASRBXT4Vcbw6h2oFXjUaD6AdnQGkcSNRuw7C6P6il+t8352SNf0jMFl3KWmyqJa6VloFRTSoWyP4vtm5ONtNMtnRwrDH9co1+nNHgOApn/Z67jIuA7IeNjS8jEU1YEh2nOX38+fYWIHnakMMpGU4k4vGN+ssvZY0MVBebXA0zgzng5/sLAD+F6frcmXqxMaX7dkuJaWbxQMSn0/SDkb3I08/z8bxnxOi7eUe3J1zoIW19W5Wd+bzs/fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.59) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vDTDl4q+j+L0feF9ApJtgoca1cb1aq7KYodiNG09m9g=;
 b=izmRHG0Ff2Gk4YeZA5XEjwWPiZcuHs5/uaBOvvg1akqQNAITxKWT9q/CgtPcBXZtVVYnRJ7wwe2gFZizV11VVPqBjP49+FJYY2HRrTXN2VU3URMlFzowKmpeoQFJw8foQ0jVEYUOH13lA/RaQBN8u8aX/XXBFLxFq8wpNTIguaYwviDVFvmQqbeM2ZpPWdjOP0kwznZNVk3qgCwDj/uOBOmRHUfI8b6Ty6g6iKlRpYs/buOdVd1r8NqUB9WVXcmpelDsoi5VAVNOqsAPa8xvER8BZjMuPoIw/TykaolsxGxUe3pa3wJIa9IVfRBcuU0ALrnqlkmmNRnUL27GZLvhog==
Received: from AS9PR06CA0502.eurprd06.prod.outlook.com (2603:10a6:20b:49b::27)
 by GVXPR10MB8357.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:1dd::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 15:49:31 +0000
Received: from AMS0EPF000001B5.eurprd05.prod.outlook.com
 (2603:10a6:20b:49b:cafe::82) by AS9PR06CA0502.outlook.office365.com
 (2603:10a6:20b:49b::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.22 via Frontend Transport; Tue,
 24 Feb 2026 15:49:29 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.59)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.59; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.59) by
 AMS0EPF000001B5.mail.protection.outlook.com (10.167.16.169) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 24 Feb 2026 15:49:31 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpo365.st.com
 (10.250.44.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 24 Feb
 2026 16:51:47 +0100
Received: from localhost (10.130.74.193) by STKDAG1NODE2.st.com
 (10.75.128.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Tue, 24 Feb
 2026 16:49:30 +0100
From: Alain Volmat <alain.volmat@foss.st.com>
Subject: [PATCH 0/9] dts: st: various additions / fixes in STM32 i2c nodes
Date: Tue, 24 Feb 2026 16:48:03 +0100
Message-ID: <20260224-stm32-i2c-dt-updates-v1-0-347cf6fca7d1@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADPInWkC/x3MPQqAMAxA4atIZgM1LSpeRRyKjZrBH5oqgnh3i
 +M3vPeAchRW6IoHIl+ism8ZVVnAuPhtZpSQDWSoNkQONa2WUGjEkPA8gk+s6KrWOzMZ21gHOT0
 iT3L/23543w8x8iWLZgAAAA==
X-Change-ID: 20260224-stm32-i2c-dt-updates-418a40f03734
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	"Alain Volmat" <alain.volmat@foss.st.com>, Olivier Moysan
	<olivier.moysan@foss.st.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: ENXCAS1NODE2.st.com (10.75.128.138) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF000001B5:EE_|GVXPR10MB8357:EE_
X-MS-Office365-Filtering-Correlation-Id: ec06a2e0-6067-4a1c-89ed-08de73bc4cea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SWdzMHF6QTEreXBlcWVaUStvdkdNamo1NzllaUJmZmZMa1hCeUNKNU1XR0ZS?=
 =?utf-8?B?bWNZalZ4Y3NNa0VibHFRZk4xamg5WFRDeWhJT0NUbW5rMVlJTkp1UmVCR1pP?=
 =?utf-8?B?bzBQVyt3cm9MNThZdDFvUU42WElXN3RtSzJTMnZkYUxlWU5MNmFxc1Q4cTJ1?=
 =?utf-8?B?aUVMSy9LaHRHS1NTeG1CSkQySU9ERG1Bb0loemJJcktwMXIwUVRLcTNudWFx?=
 =?utf-8?B?WGtpWXFZbEVUbmRNTU92TE1aOTVaKytNd1ArdTl6YTlxRXg2SXRLUXBWbUM1?=
 =?utf-8?B?b1JFUHh3RldxaG91emowQkU1SXhHb2hPbVRLOXFBVmlmeU4ycGFVWkRVRmxR?=
 =?utf-8?B?ODgyZ1NOenF1STZFdWYyMjNnTEYvaU9IZS9NYTYvUnR3b1oxemp2RkJaaUdC?=
 =?utf-8?B?cExnK082UGtCa2JxTVAyc3A5ak11MmJycG9PM2RxaDVPVGIxRXU5MUpmV2Jz?=
 =?utf-8?B?dUcwUXNVTldDWGhIK2d3d1lNb0pNeksvVURUekcwd1lYKzNSaGFlSk9wclYv?=
 =?utf-8?B?dndIM012QXNEU1RRQjdtRjd5SUNjUGNsaTdqZTFWSDNEV0dyUy9zVXg5TElS?=
 =?utf-8?B?Y25lYWljOVI5aW5jSW5Jbk9iL2hLalVwWWRZYlVvYmNqbi9wMG9GQmNLcENa?=
 =?utf-8?B?TWZpQzJxT1NyNEdqcU9EVWRPTkVEMW9nUk9VZmZXVUs2TWlnYnRqSVd6eFkz?=
 =?utf-8?B?SlpKWVk0RElpREdYeXlGaS9SOW5LTDRYS3NjUHhtcHVtNVlKNytrQmtMd2hn?=
 =?utf-8?B?aEJJTjNxOUNSYWVDT3A1dDNLSlFzNjhxdGplT1pOWllxSm1XdWs0UWEzK04v?=
 =?utf-8?B?TGNORmkyc0JMVDRTZVFVbk5mRVlSSU5MazFzaWNWQkZwa3hqV3pKQnVrOVha?=
 =?utf-8?B?U2hIRWpBZE8yYkpsUHU3cW02N2UyMHd4Zm1ZOHp3dTRoRDM0a1VoeUZla3Jn?=
 =?utf-8?B?eFQzRjFmdFJ0cGFWZXI3SVJnTVUzYWdSUGRkb3ptWVUvT2lLNEhhT0R4ZlU5?=
 =?utf-8?B?UzA3blErTzIwOG5oQXdQekpJei93UlNwNGpFamRHRTVRSGJJRnc0dTFvSnh3?=
 =?utf-8?B?ZzZ4ZkFHUzg4MVVZbFA3OG5NZEpUZDA4b24veU4vdU5wKzFnWHliMEpYMENz?=
 =?utf-8?B?c3dTTkRYczg1K29SVG9mbDhBUlZrU0FJZ0FnTWFhUStWM28vSHJSWkRSUU9D?=
 =?utf-8?B?bGF3SFVJUk1aR1BxZmdTZGtNRnlzMURXQXJxK3M5SkNxZXJUUURrckRST1Fh?=
 =?utf-8?B?QTA3RmQ3N1NkaCszM2pYZVJVR2ZEak5qVTJ1N1B2VEE5V0J5NXdHOVhROUZN?=
 =?utf-8?B?UkRkUkdxcVE0N1pOUno1UjRmRWRKOW5YcElzQ3pLd2cxZURJZDJ5YmNNcEVJ?=
 =?utf-8?B?TldxaTBRcUlsOGtVSTBWdk90SXhPMTlxUXRZR2ZoVXJzL1U4ZExDL3VVbkJu?=
 =?utf-8?B?aThiWXgxVVlFd3dvdG4vc3dDWjlOczdtdnVxTTl0NVdMdThheEZGRGdDZUhq?=
 =?utf-8?B?Z2RyOHVJOThMd1pGQ2FNRVBzNEhtRFcwNFRqUkJlR0gvRDBtYmlkYnR4VDN1?=
 =?utf-8?B?VWlrSGM4a1JicXVIVWg1SXdTcFphSlJ2WEorUW5QWmFVWGMvalNmWDZ4YnhI?=
 =?utf-8?B?QUIyanJMSHBuYUNCaHMrSHFSQWROdjdFTHZBWStGejBiMVJRb0RkUUZRMXdS?=
 =?utf-8?B?bTRJalRMdXVIeDFRWXhDZGNXK0kwcFNZSE8vc2FrUGFGeXdkVWlweUYwR1hH?=
 =?utf-8?B?MXJtRDZyOFhrdzUvNEx1QUNaMEdtOFY3NFFPTFFHS3plK1lmYzBEcVpOVDlh?=
 =?utf-8?B?Qm9PU0RzWFNwTzIwajk1dGtkUS9UOEQ2aWFTYWxRd21qOFBXUmxyKzhjSklN?=
 =?utf-8?B?dGx3dUptNFNCQnJiZmZaMDBaZ3JvM3paWjNIcmpSUlNLUnRSUUgyc1NWZ0hv?=
 =?utf-8?B?YldJSFVsT2Zpd0F5bnRUdTJTckVFeXZzWnUwUGpHZDNxMnJBU1BLeUE3Nk5n?=
 =?utf-8?B?SHFrU0RyTkRXNEp6R0tJNEV6N0E4Zm8rdjFzL2dycGdNTjkzNktUWDQxUlB5?=
 =?utf-8?B?SGFScmYxZE9xVjJWNnVzNXVEMDU5eU5JUGVQNTBLazJ6WGRUenhqSEpwZkdH?=
 =?utf-8?B?cjJGR003N1BDdUxjNEdvR2tFQ0c2eHk2dmNIaTcxcU14VXI3UTN5WkJIQ3BE?=
 =?utf-8?B?Um91eGxReDU1VE43SHZ0clNKbVdrVTIxQnhoWUFFMktLd0NualNRdzlYUnN0?=
 =?utf-8?B?V3lGRHdlOHJFRGxWaitWbkdNWEhRPT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.59;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	/ov7+FYuHOimYNevsgRhQO7QVG8yMiBS5urVg6bhMFTNBgWygt8omrDrRRQODbLQBfIDMQv1j88SngMSpT2tshJ7XWbqr77EP8q68CkYkGLy+b6BuV1MPm8rJi7uNyKLMRU1ITfZPalVf08adqz4Gd9/Xe/kCE3PlGFo/4RGtp4AYfv8ikZ7rMZVa7/D8XvLTukyaDN2guXPCM/LUzVkrac4tGkx1Fg+geT5krm5y4W4JKwxvtnJzaBbj31pkeDkNNi8p7tZsoXlnhG8SHKaRK36i9bZS5tSZy3LfWkFSt46ZCYfwEpHWFHAozmxgjzy9VrZdw5CjnFerdY1RnCzjtSUpAU7m9/3LfTAx7pSHiTeCODYSYaORSzYNMYCssQFnA0m0kZ+yzA7NTRPyynN9w/Mfi2XmUUseD4SsozodXczxUytEVCPljlZfHkPQjyo
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 15:49:31.3814
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ec06a2e0-6067-4a1c-89ed-08de73bc4cea
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.59];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF000001B5.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR10MB8357
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
	TAGGED_FROM(0.00)[bounces-267968-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[foss.st.com:mid,foss.st.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,st.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alain.volmat@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[foss.st.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: A7AA8189629
X-Rspamd-Action: no action

This series perform various improvements in STM32MP1x and
STM32MP2x i2c nodes, including:
  - usage of exti interrupt controller in order to allow
    wakeup-source
  - enabling of dma mode
  - addition of boards i2c node

Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
---
Alain Volmat (8):
      ARM: dts: stm32: update i2c nodes interrupt/dma in stm32mp151
      ARM: dts: stm32: update i2c nodes interrupt/wakeup-source in stm32mp131
      arm64: dts: st: update i2c nodes interrupt/wakeup-source in stm32mp251
      arm64: dts: st: update i2c nodes interrupt/wakeup-source in stm32mp231
      arm64: dts: st: add i2c2 pinmux nodes in stm32mp25-pinctrl.dtsi
      arm64: dts: st: disable DMA usage for i2c on stm32mp257f-ev1
      arm64: dts: st: describe i2c2 / i2c8 on stm32mp257f-dk
      arm64: dts: st: describe i2c2 / i2c8 on stm32mp235f-dk

Olivier Moysan (1):
      ARM: dts: stm32: remove i2c dma properties in stm32mp157c-ev1

 arch/arm/boot/dts/st/stm32mp131.dtsi          | 25 +++++++++-------
 arch/arm/boot/dts/st/stm32mp151.dtsi          | 42 +++++++++++++++++++--------
 arch/arm/boot/dts/st/stm32mp157c-ev1.dts      |  4 +++
 arch/arm64/boot/dts/st/stm32mp231.dtsi        | 12 +++++---
 arch/arm64/boot/dts/st/stm32mp235f-dk.dts     | 26 +++++++++++++++++
 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 17 +++++++++++
 arch/arm64/boot/dts/st/stm32mp251.dtsi        | 24 ++++++++++-----
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts     | 26 +++++++++++++++++
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts    |  6 ++++
 9 files changed, 148 insertions(+), 34 deletions(-)
---
base-commit: 291f393298f72091490dfa70ab4a0ebdbb4c7d7e
change-id: 20260224-stm32-i2c-dt-updates-418a40f03734

Best regards,
-- 
Alain Volmat <alain.volmat@foss.st.com>


