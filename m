Return-Path: <devicetree+bounces-142088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEF9A240FA
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 17:46:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A8C117A10D4
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 16:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E92881E32D4;
	Fri, 31 Jan 2025 16:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b="UA8hHcFo"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2049.outbound.protection.outlook.com [40.107.22.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9CC3D66
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 16:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.22.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738341985; cv=fail; b=j7KtxfScA4DjmE+Vf+8BPHpjVr+dzKRrz5eQ4iYZnqxdYZGksg6DfjA0kb45n3A+q9tUIz2gAjwctewqJMml6/YZ6vOX/WKwtkXvOluDP3TpMUff04FI+rfPqUiN8JUMqG7AZ3/x+q3xik8WF70QixXnXsZl5LAL5q6oNoDCh3A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738341985; c=relaxed/simple;
	bh=xSwu4Yc/mqypYctK+TedrwRAYJdxBTe2ortFmAMKgOw=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=kaDL2stJ6iPjmKTV05Nk8MeWDafvJjB8MfMdXJ/3YY50gsujvE610vnYWybnINvFhJsrzQdK2uJ0UgShLnl4yuhMw7QufiIt/KcrSiejrutr5j5ZxOtH5wQxsuJqFvzCcYvL7TIqtlmCOSWuHkokV3tkEUxt0gFBb3Ge399xYfE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de; spf=pass smtp.mailfrom=cherry.de; dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b=UA8hHcFo; arc=fail smtp.client-ip=40.107.22.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cherry.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fiJ3vOV2oqFImTFGaregkDWTjL44+C50vcx3Nmaz/WVjsK9Ei99r/7txohOfCe608PrSGEo+xi1rl1r4QTC3iJ71QsDg3sTqY8HhyfM+hAPKSbulj78qE80YmG7qYkW0aTPqQXQNMvlToGegYcoBSfXPN9aBBdQ7GYOdir1ivvke3ubCEc1IJa0HLL9zO2I2gnav8EcJAwQ3qr/q/xYk6DhCygVzqLkb6mCX7xOjZ8qZO6fGonmPnInsxMUEpYnn2x5WxRXQjwUWepOR6gJSzAukVazHUXbuokIbOJL+21ZcgtFb2xDEmftXIbaqbYkx9KLaDJrHkJb2lKR59oPRvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yuOxXmq8QTot41Kut8iuuQXVkciBi74bGdpbJxdvVII=;
 b=I+DYXuCyEfzCQYvwm8x6pjbUUkS99irM6HkMerTDmdmsmkZHwOaT65lpBcQisvoRLPdlL2rT6K1rshNZnyQcIXZEFl7YGNGWyWv4iu0+NgE18ae9s/WJr4ySif2rBRGH76JzmBxnri8S3cx4cwi9r0uksx64FM9cTLkxk03rJc0KRgp9lTQvGf7SGr6YePl+JXw1mejmmsTOXjsDsjT1fDNL2n7G1cvFWW3zezVMUZTcpk6x/v7vv1Oussz1wS2kTNMfCONoQ3wQcxVNPpSth98102Eha1RlziNqy03L5uT/L3Tn3ZIuMn4HYz7uXMlzD/A1Cg8fdT7dSvYaJdgLbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yuOxXmq8QTot41Kut8iuuQXVkciBi74bGdpbJxdvVII=;
 b=UA8hHcFoplPCAid5Vw/05C5GNS3WRy86ofGt0q7KkUaBll67eTmBuK29NA7JpKdC7opc+V54L31b+nJCNHGHKKU7Z9yi10lyow+O9FvrsXVyAR0r1jvVJi+nLWdg6s0sXTyMocss9DPy0KeQy5jNvPiDtzBTdGOcCTWxsUgyaRQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DB8PR04MB6892.eurprd04.prod.outlook.com (2603:10a6:10:113::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.21; Fri, 31 Jan
 2025 16:46:21 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8398.018; Fri, 31 Jan 2025
 16:46:21 +0000
Message-ID: <5d0ae245-1ad3-4e3c-9c68-28babc7290a6@cherry.de>
Date: Fri, 31 Jan 2025 17:46:20 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20250130181005.6319-1-macroalpha82@gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20250130181005.6319-1-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0351.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f4::14) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DB8PR04MB6892:EE_
X-MS-Office365-Filtering-Correlation-Id: b50ffc10-af79-4a1c-d285-08dd4216ca66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?THZZQVBlbDVreVR2dWl1YktoS1ArUTRoWjhlL2pWWkVXeWV4ZUwxUmt3S3ZF?=
 =?utf-8?B?NlBnZE1nNWhTRG9Hekx2UDF4Qk04bXV4anl1eWdKS0FJamxIeUhnUk9ERWZH?=
 =?utf-8?B?WkMvcTVRTzV1a1RWYW1EM2hqLzhNTmFqWnR4UFl5amhVVlhNemdveVhQb1VZ?=
 =?utf-8?B?MTVJVDhDVTdwampjTlh6bnBJRW5qUlFNK0JHTnVkRk1FWTZtdGRYbGxiZmVK?=
 =?utf-8?B?UGRQNC9zT0UxYldmN0ZVWFByMXNzUXpUQTBRY1c3L1o1Vzl0aTI0Q0xEU3Vt?=
 =?utf-8?B?MklybUJUT0VEYjlEcE5XTjQydVJyZVFoeXZpMjB2UFVWKzExN0RLS2VQdy91?=
 =?utf-8?B?VGYvRHpCelkwOW9LbFkvZ1gzTW5lYWR2S1VEWDZaeWdJK1JnMlk3WnBoamlh?=
 =?utf-8?B?Nk1mWjl5Y055SmswdFZoenhaV1M4VFdxcmJTNnpXYitDN0Vja0F4OXlWdS82?=
 =?utf-8?B?elg3TnJPTFJVUnB2TmZXelZ1QkJKRTRjbUxsYnAwam11aTZldjhtZzhMQ2Ux?=
 =?utf-8?B?QjFvcmpwcDBaTHFkaXE1RnlLNFcwclNDek5MdGhZaXN6Qk96OVROZ01lNnRT?=
 =?utf-8?B?ZVVNYjM3a1VnbEJ5ZUMxcjhYSHNwY1hzSzVFYWJsYk5YRC9uOFFWeERjdzFI?=
 =?utf-8?B?SEhGL2cxZlRMNERlT3FHTlNyWC9ibWFvNXB5VTFtMEtKVVZDMEI2SGxSYlNt?=
 =?utf-8?B?bStIMzIxNllIcDhxWXhob1JCR3Q4KzRuYnUyLzN6K01kbldFK1paQTYzZHAy?=
 =?utf-8?B?Ui9ZSGpydVlHRGovUkFlQzJwcUd4NG9XSUVhVE8zZkRUY01VNktwWUdiQkpP?=
 =?utf-8?B?MEMrQVJWZkFqT2VmaUttNWdpNEZBZStNT1dGaFB3OHdCS0tGSTR0aWI0Z1dC?=
 =?utf-8?B?NG92Vk5YdUFYZ3lXUXVaSE9mUi81MkNWeHNER242b1VuVGkxUmo0cC9GQ3px?=
 =?utf-8?B?T0svSWhHNExTbzJOc1dZTUcrdHJ3VUtWK0h4QzhtQWpGZEhPQkJ4UFhmRkJD?=
 =?utf-8?B?Z3FKU1lKdDM0MkZhQUZpdGdlWktyMXJKSUlhYUNoeVd1Q0duZ1AwRDZzNkEw?=
 =?utf-8?B?SmxrQUNkc0VYTFdBTlRaQkRsWFNMcTBBTElXcldtNExwbkllZXVFY3o1YlE4?=
 =?utf-8?B?SDN3S1gvc054emJPTldoQ1BYOFZDWmVFamdjVGRIWEVwQmIvVE9KZDBDWWhx?=
 =?utf-8?B?V3l6cW9RUE53WjVUQ3JLOTYxYm1SbitjeXZtak9MaWJuTGt5UVBhMVd1cGww?=
 =?utf-8?B?dU5jZzFwaXRpMGtVZXFta0FWYnViNzJHRmRHZFllSXMwbUJEUjJhWFBwbjdl?=
 =?utf-8?B?NldVR2hzck14Z25aYjJ4SGl0SVNxZUI2TWMwa05uSDU0SjdRTFJuVEx3amNl?=
 =?utf-8?B?aDlsWVA3VmlLRmdSOFhNUUd1NmkrckJlZk00RFpKc3plbS9TMXlnUzFZWWhE?=
 =?utf-8?B?OFR0c1RqV0J6T2VjeTN3UzVPMmhIWklxL2dFcStpWlV6UmdWTFhqOTlMMmpv?=
 =?utf-8?B?aXhtNEY2Qm5OOEhYR0x5REtuOHpnZXVZd3pucDIzRjFZbmVuTng5U1lOKzRq?=
 =?utf-8?B?V0NCK1VhVVZaRW5BZHBLVVQ0emdVMThSTVU1SWwxcDY4RndSRDBVajhyTDRI?=
 =?utf-8?B?RTBnaXlRV3NOSFYzdnErWERlVXZvU3dlR2dOMDJxTE93V1pSWDRNVjF0OGRy?=
 =?utf-8?B?QTExTGN1Zm9HM3lSZ1NmZ0poc3UwMzhOekF5Z1ZiYkk2Ym00cVhYLzdSNHo1?=
 =?utf-8?B?ZGgvWTRxbEZPcVlyRXFzamoxcDhpWkE3ZWNjRkhDRlduK0UvQ0FFNThiNzdB?=
 =?utf-8?B?OExoQlBUSUhpbHlPZG45VjNMWVgzS1V4czFQSUpXQ0tnOG1BbENVcExBTHJW?=
 =?utf-8?Q?bxLpJPHgtjR7S?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SzZRdk1WWnhSYzZqWWduQllyY0xlQTZVRjQyS1lwazFvd01KdVJxTXJNWGd2?=
 =?utf-8?B?YlBydWVpbmY0cVZvUGVOcWJ3RE81TVNYaEl5UVhwUkZ1RGJISENsM1ltcFNF?=
 =?utf-8?B?N3JQT1JjRTBwYnVmdWlESGFXamRJajI3U1k2RXM1aUcrMFd3TE8zT3BJb0xJ?=
 =?utf-8?B?dkNmVGZrckRRV1pVMXkwZFhPdlVBd3pjTHFiZGRCTWdXcEV2K3FEdFJYczZw?=
 =?utf-8?B?SWxwVVh2SXNLalhaZHpNb09aeXk2MjdLVEM5dXM4dGY0cmwxQVg5L25Sdmxj?=
 =?utf-8?B?NXdvaExseUI2dnhhUm96WnFSb21uVlZyakZmc3gvWXBUcVNGbmJ1ZnIvY1hH?=
 =?utf-8?B?bmZlbDJ6cWMzemNSdVhlNlpQSTl5cmwvdFVMVnB3Z0graUJncWVXSTNlODVB?=
 =?utf-8?B?TnBFbCtQR0hpQ3hCOHZWR1ZVZlJFZDh3UHpvNjAzUXFFQlRXVSthWENOT01N?=
 =?utf-8?B?UExlVkR4UTlnNE5qRHZPNDA4aVNPS2hqVmRWTHdYaGhaRDlhcDcyYlZYdzVM?=
 =?utf-8?B?TkdlaDJGTUJCMVdYRmlnVE1Db25KakJubmxGSzVxVTAwdDFOV3FUN25nQmE5?=
 =?utf-8?B?Zk1WUlluTjFhZ2pkSmtnUktCSmVEKy9pTEt0WnltV01pRmR2VGplQ3NKZEQ1?=
 =?utf-8?B?Wi9meEF6blVWclRYWTZnSHNCTFRzc1NWN2xwOWQydDhzZUt3aG00RklER1ZO?=
 =?utf-8?B?UU5tUVUvZ0V4TW96WU9iNXdqZmg0TEY0eXc0aVZNQnp0VG9uVWFzMnJOL0ZM?=
 =?utf-8?B?aXNLUG55RDRLZFJidG5rd3BOaGhEUnEzQUd2VkRXci9pUnVvNXYycFdNSHcx?=
 =?utf-8?B?RHNJeFl3Q1pRMXpNZGdNSkdYVkxraVZhdzQ0QkREMnRhb1ZucUU2cEZSdDBU?=
 =?utf-8?B?ajJhaEN0Z2ZhaDlJNGQxZURjSzJZUmZScEY2b1d3ejZwTmczMElaNU1tSUFX?=
 =?utf-8?B?WURRcGZFNEtJTEQ1R0tJU0REYzlLcW9MSUNITWwyb0VpMThmbisySEZWWnZU?=
 =?utf-8?B?VVRJWjJ5SExsc0d1RnQrVldhVGJMdVZKMWFrQWRmUXpSb0tuK0V0ZUttaHM4?=
 =?utf-8?B?aU9ZSnpMVW8xak5hOEg2Y1h4R1dtMnAySVMrMC9OL1pQcmJidThBalBrZUFO?=
 =?utf-8?B?bXhqZE5GcHhiZFFybWRxL2NocU1RKzdiMzlBaTVYREVZRXFPd0MxQ1BYcUJK?=
 =?utf-8?B?SGhrazBQbmNabjJFci93bFU3MU9WU0RJelluV2VXTitsQU1iQzREZFFCQ2pJ?=
 =?utf-8?B?TkQ2RmtGc3B5MjdHZ2xML2U1NldaR0ZCVDhNSEEyTFdSdVp1MjI2RkUrKytq?=
 =?utf-8?B?Q0JuYU4xb00zNStqNmF4VStwMnJCUm1qUjJGV09DTDFLNWxYWEd2ay9ORWRw?=
 =?utf-8?B?NDJSZ2x5Rm9zbzF1dDdsMXZkTTN6M050dXUySmJkeEFBT0lKUEF6aDF0dHR0?=
 =?utf-8?B?ZnBNNkN6SGg3R1kxalpLZ3Z6Y3krN0hhV3F0dUFGelBKYURDL2YrbFZaUVJr?=
 =?utf-8?B?cG95TXBZb293WGo3T1lsUFZQK05xT0ZjOXRqeWZmTzB6dUtOVHdmOXFGSjJi?=
 =?utf-8?B?dUFSYktoSzdqdTY0MFFPeEh5d2JOOEZYS2NyY2pMTHFpZnN4UmtyS1RlWEt1?=
 =?utf-8?B?TGtZR05paXRVekhSVnNSbjRqYnU5bElmdy9abkVKMG5SdENReFB1RWl3dnNK?=
 =?utf-8?B?L3hvWllNZmw4MmMySEprMmU2ektuMDlvM3BIbHJwLzFSQzJPSVZvWmJTZGUx?=
 =?utf-8?B?Q0FuR3ZjMXBmdUlsNHYxT1RvMDZkd0NENU9Wd0hVdWlZKytnT3hFVnR3SHUr?=
 =?utf-8?B?akNzY2Y1SDlaTnd3QnhaU1FOK2d1ZXY3K1R1QTF4ekZISEI0U1BtRmZwMllz?=
 =?utf-8?B?cGNTaWtaeGZzeVhRUGRIV2FhZDdmb25HdXR5S3RZaUxIQjJnaGRkTFpNY3dV?=
 =?utf-8?B?bmo1alBGR1FUaXBHL3Y0R0xqbFlxeTN0VkNNekIrUTcxQjNvMFZ0YkluU2FT?=
 =?utf-8?B?bzNLWXAvUFVGZndKRExxL3daQ3Z1c004ZFZGZXduQ1E2N0VvakE4NUhVczhL?=
 =?utf-8?B?YlBGT0dvZ2xkU2ZHQjZiNWFXR3gveEdPMmlsdit6SzR6Y20wNUQ5T0MyMkRz?=
 =?utf-8?B?cCtqVmpLSHFTRnMwT040U1pWVDBPdEtoa1BBNjlkMUw0Y2l2YXdlZ09LNmNx?=
 =?utf-8?B?bFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b50ffc10-af79-4a1c-d285-08dd4216ca66
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2025 16:46:21.1306
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: syM8HtxyaQFiFzoPwQn6RdO3bnSf8KlWI2toPmCtQL9RTIdXR426H7UIuaIeQbWz7mqstXs40Cw3xovRoHuiVOLBhtwpx9Wh97+0WYRlXec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6892

Hi Chris,

On 1/30/25 7:10 PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Remove Optee node from rk3588 devicetree. When Optee is present and
> used the node will be added automatically by U-Boot when
> CONFIG_OPTEE_LIB=y and CONFIG_SPL_ATF_NO_PLATFORM_PARAM is not set.

This is too big to ask for right now, 100% of the RK3588 products in 
upstream U-Boot have CONFIG_SPL_ATF_NO_PLATFORM_PARAM set.

Does it hurt to keep it forever?

> When Optee is not present or used, the node will trigger a probe
> that generates a (harmless) message on the kernel log.
> 

And what if we have OP-TEE without this node present, which would be 
possible if we have CONFIG_SPL_ATF_NO_PLATFORM_PARAM set in U-Boot?

I guess we could detect from U-Boot if a TEE is loaded as part of 
u-boot.itb and fixup the DTB otherwise to mark this node as status = 
"disabled"?

Cheers,
Quentin

