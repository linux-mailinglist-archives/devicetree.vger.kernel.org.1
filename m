Return-Path: <devicetree+bounces-316377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9PWcAqbtQGo4jgkAu9opvQ
	(envelope-from <devicetree+bounces-316377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 11:47:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 944876D3857
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 11:47:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=altera.com header.s=selector2 header.b=dKSh2zVx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316377-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-316377-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=altera.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 01E9C3002333
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 09:47:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 104603090F4;
	Sun, 28 Jun 2026 09:47:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012057.outbound.protection.outlook.com [52.101.53.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BB913B293
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 09:47:13 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782640034; cv=fail; b=mxgrbWElRsuPFBvu0vo9A0DxfVVZwjiEcj1VUdzaPkvrbSyT3ZhtZVJZ8pghAqQf+bT8cffIvBQAZ+vhS+VH9vtWLjfCPvAd6H33lM/KzpDbzAnUy8uC2C+kdUgZTwSG279qMpTWgT5lZTrOcP/NoLzpx/n3SGFijpWqejEMXlQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782640034; c=relaxed/simple;
	bh=X5uhV+SMMIw+8LZ2cCHak92nyU4pV/W8mm+5WNDWUsQ=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=OOStyG6oA578btepc3qL3JqCYgmiKFy6OrHI7wbKz+6Li85LfSZ/0biHZa0usUTYb4pNvBh67oebZA5wSoYjhQ6hloEQc3eMjd7Ti9UeY0KWxoa3nnPB1j+VhtErLd9PsQONS64sxwddSIVKQFYZrekfThlCzZyofQr0Tkr1dus=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=dKSh2zVx; arc=fail smtp.client-ip=52.101.53.57
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P4MFhzmBCfTdr87TYfVjD+tQvxDcpBcnTgRigoG+I1Xz0S/q+htwTjobi6Oqyz3y+w7ErrMUsv+Tf5HjiBen8JW0CAyq7AO6DqJLzWet81IQWXSAaOJVNu7qMJdvNlkOcpeOaaK0UVDdhyHTU9nCG/03kV1RbbcPYDfELCkKixzC5rIYXwLy919ecd6og/ar+xEVS7uXumKqOf4WE2Rai55oRKlSMaQn0LrnhYRy4JPcibZ8CxKG+cyXodZdGKdV5VerlR1fvh3QdyqI5HAI2gMiVCAJ8wyYkRX7hVDBcKK0mK3LRflgET8YUPiDx2Ha3FPiOaP9zPEUxwalTPnO7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z6RhbT27cudJAReHilpmV6ZGym5tcVJUs6teWcgugbA=;
 b=u7CSfV7tbAJBjBmrTRqciBBkyDQRGWWCY7a4K+OQ51Yp9+JWfvFx0mMH37h+6vHb+Uudo9/GKOb3mSTBaq+1EQtzCcXJjMczFnsUEpiY1h24PiQ7YIxfpCf6tpKkP35xnaM7X6ehJFbNtDSiZ40lQx0wlMVWE01mjagfYW2jsz64ZCTjb3AnckkUnWnCmhctklVkKJHkDS1NC/cXtZ3YJAIw89PzuxwMC0NijC+lBv0uHWKH7czftFPwPOQQoPNzqlIvKI8yzRAWiwS/QelAoj2f4ERGXoT0fUg87Wd229FHmwct3sNVZRrL2iop3uXVE1MGCXndJKC8A1zpRdALmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z6RhbT27cudJAReHilpmV6ZGym5tcVJUs6teWcgugbA=;
 b=dKSh2zVxBQE2HEsp7h46kkgzYGT6PHdfIpMuMBxSQw0Rm/IHu5n6mR9MFiCzWrKjD7kvFsGAg9nJmqbK3+5otUaFARdP45Xf5VuqeOyuYTWGDcw9+gZLmEnA5/E4fwvnGsFW5KNwCPsP7nTHF7W6I0xebie6GG8QwGD1u7Zx8Im8/KjAi8rEPuHVvh4YnSyASxuqHqf8llRaK//sRwjMrXVGHr2Z0ZAo5tyueneOnIMCVaCbpXHhrl8YdQaJ0MkstfeM8xBAd8Sy2HbManEaE7g2bXjtVMfTQ3c5xaiuPN7RVM29R4WCy4MhYm8wLumSZ1b1Z1hg2icrLZ/0yXDZHA==
Received: from BN9PR03MB6204.namprd03.prod.outlook.com (2603:10b6:408:101::21)
 by PH0PR03MB7113.namprd03.prod.outlook.com (2603:10b6:510:298::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.15; Sun, 28 Jun
 2026 09:47:09 +0000
Received: from BN9PR03MB6204.namprd03.prod.outlook.com
 ([fe80::47fd:71fd:88fe:6fe4]) by BN9PR03MB6204.namprd03.prod.outlook.com
 ([fe80::47fd:71fd:88fe:6fe4%5]) with mapi id 15.21.0159.018; Sun, 28 Jun 2026
 09:47:09 +0000
Message-ID: <e263a768-24d2-4529-bd8b-0068b9b87f8d@altera.com>
Date: Sun, 28 Jun 2026 15:16:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/9] dt-bindings: mmc: cdns,sdhci: add SD6HC support
 and PHY properties
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
References: <20260627201457.12318-1-tanmay.kathpalia@altera.com>
 <20260627201457.12318-3-tanmay.kathpalia@altera.com>
 <20260627202618.8C77D1F000E9@smtp.kernel.org>
Content-Language: en-US
From: "Kathpalia, Tanmay" <tanmay.kathpalia@altera.com>
In-Reply-To: <20260627202618.8C77D1F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0011.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:174::17) To DM4PR03MB6208.namprd03.prod.outlook.com
 (2603:10b6:5:39c::19)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR03MB6204:EE_|PH0PR03MB7113:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a60d06c-9f98-4065-1145-08ded4fa3729
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|23010399003|376014|55112099003|6133799003|18002099003|3023799007|22082099003|56012099006|5023799004|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info:
	8iZmeWdApOVBtSKLvq7sujGOUYI/PtsQEY0CIvnZBFp9bI0+nF/Gp74U+SIQqv18onxbuw1/Bs8xVpj/FXPoAsWKu3WEXUjPwKXajQF81klZx6ePXJ0cRHvLlB3qNkYiabGY+r73IluIgKeILkfk6PN9F2kCJFMHC3SpX9lzzYJm3cjYTX9wTiI4ev0q1gTeQTeIRN8BVpeLtSIH4vuPuEWsAk3k2d6i76qYtE64K1G6gxti/9Fl0QryZaGeY5cIoAeM5yM8WH6vl5M5iVvPYfseIic64sPu9nVHXWBOiSSQbNl4zi/gutVk6ZHz8QW9OLGOrayR/2gQtUl31vvJ4t/8j4NJWRJntYGKaognJKLDfOSm1OQl91QjSJmaLp8aR9WdIV/qjpY0KLzLP6PLe5TtiMoNHE+2G81Ie/AD3SW3oqvgunOVgZxoOqSvi1O9kotWo2srfzjEi3LmW2b77fMCVj9fZJvvud16+lhy2AwQtSrCpuz5y2XGmzYy1f6gqMtwMQinXfmo27U1d7Qd+hvTy7Uds642b1nYjSNG/PZvAN+yyUSh3SPPVMEB1xYxYNfkogBV2X/s/ioCP7n6E/wL5ptH6CKseaOHAN2+DDx2o7TscE+qGn0IPRsf62QumdkI4zhY2dnt41B9bvFuftffYSifea4xn/8o1D0F70w=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR03MB6204.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(55112099003)(6133799003)(18002099003)(3023799007)(22082099003)(56012099006)(5023799004)(11063799006)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SXgvQ21uS1JuOHBEcFhsVm5BQTROaHVFcG9kcExScDJNVm5QeW8vTm9hQ3NV?=
 =?utf-8?B?WlRrMngvMUltSXRscWxOaWFHK0Z4QzNBb1F1SVNoN216dmJ6QnVGaFcxeEsy?=
 =?utf-8?B?Z0VZbHVjMVZXbXlCeHNMU0dIMGMzTFdMVTZJYTd6eFZ4Y2Jha2J2c0ExUEo3?=
 =?utf-8?B?ZUlCdWdNNkZ3V0EzOEJZK1RUbkgwS0FleUtSUWZMdmp4L2hkMXcvcTNhSVBi?=
 =?utf-8?B?VURoM1J5WklLNG1VMVlLSnJFdXlHdURNbXRROXRGVDNZelJBZTUweUNHK3hS?=
 =?utf-8?B?ZFpaZitlc2U2b1d6MGFKWVlyem9WWnIzVGZsemo3Ly9vcFNRR0JneUc4OURp?=
 =?utf-8?B?SnBYRko1ai9hakIzQnd3SS96Q0ZIRTNEU3QzVXFwVVgwZS9qL0Y1a09CL3N4?=
 =?utf-8?B?bTF4bk5yejFsOHdPelZRVDE0b0IyaFNybkk5MndIWGZ5OC9KQUlPb0t1d0JY?=
 =?utf-8?B?bktJUDVCOUZpTmRpNUlXWllnWng0SnpyZ3hqUERTVkcwN29kNjhUWFl5TzFa?=
 =?utf-8?B?UW53ZVk0NTJsVytvYVNqUVVvTUI1VGtUSDZXMTdJNzNuNzVUa05MWlQwdnY2?=
 =?utf-8?B?SGxwcWJFeEk2QlFwNFpDTTRvOWlJamI1MXhvKzVsbmZsUU1LWTlXd0xOQzQr?=
 =?utf-8?B?NGVocGpsaWkyL2Z0VlhlSGRCTEErSzJKNW1lMlp0MWgrakt0dUYwRythZ1dP?=
 =?utf-8?B?cE5Jb3JWaGdLK0JkVHJvZXJTUWdzZEVOWkhJNEIrU0tWekdra20xZVlBbFpU?=
 =?utf-8?B?dmlYK0lzNXRmUG0ya1pRSm9IVDZtR0pQK1pPd1BBMDhjVVhXZ1VNN21tS1Jk?=
 =?utf-8?B?Zll4L1ZXWklrL3lYanNXOTdFV3U0cm51eXNHNytsTElncU9YSEk5Ry92czMy?=
 =?utf-8?B?aTBjb05RM1Q5RHBkWmxKcG40V051aWFoa2hEN2FFZjY5bXZwTG43TVdsZGtw?=
 =?utf-8?B?dzVYWjVGdnlEUElwYXpYQ1pVSGcyTU8wY3BLWVhkbVJwMDNMMG1HNXk1S2tm?=
 =?utf-8?B?eWY1Tk9Ec08vcXhRRm1nZHcvZ0dKMXRqTXN3OG5ORlJ1Nk5mc3Y3ak5XRllE?=
 =?utf-8?B?NkxNZllKZE5EenlkYmZzQzBjbWd5dHl1MHZIOU5rTWYrVHJzSmdzV2JrbVc4?=
 =?utf-8?B?NGlpTXBZejhBenB3aEc2V0tzREQvWjVSWm9FMExuangvNjllT1dYVUYxTlox?=
 =?utf-8?B?Zmc4QjRZd0VHQlExeE5BVjUyRE5NanNQODdJOExEOVNDeExsUUNLRTZPOVhi?=
 =?utf-8?B?S2V3eVJKN0RqN3FacTdBK3J3amRyV2VrQnRzVGFNbXRmaFFjcm16VWFXMmRu?=
 =?utf-8?B?R1BiRk9TSTg5UDJnaXA4d1hPVWx3VlpESUM1cGJoWmpUOXViRmN5US9aVGRP?=
 =?utf-8?B?TFQzRFRsUnZ6UkVCQkR5azJrc3FQd0hxOEF4S2I3SE9zSThGOTNTaTJNTDFm?=
 =?utf-8?B?R0N4RVhlNk1ybnN3UmI3bnRBZGFtQ1ZOTm9WQ3lyeVVzam5IMi8zSlBWN1Uw?=
 =?utf-8?B?dUlhQUNLd2I4SEJvaXRmVVlhQ2p3L2p4d0FIaWxjZEU2NGk5WWxhbFRBeTZL?=
 =?utf-8?B?L3g0c0dMd0xPU3h5VXBQVWhmL2RZSzJkdEVwd0loUmJNWnd4UmpaeldWSmpC?=
 =?utf-8?B?TjJCSCtLVDNjSzlqUUNnZFQ4ZlY2eTVTbE1QSmpOZG8zamFXcFlRNTFsWnBl?=
 =?utf-8?B?WUorK20rL2FhRUtXRlMyRnBRMkpUUXROWi9UTDU1OWJGQzlGK2tkR1d0Sm5W?=
 =?utf-8?B?NzZnUnFESGFsTzNrSWVCWFk2WndiQitPZ2NqZEh5STRhSE4wck9NOHYwYXdX?=
 =?utf-8?B?UEhYZWxSdkRxSUM3ei9vdDZKdmpid3dyTVdLNVBVYzVsckRBcGVlRGM2VmFz?=
 =?utf-8?B?bi82Y2pldU00emtPelVsdGhrWFVrTkFnbzJDMVF5bkEwT2pjeFh3UlFuQWtQ?=
 =?utf-8?B?QnRZYVd1Nlh2SzhLV0RieE92QlBmamEyakpCS2o3L1VRRG9YeDByVE5ldm1x?=
 =?utf-8?B?M1pYZ0R0SGxPbEJEYWJqOFZmUC9sRExLcHQvRFZYUmVLM3g0b09xN0dUekVy?=
 =?utf-8?B?dXlWczFTV2poOVl0Mkt1VXk2RFBEaXFzaGo3NUZ0RmpWbXYzaUorMnZDVFkr?=
 =?utf-8?B?RFo4S0hQVTJYVVhsaU1SWXZHSFdPaUF3UHR1TEdKcDR0U3Faa0VZQ3hFSHB2?=
 =?utf-8?B?WmZMYy9GdDRBYWwzc2xIV1pFZEJtNm9sek5qYzAzaTNZcTVxcmZUQ08zb1FB?=
 =?utf-8?B?T3lMVGo0ODB2aWE0dFNLVUgzckdHbGVHZXV1ZndTQ0p1UWcvUStGdktkakZ1?=
 =?utf-8?B?K2krbldEWHNhTGdmY1A2d1NXelhURWlwVWhZUS94RE5GQ1B1c2ZvMTN0Wm5V?=
 =?utf-8?Q?LVpfKBZdzDibmF1Y=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a60d06c-9f98-4065-1145-08ded4fa3729
X-MS-Exchange-CrossTenant-AuthSource: DM4PR03MB6208.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2026 09:47:09.0440
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RSiK3Ppj0+vG6ZCtMdQWxB3CKIFzcVwOcit1b5pXpjI71w4QlW+KHm9/A0R1pLLXKfEkuf5kFyK9PjcuYyV4g+AeqCAHbddRFXGT+gUCG8U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR03MB7113
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316377-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[tanmay.kathpalia@altera.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[altera.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tanmay.kathpalia@altera.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 944876D3857


On 6/28/2026 1:56 AM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] Device tree schema guideline violation: standard properties are defined solely within conditional blocks.
> --
>
> commit e277493647bd6915b90ee32b253e1cb7514a8c5f
> Author: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
>
> dt-bindings: mmc: cdns,sdhci: add SD6HC support and PHY properties
>
> Extend the Cadence SDHCI binding to support the sixth-generation SD6HC
> controller. Add the cdns,sd6hc and altr,agilex5-sd6hc compatible strings
> along with variant constraints.
>
>> diff --git a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
>> index 6c7317d13aa6c..edd96e1d2bdcd 100644
>> --- a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
>> +++ b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> [ ... ]
>
>> @@ -139,6 +168,77 @@ allOf:
>>           reg:
>>             maxItems: 1
>>   
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: cdns,sd6hc
>> +    then:
>> +      description: SD6HC variant - use IO-cell and delay element properties
>> +      properties:
>> +        clocks:
>> +          minItems: 2
>> +          maxItems: 2
>> +        clock-names:
>> +          items:
>> +            - const: ciu
>> +            - const: biu
>> +        dma-coherent: true
>> +        iommus:
>> +          maxItems: 1
> [Severity: Low]
> This isn't a bug, but should clock-names, dma-coherent, and iommus be
> declared in the top-level properties block instead of solely within this
> conditional?
>
> The dt-schema guidelines suggest defining properties with their broadest
> constraints at the top level rather than entirely within if:then blocks, to
> ensure proper documentation generation and tooling compatibility.

These properties are intentionally declared only within the if:/then:
block because they are exclusively valid for cdns,sd6hc hardware,
they are not applicable to cdns,sd4hc or other variants.

>
> [ ... ]
>
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: altr,agilex5-sd6hc
>> +    then:
>> +      properties:
>> +        resets:
>> +          minItems: 3
>> +          maxItems: 3
>> +        reset-names:
>> +          items:
>> +            - const: sdhc-reset
>> +            - const: combophy
>> +            - const: sdmmc-ocp
> [Severity: Low]
> Similar to the clock-names property, should reset-names also be declared at
> the top level rather than being exclusively defined in this conditional block?
Same reasoning as above - the three reset names (sdhc-reset,
combophy, sdmmc-ocp) are specific to the altr,agilex5-sd6hc
integration.

