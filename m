Return-Path: <devicetree+bounces-242757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADCAC8E768
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:29:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 190B03B0E16
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3F7270EC1;
	Thu, 27 Nov 2025 13:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="nfYX9YPu"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11023087.outbound.protection.outlook.com [40.107.162.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F8F269806;
	Thu, 27 Nov 2025 13:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.87
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764250162; cv=fail; b=GaPOXAHbZhF5x2scHGFGnOMuFw+BQj1Y5xmLM0nxfmmfXsXS6JrTknaK8EzaleFxkNw/WlFiX5ukDxqWgwOX9x62/5DSit3YfUc3vVNhZ2/umKrGW4yH47dSeKHWSmviMXO82MpwI4J7y3ZdzKIJrs4USMCDQp0fDLSz+PWvx6E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764250162; c=relaxed/simple;
	bh=7DGCqVshs6aoUsyBsH/GxO32NUWDyK+5sr+5wIvfFFs=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=I7OUdnMrEFvmkYIW6KgHeDG/0j+UShwjjxb9abhBhZF9k4KXz6HuZYLaCLldtdLcttbYvRmZoaa9lix3vpYQ4Em1W49k1aVfc9OHjohEpN2fXMvT8H05oZnX+/rxRf60TgqjZeXI2Sx8/JnP/YXvBbziIsIT+PYze1iXwkwsAVg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=nfYX9YPu; arc=fail smtp.client-ip=40.107.162.87
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gw5AdxcScyOWrqsTorjV8jW2lBIT8RFmvdg/Gz28jv0tMyeLUNI+Y2aMDcsdbk9TcCNSZq1eXiL7A2yrDWEoMQawTtF7dkiFT7c5KRKPjK1LWkJY7NdH9M1COlLQZkqZKF2lBsl25hxCSnt7gx9NZSetxAig3dQHIzr2fFjj0CTkGbq7YqXCEgNO25wL0gDg7qHeZVmo6kSS+3T2ypqdoZHmLaRRZJEeK/3o7nN+twV1hVyzKVaSbL8MYmNc3ENCs6ShNXs7F30J5tMU7FbnAdsZLVu6DZiPsHsqPPMEQuwz3NwwwRWJZKXt7BE1VMMXGNOjfmJCmSBUEqSmyTIPgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZET9qDY+cJLs7Rr39IF7OKSpBZwXIP4uWUm94v6NMkM=;
 b=bjAsy41nz82/5+S9HR+PoWmqgFl0hTaQFre5vqPOdCaiZD1hAg3am+9dfnzuZ+FIoPze2SvXazwzDcjNI6g+eszb5HWW7ZwEDtH1JiS23ENi6xjoMjM15RJn5YrJFBwL2iVaibwHLMwWrPAY+hFxdy60oVo1TOBmKZcuxZh4EcoJsKKlI54IcQwXr8O2DmVMVxcvfOLLcWoVDVhk5ltZcoXIjUeCnSGa6QlXbqPqVVbElUQipsV260dUYB4SVUggDS9zKBgfemah2ym9Q7xDqYibiamyuIocXk0/VXTLDVnU74MvdHxsMBLCJhCUxqsgo0L2LvtePuCjospE02G63g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=phytec.de; dmarc=pass action=none header.from=phytec.de;
 dkim=pass header.d=phytec.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZET9qDY+cJLs7Rr39IF7OKSpBZwXIP4uWUm94v6NMkM=;
 b=nfYX9YPupvY1uhITPyQ6ZwOU21sJwwUHRzvO8THT3355buqza7BRYeUT7XJAu0ZuAImIv1/Jy5khQoPAci+M7qSRM5mwMxIsz/aWb30KxpiUxpQCW/5k2TQpMUNBl6OtiqQN+JsshuEGeib6P9mvXbIyXmeZCdCMgHoPh0HfV5NW7lgzmKOwINnUjHa+6qgkDIhjQZ+o+W4jnIuoFYosShoP5e7eLscAioggCWTS/hI258iWTSOyhnYL42R/DdGkigQOOixYMlkMDS4b+0E1cMCyvyfO0OwsXfMAr/+ZG4v97TkwPt6EyNG6ae+74D4W83PI4qHeyKAt9HH9E3A8AQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=phytec.de;
Received: from AS4P195MB1456.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:4b3::21)
 by BESP195MB2776.EURP195.PROD.OUTLOOK.COM (2603:10a6:b10:f3::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 13:29:17 +0000
Received: from AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 ([fe80::369c:a760:5bf9:8d4a]) by AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 ([fe80::369c:a760:5bf9:8d4a%2]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 13:29:17 +0000
Message-ID: <1af82669-380f-4e7f-b3db-f440bdd5309e@phytec.de>
Date: Thu, 27 Nov 2025 15:29:11 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [Upstream] [PATCH v2 2/2] arm64: dts: ti: k3-am62a-phycore-som:
 Enable cpsw_mac_syscon in U-Boot
To: Daniel Schultz <d.schultz@phytec.de>, nm@ti.com, vigneshr@ti.com,
 kristo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: upstream@lists.phytec.de
References: <20251124090842.3377294-1-d.schultz@phytec.de>
 <20251124090842.3377294-2-d.schultz@phytec.de>
Content-Language: en-US
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <20251124090842.3377294-2-d.schultz@phytec.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0138.eurprd07.prod.outlook.com
 (2603:10a6:802:16::25) To AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:4b3::21)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS4P195MB1456:EE_|BESP195MB2776:EE_
X-MS-Office365-Filtering-Correlation-Id: 9091cfa1-17ae-44ba-a042-08de2db8f70a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|921020;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MEpMT2hneHYrQ0pBQjdWZzJqQ29nenRDVmxKMUV4SDBsb2V0ZStCdkhmenZz?=
 =?utf-8?B?WmZBSzBhaTAyZ3QvdEoxOTg4V3FaQzhKamFvaHdkYWZCWDdmclVLYnh3dTZK?=
 =?utf-8?B?eU8rSTdkSmt1SEt5bCtXUEtYVTk1SFk2ZzQySFRXNklHR3dEa09BSDNJTzhH?=
 =?utf-8?B?ZUloTlVjQ0k1a3J0OEwvY3VtYytTNE9td0ZiRmNvbjU1OHJMdHRrdGZVWmZl?=
 =?utf-8?B?UnIxcXc3aDlUWThmbFBZZ2dTZjh3QlBYM0M4TEIvSEozbndrOHVLOXdMMzB0?=
 =?utf-8?B?TkNxNzEvY3RDT3Q5bWx6cHF4TXhqYTNNUFNRZGx5UVhwVTdFZHdlaVBmYTQ0?=
 =?utf-8?B?K2FJQzVpMS8zR2VHbjFkd1RlQmFzekhqVkt2NkkvQU5peHVsS1FLekJ5U0xL?=
 =?utf-8?B?dEErNE5QaFVrVlJzZTIvTFVSZzN2bkYyM2d0bnFRTkNOU3p6ZlhKeU93L09s?=
 =?utf-8?B?dU5HZnVrNnRMd0F2aThZNDJIbGpORms0TzlwWHlYSzZRelpDTUFGaHFwSWEx?=
 =?utf-8?B?a29ITmJybnovU0pjckJKdzh5U1NQckpnT3NRN3dzYmdiVzY3aHRseU5Kc1dI?=
 =?utf-8?B?cU9VanZ5aDNKeERvY0NrNjloR1k3RFFyeDhqU0pydDdrTjlyYkJKWVRXemgz?=
 =?utf-8?B?c3JrRndxM2VremJoQ3pJLzk5dXdCaVJGZkZ1T2FHbjcyOWd2alo1N3ExcElw?=
 =?utf-8?B?ckRPS2NhK003c0FjWWhUSFBBVlBNZGk1MU5QR0NUN2ZmNkd5SExPdWhKTjg1?=
 =?utf-8?B?VHczUG5ReTN2WWNkM0xnOSs0NXFTcXhndlc2cWZQNS9ZR0lqVTNMRkFlZDFS?=
 =?utf-8?B?SmhDNUR4UHJzNVJjZVJzeGlPb1U5bkcvZE10ZVB0RThaLzR1MjY5Q2tFQnNO?=
 =?utf-8?B?TVJLbFRmZnIvWmExYzk4eTF3SjFvMml2Sm5RWUZKeUZYamlSMCswYW1Rb0U3?=
 =?utf-8?B?WVNDdHNEbGV5S0R5akR0RVNSMUVET2hxZkdGcVlXZk5PcEYvYVY0M255TmN2?=
 =?utf-8?B?VXNPT2NORUZ5am1EUVRrbWpSRi9MVENOODkyM0lYa0hPYWhnNjJScU5mRllW?=
 =?utf-8?B?OFc4ck9zYXpoWE15M1pZY3YrNFJVNElPY1FpTThBNUFBMzRGZ2JWQ290ZThY?=
 =?utf-8?B?WmJrUFdOU3EzOTVaczk5YWh5TSs3RDhHRVJML2FZdDJkWGIvYmd0b21QWm16?=
 =?utf-8?B?bXN2UVNyVXJlc3ExQTNGTFRQT2Z1TiswUlhtczJ0eVhnRXFnRzljakorOUtG?=
 =?utf-8?B?TW9uc0MybGh5WjIyRlNqOVdTdHFwYklIT2EzcGd0TFJmNlpIQmRGcmRKTmd4?=
 =?utf-8?B?anZ2WENRNjVQMk5abnlES0Jta09FT2U4ZGNGbytUT05oUllSZDR5dUo4VE15?=
 =?utf-8?B?b05UWnQ2UncwY2prMWRaTUVTUkF0NzFhMzAvVmVzblE5R3N4Tzc4Q25qbWJp?=
 =?utf-8?B?eTJSbFd2enlDWm4rejN6Y0EwUHpNczMyV3BiVFY3TXd5UGVwWEJoQTRmYmJy?=
 =?utf-8?B?WmtPaCtZZHlpaXp0NnlRbzlwYU5LTFNRQXZpNS9vT0tWMmVnVDhVRmd4QmNV?=
 =?utf-8?B?MUwrQklFcm9NeDFha0Z5SzIzbVNBTXp3M0dFVkE1YXBBQ3l0OExtMW9FYkZ3?=
 =?utf-8?B?dTk4QVdLd0IvTHBiQ3dlZ3BGbHlvSTlhNFVNektGVDRUR212NDhtaUZJcVA0?=
 =?utf-8?B?Q3hmNHhic0UrNzBCV0p1L1F4VEdnbWlRTE00ZlFoT3YvU1RBb2xUY05PN1Jr?=
 =?utf-8?B?bVQvQjV0bzRtSFNNQkNrVFZ5STNCajdKQ01odk9xWjJhRzRqY3NRS1F1cEpX?=
 =?utf-8?B?Y1lHTjE1aW5jVHJIT1ZGZi9Valg4YlRIYmQrTVFkRE4zVGc3YklFSXNRVVZo?=
 =?utf-8?B?cmxuUHVNNnBlL1FhRHY0QWtRTjZ1eFQxeGpNYktuOEVNSDBkRm5xMEMyc2ow?=
 =?utf-8?B?YURaZGZKb2gxeVM4MVRHaFZPeHd4U3U0cVVMcWZFalRtcjRGc1FjOGlOdlBF?=
 =?utf-8?Q?o4F+E32XshgmbivJw2C85XB3qWu+p0=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4P195MB1456.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?M3loY2tTOTZ6WlFkUFZkN3N1WWhpVlp6NmdoeDdTSytEMGJCWTlpSHRaZ0Rt?=
 =?utf-8?B?aGZ4V0lpcXNkN0JFbVJ1cWw3aWdsMjU0SlY0bXN3M0RSV2FzQjZNanI3ZzJu?=
 =?utf-8?B?YWE0MXA2d2ZWdWZrYUJraC9WNmh3ZE1XeS9wS1VvclVjYXR2Njd3K200RlA5?=
 =?utf-8?B?c1YyaGwrNm9vS1VETVlPcVVJNVREUkRIL0dKWEhzQXAyNlV2WC9lYmErOEgz?=
 =?utf-8?B?Q1F2bEJrRmVvNG9IbHNLSlNnWHI4dVp5N0pIUTUxa3NqVUlockxhWnFrWW8r?=
 =?utf-8?B?MytBeFZMOVc3b2l3M01VUXVxalpoeGdDdWtpVGRDOHJkMHArZ0pUMFZVL0Ja?=
 =?utf-8?B?bVIzRUxHbHNQZjhrWWM4RnlqVHZvVFV1SU5WbjM3R3lCd0gxd21MV3ZrL1oy?=
 =?utf-8?B?RGRtZk42STkyWUNOUDlLWkwrWVZqaXdhcGtwbzQwdEMxWkpTQnkrdkt4Kzg5?=
 =?utf-8?B?NzIvV1UwNm45NjF5c0V4ZmwxR1M1dWhBaUZHL0ZpTkVwSnNTMjFlK0N5S21x?=
 =?utf-8?B?UThvSnlOenowNEJYVkdwUFg1TVBBWENuTm1kYk9NeS82UEovdHptTDJZd2ZI?=
 =?utf-8?B?Um5HVVVMNFAxcVQrUk5CZ0J0MFFpdXp0eHM5MDVJUDRPdzZMMjBYNEd5R3I3?=
 =?utf-8?B?aDFUcDJrN3M1bVorREFaVEMzNWozTG9kZHRMRWlhbXJ6dzdaY1lUeGM0aEgv?=
 =?utf-8?B?YUREV21JNkpEcU01VnNpWmdHam5meDB0SVVMYkdMK2IrekFUOXZ3M0poaTZr?=
 =?utf-8?B?L243c3hEc041aTFMYm9xN2dRQVF1bVZTMFlZWkYyUHB3K0FIendyRjdmdkI1?=
 =?utf-8?B?Ty9GWEFyL3MxTUFQVFFxQWhSd2tDMjU0TGt4SnZpY3hGQkU1UzZVcWs1dWdX?=
 =?utf-8?B?Q1kzSVBWTGozM1NRd3dCejUrUyt5VHlnRmx5L1NqVWMvNmN0OCtYQlpweHZS?=
 =?utf-8?B?Z2FYSTYxRERTZ3RpcWlxc3Yzd3lpZnRmZkt3cXc3eDE4VE1UTjRhVkVDNGxn?=
 =?utf-8?B?eS9CVDh3NzFocGlKNExEazVUQTNha2NwYlhHdDBiT05OMktiN1UrV3VWcjZk?=
 =?utf-8?B?MGxyWkJPdWxJMnR3d3ZmRWovaUx1T0NvZkpCbkNkK0VHRnZhYUI0a01halY5?=
 =?utf-8?B?WmUwVUtkdGUyajNFRDNwc0NBVE9vUkE0cGRPTVMxMXhKcXdIU1JkME1CWTVo?=
 =?utf-8?B?d1pIUFh4S2gyb0RCdElDdVhVaVB5Wm50QklJSjB2S3krVHhPNUNmUVlVVEtI?=
 =?utf-8?B?cXlwTFJwWWhrRGRyM1FpTHJhT25rT1BEWVR6a0h4ekdnaFRxcnpYQktvVTd4?=
 =?utf-8?B?QVVzZXdXOW9HaWxGZEcxbjRWbis3TVMyOURiM00zdWZCU1luZG9VamZGaDVO?=
 =?utf-8?B?ayt6L1hhV0lDSHFlN3VXdDFhV2NSVVptbkFxbmw2SXg0SDA2RVp2NmdPNUh3?=
 =?utf-8?B?S2habDE1eWJyWGlsUlFYYzI3SHlPbmZrV204UXRvcnBya1VXQWt3aVlTOC83?=
 =?utf-8?B?S1BwbTZERmNSTnRUUGd1SU5GRGlwNGJEWlVRZmhYTndGSmFIVk81V1YrYU1m?=
 =?utf-8?B?VGtDb1JXZ2xTOWdqdnZzSVdEYkE4S0VnM1l1eStsMFJzUzdYWVg3YzBTZkFL?=
 =?utf-8?B?RGdBY3dXVUZjaEtJUjBEUXhQSzRiUldxSlRRYzY5UmZmWFdwQ2dsK21TMzlS?=
 =?utf-8?B?NjR3c21kWFJ0YnpsZlcrWEYyc1BxSFhMcC9tejlVSWcwamxNMVJGSzdENkIv?=
 =?utf-8?B?d0ZyOFlZMFpmWnI2eU8yV3lnZlAzbVlyWGRUWG5iRSt5MDN2b3g1ZFJKWEZ3?=
 =?utf-8?B?WGR1MWFBcXhkazJmTkxNeE1uTnN4cnFIbFZoQzRacnllZ1FjSk0xdlhleHE4?=
 =?utf-8?B?TmEzTDFzWGJGajJqVHpnQktkTHphcHE5L2lRSC9RMEdsMEVmNU9OSTI3QXpE?=
 =?utf-8?B?Zm1aYnJzbWlUbWt0aVhva3QvcDdtYlBIK3hyTHJaN1FmcW95cTZ1Y1Z2U3pO?=
 =?utf-8?B?ZldLL1J4QS85WFd6eDlJNEw1REVoU2c0bjNKZ0pOa1FkWmZmd1E4ODFZWktw?=
 =?utf-8?B?ZzVQUG5oM3FEODhBVTRmdGlqWk4xUi83NHdQMzBqOUNGZjVWZk1UK2t2eFVt?=
 =?utf-8?Q?K1+x8NJugLoO8yxx6ugYZwYil?=
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9091cfa1-17ae-44ba-a042-08de2db8f70a
X-MS-Exchange-CrossTenant-AuthSource: AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 13:29:17.6291
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M8+t0tJVNOSaFG9mlDDSpKSSamr8H9VBkuT27ZPXM226SNgNCtP+oAyvmfAaPyXZhNgrTZcWq3SI9TCySAgALw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BESP195MB2776



On 11/24/25 11:08 AM, Daniel Schultz wrote:
> Add the "bootph-all" property to cpsw_mac_syscon.
> 
> This fuse region contains the internal MAC address. Without this
> syscon node enabled, this interface will get a random MAC during
> network boot. This is problematic because the AM62Ax network
> boot is using BOOTP protocol for some binaries and this protocol
> does not support dynamic lease expiration. Therefore, the DHCP
> server can run out of free IP addresses.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>

Reviewed-by: Wadim Egorov <w.egorov@phytec.de>

> ---
> Changes in v2:
>    Moved changes from k2-am62a-main.dsti to k3-am62a-phycore-som.dtsi
> 
>   arch/arm64/boot/dts/ti/k3-am62a-phycore-som.dtsi | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-phycore-som.dtsi
> index b3d012a5a26a..7f00576a4bd2 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a-phycore-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62a-phycore-som.dtsi
> @@ -197,6 +197,11 @@ &cpsw_port1 {
>   	bootph-all;
>   };
>   
> +
> +&cpsw_mac_syscon {
> +	bootph-all;
> +};
> +
>   &cpsw3g_mdio {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&main_mdio1_pins_default>;


