Return-Path: <devicetree+bounces-109284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E41995ECC
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:09:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF3412864E3
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 05:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E522614D280;
	Wed,  9 Oct 2024 05:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=wolfvision.net header.i=@wolfvision.net header.b="eZXWaIRj"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2108.outbound.protection.outlook.com [40.107.22.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CCE2F46
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 05:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.22.108
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728450557; cv=fail; b=YXlLE61bxBoe34af45gBHQSA2wbYefT1nOB4ugCJBIRtzsbPIho5554k2GWEVPuyjWUkqV34cZ1RGn56I6pUJYK/krkaPe6POD5jndn95/NCXEShboL+ZYnVVq5zQAVGkSUVU+6aVGfP2j/XRil+icCrngMM2LGp0oAyDR/JsrE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728450557; c=relaxed/simple;
	bh=tFHmgSg93wUlNphRBnbfgVMfnUCiS+XL/APiyXVvskc=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=P9DeNbwRtxZhFH8bKol6t6nR2GNQzFrQQjX9EPdI/C2Ma7MT97DAeZPGcXTNGRs0QQ4oXmFbhaKTnonx/In70UTsnaUoajG3TnafMhBL2k3Fz/fWgw0MwOHIstp14AgmQUNmWp6C2ndxTgG5ohg5ihhvRahNTGyOOa8A1GQOyXY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wolfvision.net; spf=pass smtp.mailfrom=wolfvision.net; dkim=pass (1024-bit key) header.d=wolfvision.net header.i=@wolfvision.net header.b=eZXWaIRj; arc=fail smtp.client-ip=40.107.22.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wolfvision.net
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UH2k6MD6+16+bBhClzMf1LQ0XQ2uH81JLM1Zs70jwJCd1SSjAfnREAzPH+8fiU6g55n+l4fY1z7Nyy6ZLMpfc9qGHuOkjipwpdQ9vYRsIjwHsrH7tS2iVO97ifN7rolKRMkCKyrUNQ3gBh55VMS0PzCIqVdQltbxSMLBeh7fHtfa3qQK/9IuMkC05TEoPlT+PPXQ4/5taQTShqKhTQ4kWoORDaJkHEi/NgP+DQjojIIcMxkdVmOs9O5F2D8qnM01xFzVcbcxG07E2ThVGknbiT3VIcuEGqcyyG23OZJlKQBesve5DnXsnKzrvxcpwXXPibAWhUK+uhWVDw4JkHyRKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9YcalQVrTRKdO0XDaYsNu1P/V6Pwwr09IGoqqXSESPw=;
 b=NK9KB0bU2NiE5Pcnf9HqPcAdQK+MBglibIKLU1L3/1KxlC0XDKv5yxsyMLry5Kc1rzrw6rnwtZQ2m3SRxhXA0Vn1FunyUfHwqxzgO28eydxudFXE6AaQBS4k+dUA8rpIK4ic7+fATPkrsJj7B32flG4p3NEGk+DLCDjVveelbo4stu+WuJdLpqU6yjr5DDRqoV0xnfK+Rc8HfgrN680+U9YvIdizsqL1Mnsfx8f0F/hLHvx/uaIpyBvHrG4OWfyCW32Ca3LqPCEZtZaeShDkWrDnPDgTY9uTau/0PMfdlnawGyp2VB5xXFBaU6vBwUx698HUeAFmxVGh7DgNjVKSmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9YcalQVrTRKdO0XDaYsNu1P/V6Pwwr09IGoqqXSESPw=;
 b=eZXWaIRjxWhKA1ukKj4NlEz3NsEygd+rFfWxJ6TwZyN9127LMSC46TppAOnuVPgav23dulx6pvIugCFQYgGOowno4KVD59EIbBlqRwFmNdBn/0ff/vzUDQAJDD0y64a4IB8C2sHS6RRBturubv+WoIxmnquP/nKOH0IJI6yQUKI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AM8PR08MB6403.eurprd08.prod.outlook.com (2603:10a6:20b:355::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 05:09:13 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%4]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 05:09:12 +0000
Message-ID: <4b2fb95d-19df-4eb3-bb42-2f461610b2a3@wolfvision.net>
Date: Wed, 9 Oct 2024 07:09:10 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/14] arm64: dts: rockchip: Remove 'enable-active-low'
 from two boards
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Muhammed Efe Cetin <efectn@6tel.net>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-10-heiko@sntech.de>
Content-Language: en-US
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20241008203940.2573684-10-heiko@sntech.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0063.eurprd04.prod.outlook.com
 (2603:10a6:802:2::34) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AM8PR08MB6403:EE_
X-MS-Office365-Filtering-Correlation-Id: c37b8846-4b38-4218-447b-08dce82083aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eWdXVkxpeGRBenV4d2NpR0YrQ1JTWkViWXhUT0VQb1AwaGp1Ungza2U4OUox?=
 =?utf-8?B?c1N1QUIxby93SVpnTVpZNk5pbjBjNXl2QVRGSFZGZ3M5cTVvMm1YOEc4Z29v?=
 =?utf-8?B?RkJYTGVSb1NtTlhnQ2t0YzNFN01vWWsvWVllWHlMUitzT0NGNWtSWG9MbTJC?=
 =?utf-8?B?RUVWRzd1WUJydVVCUHFjclo2YkFucWZBS3ByWWtyT1UxUldVb1FSeXF4ajcr?=
 =?utf-8?B?TGNJKzMwbG1Xdk9YcjhIcGdyOGdXb25kZldmb2dac0hJMUFMYStvTXNLeXhs?=
 =?utf-8?B?aHY3eUZLS1g3WUpKdnBFVDhmQ1RGanFzTGVSVGxzUGpjRzcyVjJudXJFWFpm?=
 =?utf-8?B?MWdEZE44SWZEZGRYcDB2NXNYN1YwTTEvQ1lFZW41OUJCcEdNNFVOTlM5QTNR?=
 =?utf-8?B?Z24wNkh1aXd5TDVkV25uRVF6UGZqMEpjSnFnK3pVUlU3R2RtS0xBcUtGcnFJ?=
 =?utf-8?B?UmFZT3B3dlhHVVdLWnA5OTlwRkpyZWtMYUJqT2JqRXhMODNuVm5jS2Y0K0JB?=
 =?utf-8?B?NzVWVTRNN1NDTWxVZ0d0a1grRUhWRFdacDZpMk96cGJNMUwzd0dGN1BYUUtz?=
 =?utf-8?B?S3l1S0FXZUJ1K1lqc1ZUYmp1Q1JCbi9ra1ptL3VDM3FXeEV1N051aTF6RmQw?=
 =?utf-8?B?WElIVWozMHNDbnZQb0hldUc3MTRMRU5rbUcrQXF0U2V4N1BqaWcxQUQwM201?=
 =?utf-8?B?K2Y5MVZNWmJRcUNEcmRkVWQzU013Z2YzdUthMjh3OWJqNFFnQytoUFFZeWdF?=
 =?utf-8?B?RFJiSFJxczRkUjVsMlhvK1JUcWpvUDdqbW1PeEpCY2ZreVJHZjQxZXhHbm9I?=
 =?utf-8?B?QXpLdGV0Qkh6b0xUM0V0ZitpRTZLWndRZFZ4S2RCRms4UUZvenNqRk55MnJY?=
 =?utf-8?B?MGFWL2tkRytvd3hVQVY2dWRZdW5va2RKRFRHbE1SWlRlcHo3QlkvMi82UWt0?=
 =?utf-8?B?eW9nMEZORW9jSm40MDFwUEZ5Z3lXUDR6blNJVU0zK0RJbFF4Y2xSVlJzbjJK?=
 =?utf-8?B?cUtIZ0UrTnp6STlsREwrYm45aStjcE5ESlpYaW92MFRyalIrQW0rTHFPcW5x?=
 =?utf-8?B?emNGb1NnODRQNjFuRW93TGdqWmlnYzhyTEJGTFEvUFlhaWJHYkV1aStVOEND?=
 =?utf-8?B?MXlGWHlQcnNETmhDQ2sxSGM2S0YwZkJvQ3drcEo0bk12MmtVeDM2R3FaZ25i?=
 =?utf-8?B?dzcyS2cyYVNUSi9pSkRoQmloTXNXNEczbkY0dURpVnR0WFEvTWh0bjZmRE93?=
 =?utf-8?B?anR5ek5TUFRnS3pTaUtXQXFRYlphN0VPVkRCOGx6YXVadFFaelpvS3pUb2FD?=
 =?utf-8?B?WmhjN013WEdsTlMvTkExZy9YMU11NHFqTDlvNDdLVnVFY1BUTEdoR3l4Vjdn?=
 =?utf-8?B?YUU4eTd5QTFZTlZoSTRtRUtVVUtuMHkzTXg3b3lmRUsyaTlZV1RWV3VHZDFy?=
 =?utf-8?B?eXE3bTlKZjFXUmMyd0wraFF3ZUt1OUtYem05bE8ycVRWK0wzZjAxZ1dhemVC?=
 =?utf-8?B?eXhHcXRGdDJCSHkvRXlRaWxXUjVSOW00dFAyNXZTWDEzcSt1bWNka2t1YmtZ?=
 =?utf-8?B?NDVLM3BDZzI1WWJ6Q01QMXN1VFQycUpLK256b0pRdlpxREFCM2pzc0F2MkdP?=
 =?utf-8?B?NFI2dWo4OWxIUjhvcXRHcUFTVEVISFZySFVzbVFIZEg5dkVzK09NNElybVln?=
 =?utf-8?B?SVozWXZiM0lUTFlITjVRRmZUMXZ4V2tCYmtBcnJYenNYOEVYOFZKM3NBPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?V29INW1NMzlZVTM1TWN5Y2syb251dTdRWkdsY09idnFqVnJiZzJZZk1mMGFB?=
 =?utf-8?B?UjJlRWYyRlo0T0dscW9hN21GMWowTXY0Rm9iaDY5NndWVmdIblpNWTdXazg0?=
 =?utf-8?B?M0FnZThWT0t2VVdZT0k1Z3hraHJWalFENkNnMVZBZ2ZVYXFBNGIxZkVIeC9X?=
 =?utf-8?B?a2k4SXdibmd3Zi9SaUE4cWxhLzI0VE53dWRSZzA0OUROSzhrTTJZWHJxOTd4?=
 =?utf-8?B?Q1pEOXFFU0kxRGFpS0hpOUZrMnJ1STlIU3pTRWdtcWJ5S2MyeVNCOTVOZXhS?=
 =?utf-8?B?MXVoRlhEZk85bTVyd0JtQW84TFdRRndzcGJjWk5RV3pad3RJSEgrWnJaTVlu?=
 =?utf-8?B?Z2ZhYlpCYUlRbVk4ZXJrcGJJR1pIVVM4R3NGQU03WTJWbGJ2YjFMczNCVTRU?=
 =?utf-8?B?NnhXSXltWm1FNThCMy8vUXlWWVZMUERpamtzcHBVbDZyWmVZREJ5MzRCd3Jx?=
 =?utf-8?B?Y0IvTllIaGZXK0hGbCtFT05ZcWE5YWZ1cTZWQ01GQTFBQi9Zd2tpUVZUd1JQ?=
 =?utf-8?B?SURMM29HQVJhVkJxTmh1dUhDMkhlZjNab0hDOG9pSmpoWlVQVmVvZmszVnlR?=
 =?utf-8?B?UktwK1lhejVhL2RYZWhSREFPZkp6N0owaHVrNitmWVZXN2J5ZG9XUnJYRmhF?=
 =?utf-8?B?Q3E1U2h0QWJnUlNqbkY1T3V5bnVpSlg2V0pQOHFYcG96OW5Ta1RSbWNGZ0d0?=
 =?utf-8?B?eEd2R3ZpNzdSamZwZ3dzZXJuUU42UE1hRnpWOFkyTE5vTEQ2U25TbGhLSU5n?=
 =?utf-8?B?RDNrS3paZEwvRXZFSjNMaXlhdVl1WW9aZ1RWVnkwMmJBWXNYWk1qekNHNEtw?=
 =?utf-8?B?MVNLZ1E0K0I4MkhsRUlwVjNOSDNaZWJwZ3hpdGJUdGNvMWw2ZVdJdUtxNlJ2?=
 =?utf-8?B?WWVWa29JQ0l6WUVldXMvYTJib3Y0YUF3Y3k4VHdlTVA1NGhJVlg3UHZyZGQw?=
 =?utf-8?B?SDExQ0xtckxHRjFVUXNhajhzdHNiejhPRDNIbGVkQU40MjFEUmhpODNmNHBB?=
 =?utf-8?B?QUhlUHB6RDUzU0d3ck9lTTk2MUsrbzdIOUhHV0EzVUEzcGtwMjVMSTlqWC9q?=
 =?utf-8?B?d1F6bzAyd1hmRndFQkMyMHhZekxuaFZveENvWXpXYUc2SmFlbGlSajI0aDdr?=
 =?utf-8?B?SUJtMDBYbkRDRXQyNFRnLzhMZU9RNDA2REhEOUdNcVg4VXFuc0EwTDFnckZz?=
 =?utf-8?B?b0hwakROVUloWThFY0g1di94dG5CV2oyck9FWG1NWUR3MGk1LzBBZzN1b0tP?=
 =?utf-8?B?Vk5ZT1R6ZkpzNTZad0h3MWp5bk4wRmpyWmdmRDRQUGx3RGM4TlRocGlCelFu?=
 =?utf-8?B?YmJ2Z1lIVDRvTkFvNGJvaWI0Q2lQSVJlMmgxUkEwQlNJd1dibkVmWW9YQTU1?=
 =?utf-8?B?ZnVxeXM4ZE9sSWlPc3J5ay8yRTQ2MUxGd1BSK041V3dGcWgvVktxMU0wZkxH?=
 =?utf-8?B?b3c4RFVvSDQ2VGVnclZaU2QrWWZKbkVSQzB0RFZwRjJhL0o2QVAxM1FXV1VK?=
 =?utf-8?B?VjdtQ3Mwb2szcC9GcUE4UGR2aGxhN0I0UEV1UkplRkVYQlFKZTJZNTNBdFBs?=
 =?utf-8?B?NnJSR0ZHNnphY0V5em5iQjBnQkpqZURCQ0NwOG9CYXdJN2RZT3pOaGk5Zmtz?=
 =?utf-8?B?QkMrTnBCQ2s1ZGs1aHAzSURBejY1cnlXQy9KZlFKaHc4RUhBeXpRdkkzSkw3?=
 =?utf-8?B?V3JPTWYxalB1Mzh4V3VaZFkzMkxmMlZXUXJIcWVhRWtMdTc2RWMwY1RZYnV2?=
 =?utf-8?B?L3lRNkp3dTVEb0NjVGxKQjZjd1RrZnJ0YitFTjdMYytuV1EyVHNkbkVJWDR0?=
 =?utf-8?B?aDNLUlVhNVVjeXFIVzFGRkhidWw2dmJhWnRVeUxFZVBLdGlsVHY1aysyMU8z?=
 =?utf-8?B?ZWl4U2NSMGVNaTZmeGxHTEJ5Qm9uWEwvSVZhb3F0byswRUVrcTA3Vjd5OHpX?=
 =?utf-8?B?ak94SlBURlZjSDc2NXpmMDhEWU1DMkM0V0RIZTl4aGtrQ2dQZG9NcG9FS21R?=
 =?utf-8?B?dllidGJtTkJRZlcyUEpYRkZVa1ArUGIzdVZvZ0xDbTF4Z1J4Zi92MVpFSG4v?=
 =?utf-8?B?eEdwMGlxKzRGRHpURlF0aWRPQlVBbFYraEtZZUIwdW5PN1FDWDdhblNOSkFC?=
 =?utf-8?B?VDJNVVNPYVNEazd1VW80TmgxMWVxS1VSWVB5NEpraForOHJvaExDeERDV3pZ?=
 =?utf-8?B?bFE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c37b8846-4b38-4218-447b-08dce82083aa
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 05:09:12.6525
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BgJ13/qGfiBx+9yla+lv8RHZN7/9xhWYGGH2rGIqCpvsa6b2EtZcuX58vnR8cWlne9EHAsZEWbIJEZqlySjAc9xh6wBpixpwdp4y6JMclnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6403

Hi Heiko,

On 10/8/24 22:39, Heiko Stuebner wrote:
> The 'enable-active-low' property is not a valid, because it is the

"is not a valid" -> "is not a valid one"?

> default behaviour of the fixed regulator.
> 
> Only 'enable-active-high' is valid, and when this property is absent
> the fixed regulator will act as active low by default.
> 
> Both the rk3588-orange-pi-5 and the Wolfvision pf5 io expander overlay
> smuggled those enable-active-low properties in, so remove them to
> make dtbscheck happier.

Ooops :-)

> 
> Fixes: 28799a7734a0 ("arm64: dts: rockchip: add wolfvision pf5 io expander board")
> Cc: Michael Riesch <michael.riesch@wolfvision.net>
> Fixes: b6bc755d806e ("arm64: dts: rockchip: Add Orange Pi 5")
> Cc: Muhammed Efe Cetin <efectn@6tel.net>
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>

Thanks a lot and best regards,
Michael

> ---
>  .../boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso     | 1 -
>  arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts              | 1 -
>  2 files changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> index ebcaeafc3800..fa61633aea15 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> @@ -49,7 +49,6 @@ vcc1v8_eth: vcc1v8-eth-regulator {
>  
>  	vcc3v3_eth: vcc3v3-eth-regulator {
>  		compatible = "regulator-fixed";
> -		enable-active-low;
>  		gpio = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc3v3_eth_enn>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> index feea6b20a6bf..6b77be643249 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> @@ -71,7 +71,6 @@ vcc5v0_sys: vcc5v0-sys-regulator {
>  
>  	vcc_3v3_sd_s0: vcc-3v3-sd-s0-regulator {
>  		compatible = "regulator-fixed";
> -		enable-active-low;
>  		gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
>  		regulator-name = "vcc_3v3_sd_s0";
>  		regulator-boot-on;

