Return-Path: <devicetree+bounces-261204-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGJ3HO6dfGkLOAIAu9opvQ
	(envelope-from <devicetree+bounces-261204-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:02:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0D2BA4FF
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:02:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ACC263004932
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4EB636B073;
	Fri, 30 Jan 2026 12:02:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022130.outbound.protection.outlook.com [52.101.126.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7BA2E54CC;
	Fri, 30 Jan 2026 12:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.130
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769774567; cv=fail; b=tbG+p/Yyn+qPBYdhJRKVmj54ZOfe19KKpnC86W6Mmvg1Ifh8V77/WgZULLiDyOUe+k9B6Cuh9IhP64a98PpWi9JBEeogJbMCc7ye5s+frWTR7nIefzAP0ZNd4dAR5nzd3iEvh1GGnZiXtmgjs+dC4zbRAWu20E2+y5kKzWcOCdA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769774567; c=relaxed/simple;
	bh=Gm/d+1rYOcfvQbMMJ1LYZ0mefXrro7Dn6+USHVtTbD4=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=i8s7yFeLbsWVxvvZN1rWnJWHS5F5fI3dePfioRWlY+GhbJkIf5RZuSfw7iX349MXRFKA4St73Kzk+4JvhggRZ9OhfRGL/AZiDT+BaPyVaKvj+hJ63JId3NNpCor+hviYlqSeKbiVnGK1l1/yJpNyjOjkE3xJRcOjIUjQxRO01u8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.126.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k/Txg9MGIftNfgh4kSG8L8/k+3Rh4KLMbgwCVgS27zM072URKM0/t1XSdE69Vhi+WYjHSZ7mUFtWoODCLV1uuXtZo55o+PHDphXW19Nb3N8FuynlE26GG8aEt1O0ogZow3FN6y6ZrCesKt/CTARqXR1dk9nQUV3Nt3FqgWt7PBVSz5Cq6j0+uFVGaINRvrmmkcEdCxza5aZ+ehb1k9PZUl8xccaIZEyjfZRczDxC/INQRIXxLCKZKvsTfEfvlZnyzU3hSrqP402jz+UdMZ/ygKAUXFPc0gejx6AGckrKO+vVz+5k23bYD93Q1Tls/HF8XACEKXGhbyzDdSknLcYuVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gm/d+1rYOcfvQbMMJ1LYZ0mefXrro7Dn6+USHVtTbD4=;
 b=LS6YKI/5dzvSp2VVAoVQH05hobN54+0j5Y0T6AEE6QvGv2+COlAUJgLwirXgbCx+NLQ41lUx6wTD9CUgsUZ6CF7txwrRvWQlO+Tp4TQUu3SACZP4j+OWV7VqTFJEI4at6gBSoA9xWsouSEF6msSCEHn2E5W4kaEF+xw8qLwNLj1Nx7AwKRdGyyaU7hWs5R+PgXPuJ0h+HGr/7iOIz0wWntHZxz+qbLig7FaLLDVicMXKn2WfP3dHvChzN56/JHVhezMAzLPkWpPKAvBMNfyXs/8rJ5nXqshgy756EmdCLmsZhLnVg8b5SIzoke867l7Tr21dT1XIsof2oMk2YdfWUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from PUZPR06MB5887.apcprd06.prod.outlook.com (2603:1096:301:117::13)
 by TYZPR06MB5225.apcprd06.prod.outlook.com (2603:1096:400:1fa::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Fri, 30 Jan
 2026 12:02:41 +0000
Received: from PUZPR06MB5887.apcprd06.prod.outlook.com
 ([fe80::611c:7f38:af2e:22d]) by PUZPR06MB5887.apcprd06.prod.outlook.com
 ([fe80::611c:7f38:af2e:22d%6]) with mapi id 15.20.9564.013; Fri, 30 Jan 2026
 12:02:41 +0000
From: Gary Yang <gary.yang@cixtech.com>
To: Rob Herring <robh@kernel.org>
CC: "lee@kernel.org" <lee@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, Peter Chen
	<peter.chen@cixtech.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, cix-kernel-upstream
	<cix-kernel-upstream@cixtech.com>
Subject:
 =?gb2312?B?u9i4tDogW1BBVENIIHY1IDEvM10gZHQtYmluZGluZ3M6IHJlc2V0OiBhZGQg?=
 =?gb2312?Q?sky1_reset_controller?=
Thread-Topic: [PATCH v5 1/3] dt-bindings: reset: add sky1 reset controller
Thread-Index: AQHckO0Bk/LPeNlAtUKSV9MxfNpvC7VpVTwAgAE/VCA=
Date: Fri, 30 Jan 2026 12:02:40 +0000
Message-ID:
 <PUZPR06MB588719760B6A67613869CB38EF9FA@PUZPR06MB5887.apcprd06.prod.outlook.com>
References: <20260129070046.2601503-1-gary.yang@cixtech.com>
 <20260129070046.2601503-2-gary.yang@cixtech.com>
 <20260129162304.GA1209761-robh@kernel.org>
In-Reply-To: <20260129162304.GA1209761-robh@kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PUZPR06MB5887:EE_|TYZPR06MB5225:EE_
x-ms-office365-filtering-correlation-id: 5ca935fe-4345-4169-6af9-08de5ff77822
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|376014|13003099007|38070700021;
x-microsoft-antispam-message-info:
 =?gb2312?B?eHA1eEpqaGJVRUNWQVVaWHJqelh2dmVzQ1dESDdWMHdWMjlhZURXSjcrTFRk?=
 =?gb2312?B?Tk96WGNINktET1FUVUpCbDE2T3dRc0dyWmxJYzN1OXZ2ZUJ3TllqOFFhZHhR?=
 =?gb2312?B?aVFVTEZVYXlSSjJHL0NrTVcvSVk0Mm5GSkh4TDlQMnAzWjF1c0J3THU4YmN6?=
 =?gb2312?B?STN6S0EwRjBVUmZKTEloWnYzSFlycytJK1U2d0hPSGN5Qk5KWm5rSEF6bWN5?=
 =?gb2312?B?TGlhbkVucjVCOHVDNHNzeFM3T2hRSEJ1UjZFUmdHaFlJZkNZZVVVNjdDQkR2?=
 =?gb2312?B?T29MbHUyLzh5SVZjWHVXTTJlVFRvemNZRXVQNXRBNFZkdEVrSWN1Tm1BK3J4?=
 =?gb2312?B?eVlTeDFKS0dPdjlIbFFnTlBKSnZWMjIyS1RHWHp0UlZXUkxuZ085NEJqeXlL?=
 =?gb2312?B?U3ZlaVNNUW1mSlZwK1lJRkJ2d3dETDlvNTd1c0Erd3F1MXhoZHVBMUtGUlpI?=
 =?gb2312?B?cXZUbExtelBVekR2MHplNStVb1ZBN3Q2NiswSUtuRTZ2KzF1SkEyVkphalNj?=
 =?gb2312?B?WFZiVDJVZm5LSEovWW5LQ055YVNhWWp5TmVlMUoySjlTY05nYXI3ZnN3UzND?=
 =?gb2312?B?UXd6ZUhJODNuYmdSNW9hUFBpWS9KL3ZYL3B4anoyLzBkU1ROcWJnb0l1czFv?=
 =?gb2312?B?N2syVzFaQ3hkQVpPa3pub2tIVTlOOTVVYmE2M01xWDljV3FIN3JTZXhHbDcw?=
 =?gb2312?B?Uzc2cnJlNmhTQ05DUDYxd2QySDREOXpFVVh4WCtCNWJ4K0lqUlJ0WmRralNZ?=
 =?gb2312?B?ZU1mNGhnSUxlSGZSL0xoNGs4MVBEWkRTZDJUdGRHUTQzTWlLdnQzeWNwZHR4?=
 =?gb2312?B?czFwMnZKeHFLdWExaDRYSHdlb2ZzbEIzd1daVEV6NTNZaFo3UWJ0R0h6NGVF?=
 =?gb2312?B?d1liT3dOMEovUEdSdTVXb0RqdVhRd08zQXkvTDhoZG1lOGVxNFVKdzJpNWph?=
 =?gb2312?B?Rm11Kzk4eWNMU1hsUFVxT0lCQVk5SjIxUEh4MFRUbUFXdEhxa2JMd1hhVEo0?=
 =?gb2312?B?alV1NGJZQmNyam1ETnVLQmtiS0FNaER3STJJWndhMFptT0p3cEIwWXZVcmgz?=
 =?gb2312?B?dm8xczZHeGdJbEY2N0FlV0ljTytXS0VOclZuNlFqM2p2cGw3aCtYVW9oRTcx?=
 =?gb2312?B?MmNCMnQ3WjZoL1cyWkhvNnc1YjZSaVhacjh5V3lWVG9GaldLWERNOG9BVEIv?=
 =?gb2312?B?U3dnK3I5SFV1WFhGREpoN2M5S3B6Umo2RllyZk9acVJZRXR6bHFWdXlYV1Zr?=
 =?gb2312?B?dHFhWFM0U0lNYyt3cHdXKzY4dGFkVjNwT3hIQXdxWk5HZzZOdjQyU1RONzRw?=
 =?gb2312?B?OVhCM045TVpBalZ4eGVZUEQ0L0FtczlzSkwzSnVEZkI4VGNJYWdDU0x3ODl6?=
 =?gb2312?B?bldvc0hPelpUeXpnQTBSdDV6T0RVZy9JUlhMTUczNmgrdmJLV0VhOHVSU3cv?=
 =?gb2312?B?MXN3T0ZCQ0NhMit6YUpod1o1VEtoZnZuRHQwdEd0V1FJdE0vUGcrbkUyMlpt?=
 =?gb2312?B?dzUyVW8rR1R6NWRHbG83L3RYaHJwd2I0amZrMW50WS94Ry95RzRrRXp4UW9j?=
 =?gb2312?B?K3NobktKT0ZzRm1XT29wZFBCb0lYNXcraHlZQzNVa25hZnRVd2czczVUOFU5?=
 =?gb2312?B?eEJzb0lqek9tTkg0R1F1S0lnUVh5YlB0WGExbk41dUIwdnhxTUZhME1DYTJU?=
 =?gb2312?B?MlZBT21XdUNKOGdPZHd1U0l4b2tGWnRJVTcrb1kwM0hvb3Y5WVJPRC9wcERI?=
 =?gb2312?B?ckdZUnhsdEpaNDRDSmNqanJjTXNmK1R6UGJOVFpaVkNDVFkxS05VTmE4ajFs?=
 =?gb2312?B?OHFSSVNaaWFHOFc5VjlGQU1xbWR5VWxjV1RRdk9RV0pxZnp3RWFuRGwyTklW?=
 =?gb2312?B?TE5GWU1zTEt2blVnOEN1QU1tYjYzL21sa1JpVnRDbVgxMFIwcGMvSEhNWmRE?=
 =?gb2312?B?TzFJL3FWS0NZLzhzM3pLblhEY0tndEl1REcvcHI4S3o5WmFRZ1RySVd5a3Vp?=
 =?gb2312?B?WlpITGpYOFM1YWRNdjgyS2JjekhuUWRIempWVUpKREVrRkszQy83eFMyc2Q0?=
 =?gb2312?B?bThlbFVWTG1hM0xtTG00cWJDY0FhWXNZVVpFNitvN0VoVWY0bG9UVFN3K2hn?=
 =?gb2312?Q?5B+5lkUq8rIj9G1c3bqtW71Zl?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PUZPR06MB5887.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(13003099007)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?gb2312?B?Nm93b0ZNaUxDUHNhSUwwaGVOZlI3RmxJYU1UY2JqM3FTYUlISEwvZE1xcFZH?=
 =?gb2312?B?VEV2aDBVQnV1cFdQc2VGTkd0MkMrclVHc0FudkZkV2RFaVlGZStWUGM5eWhF?=
 =?gb2312?B?M0JPVmdnd25HVkR6NU9mMjhYQ3FaSThGcGY2SmgxZUFLWHR6WjZubFJCZEw0?=
 =?gb2312?B?L0Z0Y2tLUkI4UG9Ea2F2aGdXNmxld013eUF5T0d5QVJEbW0xaVpDU0U4TzNT?=
 =?gb2312?B?aHhGWUM4QmZXR3ZiYks0N01KWmZlN1dhUkhvUzI1T1FtdjgyVzFPZFIxcW5w?=
 =?gb2312?B?MXRuaXBwLytYZlYxaTlTREllM2d5UlhHaEQrMmhQWmY4SDEvc0U5cmpUK05C?=
 =?gb2312?B?ckdZalNiaE9abkkwUVJ1dlZwNXdSOEt3ZUo5QXQ0L1B6OVB2WUdEeHE1Nk9B?=
 =?gb2312?B?aWFYQ1dUMGJBV3ZyUUpDNlcwbmNqOTVmZU1jSFZuWDZGTVMwTzNUbWlNdlBX?=
 =?gb2312?B?T0NvQ2lwNk9jSkdOUzk1Tkh1cHQrSk1UK05FWjJydmVTRDJINDM4aVpWeHN3?=
 =?gb2312?B?ZFEvZTVkTnlGK1NLWFNGd2VxUWZHQVN1ZWhpdFc0QVBLSlczQktWbUk2S2sx?=
 =?gb2312?B?SXpTdlhHSkpEU1FyNnAwb0JNemxsZHpuLytmZm1Sd281Tk9MK3YzeE5EcGRJ?=
 =?gb2312?B?QXN6cFVENnNDb2Z5Rm4zMmdBUmttekIzNFQxT2lxeUV2bkljeUZFZXBGRFJL?=
 =?gb2312?B?VXFpSEdVa1lBMDlWTTJSN3Jrb0NiVHZ5alFQS1NYdjIxS2xyangvMGUvYW5k?=
 =?gb2312?B?QUh2RERjQzA4eW1GNWg0ZDZSS3lkL1lXZUNyWWxxNllKVGFRcHJLdHZZejBL?=
 =?gb2312?B?OFJOR1VOYXk5MXhKNzNCaHFsczU1b05ESjZtN2s2WnZCZzhBMDNaVWdhTzhT?=
 =?gb2312?B?RnJleHBFREl6TUdhUVU3Vy9nNFVLQXUxU2lrY2w0YzQwUHhkejZSZ1o1Mm9O?=
 =?gb2312?B?VFRmcUU0TFFja2JPSFBhVFVoN29udndVV3p2UU9vRUF4aG5aVXJ1aGlHZllY?=
 =?gb2312?B?ZU53Uit4Z3VZTThSTmpIQjFWcTlWc3NNcERrQlF1b0pzNm1QMDd4NWJZQ3dI?=
 =?gb2312?B?THpITGdlR0U5NXlFTjJEajY5eENuc29XUTByZEMzNUlFbXlxNGwvc0hBOVRR?=
 =?gb2312?B?QzFNeElVNUlUajFtUENmVmUzZjFpTW9tSTgrUE5mbllNNVgwMFgyYm5jWHd3?=
 =?gb2312?B?R3dremdNOUFsOGE1andwSXp6emM5bzdPUVNWYnE1RCthUmhiY21Bdk9tRHkr?=
 =?gb2312?B?eS9DRWVwbk1sM01mMUJRakVCVjdPZ1ZPcjRJVzRyL0VJcC9mZWZYQVVwaGRj?=
 =?gb2312?B?UEpmMi9TUXhmdXJvME5PQXlOWXE1YlJXSkt4dFVLR3AxTndYZlM5a3h0RStJ?=
 =?gb2312?B?bkVGdndaRUxIQnEvUHNyU1NWNm1ZelBoZHdzZEhadTk1N00wRHJ0RFEyYlNM?=
 =?gb2312?B?bjlleDd4blpoT0ZFOEU5cG1HUzdHZmMyNWxGcHlpRFpTTmEzVWFwMTFiNHkv?=
 =?gb2312?B?ejVFZTVLYmlwK1VjYm95ZnRKd3VVWkY4aGtjajNvbkRXbXV6N0R6bWJTLytr?=
 =?gb2312?B?WmlNS2FaY2ZWd0lnaTlrVEF1U3F2Nzhoak5Vdmw1REJrNVFjdmE2SkZTRU8x?=
 =?gb2312?B?eloyMHZxTDVFeE0vVVZTNkk1TmhlZmlaUjg4TVBnRERmc05rcGZ3Vi9ERmhv?=
 =?gb2312?B?enU1alVLMCt2cUpmTXFiUzFiZjdFbW01VFloSllEczFxVUhBeVZhUTRaYjFs?=
 =?gb2312?B?L0FIc29RU2JUbC9wUEtvb2g4czFQY1ZsT2RmVVFuQlYzN1lwakVtZWdsTTBn?=
 =?gb2312?B?MDd3WmpNdzZINnpJVzBKVlBQVmk1Z3daOExiYWw4WFNxaEhLNEtFd3I2RGk1?=
 =?gb2312?B?OUxUdjBwNjZrNERqNWRzWUFkZGxsbENMaGdBRG1NVk02Z01UQ3JaYmpQRTR2?=
 =?gb2312?B?MzhUWmw5YnNhVEhXN1FVMWZnQ3U0dWZJeEpUZm1LQjFmSTNGaFJUMGhzRiti?=
 =?gb2312?B?R2V0Y1kwUjFaL2w2L3VwK1hoU0IwY2d2OGw4aWtWbllHdEVQNVFqMXJSK3lJ?=
 =?gb2312?B?bVE2ckk3c294bUN5YkYxM2VoOWhGNEswRkZFYzRTWXhVblZvSVZQVXVEMGQ0?=
 =?gb2312?B?aXNLUSs2SXQrbE9zRkg5M2tYeUgxQzIyYXp6NEpnOExxUG9RcW8yeEprMngx?=
 =?gb2312?B?UE5sTjNSY2d0NDlpaDNzTzZDblF4ci8vV2tmS2FBaXMwV1plMXRGRzRzd2h0?=
 =?gb2312?B?aTZOSWRyVmhMalowbTFub0pkSnhUUUlVWFNhVEowSXZXdXEyQTA2S1pWWFRI?=
 =?gb2312?B?VGdiMVI1dGdnbHpFUjBnVUVzZzBVQ0I4M25tV0RvY0k0QlVuV3dBdz09?=
Content-Type: text/plain; charset="gb2312"
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ca935fe-4345-4169-6af9-08de5ff77822
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2026 12:02:41.0027
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zljTeaLFPfHxB9YtXVcMVMWWS+11+6kBDbJbbUhQlUdBST4ScbyROFejX0XcLAVaNVk0u7rwZAz8rmoKG2ZHOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB5225
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261204-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.244.36.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	RSPAMD_EMAILBL_FAIL(0.00)[pinctrl.0.0.0.200:query timed out];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url,PUZPR06MB5887.apcprd06.prod.outlook.com:mid,0.0.0.200:email]
X-Rspamd-Queue-Id: 5F0D2BA4FF
X-Rspamd-Action: no action

SGkgUm9iOg0KDQpUaGFua3MgZm9yIHlvdXIgY29tbWVudHMNCg0KPiBFWFRFUk5BTCBFTUFJTA0K
PiANCj4gT24gVGh1LCBKYW4gMjksIDIwMjYgYXQgMDM6MDA6NDRQTSArMDgwMCwgR2FyeSBZYW5n
IHdyb3RlOg0KPiA+IFRoZXJlIGFyZSB0d28gcmVzZXQgY29udHJvbGxlcnMgb24gQ2l4IHNreTEg
U29jLiBPbmUgaXMgbG9jYXRlZCBpbiBTMA0KPiA+IGRvbWFpbiwgYW5kIHRoZSBvdGhlciBpcyBs
b2NhdGVkIGluIFMwIGFuZCBTNSBkb21haW4uDQo+IA0KPiBUaGUgY29tbWVudHMgb24gdjQgc3Rp
bGwgYXBwbHkuLi4gUmVwZWF0ZWQgYmVsb3cuLi4NCj4gDQoNClllcywgSSB3aWxsIHJlYWQgY2Fy
ZWZ1bGx5IHRob3NlIGNvbW1lbnRzIG9uIFYzIGFuZCBWNCwgVGhhbmtzIGZvciB5b3VyIGtpbmRs
eSByZW1pbmQNCg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogR2FyeSBZYW5nIDxnYXJ5LnlhbmdA
Y2l4dGVjaC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgQ2hlbiA8cGV0ZXIuY2hlbkBj
aXh0ZWNoLmNvbT4NCj4gPiAtLS0NCj4gPiAgLi4uL2JpbmRpbmdzL3Jlc2V0L2NpeCxza3kxLXJz
dC55YW1sICAgICAgICAgIHwgIDQxICsrKysrDQo+ID4gIC4uLi9zb2MvY2l4L2NpeCxza3kxLXN5
c3RlbS1jb250cm9sbGVyLnlhbWwgICB8ICA0OCArKysrKw0KPiA+ICBpbmNsdWRlL2R0LWJpbmRp
bmdzL3Jlc2V0L2NpeCxza3kxLXJzdC1mY2guaCAgfCAgNDIgKysrKysNCj4gPiAgaW5jbHVkZS9k
dC1iaW5kaW5ncy9yZXNldC9jaXgsc2t5MS1yc3QuaCAgICAgIHwgMTY0ICsrKysrKysrKysrKysr
KysrKw0KPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDI5NSBpbnNlcnRpb25zKCspDQo+ID4gIGNyZWF0
ZSBtb2RlIDEwMDY0NA0KPiA+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNl
dC9jaXgsc2t5MS1yc3QueWFtbA0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gPiBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2NpeC9jaXgsc2t5MS1zeXN0ZW0tY29udHJv
bGxlci55DQo+ID4gYW1sICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9y
ZXNldC9jaXgsc2t5MS1yc3QtZmNoLmgNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUv
ZHQtYmluZGluZ3MvcmVzZXQvY2l4LHNreTEtcnN0LmgNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVzZXQvY2l4LHNreTEtcnN0LnlhbWwN
Cj4gPiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNldC9jaXgsc2t5MS1y
c3QueWFtbA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAw
Li5iNTI3OTFlMmIxOGUNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L2NpeCxza3kxLXJzdC55YW1sDQo+ID4gQEAgLTAs
MCArMSw0MSBAQA0KPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5
IE9SIEJTRC0yLUNsYXVzZSkgJVlBTUwgMS4yDQo+ID4gKy0tLQ0KPiA+ICskaWQ6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Jlc2V0L2NpeCxza3kxLXJzdC55YW1sIw0KPiA+ICskc2No
ZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMNCj4gPiAr
DQo+ID4gK3RpdGxlOiBDSVggU2t5MSBSZXNldCBDb250cm9sbGVyDQo+ID4gKw0KPiA+ICttYWlu
dGFpbmVyczoNCj4gPiArICAtIEdhcnkgWWFuZyA8Z2FyeS55YW5nQGNpeHRlY2guY29tPg0KPiA+
ICsNCj4gPiArZGVzY3JpcHRpb246IHwNCj4gPiArICBDSVggU2t5MSByZXNldCBjb250cm9sbGVy
IGNhbiBiZSB1c2VkIHRvIHJlc2V0IHZhcmlvdXMgc2V0IG9mIHBlcmlwaGVyYWxzLg0KPiA+ICsg
IFRoZXJlIGFyZSB0d28gcmVzZXQgY29udHJvbGxlcnMsIG9uZSBpcyBsb2NhdGVkIGluIFMwIGRv
bWFpbiwgdGhlDQo+ID4gK290aGVyDQo+ID4gKyAgaXMgbG9jYXRlZCBpbiBTMCBhbmQgUzUgZG9t
YWluLg0KPiA+ICsNCj4gPiArICBTZWUgYWxzbzoNCj4gPiArICAtIGluY2x1ZGUvZHQtYmluZGlu
Z3MvcmVzZXQvY2l4LHNreTEtcnN0LmgNCj4gPiArDQo+ID4gK3Byb3BlcnRpZXM6DQo+ID4gKyAg
Y29tcGF0aWJsZToNCj4gPiArICAgIGl0ZW1zOg0KPiA+ICsgICAgICAtIGVudW06DQo+ID4gKyAg
ICAgICAgICAtIGNpeCxza3kxLXJzdA0KPiA+ICsgICAgICAgICAgLSBjaXgsc2t5MS1yc3QtZmNo
DQo+ID4gKw0KPiA+ICsgICcjcmVzZXQtY2VsbHMnOg0KPiA+ICsgICAgY29uc3Q6IDENCj4gPiAr
DQo+ID4gK3JlcXVpcmVkOg0KPiA+ICsgIC0gY29tcGF0aWJsZQ0KPiA+ICsgIC0gJyNyZXNldC1j
ZWxscycNCj4gPiArDQo+ID4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQ0KPiA+ICsNCj4g
PiArZXhhbXBsZXM6DQo+ID4gKyAgLSB8DQo+ID4gKyAgICByZXNldC1jb250cm9sbGVyIHsNCj4g
PiArICAgICAgY29tcGF0aWJsZSA9ICJjaXgsc2t5MS1yc3QiOw0KPiA+ICsgICAgICAjcmVzZXQt
Y2VsbHMgPSA8MT47DQo+ID4gKyAgICB9Ow0KPiA+IGRpZmYgLS1naXQNCj4gPiBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvY2l4L2NpeCxza3kxLXN5c3RlbS1jb250cm9s
bGVyDQo+ID4gLnlhbWwNCj4gPiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9z
b2MvY2l4L2NpeCxza3kxLXN5c3RlbS1jb250cm9sbGVyDQo+ID4gLnlhbWwNCj4gPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uOTEzZTc3ZmM1MjJhDQo+ID4g
LS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9zb2MvY2l4L2NpeCxza3kxLXN5c3RlbS1jb250cm8NCj4gPiArKysgbGxlci55YW1sDQo+ID4g
QEAgLTAsMCArMSw0OCBAQA0KPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
LW9ubHkgT1IgQlNELTItQ2xhdXNlICVZQU1MIDEuMg0KPiA+ICstLS0NCj4gPiArJGlkOg0KPiA+
ICtodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9zb2MvY2l4L2NpeCxza3kxLXN5c3RlbS1j
b250cm9sbGVyLnlhbWwNCj4gPiArIw0KPiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMNCj4gPiArDQo+ID4gK3RpdGxlOiBDaXggU2t5MSBT
b0Mgc3lzdGVtIGNvbnRyb2xsZXIgcmVnaXN0ZXIgcmVnaW9uDQo+ID4gKw0KPiA+ICttYWludGFp
bmVyczoNCj4gPiArICAtIEdhcnkgWWFuZyA8Z2FyeS55YW5nQGNpeHRlY2guY29tPg0KPiA+ICsN
Cj4gPiArZGVzY3JpcHRpb246DQo+ID4gKyAgQW4gd2lkZSBhc3NvcnRtZW50IG9mIHJlZ2lzdGVy
cyBvZiB0aGUgc3lzdGVtIGNvbnRyb2xsZXIgb24gU2t5MQ0KPiA+ICtTb0MsDQo+ID4gKyAgaW5j
bHVkaW5nIHJlc2V0cyBhbmQgdXNiLg0KPiA+ICsNCj4gPiArcHJvcGVydGllczoNCj4gPiArICBj
b21wYXRpYmxlOg0KPiA+ICsgICAgaXRlbXM6DQo+ID4gKyAgICAgIC0gZW51bToNCj4gPiArICAg
ICAgICAgIC0gY2l4LHNreTEtc3lzdGVtLWNvbnRyb2xsZXINCj4gPiArICAgICAgICAgIC0gY2l4
LHNreTEtczUtc3lzdGVtLWNvbnRyb2xsZXINCj4gPiArICAgICAgLSBjb25zdDogc3lzY29uDQo+
ID4gKyAgICAgIC0gY29uc3Q6IHNpbXBsZS1tZmQNCj4gPiArDQo+ID4gKyAgcmVnOg0KPiA+ICsg
ICAgbWF4SXRlbXM6IDENCj4gPiArDQo+ID4gK3BhdHRlcm5Qcm9wZXJ0aWVzOg0KPiA+ICsgICJe
cmVzZXQoLWNvbnRyb2xsZXIpPyQiOg0KPiA+ICsgICAgdHlwZTogb2JqZWN0DQo+ID4gKyAgICAk
cmVmOiAvc2NoZW1hcy9yZXNldC9jaXgsc2t5MS1yc3QueWFtbCMNCj4gDQo+IFRoaXMgaXMgbm90
IGEgc2VwYXJhdGUgZGV2aWNlLg0KPiANCg0KQXMgQ29ub3IncyBzdWdnZXN0aW9uIGluIFYzLCB3
ZSByZWZlciB0byBtaWNyb2NoaXAsbXBmcy1tc3MtdG9wLXN5c3JlZy55YW1sLiBJbiB0aGlzIGZp
bGUsIHlvdSBjYW4gc2VlIGNvZGVzIGJlbG93DQo0MA0KNDEgICBwaW5jdHJsQDIwMDoNCjQyICAg
ICB0eXBlOiBvYmplY3QNCjQzICAgICAkcmVmOiAvc2NoZW1hcy9waW5jdHJsL21pY3JvY2hpcCxt
cGZzLXBpbmN0cmwtaW9tdXgwLnlhbWwNCg0KYW5kIGluIG1pY3JvY2hpcCxtcGZzLXBpbmN0cmwt
aW9tdXgwLnlhbWwsIHlvdSBjYW4gYWxzbyBzZWU6DQoNCjczICAgICAgIHBpbmN0cmxAMjAwIHsN
Cjc0ICAgICAgICAgY29tcGF0aWJsZSA9ICJtaWNyb2NoaXAsbXBmcy1waW5jdHJsLWlvbXV4MCI7
DQo3NSAgICAgICAgIHJlZyA9IDwweDIwMCAweDQ+Ow0KNzYgICAgICAgICAuLi4uLi4uLg0KODYg
ICAgICAgfTsNCg0KcGluY3RybEAyMDAgaXMgYWxzbyBhIGRldmljZSBub2RlLCBhbGwgcmlnaHQ/
IElmIG5vdCwgaG93IHRvIGRlc2NyaWJlIGEgc2VwYXJhdGUgZGV2aWNlPw0KDQo+ID4gKw0KPiA+
ICtyZXF1aXJlZDoNCj4gPiArICAtIGNvbXBhdGlibGUNCj4gPiArICAtIHJlZw0KPiA+ICsNCj4g
PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQo+ID4gKw0KPiA+ICtleGFtcGxlczoNCj4g
PiArICAtIHwNCj4gPiArICAgIHN5c2NvbkAxNjAwMDAwMCB7DQo+ID4gKyAgICAgIGNvbXBhdGli
bGUgPSAiY2l4LHNreTEtczUtc3lzdGVtLWNvbnRyb2xsZXIiLCAic3lzY29uIiwNCj4gInNpbXBs
ZS1tZmQiOw0KPiA+ICsgICAgICByZWcgPSA8MHgxNjAwMDAwMCAweDEwMDA+Ow0KPiA+ICsgICAg
ICByZXNldC1jb250cm9sbGVyIHsNCj4gPiArICAgICAgICBjb21wYXRpYmxlID0gImNpeCxza3kx
LXJzdCI7DQo+ID4gKyAgICAgICAgI3Jlc2V0LWNlbGxzID0gPDE+Ow0KPiANCj4gTW92ZSAjcmVz
ZXQtY2VsbHMgdG8gdGhlIHBhcmVudCBub2RlIGFuZCBkcm9wIHRoaXMgbm9kZS4gQW5kIHRoZW4g
ZHJvcA0KPiAic2ltcGxlLW1mZCIuIE9yIHBlcmhhcHMgdGhlIGRlZmluaXRpb24gZm9yIHdoYXQn
cyBpbiB0aGUNCj4gImNpeCxza3kxLXM1LXN5c3RlbS1jb250cm9sbGVyIiBpcyBpbmNvbXBsZXRl
PyBJZiBzbywgcGxlYXNlIGRlZmluZSBhbGwgdGhlDQo+IGJpbmRpbmcuDQo+IA0KPiBSb2INCg0K
SWYgd2UgbW92ZSAjcmVzZXQtY2VsbHMgdG8gdGhlIHBhcmVudCBub2RlLCB0aGUgcGFyZW50IG5v
ZGUgYWN0cyBhcyBhIHJlc2V0IGNvbnRyb2xsZXIuIEFsbCByaWdodD8NClRoZXJlIGlzIG5vdCBv
bmx5IGEgcmVzZXQgY29udHJvbGxlciwgYW5kIGFyZSBzb21lIG90aGVyIG1vZHVsZXMuIEhvdyBk
byB3ZSBhZGQgdGhlc2UgbW9kdWxlcw0KdG8gdGhlIHBhcmVudCBub2RlIGluIHRoZSBmdXR1cmU/
IElmIHlvdSBmZWVsIGNvbmZ1c2UgdGhpcyBzY2hlbWUsIENhbiB3ZSByZWZlciB0byB0aGUgc3lz
Y29uIG5vZGUgDQp2aWEgcGhhbmRsZT8NCg0KQmVzdCBSZWdhcmRzDQpHYXJ5DQoNCg==

