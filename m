Return-Path: <devicetree+bounces-266156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SD8qK+hrlGmqDgIAu9opvQ
	(envelope-from <devicetree+bounces-266156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:23:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 075A314C865
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:23:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6884C300D166
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37BC3644BF;
	Tue, 17 Feb 2026 13:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b="KQ5rjvXM"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013000.outbound.protection.outlook.com [40.107.162.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F14361DD4;
	Tue, 17 Feb 2026 13:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.0
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771334629; cv=fail; b=Mj9Nzs0SeH+2vDOJZNQ3sntI4XJcnWPV4vHjhbB0yzd5XPDODDhelWhh5jJlBoiLNkJJY5WIdcYnVIMDxEx/qWezI0kycC9TVLGDCFufB6RDxCTSAhnZeWl13LxxPvC1NLWit75rPzNxCtsDLXoSV/Nty2TVXkY8VvUKwtpqb+g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771334629; c=relaxed/simple;
	bh=xYY3M31L89xMgtMv708njcEOcjOwqZKWYXdAflb7qDQ=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=eEUHVttQ9IWTn6lvP/ycPnZH0A7p4U4AXFBOzdZgwxwSq/GJZzaZnCFC2EA1JZiCllJsVlYCBqETZmXlMyehx+HRUAgucbQ1T/nvbJQGzGydWfELB3wXl5I1TB3pH5wmoWCNOj04NE9Y6ChJlzwf6Ftn3Ajo41nmzHce+Gxn2ZE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b=KQ5rjvXM; arc=fail smtp.client-ip=40.107.162.0
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=siemens.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YFwVMIJDITLw3rH8wv+sj2BLhonduErhEvPc/ycbsC6pQh2tM+D5quCfFkCgl68B5x6PDvxdQHG33BGh2z8y4GqJD4XUEP+56j3EVPKsWFgVwW0hSFA64Ha4o3z4BCcXhdGDbbYJOlntxGTbobyssh78+NT97mDDpRx4aG23PrzsZwiQac7R/r55QzNiyFdmfVm5XmbS2ec359kR0DFdo4Fjyg93Z1RrdXkJVcbSgCnLZdVqvc7ijT5CM9BPkWFdjyqkp35INeXxJlsC+87nMvm/jhrEAluo3MCZbOayj1gBlO5sazpH22YlPqYPJMMa+6/yW5XVaRsWoaHz1whBzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xYY3M31L89xMgtMv708njcEOcjOwqZKWYXdAflb7qDQ=;
 b=aEEfnEEnj/wPc9I4cu4qb2gxvv0wJPXdJ9rOkL9PXHHZP89L4wPMcucUUi0CYyp9rEa9y5RGvmJhUl7v2Sf/9Gy+BHFvOcQswPeatFjFSIaQKO9tU1DAM364eTZ1ZuHZLXhA3xQ4cld83pg1FUVkyXYoetuV6yoO2jOWVuQjoVOXMbgWPXNbIHZvGCFafQhJNPX+8tFFIwAxhWkGgQ7c8eAgqYOlcHEGBjGBgd8YFQcyeqzWeUu5LyNiv+TCrwMrNQKEWiwzH4xEruCsUk+R8gXKmIxlv8z5ug/QvGeJ/C8gSXQTjMg+BsB07E+cGfo3gzv6GNtj4I51SP/JS7AXfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xYY3M31L89xMgtMv708njcEOcjOwqZKWYXdAflb7qDQ=;
 b=KQ5rjvXMkRts1STU22/X4oZMKUe/c1sPiY/o4rH6tO/SwzMkNCJou0R8a3J6V+JQU//gAGMIENwxv/j7mmdMOMdjPFHYrTDIxfZ3qTsM5Gj/UfuAE1AjcUCjqoSRgDa+kB+GIXpXlq8alWGBhcsuv9mQeVNpARbCN73ag0/o6EoyR5GnD+gpgZ9RLw6t3hDTshhUs1tyL/s1+Xjkw8Olrnop+RQdyW4Ye+uMfaqoUT15greRGro1nNFqhNRuNc8u/lpW1i+0L8LBjAgCEzWYhkKAsSTGsP/8HzJIsNs/vuBBcez+rrZuCNlosk8/MrSNFaR/ajCKzdF4t28qUQI0AA==
Received: from AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5b6::22)
 by PA2PR10MB9114.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:41c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 13:23:45 +0000
Received: from AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9126:d21d:31c4:1b9f]) by AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9126:d21d:31c4:1b9f%5]) with mapi id 15.20.9632.010; Tue, 17 Feb 2026
 13:23:45 +0000
From: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>
To: "jm@ti.com" <jm@ti.com>, "msp@baylibre.com" <msp@baylibre.com>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt Trigger
Thread-Topic: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt
 Trigger
Thread-Index: AQHcoAz+v8NLvcx+EE++zWoSs7wclLWG4SyA
Date: Tue, 17 Feb 2026 13:23:45 +0000
Message-ID: <615c56c4564b38fe82585e9873949b538f24ae7b.camel@siemens.com>
References:
 <20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
		 <c47697b4-6ebb-4af9-be96-c964d990835d@ti.com>
		 <DFO764ES0FNP.1SUQK9R0EUUDQ@baylibre.com>
		 <1a91fd40-e814-4b4c-8914-d8f0c4768e07@ti.com>
		 <DG59D7WGM35A.1WNIIMNCQ8U3C@baylibre.com>
		 <7ae7f6a1-0ee1-4d56-b1d0-f038a7d22b4c@ti.com>
	 <b649669afe4e2c829389a6bedabe47446d2f3d2b.camel@siemens.com>
In-Reply-To: <b649669afe4e2c829389a6bedabe47446d2f3d2b.camel@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.54.3 (3.54.3-2.fc41) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR10MB6867:EE_|PA2PR10MB9114:EE_
x-ms-office365-filtering-correlation-id: 0452579e-8067-4757-0d96-08de6e27c6ca
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?RURXMmtYVTFGamU1ZWUrY2xIa0YxVVpNMGpqUExVSE43bHdlTHMycFpiQnc5?=
 =?utf-8?B?YlRSZ1FkUmZUMk9XQTlhejBYYW5lYWd4TEI2TGJQZGgzOVZ1enh0dC9uUXBM?=
 =?utf-8?B?WUFkamJMRVMwQ3pkdVFDQ1I0N1BQTTd4bTNqQ1o3aG9jN0FrOTFXczFCSlJ0?=
 =?utf-8?B?blN2dkZndkxOdEcxK3UveW1vOHpMWG9zQ2p6cGpmUnJuR09JUDdyZTN6dVJ1?=
 =?utf-8?B?TTVSejlBZjNjb0lWZi94UWx5Wi9DL1ZSZHFaME16VnZUODcxVkp1WlE0NGM2?=
 =?utf-8?B?clFrMUt4bDg0SE9pODFOdys3THF0OU5TSnpUdkRvSkZYR1liaXQ3TzBVQWpO?=
 =?utf-8?B?L3QxbVl1Qnk1UEE2dGxtZzZ5VjBXR3ZEODlKQXh3UHZFanMyeVZxN2E4Nm8y?=
 =?utf-8?B?STU4RmhFY1hQTEx1RUUvVzZoQWd2ZVUzNHNubzhabkdJa0tYTWZJakJuK0k0?=
 =?utf-8?B?QWNJNVlnRFdiZmlwWEhDUzlzbjBUQ3FYUHc5N0NtMmN5allnSzdVYmR4Zkha?=
 =?utf-8?B?bDZRSmxHL0tUZTc3RmZqSzZDdmQ2MDFuMWt3QitLU0ozcVdwTDg3TFBiVFFX?=
 =?utf-8?B?MWZKREQ1eGM5M0h6R2wyV1FiWnplb3FrdSs4Z2lFYzBRZXp0bkt3VVN3UVpa?=
 =?utf-8?B?VmJDbDN1eno5dkFpMDlQOFZRdHdOVzFzdG9oNitmYUlSenVpdFV3N09ubStC?=
 =?utf-8?B?Ym9ORzRFS2oweG1LK3hGcFMyM1hFdVZwbXREWmpTS3VEV3NhdjhyUUdrNWpm?=
 =?utf-8?B?Q1NIbitYcHE4Z0N4RUtJa01Gd2w5aXRLOEtNanBGcFpjQzRaZ01mbkM5L1Vy?=
 =?utf-8?B?bVI2T3dRekVlblZOcFo3ZnoyZnB4SVFsVVRsTmRMRVJFSTdsdWJpWW0zVXJo?=
 =?utf-8?B?VHdIeXlMbE55RUdPRktFTnZ3NjZiUlJBaVUzeDB2RFdIVU9nck4wZUxLcjVG?=
 =?utf-8?B?SFhKYkNGRXUvRzgvMVZPL3BEcUE2M1JZTXcxOEcwOStFVWFOSzd0OHR1U04w?=
 =?utf-8?B?K3JqeGJxa3pXbGFrck9lbHdRSkxraTloTXNGUGdEcW95WmtnSjNQMUh6QmEx?=
 =?utf-8?B?Q0hzZlJCZnNvcmFwUmIxZ2ZTZ1dhSkdWZDlkRnYvV29aUFNtT2tMVGxkU29X?=
 =?utf-8?B?ZjAzQlFEQ2l4NE1tVEgvU1RvODBoZlo2aVV5UTZlR0orR0t0bk90QjA2QnEr?=
 =?utf-8?B?SHVZVWUwQXRTMFE5eE9CRElmZDQyenRQamFudElNQzlxNHdaTEhjTzVmdXV2?=
 =?utf-8?B?amxPSFpsemF3bDFLM2ZKUTYveGQ3VkwwVVJYWWNrQkt6b3N0T2phQmdPbDlC?=
 =?utf-8?B?UE1Za20wVE1pOEl1aFkxeWY0YnE5UTNTQjdIRm52d3dvVkM3di9HMHQyeWxG?=
 =?utf-8?B?aXFQT0UvMG1EMlZxNUZEdTFuVzdhNnozZS9xTmlpUlVUcmNEYkdyMnF1eHQ2?=
 =?utf-8?B?RnAvS2dFdkdXYmxsWDdta3o1eG5UTGs2M21teGFpSFl1NkJJSytxOERNUEx1?=
 =?utf-8?B?WVBWUkIvUGl4S1F5bktndDNLT3NEelg5UTBXdmkrNXRTaC9HRlNEL0E3cDM3?=
 =?utf-8?B?T1NFVXA0WWMrNXFqTWpRekZtZEF2MnQybERlRkNnVzd5bjdDWDk4NWcycGZB?=
 =?utf-8?B?SGRYUkpMTnFEQys0b01KN0MrbGlMc3NOVVZsQU5UQmJlZ2VibDE2bjZBQXFE?=
 =?utf-8?B?eFV2cjRmZVRsUm1MTGVtOGtBaEJWcEhySDhsdmpNd0paSE9XRFVsSnh3RW0r?=
 =?utf-8?B?amk0eldYQlhrMjNhR3JJTy9uS1R6RHc0WGlGaFlRMXFRYW1uT1BHOTRHODJk?=
 =?utf-8?B?SDRLY3gzaTNZd3JHbHc5U0xTUUhXUldwc3pna0pnSVZhYkNPVHZLM213MDV2?=
 =?utf-8?B?N0Zyc0ZhNUhIeFFDU0cwZGJ0ajNLTy9RWnFEUWh3V1VKL1hFdUxjZVhyaU5n?=
 =?utf-8?B?b3R0RmV2QndOQlRZWGNpMTV2ejlZV2cxc3RnMDdnUzZzb0ZMdURFRVVVaUxz?=
 =?utf-8?B?Q2tWVkFJQWdGYjRMdFVxclk0MStZdndKUzBIZ21JdU55OVowSjBoMXRrOEFp?=
 =?utf-8?B?NVh6RTFQaGxzOHFLcXBaek1sVzR3NXNMWFE4V2tvNzFLZTE3a2VJTDZPbHZk?=
 =?utf-8?Q?WHFI=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?bU1pUCt5M1lZMVVCZDAwT3d4ek9EOXd5SmNmQTkwL3lLMlI4WkhmbVcvVThw?=
 =?utf-8?B?QnhRN1BoN094RkVJeThTUkZkVnpUNXN3NWR1dTNGU0xUcytYNlI2UjFzNzc0?=
 =?utf-8?B?Um9EQzM2MjhHbjlHZTc4MXd0ZDkySWFsMmFZZGtTVXVzaUJtQTlvNCtVN0xY?=
 =?utf-8?B?OVNLelFjTnFDemRNM25KV2YvWGFmd3hadlZUTzBITlQ4Wjc3dFdmWVZnVW51?=
 =?utf-8?B?aXZvV3FLb1FqWGpQN1ZpbFVQSXJQcFVuT1BVa211dTVaMnl1T3pLWkVsYkVM?=
 =?utf-8?B?WVR4WUxFLysvcUExckFZdkZDTDlUVnNuUFNKOHdoVGNIdHpKRmRlV29lYlBr?=
 =?utf-8?B?QlR3THNpQWFLa1U4aXVSRkVDVHViNHMwOFR0UmJ0aWswa2I3UEZ6Z053Umpx?=
 =?utf-8?B?clBHY040VFhTUGZERGdLTm9TblZQeGpxV1g0T3pHVGVFR29keDNYVGI2Yng5?=
 =?utf-8?B?UDBETnpKY2RjRU9vZFBheWVUYm1paHdGZ3MzanQ2RlFzVFhkS1gzcElYUklC?=
 =?utf-8?B?WTM4NEdvUkl6dUwwWFZiUjdOVGhvenNYeFlwYmR5ZVdlci9DUXhlT1Zyd0JK?=
 =?utf-8?B?ZHU0eHQ1WVYwcjFpMm9hcjlEZnNKQXBNWDJ6THN3aENwTXJHUlBwWVpHakVD?=
 =?utf-8?B?aHZkQThDSDFyUkdmb2tMa3VodzU5clVNTlZYSGJMNXhSUDhlbXI0ZDNlL3Ir?=
 =?utf-8?B?UUdhVUxHeHRBMEVTcW0vSjlRbjEzWmNyM0FrZ2plZUdMUVZsS1dqTE1ZOGRk?=
 =?utf-8?B?SnhNUzhHRGZ2c3NTc2NUNm9aRlVkbVZYbzZBN0loS21KVm42QkFxTDByWHdJ?=
 =?utf-8?B?ZW41TkJMNnpVYlBCUmZZazJqbmRIRitUdTYxSVNmUHVTTDY2MXB3eEF1SVJD?=
 =?utf-8?B?NjRCbnIvNHprNERRYTY1clovZTFRQzdzcS91V1ZiU25ESTNxNzdYaEU1OFcx?=
 =?utf-8?B?dGlxTkg4b3B6YVFRMERlbHBiZENCWjVQa3Z5YnFDT1h1aTNKSmY3eXp6K1Zw?=
 =?utf-8?B?MUx2Umdjby9QYVdDUU9KZ3hXM3o1UkxScGd2aTY4UURVYkR6Vkk2ODRlSk5y?=
 =?utf-8?B?OVVqYTAyR0Y0TUJWMncyL1RLVDVpM0Z4SEd2L3BoS280UndwL3hCTUo5L0dh?=
 =?utf-8?B?TE1UNVNWem16RFJtQzRlSDg1alBQb3RuMTVjMjMxN2RsTjk5SWFLdEhrVFlu?=
 =?utf-8?B?SUZQTXlDbGs4c0Rua1NtUS8wRFdjV3lWajVyMmh3bEZFL1lUZmtBTlZIT3N3?=
 =?utf-8?B?b3pLdGpDYyt4THg0eXR3ZUFodXpKYzVaTG11RkVkV1p6OXRZS2hZNWtXNG0v?=
 =?utf-8?B?ZWZTOEJnWTEvMG5TU3lTMnRuVGExY3V2encrc1kwM1AycUpqdGJXamU0TkR3?=
 =?utf-8?B?WElQTTZqbVZ0YmxDZjdoQXFaNzhDaENaYXhpUlh4RHZYOUhDOHhmdW5uN1ZH?=
 =?utf-8?B?Z0JMVHZON0t3UXR4OURLUjlCRXFtanhQUCthN2VtZCtIalJ5RGI3L2R6NjVq?=
 =?utf-8?B?bTErb1JJdjk5azk4TU9uV3pPNjZQR0YyUFRSMXdnSFBBdGFicjNsdURyY3Q1?=
 =?utf-8?B?STArdTR5MVJyTDE0RjBlbGE3UzhTaUtWSXduMlRib3dUVHlOV2tuK3FXcmtM?=
 =?utf-8?B?aDZBOXdmaUcyRHRMUlE2ZUgzTmtzTExxWnd2SXBZYkZCS2xWMEZDNWhkSHVz?=
 =?utf-8?B?cjd2Vlg1c1RIYyt5a2dySnJ2QmJJWExDcWxmMDNzK0Y5NkcvUjRqd1FIR05H?=
 =?utf-8?B?OTJpMUlpejFnUTQrRnRKTzVEWVN6dUFLbnk5dlQ2cmFveTVTSmorRFRoNGUz?=
 =?utf-8?B?K2lpZk1ub1NneUxMaHAvUWprZElaZUMzeWFtclNpeXhTQlZHa2UyQ3paSktG?=
 =?utf-8?B?U3B5MlBJWEJNRkJWMlAzNG5jcnNzUytRZmZuRVA1M2JFbFYyZ01URy9OeUlH?=
 =?utf-8?B?OVFQbkx3UFhpNkVrTmpQRC94NDdpaTRPQnFoYnczdDM3U1VTSG1qNmlBLzJ2?=
 =?utf-8?B?dm1IMHBtTEdJKzY3NWZrUnF6YVJPNEQ4Y3BnOGdtZjM5bHZuV0VwUE9vVk5h?=
 =?utf-8?B?UmVEZzltMGRicFRUVTJvT3ZPUTUyMDZwMjltVGlWNXFDUm12Y1VUbTNVUW5C?=
 =?utf-8?B?dkx3TDQ0Nk54QWMwanR2cEw1ZVVHbVBYU0pNTmJaVXpTYjZ3V0ZNejZqM3hh?=
 =?utf-8?B?UmJaS2N2M3dFU1FxeG9XVks2MmlqSkN0akt6dENSL0E5MlBla0FGUGc0SDd1?=
 =?utf-8?B?ZGJPWTJrQUJEL0lYcGZPaHZ6ZnZMNzRvT29lbk5rcTlPZE4zSHFjQnVJaTk3?=
 =?utf-8?B?bVp1VGlVc3BUMVgvYUozL0owNFc1LzZyOFRDRmdpUjdVOEF6NHhwMUdKRUFi?=
 =?utf-8?Q?RVKgWF1eTmUecsB0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <03C82657BC4AFE4FA545FA2E766EBA88@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0452579e-8067-4757-0d96-08de6e27c6ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2026 13:23:45.0549
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m8ZplcjOTwsqayw/O922plxyK4eDya74Kl7n2yX0Lq3cUgwYbcV6geYKDPm0lQpwIcflR0CX9+ctQ46OHyfPRzYdBHFIXAzPy07ylFWpCn8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR10MB9114
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.94 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[siemens.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[siemens.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266156-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	DKIM_TRACE(0.00)[siemens.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.sverdlin@siemens.com,devicetree@vger.kernel.org];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[siemens.com:mid,siemens.com:url,siemens.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 075A314C865
X-Rspamd-Action: no action

T24gVHVlLCAyMDI2LTAyLTE3IGF0IDEzOjU3ICswMTAwLCBBbGV4YW5kZXIgU3ZlcmRsaW4gd3Jv
dGU6DQo+ID4gPiA+ID4gPiBDYW4geW91IHBsZWFzZSBydW4gYSBxdWljayB0YXAgc3dlZXAgb24g
TU1DMSBhbmQgTU1DMCBpbnRlcmZhY2VzIGxpa2UNCj4gPiA+ID4gPiA+IHNvPyBodHRwczovL2dp
c3QuZ2l0aHViLmNvbS9qbWVudGkvZjRhNzNhODMyM2U0NGJmNzE3YzZkMmM1MjhjNDk5Y2ENCj4g
PiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVGhpcyB3aWxsIGdpdmUgbWUgYW4gaWRlYSBpZiB3aGV0
aGVyIHdlIHNob3VsZCBiZSB0YWxraW5nIGFib3V0DQo+ID4gPiA+ID4gPiByZXZpc2l0aW5nIGNo
YXJhY3Rlcml6YXRpb24gd2l0aCBTVF9FTkE9MS4NCj4gDQo+IEkgd2FudGVkIHRvIGFwcGx5IHlv
dXIgcGF0Y2ggYW5kIHRlc3Qgb24gb3VyIEhXLCBidXQgSSBoYXZlIHNvbWUgZG91YnRzLCBpZg0K
PiB0aGUgcGF0Y2ggbWF5YmUgbWlzc2luZyBzb21ldGhpbmc6DQo+IA0KPiAtIGFtNjU0X3NkaGNp
X3dyaXRlX290YXBkbHkoKSB0dXJucyBvdXQgdG8gYmUgdW51c2VkIGluIGFueSB1cHN0cmVhbSBV
LUJvb3QgdmVyc2lvbg0KPiAtIG5ldyAib21hcCIgdmFyaWFibGUgaW4gYW02NTRfc2RoY2lfZXhl
Y3V0ZV90dW5pbmcoKSBpcyBpbiBmYWN0IHVudXNlZCBhcyB3ZWxsDQoNCmFuZA0KDQp8IC9ob21l
L3N2ZXJkbGluL3UtYm9vdC9kcml2ZXJzL21tYy9hbTY1NF9zZGhjaS5jOiBJbiBmdW5jdGlvbiAn
ajcyMWVfNGJpdF9zZGhjaV9zZXRfaW9zX3Bvc3QnOg0KfCAvaG9tZS9zdmVyZGxpbi91LWJvb3Qv
ZHJpdmVycy9tbWMvYW02NTRfc2RoY2kuYzo1OTg6OTogZXJyb3I6ICdpdGFwX2RlbF9zZWwnIGlz
IHVzZWQgdW5pbml0aWFsaXplZCBbLVdlcnJvcj11bmluaXRpYWxpemVkXQ0KfCAgIDU5OCB8ICAg
ICAgICAgcHJpbnRmKCJqNzIxZV80Yml0X3NkaGNpX3NldF9pb3NfcG9zdCwgbW9kZT0lZCwgb3Rh
cD0lZCwgaXRhcD0lZFxuIiwgbW9kZSwgb3RhcF9kZWxfc2VsLCBpdGFwX2RlbF9zZWwpOw0KfCAg
ICAgICB8ICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+DQp8IC9ob21lL3N2ZXJkbGluL3UtYm9vdC9kcml2ZXJzL21tYy9hbTY1NF9zZGhjaS5jOjU5
NDoxMzogbm90ZTogJ2l0YXBfZGVsX3NlbCcgd2FzIGRlY2xhcmVkIGhlcmUNCnwgICA1OTQgfCAg
ICAgICAgIHUzMiBpdGFwX2RlbF9zZWw7DQp8ICAgICAgIHwgICAgICAgICAgICAgXn5+fn5+fn5+
fn5+DQoNCg0Kc28gSSdtIG5vdCBzdXJlIHJlZ2FyZGluZyB0aGUgcHJldmlvdXMgdGVzdCByZXN1
bHRzIGF0IGFsbCBhbnkgbG9uZ2VyLi4uDQoNCi0tIA0KQWxleGFuZGVyIFN2ZXJkbGluDQpTaWVt
ZW5zIEFHDQp3d3cuc2llbWVucy5jb20NCg==

