Return-Path: <devicetree+bounces-83208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C55927984
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 17:04:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3642E1F2323F
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 15:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D58071B29A8;
	Thu,  4 Jul 2024 15:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="Y5Zmh1Qk"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2102.outbound.protection.outlook.com [40.107.20.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BB01B14ED;
	Thu,  4 Jul 2024 15:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.102
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720105437; cv=fail; b=OitXaBzih+X3udpQIZoFeAGQHINSKtn9cDfPRQLRf7OatTW8DLuPAmnikm+oe5xLfpvQG+GP4+zOMR3voFR+n7LH8UO89KjVzQfGIDT267r04hX40wlVhoxvCqfEArLeZhWQfOHdE1FTxCI9rE7iQQuyviea88T+L0AXcUz76Qs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720105437; c=relaxed/simple;
	bh=kES2HB3UmJwXWYZulDjoJS0K/eITeISVm+N26XBUkUI=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=sIWYMA9SY7AXP58me5WLJXK8iF4vwVpOZ//Rccly3ibyJ5f0KXZAVyJZlJkqdX+rqclHAqjsCSo3ITCfv12js5RNFutDzJsh4zXF2/6YY6WuA2yoafAvbO3MmfXYtCcUBUyfvNwGlDikYWDTf5SFq59agJ9TR8pLSd4gFiwSUFI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com; spf=pass smtp.mailfrom=solid-run.com; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=Y5Zmh1Qk; arc=fail smtp.client-ip=40.107.20.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=solid-run.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jKoGuu4GjVkyG/lQwliffiR7nX2MnR3NqsvqB42U1UeZYsf5i889z6XAySVdY8yqXDTXGwBJ3gyWmhEma2KZj/ixE54YD50y6ITUiOIghNpIhep9MyQcj9JjgqJRh2wi2FWnf/BIxOVbO8wOo7zADNBd4gpDl+8WMaTOYaL4O6jnsgMk7vT4hp84SAKEuaizPoDMbVDku8w1jfWKTqexYsnHcsAL8ZfrBM83c2Tbl1+r/cyHKBBioJ8EAnYh3i7KVZEflxA+G32TM9pxRtnec3npvZq1GuGpZcf6f1M667+wfKLczyrSwY+Q1XxTpruCF/Lv2EnJpsbXIGfD36cyfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4d05q49xYLdldzIAJAOLYnFweox24PXDvvTxGws5LHM=;
 b=djX0vI2+n9ZsTuX4sehraxB173AZk/1sFg+JykiRHgetx6Frdrge7WuWO2aJyqcA2WHni8zRFPmKjt1MxW8XhhfPrbU3r4MrH63foP7xSOBMSpXeh7nw85o6bPUbXsAsU/Urc8DkE54EEaxTLyV0bHEkt9atwV1iW+p9jiDC5dO1wDKMG9ExuPGmDzwrJJEmxSRsMW7qTFiXGqlwK46378BM4f9CjnlQWv6b2zBGIo2zzoBVZ0RnYQxxzd4TKsu8Pz8ZaqSddy+T1D3lL26flmOOmbhQWT9VSr2JmCzXaUgFAOY0+0Qsb273BTNBWu1H9+pEuztQirQ4I39waIRFDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4d05q49xYLdldzIAJAOLYnFweox24PXDvvTxGws5LHM=;
 b=Y5Zmh1Qk2cBAGg8CSDHUmK/Yy5hu9wp/ClnkcvyRaHF93QLg59ZKM27rJvFgN0fhLjbtRn2nfGLttOoPS5Oo/+AlubNlnsf1ITivgjqSGwf14jQOxnJe0/H4mw5hp8ffU/PICsqGF+4EeJayzPni2j6/U8rtTKGb1ZHejaI+uSs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by VI2PR04MB10714.eurprd04.prod.outlook.com (2603:10a6:800:26d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.29; Thu, 4 Jul
 2024 15:03:46 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%5]) with mapi id 15.20.7741.017; Thu, 4 Jul 2024
 15:03:46 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Thu, 04 Jul 2024 17:03:21 +0200
Subject: [PATCH v7 3/5] arm64: dts: add description for solidrun cn9130 som
 and clearfog boards
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240704-cn9130-som-v7-3-eea606ba5faa@solid-run.com>
References: <20240704-cn9130-som-v7-0-eea606ba5faa@solid-run.com>
In-Reply-To: <20240704-cn9130-som-v7-0-eea606ba5faa@solid-run.com>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.12.4
X-ClientProxiedBy: FR0P281CA0081.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::7) To AM9PR04MB7586.eurprd04.prod.outlook.com
 (2603:10a6:20b:2d5::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB7586:EE_|VI2PR04MB10714:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f0eee58-e0a8-432e-8c3e-08dc9c3a80ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?anlDejNrVlFwMlNaV29wYVpBVVB2bWJjbFU0a3duRkJxNzBINGc5K3g2NXFz?=
 =?utf-8?B?ek1TcSs2R3BLT2pQdG1JdWtYcFJvZFpDM0czTEhYU29saTcxeDl3M1ozYUZm?=
 =?utf-8?B?VzlUa3l2VER5VFBscFF2NmdCVmRJN0J1VHBiYnZqVDZvTTZLS1JWZlViNXBq?=
 =?utf-8?B?UkxLTC9UTk1CV0U0OHNQV3g1ZktmZm5vWFhUYjQ0bXozNWNoYU1FNng1dG1v?=
 =?utf-8?B?K3BzdXQvc0hmWFZJTytYcTU4NFhZQ0NFSXhNRUhSNHlaWk14anc1b0w0OWxr?=
 =?utf-8?B?TG1zSldGczFSR2FXV2ZwOWJ0SURZNU02M1dNV3F1N25GNkUvclFZcXdqYXRr?=
 =?utf-8?B?elE5Q2tvQXdqNUhieVBoblRxUS9BR3pyZlJJTVJqSXU2RTUwYVB0UTBuRmRp?=
 =?utf-8?B?V25FcXY2cFdST0NkUjdJVlgyN2cvWEQxdVRqQ2l1anA1Z0pWQW9yY3FwaVJC?=
 =?utf-8?B?M1VOV0tnM2pxc05EUkwzN3lPcC9oeCtCb3J3RU42Zkx0M25BN2ZwU1hJcjdk?=
 =?utf-8?B?OS94TVg2VnhSa1hwbTN2ZGd5Skl2SHRXeG1UNFJWTlFXdzhJaE0yQjN1amNm?=
 =?utf-8?B?aGNjeEduUUVXU2szRkJ0eVVGMHMxalVHMS9oS0pZOGtJUHl3V1lqWjNldW5H?=
 =?utf-8?B?b25xMm1BRHdjeFhGeHhVTk5MdFllQmk5enBNaDhCYjFsRmRWbjNtSnovSTk1?=
 =?utf-8?B?amI2cXBMYWNSUkdsVkMwQTZpall3azBtMVM5eGVMSGNVZHpxRUhBS1ZXSkNX?=
 =?utf-8?B?UGV4Q09RWldaMEw2SHUrMkkreVJ2eGNhdUJPZVRwQ2xTbGJDckpNMk1qQnkr?=
 =?utf-8?B?aUlEeEpRN00yZlFBS0dUWkRKQi9ZT2ZHeFh1aklISDhFL05LaUU5blJEcklw?=
 =?utf-8?B?TXVRU003QnA1SGF2Vnl0UElPdVQya2I1Z3NadHAwcVRDM3llYS9sMC90a3FQ?=
 =?utf-8?B?dW1rbGJqUnBHbmpFaitaM2lzRjloWFo4eGRnb2pIb3hTM1IrMWFGMGI1VExo?=
 =?utf-8?B?SGpnUmdUWmNoNW1hcFNGR3pXaENYR3IrK2czMmdRcDlIZGUxamo0VUtyaWtI?=
 =?utf-8?B?aUJvMS83a1U2TDVtMW93TXZrQkZmbk1MbldpT1cxNlJzbGlnbzdnU2Q5MFEx?=
 =?utf-8?B?dTFKcCtoeWp2cllwbmdpZEM2RXVFMHQzS0lESk00d3J1NUhYVW5pa0dSYjdM?=
 =?utf-8?B?K09NTFpnU2F2d1ZoK3M4aGhYZzgxbFJ2OU1mbEVMTStNZ095bG81dXBQOFlH?=
 =?utf-8?B?Ky9pbzlzckFtK1FXUmVzV0JFbnZ0RFZ5NlpMamlPZWM2R2R6UjdXT2JWaG9k?=
 =?utf-8?B?eExYZlNMVU5yakZnRjRzVFJSL2VaUmFtS2x3bnVmMStGQlNRZ0xUQk16b0tX?=
 =?utf-8?B?WkIrckJLbVd6akRIM25sZFNmTi9aaWpYNWl6YU5TS1VEWDF1Y3FZaW8wSisr?=
 =?utf-8?B?RWZoTkp3VVVOaWgwcTZ3VGsvNEt1Y3Z4cEpTS0FpZzIwc05qV1JyeHh6aHkx?=
 =?utf-8?B?WlJwdWY2N0JzWmN5TmI3UVFYWDdBZDhUMURadk5ZRVdSRHYwT0MwSGEyRE5s?=
 =?utf-8?B?eE9xNlJvSHQwQ29EWEZUcWR4VHl2Qkl5bXdvZ1BTeUFSajJUTW1lYjA3ZUR0?=
 =?utf-8?B?bGhBQVIxNGZaQzZ5TFZPaFVDUmx2R1NNTjZIYkRnanJSaUNzeEhNN3FQdi90?=
 =?utf-8?B?d3BOeE5IYlBJVkcwcnFqRVZZWUIyZlFPTHA4OEYwSVdOOWpZMEdGbG16U2hT?=
 =?utf-8?B?bGM3RU5aSGk1eHM0c2IwY1lhcS90T2I1dHluemE3UURFMGc1MnB0RWtGQW00?=
 =?utf-8?B?RXd1TE9nbDkyb3NnSUpqMXNqbmdtcjZHbUsrdWFsVWtsUDQ3UXVmbWNKUVNr?=
 =?utf-8?B?VmZvTFJkcjBSZjl0YURaaUZFd29vbDlSbGo1UXoxajdzTFE9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dmNEelF5MzF0bEJvQ0pTNmxoZU9HNk5Nc01kaDBPSWcwQ01RYU9NREJvbDBn?=
 =?utf-8?B?aURacGtJb0dhRnUzYlRUeEk1S2FaaHVERy9zQW56ZDJMdFpVNndaRFBOdHFv?=
 =?utf-8?B?UGxwbWxRRytwYkVDZXU5cEVZSGtiQUNzY2ptRFBuWmFraDhERm8yVEhBTHFG?=
 =?utf-8?B?RW9vSDdZbUFxc2FEUThZUDQybVE2dGlISWJsbFRuQlVZQmZoNngvSk85MUdu?=
 =?utf-8?B?ZnQrQmVjTXg5SE1jNGJNTzJpRkxYR0xyYi9hOGdMQVlESzhYYTVpMldrTjJa?=
 =?utf-8?B?T3lhVHRCckxYeVdnRS9KeldGT25GSjlWVmdTdmt0ZkhiS3lvVERERGYvSkFz?=
 =?utf-8?B?UGM2eUUweWVZRTR2UFpEbmcxcHJTa3E4NzBUL1J6aDBXVERnZW9uamlWcEcw?=
 =?utf-8?B?UEZIcmM1aVAwaS9YMis5cXlhVFgzVW9Ub1VDUmRsL2FucExGTGhKM2piOVN5?=
 =?utf-8?B?WlA5UlUwL1UzWXdqUnk1RldNZTg5Q1FDZ0tXb1ZRZnhCbm1rVk1QOHJIWkQx?=
 =?utf-8?B?WExWdzNnbi92NmZRclArb3REdGFtcUVyTzIxODVwRjRkUHZuQmprTXRqdGM4?=
 =?utf-8?B?L2FrQkYrbjZMTzlsb0JyMEhHSlE4djEzdkVGQ2NaM2gzR2xJeWl2UEFSYUpr?=
 =?utf-8?B?Ry82dzUxTkhIeUMxQ2lKQWRZVjIxL2FiYWxtMUF0TjQ4NWdhQ3VCNUg4bFN0?=
 =?utf-8?B?RkN4YUNxaWE3YmNYMWRXQXhUbGN4U0FvQ3J6OUpuWHdRbDZuRDdhZUNZUnF3?=
 =?utf-8?B?Yk5aTmM3UXVEZmw5ekVkMnZjTHFUVXp3aFl2a09QditJQnJQUmV3WXM0TDFo?=
 =?utf-8?B?VVpvblVGYUNKM1RUV2Q3dTdnc015K1gveDRVZkU0SzV2YUZ1dldJbE9QTUYy?=
 =?utf-8?B?U0g4b0RIZG9JbUpTZTZUYW5NaTRDRS95aTAwYmY0bFhiUjVrUVY3alozckNj?=
 =?utf-8?B?YmpTS3NOb2E4NmpycWhVaFVVeUkxaG4zdmhXMTBXRS9XeWQ2cHlldVByeUN3?=
 =?utf-8?B?WnpkK2JiT2tWN1BldFhEWVhMNzZva3FoSG4xais0L21aVjZlRlkydzhnWlZ4?=
 =?utf-8?B?U0dxTk9jdmlQQW1XS3NDeTRRanllVDN3QVNpMFhBUzlFNlFoV2xaMjZ2Wk5G?=
 =?utf-8?B?RFRGbTI2QWI4SzFEWGgxb3VYNlhkYnpUTEx3bnhwdHFWakVaRis2YWh2ekxj?=
 =?utf-8?B?K3lnNEt4d2dBS3Q1UjVDcS82NjZEd0dEd2NFbm8vTmwyZ1VRQTRFY1VXenVX?=
 =?utf-8?B?U1gzQ2lxMFhsbXl3NnQvL2xSWE82ZEkzcGpYbm5pOE00aTRuTm9aNmwyMXhV?=
 =?utf-8?B?aDFkbWNUUlVCTGZWNzJwd2tGQlFBUm5kbkk1Y1pkTXhVQVRua1g4UGlyZDlO?=
 =?utf-8?B?L3NLNWppL3VmTWNvUEsvRy9JekxnbjJ5WG1MZXptb0dieUt3KzVrL1VkUHFQ?=
 =?utf-8?B?Yi9LY1MzOWpoTWZkSGwyeUJZeU1IaUpLU2hLd2c4TmdrUjVreFgvV0NsNE55?=
 =?utf-8?B?akVjdVFJYXJDRVZvQ1dUZ080QW5LaTd3V21hOVZYSncwQm9Ld3oyZnJWTE9k?=
 =?utf-8?B?UXVmLzBWTDBKZTBjMTZHWFljaFF6QTdZdnROSXhjQkdBdEtnUEkyajNRMVJu?=
 =?utf-8?B?MHpqeGRpS2lNRnF2UldsSXpLa1FFYWs2NzA5UzA2aEFKTVdBd09XRW5xazl2?=
 =?utf-8?B?RVkySCtVdUx1cEd1Yk9XUkR3YUVnZk9za1NRRHVRMUttcEIwRTBWVSt3dlJ6?=
 =?utf-8?B?azlQSmtiVzR0aDgranhZS0wxV1doSWRpbnVTS3pzK2pwV2lQVDNLdTJtTTFs?=
 =?utf-8?B?ZUtUTVF4L0Y0ODdpQWpqRENRMVRqb3pnNkRXeWhtZnl6aFVBSW8xZHhuVU02?=
 =?utf-8?B?WUljOTROOVJQTjlwY2JYU2dBTFQrSzM4UnJIbDJGRkdXWGl1dVVPMnl3YXF1?=
 =?utf-8?B?OXJOTDZQYXZWMVpmdncrSUtBUTZLQStnc1NQaGd4RkpyWjZYN1lXYytkTWdG?=
 =?utf-8?B?YUx1eWZnYlQxMTRoOW8rL0NOZ01wQU5uSUZDbUQvTVVEUFdjc1cydTN1K0ky?=
 =?utf-8?B?NjlFVSszSUNwcDN3Zys5cVRsRDJPRzl4clhJQktLZmtEM2FHQlNGa0VpYzVR?=
 =?utf-8?Q?cPaY8LHc7/xg7wnvoz1wa+moW?=
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f0eee58-e0a8-432e-8c3e-08dc9c3a80ad
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2024 15:03:46.1536
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IeSO10Ded9JTOYmDZrOUSbPVePrD6AdJKkwBYy3ZeQlpZ3zn4EQCu2XphqV/2HWpLVyTzF/AW1TtdSgMHh9X6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10714

Add description for the SolidRun CN9130 SoM, and Clearfog Base / Pro
reference boards.

The SoM has been designed as a pin-compatible replacement for the older
Armada 388 based SoM. Therefore it supports the same boards and a
similar feature set.

Most notable upgrades:
- 4x Cortex-A72
- 10Gbps SFP
- Both eMMC and SD supported at the same time

The developer first supporting this product at SolidRun decided to use
different filenames for the DTBs: Armada 388 uses the full
"clearfog" string while cn9130 uses the abbreviation "cf".
This name is already hard-coded in pre-installed vendor u-boot and can
not be changed easily.

NOTICE IN CASE ANYBODY WANTS TO SELF-UPGRADE:
CN9130 SoM has a different footprint from Armada 388 SoM.
Components on the carrier board below the SoM may collide causing
damage, such as on Clearfog Base.

Signed-off-by: Josua Mayer <josua@solid-run.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 arch/arm64/boot/dts/marvell/Makefile           |   2 +
 arch/arm64/boot/dts/marvell/cn9130-cf-base.dts | 178 ++++++++++++
 arch/arm64/boot/dts/marvell/cn9130-cf-pro.dts  | 375 +++++++++++++++++++++++++
 arch/arm64/boot/dts/marvell/cn9130-cf.dtsi     | 197 +++++++++++++
 arch/arm64/boot/dts/marvell/cn9130-sr-som.dtsi | 160 +++++++++++
 5 files changed, 912 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
index 99b8cb3c49e1..019f2251d696 100644
--- a/arch/arm64/boot/dts/marvell/Makefile
+++ b/arch/arm64/boot/dts/marvell/Makefile
@@ -28,3 +28,5 @@ dtb-$(CONFIG_ARCH_MVEBU) += cn9130-crb-A.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += cn9130-crb-B.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += ac5x-rd-carrier-cn9131.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += ac5-98dx35xx-rd.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += cn9130-cf-base.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += cn9130-cf-pro.dtb
diff --git a/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts b/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
new file mode 100644
index 000000000000..788a5c302b17
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
@@ -0,0 +1,178 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2024 Josua Mayer <josua@solid-run.com>
+ *
+ * DTS for SolidRun CN9130 Clearfog Base.
+ *
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+
+#include "cn9130.dtsi"
+#include "cn9130-sr-som.dtsi"
+#include "cn9130-cf.dtsi"
+
+/ {
+	model = "SolidRun CN9130 Clearfog Base";
+	compatible = "solidrun,cn9130-clearfog-base",
+		     "solidrun,cn9130-sr-som", "marvell,cn9130";
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&rear_button_pins>;
+		pinctrl-names = "default";
+
+		button-0 {
+			/* The rear SW3 button */
+			label = "Rear Button";
+			gpios = <&cp0_gpio1 31 GPIO_ACTIVE_LOW>;
+			linux,can-disable;
+			linux,code = <BTN_0>;
+		};
+	};
+
+	rfkill-m2-gnss {
+		compatible = "rfkill-gpio";
+		label = "m.2 GNSS";
+		radio-type = "gps";
+		/* rfkill-gpio inverts internally */
+		shutdown-gpios = <&expander0 9 GPIO_ACTIVE_HIGH>;
+	};
+
+	/* M.2 is B-keyed, so w-disable is for WWAN */
+	rfkill-m2-wwan {
+		compatible = "rfkill-gpio";
+		label = "m.2 WWAN";
+		radio-type = "wwan";
+		/* rfkill-gpio inverts internally */
+		shutdown-gpios = <&expander0 8 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+/* SRDS #3 - SGMII 1GE */
+&cp0_eth1 {
+	phy = <&phy1>;
+	phys = <&cp0_comphy3 1>;
+	phy-mode = "sgmii";
+	status = "okay";
+};
+
+&cp0_eth2_phy {
+	/*
+	 * Configure LEDs default behaviour:
+	 * - LED[0]: link/activity: On/blink (green)
+	 * - LED[1]: link is 100/1000Mbps: On (yellow)
+	 * - LED[2]: high impedance (floating)
+	 */
+	marvell,reg-init = <3 16 0xf000 0x0a61>;
+
+	leds {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@0 {
+			reg = <0>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_WAN;
+			default-state = "keep";
+		};
+
+		led@1 {
+			reg = <1>;
+			color = <LED_COLOR_ID_YELLOW>;
+			function = LED_FUNCTION_WAN;
+			default-state = "keep";
+		};
+	};
+};
+
+&cp0_gpio1 {
+	sim-select-hog {
+		gpio-hog;
+		gpios = <27 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "sim-select";
+	};
+};
+
+&cp0_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+		/*
+		 * Configure LEDs default behaviour:
+		 * - LED[0]: link/activity: On/blink (green)
+		 * - LED[1]: link is 100/1000Mbps: On (yellow)
+		 * - LED[2]: high impedance (floating)
+		 *
+		 * Configure LEDs electrical polarity
+		 * - on-state: low
+		 * - off-state: high (not hi-z, to avoid residual glow)
+		 */
+		marvell,reg-init = <3 16 0xf000 0x0a61>,
+				   <3 17 0x003f 0x000a>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@0 {
+				reg = <0>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_YELLOW>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+		};
+	};
+};
+
+&cp0_pinctrl {
+	pinctrl-0 = <&sim_select_pins>;
+	pintrl-names = "default";
+
+	rear_button_pins: cp0-rear-button-pins {
+		marvell,pins = "mpp31";
+		marvell,function = "gpio";
+	};
+
+	sim_select_pins: cp0-sim-select-pins {
+		marvell,pins = "mpp27";
+		marvell,function = "gpio";
+	};
+};
+
+/*
+ * SRDS #4 - USB 3.0 host on M.2 connector
+ * USB-2.0 Host on Type-A connector
+ */
+&cp0_usb3_1 {
+	phys = <&cp0_comphy4 1>, <&cp0_utmi1>;
+	phy-names = "comphy", "utmi";
+	dr_mode = "host";
+	status = "okay";
+};
+
+&expander0 {
+	m2-full-card-power-off-hog {
+		gpio-hog;
+		gpios = <2 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "m2-full-card-power-off";
+	};
+
+	m2-reset-hog {
+		gpio-hog;
+		gpios = <10 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "m2-reset";
+	};
+};
diff --git a/arch/arm64/boot/dts/marvell/cn9130-cf-pro.dts b/arch/arm64/boot/dts/marvell/cn9130-cf-pro.dts
new file mode 100644
index 000000000000..a27fe0042867
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9130-cf-pro.dts
@@ -0,0 +1,375 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2024 Josua Mayer <josua@solid-run.com>
+ *
+ * DTS for SolidRun CN9130 Clearfog Pro.
+ *
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+
+#include "cn9130.dtsi"
+#include "cn9130-sr-som.dtsi"
+#include "cn9130-cf.dtsi"
+
+/ {
+	model = "SolidRun CN9130 Clearfog Pro";
+	compatible = "solidrun,cn9130-clearfog-pro",
+		     "solidrun,cn9130-sr-som", "marvell,cn9130";
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&rear_button_pins>;
+		pinctrl-names = "default";
+
+		button-0 {
+			/* The rear SW3 button */
+			label = "Rear Button";
+			gpios = <&cp0_gpio2 0 GPIO_ACTIVE_LOW>;
+			linux,can-disable;
+			linux,code = <BTN_0>;
+		};
+	};
+};
+
+/* SRDS #3 - SGMII 1GE to L2 switch */
+&cp0_eth1 {
+	phys = <&cp0_comphy3 1>;
+	phy-mode = "sgmii";
+	status = "okay";
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
+
+&cp0_eth2_phy {
+	/*
+	 * Configure LEDs default behaviour similar to switch ports:
+	 * - LED[0]: link/activity: On/blink (green)
+	 * - LED[1]: link is 100/1000Mbps: On (red)
+	 * - LED[2]: high impedance (floating)
+	 *
+	 * Switch port defaults:
+	 * - LED0: link/activity: On/blink (green)
+	 * - LED1: link is 1000Mbps: On (red)
+	 *
+	 * Identical configuration is impossible with hardware offload.
+	 */
+	marvell,reg-init = <3 16 0xf000 0x0a61>;
+
+	leds {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@0 {
+			reg = <0>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_WAN;
+			label = "LED2";
+			default-state = "keep";
+		};
+
+		led@1 {
+			reg = <1>;
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_WAN;
+			label = "LED1";
+			default-state = "keep";
+		};
+	};
+};
+
+&cp0_mdio {
+	ethernet-switch@4 {
+		compatible = "marvell,mv88e6085";
+		reg = <4>;
+		pinctrl-0 = <&dsa_clk_pins &dsa_pins>;
+		pinctrl-names = "default";
+		reset-gpios = <&cp0_gpio1 27 GPIO_ACTIVE_LOW>;
+		interrupt-parent = <&cp0_gpio1>;
+		interrupts = <29 IRQ_TYPE_EDGE_FALLING>;
+
+		ethernet-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ethernet-port@0 {
+				reg = <0>;
+				label = "lan5";
+				phy = <&switch0phy0>;
+
+				leds {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					led@0 {
+						reg = <0>;
+						color = <LED_COLOR_ID_GREEN>;
+						function = LED_FUNCTION_LAN;
+						label = "LED12";
+						default-state = "keep";
+					};
+
+					led@1 {
+						reg = <1>;
+						color = <LED_COLOR_ID_RED>;
+						function = LED_FUNCTION_LAN;
+						label = "LED11";
+						default-state = "keep";
+					};
+				};
+			};
+
+			ethernet-port@1 {
+				reg = <1>;
+				label = "lan4";
+				phy = <&switch0phy1>;
+
+				leds {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					led@0 {
+						reg = <0>;
+						color = <LED_COLOR_ID_GREEN>;
+						function = LED_FUNCTION_LAN;
+						label = "LED10";
+						default-state = "keep";
+					};
+
+					led@1 {
+						reg = <1>;
+						color = <LED_COLOR_ID_RED>;
+						function = LED_FUNCTION_LAN;
+						label = "LED9";
+						default-state = "keep";
+					};
+				};
+			};
+
+			ethernet-port@2 {
+				reg = <2>;
+				label = "lan3";
+				phy = <&switch0phy2>;
+
+				leds {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					led@0 {
+						reg = <0>;
+						color = <LED_COLOR_ID_GREEN>;
+						function = LED_FUNCTION_LAN;
+						label = "LED8";
+						default-state = "keep";
+					};
+
+					led@1 {
+						reg = <1>;
+						color = <LED_COLOR_ID_RED>;
+						function = LED_FUNCTION_LAN;
+						label = "LED7";
+						default-state = "keep";
+					};
+				};
+			};
+
+			ethernet-port@3 {
+				reg = <3>;
+				label = "lan2";
+				phy = <&switch0phy3>;
+
+				leds {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					led@0 {
+						reg = <0>;
+						color = <LED_COLOR_ID_GREEN>;
+						function = LED_FUNCTION_LAN;
+						label = "LED6";
+						default-state = "keep";
+					};
+
+					led@1 {
+						reg = <1>;
+						color = <LED_COLOR_ID_RED>;
+						function = LED_FUNCTION_LAN;
+						label = "LED5";
+						default-state = "keep";
+					};
+				};
+			};
+
+			ethernet-port@4 {
+				reg = <4>;
+				label = "lan1";
+				phy = <&switch0phy4>;
+
+				leds {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					led@0 {
+						reg = <0>;
+						color = <LED_COLOR_ID_GREEN>;
+						function = LED_FUNCTION_LAN;
+						label = "LED4";
+						default-state = "keep";
+					};
+
+					led@1 {
+						reg = <1>;
+						color = <LED_COLOR_ID_RED>;
+						function = LED_FUNCTION_LAN;
+						label = "LED3";
+						default-state = "keep";
+					};
+				};
+			};
+
+			ethernet-port@5 {
+				reg = <5>;
+				label = "cpu";
+				ethernet = <&cp0_eth1>;
+				phy-mode = "sgmii";
+
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+
+			ethernet-port@6 {
+				reg = <6>;
+				label = "lan6";
+				phy-mode = "rgmii";
+
+				/*
+				 * Because of mdio address conflict the
+				 * external phy is not readable.
+				 * Force a fixed link instead.
+				 */
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+		};
+
+		mdio {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			switch0phy0: ethernet-phy@0 {
+				reg = <0x0>;
+			};
+
+			switch0phy1: ethernet-phy@1 {
+				reg = <0x1>;
+				/*
+				 * Indirectly configure default behaviour
+				 * for port lan6 leds behind external phy.
+				 * Internal PHYs are not using page 3,
+				 * therefore writing to it is safe.
+				 */
+				marvell,reg-init = <3 16 0xf000 0x0a61>;
+			};
+
+			switch0phy2: ethernet-phy@2 {
+				reg = <0x2>;
+			};
+
+			switch0phy3: ethernet-phy@3 {
+				reg = <0x3>;
+			};
+
+			switch0phy4: ethernet-phy@4 {
+				reg = <0x4>;
+			};
+		};
+
+		/*
+		 * There is an external phy on the switch mdio bus.
+		 * Because its mdio address collides with internal phys,
+		 * it is not readable.
+		 *
+		 * mdio-external {
+		 *	compatible = "marvell,mv88e6xxx-mdio-external";
+		 *	#address-cells = <1>;
+		 *	#size-cells = <0>;
+		 *
+		 *	ethernet-phy@1 {
+		 *		reg = <0x1>;
+		 *	};
+		 * };
+		 */
+	};
+};
+
+/* SRDS #4 - miniPCIe (CON2) */
+&cp0_pcie1 {
+	num-lanes = <1>;
+	phys = <&cp0_comphy4 1>;
+	/* dw-pcie inverts internally */
+	reset-gpios = <&expander0 2 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&cp0_pinctrl {
+	dsa_clk_pins: cp0-dsa-clk-pins {
+		marvell,pins = "mpp40";
+		marvell,function = "synce1";
+	};
+
+	dsa_pins: cp0-dsa-pins {
+		marvell,pins = "mpp27", "mpp29";
+		marvell,function = "gpio";
+	};
+
+	rear_button_pins: cp0-rear-button-pins {
+		marvell,pins = "mpp32";
+		marvell,function = "gpio";
+	};
+
+	cp0_spi1_cs1_pins: cp0-spi1-cs1-pins {
+		marvell,pins = "mpp12";
+		marvell,function = "spi1";
+	};
+};
+
+&cp0_spi1 {
+	/* add pin for chip-select 1 on mikrobus */
+	pinctrl-0 = <&cp0_spi1_pins &cp0_spi1_cs1_pins>;
+};
+
+/* USB-2.0 Host on Type-A connector */
+&cp0_usb3_1 {
+	phys = <&cp0_utmi1>;
+	phy-names = "utmi";
+	dr_mode = "host";
+	status = "okay";
+};
+
+&expander0 {
+	/* CON2 */
+	pcie1-0-clkreq-hog {
+		gpio-hog;
+		gpios = <4 GPIO_ACTIVE_LOW>;
+		input;
+		line-name = "pcie1.0-clkreq";
+	};
+
+	/* CON2 */
+	pcie1-0-w-disable-hog {
+		gpio-hog;
+		gpios = <7 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "pcie1.0-w-disable";
+	};
+};
diff --git a/arch/arm64/boot/dts/marvell/cn9130-cf.dtsi b/arch/arm64/boot/dts/marvell/cn9130-cf.dtsi
new file mode 100644
index 000000000000..ad0ab34b6602
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9130-cf.dtsi
@@ -0,0 +1,197 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2024 Josua Mayer <josua@solid-run.com>
+ *
+ * DTS for common base of SolidRun CN9130 Clearfog Base and Pro.
+ *
+ */
+
+/ {
+	aliases {
+		/* label nics same order as armada 388 clearfog */
+		ethernet0 = &cp0_eth2;
+		ethernet1 = &cp0_eth1;
+		ethernet2 = &cp0_eth0;
+		i2c1 = &cp0_i2c1;
+		mmc1 = &cp0_sdhci0;
+	};
+
+	reg_usb3_vbus0: regulator-usb3-vbus0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpios = <&expander0 6 GPIO_ACTIVE_LOW>;
+	};
+
+	sfp: sfp {
+		compatible = "sff,sfp";
+		i2c-bus = <&cp0_i2c1>;
+		los-gpios = <&expander0 12 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&expander0 15 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&expander0 14 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&expander0 13 GPIO_ACTIVE_HIGH>;
+		maximum-power-milliwatt = <2000>;
+	};
+};
+
+/* SRDS #2 - SFP+ 10GE */
+&cp0_eth0 {
+	managed = "in-band-status";
+	phys = <&cp0_comphy2 0>;
+	phy-mode = "10gbase-r";
+	sfp = <&sfp>;
+	status = "okay";
+};
+
+&cp0_i2c0 {
+	expander0: gpio-expander@20 {
+		compatible = "nxp,pca9555";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		pinctrl-0 = <&expander0_pins>;
+		pinctrl-names = "default";
+		interrupt-parent = <&cp0_gpio1>;
+		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+
+		/* CON3 */
+		pcie2-0-clkreq-hog {
+			gpio-hog;
+			gpios = <0 GPIO_ACTIVE_LOW>;
+			input;
+			line-name = "pcie2.0-clkreq";
+		};
+
+		/* CON3 */
+		pcie2-0-w-disable-hog {
+			gpio-hog;
+			gpios = <3 GPIO_ACTIVE_LOW>;
+			output-low;
+			line-name = "pcie2.0-w-disable";
+		};
+
+		usb3-ilimit-hog {
+			gpio-hog;
+			gpios = <5 GPIO_ACTIVE_LOW>;
+			input;
+			line-name = "usb3-current-limit";
+		};
+
+		m2-devslp-hog {
+			gpio-hog;
+			gpios = <11 GPIO_ACTIVE_HIGH>;
+			output-low;
+			line-name = "m.2 devslp";
+		};
+	};
+
+	/* The MCP3021 supports standard and fast modes */
+	adc@4c {
+		compatible = "microchip,mcp3021";
+		reg = <0x4c>;
+	};
+
+	carrier_eeprom: eeprom@52 {
+		compatible = "atmel,24c02";
+		reg = <0x52>;
+		pagesize = <8>;
+	};
+};
+
+&cp0_i2c1 {
+	/*
+	 * Routed to SFP, M.2, mikrobus, and miniPCIe
+	 * SFP limits this to 100kHz, and requires an AT24C01A/02/04 with
+	 *  address pins tied low, which takes addresses 0x50 and 0x51.
+	 * Mikrobus doesn't specify beyond an I2C bus being present.
+	 * PCIe uses ARP to assign addresses, or 0x63-0x64.
+	 */
+	clock-frequency = <100000>;
+	pinctrl-0 = <&cp0_i2c1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+/* SRDS #5 - miniPCIe (CON3) */
+&cp0_pcie2 {
+	num-lanes = <1>;
+	phys = <&cp0_comphy5 2>;
+	/* dw-pcie inverts internally */
+	reset-gpios = <&expander0 1 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&cp0_pinctrl {
+	cp0_i2c1_pins: cp0-i2c1-pins {
+		marvell,pins = "mpp35", "mpp36";
+		marvell,function = "i2c1";
+	};
+
+	cp0_mmc0_pins: cp0-mmc0-pins {
+		marvell,pins = "mpp43", "mpp56", "mpp57", "mpp58",
+			       "mpp59", "mpp60", "mpp61";
+		marvell,function = "sdio";
+	};
+
+	mikro_spi_pins: cp0-spi1-cs1-pins {
+		marvell,pins = "mpp12";
+		marvell,function = "spi1";
+	};
+
+	mikro_uart_pins: cp0-uart-pins {
+		marvell,pins = "mpp2", "mpp3";
+		marvell,function = "uart1";
+	};
+
+	expander0_pins: cp0-expander0-pins {
+		marvell,pins = "mpp4";
+		marvell,function = "gpio";
+	};
+};
+
+/* SRDS #0 - SATA on M.2 connector */
+&cp0_sata0 {
+	phys = <&cp0_comphy0 1>;
+	status = "okay";
+
+	/* only port 1 is available */
+	/delete-node/ sata-port@0;
+};
+
+/* microSD */
+&cp0_sdhci0 {
+	pinctrl-0 = <&cp0_mmc0_pins>;
+	pinctrl-names = "default";
+	bus-width = <4>;
+	no-1-8-v;
+	status = "okay";
+};
+
+&cp0_spi1 {
+	/* CS1 for mikrobus */
+	pinctrl-0 = <&cp0_spi1_pins &mikro_spi_pins>;
+};
+
+/*
+ * SRDS #1 - USB-3.0 Host on Type-A connector
+ * USB-2.0 Host on mPCI-e connector (CON3)
+ */
+&cp0_usb3_0 {
+	phys = <&cp0_comphy1 0>, <&cp0_utmi0>;
+	phy-names = "comphy", "utmi";
+	vbus-supply = <&reg_usb3_vbus0>;
+	dr_mode = "host";
+	status = "okay";
+};
+
+&cp0_utmi {
+	status = "okay";
+};
+
+/* mikrobus uart */
+&cp0_uart0 {
+	pinctrl-0 = <&mikro_uart_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/marvell/cn9130-sr-som.dtsi b/arch/arm64/boot/dts/marvell/cn9130-sr-som.dtsi
new file mode 100644
index 000000000000..4676e3488f54
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9130-sr-som.dtsi
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2024 Josua Mayer <josua@solid-run.com>
+ *
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "SolidRun CN9130 SoM";
+	compatible = "solidrun,cn9130-sr-som", "marvell,cn9130";
+
+	aliases {
+		ethernet0 = &cp0_eth0;
+		ethernet1 = &cp0_eth1;
+		ethernet2 = &cp0_eth2;
+		i2c0 = &cp0_i2c0;
+		mmc0 = &ap_sdhci0;
+		rtc0 = &cp0_rtc;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	v_1_8: regulator-1-8 {
+		compatible = "regulator-fixed";
+		regulator-name = "1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	/* requires assembly of R9307 */
+	vhv: regulator-vhv-1-8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vhv-1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		pinctrl-0 = <&cp0_reg_vhv_pins>;
+		pinctrl-names = "default";
+		gpios = <&cp0_gpio2 9 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&ap_pinctrl {
+	ap_mmc0_pins: ap-mmc0-pins {
+		marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3", "mpp4", "mpp5",
+					   "mpp6", "mpp7", "mpp8", "mpp9", "mpp10", "mpp12";
+		marvell,function = "sdio";
+		/*
+		 * mpp12 is emmc reset, function should be sdio (hw_rst),
+		 * but pinctrl-mvebu does not support this.
+		 *
+		 * From pinctrl-mvebu.h:
+		 * "The name will be used to switch to this setting in DT description, e.g.
+		 * marvell,function = "uart2". subname is only for debugging purposes."
+		 */
+	};
+};
+
+&ap_sdhci0 {
+	bus-width = <8>;
+	pinctrl-0 = <&ap_mmc0_pins>;
+	pinctrl-names = "default";
+	vqmmc-supply = <&v_1_8>;
+	status = "okay";
+};
+
+&cp0_ethernet {
+	status = "okay";
+};
+
+/* for assembly with phy */
+&cp0_eth2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_eth2_pins>;
+	phy-mode = "rgmii-id";
+	phy = <&cp0_eth2_phy>;
+	status = "okay";
+};
+
+&cp0_i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_i2c0_pins>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	som_eeprom: eeprom@53 {
+		compatible = "atmel,24c02";
+		reg = <0x53>;
+		pagesize = <8>;
+	};
+};
+
+&cp0_mdio {
+	pinctrl-0 = <&cp0_mdio_pins>;
+	status = "okay";
+
+	/* assembly option */
+	cp0_eth2_phy: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
+
+&cp0_spi1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp0_spi1_pins>;
+	/* max speed limited by a mux */
+	spi-max-frequency = <1800000000>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		/* read command supports max. 50MHz */
+		spi-max-frequency = <50000000>;
+	};
+};
+
+&cp0_syscon0 {
+	cp0_pinctrl: pinctrl {
+		compatible = "marvell,cp115-standalone-pinctrl";
+
+		cp0_eth2_pins: cp0-ge2-rgmii-pins {
+			marvell,pins = "mpp44", "mpp45", "mpp46", "mpp47",
+				       "mpp48", "mpp49", "mpp50", "mpp51",
+				       "mpp52", "mpp53", "mpp54", "mpp55";
+			/* docs call it "ge2", but cp110-pinctrl "ge1" */
+			marvell,function = "ge1";
+		};
+
+		cp0_i2c0_pins: cp0-i2c0-pins {
+			marvell,pins = "mpp37", "mpp38";
+			marvell,function = "i2c0";
+		};
+
+		cp0_mdio_pins: cp0-mdio-pins {
+			marvell,pins = "mpp40", "mpp41";
+			marvell,function = "ge";
+		};
+
+		cp0_spi1_pins: cp0-spi1-pins {
+			marvell,pins = "mpp13", "mpp14", "mpp15", "mpp16";
+			marvell,function = "spi1";
+		};
+
+		cp0_reg_vhv_pins: cp0-reg-vhv-pins {
+			marvell,pins = "mpp41";
+			marvell,function = "gpio";
+		};
+	};
+};
+
+/* AP default console */
+&uart0 {
+	pinctrl-0 = <&uart0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};

-- 
2.35.3


