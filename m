Return-Path: <devicetree+bounces-263034-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNJsD8CdhGmI3wMAu9opvQ
	(envelope-from <devicetree+bounces-263034-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:40:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9253CF367A
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:40:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BDF2230074DB
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:40:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 123D725785D;
	Thu,  5 Feb 2026 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="f0ZlyuHd"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010020.outbound.protection.outlook.com [52.101.69.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9AE24A04A;
	Thu,  5 Feb 2026 13:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.20
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770298792; cv=fail; b=QIpIe26v256s/i56ENqNou9HOZXyiFogvs0l1NJn9eCXTXcGSAR+Me5jMSdd9LoWyzaXN9XrraWHS85Titbo3jK/e8Ntm5Q7RA+3reiZY5mSfhQ087hI7iW/GSj7figNgN5q8ociXKnhVRvdXNRvyY21rwRWksDbQ14NPNK84mg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770298792; c=relaxed/simple;
	bh=DG5qhx1+0ZUfqPlPC6eusDAQUxXl4arhmhNEf4c/r8M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=QN7vzme5rD0Kq9ig51D3V6HFILFV16yaoDft3Uh/kkvNk/Oqm5T4Mq7mpXJZW6Cl1KJETDPz+/7Q2Bc3dmXl4hgxZ33pA82ohFZForRJc7mUBcvg3As8tzng0nVktmneZt5/ZDv5u7wLNWWwS4kCyzyr5swh7LXMxbp/m7mpubc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=f0ZlyuHd; arc=fail smtp.client-ip=52.101.69.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T76qlxRRSXZjQ6GmohTWVRRDrP1BmB2+luLpPBXRuUoIx5+MO4wteaBFbRsJY3mXH0zdBg5/z9ct4lmesFybMFRlGtcaFNbVhZb8jxkeFpdr+5onoBLCZtao5f747HByVxTgcp7vst8MjfZPxolyXDlXDLli1DLbX5L/qp4bSHXiL4nTO4QOgipaJjv0JH8f313UrM9UBbYweTfca7gfoBbk+rE3TJpYAa4gUwR6ix+G6pbem8FKhuSkCNiLY4W+kJ9R2MioO65Hp9wd/JO3Mkykx2ggIqzZpoLD68HHqqkNEl8bKSD8Bl146BeZTzEuFt2/CmSdZOzmWGhS3PYOMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=24qQLZ352PBO129n2m6cbX/zIAwoDL3cfnb6804fFiI=;
 b=YoxZLtS0yErXln9qKbuwMTSDmJhzgYkOoI40GLAydQ/0rQJX6KJplSgYzKLaqPZ5ceXCDGCEdtwolQNXmF+nVQpXzWGrYTJynI1EgQKRjqmA2ia3OGUGZvMvzMBrwNcNvKod1SH2kqFExPNZkcvBNEtDJv56O2+jSRFmNd5FbAWRkOjbdHljX7djVu1YsWqxDbpu7L3GglsdzpdLwsk9DlXVJElgTCyHTUFX+KVBgxrEostvudOkFzADMPYHWCWN9WT15V8J1wga52ptktuGRTD9ZHTFspYRcWVYO3zb43LFB12MmfUbEqWc9NTRJ37sBMrAoIJVkhlWGGjyS2VBPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.59) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=24qQLZ352PBO129n2m6cbX/zIAwoDL3cfnb6804fFiI=;
 b=f0ZlyuHdaR3vMDIQfQXUv7+50a/Yi2Rn85viBWbiWNGJYdRpGzO9NuLHWHZXbA+pOjCJ1tIEKCxYNslAorpcdIz7NBrAW9WBDQIg7PBc5F2jgd7a0V9BsO6rvduceIiSgoNv477i6HYgVs1FfAJZVSJr8WTwgoQJ1jjpFAmHR0BhunWWFGET71yvzQoqKGBzBsUXON8OzdKmqw0d46ImASoe9Y1Kz97wsCSeDhNep5dbpN+q31mpTMIwhxMOt3KySJWT+ylU/tOGkljhVB2QXhsXn0Le0+Ofcq38qLEbOa7XkyeTg8Wsquhagkqd4gZCr2N83Ir+cZrgtWlqBHfh1Q==
Received: from DUZPR01CA0035.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:468::13) by AS2PR10MB6998.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:59a::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Thu, 5 Feb
 2026 13:39:46 +0000
Received: from DU2PEPF00028D07.eurprd03.prod.outlook.com
 (2603:10a6:10:468:cafe::2) by DUZPR01CA0035.outlook.office365.com
 (2603:10a6:10:468::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.16 via Frontend Transport; Thu,
 5 Feb 2026 13:39:54 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.59)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.59; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.59) by
 DU2PEPF00028D07.mail.protection.outlook.com (10.167.242.167) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Thu, 5 Feb 2026 13:39:46 +0000
Received: from STKDAG1NODE1.st.com (10.75.128.132) by smtpo365.st.com
 (10.250.44.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Thu, 5 Feb
 2026 14:41:33 +0100
Received: from localhost (10.252.13.241) by STKDAG1NODE1.st.com
 (10.75.128.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Thu, 5 Feb
 2026 14:39:45 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Date: Thu, 5 Feb 2026 14:39:42 +0100
Subject: [PATCH 3/3] arm64: dts: st: enable display support on
 stm32mp257f-dk board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260205-master-v1-3-fe6399aa3aab@foss.st.com>
References: <20260205-master-v1-0-fe6399aa3aab@foss.st.com>
In-Reply-To: <20260205-master-v1-0-fe6399aa3aab@foss.st.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>
CC: Philippe Cornu <philippe.cornu@foss.st.com>, Yannick Fertre
	<yannick.fertre@foss.st.com>, =?utf-8?q?Rapha=C3=ABl_Gallais-Pou?=
	<rgallaispou@gmail.com>, <devicetree@vger.kernel.org>,
	<linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: ENXCAS1NODE2.st.com (10.75.128.138) To STKDAG1NODE1.st.com
 (10.75.128.132)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PEPF00028D07:EE_|AS2PR10MB6998:EE_
X-MS-Office365-Filtering-Correlation-Id: 11bbdd30-5cfb-4d95-e0c2-08de64bc06ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MGlSVDVRbUo0ck12WEZEMVVLU0RQS011WCswYkttYUNsS1ovOUFVeHFaMXlX?=
 =?utf-8?B?WmtqT0I0dXdBUzdmSlZhbXhlbllPcDJjSnI3dHNGbkN0TEh2d2pWQTZNZ2Mz?=
 =?utf-8?B?elZRYU00SHpQbWJhV0pEZ2NrQlVoa082MDBERFhxY2VTYVNCRThSdVdUOEdT?=
 =?utf-8?B?WWpFdGNkbW1KODI3Unpid2s5WThjK2V4NVRsREJxU1pJaTUzdmdCeWF4TkR1?=
 =?utf-8?B?SFBRbExOZ0F1SUNoU3A4V01VNTllTGhDQlZBRjBjem45dVJFU28zTkpRSkFi?=
 =?utf-8?B?UVphUGVNU0t0LzN1aFlNKzBpaU1icyt5MUdUdGJXOGovOTNSS0JPWVMyOG9B?=
 =?utf-8?B?Y2VaM0xaRmVMc0U4ZVkzU2FUMldoVjlDSWVSMjJuRjRmeDg2VllkVHgvZ3hK?=
 =?utf-8?B?QlM1M01VMEZ5SXpSQjh1enVCbXIrUCs0Yng4WGxLY3Q0b0hiT2xibldTeDh2?=
 =?utf-8?B?N05ySEE4NXlVUHd4UjM0V2hHZFBzRThRcityVjFZcGpMWlZQV3E4b3gvdEhZ?=
 =?utf-8?B?TS9WZ1p4RUlDQ29lcnVSZjhpUmlXNUdNTFkybjJZT1FPVXFEU09GZ1d2S3Vm?=
 =?utf-8?B?ZEllbUx3c1dycmltcHZGbStDOGNDajEyaW82QTQrMTJBVEZjVTlLQ21Wd3lI?=
 =?utf-8?B?a05kM2toZjgzQmkvNkMzMi80cHVPWlVQeFJ2eGJ0b0pnT2ZzT2J0T2lXcVN1?=
 =?utf-8?B?WFJic1doOUNiRklmRGUxQ2VwWGsvTXhadWxUUzBxWXc4aUh1Zk45OEhFK1N4?=
 =?utf-8?B?Yy9OOFgzTk1tSjlJRFJ4Nk5SNFpIQTZ3dGdpZURGajQySWM1S0Vmb0FVWFVU?=
 =?utf-8?B?eTVGazVRaDI0V055YUhjcGxzSnhqS08yVGRCb0V2ZFhHTTFZWkMwQzBhM3p6?=
 =?utf-8?B?WEJ0dmtCeHpFem5mTDlYYi90RkppZE1nVVVTQ1UyRnZoWmVxV1VJcm5OWE5T?=
 =?utf-8?B?eHhZNmJNWE1zck9MRUI3UktjOFBnLytGVE5Sbi85Ny9RK2YzdVZzVXpBajFV?=
 =?utf-8?B?djBGZ3ZCUG9ic29pOUpSb25yNi9UbTUyOHZmMUowa0l5QS9US1cxVGN0elRp?=
 =?utf-8?B?djZ6TEJ0V01VbWdTTlkxS3V4Ty9vMFBodnFaYVFNV09EQ3lPdEFpY1JJeTRy?=
 =?utf-8?B?ajlMQU9UTGJZS0pZOTJRdEQ0Z0JNWWlIc3JnQXNENjdHbWZzbXZmWUpGak9x?=
 =?utf-8?B?ZkVIMUcvVXlFRXI2SkNaQmwrYXVKT2pvaWw0eThpdk54eFJoTkZjV1diTmE1?=
 =?utf-8?B?Tmgya3hmT1dCUmZ6bEpXYXFYSkpjcHhGTllTYXdxVURkV1Z4ZG1yZGo4d1Qy?=
 =?utf-8?B?SFV1ZGorLzNGQWg1MnB0RElUZGxwdjZzdWlxL2tLamFTdnA4Ly9PUk0vaWlT?=
 =?utf-8?B?am5QMzRyRStGbngvODJPUzFpOUtFTVE5d3l0MXpwTERPN3dicnNLSTMvcDBF?=
 =?utf-8?B?RE9mNkQ0QVpWcm5ZdmZDanRrdjQ4NUtqMFZjNkJXQ2xWcm9jZzdsV1JTaWt1?=
 =?utf-8?B?Vi9NY2FjMWJCRVJJckhSKytQQXJOMFB0cEhPbXNEd0hXbklOamNsWlg3dzhy?=
 =?utf-8?B?NDJLZFdwMDZuaEI0NVdSUjB2Wkp2ZjZzT0J4TUFlYjJLNnZUTlhIbVJ6dVUx?=
 =?utf-8?B?Lzdqb0g1bTdHNWYxZ05QU25wV01DUFlOek5MVVk5b2FuVUMrVTFlM0dpMjdr?=
 =?utf-8?B?bXVseGt6SjFLakc2ZG5jU3puaFphRXdLZDZUM3krQ3BnVjZYVHdiY2RVVGk5?=
 =?utf-8?B?NnlIRWtsbkFrTXdTTXNHRTNqWnc5WTlhT1lpSDI3QmhVTmZrdnJTTmZIRGRY?=
 =?utf-8?B?K3hzYmo0WUVibFNqbHBKSnVrODliTlc3dmhyekdoMmlYc05aU045YSs3QkEy?=
 =?utf-8?B?dmtqc2ZTcVZZVVcyU3dETEJudW9MNE9NRXQ2b2FpcjFOMUJlSjlzZXplL24x?=
 =?utf-8?B?a2JObWRCejVFMFRNaWtlY0lsb2ZHbWYzZS8yMUI4eEJjTzB4R2wzK3FFK3Zl?=
 =?utf-8?B?MitPUGhBU1VqTHhCTkxsMitsUDJUb1ZwRHord1lvTS9DUFFyTnNNR3JyTHlt?=
 =?utf-8?B?Z0NkSGlrRWh0N0hqTnoxK0FkWXJSU0JKSjlnWnpWTlJrc2lPOXBEN1R5b1pV?=
 =?utf-8?B?VHBLdGMyL2x2cjhvbE1XYk54SWhUc3lqendYMW9JdjN1Vk4rMnBYcERXRUtq?=
 =?utf-8?B?Q1grR3BRaS9wVkl5b3VzeURvMVNvRktVTTltVEJIZkFPUUxWSEZ5cDE5MG10?=
 =?utf-8?B?UUVtMjZxN3REd3NiOEVBNFIzYk53PT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.59;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	7l+9uo6YXrLleNu/DVC507TQIsYq09fdvMbfd7IvoW76qYevxs7+YALKXSZwOP+afXLgkkKcfPKk+9lWI/7ZSMLcXs9E1t373sf8rsqmI/6Ua9V30N12ULXU7WNI0Ocj/O4SqjwTwHFJvIwDGfbFxrKLujKj7I88Kw1T1tWUBvlqh1WG0MlkiSwW8CgI8Q3tNniQoscjhbj+ue1aOVMsIdEa/J2GZuHqWN3xvTG/MRNeHvEuJyXhdIixG/l/3Eai3vA4aCGTGIjbRaP92QtIhZwS0KM82fpIhZE0HANmtGmqwWE5GWYEF8lJLayXiSHIySmLT/9gZEiRldAApiWn5KkC1ZVG9Y7tQOWDuIMqwK1Um6hrFBj6mau5qjZC6N0ofYpOADLBktED+cOi6hfZGl2lOqyBiYIH0eELqhha1Lt6UUgfML0iM62DJi2iMIsS
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 13:39:46.0743
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 11bbdd30-5cfb-4d95-e0c2-08de64bc06ac
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.59];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DU2PEPF00028D07.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR10MB6998
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263034-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[foss.st.com:query timed out];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.1:email,foss.st.com:mid,foss.st.com:dkim,4.196.180.0:email,st.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[foss.st.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.41:email];
	FROM_NEQ_ENVFROM(0.00)[raphael.gallais-pou@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[foss.st.com,gmail.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9253CF367A
X-Rspamd-Action: no action

Enable the following IPs on stm32mp257f-dk in order to get display:
   * LTDC
   * LVDS
   * WSVGA LVDS panel (1024x600)
   * Panel LVDS backlight as GPIO backlight
   * ILI2511 i2c touchscreen

Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
---
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts | 90 +++++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
index 4e45562ceb3dabb19eca3340337b364f63508215..b60c13614cfb9207b8b541ee8bde4ae9aab937a8 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
@@ -55,6 +55,43 @@ led-blue {
 		};
 	};
 
+	panel_lvds: display {
+		compatible = "edt,etml0700z9ndha", "panel-lvds";
+		enable-gpios = <&gpioi 4 GPIO_ACTIVE_HIGH>;
+		backlight = <&panel_lvds_backlight>;
+		power-supply = <&scmi_v3v3>;
+		width-mm = <156>;
+		height-mm = <92>;
+		data-mapping = "vesa-24";
+		status = "okay";
+
+		panel-timing {
+			clock-frequency = <54000000>;
+			hactive = <1024>;
+			vactive = <600>;
+			hfront-porch = <150>;
+			hback-porch = <150>;
+			hsync-len = <21>;
+			vfront-porch = <24>;
+			vback-porch = <24>;
+			vsync-len = <21>;
+		};
+
+		port {
+			lvds_panel_in: endpoint {
+				remote-endpoint = <&lvds_out0>;
+			};
+		};
+	};
+
+	panel_lvds_backlight: backlight {
+		compatible = "gpio-backlight";
+		gpios = <&gpioi 4 GPIO_ACTIVE_HIGH>;
+		default-on;
+		status = "okay";
+	};
+
+
 	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x1 0x0>;
@@ -100,6 +137,59 @@ phy1_eth1: ethernet-phy@1 {
 	};
 };
 
+&i2c2 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c2_pins_b>;
+	pinctrl-1 = <&i2c2_sleep_pins_b>;
+	i2c-scl-rising-time-ns = <108>;
+	i2c-scl-falling-time-ns = <12>;
+	clock-frequency = <400000>;
+	status = "okay";
+	/* spare dmas for other usage */
+	/delete-property/dmas;
+	/delete-property/dma-names;
+
+	ili2511: ili2511@41 {
+		compatible = "ilitek,ili251x";
+		reg = <0x41>;
+		interrupt-parent = <&gpioi>;
+		interrupts = <6 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpioi 0 GPIO_ACTIVE_LOW>;
+		status = "okay";
+	};
+};
+
+&ltdc {
+	status = "okay";
+	port {
+		ltdc_ep0_out: endpoint {
+			remote-endpoint = <&lvds_in>;
+		};
+	};
+};
+
+&lvds {
+	status = "okay";
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			lvds_in: endpoint {
+				remote-endpoint = <&ltdc_ep0_out>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			lvds_out0: endpoint {
+				remote-endpoint = <&lvds_panel_in>;
+			};
+		};
+	};
+};
+
 &scmi_regu {
 	scmi_vddio1: regulator@0 {
 		regulator-min-microvolt = <1800000>;

-- 
2.43.0


