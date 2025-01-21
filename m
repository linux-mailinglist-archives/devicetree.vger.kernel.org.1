Return-Path: <devicetree+bounces-140012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7680AA17C07
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:41:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BA08188A45D
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 732F11E7C07;
	Tue, 21 Jan 2025 10:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="38zV7tiC"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2066.outbound.protection.outlook.com [40.107.220.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74AF1714A5;
	Tue, 21 Jan 2025 10:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.220.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737456103; cv=fail; b=HFpYu5Q0mUA4htnXn4uBtlPuA2p9cIBcHAbj9P8Duy5psug1vY7E0uBmBALVA1gdFd+wVav+ffI0285KUHUlcglJocz+KKOObUNDP42sOOohWnvT81hQ3Hlxbt4myX8FSon5Zmusj6NtekRT/rIJYMBMn+JtaO+rpDEa/74iKnQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737456103; c=relaxed/simple;
	bh=byvOxC5LKTL6WwZnCYA7MZXTouYjGNAmrUgeoPuP+GE=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=B8z+5Fl4GlaKh9P+Ji3E2N0cOWZtLCPCJO1m125sAIEoTLIpeaWd9oy6VOzEAagZEFMgvOpwgMOAWbqX9XrUIyt8Ln/Sg08GNvOBJG0FOUZ2qaS5DKmayMj92F46R2l+GeIr2Z9iakBBc3jyGSvI7UsZwXLq++sLCdbjCdi0fn0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=38zV7tiC; arc=fail smtp.client-ip=40.107.220.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pvfPpUDhPuLd3FwB/ffa02NUPXRaN6kPG+Vl8MVeQXgY0R6jeY/OQdHIFpQ2Aq67hs1OrvVjJE5OCqOdfTT1MyecUQ8KqtOEOJeDy/wNw1RsWZV6/Z5LWbpfz8cJllxt4k8x/dAVBtJm7U5JtdEQ0L7mPyrklcycLbOnAbhkfAtxCGcH11/+GlHg9QuM5aju0ec3k/WC7lOKg+USzdUO4NwjIwV+cbloG6hwahuI5Wh02+Q/hy/nKxIlrB9M18b1cvc9lUlNZ7R1zE+onk1Yse5pJWs91RTTArebNR8WnA00fV/W7QYYzCIBGKrlMnnvumUec0MK9WsV9Mil8t9xfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=byvOxC5LKTL6WwZnCYA7MZXTouYjGNAmrUgeoPuP+GE=;
 b=l5spDTs2zNxlIMAm2br/G8EK/V3410YrO5wmewUXBIKDpuoVUxXsAEi56sYoO1kFZ67S5ymJ63KQwwtQalb5WEgHV1gVHDppDnKlx0W++ZJ+7veEIB1rIuk2NqxIKS5PrHAb9fM2I2h5t5KSdQbZQlblbWCRC56zWMPVWoeOxC4wlcN94ldHI5EVhicLhEiA2CQMi+7p6HPpLfnYY2r6iDo05QaMmsFqKNYhjeLIg3nCHiDMo1bV1QF74Nmay9TBaSuufhnWQ/83befR7GYbR+HWzR2cu2Tu7UbarweouTgCFAaH3poosVgw6aI/p65o8dSH8An0Wos74zVqZWY5/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=byvOxC5LKTL6WwZnCYA7MZXTouYjGNAmrUgeoPuP+GE=;
 b=38zV7tiC2VK94Du/649CDtq8SmY1IE9KasO4ne6O5N5mLvFmVTwcFgjAjyyYxRLIqhmW9c0eEFcPC0ksWcAZbdYvmXJX5lVov0caHRDl50wQ/qEFmlQgBTfkzMBT6daxtzAHx60Mf1SQmO32RUQcUGcGVyBhMvKuWeQLCdPlkkMWPHIqPfZFfuWEXTcQfIwWhhOVA0StNa3o99Fv17LHNevlQXjl2x7UDOMgaOLSm5uTj/VSCEYPv0+Wfq1GPQKn5hBLVyKKYf6xbLUftUhDFIKe6DiyjNKhdK6OTdc42ZkBkYURJC9h1Y7nBcz+wL9vcIrnwZI7V6rV9nkPVoA6yw==
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by DM4PR11MB6166.namprd11.prod.outlook.com (2603:10b6:8:ad::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Tue, 21 Jan
 2025 10:41:37 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::5303:b2dc:d84b:f3b2]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::5303:b2dc:d84b:f3b2%7]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 10:41:37 +0000
From: <Varshini.Rajendran@microchip.com>
To: <claudiu.beznea@tuxon.dev>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <Nicolas.Ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v8 1/9] dt-bindings: atmel-ssc: add microchip,sam9x7-ssc
Thread-Topic: [PATCH v8 1/9] dt-bindings: atmel-ssc: add microchip,sam9x7-ssc
Thread-Index: AQHbGwyKxJPLlyQ67EOuJscS4ze2mbMhq/6A
Date: Tue, 21 Jan 2025 10:41:37 +0000
Message-ID: <7fafe18e-7779-4494-9288-34de82df8b8e@microchip.com>
References: <20241010120142.92057-1-varshini.rajendran@microchip.com>
 <20241010120345.92844-1-varshini.rajendran@microchip.com>
In-Reply-To: <20241010120345.92844-1-varshini.rajendran@microchip.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA0PR11MB4719:EE_|DM4PR11MB6166:EE_
x-ms-office365-filtering-correlation-id: 70ab17cd-2f09-4d2a-da00-08dd3a082ec2
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?ampqc2duWGN4Y2kxZE5YUkVNYXROOGVENG5DeEJuUk5OVUNING8rc0VLRmhM?=
 =?utf-8?B?Sm1oT3F6MjhlTmE5c2k4bVdITVZHVTV4T0lNYWMvb3JRck1uUHBkeGlwU3Vn?=
 =?utf-8?B?ZmtKUmg5N25ncjVhNFR4ODBnS05CMk1LQ1RHeFhDUnJ6MmRjN1lRMkhnSVR4?=
 =?utf-8?B?ZmlzV28xdkQ4bFI5THcrMjRJK0R6NFBwZTRDalZUWHl5elRkY2FvM2gwUjVI?=
 =?utf-8?B?MzFvMVdPdVNpTjNwUVhaYmVHWTAzREh2M2pVSG8rZDFVeEk2cGZWL1lYRGhw?=
 =?utf-8?B?RCtkaXl5Ujh1U1N4MUpqYTN6dG52NWZoZytWWTRpODhFdU1yR05lbWFNQ1JK?=
 =?utf-8?B?V0xsckZVOWNvSkYwRnRERmRpMU5ib21RTjhxdkxVUkkyeG81YWtFbnhlakJp?=
 =?utf-8?B?ZW1JWUxuQXM0YXBocHdzQ2NLN3pMSUlyVzFGYzFMd2RzaUswVzczOGw3WkYr?=
 =?utf-8?B?OTh6QW9teHp2a2hIMkE5K3hKcDcxclB4TWpRa1NpSHBLb05xRWlYdlU4WXhL?=
 =?utf-8?B?UFF1WW1qenM1ZnB4SHIxVDFsZDAzcGo5V1BSNHdxSnBlTHpWbHJzcjU5Qzc1?=
 =?utf-8?B?YzdacjhQemgrNExIbm1JQWsxQk1jeWFCWjNrei82UG5zSlp5dExWZ1YvS25E?=
 =?utf-8?B?WjhWWHZiUHBPNC8vTlN5QkdYQjM2SGdFdmhRMENWZXRuaGVnL2h1aktxOVFq?=
 =?utf-8?B?MTg4M0Z5U2pFS3NvUDAvazNMUHVmUzREMWFtdUg2dUlDVUxCWXg1L1kxTENT?=
 =?utf-8?B?cHh0dVFxZE54YlBub3gwYXluaGRVQmpSam14MFBwWkc4d25sZ3hUcEVHdHMz?=
 =?utf-8?B?dit5dVFXb0FBdnN0NVk5WlhkdVllRnNiSUFFSUxUeFcyM215ZWI1NDFyV21X?=
 =?utf-8?B?NURrN2EwZEFvZXpIVjdTZ2ZJQitZR2tJbDZLNVNVK2cyRHVkYlY5REpsbXhO?=
 =?utf-8?B?cHdSL0ZBbU9KLzFWY3pCTVZlYnV6ZHJYaWVLeFFNR1VNdHZQcytPWXdoaUk4?=
 =?utf-8?B?Znd2NTI5TSt6ZVFvZ0tUT1NTMm1Dc1RqRWxPWXdUS3ZvaWNVRUFSQXNlN0Ev?=
 =?utf-8?B?dGRpajlRNTVITGJvNVIxT3hhVFN4b1hBb0JYZXQ2dGlHTlVHbFVhNFNPOE94?=
 =?utf-8?B?Ujg1UVAvUjljd05IWDRKV0lxNjZNeTY1bTRRQVFjcDlsK3NXejIvQzBTMlZt?=
 =?utf-8?B?eHVtYlZEK21WeWZicWVoRTN5MWp6dDFMV2FlNVZHYnpKQ09TY2U0aWZvalRH?=
 =?utf-8?B?ZklGdFg3bU1rQW1ROUVsUE04ZkNremFoajZyZmVqM0NqODJtNFJWVjJXRDAw?=
 =?utf-8?B?dnhMdzVoR1lTOEpFcHVPR3FWSjBGTzBkTldEby8zZU13Ym50M3dVLytCNXd4?=
 =?utf-8?B?UXFlKys1cE1RdkNZdXRXdkV2akFtcW5jQ3RCZjFrMWpWc3VURUozazRTTW02?=
 =?utf-8?B?RCsyRFJrNUJiMDhuUzhUQm9SQXdLNmlwdEFQVG5oUUV3RUtUOW1IbXZjVXhL?=
 =?utf-8?B?NEU5SGRJN2NvdmNLNC9iZUwyUFdkRXZEbUh1WUMyR1hRT1pJZGUyMm9VZCtP?=
 =?utf-8?B?YzdYaDZsM1dJNHhUZjFvWSt6bnZmMlNEZktpQzQvbmlNYVB0cElWeExDaHFs?=
 =?utf-8?B?aWFpKzh4NnhxQ2ZDYXpwUVJ6WC9RZVlsTDVMdURIL3NCdVllQnZ5bGZpSjVr?=
 =?utf-8?B?UVFMVTZKbUh2RDl6a1o1bWh4SThKNWRwQlBmdEViaVRzeGtVcHRySVpqMCty?=
 =?utf-8?B?NzloN3Ixc0IyQWNXenhtNmZTY1Nid3M5em1yZmhrbmdSZVphM0ZNbEY4R2l0?=
 =?utf-8?B?WEdHKzlxVG5DRTJRMmJzVC9GMUdFbmdsazBoUE5LM3MzMXR0U1FlMHllMmUv?=
 =?utf-8?B?Nm5FRXFra1hzU0JDZ244a2d3Ui9pVStCRkEzSDRmVmdtM0VuUHpiR1IwbXR4?=
 =?utf-8?Q?BMLfuUpPVLS/+NesyMSlQIlTxKGwnw5S?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?SERZL2M2c0FBdFVrTWlTNHUxTTRINUJsQ1NTSVRyUytWMkI4YW1FNWdMcEdi?=
 =?utf-8?B?bHNlZDV2WncwYjlaQnBXVCt6c3VZOUgyUzQyeEVqTjVCZHBGbURLMkJFQ3J1?=
 =?utf-8?B?TFVTTjBuMUFyWmtWZXd1QTlINVNJR2pXRW1ZeVRac0ZaTmRodnNOSVVOTEhz?=
 =?utf-8?B?aS80MFBWb24rbzJZcXhCbzVNUXlYVnJuenFyd0JlQXNZT1dXQTVnTm5kdDAw?=
 =?utf-8?B?bWk2eGVEenV0bE5IMzIrUTRFUjhxMm9RMW00Z1dnN0N2M1E2YUJPaHZVd3p6?=
 =?utf-8?B?a1B5VDEwd3g0TG5KK3J3UUNEZ0tpazJZUDNXZnY2V1VOTzVtTnBlT0VhQ1Va?=
 =?utf-8?B?cUJoYnVSRXFRLzMrK1Nma045MDd5eDhZamVmbVdaQ2hRcFIzR0hnK0ZLbnVX?=
 =?utf-8?B?QTN3NjZYWjhMQnZLM3hzeEY0Nyt2Q0ZEQ0QyRC9scEQ1VW0wNENlaDMyYlhI?=
 =?utf-8?B?L0tPM2M0SGlvcGYwRW82MXlvOFZ0cFlMUmJtckdNV2lKNUFPbklNYUZZZmZK?=
 =?utf-8?B?Rk1ERkxlRWZYc1E0cGFUQ083T2QxNFJRNVU2dkFGNUIxb0ZnYWRBVitraVhC?=
 =?utf-8?B?WndhZkhUeE9IUDRtQmxRQ0twMzQzTCtQM2tiRldVdVN1akNHeDFlckpmQlF5?=
 =?utf-8?B?UHNYVEoxNnlPaFhib3FZdXhkc0xoZm9zQjE5YURYZ3hnTy9rN1d1cHNMbStj?=
 =?utf-8?B?aTJjV3dteVY5c0twd3YzZm9zbWVtdWw0NERQaU5WVHNtSHptYlNheTh4c2Jl?=
 =?utf-8?B?QU5GV1FDZ1diYlVIS0xJSkJZbEp0b3BuVU1LeDYzQ0ZxbHlZZjFjRm9lbE1Z?=
 =?utf-8?B?T0hraDZ5SXFlcU5QRXU4MDVsOUMwVG51Z2tRRXdxNnZrak1IaWZSN0RlTlk2?=
 =?utf-8?B?MW5vWmFGR3A5MTIwdjZXN0hTRmIzZXdVY21SVm0wdEgxYTA1TVZzVmtPREpn?=
 =?utf-8?B?MmNKREE3TCt5SmJXV0hkc2FjMFU2OC9BbGJKOU90cTRYV21mMHR0a0c4Y25O?=
 =?utf-8?B?bFV2ZXBjb2QwdTM2VmJDamQveUFYNnBUTjdtQVZ5Z2UyUmpzTEZIQ0M4RnNW?=
 =?utf-8?B?QjBvYXEvcVdnYTcwRHNaMXJsdGw2ejFIRXRTZVJBUEFTcHpVWWVGRW1DR2Fm?=
 =?utf-8?B?bDBseWtsQlMwd1hOMDBNQUwxdkkvMUFXc1BWaHlIa2dyRmcwZkxwOTZ1OHFt?=
 =?utf-8?B?eDc3VTNDajNWK0J6eElSaFJmU21GYjRyNFhrNnRJQmpUWkxETms2UDFkcGRV?=
 =?utf-8?B?bGIxREhmVjRGYWY0SkJYRWUrVlRKY1JxTzlmRnVsREUzQXBwUnlDRzZXeURF?=
 =?utf-8?B?Q2xPSVZtci9lU0F6V1gyL2k5M0tDWjBuVVdNUlUxM3FUQ2ZDQW5Sa0svZC9V?=
 =?utf-8?B?MGhvQ3BmY2l3UHRsQnI1VFlWNkVxMjNYMmFSRW40bGRYeWZmaVBiM2NRYVA5?=
 =?utf-8?B?dWFPNlN0VUlOczBPcXVpbTNaeXFid3RPVzJaSFRsTnl0QzNhQWc2YitHakE1?=
 =?utf-8?B?ak5LUFZhZHVUeE04QlhTRTlrV3pzdjNsbTUvZm9EWjVuMnJKb1lIcXZqdWQz?=
 =?utf-8?B?V1RyNnE0ampnejMzam5qTXBjY3QwNklrcGNyZy9YRGZQempsRjF1c0ZRSEVB?=
 =?utf-8?B?MHhsV3FHcEh0cTBGVXliOGVFTFF6MnBsQS9VUWpVNHN1YmVoWnhGdTVoUVRG?=
 =?utf-8?B?N05YTXYwSnoyR0xrVlFnRE1IZy9GT2ZzbDF4WkVwSzlIR3ROcGFFdm5saklE?=
 =?utf-8?B?ZVRBMk10ajltOEZnSHJDYXlDYzF4K20xTGVZTHM5cE1vWklGNVVwaDBLeWRz?=
 =?utf-8?B?eFBITU1DQ1JPa2NmRU9GdG1SYi9FQmFWYUYrVDlkN1NjeWVuTGJCZndhZVhD?=
 =?utf-8?B?d3E3ZFl4RTEweEVmWW1Dc0dKR0tDRmFDV3NoVXJGTVdoWTVYbkRidHg4OTBZ?=
 =?utf-8?B?eUZ3SnJYU2xiaFEvQWNnZDVCMDkzWUdwNzV0a0czVGErazZCa3NLU29yTDlP?=
 =?utf-8?B?KzNDS3llVDJKdW4vY0NGSFNhMms2NW8zK0ovR2E3Z205b0ZvUFFpUUZEYXhD?=
 =?utf-8?B?cEZOL21wS2tDRXUyZDBFa0VVMkxhZmFaSmtkRk9FVXlIS3NJWkJ0b1JiVElZ?=
 =?utf-8?B?b2N1RkdmNzRhQjJrRVZRZlNESWtvVFNkMkhUTnpCOWlVbmFNOVA4ZXc3YjBm?=
 =?utf-8?B?Mnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E75132F6C3658D408650E4CFB05E7D2C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: microchip.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70ab17cd-2f09-4d2a-da00-08dd3a082ec2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2025 10:41:37.4743
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gg1TvEQbCAnaP9q3o7zhy50uDTj2XoiVQXH1x6AqPs6egRYrkYtAH6otNvRrZHbdtkFN38IcPjIx5KbnlGqo+wKKQx2BpfkSK7VcH/l69RwuXEqTakHgfSriGUhmKKmF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6166

SGksDQoNCkEgZ2VudGxlIHJlbWluZGVyIHRvIG1lcmdlIHRoaXMgcGF0Y2guIEl0IGhhcyBiZWVu
IGxlZnQgb3V0IHdoaWxlIHRoZSANCm90aGVyIHBhdGNoZXMgaW4gdGhlIHNlcmllcyBoYXZlIGJl
ZW4gbWVyZ2VkLiBQbGVhc2UgZG8gdGhlIG5lZWRmdWwuDQoNCk9uIDEwLzEwLzI0IDU6MzMgcG0s
IFZhcnNoaW5pIFJhamVuZHJhbiB3cm90ZToNCj4gQWRkIG1pY3JvY2hpcCxzYW05eDctc3NjIHRv
IERUIGJpbmRpbmdzIGRvY3VtZW50YXRpb24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWYXJzaGlu
aSBSYWplbmRyYW4gPHZhcnNoaW5pLnJhamVuZHJhbkBtaWNyb2NoaXAuY29tPg0KPiBBY2tlZC1i
eTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPg0K
PiAtLS0NCj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWlzYy9hdG1lbC1z
c2MudHh0IHwgMSArDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21pc2MvYXRtZWwt
c3NjLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9taXNjL2F0bWVsLXNz
Yy50eHQNCj4gaW5kZXggZjlmYjQxMjY0MmZlLi44OTQ4NzU4MjZkZTkgMTAwNjQ0DQo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9taXNjL2F0bWVsLXNzYy50eHQNCj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21pc2MvYXRtZWwtc3NjLnR4
dA0KPiBAQCAtMiw2ICsyLDcgQEANCj4gICANCj4gICBSZXF1aXJlZCBwcm9wZXJ0aWVzOg0KPiAg
IC0gY29tcGF0aWJsZTogImF0bWVsLGF0OTFybTkyMDAtc3NjIiBvciAiYXRtZWwsYXQ5MXNhbTln
NDUtc3NjIg0KPiArCSAgICAgICBvciAibWljcm9jaGlwLHNhbTl4Ny1zc2MiLCAiYXRtZWwsYXQ5
MXNhbTlnNDUtc3NjIg0KPiAgIAktIGF0bWVsLGF0OTFybTkyMDAtc3NjOiBzdXBwb3J0IHBkYyB0
cmFuc2Zlcg0KPiAgIAktIGF0bWVsLGF0OTFzYW05ZzQ1LXNzYzogc3VwcG9ydCBkbWEgdHJhbnNm
ZXINCj4gICAtIHJlZzogU2hvdWxkIGNvbnRhaW4gU1NDIHJlZ2lzdGVycyBsb2NhdGlvbiBhbmQg
bGVuZ3RoDQoNCi0tIA0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KVmFyc2hpbmkgUmFqZW5kcmFuLg0K
DQo=

