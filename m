Return-Path: <devicetree+bounces-112642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 890A19A31FF
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 03:23:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10B511F22513
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 01:23:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A961C5466B;
	Fri, 18 Oct 2024 01:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="oUAevBMl"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2081.outbound.protection.outlook.com [40.107.20.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA05728399;
	Fri, 18 Oct 2024 01:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.81
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729214610; cv=fail; b=Ehjr5YbKyQfcuSJHr4CfIEFw+syy4vv6X5fmrqevny/gIF6wNRw6iGOLDJpRnkKqN1BkuIzlfy2FR7frcnz7Lw2PPn1iCoG8B7mdzW8N+PU7LSp03a8t7xIeZBUhr+FpfZ6fZhCVSvvKDDhEx7ePqbUoFYmYNbBTvUC+Nqs/NmE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729214610; c=relaxed/simple;
	bh=/PC1FCHiCTyBmhW2qOsuSzH2DG+FvY73h7f2hhCImbk=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=ZbJsnkqzsCGJ3z2sgDYHjVJXLRZcF0PO3o51z68labKEgbMbVI8DxUhzPYsxXTt36+EfcLVRKP+khmHS2isLSNo9ze2Jlq9y+njNbr1VGNf8gtLEwAUBcImxabFv7QUOSsWQM8k7IMfCFnAebNivwXUwTSPLgPYqt9K50vb/zdc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=oUAevBMl; arc=fail smtp.client-ip=40.107.20.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TTG/OhE+aIzF0s1Zmp25aUnjitEZYRp/fLL8qHqi3AjDdY/XzYp8wuLYM9GAbPi1IiSv0Bt27YPCDdRsBdxifixDPvwGmof4X2ZxRh68Y8cZmQ/lHGPNGM+0LINqirJJfv3WfbZRPFhXV+dIuGAGcBa9cneEFGRtHTIa6gx5y+C/gJYzqMozWQdMIatu/HgDg/xYHOEJ6T1ZJzGy162/ASm05iq0RUyF3pkYZWVkO9Y+euHRTcQhnBAVkrpq2Aqnj2PJNOtAYkgN2sVDWZIoRsU1oM+RE+aDox+B9xMyuD71io4jU7Jo5RcMQYL8YGHWEspRTXgOWu037bUkbLKG/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/PC1FCHiCTyBmhW2qOsuSzH2DG+FvY73h7f2hhCImbk=;
 b=spHWbnKjtjqULLtP8l5cuQr63zVMhx2IqRAfyju8rLkx62c4915LVMbvT4w4pT8NKSTxl2ikseQu5VpSNMQjEWiS46lLMEdokbFbE3q7/8ja9NAXK0YKv5wxofgsw0B8uM8g668wZLB/WjtZ5BEL68GADvbIUZy1YDLANjK2Wxt2HNr0cy3PuWC/qmUl6w9tc3aCjyHqL7xtOzwYIrNSe3JoeXR+IHcSvh8kJYAwSuvsmF1uAI1/VtB0dffCeRoUdDmVQJwZEUOASKM/Ap3Jr7JaIM78rMOxpJZfQe8vSGxVRgGzZH5/7cVX195W1qH2AryolN3M4Gm5jleBuTrAxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/PC1FCHiCTyBmhW2qOsuSzH2DG+FvY73h7f2hhCImbk=;
 b=oUAevBMlNBOzwgjgGB/UISJMXwxIOtlY/2XgTaLxmmu48FfEfQD/xoDq76r0wt/3bf69ItUlD6O8CJotzcqvKiuurETkuiU/zkbXTCGTG/zbBFTqmeD8cDSDJ5R4E0LwgjI0IbEa1TDXi1YKv94nyUyJtCDLUCXFMXV27oyh74aFChCsPEZqY1NiDU/AzZVSBc16ZKeba9p3NHuYQHd0WENCrG1ZuH4MVXretlskjASPgFUCNbjrzH4Nq62as1OHBhc/CdLK42aPUjTDGKK3ysDEeAbCg4nj5Yb4UDwdoOOm+fJnRDrtUm06EFIty91d1ee4AfGNpGPU3qXRceyaWA==
Received: from PAXPR04MB8510.eurprd04.prod.outlook.com (2603:10a6:102:211::7)
 by DBAPR04MB7398.eurprd04.prod.outlook.com (2603:10a6:10:1a0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.17; Fri, 18 Oct
 2024 01:23:25 +0000
Received: from PAXPR04MB8510.eurprd04.prod.outlook.com
 ([fe80::a7c2:e2fa:8e04:40db]) by PAXPR04MB8510.eurprd04.prod.outlook.com
 ([fe80::a7c2:e2fa:8e04:40db%7]) with mapi id 15.20.8048.020; Fri, 18 Oct 2024
 01:23:24 +0000
From: Wei Fang <wei.fang@nxp.com>
To: Frank Li <frank.li@nxp.com>
CC: "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
	<edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
	"pabeni@redhat.com" <pabeni@redhat.com>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>,
	"christophe.leroy@csgroup.eu" <christophe.leroy@csgroup.eu>,
	"linux@armlinux.org.uk" <linux@armlinux.org.uk>, "bhelgaas@google.com"
	<bhelgaas@google.com>, "horms@kernel.org" <horms@kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>
Subject: RE: [PATCH v3 net-next 04/13] net: enetc: add initial netc-blk-ctrl
 driver support
Thread-Topic: [PATCH v3 net-next 04/13] net: enetc: add initial netc-blk-ctrl
 driver support
Thread-Index: AQHbIGrdmmjX2E3pYE6m8VtusDSLubKLI9CAgACT3EA=
Date: Fri, 18 Oct 2024 01:23:24 +0000
Message-ID:
 <PAXPR04MB8510CADFAAD3F4F0DA046ADB88402@PAXPR04MB8510.eurprd04.prod.outlook.com>
References: <20241017074637.1265584-1-wei.fang@nxp.com>
 <20241017074637.1265584-5-wei.fang@nxp.com>
 <ZxE8Ze5xAhAXEzog@lizhi-Precision-Tower-5810>
In-Reply-To: <ZxE8Ze5xAhAXEzog@lizhi-Precision-Tower-5810>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB8510:EE_|DBAPR04MB7398:EE_
x-ms-office365-filtering-correlation-id: 169349aa-7aba-4ca1-6c22-08dcef137638
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|7416014|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?gb2312?B?L3N3RXhwTmJJUnI2WUM0c21TRXIyZTRVTzNmV09Yd0pRdjhsK3NoMUxZUlpl?=
 =?gb2312?B?R3NHbTVLSDEzSE8xakF2bElXZWtYdkxSbW0xT2ZIV1AvUEcxa3lUVUFFY1Br?=
 =?gb2312?B?VWlJNFgvMDhZOVB5S2paRlpuWExsRk1yRHN4MTMrMExhTmFTMFlKczFtdlBI?=
 =?gb2312?B?SXdHUFF5WHVWNi9IcUxSTlNiZVNWQ08yYkdJQW1FNnpqUEY0ZXNPdDBVWDVK?=
 =?gb2312?B?RWpuakMyNVE3REE4YUg1Zm9Fa1lTa1U3WTE4c2FnRXgrSHJEOFFNTVRZTVVo?=
 =?gb2312?B?U3EyRE8vMi9xTDRxeHBtZW0xVUVObkUwSGdXcmFCS1cwYitWdFpaUHBMZHcw?=
 =?gb2312?B?TnR2dVU5a1VPbVZ4aGxiMkFGUkxNOWxlVlJRa0JTZ0xncVdRdUVLT3R2VU9h?=
 =?gb2312?B?NEtnQnArRGt5eE03TUhBaUlLT0lReDdPcTg4c2IrYlBrS09KWUlRUllJcGsy?=
 =?gb2312?B?RTY4Yk5keHQySkFUOFllWCtadjNMVUlVNk9qRTViU0hQazhoYS90b3Bzb1Zi?=
 =?gb2312?B?bVlxNzcwbVNjTWoyUEc3bmRqNEd5d01WbzRyYnN6V1VsNEdxM3N5ck5uR0xD?=
 =?gb2312?B?azJnV3VubVh4em1XS0NySjJpTElMb3NzVjZFaUxISWRPV3BnQlVNNlV6dXpT?=
 =?gb2312?B?WUhWLzhJSGZXMWw3YWc4SUNmRDYvWG8xZ0ZZUy8ra1JPaGkzNnRXVExoWWhq?=
 =?gb2312?B?SXVZY1hzb0JGN3FSL1FQYzk0M21WV01Qd3FUK0F6OWttQ1hncW42akkrRnBh?=
 =?gb2312?B?a3FqeUFsdExyTFBDMHcrVi84K2o0QldEdC9QNmlzaXkwekpxYndLNHJuem5s?=
 =?gb2312?B?cG1xdmJIa05hM1Z6eUlUL1ZaTWhHVmtsTGk5MlNhVldyaTNGRHF5NUgrcThL?=
 =?gb2312?B?d3FXdWRycGh0c2EzS21RWEZKQk1vYllkYnc5cE94SHI4NmFzd2Q4UW4zRWVx?=
 =?gb2312?B?MGxBaklUbnJLVlE0aUlvVFo5TVVmcWhmTEI5UDBDbjRtN1ZnNlIzVUZJZHdX?=
 =?gb2312?B?UWxlNysvNFdoQTg2YlBRWlBBTSt3OCt6Q2dTSDRNdGZxSStzR0F6djd5eG9u?=
 =?gb2312?B?RmdHUSs4VjdjOHB5WEZyOEgyUGR5L3paTW5qdGw2UE9FVENTNGErd1pxK3V5?=
 =?gb2312?B?dzZKejQwQ3pSOTlUeWtRNFlwcHd3eXpDQms3SVlFUXFyWlFSVHI1V3FoK21x?=
 =?gb2312?B?QUw3U2w1WHlEclNxZUEzTGIwNmY5azI5S0xWWTNwckpWOHV2MmxJOGI5WmhW?=
 =?gb2312?B?OEV1ZXFZTTBYQVVmd0Rrb09ydE5pTUVwZVRLRlowZUs2czJGOEMwcnZUakpm?=
 =?gb2312?B?elNVSjU3NkJqdW1GVmU4TElLeHYwWVA5L1dTYWtwSklocnA1dXNTWGJQWWlZ?=
 =?gb2312?B?VmVXZFpaVGprZlJwUStPdVA5eTV2emNjRGk2cVQwQzlQdmNmbVhDZDkvU210?=
 =?gb2312?B?eEdYcndXdi9JWEV5Z1hKVWxiTHhFTmhQRG5tU3lmdGVKckJXY25PS3Z1MzAv?=
 =?gb2312?B?TUlZaFZyaW5RTEdpMjdNZFNYamtTQVJHQ2hoT2ZxR25aQU5IM0VaU2ZjTFpR?=
 =?gb2312?B?NkQ2Vi9LTDU3Zy8vRlhwYStWMDBFS1BWbFFRUmZxQnlTZ2ZrdW5scWtrTVBX?=
 =?gb2312?B?bnpZYWdsK0oxUDFDblh1ZTd0TVFQeVhUaWwxUEdEVmNERG41b3BaUi9LVmd6?=
 =?gb2312?B?SElQY0Y5VDBkOXlKRU9PUVd1UDhra1hLa3FQMGF2U3U1SVFSUUthdlpXS2Fk?=
 =?gb2312?B?aVUwczNrOFpMWGJ2Z3ZLQ0U1NTdKVDZJYmMwSGFmSHdZZk9tck5YQlg2VUdW?=
 =?gb2312?Q?jnYUOoM5Zax7b81zlluo00QXfCZvMP+UZ2i+U=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8510.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?gb2312?B?eXVZaDByQ2JjaVlWdCtwUjMxVDZycTZNSXAxdWR2MkwwU0FOZWtiUDNIYWh2?=
 =?gb2312?B?cnVldzh2SFdYQWFPT2FrNEJrR2dwTmdrQU41cFNiak1la1Fhbk9wdFlLQ3hk?=
 =?gb2312?B?THJKdVc4aUltOWFGekhGRWMyVnlZSWtzR3BlUUVQeG9EdFBDaTYyTDBBTFpl?=
 =?gb2312?B?OWNYV2FNL1VJRkNHWDJBS09RRi8xZFJDdGpLZkYwTE41REVNbXdWZDhXajlD?=
 =?gb2312?B?RTkwaUZNVklpVjB0V3N6cm1GWUxwM2x6OG5SOFBXV1hhdG45R1pVOGp3d0Qx?=
 =?gb2312?B?ZUJ5eE41TmdNQlV0ZVN6M29Nam41M0dQNGIvOTNJRmNwRkNPeUQzcll6dTdK?=
 =?gb2312?B?Qy9TRDl2Y3dUbnFZYjlpSkFsVWtpTTEzQUp4UTIySGg5RTZzeEM5Zmp2aW01?=
 =?gb2312?B?T1V1TGwwVTlGMkRKS1VkYjZ6Q0p0Q2c3QUFEYVhDMVRUNFRkSVVSZlRiU0hh?=
 =?gb2312?B?ZkIwOWk0blF5cGM5L3Z0TlRkcmtzVEZhVTc2V21YMnZ0NzRUWGFHUmhoY3BO?=
 =?gb2312?B?WmF6ZU9TcDUxTkRxVjhBd3Fmc3B2RWdsSWdLWkh2L05CSHRGbGlKcDZYWU10?=
 =?gb2312?B?d05tMDd2OTkvZUhjTGF4NzRzRFpwNHBqelJHME54cW55YTRIbGVjRjhYWUtG?=
 =?gb2312?B?ZWc5and3NUl2cjEvbnFnZ2J4ZWE5cDlzVUExT0c4aUhaUlZPY1NsdHRUcGsx?=
 =?gb2312?B?bGNMcHFSd2FhUlJVRHVnYlhDYjY4NWJzQi9Sdk43aXg2WHorOVdZUFFZeGJr?=
 =?gb2312?B?VlZLSVg4TE5VL1lyZm1EbmZQdnhxa2pzNldHdjBYTENxOS8vclRTNzgrSkRw?=
 =?gb2312?B?MVpUajJMbnpqd1JUNnZ6dUN0Z21CemhVT3FPNkpDdkJEVG15WWpZNVYxSWg2?=
 =?gb2312?B?ZFRaZTJhRmZkMS9JWGd0TUM5a3ZuVHo1UTdVMS9MQXorWGFrWkZwYWFEd1Ru?=
 =?gb2312?B?K0JiNXh5akg5ZFlKN2xaMmNUaFQ4VnhTVlVrc3RXdWxCbmFCNDBwZzJ3aG56?=
 =?gb2312?B?TkE5OUxrNGdKeXZsSzhnWkk4N3J0N3Bsdk9SckpxUFo1QUlPWW5vK3VPc3Ay?=
 =?gb2312?B?OFdYVVFwdUZncFFiaE5XSWE5SFFEd3RFUktqM0FYVzlRMG41WllTZC9pd2pH?=
 =?gb2312?B?YjhkczR4YkpId3UyS3JOZ05RUDQ4cjd1ZlhLRUc5QWFFNzBSS3h4ZmtyakI1?=
 =?gb2312?B?bTErUFhyZmNHSDhleTNVcGorN1UvRzQ1THhWVUFvdE9KNE93bjlZTWNBdndi?=
 =?gb2312?B?VGwwaTRLbkIvaFQ0VXVraXo4STJ0Y3lMdU5nMWNRRngzUURXOUFxMmFRUkpv?=
 =?gb2312?B?WXhrblNZVDdaeFNVcEFTTHo3aHE4by9IdC9CRWo5OHpYcUdieW9TeC9qL0Er?=
 =?gb2312?B?UjhOZnBibTRiSTRodmM2dEM3UmJIVVZhUVoxZG1WK1NFaW41RCtaUkVrbFRO?=
 =?gb2312?B?dkJ6aUYrRkhHaHpjN1E5dzVEaVlwU3RDcSt2MzVHY0V1R05mUFBsS05HcTVk?=
 =?gb2312?B?WHVpK09GWGtuc3VxTlNPZGExWk8rNzdpNU1PakxlSm5RZ1R0c3hHbVNmRElw?=
 =?gb2312?B?dUZGTjBGcld3QXJSeHQydytsby9ZNHdMd1l2YlNYbzlYNEZGMmJXSHVweUh3?=
 =?gb2312?B?MlBKY1FKSjJTb1cwWHgwbEhVS3FoZnZTWWZsMEdWR2t4OGZKUWY2WTVZVGhF?=
 =?gb2312?B?TDZBVFlIbStSdHNuWlBtTFA2M3FrY0NhVXFHbWpGa2JycS9kSGlPem5oemJp?=
 =?gb2312?B?VkR6RnFDLzV6YUg1VTNjUVBDNzI5Ri9QL1JyNG44cDNtM1A2YXBma254R0F5?=
 =?gb2312?B?RVpvWEVUNTR2emdFdmtkUzE5OE1vRG5MS052SFY3ZUY0bW9MSzlYQzNxOTNq?=
 =?gb2312?B?UGkwZVA5VlltZk5sMkNKZjBueTNtQmtuQ3pZSmNEQStMeEN4NGVOSGNDdjB1?=
 =?gb2312?B?ZkhUalZkSmF5RzB2OTMyTC9mNDM3eW5TdW03SXlKenZHb2tzeHhncWxWcmxC?=
 =?gb2312?B?VU5UUjNWSWxXVlU2UGx0WVVZaEFWR0xxMTByZmlseCtnNmtQRUg3NU1NazBF?=
 =?gb2312?B?SlVsNzcwV3dBMWxXVmFTZ28vdmd3bGlkZmdmOUFML3ZZVlR2MWx5SFlzWWZ6?=
 =?gb2312?Q?N+oI=3D?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8510.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 169349aa-7aba-4ca1-6c22-08dcef137638
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2024 01:23:24.6507
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FJvJYlyFmFP7ItET8Ddf19ShcDI/+jvHjG69ENCRUFPQ4WYoLr2aRtE8lHVu1EguPeDGufdVMz3QI17Ajb1iFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7398

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBGcmFuayBMaSA8ZnJhbmsubGlA
bnhwLmNvbT4NCj4gU2VudDogMjAyNMTqMTDUwjE4yNUgMDozNA0KPiBUbzogV2VpIEZhbmcgPHdl
aS5mYW5nQG54cC5jb20+DQo+IENjOiBkYXZlbUBkYXZlbWxvZnQubmV0OyBlZHVtYXpldEBnb29n
bGUuY29tOyBrdWJhQGtlcm5lbC5vcmc7DQo+IHBhYmVuaUByZWRoYXQuY29tOyByb2JoQGtlcm5l
bC5vcmc7IGtyemsrZHRAa2VybmVsLm9yZzsNCj4gY29ub3IrZHRAa2VybmVsLm9yZzsgVmxhZGlt
aXIgT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT47IENsYXVkaXUNCj4gTWFub2lsIDxj
bGF1ZGl1Lm1hbm9pbEBueHAuY29tPjsgQ2xhcmsgV2FuZyA8eGlhb25pbmcud2FuZ0BueHAuY29t
PjsNCj4gY2hyaXN0b3BoZS5sZXJveUBjc2dyb3VwLmV1OyBsaW51eEBhcm1saW51eC5vcmcudWs7
IGJoZWxnYWFzQGdvb2dsZS5jb207DQo+IGhvcm1zQGtlcm5lbC5vcmc7IGlteEBsaXN0cy5saW51
eC5kZXY7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7DQo+IGRldmljZXRyZWVAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBsaW51eC1wY2lAdmdlci5rZXJu
ZWwub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjMgbmV0LW5leHQgMDQvMTNdIG5ldDogZW5l
dGM6IGFkZCBpbml0aWFsIG5ldGMtYmxrLWN0cmwNCj4gZHJpdmVyIHN1cHBvcnQNCj4gDQo+IE9u
IFRodSwgT2N0IDE3LCAyMDI0IGF0IDAzOjQ2OjI4UE0gKzA4MDAsIFdlaSBGYW5nIHdyb3RlOg0K
PiA+IFRoZSBuZXRjLWJsay1jdHJsIGRyaXZlciBpcyB1c2VkIHRvIGNvbmZpZ3VyZSBJbnRlZ3Jh
dGVkIEVuZHBvaW50DQo+ID4gUmVnaXN0ZXIgQmxvY2sgKElFUkIpIGFuZCBQcml2aWxlZ2VkIFJl
Z2lzdGVyIEJsb2NrIChQUkIpIG9mIE5FVEMuDQo+ID4gRm9yIGkuTVggcGxhdGZvcm1zLCBpdCBp
cyBhbHNvIHVzZWQgdG8gY29uZmlndXJlIHRoZSBORVRDTUlYIGJsb2NrLg0KPiA+DQo+ID4gVGhl
IElFUkIgY29udGFpbnMgcmVnaXN0ZXJzIHRoYXQgYXJlIHVzZWQgZm9yIHByZS1ib290IGluaXRp
YWxpemF0aW9uLA0KPiA+IGRlYnVnLCBhbmQgbm9uLWN1c3RvbWVyIGNvbmZpZ3VyYXRpb24uIFRo
ZSBQUkIgY29udHJvbHMgZ2xvYmFsIHJlc2V0DQo+ID4gYW5kIGdsb2JhbCBlcnJvciBoYW5kbGlu
ZyBmb3IgTkVUQy4gVGhlIE5FVENNSVggYmxvY2sgaXMgbWFpbmx5IHVzZWQNCj4gPiB0byBzZXQg
TUlJIHByb3RvY29sIGFuZCBQQ1MgcHJvdG9jb2wgb2YgdGhlIGxpbmtzLCBpdCBhbHNvIGNvbnRh
aW5zDQo+ID4gc2V0dGluZ3MgZm9yIHNvbWUgb3RoZXIgZnVuY3Rpb25zLg0KPiA+DQo+ID4gTm90
ZSB0aGUgSUVSQiBjb25maWd1cmF0aW9uIHJlZ2lzdGVycyBjYW4gb25seSBiZSB3cml0dGVuIGFm
dGVyIGJlaW5nDQo+ID4gdW5sb2NrZWQgYnkgUFJCLCBvdGhlcndpc2UsIGFsbCB3cml0ZSBvcGVy
YXRpb25zIGFyZSBpbmhpYml0ZWQuIEEgd2FybQ0KPiA+IHJlc2V0IGlzIHBlcmZvcm1lZCB3aGVu
IHRoZSBJRVJCIGlzIHVubG9ja2VkLCBhbmQgaXQgcmVzdWx0cyBpbiBhbiBGTFINCj4gPiB0byBh
bGwgTkVUQyBkZXZpY2VzLiBUaGVyZWZvcmUsIGFsbCBORVRDIGRldmljZSBkcml2ZXJzIG11c3Qg
YmUgcHJvYmVkDQo+ID4gb3IgaW5pdGlhbGl6ZWQgYWZ0ZXIgdGhlIHdhcm0gcmVzZXQgaXMgZmlu
aXNoZWQuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBXZWkgRmFuZyA8d2VpLmZhbmdAbnhwLmNv
bT4NCj4gPiAtLS0NCj4gPiB2MiBjaGFuZ2VzOg0KPiA+IDEuIEFkZCBsaW51eC9iaXRzLmgNCj4g
PiAyLiBSZW1vdmUgdGhlIHVzZWxlc3MgY2hlY2sgYXQgdGhlIGJlZ2lubmluZyBvZiBuZXRjX2Js
a19jdHJsX3Byb2JlKCkuDQo+ID4gMy4gVXNlIGRldl9lcnJfcHJvYmUoKSBpbiBuZXRjX2Jsa19j
dHJsX3Byb2JlKCkuDQo+ID4gdjMgY2hhbmdlczoNCj4gPiAxLiBDaGFuZ2UgdGhlIGNvbXBhdGli
bGUgc3RyaW5nIHRvICJwY2kxMTMxLGUxMDEiLg0KPiA+IDIuIEFkZCBkZXZtX2Nsa19nZXRfb3B0
aW9uYWxfZW5hYmxlZCgpIGluc3RlYWQgb2YNCj4gPiBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoKSAz
LiBEaXJlY3RseSByZXR1cm4gZGV2X2Vycl9wcm9iZSgpLg0KPiA+IDQuIFJlbW92ZSB1bnVzZWQg
bmV0Y19yZWFkNjQoKS4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNj
YWxlL2VuZXRjL0tjb25maWcgIHwgIDE0ICsNCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJl
ZXNjYWxlL2VuZXRjL01ha2VmaWxlIHwgICAzICsNCj4gPiAgLi4uL2V0aGVybmV0L2ZyZWVzY2Fs
ZS9lbmV0Yy9uZXRjX2Jsa19jdHJsLmMgIHwgNDQwICsrKysrKysrKysrKysrKysrKw0KPiA+ICBp
bmNsdWRlL2xpbnV4L2ZzbC9uZXRjX2dsb2JhbC5oICAgICAgICAgICAgICAgfCAgMTkgKw0KPiA+
ICA0IGZpbGVzIGNoYW5nZWQsIDQ3NiBpbnNlcnRpb25zKCspDQo+ID4gIGNyZWF0ZSBtb2RlIDEw
MDY0NA0KPiA+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9lbmV0Yy9uZXRjX2Jsa19j
dHJsLmMNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvZnNsL25ldGNfZ2xv
YmFsLmgNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2Nh
bGUvZW5ldGMvS2NvbmZpZw0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL2Vu
ZXRjL0tjb25maWcNCj4gPiBpbmRleCA0ZDc1ZTY4MDdlOTIuLjUxZDgwZWE5NTlkNCAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUvZW5ldGMvS2NvbmZpZw0K
PiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9lbmV0Yy9LY29uZmlnDQo+
ID4gQEAgLTc1LDMgKzc1LDE3IEBAIGNvbmZpZyBGU0xfRU5FVENfUU9TDQo+ID4gIAkgIGVuYWJs
ZS9kaXNhYmxlIGZyb20gdXNlciBzcGFjZSB2aWEgUW9zIGNvbW1hbmRzKHRjKS4gSW4gdGhlIGtl
cm5lbA0KPiA+ICAJICBzaWRlLCBpdCBjYW4gYmUgbG9hZGVkIGJ5IFFvcyBkcml2ZXIuIEN1cnJl
bnRseSwgaXQgaXMgb25seSBzdXBwb3J0DQo+ID4gIAkgIHRhcHJpbyg4MDIuMVFidikgYW5kIENy
ZWRpdCBCYXNlZCBTaGFwZXIoODAyLjFRYnUpLg0KPiA+ICsNCj4gPiArY29uZmlnIE5YUF9ORVRD
X0JMS19DVFJMDQo+ID4gKwl0cmlzdGF0ZSAiTkVUQyBibG9ja3MgY29udHJvbCBkcml2ZXIiDQo+
ID4gKwloZWxwDQo+ID4gKwkgIFRoaXMgZHJpdmVyIGNvbmZpZ3VyZXMgSW50ZWdyYXRlZCBFbmRw
b2ludCBSZWdpc3RlciBCbG9jayAoSUVSQikgYW5kDQo+ID4gKwkgIFByaXZpbGVnZWQgUmVnaXN0
ZXIgQmxvY2sgKFBSQikgb2YgTkVUQy4gRm9yIGkuTVggcGxhdGZvcm1zLCBpdCBhbHNvDQo+ID4g
KwkgIGluY2x1ZGVzIHRoZSBjb25maWd1cmF0aW9uIG9mIE5FVENNSVggYmxvY2suDQo+ID4gKwkg
IFRoZSBJRVJCIGNvbnRhaW5zIHJlZ2lzdGVycyB0aGF0IGFyZSB1c2VkIGZvciBwcmUtYm9vdCBp
bml0aWFsaXphdGlvbiwNCj4gPiArCSAgZGVidWcsIGFuZCBub24tY3VzdG9tZXIgY29uZmlndXJh
dGlvbi4gVGhlIFBSQiBjb250cm9scyBnbG9iYWwgcmVzZXQNCj4gPiArCSAgYW5kIGdsb2JhbCBl
cnJvciBoYW5kbGluZyBmb3IgTkVUQy4gVGhlIE5FVENNSVggYmxvY2sgaXMgbWFpbmx5IHVzZWQN
Cj4gPiArCSAgdG8gc2V0IE1JSSBwcm90b2NvbCBhbmQgUENTIHByb3RvY29sIG9mIHRoZSBsaW5r
cywgaXQgYWxzbyBjb250YWlucw0KPiA+ICsJICBzZXR0aW5ncyBmb3Igc29tZSBvdGhlciBmdW5j
dGlvbnMuDQo+ID4gKw0KPiA+ICsJICBJZiBjb21waWxlZCBhcyBtb2R1bGUgKE0pLCB0aGUgbW9k
dWxlIG5hbWUgaXMgbnhwLW5ldGMtYmxrLWN0cmwuDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9lbmV0Yy9NYWtlZmlsZQ0KPiA+IGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvZnJlZXNjYWxlL2VuZXRjL01ha2VmaWxlDQo+ID4gaW5kZXggYjEzY2JiYWJiMmVh
Li41YzI3NzkxMGQ1MzggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJl
ZXNjYWxlL2VuZXRjL01ha2VmaWxlDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJl
ZXNjYWxlL2VuZXRjL01ha2VmaWxlDQo+ID4gQEAgLTE5LDMgKzE5LDYgQEAgZnNsLWVuZXRjLW1k
aW8teSA6PSBlbmV0Y19wY2lfbWRpby5vIGVuZXRjX21kaW8ubw0KPiA+DQo+ID4gIG9iai0kKENP
TkZJR19GU0xfRU5FVENfUFRQX0NMT0NLKSArPSBmc2wtZW5ldGMtcHRwLm8gIGZzbC1lbmV0Yy1w
dHAteQ0KPiA+IDo9IGVuZXRjX3B0cC5vDQo+ID4gKw0KPiA+ICtvYmotJChDT05GSUdfTlhQX05F
VENfQkxLX0NUUkwpICs9IG54cC1uZXRjLWJsay1jdHJsLm8NCj4gPiArbnhwLW5ldGMtYmxrLWN0
cmwteSA6PSBuZXRjX2Jsa19jdHJsLm8NCj4gPiBcIE5vIG5ld2xpbmUgYXQgZW5kIG9mIGZpbGUN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL2VuZXRjL25l
dGNfYmxrX2N0cmwuYw0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL2VuZXRj
L25ldGNfYmxrX2N0cmwuYw0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAw
MDAwMDAwMDAwLi5kNzIwYmI2MTNiNWINCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL2VuZXRjL25ldGNfYmxrX2N0cmwuYw0KPiA+IEBA
IC0wLDAgKzEsNDQwIEBADQo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MCsgT1IgQlNELTMtQ2xhdXNlKQ0KPiA+ICsvKg0KPiA+ICsgKiBOWFAgTkVUQyBCbG9ja3MgQ29u
dHJvbCBEcml2ZXINCj4gPiArICoNCj4gPiArICogQ29weXJpZ2h0IDIwMjQgTlhQDQo+ID4gKyAq
Lw0KPiA+ICsjaW5jbHVkZSA8bGludXgvYml0cy5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvY2xr
Lmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9kZWJ1Z2ZzLmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51
eC9kZWxheS5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvZnNsL25ldGNfZ2xvYmFsLmg+DQo+ID4g
KyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L29mLmg+DQo+
ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L29m
X25ldC5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4NCj4gPiArI2luY2x1
ZGUgPGxpbnV4L3BoeS5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+
DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9zZXFfZmlsZS5oPg0KPiA+ICsNCj4gPiArLyogTkVUQ01J
WCByZWdpc3RlcnMgKi8NCj4gPiArI2RlZmluZSBJTVg5NV9DRkdfTElOS19JT19WQVIJCTB4MA0K
PiA+ICsjZGVmaW5lICBJT19WQVJfMTZGRl8xNkdfU0VSREVTCQkweDENCj4gPiArI2RlZmluZSAg
SU9fVkFSKHBvcnQsIHZhcikJCSgoKHZhcikgJiAweGYpIDw8ICgocG9ydCkgPDwgMikpDQo+ID4g
Kw0KPiA+ICsjZGVmaW5lIElNWDk1X0NGR19MSU5LX01JSV9QUk9UCQkweDQNCj4gPiArI2RlZmlu
ZSBDRkdfTElOS19NSUlfUE9SVF8wCQlHRU5NQVNLKDMsIDApDQo+ID4gKyNkZWZpbmUgQ0ZHX0xJ
TktfTUlJX1BPUlRfMQkJR0VOTUFTSyg3LCA0KQ0KPiA+ICsjZGVmaW5lICBNSUlfUFJPVF9NSUkJ
CQkweDANCj4gPiArI2RlZmluZSAgTUlJX1BST1RfUk1JSQkJCTB4MQ0KPiA+ICsjZGVmaW5lICBN
SUlfUFJPVF9SR01JSQkJCTB4Mg0KPiA+ICsjZGVmaW5lICBNSUlfUFJPVF9TRVJJQUwJCTB4Mw0K
PiA+ICsjZGVmaW5lICBNSUlfUFJPVChwb3J0LCBwcm90KQkJKCgocHJvdCkgJiAweGYpIDw8ICgo
cG9ydCkgPDwgMikpDQo+ID4gKw0KPiA+ICsjZGVmaW5lIElNWDk1X0NGR19MSU5LX1BDU19QUk9U
KGEpCSgweDggKyAoYSkgKiA0KQ0KPiA+ICsjZGVmaW5lIFBDU19QUk9UXzFHX1NHTUlJCQlCSVQo
MCkNCj4gPiArI2RlZmluZSBQQ1NfUFJPVF8yNTAwTV9TR01JSQkJQklUKDEpDQo+ID4gKyNkZWZp
bmUgUENTX1BST1RfWEZJCQkJQklUKDMpDQo+ID4gKyNkZWZpbmUgUENTX1BST1RfU0ZJCQkJQklU
KDQpDQo+ID4gKyNkZWZpbmUgUENTX1BST1RfMTBHX1NYR01JSQkJQklUKDYpDQo+ID4gKw0KPiA+
ICsvKiBORVRDIHByaXZpbGVnZWQgcmVnaXN0ZXIgYmxvY2sgcmVnaXN0ZXIgKi8NCj4gPiArI2Rl
ZmluZSBQUkJfTkVUQ1JSCQkJMHgxMDANCj4gPiArI2RlZmluZSAgTkVUQ1JSX1NSCQkJQklUKDAp
DQo+ID4gKyNkZWZpbmUgIE5FVENSUl9MT0NLCQkJQklUKDEpDQo+ID4gKw0KPiA+ICsjZGVmaW5l
IFBSQl9ORVRDU1IJCQkweDEwNA0KPiA+ICsjZGVmaW5lICBORVRDU1JfRVJST1IJCQlCSVQoMCkN
Cj4gPiArI2RlZmluZSAgTkVUQ1NSX1NUQVRFCQkJQklUKDEpDQo+ID4gKw0KPiA+ICsvKiBORVRD
IGludGVncmF0ZWQgZW5kcG9pbnQgcmVnaXN0ZXIgYmxvY2sgcmVnaXN0ZXIgKi8NCj4gPiArI2Rl
ZmluZSBJRVJCX0VNRElPRkFVWFIJCQkweDM0NA0KPiA+ICsjZGVmaW5lIElFUkJfVDBGQVVYUgkJ
CTB4NDQ0DQo+ID4gKyNkZWZpbmUgSUVSQl9FRkFVWFIoYSkJCQkoMHgzMDQ0ICsgMHgxMDAgKiAo
YSkpDQo+ID4gKyNkZWZpbmUgSUVSQl9WRkFVWFIoYSkJCQkoMHg0MDA0ICsgMHg0MCAqIChhKSkN
Cj4gPiArI2RlZmluZSBGQVVYUl9MRElECQkJR0VOTUFTSygzLCAwKQ0KPiA+ICsNCj4gPiArLyog
UGxhdGZvcm0gaW5mb3JtYXRpb24gKi8NCj4gPiArI2RlZmluZSBJTVg5NV9FTkVUQzBfQlVTX0RF
VkZOCQkweDANCj4gPiArI2RlZmluZSBJTVg5NV9FTkVUQzFfQlVTX0RFVkZOCQkweDQwDQo+ID4g
KyNkZWZpbmUgSU1YOTVfRU5FVEMyX0JVU19ERVZGTgkJMHg4MA0KPiA+ICsNCj4gPiArLyogRmxh
Z3MgZm9yIGRpZmZlcmVudCBwbGF0Zm9ybXMgKi8NCj4gPiArI2RlZmluZSBORVRDX0hBU19ORVRD
TUlYCQlCSVQoMCkNCj4gPiArDQo+ID4gK3N0cnVjdCBuZXRjX2RldmluZm8gew0KPiA+ICsJdTMy
IGZsYWdzOw0KPiA+ICsJaW50ICgqbmV0Y21peF9pbml0KShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KTsNCj4gPiArCWludCAoKmllcmJfaW5pdCkoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldik7IH07DQo+ID4gKw0KPiA+ICtzdHJ1Y3QgbmV0Y19ibGtfY3RybCB7DQo+ID4gKwl2b2lk
IF9faW9tZW0gKnByYjsNCj4gPiArCXZvaWQgX19pb21lbSAqaWVyYjsNCj4gPiArCXZvaWQgX19p
b21lbSAqbmV0Y21peDsNCj4gPiArDQo+ID4gKwljb25zdCBzdHJ1Y3QgbmV0Y19kZXZpbmZvICpk
ZXZpbmZvOw0KPiA+ICsJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldjsNCj4gPiArCXN0cnVj
dCBkZW50cnkgKmRlYnVnZnNfcm9vdDsNCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRpYyB2b2lk
IG5ldGNfcmVnX3dyaXRlKHZvaWQgX19pb21lbSAqYmFzZSwgdTMyIG9mZnNldCwgdTMyIHZhbCkg
ew0KPiA+ICsJbmV0Y193cml0ZShiYXNlICsgb2Zmc2V0LCB2YWwpOw0KPiA+ICt9DQo+ID4gKw0K
PiA+ICtzdGF0aWMgdTMyIG5ldGNfcmVnX3JlYWQodm9pZCBfX2lvbWVtICpiYXNlLCB1MzIgb2Zm
c2V0KSB7DQo+ID4gKwlyZXR1cm4gbmV0Y19yZWFkKGJhc2UgKyBvZmZzZXQpOw0KPiA+ICt9DQo+
ID4gKw0KPiA+ICtzdGF0aWMgaW50IG5ldGNfb2ZfcGNpX2dldF9idXNfZGV2Zm4oc3RydWN0IGRl
dmljZV9ub2RlICpucCkgew0KPiA+ICsJdTMyIHJlZ1s1XTsNCj4gPiArCWludCBlcnJvcjsNCj4g
PiArDQo+ID4gKwllcnJvciA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyX2FycmF5KG5wLCAicmVnIiwg
cmVnLCBBUlJBWV9TSVpFKHJlZykpOw0KPiA+ICsJaWYgKGVycm9yKQ0KPiA+ICsJCXJldHVybiBl
cnJvcjsNCj4gPiArDQo+ID4gKwlyZXR1cm4gKHJlZ1swXSA+PiA4KSAmIDB4ZmZmZjsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiArc3RhdGljIGludCBuZXRjX2dldF9saW5rX21paV9wcm90b2NvbChwaHlf
aW50ZXJmYWNlX3QgaW50ZXJmYWNlKSB7DQo+ID4gKwlzd2l0Y2ggKGludGVyZmFjZSkgew0KPiA+
ICsJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfTUlJOg0KPiA+ICsJCXJldHVybiBNSUlfUFJPVF9N
SUk7DQo+ID4gKwljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9STUlJOg0KPiA+ICsJCXJldHVybiBN
SUlfUFJPVF9STUlJOw0KPiA+ICsJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfUkdNSUk6DQo+ID4g
KwljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9SR01JSV9JRDoNCj4gPiArCWNhc2UgUEhZX0lOVEVS
RkFDRV9NT0RFX1JHTUlJX1JYSUQ6DQo+ID4gKwljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9SR01J
SV9UWElEOg0KPiA+ICsJCXJldHVybiBNSUlfUFJPVF9SR01JSTsNCj4gPiArCWNhc2UgUEhZX0lO
VEVSRkFDRV9NT0RFX1NHTUlJOg0KPiA+ICsJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfMjUwMEJB
U0VYOg0KPiA+ICsJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfMTBHQkFTRVI6DQo+ID4gKwljYXNl
IFBIWV9JTlRFUkZBQ0VfTU9ERV9YR01JSToNCj4gPiArCWNhc2UgUEhZX0lOVEVSRkFDRV9NT0RF
X1VTWEdNSUk6DQo+ID4gKwkJcmV0dXJuIE1JSV9QUk9UX1NFUklBTDsNCj4gPiArCWRlZmF1bHQ6
DQo+ID4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gKwl9DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0
YXRpYyBpbnQgaW14OTVfbmV0Y21peF9pbml0KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
IHsNCj4gPiArCXN0cnVjdCBuZXRjX2Jsa19jdHJsICpwcml2ID0gcGxhdGZvcm1fZ2V0X2RydmRh
dGEocGRldik7DQo+ID4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gcGRldi0+ZGV2Lm9mX25v
ZGU7DQo+ID4gKwlwaHlfaW50ZXJmYWNlX3QgaW50ZXJmYWNlOw0KPiA+ICsJaW50IGJ1c19kZXZm
biwgbWlpX3Byb3RvOw0KPiA+ICsJdTMyIHZhbDsNCj4gPiArCWludCBlcnI7DQo+ID4gKw0KPiA+
ICsJLyogRGVmYXVsdCBzZXR0aW5nIG9mIE1JSSBwcm90b2NvbCAqLw0KPiA+ICsJdmFsID0gTUlJ
X1BST1QoMCwgTUlJX1BST1RfUkdNSUkpIHwgTUlJX1BST1QoMSwgTUlJX1BST1RfUkdNSUkpIHwN
Cj4gPiArCSAgICAgIE1JSV9QUk9UKDIsIE1JSV9QUk9UX1NFUklBTCk7DQo+ID4gKw0KPiA+ICsJ
LyogVXBkYXRlIHRoZSBsaW5rIE1JSSBwcm90b2NvbCB0aHJvdWdoIHBhcnNpbmcgcGh5LW1vZGUg
Ki8NCj4gPiArCWZvcl9lYWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9ub2RlX3Njb3BlZChucCwgY2hp
bGQpIHsNCj4gPiArCQlmb3JfZWFjaF9hdmFpbGFibGVfY2hpbGRfb2Zfbm9kZV9zY29wZWQoY2hp
bGQsIGdjaGlsZCkgew0KPiA+ICsJCQlpZiAoIW9mX2RldmljZV9pc19jb21wYXRpYmxlKGdjaGls
ZCwgInBjaTExMzEsZTEwMSIpKQ0KPiA+ICsJCQkJY29udGludWU7DQo+ID4gKw0KPiA+ICsJCQli
dXNfZGV2Zm4gPSBuZXRjX29mX3BjaV9nZXRfYnVzX2RldmZuKGdjaGlsZCk7DQo+ID4gKwkJCWlm
IChidXNfZGV2Zm4gPCAwKQ0KPiA+ICsJCQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gKw0KPiA+ICsJ
CQlpZiAoYnVzX2RldmZuID09IElNWDk1X0VORVRDMl9CVVNfREVWRk4pDQo+ID4gKwkJCQljb250
aW51ZTsNCj4gPiArDQo+ID4gKwkJCWVyciA9IG9mX2dldF9waHlfbW9kZShnY2hpbGQsICZpbnRl
cmZhY2UpOw0KPiA+ICsJCQlpZiAoZXJyKQ0KPiA+ICsJCQkJY29udGludWU7DQo+ID4gKw0KPiA+
ICsJCQltaWlfcHJvdG8gPSBuZXRjX2dldF9saW5rX21paV9wcm90b2NvbChpbnRlcmZhY2UpOw0K
PiA+ICsJCQlpZiAobWlpX3Byb3RvIDwgMCkNCj4gPiArCQkJCXJldHVybiAtRUlOVkFMOw0KPiA+
ICsNCj4gPiArCQkJc3dpdGNoIChidXNfZGV2Zm4pIHsNCj4gPiArCQkJY2FzZSBJTVg5NV9FTkVU
QzBfQlVTX0RFVkZOOg0KPiA+ICsJCQkJdmFsID0gdTMyX3JlcGxhY2VfYml0cyh2YWwsIG1paV9w
cm90bywNCj4gPiArCQkJCQkJICAgICAgIENGR19MSU5LX01JSV9QT1JUXzApOw0KPiA+ICsJCQkJ
YnJlYWs7DQo+ID4gKwkJCWNhc2UgSU1YOTVfRU5FVEMxX0JVU19ERVZGTjoNCj4gPiArCQkJCXZh
bCA9IHUzMl9yZXBsYWNlX2JpdHModmFsLCBtaWlfcHJvdG8sDQo+ID4gKwkJCQkJCSAgICAgICBD
RkdfTElOS19NSUlfUE9SVF8xKTsNCj4gPiArCQkJCWJyZWFrOw0KPiA+ICsJCQlkZWZhdWx0Og0K
PiA+ICsJCQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gKwkJCX0NCj4gPiArCQl9DQo+ID4gKwl9DQo+
ID4gKw0KPiA+ICsJLyogQ29uZmlndXJlIExpbmsgSS9PIHZhcmlhbnQgKi8NCj4gPiArCW5ldGNf
cmVnX3dyaXRlKHByaXYtPm5ldGNtaXgsIElNWDk1X0NGR19MSU5LX0lPX1ZBUiwNCj4gPiArCQkg
ICAgICAgSU9fVkFSKDIsIElPX1ZBUl8xNkZGXzE2R19TRVJERVMpKTsNCj4gPiArCS8qIENvbmZp
Z3VyZSBMaW5rIDIgUENTIHByb3RvY29sICovDQo+ID4gKwluZXRjX3JlZ193cml0ZShwcml2LT5u
ZXRjbWl4LCBJTVg5NV9DRkdfTElOS19QQ1NfUFJPVCgyKSwNCj4gPiArCQkgICAgICAgUENTX1BS
T1RfMTBHX1NYR01JSSk7DQo+ID4gKwluZXRjX3JlZ193cml0ZShwcml2LT5uZXRjbWl4LCBJTVg5
NV9DRkdfTElOS19NSUlfUFJPVCwgdmFsKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiArc3RhdGljIGJvb2wgbmV0Y19pZXJiX2lzX2xvY2tlZChzdHJ1Y3QgbmV0
Y19ibGtfY3RybCAqcHJpdikgew0KPiA+ICsJcmV0dXJuICEhKG5ldGNfcmVnX3JlYWQocHJpdi0+
cHJiLCBQUkJfTkVUQ1JSKSAmIE5FVENSUl9MT0NLKTsgfQ0KPiA+ICsNCj4gPiArc3RhdGljIGlu
dCBuZXRjX2xvY2tfaWVyYihzdHJ1Y3QgbmV0Y19ibGtfY3RybCAqcHJpdikgew0KPiA+ICsJdTMy
IHZhbDsNCj4gPiArDQo+ID4gKwluZXRjX3JlZ193cml0ZShwcml2LT5wcmIsIFBSQl9ORVRDUlIs
IE5FVENSUl9MT0NLKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gcmVhZF9wb2xsX3RpbWVvdXQobmV0
Y19yZWdfcmVhZCwgdmFsLCAhKHZhbCAmIE5FVENTUl9TVEFURSksDQo+ID4gKwkJCQkgMTAwLCAy
MDAwLCBmYWxzZSwgcHJpdi0+cHJiLCBQUkJfTkVUQ1NSKTsgfQ0KPiA+ICsNCj4gPiArc3RhdGlj
IGludCBuZXRjX3VubG9ja19pZXJiX3dpdGhfd2FybV9yZXNldChzdHJ1Y3QgbmV0Y19ibGtfY3Ry
bA0KPiA+ICsqcHJpdikgew0KPiA+ICsJdTMyIHZhbDsNCj4gPiArDQo+ID4gKwluZXRjX3JlZ193
cml0ZShwcml2LT5wcmIsIFBSQl9ORVRDUlIsIDApOw0KPiA+ICsNCj4gPiArCXJldHVybiByZWFk
X3BvbGxfdGltZW91dChuZXRjX3JlZ19yZWFkLCB2YWwsICEodmFsICYgTkVUQ1JSX0xPQ0spLA0K
PiA+ICsJCQkJIDEwMDAsIDEwMDAwMCwgdHJ1ZSwgcHJpdi0+cHJiLCBQUkJfTkVUQ1JSKTsgfQ0K
PiA+ICsNCj4gPiArc3RhdGljIGludCBpbXg5NV9pZXJiX2luaXQoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikgew0KPiA+ICsJc3RydWN0IG5ldGNfYmxrX2N0cmwgKnByaXYgPSBwbGF0Zm9y
bV9nZXRfZHJ2ZGF0YShwZGV2KTsNCj4gPiArDQo+ID4gKwkvKiBFTURJTyA6IE5vIE1TSS1YIGlu
dHRlcnVwdCAqLw0KPiA+ICsJbmV0Y19yZWdfd3JpdGUocHJpdi0+aWVyYiwgSUVSQl9FTURJT0ZB
VVhSLCAwKTsNCj4gPiArCS8qIEVORVRDMCBQRiAqLw0KPiA+ICsJbmV0Y19yZWdfd3JpdGUocHJp
di0+aWVyYiwgSUVSQl9FRkFVWFIoMCksIDApOw0KPiA+ICsJLyogRU5FVEMwIFZGMCAqLw0KPiA+
ICsJbmV0Y19yZWdfd3JpdGUocHJpdi0+aWVyYiwgSUVSQl9WRkFVWFIoMCksIDEpOw0KPiA+ICsJ
LyogRU5FVEMwIFZGMSAqLw0KPiA+ICsJbmV0Y19yZWdfd3JpdGUocHJpdi0+aWVyYiwgSUVSQl9W
RkFVWFIoMSksIDIpOw0KPiA+ICsJLyogRU5FVEMxIFBGICovDQo+ID4gKwluZXRjX3JlZ193cml0
ZShwcml2LT5pZXJiLCBJRVJCX0VGQVVYUigxKSwgMyk7DQo+ID4gKwkvKiBFTkVUQzEgVkYwICov
DQo+ID4gKwluZXRjX3JlZ193cml0ZShwcml2LT5pZXJiLCBJRVJCX1ZGQVVYUigyKSwgNSk7DQo+
ID4gKwkvKiBFTkVUQzEgVkYxICovDQo+ID4gKwluZXRjX3JlZ193cml0ZShwcml2LT5pZXJiLCBJ
RVJCX1ZGQVVYUigzKSwgNik7DQo+ID4gKwkvKiBFTkVUQzIgUEYgKi8NCj4gPiArCW5ldGNfcmVn
X3dyaXRlKHByaXYtPmllcmIsIElFUkJfRUZBVVhSKDIpLCA0KTsNCj4gPiArCS8qIEVORVRDMiBW
RjAgKi8NCj4gPiArCW5ldGNfcmVnX3dyaXRlKHByaXYtPmllcmIsIElFUkJfVkZBVVhSKDQpLCA1
KTsNCj4gPiArCS8qIEVORVRDMiBWRjEgKi8NCj4gPiArCW5ldGNfcmVnX3dyaXRlKHByaXYtPmll
cmIsIElFUkJfVkZBVVhSKDUpLCA2KTsNCj4gPiArCS8qIE5FVEMgVElNRVIgKi8NCj4gPiArCW5l
dGNfcmVnX3dyaXRlKHByaXYtPmllcmIsIElFUkJfVDBGQVVYUiwgNyk7DQo+ID4gKw0KPiA+ICsJ
cmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgbmV0Y19pZXJiX2luaXQo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikgew0KPiA+ICsJc3RydWN0IG5ldGNfYmxrX2N0
cmwgKnByaXYgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsNCj4gPiArCWNvbnN0IHN0cnVj
dCBuZXRjX2RldmluZm8gKmRldmluZm8gPSBwcml2LT5kZXZpbmZvOw0KPiA+ICsJaW50IGVycjsN
Cj4gPiArDQo+ID4gKwlpZiAobmV0Y19pZXJiX2lzX2xvY2tlZChwcml2KSkgew0KPiA+ICsJCWVy
ciA9IG5ldGNfdW5sb2NrX2llcmJfd2l0aF93YXJtX3Jlc2V0KHByaXYpOw0KPiA+ICsJCWlmIChl
cnIpIHsNCj4gPiArCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiVW5sb2NrIElFUkIgZmFpbGVkLlxu
Iik7DQo+ID4gKwkJCXJldHVybiBlcnI7DQo+ID4gKwkJfQ0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAr
CWlmIChkZXZpbmZvLT5pZXJiX2luaXQpIHsNCj4gPiArCQllcnIgPSBkZXZpbmZvLT5pZXJiX2lu
aXQocGRldik7DQo+ID4gKwkJaWYgKGVycikNCj4gPiArCQkJcmV0dXJuIGVycjsNCj4gPiArCX0N
Cj4gPiArDQo+ID4gKwllcnIgPSBuZXRjX2xvY2tfaWVyYihwcml2KTsNCj4gPiArCWlmIChlcnIp
IHsNCj4gPiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJMb2NrIElFUkIgZmFpbGVkLlxuIik7DQo+
ID4gKwkJcmV0dXJuIGVycjsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiArI2lmIElTX0VOQUJMRUQoQ09ORklHX0RFQlVHX0ZTKQ0KPiA+ICtzdGF0
aWMgaW50IG5ldGNfcHJiX3Nob3coc3RydWN0IHNlcV9maWxlICpzLCB2b2lkICpkYXRhKSB7DQo+
ID4gKwlzdHJ1Y3QgbmV0Y19ibGtfY3RybCAqcHJpdiA9IHMtPnByaXZhdGU7DQo+ID4gKwl1MzIg
dmFsOw0KPiA+ICsNCj4gPiArCXZhbCA9IG5ldGNfcmVnX3JlYWQocHJpdi0+cHJiLCBQUkJfTkVU
Q1JSKTsNCj4gPiArCXNlcV9wcmludGYocywgIltQUkIgTkVUQ1JSXSBMb2NrOiVkIFNSOiVkXG4i
LA0KPiA+ICsJCSAgICh2YWwgJiBORVRDUlJfTE9DSykgPyAxIDogMCwNCj4gPiArCQkgICAodmFs
ICYgTkVUQ1JSX1NSKSA/IDEgOiAwKTsNCj4gPiArDQo+ID4gKwl2YWwgPSBuZXRjX3JlZ19yZWFk
KHByaXYtPnByYiwgUFJCX05FVENTUik7DQo+ID4gKwlzZXFfcHJpbnRmKHMsICJbUFJCIE5FVENT
Ul0gU3RhdGU6JWQgRXJyb3I6JWRcbiIsDQo+ID4gKwkJICAgKHZhbCAmIE5FVENTUl9TVEFURSkg
PyAxIDogMCwNCj4gPiArCQkgICAodmFsICYgTkVUQ1NSX0VSUk9SKSA/IDEgOiAwKTsNCj4gPiAr
DQo+ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICtERUZJTkVfU0hPV19BVFRSSUJVVEUobmV0
Y19wcmIpOw0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgbmV0Y19ibGtfY3RybF9jcmVhdGVfZGVi
dWdmcyhzdHJ1Y3QgbmV0Y19ibGtfY3RybCAqcHJpdikNCj4gPiArew0KPiA+ICsJc3RydWN0IGRl
bnRyeSAqcm9vdDsNCj4gPiArDQo+ID4gKwlyb290ID0gZGVidWdmc19jcmVhdGVfZGlyKCJuZXRj
X2Jsa19jdHJsIiwgTlVMTCk7DQo+ID4gKwlpZiAoSVNfRVJSKHJvb3QpKQ0KPiA+ICsJCXJldHVy
bjsNCj4gPiArDQo+ID4gKwlwcml2LT5kZWJ1Z2ZzX3Jvb3QgPSByb290Ow0KPiA+ICsNCj4gPiAr
CWRlYnVnZnNfY3JlYXRlX2ZpbGUoInByYiIsIDA0NDQsIHJvb3QsIHByaXYsICZuZXRjX3ByYl9m
b3BzKTsgfQ0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgbmV0Y19ibGtfY3RybF9yZW1vdmVfZGVi
dWdmcyhzdHJ1Y3QgbmV0Y19ibGtfY3RybCAqcHJpdikNCj4gPiArew0KPiA+ICsJZGVidWdmc19y
ZW1vdmVfcmVjdXJzaXZlKHByaXYtPmRlYnVnZnNfcm9vdCk7DQo+ID4gKwlwcml2LT5kZWJ1Z2Zz
X3Jvb3QgPSBOVUxMOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICsjZWxzZQ0KPiA+ICsNCj4gPiArc3Rh
dGljIHZvaWQgbmV0Y19ibGtfY3RybF9jcmVhdGVfZGVidWdmcyhzdHJ1Y3QgbmV0Y19ibGtfY3Ry
bCAqcHJpdikNCj4gPiAreyB9DQo+ID4gKw0KPiA+ICtzdGF0aWMgdm9pZCBuZXRjX2Jsa19jdHJs
X3JlbW92ZV9kZWJ1Z2ZzKHN0cnVjdCBuZXRjX2Jsa19jdHJsICpwcml2KQ0KPiA+ICt7IH0gI2Vu
ZGlmDQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50IG5ldGNfcHJiX2NoZWNrX2Vycm9yKHN0cnVjdCBu
ZXRjX2Jsa19jdHJsICpwcml2KSB7DQo+ID4gKwl1MzIgdmFsOw0KPiA+ICsNCj4gPiArCXZhbCA9
IG5ldGNfcmVnX3JlYWQocHJpdi0+cHJiLCBQUkJfTkVUQ1NSKTsNCj4gPiArCWlmICh2YWwgJiBO
RVRDU1JfRVJST1IpDQo+ID4gKwkJcmV0dXJuIC0xOw0KPiANCj4gbml0Og0KPiAJaWYgKG5ldGNf
cmVnX3JlYWQocHJpdi0+cHJiLCBQUkJfTkVUQ1NSKSAmIE5FVENTUl9FUlJPUikpDQo+IAkJcmV0
dXJuIC0xOw0KPiANCj4gCXJldHVybiAwOw0KPiANCg0KT2theSwgd2lsbCBmaXggaXQuDQoNCj4g
UmV2aWV3ZWQtYnk6IEZyYW5rIExpIDxGcmFuay5MaUBueHAuY29tPg0KPiANCj4gPiArDQo+ID4g
KwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBuZXRj
X2RldmluZm8gaW14OTVfZGV2aW5mbyA9IHsNCj4gPiArCS5mbGFncyA9IE5FVENfSEFTX05FVENN
SVgsDQo+ID4gKwkubmV0Y21peF9pbml0ID0gaW14OTVfbmV0Y21peF9pbml0LA0KPiA+ICsJLmll
cmJfaW5pdCA9IGlteDk1X2llcmJfaW5pdCwNCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG5ldGNfYmxrX2N0cmxfbWF0Y2hbXSA9IHsNCj4gPiAr
CXsgLmNvbXBhdGlibGUgPSAibnhwLGlteDk1LW5ldGMtYmxrLWN0cmwiLCAuZGF0YSA9ICZpbXg5
NV9kZXZpbmZvIH0sDQo+ID4gKwl7fSwNCj4gPiArfTsNCj4gPiArTU9EVUxFX0RFVklDRV9UQUJM
RShvZiwgbmV0Y19ibGtfY3RybF9tYXRjaCk7DQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50IG5ldGNf
YmxrX2N0cmxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikgew0KPiA+ICsJc3Ry
dWN0IGRldmljZV9ub2RlICpub2RlID0gcGRldi0+ZGV2Lm9mX25vZGU7DQo+ID4gKwljb25zdCBz
dHJ1Y3QgbmV0Y19kZXZpbmZvICpkZXZpbmZvOw0KPiA+ICsJc3RydWN0IGRldmljZSAqZGV2ID0g
JnBkZXYtPmRldjsNCj4gPiArCWNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgKmlkOw0KPiA+ICsJ
c3RydWN0IG5ldGNfYmxrX2N0cmwgKnByaXY7DQo+ID4gKwlzdHJ1Y3QgY2xrICppcGdfY2xrOw0K
PiA+ICsJdm9pZCBfX2lvbWVtICpyZWdzOw0KPiA+ICsJaW50IGVycjsNCj4gPiArDQo+ID4gKwlw
cml2ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpwcml2KSwgR0ZQX0tFUk5FTCk7DQo+ID4g
KwlpZiAoIXByaXYpDQo+ID4gKwkJcmV0dXJuIC1FTk9NRU07DQo+ID4gKw0KPiA+ICsJcHJpdi0+
cGRldiA9IHBkZXY7DQo+ID4gKwlpcGdfY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsX2VuYWJs
ZWQoZGV2LCAiaXBnIik7DQo+ID4gKwlpZiAoSVNfRVJSKGlwZ19jbGspKQ0KPiA+ICsJCXJldHVy
biBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihpcGdfY2xrKSwNCj4gPiArCQkJCSAgICAgIlNl
dCBpcGcgY2xvY2sgZmFpbGVkXG4iKTsNCj4gPiArDQo+ID4gKwlpZCA9IG9mX21hdGNoX2Rldmlj
ZShuZXRjX2Jsa19jdHJsX21hdGNoLCBkZXYpOw0KPiA+ICsJaWYgKCFpZCkNCj4gPiArCQlyZXR1
cm4gZGV2X2Vycl9wcm9iZShkZXYsIC1FSU5WQUwsICJDYW5ub3QgbWF0Y2ggZGV2aWNlXG4iKTsN
Cj4gPiArDQo+ID4gKwlkZXZpbmZvID0gKHN0cnVjdCBuZXRjX2RldmluZm8gKilpZC0+ZGF0YTsN
Cj4gPiArCWlmICghZGV2aW5mbykNCj4gPiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIC1F
SU5WQUwsICJObyBkZXZpY2UgaW5mb3JtYXRpb25cbiIpOw0KPiA+ICsNCj4gPiArCXByaXYtPmRl
dmluZm8gPSBkZXZpbmZvOw0KPiA+ICsJcmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNv
dXJjZV9ieW5hbWUocGRldiwgImllcmIiKTsNCj4gPiArCWlmIChJU19FUlIocmVncykpDQo+ID4g
KwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKHJlZ3MpLA0KPiA+ICsJCQkJICAg
ICAiTWlzc2luZyBJRVJCIHJlc291cmNlXG4iKTsNCj4gPiArDQo+ID4gKwlwcml2LT5pZXJiID0g
cmVnczsNCj4gPiArCXJlZ3MgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2VfYnluYW1l
KHBkZXYsICJwcmIiKTsNCj4gPiArCWlmIChJU19FUlIocmVncykpDQo+ID4gKwkJcmV0dXJuIGRl
dl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKHJlZ3MpLA0KPiA+ICsJCQkJICAgICAiTWlzc2luZyBQ
UkIgcmVzb3VyY2VcbiIpOw0KPiA+ICsNCj4gPiArCXByaXYtPnByYiA9IHJlZ3M7DQo+ID4gKwlp
ZiAoZGV2aW5mby0+ZmxhZ3MgJiBORVRDX0hBU19ORVRDTUlYKSB7DQo+ID4gKwkJcmVncyA9IGRl
dm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUocGRldiwgIm5ldGNtaXgiKTsNCj4g
PiArCQlpZiAoSVNfRVJSKHJlZ3MpKQ0KPiA+ICsJCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYs
IFBUUl9FUlIocmVncyksDQo+ID4gKwkJCQkJICAgICAiTWlzc2luZyBORVRDTUlYIHJlc291cmNl
XG4iKTsNCj4gPiArCQlwcml2LT5uZXRjbWl4ID0gcmVnczsNCj4gPiArCX0NCj4gPiArDQo+ID4g
KwlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBwcml2KTsNCj4gPiArCWlmIChkZXZpbmZvLT5u
ZXRjbWl4X2luaXQpIHsNCj4gPiArCQllcnIgPSBkZXZpbmZvLT5uZXRjbWl4X2luaXQocGRldik7
DQo+ID4gKwkJaWYgKGVycikNCj4gPiArCQkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBlcnIs
DQo+ID4gKwkJCQkJICAgICAiSW5pdGlhbGl6aW5nIE5FVENNSVggZmFpbGVkXG4iKTsNCj4gPiAr
CX0NCj4gPiArDQo+ID4gKwllcnIgPSBuZXRjX2llcmJfaW5pdChwZGV2KTsNCj4gPiArCWlmIChl
cnIpDQo+ID4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBlcnIsICJJbml0aWFsaXppbmcg
SUVSQiBmYWlsZWRcbiIpOw0KPiA+ICsNCj4gPiArCWlmIChuZXRjX3ByYl9jaGVja19lcnJvcihw
cml2KSA8IDApDQo+ID4gKwkJZGV2X3dhcm4oZGV2LCAiVGhlIGN1cnJlbnQgSUVSQiBjb25maWd1
cmF0aW9uIGlzIGludmFsaWRcbiIpOw0KPiA+ICsNCj4gPiArCW5ldGNfYmxrX2N0cmxfY3JlYXRl
X2RlYnVnZnMocHJpdik7DQo+ID4gKw0KPiA+ICsJZXJyID0gb2ZfcGxhdGZvcm1fcG9wdWxhdGUo
bm9kZSwgTlVMTCwgTlVMTCwgZGV2KTsNCj4gPiArCWlmIChlcnIpIHsNCj4gPiArCQluZXRjX2Js
a19jdHJsX3JlbW92ZV9kZWJ1Z2ZzKHByaXYpOw0KPiA+ICsJCXJldHVybiBkZXZfZXJyX3Byb2Jl
KGRldiwgZXJyLCAib2ZfcGxhdGZvcm1fcG9wdWxhdGUgZmFpbGVkXG4iKTsNCj4gPiArCX0NCj4g
PiArDQo+ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgbmV0
Y19ibGtfY3RybF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikgew0KPiA+ICsJ
c3RydWN0IG5ldGNfYmxrX2N0cmwgKnByaXYgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsN
Cj4gPiArDQo+ID4gKwlvZl9wbGF0Zm9ybV9kZXBvcHVsYXRlKCZwZGV2LT5kZXYpOw0KPiA+ICsJ
bmV0Y19ibGtfY3RybF9yZW1vdmVfZGVidWdmcyhwcml2KTsNCj4gPiArfQ0KPiA+ICsNCj4gPiAr
c3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgbmV0Y19ibGtfY3RybF9kcml2ZXIgPSB7DQo+
ID4gKwkuZHJpdmVyID0gew0KPiA+ICsJCS5uYW1lID0gIm54cC1uZXRjLWJsay1jdHJsIiwNCj4g
PiArCQkub2ZfbWF0Y2hfdGFibGUgPSBuZXRjX2Jsa19jdHJsX21hdGNoLA0KPiA+ICsJfSwNCj4g
PiArCS5wcm9iZSA9IG5ldGNfYmxrX2N0cmxfcHJvYmUsDQo+ID4gKwkucmVtb3ZlID0gbmV0Y19i
bGtfY3RybF9yZW1vdmUsDQo+ID4gK307DQo+ID4gKw0KPiA+ICttb2R1bGVfcGxhdGZvcm1fZHJp
dmVyKG5ldGNfYmxrX2N0cmxfZHJpdmVyKTsNCj4gPiArDQo+ID4gK01PRFVMRV9ERVNDUklQVElP
TigiTlhQIE5FVEMgQmxvY2tzIENvbnRyb2wgRHJpdmVyIik7DQo+ID4gK01PRFVMRV9MSUNFTlNF
KCJEdWFsIEJTRC9HUEwiKTsNCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9mc2wvbmV0
Y19nbG9iYWwuaA0KPiA+IGIvaW5jbHVkZS9saW51eC9mc2wvbmV0Y19nbG9iYWwuaCBuZXcgZmls
ZSBtb2RlIDEwMDY0NCBpbmRleA0KPiA+IDAwMDAwMDAwMDAwMC4uZmRlY2NhOGM5MGYwDQo+ID4g
LS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvZnNsL25ldGNfZ2xvYmFsLmgN
Cj4gPiBAQCAtMCwwICsxLDE5IEBADQo+ID4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAo
R1BMLTIuMCsgT1IgQlNELTMtQ2xhdXNlKSAqLw0KPiA+ICsvKiBDb3B5cmlnaHQgMjAyNCBOWFAN
Cj4gPiArICovDQo+ID4gKyNpZm5kZWYgX19ORVRDX0dMT0JBTF9IDQo+ID4gKyNkZWZpbmUgX19O
RVRDX0dMT0JBTF9IDQo+ID4gKw0KPiA+ICsjaW5jbHVkZSA8bGludXgvaW8uaD4NCj4gPiArDQo+
ID4gK3N0YXRpYyBpbmxpbmUgdTMyIG5ldGNfcmVhZCh2b2lkIF9faW9tZW0gKnJlZykgew0KPiA+
ICsJcmV0dXJuIGlvcmVhZDMyKHJlZyk7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbmxp
bmUgdm9pZCBuZXRjX3dyaXRlKHZvaWQgX19pb21lbSAqcmVnLCB1MzIgdmFsKSB7DQo+ID4gKwlp
b3dyaXRlMzIodmFsLCByZWcpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICsjZW5kaWYNCj4gPiAtLQ0K
PiA+IDIuMzQuMQ0KPiA+DQo=

