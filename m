Return-Path: <devicetree+bounces-93138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4C694FD3B
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 07:30:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E092D283A98
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 05:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0AFC225D7;
	Tue, 13 Aug 2024 05:30:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from PUWP216CU001.outbound.protection.outlook.com (mail-koreasouthazon11020112.outbound.protection.outlook.com [52.101.156.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7088219EB;
	Tue, 13 Aug 2024 05:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.156.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723527054; cv=fail; b=MAw1fOJY7MLyOZT2VESWkBIJFkqwqOdaaGn9hfoSHZHTOGvwATLtL2UUQgRmVEgzssbKtg67bAO64Ns2hNqSZEY2K8JoEMLf9MBGY13+RTzTCIW1rNqxuYV2PFm50qFpZHUuYzLlL/Rk5Pl7KnbDgOZ3Hudxu+SDq1bMINecdeQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723527054; c=relaxed/simple;
	bh=kyOgbxgtJG9HHKJGTDeTd+dmnfAQBqXTsr3ayd5F4FA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=P5sdwbj9TVrEu7pmXYOuGTjUb9eZGQoUBsMT9wJEmeYGYhBUVDoCOuCw5lSk808OSlxcEka85bq6+rd9TQ5joOSMHWINt7uj5lbriFZHE4XW9QA/1Mp1TnD5PHRPDeoCxYoc/PKySUrDTqogbtFO7VdMgNM96ZvaH0rqBO71uwk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com; spf=pass smtp.mailfrom=irondevice.com; arc=fail smtp.client-ip=52.101.156.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=irondevice.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a/WWYs7F07/8+S05gplhxskrNg/Nqwa2+DizghG6rtWYOf4T5v4BEKaLOvG+lkoKFgjBwzc776eaTqorkR3rkuTOokK44cIz/z7WAOMVGQRyBygsTf2j+uotWkgxMK8Mo59WrtBna5yUplRru96Bmrdznwe0fcr812J4RqpThgEK7L4P/AQWc6jo1SSRtUiovjuvtz4rqHrBUajdqZzGaeXAhAEMhBaO6sv8c6x74CTCW14M2THARMBiVjwCd281DqdwsDXe9mGPG/aZREYhKfE7b95eZZeYUHdkdKyjXdYHNmO09GEMJE/jHe8vJ/QPqvjql1iSjZtpbNvG7i8PHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kyOgbxgtJG9HHKJGTDeTd+dmnfAQBqXTsr3ayd5F4FA=;
 b=JVtRPTTUPBeU8l5MiQsrPB6YaAjribGJdqvIijt9yj1lN7aMIXeAphVrBWL8WmyKXjF7qwZV+ED8azs5sX7c3w6NdtE/yMAxEnrtQJIzQFpth8N0WLoLBUtMt9a0cO+3uM1y7SDxSJAHmfkO+40USqkxlpLuwD+U589SE6D7LlGkuJ6dijNkuGWXwRu86x0YFDcvCClfyVPi23YHRNjygHbMuPgtSJSFiNpUg0bWI+0g61anm6/8SxF30bx5j2wnfLnsl1GusmlBQyqREHnZVXLpEZjhwH2Q36kK/nfmWiOoB1D/dW/mXTo8TGn6j9eIJlGuAxYrRyKgDuCNedco4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM (2603:1096:101:14c::11)
 by SE2P216MB1850.KORP216.PROD.OUTLOOK.COM (2603:1096:101:fc::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.22; Tue, 13 Aug
 2024 05:30:49 +0000
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756]) by SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756%3]) with mapi id 15.20.7849.021; Tue, 13 Aug 2024
 05:30:49 +0000
From: Ki-Seok Jo <kiseok.jo@irondevice.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
CC: Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
	"alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
	"linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Liam Girdwood
	<lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: RE: [PATCH 2/2] ASoC: sma1307: Add bindings for Iron Device SMA1307
 amplifier
Thread-Topic: [PATCH 2/2] ASoC: sma1307: Add bindings for Iron Device SMA1307
 amplifier
Thread-Index: AQHa7Swqu+vMvEHVcEu0r6sewSQaH7IklpqAgAARyGA=
Date: Tue, 13 Aug 2024 05:30:49 +0000
Message-ID:
 <SL2P216MB2337C8A9812F6C81D84B157D8C862@SL2P216MB2337.KORP216.PROD.OUTLOOK.COM>
References: <20240813025436.52410-1-kiseok.jo@irondevice.com>
 <20240813025436.52410-3-kiseok.jo@irondevice.com>
 <172352297724.3355027.16490098797646859934.robh@kernel.org>
In-Reply-To: <172352297724.3355027.16490098797646859934.robh@kernel.org>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SL2P216MB2337:EE_|SE2P216MB1850:EE_
x-ms-office365-filtering-correlation-id: c87a4e1e-7e89-48de-730c-08dcbb59175d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?d1ArWkNGZGtUNFI0WXh1eUZTSmUwQ3ozYTJQTk5YUTF2NytTZXZwSTQ0WHFS?=
 =?utf-8?B?TFY2ZDE4eDFpclR6K08yNzZNdHY5NnBzN0tuc0NMUGFSb1pBZk5mWm82ZzBR?=
 =?utf-8?B?dmZXdy8wRWZkUER0M1ZySWx3TG1IckxEWTFMNWRnQ1kraHNhdHhYK1gvQWoz?=
 =?utf-8?B?ZldxMFN2RU5XUWdFTFBZUkJlSEhRaGhTUTVxc08rem5FM2p0RUZNV0NpdXBY?=
 =?utf-8?B?SDdPbERSYXNKNkc0TWwwUVRpVTU5aHNzUnlLSmd2ZVJRRTJCN0RuV1JxeU5r?=
 =?utf-8?B?cm9HTEczaytMR2YwRUxGbzZwS0EvQ2ZmbTQ5UlpobEduL1lqT29tMXpLc2ky?=
 =?utf-8?B?TFJSYlFpY2d6dk9zSlQ5S2UzdkNjTXM4a0sxY2FINkFUVnY1a2NOSUcyZXFu?=
 =?utf-8?B?Q0dMcHI5WE5ZcGxIeVNzWU03K2grc3hOQVBHUW5SVXFONjFkWjdmMG9aTHUr?=
 =?utf-8?B?QTBNeWZBREt4NTN1LytnT0E1VXVrUUdUTWdkY0FsdUpyK3Uwc2x1Skxja2t2?=
 =?utf-8?B?bXA5TllKS3ZkQjN5QmVYWFFDTUhGenlJUW9wVUVVeFhHeTdkeEl0Q0RzNTJx?=
 =?utf-8?B?RG52SFNwR1B0YmpRRHdpUWZLQXFUUFVjOHBCQ1FUZmhCd1hBV2RNeklWVlp1?=
 =?utf-8?B?NCtML1NjeGJ5bWljeWhKcWk5U3djQW5GSHRDL1pReVhPUHJPbXpkaU5lSVYy?=
 =?utf-8?B?T01rb1ZEZTdIWE0zbnp6VmdnZVhVa0lGNENwU1JObnVkYTJ1d1pPcGgrYjY5?=
 =?utf-8?B?blpmeTRVcTVYajNjY0tzQ3pYcXorRmhxS3JkdkdYamxpOS9QVzJRaUYxSTlC?=
 =?utf-8?B?clE0TUtaci9Yc0tsNURGa0RhanUrcWp2cWdLRE1IUnRTd1dla2ZhN0c4Ym8x?=
 =?utf-8?B?Q252WXN3YXZUTUpGZVc0RFdCZnl1WlBySklQSVM5UVhHVUxpWmtNZW9ScXB1?=
 =?utf-8?B?d0QyLzhZN2U3NmxhZ0VlSWFQOVpUNTFLVFZ0cUlIek4wWVJYbDNsWU5nVktH?=
 =?utf-8?B?cmljZzRXT1RPa2ZYZjdHaW1ISWdsdk1LNGhaY0srcVFMekhLbFdkaUNrcUJF?=
 =?utf-8?B?cTlFaWZDOXJKVmNZVmVwWGZvTDFZQzlNWkhGZkZSWVVOblczZm1MazZRd09x?=
 =?utf-8?B?Ny9ZcTcwNGNyZWFJaHFPcUVyUDNPYjhZNHovNDdPcmoxcWxjUGlSSXRBSHRP?=
 =?utf-8?B?V2JnbjNOY2JrU1U1QUZMTkdCWlYrKzRIdy8rSnRUTjRCNnNVc1h5K1JPWkxY?=
 =?utf-8?B?eVMzRG9RekZGbThlM3Z2VU14RzdDWWQ3MzdLdVBpeFg5dUZhdGxTZ04wY2E4?=
 =?utf-8?B?QUFXOHlrbEt2dEhGR2xqTUtRNHN3bUsyU1ZDQmFzVXFPS0YwaW4xZ1pFVjBt?=
 =?utf-8?B?RjFHNGthV2dlVmdiUG85dlNBVzBrR1N4RGx1TDAwMlY1NFpvc0twR1l5Q0FL?=
 =?utf-8?B?R1dSSEo0Ykl6MnNCSkJISGFwRVUrck5Wa3hCUmFBYWRnMm1ETWw0Skg5VVI4?=
 =?utf-8?B?L0I5VTcrL21LeHNNQUpFd2V5Y3o2OFBZZUJKTXFsU1M1eGI2dng5TVdoVEk2?=
 =?utf-8?B?aFpvVUppV09XbjNJaVVXRmVUTnlwMG9wYllrKzdpalpsTjF2QmErNXdTV3pu?=
 =?utf-8?B?N3dCZkNhRE1OSlhMb0VjdURmaFh3dm50KzdwMzBFQ28vRzdjcUNiSnJKZm9i?=
 =?utf-8?B?ckJNZFB6dHRKeExhajRrcmM3Q3JuRmgzR2RnY2J5SXFTb1NVNW5OR056NmFp?=
 =?utf-8?Q?tKIOxbqt5r2KDngVK1/fIONs16UHA+sEzQYHgZx?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:ko;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB2337.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?Ymc4MU5Na1V4MkpreENpNkpKTTlMNXgyanlYQVJ4ZFhEZ2ZqMjh0ajJrNEZQ?=
 =?utf-8?B?WEdKVVY1cUxQTWx6aTBqSmNJYzNwd2g2cVM0SVJCUXZPblc2dDJVckEvUTQr?=
 =?utf-8?B?bnBocDdKdFlNZ0ZtRVlHd3pEZ0pMaGFBZ2hVQ0J5eC9ieE5nd0crNHNOTG1i?=
 =?utf-8?B?dkQyTHYySG9SWUNST0Q5NlhudGY5QmZTZ0dPWENURlJBays0TVlNL2hvZmo2?=
 =?utf-8?B?WTFjbXBnQ1JNeldLa3F4bGczV2lDT0I5R2hmRE8wSThXTHlIeUFadHRmUFJw?=
 =?utf-8?B?VUN4Y0FhZW5WWWxINGxVTjBVTkIzTEZkWHVzSXNQdmJQZSt0U2g2bUVCRGlD?=
 =?utf-8?B?aU9SUFZldTFZZXJRdXVIRWVOam5QS09YdEZnOTFkN0F2eE5aWjJENCs1VU1W?=
 =?utf-8?B?SXJseitNa3QzT2ZNZXJad0hiQUZKVXhsRE5Ga0RzLzBET1ZuekxDcWNPY25X?=
 =?utf-8?B?UjgrRER1Si9oWmdzSW5KV3dWSTY4cWJrOEpUbTd5NC83WXhIT2ZYZmZHK3Jj?=
 =?utf-8?B?NDBLc3hPU05vemV6Z1AxVnN4WlNQVkp4dUpkYWJhcmRlYTJqUllsMko2OVZk?=
 =?utf-8?B?a09rMWhPTGlhNXhhQVozeUhNcjlySGxRMjJHUmdQT3E3SExJN0UyS3lFTXRw?=
 =?utf-8?B?MnNJbW1USGxFK1lHR3J2SDZsWFdwelh4UlMwQUZtUHhrY1JKOE1CaVphSVVp?=
 =?utf-8?B?dm1hTUVqZDVZUDVpbTk0RHBxR2g4RVU2NDhGb3FSWXVVay9VVDJiUlUwclJm?=
 =?utf-8?B?VHlLWGkvV3AzWU03MmZIajNkV01Ic3lvNDN6bVhVRUJqTlVLMHRhSklXTWp0?=
 =?utf-8?B?M1craGoxR0dzdVA2dkRRbnMra2lpalBtQUxtNWkzalVzREkxbTV1dm0wRWpE?=
 =?utf-8?B?QlV4c0NOMEhyYVFmdjdsZTlWS3BJYVJtZDdyLzl1TlFWRExNTkgzS3hRN1NO?=
 =?utf-8?B?M2VFb0NNYWVzM285azBIQzJNc1kvUjhGVTVuOXFadEJCYVRuM3NGMzZGbnB4?=
 =?utf-8?B?cG9Rdndyc09vRzN2VW9tenpLN0pRa3pacG9qeXpyT0x3clVkZ0U4NUpWdWhD?=
 =?utf-8?B?UEN2Z2MyemZlMFNOSFkybXdOZkREUTQwR1dFUUh6UTNqanpWdXhCR0VhbGhM?=
 =?utf-8?B?M3VPcUg0QXFUbnlnNkg0SHk4SWxWWFlJK3NISWZZVUhxWGJTUC96L1BJa0RV?=
 =?utf-8?B?QSs5dFpwQWxBNm9BdkRDRTdzNm94NnlxZlUwRTBPUUxJSk5aVVZna09XdnBZ?=
 =?utf-8?B?VCtlWEdDYUxyVnJCUEVzYjZaV2J5Z0FkRjVOZTNwRFpTQzV5QjZLeFZKM2hN?=
 =?utf-8?B?YmRYSHVnVDJQeDFkR0N6K0krSzk0SXk0clVEbElRTzI3K09kR1ZpVHZLR01E?=
 =?utf-8?B?TlRiTy9xeXQ5eGFGRG5FbW1xamYvb3JFeks0cVV4VE01WE9jeHVPbnlLQ2RW?=
 =?utf-8?B?TTZhQnNwSzF2SVR1L2tlakRQMGFXbGp3bVBLS21GVjdDeVpRdUxidVAzb3d1?=
 =?utf-8?B?SUxRNDROMlMxRnZJNkFjc1JrL3FpaG9uekREQU9BdUZhU29tSjNqK2toOXNQ?=
 =?utf-8?B?UFZydkVkdmpVc1dVcWJLVkN5V1FqMHZZQVZFdGdWUkVhNHJSR2F2aW0zVDkz?=
 =?utf-8?B?TVZxZWFkbm5QMWdHb0V3ZGt3b1lPcUY2N2JyeHlxYmJralQ5cXZXTEFRN3RM?=
 =?utf-8?B?a3ZPSmV2eWM2R0cyVnN6RVdUU0NuSTk3Z3EwVjducFZOVVVOWEpodVgyeTAw?=
 =?utf-8?B?MjhYMFhIN3lQN0U0dkhnZ3VnaFFMVmttODFpSHJVczJ1MmpwRWRuTW5ObjZo?=
 =?utf-8?B?VW8zYTVnUzdtWW14RFFmRjlwcHFNbWgvMDFlN0NzV29Fa1QwajdLTFNzaUp5?=
 =?utf-8?B?aFM3Uk5BaE5nMWdLYWhZdkhlWk16VXZYYUtETzRSeVVqQ2JRcGIrd0cxQWlM?=
 =?utf-8?B?bXQ2RjZmVW1FOWgxcnJGSkdDYTdiSFlLLzFWaGltZGwvSEM2VGlEditQNmc4?=
 =?utf-8?B?bnYxSWFWcC9jOUZKZEZGYVFIOG5ZWXNKOWpKbzNWS0Jjek5CQ3lUa1RRWno1?=
 =?utf-8?B?Wmk1YlUvU2RDckk2dWcxTHh1RmxGOTE5Tm9ycktRVEFiWm1MQVZhVU9wc0Vh?=
 =?utf-8?Q?SqOEzr6KXqdVadcZiljc4KzzX?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c87a4e1e-7e89-48de-730c-08dcbb59175d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2024 05:30:49.8124
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +IHamwlPXgZP7M8bhvEuOouDTqi4dEETYhVqKDuP5OJ3mF06yDUN5yv6zpf+IBPPPs0t0ynoElrX5ZYd/Zz6RHRRxkqm9/j1+kVJtvG4Vvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SE2P216MB1850

PiBPbiBUdWUsIDEzIEF1ZyAyMDI0IDExOjU0OjM2ICswOTAwLCBLaXNlb2sgSm8gd3JvdGU6DQo+
ID4gU2lnbmVkLW9mZi1ieTogS2lzZW9rIEpvIDxraXNlb2suam9AaXJvbmRldmljZS5jb20+DQo+
ID4gLS0tDQo+ID4gIC4uLi9iaW5kaW5ncy9zb3VuZC9pcm9uZGV2aWNlLHNtYTEzMDcueWFtbCAg
ICB8IDY2ICsrKysrKysrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDY2IGluc2Vy
dGlvbnMoKykNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IA0KPiA+IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9pcm9uZGV2aWNlLHNtYTEzMDcueWFtbA0KPiA+IA0KDQo+
IE15IGJvdCBmb3VuZCBlcnJvcnMgcnVubmluZyAnbWFrZSBkdF9iaW5kaW5nX2NoZWNrJyBvbiB5
b3VyIHBhdGNoOg0KDQo+IHlhbWxsaW50IHdhcm5pbmdzL2Vycm9yczoNCg0KPiBkdHNjaGVtYS9k
dGMgd2FybmluZ3MvZXJyb3JzOg0KPiAvYnVpbGRzL3JvYmhlcnJpbmcvZHQtcmV2aWV3LWNpL2xp
bnV4L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9pcm9uZGV2aWNlLHNt
YTEzMDcueWFtbDogdXNlLWJpbmFyeTogbWlzc2luZyB0eXBlIGRlZmluaXRpb24NCg0KPiBkb2Mg
cmVmZXJlbmNlIGVycm9ycyAobWFrZSByZWZjaGVja2RvY3MpOg0KDQo+IFNlZSBodHRwczovL3Bh
dGNod29yay5vemxhYnMub3JnL3Byb2plY3QvZGV2aWNldHJlZS1iaW5kaW5ncy9wYXRjaC8yMDI0
MDgxMzAyNTQzNi41MjQxMC0zLWtpc2Vvay5qb0Bpcm9uZGV2aWNlLmNvbQ0KDQo+IFRoZSBiYXNl
IGZvciB0aGUgc2VyaWVzIGlzIGdlbmVyYWxseSB0aGUgbGF0ZXN0IHJjMS4gQSBkaWZmZXJlbnQg
ZGVwZW5kZW5jeSBzaG91bGQgYmUgbm90ZWQgaW4gKnRoaXMqIHBhdGNoLg0KDQo+IElmIHlvdSBh
bHJlYWR5IHJhbiAnbWFrZSBkdF9iaW5kaW5nX2NoZWNrJyBhbmQgZGlkbid0IHNlZSB0aGUgYWJv
dmUgZXJyb3IocyksIHRoZW4gbWFrZSBzdXJlICd5YW1sbGludCcgaXMgaW5zdGFsbGVkIGFuZCBk
dC1zY2hlbWEgaXMgdXAgdG8NCj4gZGF0ZToNCg0KPiBwaXAzIGluc3RhbGwgZHRzY2hlbWEgLS11
cGdyYWRlDQoNCj4gUGxlYXNlIGNoZWNrIGFuZCByZS1zdWJtaXQgYWZ0ZXIgcnVubmluZyB0aGUg
YWJvdmUgY29tbWFuZCB5b3Vyc2VsZi4gTm90ZSB0aGF0IERUX1NDSEVNQV9GSUxFUyBjYW4gYmUg
c2V0IHRvIHlvdXIgc2NoZW1hIGZpbGUgdG8gc3BlZWQgdXAgY2hlY2tpbmcgeW91ciBzY2hlbWEu
IEhvd2V2ZXIsIGl0IG11c3QgYmUgdW5zZXQgdG8gdGVzdCBhbGwgZXhhbXBsZXMgd2l0aCB5b3Vy
IHNjaGVtYS4NCg0KVGhhbmsgeW91IGZvciB5b3VyIGZlZWRiYWNrLg0KDQpJIG1pc3NlZCB0aGF0
IHRoZSBsYXN0IHR5cGUgSSBlbnRlcmVkIHdhcyBkZWxldGVkLiBJIGhhdmUgYWRkZWQgaXQgYWdh
aW4uDQpJIGNvbmZpcm1lZCB0aGF0IHRoZSBjb21tYW5kICdtYWtlIGR0X2JpbmRpbmdfY2hlY2sg
RFRfU0NIRU1BX0ZJTEVTPWlyb25kZXZpY2Usc21hMTMwNy55YW1sJyBydW5zIHdpdGhvdXQgZXJy
b3JzLg0K

