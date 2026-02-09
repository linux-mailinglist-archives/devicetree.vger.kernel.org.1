Return-Path: <devicetree+bounces-264047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CETjIHD3iWl7FAAAu9opvQ
	(envelope-from <devicetree+bounces-264047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:04:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A47C011177B
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:04:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D474302BEF1
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 15:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A61337E2F2;
	Mon,  9 Feb 2026 15:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="M6GX6kiy"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013043.outbound.protection.outlook.com [52.101.83.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210DC37E2ED;
	Mon,  9 Feb 2026 15:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770649273; cv=fail; b=lcaF7/XwRg3oXe1orcM+5NvEpPUPXmkAZxA+3yDuWSfmx8mAiw0jnKYBLKxvtVdx75K31ylRC7BqxjaKTMgy1rj/aAsHcGt0pd0zqn1Ei+qj6TA/CyDUpi6636z8dvFbhyjRzxZa0pGTKDrpil0/x06ttbjvEIyuG0Vc5bNInyA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770649273; c=relaxed/simple;
	bh=KKGd7dSJK2J3S48d4WxHnHIgdgi+ezXldcZkGWy5zps=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=dRldP7SzWMzLaPyZwcvRQ9hUv5ncfm7curBQVIRXGy8G3da2UbA0O8dz+ma/DtG4aCF/hs/UAf+S/TrRHz9a37MxrgwPCACXRG5lsn9ZEzyJ+r7S9wfHeJsDzVv7YOOM0ulpzWWWfUMYzLHsamnxJShjLF/IK4tHRp7J2wAzV1w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=M6GX6kiy; arc=fail smtp.client-ip=52.101.83.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IBYdNz4iupYBUdANLPQzOLIlZoymqwJpq2V7CQ0KoGK5bu6Faoa1BHFv2L8Mx5HaZsA6M/0ly69yKk0vh0YO0hsbBz9i1dIIanIPQMyYrq9o+F/dIXr7AvT9BxvvBNXltrEPleY/uahTY9KvIyjFyvs8PznGjg5PCdU9oVUnOFQ9w/VICFVnZ+gwkbVLTqM+9MKiyBM1pl/5dEWrK20MK85/Y2sAu3ZUSLfhBtEfGfyhb39h6kzAY+K2vYjR1jQjjKj1iEnWL08qQt3pY8WlVnKWCipjAyANY4KmX9t89H/ARK4ytt7J3qgDWNfD5DD2OS2uN070EZlp9R1y0Tz3Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r2ZH+1InPOkhPV4isG/wM71yGay/lZvL2jsoHve5S/Y=;
 b=y+SV80U7Zs2GASjNw1XMymUPe88WIFou8ncSWGq1Z9j8Rf+wQtpc92EkblouBJy+LAwmj5WJ5kTXlb90x3ZXnMgKvMKNyPpP+m4rGoVgFZCe5tV0AkhaLPmLzrRoWyaIQ2hxQfqw4UjDjoGJCbAdO405UUeeHfnmKrNuX/mQklm8684ARE9+JggCTFVhdvIxYxPIKk42STw8TOpwHfbOvs+a68VVIhdwm3jSPBqljZnl1v9LPanU7ISBUzvnBInggOUIMrSZ3KjY6tVUxXtWtI3uU6NUX/+gE526z8bdjVzLy2UXiFlVWut046c6/CK0zIGBS7vMkWKgS62PSEtwCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r2ZH+1InPOkhPV4isG/wM71yGay/lZvL2jsoHve5S/Y=;
 b=M6GX6kiyHDQDY8+Q0Raax95FgIj5hruXhXCFkKYqNlHcgC0XfYDw5UJXgeUN1Mq8/HlqYLcs0ernXi5XG91wRavuT2M1rZIeswuO9UPMqxwQQ8vpQ/Zqf7rEQ2WP49JwZ2+EEEyCf/sXBQYg8jBUbK0SyxulSBQjTxMPzk23+cDD0u63t9bG4paVmN5BeYYZS8EGl7BLPDnU6dwdmI7oLtG1RuHaAF+Zex4P5r5IET8gp5toywIs/bjsU+EGb1oQQ42qpWr4mWzDANpLBIQKDqCoxryQfCh3Z/SPudUHDEd3jFVIkh+OmUtVTL9q/ikY1Rn8iKE59PqJkpQxyC1I/Q==
Received: from DUZPR01CA0012.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::14) by PAWPR10MB7343.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:2ee::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 15:01:09 +0000
Received: from DB1PEPF000509F4.eurprd02.prod.outlook.com
 (2603:10a6:10:3c3:cafe::11) by DUZPR01CA0012.outlook.office365.com
 (2603:10a6:10:3c3::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.18 via Frontend Transport; Mon,
 9 Feb 2026 15:01:05 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 DB1PEPF000509F4.mail.protection.outlook.com (10.167.242.150) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Mon, 9 Feb 2026 15:01:08 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Mon, 9 Feb
 2026 16:02:49 +0100
Received: from localhost (10.48.86.212) by STKDAG1NODE2.st.com (10.75.128.133)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Mon, 9 Feb
 2026 16:01:08 +0100
From: Gatien Chevallier <gatien.chevallier@foss.st.com>
Date: Mon, 9 Feb 2026 15:59:37 +0100
Subject: [PATCH 7/7] arm64: dts: st: enable all RISAB instances on the
 stm32mp235f-dk board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260209-stm32_risab-v1-7-ef0b2b6a7e0a@foss.st.com>
References: <20260209-stm32_risab-v1-0-ef0b2b6a7e0a@foss.st.com>
In-Reply-To: <20260209-stm32_risab-v1-0-ef0b2b6a7e0a@foss.st.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	Gatien Chevallier <gatien.chevallier@foss.st.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: STKCAS1NODE1.st.com (10.75.128.134) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509F4:EE_|PAWPR10MB7343:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ea6912f-2964-4758-15da-08de67ec0ea5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MExmRjFhRmxjTzczL0NqcFNRRHRLeGViVDg2T3ZoUmZScHB1akVEZGtOY2Z6?=
 =?utf-8?B?aTlwUDIzb3krZ1hZcGl5blhidTA4Q2hnNHdZbEdDUFNWWmx0WkFzZERQMVFT?=
 =?utf-8?B?dndMQit4M201UGtPekIwd3pRcjVSVk13RzNYMXhwYmVGb2JuMFFYb0pQVGQz?=
 =?utf-8?B?S3dVRFd0dUo1OUttL0xSVS9Lc0c4VHdXM3NkZ3lzSW5MSmRkamtVWU9nODMr?=
 =?utf-8?B?YXE3Q3FJR3k5UnBBeHpxVy9BREhFRUMvNncvZVBncnVVYjRYSy9QeFBZbWNv?=
 =?utf-8?B?aVEveHRNc3ZqS3oyTXZQaHo4YjNhTHowclkwd053akxrSC8zZlg2eklYYzBt?=
 =?utf-8?B?S085N0t3QnZYN0o2YkdYSFR3RWtNRW80NDJmZitpbDJzdGNWMW9QUC84U2lO?=
 =?utf-8?B?RE1kcnhwMiswRWxSNDVTKzI4Smdyb1ovNmNycW42SDRib3RLRjMwSit2bjZN?=
 =?utf-8?B?ZDhpbFRVd20xazk2dVpWd1podGRnNzRqM0szRmxiU3FlNktRZFpCQXlQTEtI?=
 =?utf-8?B?RVpZdU14aG9lYkxSQVBRZ29kU3hZSk1pRzc4TW12ZTIvTmc2bnZSZlM5TWQ4?=
 =?utf-8?B?SkFWenRWUU1BOU1MYXNDOWx1UFNWV2FQM2ovNFc5dElXN0ZrT3kvWGl0eUp2?=
 =?utf-8?B?WHBRUW9sRDFrYkZucEhaellZOHA0TU5sQkdoNS8vZVBLOVFYRExuQ1Vudkc3?=
 =?utf-8?B?YWdxR3E1Mi9mcDR2ZWRMMTVTZlRFdlJ3WWxmSzJZYk5FWjNzQlB2bUlBY1Ur?=
 =?utf-8?B?YkY2eThDRjI0a1JqYzBPY3N2V25pWXBQb3VHREE1V1lBQlVBVGNjdHVpMHhI?=
 =?utf-8?B?SGcxSUszaklOUUtVeThjTFI1ZnFqRjZ4L3R4TUJ2eStPR09NcnVObzFYcDlz?=
 =?utf-8?B?d0w1SkIrK29PUU96WUs2RUg3cDFseUlRaCtiOW4rMml6NHYzNFR1b251aXVX?=
 =?utf-8?B?RzdtUk56UGhaYlFaejNDUmpMZnNiUHhUQVR5WC9VT3NMTGh4OXBOZzhmbVFa?=
 =?utf-8?B?ek5EQTFvOWJHNWJRdlV1V2lmanhqeGNhNnZOK2ttTUp0Y3ByQkE0QWIreUJu?=
 =?utf-8?B?REJjRVlOMDMyQWluaHBxQlpTKzlndE5OY1dwNW5JblNiVFVMMVBvWE5CV3FC?=
 =?utf-8?B?ZWtNK3RDRUdJd3VEMXZEUXk2QzhIK3E3dFZNS2RBdUJuT3phK0xJNmZrVEJF?=
 =?utf-8?B?VFljYzhXcS9UZGVCMmJMcWlpdVVnaUdhaHFBT2E1VkxVbHlSZ3EzTEZ3WWR4?=
 =?utf-8?B?amk5S1c5YnJtZ2lFdytyU3BVTTVJNUxqWlBISjBuSVlqZ2VKU3JNL1hxcVpX?=
 =?utf-8?B?TU1tWWV2dmhkSkhiSmRjMUw3eVZOSHFJOU1SdzdVdVNEWExZMi9jbkNOVEs2?=
 =?utf-8?B?SmpaYWZQNmp5NmIreEZpKzhSdUlFUDNNYzZTK3dBSk1PSXl5Uk0xeUxUeUs4?=
 =?utf-8?B?aFR5R0hzc2R1S2hFZzh1SVJMVnJQYlVVK3o0ODA3bDV5SzZmZXA0V1BTbXcx?=
 =?utf-8?B?ZDA5d1JxNnQyT3JyVzVtOEFzcFg5RHNWdCsvSHZ2djM5cEdrRmp4SVBWNWZm?=
 =?utf-8?B?Q3I0THRUaGNFUFR6aGNwRmVraG5IdEVOOUU5MUpYOEVuMU1icFhGWmhpN0xE?=
 =?utf-8?B?UnlzcFUwYUJVMFNFVFhyTFpQVWNkVXJ2azZPanVYUGx6SnF2Rms0aXpZdCtW?=
 =?utf-8?B?QmtQd0FPRGtNbXZpRStWY00xV2t6MlVOVTBraHhTcTJOOUIyS2pONkR6Q2Nx?=
 =?utf-8?B?Znd6SFBaeElHcENLVGRoNXVhZUN1VEYyZ2FldUFZazlKSjhsUGhjMHk4cStw?=
 =?utf-8?B?cEtlMStDRDE2SDloUTc3blRkTmxlcDJNUjlEZlRqWnJUUmlZdmJvc2lLb3BY?=
 =?utf-8?B?L0R1V1BvSTQxbWpOdEh3bk9aODlBY0FrOFFKQ2dVSUFPZmNiSXpKakZWaTgv?=
 =?utf-8?B?M1lhb3FQcitQR1pGa3V3MjhXbExVUGtFNE8vUWpXdGU5QllabWJQN0NUeEFN?=
 =?utf-8?B?UjhsakY2SkVmeWdIa1RtT3kxUncrK3ltU1FhRnlJUDNOblpWTGlvdVBsa3Qx?=
 =?utf-8?B?Nk40Q2JaOEpMS0tNK0V5R0M3L0dTamI5Sk0waU5PN1BwallMWmM3V1UvVzY1?=
 =?utf-8?B?UE1jQXl5MDEzcEhRNVAzOURwNS9MM1ZDWEJlSFNWRE02TnYvdWgwNlNpRExo?=
 =?utf-8?B?ODI5NGlzWjJNWGwxMEp6ek1UMyttTHZBQTBtS2hmWTFDRFhML3FiTWtUbTZN?=
 =?utf-8?B?T2N1czRyYVJOcjlRZHo0ZHc4OFV3PT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	8Dwr80HdurO/G8+yg6Yq6uRgWdvVDlmKnLcBJye4lUwXinrDILN9BHnHv7QuCCbtqlUY0CwuGsBolvghV3ZIO2264GUwVrbeTIt9X2tmzqVoDIrABMoqUlU72RMt/pZeh76NBit25t2uzL2bQ8efRjGyeQpzQXnfLDofRZVOC+8Ga+pB0Dcnzl3dKhfeGcHB1flGcl86N8NREc2kGyVdygRhVUXXSpkxKQ5+GpHqPDnelV1tZeDsknNyEaqNwpHp2YeXrZpcFC5TOIZI7CCDoV0ldynejsriMmsm46xpt09B1FbFHq8a7IDaJO3MUezCMt1gBJgOmgf7JmFvE+nfPYkn1wjEnPkWu7KOhJzxmLeWrt3a5i6wi71Zwlip8Xz5MEUPJLCEiQXq1txaqSYn77uRFIYI0In/jjNXBfesvj9P4wVsQUaLvqTFOSO1d3RX
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 15:01:08.7736
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ea6912f-2964-4758-15da-08de67ec0ea5
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF000509F4.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR10MB7343
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
	TAGGED_FROM(0.00)[bounces-264047-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.1:email,foss.st.com:mid,foss.st.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,st.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gatien.chevallier@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[foss.st.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: A47C011177B
X-Rspamd-Action: no action

To be able to dump the RISAB configurations, enable all RISAB instances
on the stm32mp235f-dk board.

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---
 arch/arm64/boot/dts/st/stm32mp235f-dk.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp235f-dk.dts b/arch/arm64/boot/dts/st/stm32mp235f-dk.dts
index c3e688068223..b76549b9f64b 100644
--- a/arch/arm64/boot/dts/st/stm32mp235f-dk.dts
+++ b/arch/arm64/boot/dts/st/stm32mp235f-dk.dts
@@ -100,6 +100,30 @@ phy1_eth1: ethernet-phy@1 {
 	};
 };
 
+&risab1 {
+	status = "okay";
+};
+
+&risab2 {
+	status = "okay";
+};
+
+&risab3 {
+	status = "okay";
+};
+
+&risab4 {
+	status = "okay";
+};
+
+&risab5 {
+	status = "okay";
+};
+
+&risab6 {
+	status = "okay";
+};
+
 &scmi_regu {
 	scmi_vddio1: regulator@0 {
 		regulator-min-microvolt = <1800000>;

-- 
2.43.0


