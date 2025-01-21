Return-Path: <devicetree+bounces-140014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FEAA17C18
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:45:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64E197A1C4E
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FBA81EF092;
	Tue, 21 Jan 2025 10:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b="VyxfK53e"
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11013068.outbound.protection.outlook.com [40.107.159.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE3F1F0E32;
	Tue, 21 Jan 2025 10:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.68
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737456313; cv=fail; b=rZWyvwi7cpQounM40se98fUtyKsqAzNr4c6hEg0dw1d7JhMrNebeA1oz9EwwiTk2UxlIq35W88RxgODXOsn0WhmG6mMyDyjrUJUURqqkSaWSF1WJyG9Ilx8Xrn6GoreIyrMgmxnl8bS+69G3pOFC1/DWRy/A7RTEAilL9AA+cDk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737456313; c=relaxed/simple;
	bh=yEfgo8bDBSOqrr5qwnuvXE5nDn3vNTepHQtDZT66pZE=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=B9SEyQ1RTLHYGXPWLIGaYfdgIQrgGoD9OUjQob1t3kR9EWI8FaQjdStakBPgc8rp9oQFB8wViR6BxfGOz9KsF8Z8i7PGw2Y3ze1QYoXyJGiVPEZmlll0ZttKJdrGx+6Yb8BmEOcZXtVnWuXkY0Lb4nX5BIctGQLgaSeaM26NHew=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de; spf=pass smtp.mailfrom=cherry.de; dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b=VyxfK53e; arc=fail smtp.client-ip=40.107.159.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cherry.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LuHw5Ar/ziC8HmGTuqloB9Ncz0sm8WJxkcSvBtLtOMak8Mu2pZVzpL6YkegnEKB/VymzrRlMkm68fupzjw/efWdSYClp9fe+ZdcZc3gU99r8KYQGYQZBjE9YRHaEibcJcpBmGHsAgrj2RKhe+YHVXv5CzQjohp5Wl8VIHY/wWrKTr183pbDUOkNO7lsdSZStCZaj/glwA4z12XQZNx7ONIFtZLz+uCqkvFO9ayM5dmwBtGIjcU92+gBvVDrT2hchfGMLpdPckNMGCZfbEEBD+GeS0fBDBNLPxYYGfJ3tBLLdqhT+V8TyLdyDMuVZEwne7dr140nr1GiSPYZYEpscxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q1Ogb3NtcH2o+zZlOL4f9Oe4P25Qrklq+Dbmt1X8Eb0=;
 b=UJIJIr0eanMZA/e3Eq+G8iTt/+ClpP+okyXvnpa8A1g+r4ZVS6N/gCsKC1nAYXMUho7FXgHHmAR6QFAXajuT5F0BQZWT+PrqXuOWtShwIRLKcI2aKbA8R5B3VndQReOGWi+eGnxJMD/g64fy8cWt7nb5od0PMbkoBMoI9mxx2k78K6uosGu+qB6HPdcA1dcCnS2xCE3vxy1VVLzMt8V63LLXtmTJ5IMciCcuPD7bXg4incdqm3+RSyaA84jDUlVEaTaRDiXO6ySl7t7qJedtTd5QgjJtMstlRLz8DlysY6lRSM66Qt2QJvTTIxVMVHMznfDruDfas1Tomst2YbdlQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q1Ogb3NtcH2o+zZlOL4f9Oe4P25Qrklq+Dbmt1X8Eb0=;
 b=VyxfK53eTo5pmTZTocHyce4ENzdkPzrZBUMcq7JEHDXH/i7IDrO+j2XPW0LdOyFJLJstos6J5Ou/UJrlnEPNMDZKFmAAVU1Vyq6SZTw6FJMpa1GvdlK+b4pp1Mlm8h3TG7Ok9onb75P5zIVAWsrZWkEtRcAsoZCU2wymjEzJhMs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA3PR04MB11225.eurprd04.prod.outlook.com (2603:10a6:102:4b1::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 10:45:06 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 10:45:06 +0000
Message-ID: <9cde03a7-1748-4644-bb73-90dd986150dc@cherry.de>
Date: Tue, 21 Jan 2025 11:45:04 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Disable DMA for uart5 on
 px30-ringneck
To: =?UTF-8?Q?=C5=81ukasz_Czechowski?= <lukasz.czechowski@thaumatec.com>
Cc: linux-arm-kernel@lists.infradead.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250121092255.3108495-1-lukasz.czechowski@thaumatec.com>
 <20250121092255.3108495-3-lukasz.czechowski@thaumatec.com>
 <2be46f44-6c81-417b-b0b9-7325cb0f7c10@cherry.de>
 <CABd623tHh07Nb7KVjS_GJ5OqfjF4kOUKsSKNKA_HcJbLG=WBiw@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CABd623tHh07Nb7KVjS_GJ5OqfjF4kOUKsSKNKA_HcJbLG=WBiw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0268.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e8::13) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA3PR04MB11225:EE_
X-MS-Office365-Filtering-Correlation-Id: 73441e94-21c6-4135-ad66-08dd3a08aad5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?czBNY1RSS09GbUhITWZwM3lpV1VUVG9ZdWNxVmFqVWRXczlsQVpJK1JJb3Rk?=
 =?utf-8?B?MjdlaVJtdVU4N05QMzJVMWtUZTNPNjNHWklBN2NqR1pNdGI3ZXlOY2QxVUVu?=
 =?utf-8?B?L2RxZkkxcnJpSDNtUngzNFpJYnZ2cTkxVkhCb3hkV1Awc1A0b2VNR09aRTRW?=
 =?utf-8?B?aC9rc3NzRVZxcFFaYXgxVGtZemNiNGVuNFdGTlJIcjlmb3Q4dzIwNnR4dk9q?=
 =?utf-8?B?MGNpbmh1KzFaL3o3RVRLZDFUN1dqOTNuTHZST05HR0dpak5RTEsrNlFJUHo1?=
 =?utf-8?B?R0lZWGZmOGM2SVpXVkxGRjYwbGZqK0paSEV1SFUrUFNwSDZxbXMwMS9OTStN?=
 =?utf-8?B?OVpxLzJUQTVTZXh2QmNMZzBTaGtkOHpNRTQxMU1qa3NsdXN6eWlxODN4cGVP?=
 =?utf-8?B?ZEFTa3pHN1FRRHdLVTRteDJ1Nmh4WS9VRDV4WEliR096VjV1aW4xZkZXWDlq?=
 =?utf-8?B?dDVXVnBNaDl2T2xjdWYyZkpDNHoyVHJ1b2RwM1NYMXZwSGdoSnI4Lzk5Smlq?=
 =?utf-8?B?NmhWeFVZMnN6NHRmU0dZemtWRnhXVkZvTCsvcHRBREFOZ21kU0VMY2MzcEly?=
 =?utf-8?B?ZFdacGNFeU04T25pbFBmRzV4ZmMvU3FBSkxqaWc0RmEwaVM2RExLZFlWYWor?=
 =?utf-8?B?eWVHamljUkF3MVdMV3dXSnc2SUFTVHZkL2U5MExVRzUyNERQa3lZalZYNGRW?=
 =?utf-8?B?MGpuUTFOZE5TeDNZQmZ3SnpFVTQ4enBUdkkvRHZiRFFXRmJvbkQxUmtpd1Fm?=
 =?utf-8?B?L25rdkdGcEJkSDRjZEtnSk5QbEFVZ2hpcWFiUm1kZnJtWFVxVVplMjUvZVpu?=
 =?utf-8?B?ZFQ5VWI1QWRTNjROMVIxMDlIenFBeThLTHJLcmFmbkgyb0JUVW9YY2U3Wlpy?=
 =?utf-8?B?dFhMQ2ZpbkxpNkYvVHptNitWYWE4NVM1NUZ0cWtmWGFYd0QrQ2o0UHVCNkFW?=
 =?utf-8?B?ekxYSHFFcHgxWlN5MWNyNlFjS1hPT1BMTVUvYWR2NHVTZmw1YnVzTlk0clZi?=
 =?utf-8?B?bktOWktvd21NZzFWMlFqam43cnFQYWc0RVhLa1M5YnluWDJwY0VVTmxCUm8v?=
 =?utf-8?B?bXNkWDdCcGJGek9XZkJaWUFSU2haRnpPTEt2RWgwT1VUN2MvUS9vVmRhLzhB?=
 =?utf-8?B?RXRQb3FFVGJpVTBwVW9VdnlFUk9jRUlMQWNzZFBBVFV0TDhiVWxaRlROQU1U?=
 =?utf-8?B?OXlFbWF5akNZd29RWCtFZ0ZhWU1Yay9CRXVKb29hVENRSUhVenlkb3k4N2tx?=
 =?utf-8?B?UEpmcHQ0ZVJHZ1RZQXNBQ2ZaVmtQZE1nRzFwYVBENzg0MWt2T0pMeWZiK3dH?=
 =?utf-8?B?cmtWdXEwd2JBYzBKZTczZnFUSFBCazVlR3FYb2wwZTBNU20vdzNaVGVVaWNN?=
 =?utf-8?B?UXJRdnpiY3pLTkxWdi84aWJ5TElYTUVXdEdlZGQzRE1SRUd2VkI0ckZsV0FK?=
 =?utf-8?B?dkxOOEIzNTYrMGxTQXNpSUdBam11enI3cjJ2RFZBL0NHOC9Pa3hjNGF0aEZh?=
 =?utf-8?B?NmMwZXcySVkydFNyU01UdXVoamVtQkpMdUc4bEFYUjZPUHd2SGdRUW1iZGRO?=
 =?utf-8?B?S2FQMEgrVlZLb2k3cjZSTjR2ZjZtMzdyaWFqeWtJZml6QXQrSE10M3BuYlcr?=
 =?utf-8?B?VHpiZzJpaXErbUVyWWxVQk4wZnphZTV6VEFYOHlkeVJqTFV5L3phY09zMnRB?=
 =?utf-8?B?a2crUnNnVFIzekhGVFErSXQrYjlrcXZ4aS9LejBNSEdNaXFsbHJ5SEhrK3BM?=
 =?utf-8?B?ZEVKc29OYm11U3Z6cVYvbjdxb2tKMWZnWjdaQnl4ejF3NnNxcUNxdEZxdm1n?=
 =?utf-8?B?SDNzRG1RSFJsV0ZVc0hvUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RkNYajlXTm5QUHRDUm9zU2tuNTRjZUpJZ0tCcGFIcTE2Qk5tTUdxeVNiQXNW?=
 =?utf-8?B?NTNaaE5LOVRrMTFHdUJ0ajRFZzB2ajFZaDhFdW9MMklraG1Bc3A1eXVBYmlR?=
 =?utf-8?B?cG5vdTVybVBaL0JIZm84aGkzbVMzRDk5cnR0QW82TVpYMmF0QmVud3dvamZG?=
 =?utf-8?B?UFdtWjlNcUQwN2FlaTNOdjVRVE8wMzdNWXdTTjRoVCtwRG9kRjZWbG9CcXA5?=
 =?utf-8?B?d054QzMrZnlZRFBvZkhveXhWWDlTRW9TcHFBLzFnVmx3dU5JZVY0MGR4TWt0?=
 =?utf-8?B?cW1RbW9OQVRMNU43aFA3Z1RCdHpCV1lvY3ZEMHg3Q3NaU1BId2dHNU9xSzIx?=
 =?utf-8?B?ZHVWL3l4YVZsWEh5WjRuYWZOaHJiWFFpSzh4QmdFMUtqSzJiMm1jUWlOTWZy?=
 =?utf-8?B?N2Zxd0tGdkZWTVJ4cjBmeGZQaWFEUFNOTHFJbnd1aXRsOHlBWEgxYysrQ1gw?=
 =?utf-8?B?MjR4SDVDM25KVExPdFA0cHUvMkRCcHZ0Y3RGc1pib3ZCZHRxS3o2UUlCZHNE?=
 =?utf-8?B?K2FpZThLRzg4eElFVzkyRFh1V2tMamJJaVQ5ZXIyS2JPK0N0ZWtMNDZQdWNn?=
 =?utf-8?B?MkRBS25TR3JsQkpTQkNYYlRISUk3KzlyajF2K2RDNFI2Y3hYVllFVHhQRXEx?=
 =?utf-8?B?ckRxSVRvSGdWZWJ3K3ZDOGZaYzVmR1JZWTFVeGd0cE05V2ZlZXhSZVBnaE9l?=
 =?utf-8?B?R3hOZ3h4aUtOS1V2bjJtd3BYajdFK3plNGNHSHRObGd6bnppb3A5YjBxeExn?=
 =?utf-8?B?R3lCYXhmL3FEUUZTb0Z5OUQwRlVSc2t6VGxGcFhrUUV5TEZhaXZkK3JJdnZu?=
 =?utf-8?B?czgzc3lzWlJ0RGtBNDRZV3I5N2U5RTByR3JTRkJUc0cvdDVWei92VndWRWhy?=
 =?utf-8?B?akhpd3huc0ZUSVN5ODVQY1ord3h3YnA0L09qWWRWY1c1R3VHSWo0eUlwUXBN?=
 =?utf-8?B?c1pHUlFGaE9CMU52YUlsLzlTQSt2cDVWa1czRkEzN3VBQW5JNklVSWVuYWE2?=
 =?utf-8?B?ZlBHUDYzRE0yUDQxeEU3VkxtT0JMQmxJaDd0UnJuRWl2YzI3SVorQjF3MHpn?=
 =?utf-8?B?Zkg5NGhwdUkvdFBEVGZzRTV3MHlKaktEYXp3TTdmZmhHeUNFem5yblMrbkQr?=
 =?utf-8?B?STg2cmZnT1hEZlVkU0RSOFEycklJTWxsbTdxL0M5eTl0Q3JodmNNZ3c4UE0v?=
 =?utf-8?B?NEZkNzllb3l0RzVNTVJ2R09NcGlZYTROTHMrT0ZhcDhqL0ozcHdhRExQYnJw?=
 =?utf-8?B?am9ZSXZwczQ2OXg1ckdqRGJqQlBBOXRncjc2WC9TL3pOdEpNRlM1OXZUZ2x2?=
 =?utf-8?B?dStIcWtOd1lOUnZJUVI4KzQvbUk5dWtRdFoyYWFPdHk3Qm1HNk54VTg4NEF1?=
 =?utf-8?B?UUlNUmRPQUpLSGVBYmI2bWxkdmNmUjBJcGZLK2d5Y1B3dnlCUlFzd1ErVzdi?=
 =?utf-8?B?ZXJzVFhvOGxKS01QaUYzcXZoSWRsUklrd0VKMnlnZ2d2aFdKdkZuYytWYktI?=
 =?utf-8?B?bkw5eEhIVXVlUVZpL3Qwd3Y2RUkvSlE3ZTJuZEhUVHArMnBqdnRmQ1ZoWHB5?=
 =?utf-8?B?cDVsUm1YMlA4cHVJTXhQRmxUck9SOUFCN3VaT2pGWk1Cc3BDaUZGdmo2ZHVL?=
 =?utf-8?B?NmpsRDEwdzRBSlNKZk5uU1hGamF2TFpTbEs0dEl6STNVM0srWUNoWWJRWVVK?=
 =?utf-8?B?SW02RTk4bjEvU0xUOThOTllhZzJhczJlYWlDQi9UZUdGY2JhUmt1ZW9vcnNJ?=
 =?utf-8?B?cWZENitob291eFVoZFlWVXp1MEN1a1JtbU4yWXA0cE42NU9XaExmR2oxTkEw?=
 =?utf-8?B?TlZtWEVqSWhpNllUUnRLVHFhUlZCOUI0L3JzZFFRZEFDQmNFdkpxR2pzTi80?=
 =?utf-8?B?Tk40RUFFS001cTVnRXdZWTl2OG9GQkRnZVYzMTljS0lnTnNUeGRBYUtWWml1?=
 =?utf-8?B?R3AwRXJrbXRFVEVTQUQ5Yk1qRFVNRnlDcDNhVDRlYkFxNURIQVM3MENabVNJ?=
 =?utf-8?B?TDI3cGRSZlkrRE1oZmxCKzhiSFltbjdXbGpxbnR1QzRzYmVnNHRoSE1sME5P?=
 =?utf-8?B?RnpEL0d2UFNvaTBwRXZuVmVSejczcW9GODBJTzRhTDllRU5nOVNFaVR1LzRJ?=
 =?utf-8?B?MGFHSElWUnR4cTFMTEtHdEF1Mk1XcDlIN0R5emt0NStWZzZ4N1hVcVBhUFdF?=
 =?utf-8?B?Ync9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 73441e94-21c6-4135-ad66-08dd3a08aad5
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 10:45:05.9489
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GWRbqmWRpKJHx6qzsWbEz51lgamMNAhPzVYaQplTy8+2hMStTKww2u70GBpmo6fxpVJzkvGbpWf2u2+hiZaGErvC2mbfU82bl2SceAkOH30=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA3PR04MB11225

Hi Łukasz,

On 1/21/25 11:28 AM, Łukasz Czechowski wrote:
> Hi Quentin,
> 
>> On 1/21/25 10:41 AM, Quentin Schulz <quentin.schulz@cherry.de> wrote:
>>
>> Hi Lukasz,
>>
>> On 1/21/25 10:22 AM, Lukasz Czechowski wrote:
>>> UART controllers without flow control seem to behave unstable
>>> in case DMA is enabled. The issues were indicated in the message:
>>> https://lore.kernel.org/linux-arm-kernel/CAMdYzYpXtMocCtCpZLU_xuWmOp2Ja_v0Aj0e6YFNRA-yV7u14g@mail.gmail.com/
>>> In case of PX30-uQ7 Ringneck SoM, it was noticed that after couple
>>> of hours of UART communication, the CPU stall was occurring,
>>> leading to the system becoming unresponsive.
>>> After disabling the DMA, extensive UART communication tests for
>>> up to two weeks were performed, and no issues were further
>>> observed.
>>> The flow control pins for uart5 are not available on PX30-uQ7
>>> Ringneck, as configured by pinctrl-0, so the DMA nodes were
>>> removed on SoM dtsi.
>>>
>>
>> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
>>
>> We should backport this to stable releases too, so please follow the
>> instructions from here:
>> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#select-the-recipients-for-your-patch
>>
>> Essentially:
>>
>> Cc: stable@vger.kernel.org
>>
>> in the commit log and we'll need a
>>
>> Fixes: <commit hash>
>>
>> trailer as well with the commit hash of the commit introducing the issue
>> (likely the one defining uart5 for Ringneck for us).
>>
>> Considering that UART0 CTS and RTS are routed to Q7 header but only
>> usable when Haikou exposes UART0 on the DB9 connector (via the SW2
>> switch), which is NOT the default state (and in any case not supported
>> by our current device tree), I believe we should make the same change to
>> the uart0 node in haikou dts for Ringneck. What do you think? Can you
>> send another patch for that one?
> 
> It seems that in case of uart0, that is configured as kernel console, the DMA
> is not used by the kernel:
> https://lore.kernel.org/linux-serial/20200217114016.49856-7-andriy.shevchenko@linux.intel.com/
> Which is likely why the issue was not observed so far. However it might be
> good to do the same change to be on the safe side.
> Should I extend this patch series with the fix for the Haikou device tree then,
> or create a new one?
> 

Ah, I had missed that one, thanks for the heads up. Just a small remark, 
better send links to merged commits rather than mailing list patches, 
it's a bit more difficult to figure out if the patch (and that version 
of the patch) is merged. If there was an interesting discussion on the 
patch and that information got lost when merging, nice to add the ML 
link though!
In the case of the linked patch, it is merged indeed: 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/tty/serial/8250/8250_port.c?id=089b6d36549160b535e109cd07ed6d578b81de46

No, no need to send a patch. When Haikou is configured to have UART0 on 
the DB9 connector (and the Device Tree is adapted for it) and not use it 
as kernel console, we should be able to use hardware flow control and 
not have this issue. So we don't need to remove dmas/dma-names when it's 
used as kernel console, and we don't need to remove them when routed to 
DB9 connector either, so all good :)

Cheers,
Quentin

