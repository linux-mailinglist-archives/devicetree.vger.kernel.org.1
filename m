Return-Path: <devicetree+bounces-140013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F34A17C0A
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:42:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD7F07A1C09
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7981EE7CB;
	Tue, 21 Jan 2025 10:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="QBF+kFP5"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2059.outbound.protection.outlook.com [40.107.92.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B39E1714A5;
	Tue, 21 Jan 2025 10:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.92.59
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737456119; cv=fail; b=oPfZZ3KM/Ei4Fr53awaNF4nlyPT8GoE/1neqXwFwvOiqB48f+QnH7UhL3G9cBjYzkY3K3DcJAt0LiAszeJO7JtMKollu78vHBXVTUZSW/wAzjyLuiFwaFA4V/QQMhwFsYWKYpmExyYVXPcqYW6LHB3eNJ3f0Ob7yRbZ3F8ou/dA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737456119; c=relaxed/simple;
	bh=RuWgQnZFzRRpWCzovxdsVQ4npGQo4lyr9tI/LgVkglk=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=g79optYMqXgnaIvAlwRsWvl52joG86DzU8P9i7gIxIrMjU54F46zGAb1Q/jDnKDwFXiWAaUtzIaXIoks/sP6InuNJN+oUWlhIokwO6NuTyQNO5M2sXhUtFi8cF5Ac2akSkdo717tfyvIsg5QtWUpMYnZB/VfzOO5Ua/QINaD9mE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=QBF+kFP5; arc=fail smtp.client-ip=40.107.92.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=veCt/jbw0PuvTrtbnJo4Xatx0mQOWrnBaISV38AAnYNyD2odYsEq57kPYHOfGi5YitWEMDgquJCaLbH9X4QGhR0PNBtFDlGpcD+DW1htbU9wGrYHCXFiPJ6QliqrINomQWfq+d+jiMAJ0JF2VS80aIs0exFaHyFr/uXVH5g5recJQyllhJbZ01gwjRYxq60rkK/e+MxA8lDWnysZPQuDd65f937GfDUSbWTaOJUWJfqqA3zSa+GEhjqrDrDXRooAPKNmiVMskbayi/ywqVw+LUvv1WKS8CC6+faS77SF6IkZEgrXNb5C+uSimi/nHSft8fuxxdhZVxo3xd4IzfJBDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RuWgQnZFzRRpWCzovxdsVQ4npGQo4lyr9tI/LgVkglk=;
 b=W1JSz1MuxQIVcOdLf9Ib1iOSgJpywyjPN3PWZCilHH8Wgu2XslVv8SOv3lNyZXWJm3u9YNUPWWeHB5HsNMHwaQo2FSfcTDJQpyRI9a9N6eF2E+YykctFyoevYeLtdkzj3fg/UogetgRByp0ZgVUzVaPXL55H4vy+xXwPuWQ+ryykPx1lR8EaplOpU6NYnAIltLHp/hOLXYxQ4VepgjSRui3+yx61RJqs2P6AQPYJ6w2vo8KzE/btE4syTnakmGYcbtklXoQANe7QE0YoGcDFJyH52wbCL02ulqN6lQsfJeW6g3NJGAOPTyop0X6oamsHO2iYV27xfi8BJumNAcb0mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RuWgQnZFzRRpWCzovxdsVQ4npGQo4lyr9tI/LgVkglk=;
 b=QBF+kFP5mtdqikUfw4X6Hr0NF0jYhxLs8nI1jZYhvclp1FdOhRTvd5jfXjhUjnId78DEjGsnnWeXKyL6X64xkPKtOwvkpsGtCLIhYw9Vne/ul6kX/BNxg03Ky9YRQX/3WlUhyi7e1/6ww35FqzsItey7PNmltxr2VczsU/CPlFMFt1Frgc1J+x5PGC/Gb2BkyqHgXJSlwQvLSfxyKlpeICj5IGGARLTaZe7jYkdUqNge4OOVw64r3Xs5X38LipuQ0ZtkLDezSvMu3Cetq7V7BvFSJn+ObzL1c6sn+Qw5wbCPGhLGd/6jbvEKEhufcVmPr773vgpxEyo9vVXOE7eEOw==
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by DM4PR11MB6166.namprd11.prod.outlook.com (2603:10b6:8:ad::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Tue, 21 Jan
 2025 10:41:54 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::5303:b2dc:d84b:f3b2]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::5303:b2dc:d84b:f3b2%7]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 10:41:54 +0000
From: <Varshini.Rajendran@microchip.com>
To: <p.zabel@pengutronix.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <Nicolas.Ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
CC: <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v8 5/9] dt-bindings: reset: atmel,at91sam9260-reset: add
 sam9x7
Thread-Topic: [PATCH v8 5/9] dt-bindings: reset: atmel,at91sam9260-reset: add
 sam9x7
Thread-Index: AQHbGwyUJCS3EBP7jkCsA5t0Ix2XSLMhrBMA
Date: Tue, 21 Jan 2025 10:41:54 +0000
Message-ID: <cab4ad68-cf3e-4385-8721-837372df2e12@microchip.com>
References: <20241010120142.92057-1-varshini.rajendran@microchip.com>
 <20241010120419.93043-1-varshini.rajendran@microchip.com>
In-Reply-To: <20241010120419.93043-1-varshini.rajendran@microchip.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA0PR11MB4719:EE_|DM4PR11MB6166:EE_
x-ms-office365-filtering-correlation-id: 4eb2e81c-53d9-4721-8821-08dd3a0838ee
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(921020)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|7416014|376014|1800799024|366016|921020|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?N1BCSWtSZThBOTE3ZWlXTzBHUXhvazRhY3M1QUpFOTgvRkN4UmVwK2FjM1F6?=
 =?utf-8?B?Yi9zekVCdVVMSG5scWViOCtIbm9qNVY5b1VHelZoZXYvekhEY25yc3U2SEtT?=
 =?utf-8?B?TG4wNVlBVE1adFNzbk1GTG1zMDFpTHQyRkM4clJ5SEZHZWIzVU5qTTNHeWhC?=
 =?utf-8?B?WlF2WkZlT1VRTThmalZ0VmNqMG5PenB3RnV6aWVtVnhmT0U2WjM1am9aTnhq?=
 =?utf-8?B?SDExL1lVcFU5aWIxT2tJQzZCUHhyLzVOb0craWx3ZFc0ZktSWEJQVThiVExF?=
 =?utf-8?B?NUEvQXgyVC8vK0h5QzVPZkxkZjM2V0R0MlFSNkFCREtOTlNWR1VYKzB4YStU?=
 =?utf-8?B?endsQ013Y3pjWi9VejRhSjRndEMxalNDbTJjZ3RLRm9aV2F0eVZDbmZPdUQ1?=
 =?utf-8?B?djRsL1FaTjFkUHNZajFlakE2TlFwWHA2YjZuL1h5Y0gvMFI0cks5azNiWlZ0?=
 =?utf-8?B?NU82Vm5VZHhDVVVMT1VDU1FVN3F3Z2NDV3I1Ymc0U3daN0xVZE5wRWc4UUk4?=
 =?utf-8?B?RG1OTVVNMXR2NGZnTG55OE43RzN6SWZ3enVxbnQrazRwb3RDOUhDSjd3OWFR?=
 =?utf-8?B?anEzWnpNa0FXakE5aTMvS0toSDQyNER3a0VYTVBINWJsekY4OS9PVllzWS9P?=
 =?utf-8?B?ZkpBcU9Yd3E5cGxNSFZvUzkxdjZGbm9FN2VPMm9XWldZSDZSWGRrNEIzNTdl?=
 =?utf-8?B?YVByNER3bHFmL2c5QXdCTDYyRFl2ai84MThSdVBFZ2RrdE5wRlJPQzk4SFhi?=
 =?utf-8?B?azRrMXNPYUd2SkdWaTZKaXNiTG1Tc2FkMXFUdXBEZ0IwcTNFWUVqS2gwNU4x?=
 =?utf-8?B?OEtWNE5USTRuTVQwVnRJTVp6RG5EczZtMHo3U0xLcFFBRFgxZEV3OExya05l?=
 =?utf-8?B?T0x6TzErbmhVQTA0L3lXYlRMVjByanFraHZFek41OWhjSFZVZTQweDRkUGZF?=
 =?utf-8?B?UjJUNjFjS0QrSmtlQmdGckQvY1VQaGdXK3ZrYXcyd0pud3MzbTUrcXB0d1Z4?=
 =?utf-8?B?Nk95Ty9KSSt0RWcyMjZnamV4aDV0NUVwSnVKeUxZb3dPRlpxV3NRNmY5NUdI?=
 =?utf-8?B?bVZKUGkxMnE4UVF5aTJQTS82SVRma1JsS3dySWVZRUttcU1JWElLcUx0cmJt?=
 =?utf-8?B?SkdlTW1RYnJmWnB4anllK2xFcDc0NjIva0R5ZjBFZFQxajc2VDVJM3NMYmk0?=
 =?utf-8?B?Y2pPRXY2bHhhTEh1TDFOLzdTQ2RnQzQ2b1NVeEFBbzhwRDFra0NaU0MxRWY5?=
 =?utf-8?B?emEwZko3d1FYcXdZckJWVzNIaGw2c3ZUMUZ2MmcxYVhjeUljWVlsUkVITVRl?=
 =?utf-8?B?b1FBL01xWEJETVVKNldyaEprUzBOSTFFNVJ3QlFEYjN4Q0tCWDBKRVQ4TDN5?=
 =?utf-8?B?YnRFRlVZQXNCRGk1cXVtZFJkaUh5RDk1KzVudTlGZE9vUUsyVWJsUGtVL01u?=
 =?utf-8?B?cjhzK2x2TTF5SENNMlIzWlU5REYvM21ESm5Yb0hIdTY2VmxnNHR0Z0UwcWFy?=
 =?utf-8?B?OEpnbWlpdkFlbGpqM2NlMDJ6TWZSd3hIa045SytaaEJzclZscUNnTk0raFFX?=
 =?utf-8?B?SnRNVVduVkJkTEZTUGZIdzN5bDU4TzF6U1N0TitrYTZDcmtmYzB6a3o4NW4x?=
 =?utf-8?B?THVyT0k4aU5GN3Z1a21SU1RPQTBEb1I1SXh2TFdmY1NwZjJidkJkV0U2b213?=
 =?utf-8?B?M3UyQ0dnREhGT0o2aElHZEZXSmRRWUluNXJTWHFtUlRxcW81cDR5djdkRnR4?=
 =?utf-8?B?YVp6V21iZHFFTElhejZlUnBHRjhUOVdkTUhwNGtsWVRPN3hnenpvQ2dJcDhK?=
 =?utf-8?B?eUpGN0hna2I5MlRscHYrR2hWYldxeG9qNkJ1NjJuNUxvTU1XZDJPOVdCRjBF?=
 =?utf-8?B?ZjNlK3gxeWRES0tpL2RGeEpwM0ZyMDNiTk1BRkViK21pK256c0ZkS2ZuQ0M5?=
 =?utf-8?B?SlliOExwenVla214cFhwSUQxNGhwb1ZSTEhsUC9EMFBmYjRjSXlZaDZGdm54?=
 =?utf-8?B?UEVCdm5Bdk9nPT0=?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?UldxT3hJcWwvSHdqNmFOOVJJT01ETVBpQkJaS0VmK0UrR1lUTHdyQ3R6TjVP?=
 =?utf-8?B?YU9RUVVsMWZpbUdSOVRrVW1XTU5ldFpRZmUranN2UHR1Y09wZjlnVnpjNnY5?=
 =?utf-8?B?N3d3N3JCdkpkRG55Ymt3U1VlVE1HYzVrOWhYa2M3QkRjNVA3UUZhT1lZcU1T?=
 =?utf-8?B?UXQ4dGtVV0lua2N4Z1JCcEZCSEtaUG9GYkdJeTdwOEk4a1Q0TTllTER6WEs3?=
 =?utf-8?B?WHMyVmZOTTA1YWJJek5kZldxYzdmM3d2T2RTM3d2dHZ6c09uRWIzaHg1anVV?=
 =?utf-8?B?TnlEazJnSmFleFo4Yi9HOFRWWGxNQXFOUExsWUcycDc1MkcrRWRINkFMYnZX?=
 =?utf-8?B?ZjFkZVoxUm1yVUdNTmdtMncvcStXalNIRHhLSkl2ek1OYzlOVzlCa3dBK21x?=
 =?utf-8?B?alNDYXF2V2Z2QkQxYTZ3V1d1ekdTT2g0L0NPYTV1YWJKZi9BYmNOZnY0WDhW?=
 =?utf-8?B?VTNZUWlQZXF0MEdxTkN3K1ZvdU9QQkQ0MUxETTNyam5GbXp6N00zYmFvRHBO?=
 =?utf-8?B?RGNUSndyNUEyY2grNUJSZ0FRM3RNMURxRkg0Y2h3SzVwRnIySHdnc3dtM01v?=
 =?utf-8?B?QmJZV0ZYbXBmZytqTWRNM29Yd2sxT3JFNkF1dDZ5WlRVNXJMSGN3OUg5SjFJ?=
 =?utf-8?B?SkdpMVhOdVJRYUFEdTlDTWJRQlFIajdUMDRIVE5EV1FRTkUwQ0J1cjkwUERE?=
 =?utf-8?B?eVNhUmVIRlpqV1k3QjVXbjh5MUxKYkZzZ2crQzlKVUt2K0RObGJ3dlhOU3E1?=
 =?utf-8?B?aUZ1L1RhcXE4cDZvQVZNSVBQMjJpaGJKdXpNd0NlMUJYRk9DcThkQUw1cjQ4?=
 =?utf-8?B?Ry9iY0RhVG5CK3JCbk10T1kvQ1NEdjJKNmc4SlV5VVBlWDJlMlJDNlA3ZUI5?=
 =?utf-8?B?RDdqM3R5d3Y0emt3VlBIWkt5RWNpNEQ5RTlqVGRveWNuaWU1SDJpR0hERVdJ?=
 =?utf-8?B?elhNM3d5SmtQNUdsYnJFb1BLQ1R3RHpXNGQ5Y3owRUFtWE93azBjQzc2ckMz?=
 =?utf-8?B?NHlSMEhMUlVJb2Q2VjkxTjZoZ3ZLeU5Dbk1DQzl3VHJXS3lGZzEwNFBpUHVQ?=
 =?utf-8?B?WEVVYzJ6Z1oycDk1RUJlZjVoMVNObUFlNUhLV3JsZTZPS2Q2TG9ILzFOR053?=
 =?utf-8?B?ZFBkZXVJVURtL2VXK0NwRjRFYUk0RDFSOHlQNllJcGNBeXo4VjFGS3FyaDNM?=
 =?utf-8?B?Q1d4bmNiV25oc3BJUGFCZG52b2lkdmV1WHBRVVRVVmYyZkVwVGluNG9Cdmt0?=
 =?utf-8?B?NXczd01qQkN6dTVqTVBPcmJJVXNqQmExaHhKVDc0cUVrMlNWemhrdXlaaEw0?=
 =?utf-8?B?a0doclRmTU5NSTR1dnRnMytSbWlEVVdJaFdETTdUdzFwQTgzRmtmWmlHc1Uz?=
 =?utf-8?B?R1EvZWU3Q2l3bkp6UU43OWMxRGlHTEdEWDdaeTZ3OGp1amdjTnI0bm8yZTgx?=
 =?utf-8?B?TlBLWkFuU0RKaUpCdEk5VS9ESnZCbmY2SzMyaEdualIrbmxqVDVhcGdxVDIv?=
 =?utf-8?B?K0RzK0NZTGJuSXVXOEZLa2dQL1BQQ2VhWlFVVDRMaW9jREI5bkxsT3BscXJ4?=
 =?utf-8?B?Y21EdXZtSHZ4UDhGcUdyMHZIemR3QXpsK0Q3bWY5Y1hzeS94NFVNTEx6MEtJ?=
 =?utf-8?B?QVk1blZQbCtxVE80ZEdpcG1DR21ZbENvSUZWT3FqUnBOazVKZ2wrOXZlZFo5?=
 =?utf-8?B?L0xoTHhPOHpRM09mNW1GbzlRaTloZWxtMklZa1oxMmhHeVU0Z0gxcUhuMG4z?=
 =?utf-8?B?UzVENFBVR2VpeFd5bmZZT2d3U0dMNFFsaUMxc0RtM2QwSGRaeURyc3IzRVow?=
 =?utf-8?B?TW8yaEo0MFlkRm45Q2xSaXRQeWpPQmFkSHV5WGFuM2ZDRFR6UjBTSjZDdVMv?=
 =?utf-8?B?b0FQWHQ5cjVOc3pIMVljV3JNQ2d1TURSbm9wMDU2NjEvZkVKTjd3YW50RTR5?=
 =?utf-8?B?ajEyS0RCT29obGY4aUVoSVB6VG9TVWJJNHlIc094Nkp5Rit6MzhRU3IxOWpC?=
 =?utf-8?B?WWx6Z1Z2SmpuSENPbktsVHoxQ1NCRU9XbkdXU3JpektuYnk4ZmdRN3BoNkFR?=
 =?utf-8?B?ZFBoWjRxZGZGYjBBdVVsL09Yek5JZzFzUHlMSlh4ekEzUSt6SE9qWHpUb2o4?=
 =?utf-8?B?b3BOR3VCMEZBMFN3VlNnclBYT0xSdHkzUXNyWm9LZkpkdU5PdjJoTlhzUWt1?=
 =?utf-8?B?TkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8084DDAD3D4F3943ADF5AA0E565131FF@namprd11.prod.outlook.com>
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 4eb2e81c-53d9-4721-8821-08dd3a0838ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2025 10:41:54.5449
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1fcYVkgJhnPMpFeSSKwCE30Z/6DIHrdKOLdbUWDPwVzVBR4TemyyGubQkYB+wk1Bb+v+mMSiPUAPzM/064YoN1VdmSt+u/9MeyKic1ZlLcXbGJcI0E+yEbqk98AsCttR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6166

SGksDQoNCkEgZ2VudGxlIHJlbWluZGVyIHRvIG1lcmdlIHRoaXMgcGF0Y2guIEl0IGhhcyBiZWVu
IGxlZnQgb3V0IHdoaWxlIHRoZSANCm90aGVyIHBhdGNoZXMgaW4gdGhlIHNlcmllcyBoYXZlIGJl
ZW4gbWVyZ2VkLiBQbGVhc2UgZG8gdGhlIG5lZWRmdWwuDQoNCk9uIDEwLzEwLzI0IDU6MzQgcG0s
IFZhcnNoaW5pIFJhamVuZHJhbiB3cm90ZToNCj4gQWRkIGRvY3VtZW50YXRpb24gZm9yIFNBTTlY
NyByZXNldCBjb250cm9sbGVyLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmFyc2hpbmkgUmFqZW5k
cmFuIDx2YXJzaGluaS5yYWplbmRyYW5AbWljcm9jaGlwLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEty
enlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4NCj4gQWNr
ZWQtYnk6IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+DQo+IC0tLQ0KPiAg
IC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L2F0bWVsLGF0OTFzYW05MjYwLXJlc2V0Lnlh
bWwgICAgfCA0ICsrKysNCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L2F0
bWVsLGF0OTFzYW05MjYwLXJlc2V0LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcmVzZXQvYXRtZWwsYXQ5MXNhbTkyNjAtcmVzZXQueWFtbA0KPiBpbmRleCA5ODQ2NWQy
Njk0OWUuLmMzYjMzYmJjNzMxOSAxMDA2NDQNCj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3Jlc2V0L2F0bWVsLGF0OTFzYW05MjYwLXJlc2V0LnlhbWwNCj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L2F0bWVsLGF0OTFzYW05MjYw
LXJlc2V0LnlhbWwNCj4gQEAgLTI2LDYgKzI2LDEwIEBAIHByb3BlcnRpZXM6DQo+ICAgICAgICAg
LSBpdGVtczoNCj4gICAgICAgICAgICAgLSBjb25zdDogYXRtZWwsc2FtYTVkMy1yc3RjDQo+ICAg
ICAgICAgICAgIC0gY29uc3Q6IGF0bWVsLGF0OTFzYW05ZzQ1LXJzdGMNCj4gKyAgICAgIC0gaXRl
bXM6DQo+ICsgICAgICAgICAgLSBlbnVtOg0KPiArICAgICAgICAgICAgICAtIG1pY3JvY2hpcCxz
YW05eDctcnN0Yw0KPiArICAgICAgICAgIC0gY29uc3Q6IG1pY3JvY2hpcCxzYW05eDYwLXJzdGMN
Cj4gICANCj4gICAgIHJlZzoNCj4gICAgICAgbWluSXRlbXM6IDENCg0KLS0gDQpUaGFua3MgYW5k
IFJlZ2FyZHMsDQpWYXJzaGluaSBSYWplbmRyYW4uDQoNCg==

