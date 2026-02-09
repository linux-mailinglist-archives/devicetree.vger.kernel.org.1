Return-Path: <devicetree+bounces-264045-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPOmDUn3iWl7FAAAu9opvQ
	(envelope-from <devicetree+bounces-264045-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:03:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA37111717
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:03:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B02D1301C602
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 15:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2DB737D118;
	Mon,  9 Feb 2026 15:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="YwZdmVqo"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011019.outbound.protection.outlook.com [52.101.70.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD3837BE75;
	Mon,  9 Feb 2026 15:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.19
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770649256; cv=fail; b=oEyDLGKdEPrgYxrMz40bLRowtdv3KcAFQ3lY7hfQ+Wt6XjtBBXwkn0zeulLz1pq+/ZT5iPNDlQrvfycoRUy60ggzYJP6z6SLteeZS2fVwBxKtj7J2k23cvO/cX4TRvaSaWdsnzyZdCtQz8vlBB1/j2xzQAmgy0kyDdJSIYobSHs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770649256; c=relaxed/simple;
	bh=Q8aa5QQ266QeKahLVX8qW8VjrdCwhvW7v/g4yepqIyI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=NK1VU9lVobv6vfDj+Xc4faTw2UwD7AP4tp9Z/lqCRaESucsmzFFMwpxLPVxN1Sh23YdQ0ctZjHhUSPoLDCdvuYCN/8+W2kcPqF/Jq6OP3N0aMkpz/bRnfzhyoy0n5rz+cysloFGb1NW+/ABf4ksOhXwpay2JfBv3uStaR9mogEY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=YwZdmVqo; arc=fail smtp.client-ip=52.101.70.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yhq321vDUM4jJBCMiRQmmsYm3C8MA6cXLXgQnbZGMjg+cHG8nXKMtFWq5952Fnp5119tvVfjnjcDkNBUxmzwPCSFjYm33ahsvfxXJlarWPWvVTNkOngZh5mruDmO+XJC2QXx3hh+Jd+9q0sdynnKzL3OyBSGZ8m9J2WWN/XQn63qeME1kOApRM2rbHAwgMioM18yYGxfDP/BLrhHg9sTrrEmXie9IrRfQhILFGTGdvKc/Al3bLK9DeQxKSKntrwW3qepL1PKfF47ezcknIa4hDpvw/gwqj+2He/Awu3JGZie07taoFOnTgkN51LslJM8ruNXzxiIjFULmxf5ssP3zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=47+ONjsoN5DBXWAxqxRGIi3sBX85pIgWPLUDR9isXMs=;
 b=vXBAhHePmHT24oSQSCT+pgpomxKX+hHuRdQt2lOUOytAxxZnsgvkuwlEtTJ/I5oT9/bZk/WohHcPWUzyvS0uXY6S2xpeD2b1QCGOmwq4UwXWXDjipBDMip0mdPuKgtObKjSuBL+hbAUPXJlSCHfsaKyqmh4iOfHOklmSjjh3frb9QXSID2ZqnCkZQFO0T+6tgwrLgMGn8CK1V0Ml1dHD66/7pDoOQExf61M4m09RY2/n3mbbLEDFmZtYQ1TMmou/aqx5Ro9Y7jEbfzBGdgXdBKTTyCv2nXHKgHdlAKVkOdDsXgTVJEVI9SSsWx5/CIFHOC7EwGLLBVluNfJNzC2e4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=47+ONjsoN5DBXWAxqxRGIi3sBX85pIgWPLUDR9isXMs=;
 b=YwZdmVqo4Z/YUba0xrEf9ajx5LcD3wwGWhBBd9u5FWtcJ/1qnDp7Ip03k9kir8ut/vIYcr0jGPKbpKxm57heqpcuteOTa27iF3pMUftuPQUQpbg3l1yH/aUcm0jVW6VlD88POWELhDSvGYwQtLQVWHWE1zTZpQDohZf7ypmObOH7MBECWJVYqxGaF7qRdVW2X7o4jg0VAQ1T600LLc4XO2gKvyXoHGCS/qUqkHUcl3H4209nrQuNdSryyqPSLfpAM/FIGIMGwuzwzyICoC0baNS1xLCINGgRULovUxRYMMlGicfRbe841HU0eprhPiLTexz0hGtw8MM/IK7ETyElKA==
Received: from DU6P191CA0017.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:540::28)
 by PAWPR10MB7152.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:2f1::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 15:00:50 +0000
Received: from DB1PEPF000509F2.eurprd02.prod.outlook.com
 (2603:10a6:10:540:cafe::90) by DU6P191CA0017.outlook.office365.com
 (2603:10a6:10:540::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.19 via Frontend Transport; Mon,
 9 Feb 2026 15:00:39 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 DB1PEPF000509F2.mail.protection.outlook.com (10.167.242.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Mon, 9 Feb 2026 15:00:48 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Mon, 9 Feb
 2026 16:02:28 +0100
Received: from localhost (10.48.86.212) by STKDAG1NODE2.st.com (10.75.128.133)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Mon, 9 Feb
 2026 16:00:46 +0100
From: Gatien Chevallier <gatien.chevallier@foss.st.com>
Date: Mon, 9 Feb 2026 15:59:35 +0100
Subject: [PATCH 5/7] arm64: dts: st: enable all RISAB instances on the
 stm32mp257f-ev1 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260209-stm32_risab-v1-5-ef0b2b6a7e0a@foss.st.com>
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
X-MS-TrafficTypeDiagnostic: DB1PEPF000509F2:EE_|PAWPR10MB7152:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cda8d90-f23d-4224-51f4-08de67ec028b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Z0VOTFBVTHptbGRVTkhzQUtrZ0c0M2xiaWQ2WUJia2I1cHpmdFlWZ3lscm9w?=
 =?utf-8?B?MUZxcExrQXFhUkhaNFNxQWxkU1BMUlRlVnVhV1F0ZjZDNUJFb1h4eGRBalRz?=
 =?utf-8?B?aXRrRXNVaU9QNC9iUVNQK1BaZXJLRXdUTWZqWjhRaGJTTjFUb3FOdlZnL21p?=
 =?utf-8?B?VXdnZS9mWU9pL1VnRWErWTNTOUg5NUZmdEhQZ1R4eWhTbDVUOTVnZlRiZUk5?=
 =?utf-8?B?aU03N2MrSmdhUWZrYUd1SHhIUWo5K0FiVUhuNmJwelBpK1RjdS9aVUJmT054?=
 =?utf-8?B?aTdLR002R2tMaWlWY2k4ZFhLdWJrb0tab1ZSQzI1TVRnbnhRc2RWRDNTN0I2?=
 =?utf-8?B?OU4yTlNwOWFncGM0NndGNy93VDY5TnNBOGJSYmpYc2dkVDZrT3JsT3V3WVNk?=
 =?utf-8?B?enpjT25iamM2c2IrUDhLd005cXdrOVd5NmJSRlIzdjlXbEF3S0tVQm5Nb2NM?=
 =?utf-8?B?bUM3TEEyOVozMzlMeHFkZXpRaW81M2N0VjFGVDVidlpRbGkxaGdUcDEvd3Nj?=
 =?utf-8?B?RmlESGUxOThOT3R1YnpZRTBmVm0rRmNhTlNlbllXK05lakNkLzhsQmpZVzdY?=
 =?utf-8?B?VEJJd2h4cVhIRG9BaklyMzNMSktJWEpNbkRMMTA5cTdXNWZZanA5OVBLdCth?=
 =?utf-8?B?c09NdDhSRTQ1dnVWOGNqOERneHE4RWJzYnBydXZTd3JNaStCaXZ4NUUwTUth?=
 =?utf-8?B?SElaNlRUSlMwSVZkZzFCU2kyNnh0ZnNHcEFIWnFCeGQrUmpBa0ZhZHlUditU?=
 =?utf-8?B?aGFleTdGUjJVR0J5a3I4SVlvZWdPeFBIMDNRdEU2YS9ESGxpNm5Mem1NdTRF?=
 =?utf-8?B?Ym1LTnBvY0lLb0Raem5RdG9GUGRtdXdoNEZyMkF6bWdwRDUzOUl4RndGZ1py?=
 =?utf-8?B?N2VLRGNjcFdxQWswN3FRRCtrOE1sZWN4ZWNrSzNPY3VSeXV0QVZvNVY5dUR0?=
 =?utf-8?B?cnY0VlZZWktVVjNLMDJka1M1eTR5aTdhaGdnQmxWVnlGNlpzKzhzeW5YMG5C?=
 =?utf-8?B?UXVucXRPK3Y4eno1UHBWZ2huMUFKamdBRDJNd2pUUStjYkliVUJMbUNOQVly?=
 =?utf-8?B?Y1REeU1aMkw4Rm5ZdWxLK2NQclJzUk5lN1k3eVhyb0dyMUtuS0l3RmJuTjVz?=
 =?utf-8?B?b1ZJTWphUHYzekdNQ01wczYzRjRkSmhPbHN1M3pjMk9Qc0tGYjhjaHVScWZW?=
 =?utf-8?B?ajVxbkdYU21WbWlSc1M3RG1tU3VQdU04amlLTzBHSitJeHEvVDBVc3hudWVw?=
 =?utf-8?B?Z2E3UGtaeUlJS1pFVVRFLzMraUtaeHdFaTFnc0VLMCtoRyszOTZkajE0Q3dR?=
 =?utf-8?B?MG1LaWNEbituZHU1ZFhBckk0eW44ZDczbysvOGVpVElib0s4dEV3NWpGdG0y?=
 =?utf-8?B?ZlFhZ1ZRRTFQaWdrTjNqcDQ4R00zMnlleS92Y05XMUZZV1o3YVplYkYzZnQz?=
 =?utf-8?B?SzYvZll4bnY1NnRJZEIrY1hPSzVNOTVTSllvRmZ1ZjVzaHZjUmZkSXVKdXk1?=
 =?utf-8?B?SXRBUWtjL203UitiUjdvMzNjeTdLZ2FYUFFwd0J2dUswZTN5KzRGVGhwZmt3?=
 =?utf-8?B?dU81QUY3N1RZYVBMT3pYL0lnb0hNQnZmR2ZIdDBJWk95b01Wb282S2tiY3dw?=
 =?utf-8?B?bGdKdVRYRVBQWDdHK2wvam43RmdQVFhpSi9ONHNPc2s5aFQ1S0w2S1hNTE5W?=
 =?utf-8?B?SVBCLzZXdmkrY0JsYVNhTHhrZjY2QTg4Vng1WEZZU1RENG9yRUkrakhpWjR6?=
 =?utf-8?B?cmVhUnd1MHUwY2FWd0Rob0lxRlh6TXV1UEs1c1JqQXVock1LZkV1Vm82Rm9j?=
 =?utf-8?B?Y0JBTnlCTENSNDZFcE0yU0VUemM4REpUM1lJeklMOEM4bmRuYzk3M3VDclQy?=
 =?utf-8?B?MmswazVGVGpSN1prRE12NUppcUp3TFVkOHZWL2JHNFJrV0Q2b3BnV2tPUnhr?=
 =?utf-8?B?bEFjUEJPR3RHZXdRb3NOUUtCbmN5Q3h3TWVtYjVieWFaWkVObnJQNlY5Q0V4?=
 =?utf-8?B?L2dFZ013bko0cmlxT3JsN2JuQ21kRzNkSlN1b3YwMlYzZnBSbjUrK3YwczVp?=
 =?utf-8?B?QU0zVldKeTBod2lrREpIcFNkU2ZNSXJyZkVRU1ZsQzZFYjZ6RmpvYjdKQnN6?=
 =?utf-8?B?RXp6T05yYXZCNm9hQlhPcU1HdTRna1EvTmwwWkNKTDFucW5qZTl3UzNENkZO?=
 =?utf-8?B?UU53U3ljTlBwNHZCbVBqODhNQjRWWngvQ3drTDMyZ1UxZlErYVJ1WVdaVnZw?=
 =?utf-8?B?L0hsdlZxY2oreXZVK1dEdkJYSmxBPT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	j+4fWNYsspO0mbdthdQ6cV9K454nPcxz4bWjpxJ4U7jZQuMcRwZOohKf6g8W0VF4yUxZvUAcUKqWpJGCVdwU6QlgGUzcV2Wi+dbmDUEGO7cNC0H+f8/OiP/oc2SyVIDlasYrMD9dMAQWJ1YyNJtK6HDhiw4hTai7eNt7oaYOwdlOoRJ44Zjh3kOX4jl4yr9bztyq1BS186uJG/Ne6Z1vlqxyCOtPGXi7fLmdFcdHDi+gOVLU0c30TzQrkYAeCB5PulCHd9SBodkPInt65852aspukhuxWflru5/0apimL2cRlaSBKBatW/b3xIlyLJHD0PqG28xf6lKM5NfAquZ1AAH2m0K/IUhj8kfPoFh5/2ZSkTEL4qg72fAk+CkGoH2Wbqg7JTXagKe1uoPO8+wM5C6+QP9vhDeBqHmjbxQhkVLjSrNRo6wQK8kbB4SqvYUq
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 15:00:48.4656
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cda8d90-f23d-4224-51f4-08de67ec028b
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF000509F2.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR10MB7152
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264045-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[st.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,foss.st.com:mid,foss.st.com:dkim,0.0.0.0:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gatien.chevallier@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[foss.st.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 4EA37111717
X-Rspamd-Action: no action

To be able to dump the RISAB configurations, enable all RISAB instances
on the stm32mp257f-ev1 board.

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts b/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
index bb6d6393d2e4..973acea6d248 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
@@ -352,6 +352,30 @@ pcie@0,0 {
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
 &rtc {
 	status = "okay";
 };

-- 
2.43.0


