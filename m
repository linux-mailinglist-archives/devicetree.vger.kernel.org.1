Return-Path: <devicetree+bounces-18436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EA47F6AD2
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 04:15:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BCCC28171B
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 03:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458A72589;
	Fri, 24 Nov 2023 03:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=live.com header.i=@live.com header.b="IL8RdGwh"
X-Original-To: devicetree@vger.kernel.org
Received: from AUS01-SY4-obe.outbound.protection.outlook.com (mail-sy4aus01olkn2175.outbound.protection.outlook.com [40.92.62.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D66AD6E;
	Thu, 23 Nov 2023 19:15:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lrYJFbZS6A9f613pvDSwgGnQ6eiATq5kAAC02Z43+OmicWt86LVDhwnjXusofQAxey123P1BziEHhEhmt9Z5J0SHa/wZSFXvOx2be3GzGl8/p6IQAViGR5p+knEwpsXzkjhGIqKchej8Vag57n5f6kOp+J8TUaeYx+vQTqkJYH7sS6gY96o2qL03NlydRdMWXSQ9vEMfzg2A+z5GfgDChIDGiUVCndasrdideb2kplhezKFpVYxXTMXuZTx8MCS7vEFdv+jFAFOu+dXExo0xJyC/nkOlePA1B8ucQSHCbs2bqHgrCrr5WOwQW2VTxNJGFWbdX+2uw9grWgu7hpl5Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sLS3jQ4B5TLvkD0a2py422r176qpz2qbnVmhZLrnqKo=;
 b=epbTrJWtByuyyAlpTRFeprVX01nJF7KzAUkTCLIX2mkeoolEefmhDnPhKRVsxDSrORwbwJvIN5cvUEbenp/hRz1/KyUKBuJ3na7Wozi/IoQJiK0Uen02BSZfPpHs9XO5EpNF4HLuQd/4BFABJHTdQuvaj5BK9UhN+e9tUdr8ddymua4AmrVcsS7SFGBH89x2ZLff9SGvd+LKl6gfk5CXIqkIDyyt+lfHo3yvR6MpVppvHhEcqct4EGDwfPynqUmzkRvChRTYHZVIti+LuGaQmvtYSfcaXz2KZfuTjuQISkKhKRgVHEzW3tLh1o40Vmo+PFgbNioNWtqkL9vC3EcjYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sLS3jQ4B5TLvkD0a2py422r176qpz2qbnVmhZLrnqKo=;
 b=IL8RdGwhs2YhokrXUUmKHjp2ZvSw07L3bVHVrpDMWelTpkXGaGqlmGhc1zuQMmItxjPrObDwdaiEJSC4NXFiPfB8cJQ26k1eILxs7uIQ9B44UUCnu1QAi8hETZT36B66AARcAeVZryETE55NPD0CH5pMQTFbg5RlBExmOHvUu9sDlX3R+eIwYgVz0q/8bLyBteEeeO34Gl7Mij39Ka4HTLnROkSA091LB+7/lJrkK9qhU16H9vZj62yXIBhCa9YpVkBsJmMZ44EAnqzeFGqOu+SejcojNC51XfAIvHBhMRJQNGFwBM1DFhyj32k8XcemODcPqcitFbWGkKzViiZbKA==
Received: from MEYP282MB3659.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:175::9)
 by SY4P282MB3874.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:1ce::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21; Fri, 24 Nov
 2023 03:15:03 +0000
Received: from MEYP282MB3659.AUSP282.PROD.OUTLOOK.COM
 ([fe80::993c:bda0:82:7997]) by MEYP282MB3659.AUSP282.PROD.OUTLOOK.COM
 ([fe80::993c:bda0:82:7997%7]) with mapi id 15.20.7025.021; Fri, 24 Nov 2023
 03:15:01 +0000
From: =?utf-8?B?6LCiIOazog==?= <xiebo_60@live.com>
To: "apatel@ventanamicro.com" <apatel@ventanamicro.com>
CC: "Alistair.Francis@wdc.com" <Alistair.Francis@wdc.com>,
	"anup@brainfault.org" <anup@brainfault.org>, "atishp@atishpatra.org"
	<atishp@atishpatra.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-riscv@lists.infradead.org"
	<linux-riscv@lists.infradead.org>, "maz@kernel.org" <maz@kernel.org>,
	"palmer@dabbelt.com" <palmer@dabbelt.com>, "paul.walmsley@sifive.com"
	<paul.walmsley@sifive.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"tglx@linutronix.de" <tglx@linutronix.de>
Subject: Re: [PATCH v2 7/9] irqchip: Add RISC-V advanced PLIC driver
Thread-Topic: [PATCH v2 7/9] irqchip: Add RISC-V advanced PLIC driver
Thread-Index: AQHaHoRpKslbTmeWL0Ksf5zQwQQB2Q==
Date: Fri, 24 Nov 2023 03:15:01 +0000
Message-ID:
 <MEYP282MB3659056CB565E754B71988EB83B8A@MEYP282MB3659.AUSP282.PROD.OUTLOOK.COM>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-tmn: [tKb0p8NdwIA2ye5t1NbTFmPWed3bb3ya]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MEYP282MB3659:EE_|SY4P282MB3874:EE_
x-ms-office365-filtering-correlation-id: 503aa639-313e-48b6-469c-08dbec9b8bda
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 KfFyaFjxZUItIa4rwgHYSe5ceGmAGgRT2F86Ky12aJRwnBraVxs7qz8KHghPpgiWT/nIODnJUs4FHgTeoVuKObk/3IFeD6YTK4RCrZQmvnWN6WWEyTQmR49O9xW+1d8zwZQiVOI3m/tXYObWEdn0JUUEGVm94Zm6jWvnEIAiGM2oH5sqeQA6oE5BaLHBeOqkTrKmVFjmJpqtqmLAT8l1LNsyMeAsnyjBCwbW+OnQxgdfrCGIsWV2D4o4sNlYjfm9vUrL9W3NCH9a8tuziwTu7AqK4fwBaJXgHKBmtjPZ0WOQWfp0pjjoKolI5uQIHDbuAWQkttEpOR4SF0bJej11Kzc7P6TRAbRbeKzHt2zhbGk+agKCkAS/A1kf/DIBbaPMDObmeyUjWAqtU4wv8/f6glmtWPovLA305K9vQYx97PcfwX1aBDWimwG0CqnNZEh27jcB6aWHyjkJf8FkbLfcQqqiroGC+MMSJwFTuBmepuaOJvEyx/vrWBQfkiV1jqd1gFWcnT3bbajKrm9v10GZ7Ex7In5gp27K4TE/lQB76ymGtzfCh9FiyZ3Yx413h0U/
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?WmJWL1hGN3dUTGZVNWVVS2VPVHBpQytzeUhJK1h3L2tZY2cxOWNFaFRaSnJW?=
 =?utf-8?B?U1ordE5ITVVETDlNR0xPcW5naW1jNHJ3Ym9IVDZPSDUrODc4NlJwelVuZW0w?=
 =?utf-8?B?aUdWU1M4Vkw5ck1vTmt6T3JNYjdxVjJKSlNTZzVqY3o2YTcrVjdqZlgwa045?=
 =?utf-8?B?bVJMMEZFK3JPSThNQzlEMis5QmJ4VUZYSkczMzQ0YzBGU1J0bmFtdVd0bjJH?=
 =?utf-8?B?SzBsb1ZuM1N1SHlLMW1UTXF5SkxscWlTTCtwT0pxOFRubkY2VVhRdVdqOEMr?=
 =?utf-8?B?Ukhndk1PU2k4V2I0ME5uNFpjc0JuSkVGazd4ejlNdkZIT1o3OHVvU01BaVBt?=
 =?utf-8?B?UWxiaDBTSWFMN3lIK2h1R0FaVE1sUVFpWjRmQlBHTFVRcDJRUnV0dGp1aUdG?=
 =?utf-8?B?QTUvZGJHcGVZV3V0UllnSXQ0TThxMi81L2J1UWIyQ0pSeVVzNEZrZDNXcXVL?=
 =?utf-8?B?N0NIMEtIQ2ZYRUpRY0wwUlhXR3ZEdUpWL2FtSjg0OHMyMG5WSFNOemlaS0dL?=
 =?utf-8?B?Y2U4cGdTYW1lOUk0VDJ0TGxhZDNVdlJzRVMybkhONlNId1NzZ1hsc1FreFE0?=
 =?utf-8?B?QzhWVE5jKy9rRStZOHBsUkJDVHVaUEs3L3pJcDAwb3VMRkI0R1RIZXZ0V1B0?=
 =?utf-8?B?b29vZmNUdVo3endpc1libXBuSUswZHRzMXF5S1RBTHNmMUtqWkxuRTZlR2VF?=
 =?utf-8?B?UkdXdlh5MTJ0M2pDTnZzMC90SFdtbG0yQkQ4QjNlMFpzUmN6UWd4SXdhMUdZ?=
 =?utf-8?B?RFZ6bTM1a3krVkVpOUIwR3dHVmdGZWpBY0w2ZjlKYWRiaktQU21QbTZBZWIr?=
 =?utf-8?B?ZnFlcTBKdDVpcmNGMFlPSXdpaEhJbUt6UEpUcUhyRWl4MlN3dHNxL1pNSG9v?=
 =?utf-8?B?N25FTUhZRldFUmtVRTNKaVV6QmFCelR2NWVnU1NQMlZVVTlZd2xyZ0p2Z1M2?=
 =?utf-8?B?cnVBK3dYSzRqU2NFYXRiU1ovS3ZwZ3puVldyeHJPSGQ3SXMyaTNNVUhGMU4x?=
 =?utf-8?B?NlFXZURGeTNGdE9hUmgrM2NRcndlMnAwQU45NndkNXdFaEZDa0ZDR2JpRXZT?=
 =?utf-8?B?K25odDk4cmZBeGszMHgyUkRpTVZuS3ZFOGhkanJOZzY4TXYzVTJRMWtrVVRQ?=
 =?utf-8?B?Q1RaVXhOWDVwS0lmc3BySTZScjU3aG91Wk9IanlvVHNrOWFzcFlna0pXNEJu?=
 =?utf-8?B?dWNvNFVMYmVqZWVxUVk1UmdDSjhGZzkyUE1NU3doM0loZjErZG04aXhoMlVZ?=
 =?utf-8?B?dlZuSUQ2SWtXaWdOTWhNTXR1ZkFjenJCTHpKL0JaYnJ3V0lLRHV0RVozMTkw?=
 =?utf-8?B?RWdGcmxIZWlCcXJCMDlIRjZVMTF4UHNueTBsZWs5MFhRKzdXYVdZcnh6RVFk?=
 =?utf-8?B?eDU2M1FlZzBqT0h2OE5Mby81ck1IYytLT2VuOW4wY3RKM3hMSVByd0RQcnoy?=
 =?utf-8?B?NDRqMVhnK1lHc1J3UU1UbkYyTitJWkFJKzczUUVwRDR6cml2UFQ0NDFBWHky?=
 =?utf-8?B?TzBmY3dQVlR3dXZLZUptNExnTVEzQjJMd2ZZNUZnZFZNbnVFWHd6QnR1SWtI?=
 =?utf-8?Q?A6WQ9SVNCTJaSCOIoMDMiNmxxehBvEWotPHJdGq9lMrbmY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-746f3.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MEYP282MB3659.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 503aa639-313e-48b6-469c-08dbec9b8bda
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2023 03:15:01.2987
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY4P282MB3874

SGVsbG8gYWxsLArigILigILigILigILigILigIIKSSBoYXZlIGEgcXVlc3Rpb24gcmVnYXJkaW5n
IHRoZSBoYW5kbGluZyBvZiBwb3RlbnRpYWwgaXNzdWVzIGR1cmluZyB0aGUgTVNJIGludGVycnVw
dCBzZW5kaW5nIHByb2Nlc3MuIEl0IGFwcGVhcnMgdGhhdCBpZiB0aGUgQVBMSUMgdGFyZ2V0IHJl
Z2lzdGVyJ3MgdmFsdWUgaXMgbW9kaWZpZWQgZHVyaW5nIHRoZSBNU0kgaW50ZXJydXB0IHNlbmRp
bmcgcHJvY2VzcywgaXQgY291bGQgcG90ZW50aWFsbHkgbGVhZCB0byBNU0kgaW50ZXJydXB0IHNl
bmQgZmFpbHVyZXMuIFRoZSBjb2RlIGRvZXNuJ3Qgc2VlbSB0byBhY2NvdW50IGZvciB0aGlzIHNj
ZW5hcmlvIG9yIHRha2UgYXBwcm9wcmlhdGUgbWVhc3VyZXMuCgpJIGFtIHJlYWNoaW5nIG91dCB0
byBzZWVrIGNsYXJpZmljYXRpb24gb24gd2hldGhlciB0aGlzIHNpdHVhdGlvbiBoYXMgYmVlbiBj
b25zaWRlcmVkIGFuZCBpZiB0aGVyZSBhcmUgc3BlY2lmaWMgcmVhc29ucyBmb3Igbm90IGFkZHJl
c3NpbmcgaXQgaW4gdGhlIGNvZGUuIFlvdXIgaW5zaWdodHMgaW50byB0aGlzIG1hdHRlciB3b3Vs
ZCBiZSBoaWdobHkgYXBwcmVjaWF0ZWQuCgpUaGFuayB5b3UgZm9yIHlvdXIgdGltZSwgYW5kIEkg
bG9vayBmb3J3YXJkIHRvIHlvdXIgcmVzcG9uc2UuCgpCZXN0IHJlZ2FyZHMKCg==

