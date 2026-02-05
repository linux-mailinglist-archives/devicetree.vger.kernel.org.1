Return-Path: <devicetree+bounces-263098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLxPAlzOhGk45QMAu9opvQ
	(envelope-from <devicetree+bounces-263098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:07:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 19108F5A92
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:07:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4703C300515F
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9046436361;
	Thu,  5 Feb 2026 17:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="a8djLbSQ"
X-Original-To: devicetree@vger.kernel.org
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010001.outbound.protection.outlook.com [52.101.56.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3CEF22173D;
	Thu,  5 Feb 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.56.1
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770311254; cv=fail; b=Oure91AuXRSP14G0PODN2qCu8Rf9tXXWzNKsvHepEsDnNI8Xfcl0H7Fncdzh/C0IH9ukBkCCY7mMb0Lsldavvl45If9/ltke/Pd8XiSWkSX5DIbZTJUqzZ5z3hZDQZwkyBoJ7KUv0tZiULgqMAL/6VmC2jzf4XpMhfu9NkZJiVg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770311254; c=relaxed/simple;
	bh=hrIwrdiGoQV2d/z72g+hG0yQ5kE0jyTjpS+TplCOZxk=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=p88cjrLXyEaO5C1TeeNNdvBMGbyaKZtwuHijhchpDLfKR2Vcqd6tGCbcm3nsuUeQYmIlbyH1mD79nHtfk6ggwpaC7lAkmWVwu2FaN8qsMzkHTjbm33RWSqq3QRwUaP8GZf6vABd9hRgyMY8Rg76iC7lFOt+ccbECbfi1mLiizfM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=a8djLbSQ; arc=fail smtp.client-ip=52.101.56.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uCILrg23ITnlwZF1560Gvysn3bUOtTz09NLXu/wYZWTSk9TDJApCgozYRPqWf26/1RnB43vaonuMgrhfckFJiRUJ9jIpVRY3hWa/49fMyMi8HjaEZgTu0zwU2vnCGu7ZsxjwLaLNCgFWlcqUJ0pI/et2RDH4VDs42ywAep1/DQj0L45izN1pwNwDDfmZe/zY626fEPf1t3rdlmHhGGbhcrB8mVC4PeBUZqnSvUkwdDCHMzXeCM1WWx1gzcKJDo1cGFM5TTZTRc2K68yDASctYOlgijY53FULGt1dZJuiEjBsUCoWBmphJO8yfI4TUuwynMQBzoULpjCxkqyW2wKvdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fQLfE3urf7kWhoMDTVQdy2c70RrVrqnxGSLKKw+TcqI=;
 b=Ck0a3vwT+YmB4zC8g+21JPLetmVJhP7tR8d1qEuhJHxfdD98o2tBzwMyu8JnLkeJ3ttMakPyukvqqapTgUFsg3/IPzLTZE0az0CCadAWTsxYmIixgh/mXsT5UJnLksvy6XgLdWSpaAn7zKqGE9G8N1jYEQDGD9HG3Lxu6cE+MyhhPl8up8rbH7aAQxb0+qLALyz67BvLH31+yQjbffT1jfmAoqDZ/Q7UtigCr9Dh8wqTuqGzhMEg/JtXvhf7oqWZFcBRQ7sOBaUFC3//tnW4MtZSsfuynYdoiBOr59OsjAQH178PnuFAAJ6KoHc9NfO1qC1zd67rkSPwQDLxYl0hRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fQLfE3urf7kWhoMDTVQdy2c70RrVrqnxGSLKKw+TcqI=;
 b=a8djLbSQqVRPwjqg/v6bU6t4LcpNGeb3HF5NUfVp0INHpWZfqbwbUhMUbqurRYA4HePVFmDb2ovg3nyocltvV8v/oVdd0sn5C9ejMYzmZOwMzuAakZV6AaVoJ/VIwnBwQ1LD5IrNDeamHjixOeZFPCbAUk8QdRqXPFHIb5ITSKQ=
Received: from BL1PR13CA0355.namprd13.prod.outlook.com (2603:10b6:208:2c6::30)
 by IA0PR10MB6916.namprd10.prod.outlook.com (2603:10b6:208:430::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Thu, 5 Feb
 2026 17:07:29 +0000
Received: from BL6PEPF00020E64.namprd04.prod.outlook.com
 (2603:10b6:208:2c6:cafe::65) by BL1PR13CA0355.outlook.office365.com
 (2603:10b6:208:2c6::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.15 via Frontend Transport; Thu,
 5 Feb 2026 17:07:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 BL6PEPF00020E64.mail.protection.outlook.com (10.167.249.25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Thu, 5 Feb 2026 17:07:28 +0000
Received: from DFLE206.ent.ti.com (10.64.6.64) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 5 Feb
 2026 11:07:19 -0600
Received: from DFLE215.ent.ti.com (10.64.6.73) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 5 Feb
 2026 11:07:19 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE215.ent.ti.com
 (10.64.6.73) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 5 Feb 2026 11:07:19 -0600
Received: from [128.247.81.105] (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 615H7J9n3354993;
	Thu, 5 Feb 2026 11:07:19 -0600
Message-ID: <fcfcd3fb-2eac-4865-98f3-ef2ae24381bb@ti.com>
Date: Thu, 5 Feb 2026 11:07:19 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt Trigger
To: Francesco Dolcini <francesco@dolcini.it>, Vitor Soares <ivitro@gmail.com>
CC: Markus Schneider-Pargmann <msp@baylibre.com>, Alexander Sverdlin
	<alexander.sverdlin@gmail.com>, Vishal Mahaveer <vishalm@ti.com>, "Kevin
 Hilman" <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, Sebin Francis
	<sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, Akashdeep Kaur
	<a-kaur@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	<linux-kernel@vger.kernel.org>, Nishanth Menon <nm@ti.com>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
References: <20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
 <c47697b4-6ebb-4af9-be96-c964d990835d@ti.com>
 <DFO764ES0FNP.1SUQK9R0EUUDQ@baylibre.com>
 <1a91fd40-e814-4b4c-8914-d8f0c4768e07@ti.com>
 <DG59D7WGM35A.1WNIIMNCQ8U3C@baylibre.com>
 <7ae7f6a1-0ee1-4d56-b1d0-f038a7d22b4c@ti.com>
 <20260205072439.GA4548@francesco-nb>
Content-Language: en-US
From: Judith Mendez <jm@ti.com>
In-Reply-To: <20260205072439.GA4548@francesco-nb>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF00020E64:EE_|IA0PR10MB6916:EE_
X-MS-Office365-Filtering-Correlation-Id: c8b4e31e-77ff-4945-7d74-08de64d90b1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SkR4OStzS3dWTnZGTDFydXU3eFlDUVEyYkFvYmV0enlEay9Eb0JPN3h4UFc0?=
 =?utf-8?B?TThIWGlnYkVIdVlTbGNBRmFMSWxGVEJuTzY2S09pNDhlVFNXUFFxZXRnMlJ1?=
 =?utf-8?B?QjZTVDZWTlUxK2YzcUxudHdaTUZHRkgwRWkzenRCUktSdXIyTnBpMXFDWTQ4?=
 =?utf-8?B?NjdoUzM5dFZDYk11VmpTQTd1OXR4aWE2RmZiMjJZVThIcFVGWm9vVWZIL1pC?=
 =?utf-8?B?QktjVU90cUw2anh2MHFQWTRqTnNRNTJ3OEtwbjJRa0hVNGEyRGZUdEJEcS8r?=
 =?utf-8?B?TnRoUkIyaEZjZFVNM1Q3V1QrcGZkMU5OZXFxKzEyaDN4Sm9WOUQ2NlUxQmdK?=
 =?utf-8?B?Z1NDZ1VXOHJvSjlzOXZxeEF6SFlzQXlFQUhzTWdvbUxzZHB6MFBCa2hLb2dS?=
 =?utf-8?B?Q3pFVFNxVndQc0prRS9DT0JQL0paL3BaRkJJWEMxTlBnR3NRVTBuaDFLaUJl?=
 =?utf-8?B?SGRsdGtOb3FnN0Q2ZjVHQlFubEVCMUtlTGt2a3pPNFlZNitJNUYrMSszTjEw?=
 =?utf-8?B?dFl6aFpVUkdmeWVUTTlnUEE0T1dBcjVtNUg0RzVhMDZueDF5MHg3dVMwOXV2?=
 =?utf-8?B?djMzenI3bjV3Qzl6Q3BEOGc0T0hqWTRYdm53MzlUNzRJQ0Z6MWZCQk1IdVlE?=
 =?utf-8?B?ZlJQaXVnRzZYRHd4YXBvYlN0NGUxZm05S29yVk9vR3FvQ0tGVGxDTm9iSDBM?=
 =?utf-8?B?b3N1bnVkaXVWR2hRUkJIU29kZ2xScTUvYXA5aWJkSHdiQXowa21QUDE3eE96?=
 =?utf-8?B?QkxVUzBkSzZ4bXN6VWlOaDhySmNnTlJFYlFBYVRhMVFYR2diWkpXbWRvM3lC?=
 =?utf-8?B?aldFRkxac3NEMlVGaTNVS3NaNGF4L29CQXhuaUxNeHFRdmg4clM0Y2M1Qy9i?=
 =?utf-8?B?Z3BvTTFydkdZYnBwS081SG5vcEZENUczbzgrZXpEb3F3WGxDWEkrbHJSWmZ5?=
 =?utf-8?B?WjAyK2JCQy9sbFF6dWwzVkVvNjBjYVZScURvenNvMlNSQ1YzWUdXQ01GTUli?=
 =?utf-8?B?WnNLOFZSbE1BTjVOZ1VtYjJWOEo4UE5CYUFxRFIxTlRYUVhJVzV5NnM4R0Za?=
 =?utf-8?B?d25JQkRSSEdvR3Y0cjU3SXozZUozVU1XTnJSRFk3aUh0ODExL3NmdmdBNkNL?=
 =?utf-8?B?eTAyOHZtVzBCRW8vZGFpQTRxS2s5TlJZMzBEKzhxZzNpTUZRVHVQOGFCNDhS?=
 =?utf-8?B?dk00NlhrVnBvM1hnQ1d6b2xQWTF2d1hnRlF1ZDFucFNOZ2lLUVM1cUF5aUZS?=
 =?utf-8?B?TjYzb2ptL2llVHZKaEMwUEV4UkRYdFVoclJHM0JsSmJQZk94eU43VmFkb1Jn?=
 =?utf-8?B?cy9CYk4zM3lnLytHNWlZbERTaTdjY0RXK0V5OFhiM05iQ09kc1hoeTVhQmRI?=
 =?utf-8?B?RFlaSlhoQ3dNVlcxQjZiMGZnMnhmUG53UmZwbFBySWl5WnJURERCN3FpTHJx?=
 =?utf-8?B?K0VGemFSdDcxN2lWVzVpTkxhMU5FNWtyYTlxTVNVeHQzNXcxMjBWRDRZVC9v?=
 =?utf-8?B?V1J5cVZXT082Q2l1T2w3R3VKOUtGTjlyMEVwZWM2Vnd6QjR6eStKakFVMEs3?=
 =?utf-8?B?R0lUNXFkZVlmMlJ0R2tES25aRWhRUm5UeFdZeDRlS3ZuaHkxNXBLSmhLWEYx?=
 =?utf-8?B?d21hZVE0ZkJCa3poUGF5ZWxVYlkyaVdDSzR4SkxIdjBQY0Y2NWhPUy9EOXBy?=
 =?utf-8?B?N24vWjVEN05XV3UyNTRpME1ZazJiMjhibTVoSEhhMlRLNCtmNlA4SzR1TEdp?=
 =?utf-8?B?enFCVjB3OEJkdHZzbUxJYTE0Wks3NEZrd2tSWURYVmRUdnE5QTVnWk1ubEdS?=
 =?utf-8?B?dDB1Yi9nRE41NTVzNEZSeWN2aDZsdVlzdUFMSXVvV0VRMlluOHAwSjRvNnpt?=
 =?utf-8?B?eTl1NGJ6QjJhcE9nb280dk44VWpZajFCSzZOZnVwbDRNS2lkZS9ac3Z3QVN1?=
 =?utf-8?B?Q0tLeWNONmNEcW1ZUkE5S1FHa3NrTStMWGtQaGxpWG9NYkNWVHVmczcrY1BN?=
 =?utf-8?B?WTUxSVYyWXJFZXpQaTFRYkd0WFM1YnNpZWwxR2hGUENLU1B2Sk1ySXREaGdE?=
 =?utf-8?B?NFZSTzlRZkpSeklKK2taWUdZZjVrZjFJVEVyZ2hHMHNDblRiMzg2cEpaS0xP?=
 =?utf-8?B?R3BnWStmMTNoMDBvVEZ5RnU5UE90YmRDRkdHeWV6K3M3aUVvYWhIMG9ZakVB?=
 =?utf-8?Q?F7zoYFasEQwDEZFaG0Rwpfk=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(1800799024)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	wjEqAABtYvgC2lOl1GmyjjrxWcVGwpdpy8RHOrE65Pe8eIRI1rK47H47W+iNKEH1+x+LpnYOHVN0M+6xIHpYr60kwd5KGoOXD4+vS7974z0jh931YK2p7OJiB7WD47zIFjE/SYDQJeYWrTAJILXHuwDILZz4fu6clBGBWFZ8z7eDlvVKQ5M9Qqq+YT9DwBR8cVfNSy1rAH56W5nHaVW9oZw23/K9l3e1OEqbVfnNuARLWAH1YDM4TVoquDwuNyqxrXKJS6b5rS2bopkSJ52Hm3H25PxPw/cn53caxUVtPPgU32zllhLGmFXxnRm5yPCvqSY7+5ticS8wH0XYyJCcVEadDFdQVIrDfBK9Bva6jB6ScVRgLb21Bp8TYN53kVsnVNQsNh9IwiqfCo9FRnJg8MJN03OliM5UtwW3XP+gX5rsSlw62dYoTouLbIgXSjUg
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 17:07:28.8966
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c8b4e31e-77ff-4945-7d74-08de64d90b1a
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF00020E64.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6916
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263098-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ti.com:dkim,ti.com:url,ti.com:mid];
	FREEMAIL_TO(0.00)[dolcini.it,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,ti.com,lists.infradead.org,vger.kernel.org,kernel.org];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 19108F5A92
X-Rspamd-Action: no action

Hi Fransesco,

On 2/5/26 1:24 AM, Francesco Dolcini wrote:
> Hello Judith,
> 
> On Wed, Feb 04, 2026 at 08:03:39PM -0600, Judith Mendez wrote:
>> On 2/3/26 4:35 AM, Markus Schneider-Pargmann wrote:
>>> On Wed Jan 14, 2026 at 11:04 PM CET, Judith Mendez wrote:
>>>> On 1/14/26 3:16 AM, Markus Schneider-Pargmann wrote:
>>>>> On Tue Jan 13, 2026 at 1:29 AM CET, Judith Mendez wrote:
>>>>>> On 1/6/26 10:22 AM, Markus Schneider-Pargmann (TI.com) wrote:
>>>>>>> Remove Schmitt Trigger from mmc pins. With Schmitt Trigger enabled
>>>>>>> u-boot SPL is not able to read u-boot from mmc:
>>>>>>>
>>>>>>>         Trying to boot from MMC2
>>>>>>>         Error reading cluster
>>>>>>>         spl_load_image_fat: error reading image u-boot.img, err - -22
>>>>>>>         Error: -22
>>>>>>>         SPL: Unsupported Boot Device!
>>>>>>>         SPL: failed to boot from all boot devices
>>>>>>>         ### ERROR ### Please RESET the board ###
>>>>>>>
>>>>>>> I bisected this issue between u-boot v2025.10 and v2026.01 and found the
>>>>>>> devicetree merge to be the problem. At a closer look I found the
>>>>>>> k3-pinctrl.h changes. Disabling the Schmitt Trigger fixes the u-boot SPL
>>>>>>> failure to read from mmc.
>>>>>>
>>>>>> I have tested 4 AM62A SK boards and I cannot replicate the issue
>>>>>> you are seeing. I do not see an issue with Schmitt Trigger in U-boot
>>>>>> nor Linux /:
>>>>>
>>>>> Thanks for testing.
>>>>>
>>>>>> Can you please run a quick tap sweep on MMC1 and MMC0 interfaces like
>>>>>> so? https://gist.github.com/jmenti/f4a73a8323e44bf717c6d2c528c499ca
>>>>>>
>>>>>> This will give me an idea if whether we should be talking about
>>>>>> revisiting characterization with ST_ENA=1.
>>>>>
>>>>> The patch was a bit broken, but I think I managed to apply it to
>>>>> v2026.01 as it was supposed to be. (master currently doesn't boot even
>>>>> SPL, I don't have time right now to debug that).
>>>>
>>>> as Nishanth, mentioned, master is missing two patches [0][1]
>>>>
>>>>>
>>>>> I attached the boot log. It does boot with your patch. Also can this be
>>>>> an issue with different SD cards?
>>>>
>>>> Something does not quite add up,
>>>>
>>>> Can you try the following 2 commands?
>>>>
>>>> # mmc dev 1
>>>> # md.w 0xfa0810c
>>>
>>> Finally here is the output from boot and executing these commands. I am
>>> now on v2026.04-rc1 with your sweep patch.
>>
>> Thanks for sending over the tap sweep. I compiled a comparison table
>> here to show a bit of data for the u-boot tuning step:
>> https://gist.github.com/jmenti/5d42f1e43fb357083eaa813cfee484a8
>>
>> Based on the data I can conclude the following:
>> 1. you seem to have more errors than I do
>> 2. there seems to be an issue with the chosen final tap setting
>> 3. the chosen final tap setting should still have worked for you
>> but did not.
>>
>> For #2, something in the tuning results seems off so let me investigate
>> this on my end and Ill get back.
>> For #3, will have to discuss this internally & test a couple more things,
>> then come back with more information.
>>
>> Meanwhile, I am interested to see what are the tap sweep results for the
>> failing Verdin board, if those can be sent as well, that would be great
>> info.
> 
> Verdin is now booting fine. The boot failure was related to other U-Boot
> bugs (as Nishanth mentioned) that are now fixed.

Good to know, that isolates the issue to only one board.

Thanks.

~ Judith

