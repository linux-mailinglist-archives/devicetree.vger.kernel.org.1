Return-Path: <devicetree+bounces-266937-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGm7JMdYmGncGQMAu9opvQ
	(envelope-from <devicetree+bounces-266937-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 13:51:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1257E1679EE
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 13:51:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A81C23040317
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:51:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB2033C52A;
	Fri, 20 Feb 2026 12:50:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022142.outbound.protection.outlook.com [52.101.126.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A79344DB6;
	Fri, 20 Feb 2026 12:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.142
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771591858; cv=fail; b=kxjctny3P5xwNLsFA4aIGxv2dQ7/UEBoYWujWARur5AkmhpfhqDFu6FCmSHdWF6PaVgPiLoLWWvycVAgNQpCXpngbfSMW3n65RLS8CdZKqbldf594+Eoial/8GVz7e11KWPdg24K9anUkHsph+s+l3x2j4q33HwH6HJxAVf1jC4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771591858; c=relaxed/simple;
	bh=OuaRlAzYquysGHqgQsYO8dbZj3/V2h62EGjUS35oIJk=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=VCyvFqv9J8z35arxwP1x7ckaet7+Yss2LFhYCRPdkZ9LKSUtPDWzqQTQSeQGW8+l1J/qrsm52+0Joaay+iUfjBNouI9DQsKtBpwZmvGo8nHmAAVLUDohT6NCUtEXLazoVRPoynw7qEnKL0uyZLcs+WNQrhMrL1vAhwarVrd9ZLA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.126.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ka87eJV4couDANRuolqFCpsGxaDXQNpJQiFyrXoMfJCoSRdeQozF4pMDpc8muy9QafPq13IKQxRoNRJoVcxiHm23VlJ0WODVgu0GcI4UDIb2EJ6Gobg9q6FHkH8hqLiwzWXhvtpY2ZZtyaPEqoU4DjBeZJZHWTOQQ8mHqFKeIm/+IlSFobR+O9P3zVDFH4TmecNKGhJAEf/SUL5b5s6x0vou1Mi462Ko9EcuNfE2j29Se0ZCgh9i++oSKI8ra0SEEhp3DK3vbT1J2PTc9zsfbZuFtxhZWppAI/YXeB6qbCxR/P6uU1lNHR5P0qRcM3DFroPwG3LJHJxY/0zniHhVQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OuaRlAzYquysGHqgQsYO8dbZj3/V2h62EGjUS35oIJk=;
 b=cOq9/XT/Tzs+TBFKXz1pcUekU+3Qz72nT0N6gUWlgE5lb4QxFSY/xNFiHJtzhFmIx/2C3DjSmJRf6M5MIzHgCcAcdO0HPw0V75pbklE017QRlBFEAEGiARpJSlzf4aSa4xuNxsJEjD/NcpRRtIm+5npdtP2ckHFKe7gWnQwDRrjvsSV32O9dW4Y4cYYclpt7ho5L8CBIYmzv5EeGY3jtxBMIB9qGV2GKCuXICmoeVlZ8/cXBfxFRjc5xuwCttOf9FlcYjOJji6eoa/a1Q8o0vSz8LfS8dutJZ7OhVLd9xpm/+BwrEYcjzinYdToc2/RhUEk51JMQl7WOK9yh+SYfdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from PUZPR06MB5887.apcprd06.prod.outlook.com (2603:1096:301:117::13)
 by TY1PPF9FCAE99BB.apcprd06.prod.outlook.com (2603:1096:408::920) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Fri, 20 Feb
 2026 12:50:52 +0000
Received: from PUZPR06MB5887.apcprd06.prod.outlook.com
 ([fe80::f320:58f6:4dc6:b908]) by PUZPR06MB5887.apcprd06.prod.outlook.com
 ([fe80::f320:58f6:4dc6:b908%6]) with mapi id 15.20.9632.010; Fri, 20 Feb 2026
 12:50:52 +0000
From: Gary Yang <gary.yang@cixtech.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, "robh@kernel.org"
	<robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, Peter Chen
	<peter.chen@cixtech.com>, "unicorn_wang@outlook.com"
	<unicorn_wang@outlook.com>, "inochiama@gmail.com" <inochiama@gmail.com>,
	"alchark@gmail.com" <alchark@gmail.com>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, cix-kernel-upstream
	<cix-kernel-upstream@cixtech.com>
Subject:
 =?utf-8?B?5Zue5aSNOiDlm57lpI06IFtQQVRDSCB2OCAyLzNdIHJlc2V0OiBhZGQgU2t5?=
 =?utf-8?Q?1_soc_reset_support?=
Thread-Topic:
 =?utf-8?B?5Zue5aSNOiBbUEFUQ0ggdjggMi8zXSByZXNldDogYWRkIFNreTEgc29jIHJl?=
 =?utf-8?Q?set_support?=
Thread-Index: AQHcmacxi91bC/zAGE6o56iTabJV0LV6O78AgAF0eCCAAZ0vgIAOTTOw
Date: Fri, 20 Feb 2026 12:50:51 +0000
Message-ID:
 <PUZPR06MB58875D4B4CA02D20341A47FDEF68A@PUZPR06MB5887.apcprd06.prod.outlook.com>
References: <20260209093344.2013693-1-gary.yang@cixtech.com>
		 <20260209093344.2013693-3-gary.yang@cixtech.com>
	 <1c77ab31e6ba8b6285a67a6f2877a415dc9f3d3b.camel@pengutronix.de>
	 <TYUPR06MB587663CF0612A0552C0029E8EF63A@TYUPR06MB5876.apcprd06.prod.outlook.com>
 <fcbc10e7657a20c08eb1fd50f0eedad0d6361fed.camel@pengutronix.de>
In-Reply-To: <fcbc10e7657a20c08eb1fd50f0eedad0d6361fed.camel@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PUZPR06MB5887:EE_|TY1PPF9FCAE99BB:EE_
x-ms-office365-filtering-correlation-id: bb9ebc7e-4735-4f06-1430-08de707eade1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?NDRwaUVnVUZOOCtMR05LRFF4akpudjd0c1kvQ2FrWklJNEVLNFRSQmtMd3Bv?=
 =?utf-8?B?cEVhd2pIaTlUNGxZc1c5MENQejFYclFpaGpVd0tSZzdFTkg2RkMwSmV3RlBE?=
 =?utf-8?B?OG1SZXNVUitNZTJsamphVnVzMzc5anNJaTc1VkhuRVdzMU5rTUcvZGRBaG1J?=
 =?utf-8?B?V01RWThyK0hlVXRFMUFJeFB0WjM1cDBEc0FDNnE2R2xoQmltYktpU3Z6dVhH?=
 =?utf-8?B?d21kNkVpcWoySVAybGJTL1ZGbGU3Z1B0QmxSUW5uSGV3cC9OamIxZTBHWFZV?=
 =?utf-8?B?c2UybkNGY3F5a2hXQkZDM2J0VzBobXZ1TWg4dmlwM203TGl3K0gyMTJEUXVz?=
 =?utf-8?B?WFByVVB3WXhvVlI0d2huei9FMUJDZjE5eVErQU9uSEVLZkt1T0R4MGJ4YU8v?=
 =?utf-8?B?Q2VLVUxZdy9DWmkrUUZDa3dueXh5ZFJYVVNJMXorS1o5L052akk2NUNib1U0?=
 =?utf-8?B?OVhzVkRpMVVxVWp5K2srNGcrVWVTV2lMUGxuT2xDUllEOXRwSFczdjZyOFU2?=
 =?utf-8?B?WDRKTmZndzFJVTgwYTVlYy9VYUNqWEJ5c2h3YzNhM1gxNTBIMjgrMHI5ajRh?=
 =?utf-8?B?ZWhwZHpDVHhET1F1WFY4KzhvYU5MMWF0Z3ovSVczWklrc2xuS0xSYUgyZ0d6?=
 =?utf-8?B?eDNzQ0JCdDZob0tpSElZZWUvbTlrMUNqcFk3OGY2am5CR1o5clpHT1Q4a2cy?=
 =?utf-8?B?ZHBIOWtIQ1hURER2RitvdmQwbWQxeVl4VWYvNnZGTTE5MDl5ZWl4OUg4UnU5?=
 =?utf-8?B?TXZneVEzOXI1WEcyMnRTcmxKUVB1dHl3anowbDdrWGlRYWtaYUMrWkRFUkI5?=
 =?utf-8?B?dC9JQlg3NkpWY05aSEtmRjEwZVlXQlJrTWVhcDFETkxPSUEvNUdXM2xra21J?=
 =?utf-8?B?TWZNQ1dhZVFTMWtKdFlJM3FjYk05YkErMzJUU1F4aVJ5KytjR3h6NjV5bFVB?=
 =?utf-8?B?UHFJMFNUSkxhR3lqMXRsSFdIWFUvd2FvbGc3eHlsRnluYzJCUHNld0hKaHpV?=
 =?utf-8?B?S0hSRFc1b0d5TmQ0cll4aFIyc2cxU3I4UE9TTTlRVUlQZVFLMXYyV20yRmky?=
 =?utf-8?B?aFFaMTRXQmR2QXlrU1VGMnQxM2ptZ1gwZjBMa0dXNUVyNFFhOWVyYTlEVEhh?=
 =?utf-8?B?Vm5EcVJGTnBlNGQ5cWd1MTdJdHVucVdkdk5KNHRJRUpNS3ZwMHZoOEg3cVll?=
 =?utf-8?B?V1dvZnpmZnloVlZxanQ2d1VhdFFsMUM1QllnVUwvUEo3MUF4THdaV0JkbmJM?=
 =?utf-8?B?UlpQRmNwWEw3bGkzWXZuVlhFMFl2aUJReEExN09sd0o1NytGdHFKMmJoN0t4?=
 =?utf-8?B?M0tyRVYvbEVUc0s5MTkzRkR2WmkydklIaFBqNVpvOHVyWFEvaUpvVGFuNitU?=
 =?utf-8?B?aG1xYkgvZVV5U2JQbTA0T0tSU0hiSWtwMkNycEVoUS81UVRQS1IvRjNCZVRL?=
 =?utf-8?B?QVpCRUNKeStwRnpTaVdualpOa00zZTlCTURKaEU3a1B3ZHNlVVd1djMvQWVm?=
 =?utf-8?B?RFlrdEdwOWNkd1VZWjhTd2xPTzNrbUk1OTMwYjh5R3hFQmJDR1dGRmx6T05r?=
 =?utf-8?B?YlQ1ckxTYkFONVVrcllVYlpmOG5uRHhUZS9hYjgveE9WUTZ3OVNuNDlXNDNL?=
 =?utf-8?B?akxKN29RMG5SNEh1a1JJUzlicHNCOVgyUGJpYVVzcUtLd3VmN1NlamQ4ZXdR?=
 =?utf-8?B?cSthbzdCMW5EVDl1bWdTZ2F4cjViejhTZTBXTDg4UXRDK0NRMmlSQUdSdXAw?=
 =?utf-8?B?bVk3dmcveURURXFCM0ZsVU1jRFF6SmJvTDdreUNkbXFjaDV4RlV3RkRValpi?=
 =?utf-8?B?cVBvb09xU255d01LU2JpaEs5Y3FHMktKYVl4OEpKam9Xak5NVldzaXVpRlBl?=
 =?utf-8?B?dnZtNVdlTThzSHh6MHIrZGxJclN4LzJsOFdTRXhsWFZmMDU2QmZLMU85Uklr?=
 =?utf-8?B?bDMybFBjMzRPaXNlVi9JYXJ1bGFkVGcyT09CYytPL1dhOGdOUnFEQU0zRzZn?=
 =?utf-8?B?ZUtQZEpsRDFhZTdKYk5zMXh1Ty85ajNWUHVoQkJCcW5NdlJiZzA3dFlodGF2?=
 =?utf-8?B?TUlRRzAzMW50VFBJN3R1M0xXemtNRzRZVWZocWVYN0ltdjh4c05PeFJvbXhh?=
 =?utf-8?B?aGJydUp1dHFmNm1CQlAvbjQrcUwwLys4aTFrVzdKS3dWTVF2WmkwNDRYOFVt?=
 =?utf-8?Q?msd0uPgGVroCefRmGqkkEGw=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PUZPR06MB5887.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?aS9uM3dvRU9laWY4dWZRaWg4ZjlVYlZveFVpbEhEbGl5dVMzY3JOVXJ2SG91?=
 =?utf-8?B?dTRVUmhJaTBlZndyQVh1cllTbUNKT3ZYTmNYdFFwaGl4N1FIWXM3Tkh0bGVB?=
 =?utf-8?B?UThpd0tnbzhnbFU3TWxtdFphTHprZkV0aDJQTktIM2xmcmhKT1NycWMxSitC?=
 =?utf-8?B?aERrM1hpcVJDVWk2OGFPZ3BKU2dlQUc0UmpGcGpwZjZrcVczSTFibGZpQ1R2?=
 =?utf-8?B?dFZEUDJ1cHdIaUNTRjQ2NmlycjZidE9meTlSR3QrWXpsS2U1K0c5OUdjaW5S?=
 =?utf-8?B?WmUvaTd5NjZaVUl1S1NJSWF1MGNFdGNtcmxBamdUbkFReGMraEsvVmhONklx?=
 =?utf-8?B?OFU1UzFaZ28vcnNJM1N2WUpMN0wzODlLN041RjhJWVFmdGlaUFFEWEJOSTht?=
 =?utf-8?B?YVY1YUZUWUFDR2I1WXRiVjhHNDZGTE8vb2lSVGpLRXN1ZjlhR05Ja0RJQTk3?=
 =?utf-8?B?Y3FvNW5zNFB4YUtmR1hpUHJNdGNlQ1NSeElCc3VlQURGbGNNVWZjSWpONXhw?=
 =?utf-8?B?UTJZZ3hrZlpBVExXRjdNa0FjQzVSMHVWREJxMlpMYWFzTkhCZ2pMLzAzSjlv?=
 =?utf-8?B?MDBmNWJoZlBiaGJ2Wk5IemZjcWozb3VlbFVuaitHQlp1RUhsZW9WWnN0UEF5?=
 =?utf-8?B?ME9FODFDWmQweXFFTmxxQVluYVVDZGdPT2dYTk1nOFVCTEZ5cGdYU2s3NlFt?=
 =?utf-8?B?OG80eEwwZlF5UDVxSTRROGNhMkVUSTAvd2FRVklCRjVFR2V3Ni94Sk5HVDZm?=
 =?utf-8?B?YSt1eUlSbjBEVnVoMHZNVG5SQVZDQUdXWWNCaGM2aDF2REdlbWJPVVdWOVNm?=
 =?utf-8?B?Qzl6RkVKRTNuY0Q5TFdQeDBXMDZUamYzNkdlT0VNWVkzcU1ZcWQzbUhqRm9U?=
 =?utf-8?B?cDc5dTJ1V2NxTGNqaTRUcVYyd3c3NmFqdWpHTC9QOGZXWERKdENDVk83cy9W?=
 =?utf-8?B?R0trdjFIVDhUOTZ0U0MvZDM1eXJOU080YTVCbkVWNWhOd1BSNldIc1JROE1r?=
 =?utf-8?B?bDA0dXBmTGZYVzdGM1dLZGNkM21CRkp0WHN4MmlmZWM3Tis0amJrbDZzRVZ4?=
 =?utf-8?B?UDUrZEwrS1BhVlZVT0MzcVJNWnFqZy81UnZQckl6MTFjR2RnekQ4QzBPV2xa?=
 =?utf-8?B?RXViQjhRejAwYUxJVFZCR3RiMEc1ODBoR1BDdlUvcmlCUjBGOHh1dThpVEp0?=
 =?utf-8?B?Q25vQnR4dlE0bEhwbldRL0VtTjBxdnB3bVhIZ2VkKzBBVUI4K21ST3NNcW9v?=
 =?utf-8?B?YnRLVG5wbDBLUWhCYWpqOGZTaGUyS0EvNkVKSFZ6dEgwRCtQSTRkSjFOVEpw?=
 =?utf-8?B?US9kVzhjeTEvbkUzK0tic1BpTHFHWTdFeTd4eTBUV05EMkdjSnhQNXJoZnc4?=
 =?utf-8?B?dDBQSnVDdmtNYzh2Tk01WVFJRTh1a05sZ1gwdjBOSWpQUGkyektsZG85NGd3?=
 =?utf-8?B?YzRnbDIvdEl6VUlKT0tzMnB1MzU1b1VtU3B1L2dRUG5JQWt6clpWc3VxclY0?=
 =?utf-8?B?SkRNenh3M2NrbEpsa3lmOXpPVHhGV3N2cmUwR3dXQ3dtbVFvQzVScU5XYWdj?=
 =?utf-8?B?VzRabDA3dENmYm9tbzUwei9WNUx4ZmtZQ05LSjcvVGNiOHRRUURxMG5SRmZk?=
 =?utf-8?B?ZzdXa3dzTGRsQW00dW5FY2x5ZXM4YzJIbVREbExCMmhRNFdrZHdvM3ROcU1D?=
 =?utf-8?B?dlovK3lrVkFwdFVLY1Zuc3pIaDF1czdGYmFXb0tJc2ZGbXhlbFhxaVh4U3Nt?=
 =?utf-8?B?SkxwK016QzFJSFFBRnhhMWd2SzE0Y0pmVjQyaThDVDA1MG1Na3dhN1Z2RHlM?=
 =?utf-8?B?dE5ZTWpwNWpvb1ovaHlNZlZ6R0FpN2dMQ3hBUU5FN0lXTU5kNWZyalhmVktz?=
 =?utf-8?B?WTNWTi91RGtsRXFDbThLSFdmdHhsVUhOanlnR2pIcWZpcVNTYy80Z09FQVdH?=
 =?utf-8?B?a2JSNml6QUNyY1NGSUdyVk5MWXFiR3djbmsxaTMrMHN4YllvSHhzU2VHV1B1?=
 =?utf-8?B?ZmtGWEQ1dkZpMVkvcWduMFFBamljNDRRZS8rU1RDUWFPaENublk1dXMxZjRU?=
 =?utf-8?B?c21nb1QxVFFXZzh5MnFHRWNLSkxGdlFYc1dlZmh5Yjg5MU5BVnVhb21xU3Zr?=
 =?utf-8?B?Y1Exd2prdHFrSkJ0UjB6cGVzZHVUckZFZ1VxT3U4am1QUWovMEVycEhVKzcw?=
 =?utf-8?B?elkzMktlQ2dMRndMbmgzbHBmYXdRK0ZtSHBXS2ljVzVmTnJIN1cwM1BxcGE5?=
 =?utf-8?B?Z1ZXN211VDI0NS9HcG14VVBYSHJycHltZDZ3MDRFb0I2K3NYZW5lWmNiVGtZ?=
 =?utf-8?B?c25aRnBTRFBmNXJ0cHNXemJVL0duaC82VXdYbmZBTkxvYmJJanRmUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PUZPR06MB5887.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb9ebc7e-4735-4f06-1430-08de707eade1
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 12:50:51.8517
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S76HchYcst7qBqOO/1hRdbVxAgYK4Pr6WhlRm8LTKtz4mZkeA4LY2/799UyRFQlmIACva8N8KPgbuphIHeOTcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY1PPF9FCAE99BB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266937-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[cixtech.com];
	FREEMAIL_TO(0.00)[pengutronix.de,kernel.org,cixtech.com,outlook.com,gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.855];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1257E1679EE
X-Rspamd-Action: no action

SGkgUGhpbGlwcDoNCg0KU29ycnkgZm9yIGRlbGF5IHJlcGx5Lg0KDQo+IA0KPiBDQVVUSU9OOiBT
dXNwaWNpb3VzIEVtYWlsIGZyb20gdW51c3VhbCBkb21haW4uDQo+IA0KPiBPbiBNaSwgMjAyNi0w
Mi0xMSBhdCAwMTo1NiArMDAwMCwgR2FyeSBZYW5nIHdyb3RlOg0KPiBbLi4uXQ0KPiA+IEFzIEty
enlzenRvZidzIGFkdmljZXMsIHdlIHdpbGwgcmVtb3ZlIHRoZSBmaWxlIG5hbWVkDQo+ID4gc2t5
MS1zeXN0ZW0tY29udHJvbC5jIE1ha2UgdGhlIHN5c2NvbiBub2RlIGRpcmVjdGx5IGJpbmQgdG8g
cmVzZXQgZHJpdmVyLiBBcmUNCj4geW91IGFncmVlPw0KPiBbLi4uXQ0KPiA+ID4NCj4gPiA+DQo+
ID4gPg0KPiA+ID4NCj4gPiBXZSB3aWxsIGRlbGV0ZSBza3kxLXN5c3RlbS1jb250cm9sLmMgYXMg
S3J6eXN6dG9mJ3MgYWR2aWNlcy4NCj4gPiBBcmUgeW91IEFncmVlPw0KPiBbLi4uXQ0KPiA+DQo+
ID4gWWVzLCB5b3UncmUgcmlnaHQuIFdlIGludGVuZCB0byBhZG9wdCB0aGUgYWR2aWNlcyBmcm9t
IGNvbm9yLiBCdXQgSQ0KPiA+IHNhdyB0aGUgbmV3IHN5c2NvbiBzY2hlbWUgZnJvbSBzcGFjZW1p
dCxrMjEwLXN5c2NvbiBhbmQgdGhlc2UgY29tbWVudHMNCj4gZnJvbSBLcnp5c3p0b2YuIFdlIHdp
bGwgZGVsZXRlIHNreTEtc3lzdGVtLWNvbnRyb2wuYyBhcyBLcnp5c3p0b2YncyBhZHZpY2VzLiBB
cmUNCj4geW91IEFncmVlPw0KPiANCj4gSSBhZ3JlZS4NCj4gDQoNCkl0J3MgYSBzdXJwcmlzZSEg
SSdtIGdsYWQgdG8gc2VlIHlvdXIgYWdyZWVtZW50LiBXZSB3aWxsIHN1Ym1pdCB2OSBmb2xsb3dp
bmcgS3J6eXN6dG9mJ3MgYWR2aWNlcy4gDQoNCkJlc3QgUmVnYXJkcw0KR2FyeQ0KDQo+IHJlZ2Fy
ZHMNCj4gUGhpbGlwcA0K

