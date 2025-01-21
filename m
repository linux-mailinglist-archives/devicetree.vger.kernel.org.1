Return-Path: <devicetree+bounces-139971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA9DA17A62
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:41:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90E683A3A70
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 841101C07F3;
	Tue, 21 Jan 2025 09:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b="YEvRTv/c"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2054.outbound.protection.outlook.com [40.107.20.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFC41BB6BC;
	Tue, 21 Jan 2025 09:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737452511; cv=fail; b=AYMpf7Cxpnv1XXTVwZi7xTtM16vwNWfn+zeZ2AoRNF2ZXv2wdWkwLiH/IIZj1AoHAoLht9oJgZeGQwJmKxcm+A22Igg4O4qhUZ3y2ATSGmRciPM4KRl6Lf4uOI8ksEZxwaWqGXImmuRZynq0WRamsVLiqtPYBAC+DFFAOQUdRb0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737452511; c=relaxed/simple;
	bh=6RSQzxgpJp63F0mk5ua2HsDVXbVoJ6gwblJsd6SbTKs=;
	h=Message-ID:Date:Subject:To:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=rt3ZtnawFlq1NesX6LSQGYT8CmWgNEkI/7btcvKx4tJvxtcCwikeF2/Zh85xesDVHX+VGclTa8/8PFqPhqyXbZ0g15bdkDWjZqI3DZz+in7Lsc3kFWoZnhQnl2SGcKsX+cMeuH64RIGWx4VmbVLsAB3OG4QHovRj0jurtA+L8co=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de; spf=pass smtp.mailfrom=cherry.de; dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b=YEvRTv/c; arc=fail smtp.client-ip=40.107.20.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cherry.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JppO3BpaQITDcWY5V8/yeTlPu3dNU1DEQbZJmHmyEPQQzOGVADesi2mhIanDKBh128ysdq++nKeId91TaU2k/Z3bvxoh/Xgal8iOMu+yNrVUdRNUTl+E30/IlQs7sVqCtkkdnZXq5WJm6OIxQQD1kNC/bc9Dg8OA6mfSpS/37PpUOXFj+HRyzu6vS1o41B5Fs3JPFfq0n/BI5hEZ6EJzipyjNxz8TZy8YwCfDpaT3hIa5uBGGsGyMKElrR0A87tVoxFGLHM+gkhYXclgl7dPmtzbVr+CnPhNCV7lzfbhx/NRNcaH6KEfhmBDNFQP1j9dOoOJVCiUnyZAms/EJ3mI/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+nwyYFcDtGktmKPxwgzmckvNjRvSJqwjjK6J6dgUq5I=;
 b=EGxHOjuH6cOOdVDVj+ndA1cQKXE5wY/sgPRsERVBPbNSHSZNMiDVcLZAwC6X1bSQsNW65+7capn9x10dZmFim33tR/2XLFUjB2bu76AXaCx9qqaweETAVwo+itHYHE9FKGDJdvFL9MCTqEQzcrDhxqS3U+fmQedDMUZV+b+BRTameZ73hhijHzjT2xBIj7S5MS8+rWp7r3qF/O+b1QWEQxOnBNRlwuLU5EPIMH/3SF6g1EpGh54hLcRQmp+c9MaedaSm4h2WYAAVwklp3eL0+fNzeQ+6JsKRbMO5MB1MzzDi0HzcvEMymaRG5ezT6z+NXOAsh02AUV/Zu2VoZf6JYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+nwyYFcDtGktmKPxwgzmckvNjRvSJqwjjK6J6dgUq5I=;
 b=YEvRTv/cDXcV7C16iHU3XG8wz88WJ9Q6+jptQk1fNB2W8ed8immyf1PFLMkHvWg79t6no9pNiST1LIza9u/dSFoJkl0gEHlzcNBRNMmbrxrB2gOCum36I6N6msiX8dmsZUxNhKZl7Nfp4NwAJ8Y5ugVHccERb9bBjBcAlaCYJk8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by GV1PR04MB10479.eurprd04.prod.outlook.com (2603:10a6:150:1cd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 09:41:43 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 09:41:43 +0000
Message-ID: <2be46f44-6c81-417b-b0b9-7325cb0f7c10@cherry.de>
Date: Tue, 21 Jan 2025 10:41:42 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Disable DMA for uart5 on
 px30-ringneck
To: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>,
 linux-arm-kernel@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250121092255.3108495-1-lukasz.czechowski@thaumatec.com>
 <20250121092255.3108495-3-lukasz.czechowski@thaumatec.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20250121092255.3108495-3-lukasz.czechowski@thaumatec.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0116.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::20) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|GV1PR04MB10479:EE_
X-MS-Office365-Filtering-Correlation-Id: 407e37dc-cf85-4d49-2e09-08dd39ffd08a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?U09EVnlDczlETWJzOFh6eGRKZ05tTFpzS2dXN0pDN09OZEI5a0g3VkVCK3Fn?=
 =?utf-8?B?K0EvS1dBdVVDWGpLM2pYNDJqRkU1a2RFS292bitVWTVvZUxucDJqa3REZ1Rs?=
 =?utf-8?B?ajArVHphVzVZeGJFeUxhSEFUNk0zZXQvVVVXaDdPVzRtaU53OTBkOU1JSEh3?=
 =?utf-8?B?anBuRkkxdUg5SW1KRlo2NEhXb2FzbVArUGtMMGo5S3JGOTlqSUk4a2VYKzdB?=
 =?utf-8?B?Q3hRalNhV0ZEUXRkZ3A5SkxzMUZqY0RBV29YL08zcmVsRzJ2TnVPVk9QVUda?=
 =?utf-8?B?REtCYlBXVHdyRWNDYmxnVGtyUDhXdzFITnkva05IdzdGSk1KTy9zZUdUTGh5?=
 =?utf-8?B?bDEybGZEN0FFSzNuU3lHTGltUU1wNkVCQ3p1UldrOHB0NDNGbTIwMm1EekZV?=
 =?utf-8?B?Y25IUy9pRlZiMmtXalMvZFc1czNoQWtxVDFWVkIwVG1oNVhlM09FbzNIUVlw?=
 =?utf-8?B?RVQyK3pSaTZUS0RwUVhreG14ZjNYYnRJcGUrdUFYWGFqdmJhNDFzQlRDTXNl?=
 =?utf-8?B?VW03T1lUQlpzRjA3VkZ4Qit3ZnRQZW9pK0h3WGZQdkx6U0NiTU91MENkMmN1?=
 =?utf-8?B?bldYLzhQdVpkUUtZeWFVbXBMMzRYMzVqaXBVaVVTOUxjb3RsdjZncW9MSko5?=
 =?utf-8?B?NlJFTG1jTVNjOWdxcW80SklyTkoxLzdlSlJtVStmWG5TZTFJbDZZM2VwYU5E?=
 =?utf-8?B?K2w2bEdjNEc0K1BtNUVJRHBXRERIMUtCWEVVdnptK1BXcDVTRm0wYlgzdXYz?=
 =?utf-8?B?eWVoaWMxaGhVbmFXSld1dGJUeWxDc1I4UTBaQTZxMHZaTmh1WDZ6UGdQSzQw?=
 =?utf-8?B?c3U1MGZUdStUcCtzamEzenZXc0FPcVhxbTlUa1NGZml6OHArM25qOTRDYWRI?=
 =?utf-8?B?QlFoeHVwbHZaODNoWmxuSHMxRE5Cd0M1SHFZcWUwbnE1RWVaMHV5bkpPa2U2?=
 =?utf-8?B?M3B3bGIvQk9EVTRPZWxUejh5VUcxc0l6L05OaGpjaTVWLzExWDBqNXluUGpV?=
 =?utf-8?B?VkdzSUs2VzNkZHY5SnlxTDMrTURSTGs3bGcvSE4xQ1pWWlkzV2JSTXlXQU9L?=
 =?utf-8?B?OTJwVXZXU1BvU0pMUEY3STJYR0luVkd2cmxtV3dKTEwvWEZ1Y2NCY28rQjNJ?=
 =?utf-8?B?OElUN2hwQmFZS24zdzVTQnFkWHZDc1JuYTFzK1l0YzlvazB3QXhCRDViRkNS?=
 =?utf-8?B?VE9ldkp4eWl2SXd6MFFKRWIvTHE3TWNqSWozQXpZcHRTTW5tL1F2eWFndVFl?=
 =?utf-8?B?ckg0S3p2ZFRRdHpqUCtEemlCc0VUcHZaRVJ5eWROdkNadi84b1EzZUtQRVpm?=
 =?utf-8?B?MUFVQ09UaW5jb3JJNHRncmNhTXE1TXVDa240VWZPZ3BBU2J1aGV6TEtmdUVF?=
 =?utf-8?B?M0Y0S2RZN092Sjd2dkdFaXhuaTNZek5idHpTS0wrZkNzQjZxRjNKOElMRitn?=
 =?utf-8?B?TUJkWkV4V3grME9OMUtsb0FIZmZjQkZ3aHZpTXArSFhRZnpPZ2FjUU9BTU1p?=
 =?utf-8?B?aFRTcXNZNXJPTk51Nm5XOENaR3A5WnFSRk9odnFIbllYeHowSWNWUVE5SlUz?=
 =?utf-8?B?MUdzbzNRZ1pvejdMSzJsSEFHTGNtNHVNNzlxWmVsMTF6ZENzVDh4dlRWUHB5?=
 =?utf-8?B?YnFsNmlObC96SUdacWYvSkNMOVlzRlZhWTZvSHBsT3lia2RJMTB6RGZ2UFQw?=
 =?utf-8?B?MlRsSmE5VUE5cENudUpkMGt1eHBUTXVPcy93d3hjMTVMWnJPeHhhZ09GS1F6?=
 =?utf-8?B?SC95eElYSzFKNEw2elNpb3pNRXhyaXBJTzg0OXloOGYyY3FmamtyOExFaVZC?=
 =?utf-8?B?OFF4LzMwdkdQN0FoK0ZsQT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MXBCVTFJMWsvSk05azRlSXI0dTkwR2t3TjQwTzdjNC8vOG4wamhQK0IzbWVI?=
 =?utf-8?B?ZWRBREVJT3RUbURWWjliZDVVOWdqV2NZaFNLZ0ZzSmtxQ1VRQytMbStEUHhP?=
 =?utf-8?B?SGZQdzI0RTNnY2E5aXQ0UG9qWEo1eGhSZlRRYlg0OFp4bzFidEx5WGRGa0xh?=
 =?utf-8?B?NDNoNnBoaTcvdHNiWStMdWJRKzdsQWdnRlhZWnltNlhsUkpGdnJXQlh4elRt?=
 =?utf-8?B?THhjd2tLWDN3VlVEVGI3UmZ6UEtDUEpjVGpVbitkOFJiVE4xT3pwRFVndE9Y?=
 =?utf-8?B?K3FaY0RUUWlXK1VSY2RlRXA2cGpMLzNYN2IxQ0t0Zjd0UHhKL3hWZm5mK2NS?=
 =?utf-8?B?QVFrOVhTb1BuS09KN2hza01xalhvL2lRbTRzckdoUTVGWEhYWHcreFRjWWl3?=
 =?utf-8?B?cFlmakdLdFRRK09UQzZQUW4rV29LWVZZbDlJeGY2cWY5ZDI0ZFF5dEd3RVo4?=
 =?utf-8?B?d2JWNXpzcWVTQnVaZEdVYmZ6dHA1WGFxWUdtNE9OdVc5ajEvdDJCd1NoNnJS?=
 =?utf-8?B?ZVdkL3hCemRCTXVOaHMxYVg2STNmcXFlUjFOdGVsaEthdWlRUXVSUndrM0Vj?=
 =?utf-8?B?bEJnN3M5clVRTEJSQ1Jmb3FOMDNZM1RpKzdSMTlIOGNWb0RRcFcybnVYSTJ5?=
 =?utf-8?B?KzNvZnNZMWM0U0FGdU4wWHNrWnc4MWNIN2hQd0RTRENEOWlBUEpUL2t0cVZV?=
 =?utf-8?B?dEpaZHI3Z0xQOVlaNlJab0d2SmVoRVFVNXFUbitGektaN25YcVJBNmtvRlRF?=
 =?utf-8?B?azk2OWd4eHNXZm1JT0FaTUxmWDJZL3pzUFpwNXNJeUJzZ1cySDNQYlNZQW5B?=
 =?utf-8?B?OXhaWDh2clhMbEJ6aWMxZjFEbmxxalF1OTFneXBkVm5kNHh4eTdVcTNBcDBj?=
 =?utf-8?B?K2hjS1dwc0xWK1dsQnIwempla29kQ2ovRngvS0FqSVNGQVNaUitDS3laZHIv?=
 =?utf-8?B?d0xZcHFYb01ITWFtSlZmSHllV0dnMkNmM3pyRXRFWkd0NGpBemtEMUpnNjJL?=
 =?utf-8?B?dlBiVTMwTlNROHplWEVldU5aVm0vY210WW5qRU8xRHJRMEFENVhKdEcwZVB0?=
 =?utf-8?B?TkY3cnMwekdKM1RQTVRZOTlYRGNKY3drWkNReVdnRjRnYkpSMU1zT0p0ZENa?=
 =?utf-8?B?M1FZdmgrbzcyVEIvcE4rTm5xNmJVdjJ1RXNXMWpwS0xqQW5lZENRSFJhWmpx?=
 =?utf-8?B?eEJBOUJCeHBEL3dYK1NFdUZwQnhkOGZtUXRmb1BYQUY2U1pZSno2TVpPdlhI?=
 =?utf-8?B?cXpVOXFCajB3Tk5ibGJaQy8yYXQwblMwREhvM2xPbG5SaHNrYVRhc0F4aGxS?=
 =?utf-8?B?VVlFbkhxcDVSRFQzSTJOZjI4OWY4amlmdlR0aDFNTVUzOE0zcHJiamxCM2hh?=
 =?utf-8?B?MEZFUlI4aDVhcEZzMXRFcWx4bytwMGt5TklHK1dKTkJvZ2VQbE8yeCtwVVNY?=
 =?utf-8?B?eXBQdHNwMUcza2dVY0crY0NjYllvQStrRGZXZzNJeTZ1R2lzMUlEZHUwakJX?=
 =?utf-8?B?d001T3k5OWtzTzBzMGdVUFUwYmtyYXRqMElNZktOb0xCOGpia1JtVFV6MFg2?=
 =?utf-8?B?RlNGY2plN0RWMzNoNFF4clpaQVRVVDh2MlY4TEJJWjNYV3RiWVBQck1DSzNN?=
 =?utf-8?B?QmxmSEF3aEtrb0RmanlNdkVVU2xVTzVlNkUyTGVmR1NrQ0YzVCtNU216ajNx?=
 =?utf-8?B?K0xhNlJUWkpZbVd1djVFMjBEWFhEU3V2TG5zc05lWUlNMU5JNTdsTUNCZUtD?=
 =?utf-8?B?Z2NYdDI2RExiSUJNUHdkdnp0elJXWnRkd3pnb2pyczU3NlBTTDNZZWgyQXY1?=
 =?utf-8?B?T0JuQ2Qwb1RHVFdGa1NXT2p6bEQyZy9WRW5iRndXOXFCcnhMdmtKak9PTkZr?=
 =?utf-8?B?MVFKeUNCTlFUMFVTV3Z0R08zZTdlczFLdk9BWTVma2lEczR3SnJEM1VMMyth?=
 =?utf-8?B?clhZOEhqdVhxbFpqaDdDZ2laUkk3MjF2RDhaeUFrQ0htdHc4SHNqd0w2Wnhx?=
 =?utf-8?B?WFZGWUtpanN6bUkzZmo4b1lkMFUwcWc5dHhXUXZwMGdlS3QxQkRyZHowWEFk?=
 =?utf-8?B?TzZvR2dObE9Tbmh3M3BUek9talplSUcxMnR6S3NScm1Sc1JwOHBQU0praWtn?=
 =?utf-8?B?bHk5SmJaV0xNUDI2RDBzck8yTjVkbXJNVkY0ZXBvQnR0TzZ2OEJjMjB0Z2xo?=
 =?utf-8?B?YkE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 407e37dc-cf85-4d49-2e09-08dd39ffd08a
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 09:41:43.6074
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UNtsrjn1jwyShuwIukZ92R8+xuOfuj8XCqef9LpuIp5waDrFubdaQzRgQHjFkPPEdvn64/SGyAxeCr2L4Z8+4D0NUM8hAOI98bSGPkZgxzk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10479

Hi Lukasz,

On 1/21/25 10:22 AM, Lukasz Czechowski wrote:
> UART controllers without flow control seem to behave unstable
> in case DMA is enabled. The issues were indicated in the message:
> https://lore.kernel.org/linux-arm-kernel/CAMdYzYpXtMocCtCpZLU_xuWmOp2Ja_v0Aj0e6YFNRA-yV7u14g@mail.gmail.com/
> In case of PX30-uQ7 Ringneck SoM, it was noticed that after couple
> of hours of UART communication, the CPU stall was occurring,
> leading to the system becoming unresponsive.
> After disabling the DMA, extensive UART communication tests for
> up to two weeks were performed, and no issues were further
> observed.
> The flow control pins for uart5 are not available on PX30-uQ7
> Ringneck, as configured by pinctrl-0, so the DMA nodes were
> removed on SoM dtsi.
> 

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

We should backport this to stable releases too, so please follow the 
instructions from here: 
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#select-the-recipients-for-your-patch

Essentially:

Cc: stable@vger.kernel.org

in the commit log and we'll need a

Fixes: <commit hash>

trailer as well with the commit hash of the commit introducing the issue 
(likely the one defining uart5 for Ringneck for us).

Considering that UART0 CTS and RTS are routed to Q7 header but only 
usable when Haikou exposes UART0 on the DB9 connector (via the SW2 
switch), which is NOT the default state (and in any case not supported 
by our current device tree), I believe we should make the same change to 
the uart0 node in haikou dts for Ringneck. What do you think? Can you 
send another patch for that one?

Thanks!
Quentin

