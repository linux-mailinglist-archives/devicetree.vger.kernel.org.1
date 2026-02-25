Return-Path: <devicetree+bounces-268303-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJ/jHjbanmkTXgQAu9opvQ
	(envelope-from <devicetree+bounces-268303-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:17:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FA9196565
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:17:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9498630603DB
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31F8A394464;
	Wed, 25 Feb 2026 11:16:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OS8PR02CU002.outbound.protection.outlook.com (mail-japanwestazon11022114.outbound.protection.outlook.com [40.107.75.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75FC739447B;
	Wed, 25 Feb 2026 11:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.75.114
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772018163; cv=fail; b=Got8XS0LI6p7tUcUdMLvvSXh+tVxBI7/UJVX6/+Qx9hYNQ0Ln+ksY7MaS31xJx4D1U8djFq+zrMXx08SCGG/nh6mrxXLEKXiVj6xgqfV29WVjBfHvYJ+UdYlYNrBCAIuXyGWfSKA46wLjkx2IlLhJ6moxna63pBEGqXHBEqyNy0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772018163; c=relaxed/simple;
	bh=LmhTHg9O61GOCJGRuO4BDcsz0ydP9c382ItHTFxB5H8=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=gp9LNZ3V0ifni1rKhEcbZYY/7MrVhYnV7PCShZVNk4w3Jkj3D9YZxRu+juk7/ibKlw590DNnEY4chqsVqbq14xwld/k12ws0H0NVoSkF6Ih+U1qa7Yd2SJ3YOisjCfjIajN+iFZHQ0Hy7PZpuzT/Yn1RRjDBVVn8efxnJZ+Ni3E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.75.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dD0pSsG1kxW4DjOFcXpufQBlH1bA7hHsqM85u+J7MNp1H/zRG6qnspRgyTZ4DsDQ9pCMnqmNRxE1aidXZdRuHSbW1AXj8bP0x5sKAE1D5QaoDJKQy1NhidE/VxqWo0ThzOCih2va3/I1gjhLMwRKSxA9/6BS7DoGNo/AU+hDbq3utVw7L6F0M1W9VLCxI9KMcGTQ+xhY+7mDHaMN2GuRxHYNtyvhuYiR4Q1WCNzkNSczbDd4ogUnBdzbsqsKG45TEdS4S8u46jD2NdP8Z+yoRHXkyNshrNinzsaI8Wu/wi74Rn8LeIwolMbij/2XWm0XEWvY6fCKKNpxrNuqeT4pFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LmhTHg9O61GOCJGRuO4BDcsz0ydP9c382ItHTFxB5H8=;
 b=Z+MNwGxOqamwA8EC6ETNdGDnZ4OeVFaZXftML3DiCp6EmjwcceLMmV2hOTUmnAm4nxp3BKuAJoNLdmmf5roaixruLBwJiRfUm/YByDdp/5l4tbn+hMyWtYFbu0gix7UiogrMHwF8Yl285nOOGxUTVSDPkfh5MbhRp7SBBY8xDyYHIomhMCJgbf8OFZfQkYG/f+xlhwIUrM0VcpxOZYcJgK8dwJHv7ZKNOQoIwAvJ3kJkcPU1guYlsolyIcnMCCxOaVy6C2v1H/L3zf4UIE0CJ1tVF2rP3i92edEI4rOXcxErpJykwmCLKdkN3ysmZ0fIZszVsmXVbjwdgAVhk8RmJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from PUZPR06MB5887.apcprd06.prod.outlook.com (2603:1096:301:117::13)
 by SEZPR06MB7089.apcprd06.prod.outlook.com (2603:1096:101:237::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.23; Wed, 25 Feb
 2026 11:15:57 +0000
Received: from PUZPR06MB5887.apcprd06.prod.outlook.com
 ([fe80::f320:58f6:4dc6:b908]) by PUZPR06MB5887.apcprd06.prod.outlook.com
 ([fe80::f320:58f6:4dc6:b908%6]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 11:15:57 +0000
From: Gary Yang <gary.yang@cixtech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, Peter Chen
	<peter.chen@cixtech.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, cix-kernel-upstream
	<cix-kernel-upstream@cixtech.com>
Subject:
 =?gb2312?B?u9i4tDogW1BBVENIIHY5IDEvM10gZHQtYmluZGluZ3M6IHNvYzogY2l4OiBk?=
 =?gb2312?Q?ocument_the_syscon_on_Sky1_SoC?=
Thread-Topic: [PATCH v9 1/3] dt-bindings: soc: cix: document the syscon on
 Sky1 SoC
Thread-Index: AQHcpW7tLjfObRZGA0aC/Q2IW7xCD7WTOESAgAAAfoCAAANpIA==
Date: Wed, 25 Feb 2026 11:15:57 +0000
Message-ID:
 <PUZPR06MB58873921FCCC1B9B34F2C683EF75A@PUZPR06MB5887.apcprd06.prod.outlook.com>
References: <20260224092111.2198005-1-gary.yang@cixtech.com>
 <20260224092111.2198005-2-gary.yang@cixtech.com>
 <20260225-subtle-caped-hyrax-dc99c8@quoll>
 <bbc1cacf-28fb-4021-843b-82ba3c39e51c@kernel.org>
In-Reply-To: <bbc1cacf-28fb-4021-843b-82ba3c39e51c@kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PUZPR06MB5887:EE_|SEZPR06MB7089:EE_
x-ms-office365-filtering-correlation-id: a6162b8a-ff86-4b4d-9988-08de745f3fca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info:
 GmVVormko3ullLl+hlNFdEavsGsTYh18EcgMk+gerziyjjGY4efWZPbX8jeAIBHN5BqunInVCmQx1ZiYDZKLCatOQ3u4KF7+PCwDYd1Yld2LxK45U+S7haldUQunAYB/8KQR8xvXcoVK773coXOOYYTjQpWTMfgfa4Jod2UWxANA+ryN3+xyzyIeygx9o5QdgjXGeoqzlPqtEwSbxSV15r37wlGZVDUxESjbZVktEULvHuOPNItYa7B6zRceXo4FVB/ZoJVc27VU4YWIPS1jFdd2j4U9GqqBi2GEnJIHqEOAlNYJYiZBsajCYEJ5RRbE0ospd95QokgfPIdDoizJfDBn+CAE0NnAjr7rOOk281SWpajP5Q8JGeCw7S2jz47iqVVh9o2rcpKwdG4ZMpSoisJfRV0jTu99rSWDUCZg52led/WRzS23sx4kzbH/UFIHVGwhEERDPwkOPFPzbyWNzWlJQbu6vNzR0BLH3Sp5xFLZBBHafu1livpbFbcKDa0oV/vmKgs8OdwmDJn00Tzy5CbWr/lkMtyStxmRW16z1ySZ1CF5vbLZ851X1XDBnmPK0YprDcSpAPliRYKe+72Txqdps4SeUm6rTzcOHDHypzyMYsiXvN5u4WGPV2m9aibQGcZk9QCun+tOWvqjZmWv+blPD+BpBIkLEwU8DQ7gNb1S4e79vqNriAwCfT4SI/hT3EmYwz+E1ERySsuLDYb+002oe/tnSMmCpaRecxUd26VVJsIg77m31HITRmVdZBmCTxqknRmuqSE03ODJdljEOCEdohHEiGUDqgT5leBUUOo=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PUZPR06MB5887.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?gb2312?B?cDR0OUsvZlR6VUFwU2U5SU1PdGUvdmF0dnV2cXlyNG0wZXlpK1ZDSTlBM1Zp?=
 =?gb2312?B?bThwSEhQTnZVRlhMejNGR0JXVlorWnh3THVROEdDaVNjdE5KYmtndXJWdUR0?=
 =?gb2312?B?bW9zVy9odVJRbDRhZlhndTA5MjgxaExJNTcraEsyRE4xK0N6bThkT283ZVA4?=
 =?gb2312?B?VktwaVluRlEwMm5MVkswWXZCeVd5bFBVZ2wvWXp1N1lSK0NwNmdZQk03QVdR?=
 =?gb2312?B?YUtpTy9IdW5hMjc3eldhMy85OW5yK0pDekI1Ymx2d0p6R2dxN3pYTVBoZEI2?=
 =?gb2312?B?WHFnNzBuWDhESW9IWVZIRjVRY25RUmVQdHMyU0p5Mm1CU1BjbkxZZ3o2RG1r?=
 =?gb2312?B?SDZUcllobVJ6REsxOXRUU3U3K0N5TXpnNzZzY0R0TmtrcWhyUG1KR0FrZjdo?=
 =?gb2312?B?MGpScTdrTDlUZDJCb2E0aWpXTENBN3JLNDdSclNsK3JQejZYOWRudjBDZGVI?=
 =?gb2312?B?elJEY3crQ2h5WmVzRnJLc2FUcTZnSm1LSTFJSy9JV0FxdjdpNkpoODVxTkho?=
 =?gb2312?B?akRPVmRESWZ5ZTJpVSszQkhHdUhOMGNGTHZsK3djOUlNWEtTeTF3cjFhSnFs?=
 =?gb2312?B?cVNRTjc5Uko1ZUJGNE1HSDVjQjFaaWxpbTZqZ1Q2UWZMR09rN2xDNUlJcHNN?=
 =?gb2312?B?bk13WThLN3IvckVzSTlkT04ra2k3WVBEdmhmZHJPMnc3azFNQVN1MmlybUg1?=
 =?gb2312?B?WkVlMjlhV2N1amN3T2dEM3RJMTVBOVYyOGY4T3liWStGWnZ2MWxWY0FPSmpr?=
 =?gb2312?B?cEpaemVEODBKdE8vcTY1SndlVExwMk50dk0xTC9mcjNQRytiQVN4MFBvb2kr?=
 =?gb2312?B?eC9QbzMzZ3RWbForbFRlVE9rcXo4c2VCK1VzOFptSHRUenVFQ3ZEZ2l6b2lV?=
 =?gb2312?B?aldlNWJORVh1Mko5b3FFaTh5TjB2cEx3cGpJUHMySGl4QzY0bnArYlJUancr?=
 =?gb2312?B?QThSc3hrWkVUcUJ0WDFWMlNLemVPNWRwQW1CSWNJVjFpMlNMcUNvRjZrVi9v?=
 =?gb2312?B?cGEydmdkdG5naTRTYXpERzYwbjlVeEkrQkJNeUNMbjBMT3dnNkc4Z2pQb09s?=
 =?gb2312?B?MXJEM0s0QTB0RWFVTyt3VUtQOHY0MUx4bnEvejVsRWNhTHdYbm4zaVhOdTJK?=
 =?gb2312?B?aTBCT1BXRmtqZVZuTXJRSDFjbmhXNmtJeCtZTGxZLzdoaUhIZS9lYXRMTEFK?=
 =?gb2312?B?cWdWSGIvMS82Zng4RGNyRHVMcXRPVEMzYkdjYTNFQzR2MHBieUdiRE10ZExW?=
 =?gb2312?B?VzJtWUhRaTlEazViUzQzYlBNbzNLNHJRNnpjSDZNVmNWVjUrTm1NVnE2NmtP?=
 =?gb2312?B?b25Ua1NxclBuV1dxaHNOb0tWbWdpMXhZK25SOE04NVpwdEcxdmp5WHR2Y2hk?=
 =?gb2312?B?Zm1oOTVnYWhSZHM0ZWZFNlY0TDNGYVM3TXg1VC9iVXBhTzdmbW5DVlZIQ0pQ?=
 =?gb2312?B?ak9Cd0Y5UVRuam9XWGFnejYrOHpLVjh2eDJPaDhEM3FNbFRONG84Z2NJSEc3?=
 =?gb2312?B?d0lRWWVueDA0RWhpR3RHYVJqVVJ1U2FCZUlNLzEzYVdLT1NkSE9GMlFGOW5w?=
 =?gb2312?B?VWp1UXVDS2ROWjAzNG9VZ01rTzZKcmE2cEN0K21QWTAvVUJhb2FKaEo3N0Jt?=
 =?gb2312?B?QmVyYm5kbmFQQ2tpWW9ITGZVUTVVRlVUTU54Q0UxcC9wb0hCZVpOVzJkS2tu?=
 =?gb2312?B?ZzgzZ1h5RGZtMjh3TEQwUVZHWW9tVlJEbnVCL0pUM2ZIMnA0T3RuY2FVdkcv?=
 =?gb2312?B?Mm5VUGtaMDFFdGUwSW51WnFvaGh6SGRxQ0ZUNURkQ0gwTllva2NJUTYwSjdi?=
 =?gb2312?B?QUFnbEJ3Z2dBQWVEZklTUUgxTVNKZjY2UDMyMEU5S3h1UnBPaC9wT0EvNzND?=
 =?gb2312?B?dGNGVUZTTzdtVFhkZFRWUUFQY1puWEF6UXMzN2cwai9wVDR2dWk2aUJtUTFU?=
 =?gb2312?B?enc2N1VrYWNiMDlLdE5aQ1F1ZndJRmFGcUpsdTRiMzd2Q3ozbEZ6NktDYkUx?=
 =?gb2312?B?Y0lzSCtESEpBWWljN1V1YUQwcGg5bWViNGJlVFZITW4yQTlUT1JyVVdKQ2I1?=
 =?gb2312?B?NTJTNE9LckVLSjQ2Y2RWb05KOGduUXZmSDBBNUdNYndSQVFMSUVpZ2lJUm5n?=
 =?gb2312?B?dTYwQzlSc1NOaGZQdm1xc3JXZ0pjcC9yU1UreTBiVjZHN0RXNDc4MXNwR2Vv?=
 =?gb2312?B?OGVkVThKM0lOWDU0amp2VGVDMDYyL2tsaWRDUXpPWG1tQm9qWUZoTXc0RXAy?=
 =?gb2312?B?cUw2MmxybENYRUgwUExERWx1OTBEczNxOHhhK0FPQjA5UEhUSFdjb2ovWmZv?=
 =?gb2312?B?cm5uYlZSTjgyK0ZsdTRIeUhqN05EWjNLbVhzZ2QvaUNCVnF5UUFOZz09?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: a6162b8a-ff86-4b4d-9988-08de745f3fca
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2026 11:15:57.4077
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: teURCbvlh3hfhda8+9jwio+2o7z4WJeKYco0Bmf/hjzYqpyTQss5FdoSa2VNXHvCTqJ/A8Q/ezlzJD5TryjV5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR06MB7089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-268303-lists,devicetree=lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.244.36.0:email]
X-Rspamd-Queue-Id: E6FA9196565
X-Rspamd-Action: no action

SGkgS3J6eXN6dG9mOg0KDQpJJ20gc29ycnkgZm9yIG15IG1pc3Rha2VzLg0KDQo+IEVYVEVSTkFM
IEVNQUlMDQo+IA0KPiBPbiAyNS8wMi8yMDI2IDExOjI5LCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOg0KPiA+IE9uIFR1ZSwgRmViIDI0LCAyMDI2IGF0IDA1OjIxOjA5UE0gKzA4MDAsIEdhcnkg
WWFuZyB3cm90ZToNCj4gPj4gKw0KPiA+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQo+
ID4+ICsNCj4gPj4gK2V4YW1wbGVzOg0KPiA+PiArICAtIHwNCj4gPj4gKyAgICBzeXNjb25AMTYw
MDAwMDAgew0KPiA+PiArICAgICAgY29tcGF0aWJsZSA9ICJjaXgsc2t5MS1zNS1zeXN0ZW0tY29u
dHJvbCIsICJzeXNjb24iOw0KPiA+PiArICAgICAgcmVnID0gPDB4MTYwMDAwMDAgMHgxMDAwPjsN
Cj4gPj4gKyAgICAgICNyZXNldC1jZWxscyA9IDwxPjsNCj4gPj4gKyAgICB9Ow0KPiA+PiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9jaXgsc2t5MS1yc3QtZmNoLmgNCj4g
Yi9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L2NpeCxza3kxLXJzdC1mY2guaA0KPiA+DQo+ID4g
SSBhbSBub3QgZ29pbmcgdG8gcmVwZWF0IG15IHJldmlld3MuDQo+IA0KPiBRdW90aW5nIG15c2Vs
ZiBsYXN0IHRpbWUgZnJvbSBzZWNvbmQgZW1haWw6DQo+IA0KPiAiSXQncyB0aGUgbGFzdCB0aW1l
IEkgYW0gYXNraW5nIHlvdSBvZiBpdCINCj4gDQo+ID4NCj4gPiBOQUssIEkgbWFyayBpdCBhcyBj
aGFuZ2VzIHJlcXVlc3RlZCBpbiBQYXRjaHdvcmsuDQo+ID4NCj4gPiBLcnp5c3p0b2YNCj4gPg0K
PiANCg0KU29ycnkgZm9yIG1pc3NpbmcgeW91ciBhZHZpY2VzLiBXZSBqdXN0IGNvbWUgYmFjayBm
cm9tIHRoZSBDaGluZXNlIE5ldyBZZWFyIEZlc3RpdmFsLg0KSXQgYWxtb3N0IHRha2VzIHR3byB3
ZWVrcywgc28gd2UgZm9yZ2V0IHlvdXIgYWR2aWNlcy4gRG8geW91IG1lYW4gdGhhdCBjaXgsc2t5
MS1yc3QtZmNoLmggDQpzaG91bGQgYmUgbmFtZWQgY2l4LHNreTEtc3lzdGVtLWNvbnRyb2wuaCBh
bmQgY2l4LHNreTEtcnN0Lmggc2hvdWxkIGJlIG5hbWVkIGNpeCxza3kxLXM1LXN5c3RlbS1jb250
cm9sLmg/IA0KQXJlIHRoZXJlIG90aGVyIGFkdmljZXMgZm9yZ290LCBleGNlcHQgdGhpcyBvbmU/
IFBsZWFzZSBnaXZlIHVzIG9uZSBtb3JlIGNoYW5jZXMuIA0KDQpJZiBtaXNzIGFueSBpbmZvcm1h
dGlvbiwgcGxlYXNlIGxldCB1cyBrbm93LiBUaGFua3MNCg0KQmVzdCBSZWdhcmRzDQpHYXJ5DQoN
Cj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQo=

