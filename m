Return-Path: <devicetree+bounces-263033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL5KEdudhGmI3wMAu9opvQ
	(envelope-from <devicetree+bounces-263033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:40:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FEEF3697
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:40:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7DB68302EA9B
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 890DD23EA90;
	Thu,  5 Feb 2026 13:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="YfbcUZfZ"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012018.outbound.protection.outlook.com [52.101.66.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8077235063;
	Thu,  5 Feb 2026 13:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.18
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770298791; cv=fail; b=kufJGNTCvqnvQhMoY8vA9n1vuPH2S8ZC6v2NbXKugn1SmukxUD2Dc+mAf2dWqz8ksAlXpv6cDepDYp+EBKwOirbrw1uWZx75kXjZLgRJXREqk946WdCDaPnhhCDjVBTDxH1ka+eK9HjL4hFW5/VqukuWduN+3d+g5nGuOrw6umo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770298791; c=relaxed/simple;
	bh=S/FHOi0vBCI4K/VEEHDJBeCUw5kB5Ti+a3rrVmMLhJY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=vBRCA6Gc6fwSN0UM8QcioEyusSxMMI7wRXxh0vW9E4YJ685GqEZQ20huHRnAoOUyQ8njbJjO1pFuU0iAi0DIvUMOJcyMHqD9A8gBc4T8iD+Pb6YHBIUNGFJq0VGmNuOWkbNWNHqppN7ybKs0pqTo4ggVdJCbL06AE/02dmDR058=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=YfbcUZfZ; arc=fail smtp.client-ip=52.101.66.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vVrfgf2FUoEY8XadUDbsTdzFuqTCC0RTJKHCHBsh/cgIDbPMKMYK3sMUEJHUvb2nHrYcBSB/+oLwe3tYwvA14Sreb0jN4yuI7iQaOXWhN3NOkeZRT+MjmJiIkGidRMGlxYXYhc40G7kiZofC195wmSAVVUrfmb7PmrME2hypb7eBq/N16ykmqaiEh+jSAiK/uOFXkh8zzCFtSf2pMvzuMEkg4iL4h0hbki5Rn7BJkPQMgxSun5m5Vs0CO7rxBeeIlakQXarVyim02aEg4iltb8jBOImAVaUTshiGjMMqOnIdRIjvjtki+fKauK5+uURbvQUtJRV6F3AGyL8qAc0aTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5yMYj7heeeY3DTm/i5+mszrXW9uxjaHmRAFhyWS097Y=;
 b=eV5CpUkZinB1P3lgmcBJ/3EDT/WY0iR7idotfuIuvSsZt8QDEjALGVtf0CZeydR0NGlvzOKCXeP6F4uc6os1Fml4DaZ5XQ9m6OCO30RRlK1T/hZRou9f/ltNlnz1aIhwRsIciGcsIvDB6ylZM7I11voiHcg/yX5gh5iFhNmHUKnsuqeAGvWki1FRzH8bVvDghes7gv0WZ2w0IDEJ7aq9MAjolwBlhWd8dBbiZcL6OHSy8SMk+i9IUd070yuz6FhJRG/Z0C//CU7xbmbxsf03lGmdF0/vIUTculd3xEnV9z+4dP1Hw0PmCUNoVq4lBVE6C4bJOrb5DdXJNGuWgv6+7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yMYj7heeeY3DTm/i5+mszrXW9uxjaHmRAFhyWS097Y=;
 b=YfbcUZfZhaeXK1BREuZ99d81jM3oOVtuB0Rlshc/QymtKxYGlElf8N/mYoHkfQ0mZCRtCrV536YWSmy+1FF7qkt+5f5HsJx9FGNEyoMilaHTxzjJDSh3w9LJiYNd2yBws/SkyCvBmQv9FyWHSZ+agZL7SzPVxA4cEAiqfE0ljeELo++NxF7OfVJO+Bchjjp87Og8LquQmYXDahf5Oes/tUqesQYn7GQj9/4YXW5ahlKtrHHgZlrsaQhWYJmrBHljhGkE5omIacxxHxkhKud9F95sj3EosBWqRAKcpJcyRq3HeZJAD379qPOcTuGyW8C5f9e37oGL5jsbID4GavK3Lg==
Received: from AM5PR0301CA0033.eurprd03.prod.outlook.com
 (2603:10a6:206:14::46) by VI2PR10MB9216.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:800:296::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Thu, 5 Feb
 2026 13:39:45 +0000
Received: from AMS0EPF00000194.eurprd05.prod.outlook.com
 (2603:10a6:206:14:cafe::7c) by AM5PR0301CA0033.outlook.office365.com
 (2603:10a6:206:14::46) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.14 via Frontend Transport; Thu,
 5 Feb 2026 13:39:47 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 AMS0EPF00000194.mail.protection.outlook.com (10.167.16.214) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Thu, 5 Feb 2026 13:39:44 +0000
Received: from STKDAG1NODE1.st.com (10.75.128.132) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Thu, 5 Feb
 2026 14:41:24 +0100
Received: from localhost (10.252.13.241) by STKDAG1NODE1.st.com
 (10.75.128.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Thu, 5 Feb
 2026 14:39:44 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Date: Thu, 5 Feb 2026 14:39:41 +0100
Subject: [PATCH 2/3] arm64: dts: st: describe power supplies for
 stm32mp257f-dk board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260205-master-v1-2-fe6399aa3aab@foss.st.com>
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
X-MS-TrafficTypeDiagnostic: AMS0EPF00000194:EE_|VI2PR10MB9216:EE_
X-MS-Office365-Filtering-Correlation-Id: 70131cf8-396c-4e3c-83b6-08de64bc05e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?d1NSbWxMZ3NTbzl5MFk5bmJ3ZHJDWjQ4WU4yQlFSQ3RTZDcrWXhXN0Z0SUhZ?=
 =?utf-8?B?eis3M0xxYkJ3eWhVVEowS1ltQzRybGR0clVKQWNNMS9tU2ZJV3Z3ektBVllG?=
 =?utf-8?B?dmtZdEh0Y25FZ1dmaWhWZzROUlhuZU9VRU5RVTlpZlA0dGh0RjF2M0xCVXYv?=
 =?utf-8?B?WTRRdmFaN2RSYmNFY3lEZjNKMTl3RDJJanF6MFp5MFZSb1Z2bEZRTHI4QlFG?=
 =?utf-8?B?VkxYdTNZZnFiei8zTjNQRUpGbDFNZzg0K3BCa2R0TER4OUdHbDI3OTRYMTJu?=
 =?utf-8?B?Q0FTSnh4K1pDb2VUVjRqaWwybHh5d1R6T3NIVm5wdGs2ZGZrZS9FV3FHVkpl?=
 =?utf-8?B?Vm0waUp6Z05SSzBzcWllb2N1SHd2bkxCcHpOaXhrVzBLSWpYYUxuVHNCZUZJ?=
 =?utf-8?B?Z3FRblVmRTB4U0dDaFQrMFFNeDRVU1ZZNGZiSFhtNUZOVjkxMnNOR1RuUWta?=
 =?utf-8?B?RUNvV0VRdVN0dXk5Sjg2V1ptZGg3SDBDS2h3N3lUcWxDaVN6MzVNSGpWaFpl?=
 =?utf-8?B?VW83d0RMSUVjai9TSEd2NUVUK0MxMEx0UW5JZGo1b2RtV1FxRGg1ajN1OXlB?=
 =?utf-8?B?VkxZMlBMSmZta2tlK1cyQjFVZjM1OTB5NWJJaFl0TUxYZlUwK1RDRXVKRnNk?=
 =?utf-8?B?RzBaUXRMa1JIVDJtaWRMbk1HWWFXejFZR0JWbGFqQkhTWFk4TkhFYWhSZHA0?=
 =?utf-8?B?UXp5Rm1sbjhPLzI5aVliK2d1bHIwNDdyV2J0YXJjZjBLOURyL2NRMnhVZHkr?=
 =?utf-8?B?WS8zSlhiK0hOYzVQMGpSZ0NkaGMvZlk0VHdPbWJOVk1laEM4Qnl6Q2lYWFZ2?=
 =?utf-8?B?ZkZmM3ZWc245YXd5a0tPN3VnM1piYWVscFFCRzY2MnluaG9KOXVmOGZWUHNT?=
 =?utf-8?B?TmRWd2ZLYnJQQWdWaHhQSXhlNHZvaGFNMG1SRUkvaU8wUU1Qbk9mZ0JYL3B0?=
 =?utf-8?B?aFA0cXp2TTdMcGhBR0diaGZxdHl6U2VUL2pXNVNCbDhrajRVbVo4bXcybkR0?=
 =?utf-8?B?VzdqdjY0VVBCdVJGci8vUUtRWVU2NjhwV09ucU8wK0g3SlN0TjV1NHZqNjd4?=
 =?utf-8?B?YnRFWDA1dllNSVkzQmdmVVFnQTlPQk4zNkhpTUJTU0dRa2pKNVVmZmJEM0J3?=
 =?utf-8?B?SEI4WWc1T2dpRTRBUmhYNFhWZlF1ZUZEMDN1a29jckw3d0xHR0k1TFpEb3ls?=
 =?utf-8?B?Znk2WWZRdmVSWW5LQXZPYVhLdFZVbWJiNHJ0WmkyOGxUS1BzNjlQb2hndHhG?=
 =?utf-8?B?TG9TbFhKR1Bxd1lnTGJoUS9NUFMydUZmRmMrUEhQaVFMaXNZbkxvbGFudmJK?=
 =?utf-8?B?OHpJZisvS25xa0tWN1RLWG9OUFQ2d1Ira1FvUUZiWDNKcE9lTzBzc0pzR3ls?=
 =?utf-8?B?a3Nlc1RJMzlkM2V0Uisxa2FQLzhpa3A1VWY0dkdPalBqNlp0KzNwOElua1Ns?=
 =?utf-8?B?cWpnbnUyVzkwTHI2TUIyNnFLeHdHdjEydWJId01VSEc0T0NvYi90MTdWRHFN?=
 =?utf-8?B?dWlESmVEUXNucTVRT2RUZVRwd0FJRFZacFZDd3BXSFo1VFltd2dqQ3BadUFT?=
 =?utf-8?B?YzRKWmZXb1dyVy9SSWxXbGZIcTZocUptZ01QMnZXREFxZ3NTRFNYWjcrWWI0?=
 =?utf-8?B?VVB5eVgwdjRsZ1UwSVNFZ0lGQmJ4dGhsNi96Y1I5WVZCM2c1bGZGYlNwOFZm?=
 =?utf-8?B?SlRlOUJXOTZMWGZVdlMwZFJDaGhWWEZJZHZldFRBaEdtVnBVTHFZUGR5WUFS?=
 =?utf-8?B?Z1lGOG1WNG1mNkhaeHgweFdiYU9JSHJ2ZFI4ZWdOK2hXWjY0aUkvTlNVeDVK?=
 =?utf-8?B?d1VHdmpJQzZyL2VCQ2FEbDlKb3VvMHR1WTVqWEtSTWprR1hhMXFnZDhua1Za?=
 =?utf-8?B?dkp1ZmpOZ3lIUHBBY1dJUzVDVytXZ2JaWkEyM0FPZlJMWXdlOVNpSktkcjRt?=
 =?utf-8?B?VFAvTk9PdlNjQmd5RGNvL2NHa25LRklnTlAwOU01QlpFbDdCOXBWUkpyQU5r?=
 =?utf-8?B?elY2Y1Y1U0h2dEVGaWtqZDNmV3Y2OHBPaHZud2V0SUUzUzNFalJiRXlNczBQ?=
 =?utf-8?B?azYxVjRabEx1M2lFYW5oRzlsRzhQdTVlUTBOdHBVckdNQThVQ1RlRjdLWUFj?=
 =?utf-8?B?MnJ2OFFQaDJOa0lMUjhibHRRdHdtWGFPd0ZyMzFKeWpFVW9jWmw3OG1CWHg5?=
 =?utf-8?B?cmlHVEVLeDUzdUlLZFV2ZmtRNEtiSU5vSTFCYStHNFdPZDlhNkJMdUprL01F?=
 =?utf-8?B?S25xWUNMU2YxN3p5aHppcXJtb0t3PT0=?=
X-Forefront-Antispam-Report:
	CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	Tf+9rp41ceaIP+Zm396Y7CJ2IIz0hEvo2F00yj+zF71aZi9y0xBvOvFFsjek6EBpgw0stvsFhL9ZMiOdNj/xBciIPqexjhm+vPgTo6M6qKMi7PE1V4MW/4DbAnOSd12lTqWLNOuW65Ida6KO0pLypq5r4y9qisAUcNKvliBb3JR7CbqogFvdhgMl/nvIiiBpb06G/rzyjNrxbTAcVQOCgiKf1qzYgOo4d80uBwj5kDl8d7Rspiy3T7HXssljJN0XqAnuG9at5SSAittMH4t3Kxqo/G5OruoXHkJbgeGnHGtnyBR4/KGJmnKVykse5S1IYsqdnPkNPf4AhfvoBB5lOvy/zDg/x94BksbLVGDwoEUor7q3gJILCjCRK6BJbSmUt3QdL9OJMNWwLksyYnsVj/ZTi3xw2B/N/Pc4elNpSgN2WRi3jzvo5HDDcZi2orOG
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 13:39:44.7822
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 70131cf8-396c-4e3c-83b6-08de64bc05e4
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF00000194.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR10MB9216
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263033-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[foss.st.com,gmail.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[st.com:email,foss.st.com:mid,foss.st.com:dkim,0.0.0.0:email,0.0.0.21:email,0.0.0.23:email,0.0.0.18:email,0.0.0.22:email,0.0.0.20:email,0.0.0.11:email,0.0.0.14:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.16:email];
	FROM_NEQ_ENVFROM(0.00)[raphael.gallais-pou@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[foss.st.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[regulator.0.0.0.21:query timed out];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 06FEEF3697
X-Rspamd-Action: no action

Describe power supplies for stm32mp257f-dk board.

Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
---
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
index e718d888ce21b6f124331543c09c1e66e6304964..4e45562ceb3dabb19eca3340337b364f63508215 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
@@ -105,6 +105,34 @@ scmi_vddio1: regulator@0 {
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <3300000>;
 	};
+	scmi_vddcore: regulator@11 {
+		reg = <VOLTD_SCMI_STPMIC2_BUCK2>;
+		regulator-name = "vddcore";
+	};
+	scmi_v1v8: regulator@14 {
+		reg = <VOLTD_SCMI_STPMIC2_BUCK5>;
+		regulator-name = "v1v8";
+	};
+	scmi_v3v3: regulator@16 {
+		reg = <VOLTD_SCMI_STPMIC2_BUCK7>;
+		regulator-name = "v3v3";
+	};
+	scmi_vdd_emmc: regulator@18 {
+		reg = <VOLTD_SCMI_STPMIC2_LDO2>;
+		regulator-name = "vdd_emmc";
+	};
+	scmi_vdd3v3_usb: regulator@20 {
+		reg = <VOLTD_SCMI_STPMIC2_LDO4>;
+		regulator-name = "vdd3v3_usb";
+	};
+	scmi_v5v_hdmi: regulator@21 {
+		reg = <VOLTD_SCMI_STPMIC2_LDO5>;
+		regulator-name = "v5v_hdmi";
+	};
+	scmi_v5v_vconn: regulator@22 {
+		reg = <VOLTD_SCMI_STPMIC2_LDO6>;
+		regulator-name = "v5v_vconn";
+	};
 	scmi_vdd_sdcard: regulator@23 {
 		reg = <VOLTD_SCMI_STPMIC2_LDO7>;
 		regulator-name = "vdd_sdcard";

-- 
2.43.0


