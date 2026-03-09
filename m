Return-Path: <devicetree+bounces-272660-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOAZE8MormmoAAIAu9opvQ
	(envelope-from <devicetree+bounces-272660-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 02:56:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C74DB2331C0
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 02:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1503030058D1
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 01:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 044D621FF2E;
	Mon,  9 Mar 2026 01:56:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023102.outbound.protection.outlook.com [40.107.44.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF0D19309C;
	Mon,  9 Mar 2026 01:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.102
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773021376; cv=fail; b=P1V18PBxIz/rRUryPbKJFIy9ojxQFlSYBOVYdn4vEEfoa6j4ddp8332t27XrBJdKPb8sPWMQWY+p1HwGXpqTq9RTxpUi0Y91Au+xOT6NuoMN24vEe4vQtRQJaDtUhSbU59exN++RwPeC6oYkZoJ93kEmNbgMQUeyRQcDvpvyEVc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773021376; c=relaxed/simple;
	bh=4esOkqEl51B4K8UEJo26AgDR3BJdrppvgbQ877At60o=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=XKDkfXu1usoF5vcDwR2cWFM9oyDlsGhent96XNgBOjqwE1UsiGq3ZzwQja1pBiOvyTKiQrddzdInpkpjM7HafoabQ88HO/6hwEVBc6qC0iWntJnmtA/KQRIumxkIxh+8onbbjJIBFsyQiLRW6BMBOMe5XAW02t+KNoQ6Ji3Fc3M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MpuoQyGp8jZyV810lV6MMdvjQegP3mEtv19QnqusGmoMQj4YfPDgUsKDhGVT6p+cnmQs8cVUL3C+mgJIDIw/WcEO9wKOvZ3vsYoqZ3BoWjZ5AEahMbdbeQZ+sV9jk6qR0KlhAOeZraElYhikKCCpxhTZa1p6vrWxeQRAHboZH6TakO2wF9EuzdtEQkp40W+Y+WxQmUm0a/yuj6oju1DmE8GyKC1FD1oHhSPC3y3rflFT146JxpdTAKS0Hn9aFnGi5Nb6e4y4S5RYn7s3Z432ACZmGXuxAjesdkG+BUwPe3x5KmiMsUBahNT9TSZcReOeQpBWG6sq5J4O0YXFrvxWFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4esOkqEl51B4K8UEJo26AgDR3BJdrppvgbQ877At60o=;
 b=TzLmEFaD1XR9oXwpowqJEEqZ3xPt4Hl5GdY01ZfsyZR3NLkqC1h0Lg5yBF+0lneTvGDkoBSfi3sSV/PrnhWLHZetyXr9As/Td864HpjP1o4pZ0q61sUjdaycqRPwSw4efAVkMR3lfAzcBZQ2YAyE5tQmBHsRihu+wUtNEBYQD2CpqS1j60/FqCVsLiNN3xHI03orkqcbwghR+0crGErdB4TlVBaNPQtjeZugZt2RLnoo1JNYTVpdu3ObzROl2fKH0FdExGrsmX17soidlDmYSkWZe+duhG6iMRoL4Ky8KwhLmJED3Db2EDLpI0I5iC39v8x02wC+f7jcOrwv8HQ9yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from PUZPR06MB5887.apcprd06.prod.outlook.com (2603:1096:301:117::13)
 by SEYPR06MB5767.apcprd06.prod.outlook.com (2603:1096:101:b4::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.24; Mon, 9 Mar
 2026 01:56:11 +0000
Received: from PUZPR06MB5887.apcprd06.prod.outlook.com
 ([fe80::f320:58f6:4dc6:b908]) by PUZPR06MB5887.apcprd06.prod.outlook.com
 ([fe80::f320:58f6:4dc6:b908%6]) with mapi id 15.20.9678.020; Mon, 9 Mar 2026
 01:56:10 +0000
From: Gary Yang <gary.yang@cixtech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Peter Chen
	<peter.chen@cixtech.com>, Fugang Duan <fugang.duan@cixtech.com>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, cix-kernel-upstream
	<cix-kernel-upstream@cixtech.com>
Subject:
 =?gb2312?B?u9i4tDogW1BBVENIXSBhcm02NDogZHRzOiBjaXg6IEFkZCBzY21pIHBvd2Vy?=
 =?gb2312?Q?domain_nodes_for_sky1?=
Thread-Topic: [PATCH] arm64: dts: cix: Add scmi powerdomain nodes for sky1
Thread-Index: AQHcrUiZ96fS8Cfpak6VqvLDJt/Ib7WjMiuAgAI/eSA=
Date: Mon, 9 Mar 2026 01:56:10 +0000
Message-ID:
 <PUZPR06MB58876D6D6752128F8F0154B7EF79A@PUZPR06MB5887.apcprd06.prod.outlook.com>
References: <20260306090659.990527-1-gary.yang@cixtech.com>
 <e09f1c6c-bf5d-4ebe-8a61-74f76830248c@kernel.org>
In-Reply-To: <e09f1c6c-bf5d-4ebe-8a61-74f76830248c@kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PUZPR06MB5887:EE_|SEYPR06MB5767:EE_
x-ms-office365-filtering-correlation-id: 450482f6-6c5d-4212-ec43-08de7d7f09a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info:
 nfsLo5eXDlqyen81kYOF1Ph90iE9jBciU++VZ2LPioSFlOWm7kTXgm1VR82STM64oLTQdgdZHlPrF5orfItVu6Z9bUEW561Sb6IGXctBes94G+kmH71XQ3NkvPwVY04YFkrWCENz566sH8quVZu4I6woVj+Wlo8KokUi3SGES+4CVcLM+wmsu9ZZ15a2LjR/UA5iqdQcykM8F34OJeHXXmZ0B2MOFefg6AIphnLnA4Yymp/yDsfP06qk/G6TMt5fr4S+9mLpEpM6+rnyWYA0LCTRnh9qdQszVyl6eK9ftoBFta8RTSRIc4Y40Lt5KW3moKdw55avZ0299FwFt0vPV7batL4+m7fIrRLSVJna+g23nhaiCxUaXiM47AKpGxBqoUOl4hYusN881oc0JlMrkGqNOi1kakJXUCGWVBtDGSz3iVXgtW9eBcsZVXgYgbaZkmy91G7JvqNG2i7aMzBKr+spAPFM6bmoNRigWf+BMsn6o3+fyfPjgrWZx/Lo5oC7xVf/fsgPWkqQh/23g2n8L1b/bLcXr0Xyin+qGNhlqvaeOc2wzM1AKkKfH+8cWVe4Bf0GjcD6rHxcftFXgdoKMqJ2C0fSK8pbGjvEVjF3tdDjATabXJVqgHS3usExR4Z4BK1rDheg1dC50ilajXEr7Lzpzh2l2LOmoAKV4yXE9fS0tmqIVMIFCwq+x4h/DQfnIknlOy4e+QdaIx6qxZA/Q7UbzHdlPY8dN3ncTL1u+xwVwFNtLM4/efPKD1ksFP+ElyVXwZJSJtEY0WuOCZDDxEcTaKZr+Yut0gjyMCiBeKU=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PUZPR06MB5887.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?gb2312?B?TGxhZHB2MFJlNUFqVkorQWNHK1A1U3E2YnF2bS9LTnExTndrN29Pc044SzNS?=
 =?gb2312?B?eEphcXFqa3lQVEV6Q0hvYzZVb2t2ZTVlYWlrdXkrYWhsNFFQVHFHYXl6eTRw?=
 =?gb2312?B?dGRMcVRGZHAybzhnNDdwUUI5RjExbithS1cwa1N3eHNDQ2ZIaTRHQURLcHVU?=
 =?gb2312?B?U0hvSER2d3NTeGNDRmJ4eHBPTm8zdjg3Y0pmSGh4Wi9Jd2RMWVJGTngzczlv?=
 =?gb2312?B?M1h0L3R6YnB4UkVmL05jUzdIQkFMcS9mZ3RuVWFUUko2UVE0SDV5UmlnVTla?=
 =?gb2312?B?Y0lsVUF3NG4yeWNkTlI1ZXdnMmgxd1BLOURDOHNWUVdqYk9oT1R4VmcvTnAx?=
 =?gb2312?B?NmZab2MzWjkyNHY5UEsvcXppT3cwK09XTUpnaDkwajY1ZXMxaCtjc2FZalll?=
 =?gb2312?B?U0dTclJXQjZwQzFtU0JaNy9hR0hPZHZDd0xJYUZCZnZweVY5OWtSU09ieEhU?=
 =?gb2312?B?YkZCRlVRS2tCUzdiaXJvb3dsclVmbHArMjVxU0RWak12RHU5bmJHQXdOUHlk?=
 =?gb2312?B?OU1YTDJyZDY1VlRXM0FWYkVtbExPYXFqTG9iSVVRTFo0UDZVRktNK2pmYjJM?=
 =?gb2312?B?NUg0bEFYUVNrQzByWSt2YnJTNGhkTlBtQjQycnpWQmpiQVNONWtrRFp1VXlm?=
 =?gb2312?B?RHpTMjM3djBXYk1wMFIrcmVuK2ZMTHpZdTdTY1VCY0YvWWU5WmV5QitjOVhE?=
 =?gb2312?B?OVN1d0FHcjczNVhXWmp2enhXM2V3TTdqZkVrMHI0ajNtdDBsMmV2T3NBQXRt?=
 =?gb2312?B?MzR0T2N4U0NYdE9NYTNtcW9UajM3bStManQ4UTQ5a1pIUGFhcWZpOXQzNGs4?=
 =?gb2312?B?QUpJRFNPamR2ZXYwL01LZ0xvQWNzZFdSMi9CWkFSa0x4MXBYN2JLM0h1SmVD?=
 =?gb2312?B?WFUwM2UyYVA3VGsrTXEvSWZTMUVkb0lTWWxxNytIV0VVNlcyVCtNenM0emxF?=
 =?gb2312?B?eGlDbDVoZDRIekxMUDZXM2laRHZsOVJVMzdhUjFqZys2QndWNitpMWRzam4y?=
 =?gb2312?B?SmhnS1gweDUvT3JzVTZ0T1l2R0F3RUJBdm5aM1NLK0h1MXhlOVVPNnRGV0Ew?=
 =?gb2312?B?TXIvSXd6aXc5VUpWRlU1Sjhqc3JsWUUzK0h2clJ0L08yUHlaRmUyS3VGOHp2?=
 =?gb2312?B?UTd1NjFva3Zkdm9zanJHemdrbjArVU8vRC9JeEpTRE50amVZL0tDK1lHZ0Fu?=
 =?gb2312?B?bTdOZnpCeXNvdDVRTndjY0picEl3S1BFTnFZcWY4dENXRk9MbjE2TDg0bGlX?=
 =?gb2312?B?dDI1SHIrakJIRlJWQ1RpSmdCbVExcGxYd2J0Z0VBdVAzUlpzai95M1FmZ0F3?=
 =?gb2312?B?dk9TYTJyNE80SXNEMGQvZGtCcGJZRmVkL2NEM3doVmtjSkFMN3VUYllQNlVZ?=
 =?gb2312?B?Z1dwMDZtdEJld0NIMUYyYVJoUzRSOE0zeGh0QzB2ZTRqQ1p5SlhrMEh3WSt4?=
 =?gb2312?B?MzlJSkxvV3NtMzk3THFtZC9oeVdpRWFjWS91U3RmY3FEWWpMSmJCRzN3OTk5?=
 =?gb2312?B?K0I4NHZkYlNFQzA0MFZIemRQWlMvVy9UUStMaGNXU0REQlZQNC9na3pQeFNy?=
 =?gb2312?B?UFlXQkMzNEZiMlNLUityZFNEcFdQQkNwNU1ubjFrZmNocE42NW91NDJRWGZS?=
 =?gb2312?B?eFYzaTVJQ2tDblBVZWh0NTdKYjM4eTZ2OTBLMXVtSDhNUzllYnRrQlNYQlZj?=
 =?gb2312?B?bmVNbXJ2ckFCOG5id1F2dUEyenh1UkozV0pBQWIzeFJJL0lydjBiMVVFWkpk?=
 =?gb2312?B?OURMV3Y1eEtnY1FpZkM4OE1jUXE2SjZCZHZCNHlyNlQ3TzNXaW84MDYyMUxN?=
 =?gb2312?B?TDY4K0JTWGYrVjFvdy9YM0FlY3RLcXF0ZklwN0VNaTZNNnIzb0NVekJCakpr?=
 =?gb2312?B?QTVuMjl1UUVBL1JMeEpieHBoNWJ5YllTNEc0N0JpZFhpVUU3T2c3WFg1T09v?=
 =?gb2312?B?cENHaklMdElNYTVBQW9xanJHSVJsRk9qMmEySnptb2NUaXlCRXVqVmtYOEJ6?=
 =?gb2312?B?TjZIZTI2L01uMTVKN2dZQjJNbk02YUVVZ3R0c1dFbldSKzc3dmlUL09ZMmds?=
 =?gb2312?B?VGxXbU5jZlc3YnB3VTZwcGlzSDJWZkxPSXpzTW8wWnljbll1N09jbURNaUdi?=
 =?gb2312?B?Rmdqa0xNbnRtZGtLMXdZNG9EUExuRnlnQnlHWk5DQ3o1Y0hHVXg2SXNhRFE3?=
 =?gb2312?B?dUN3dFFkNkRCZWpkdG80RmhmR3NOY0dOeFZ6NUJiRHY1U2UxbHlaWVZmTHpT?=
 =?gb2312?B?N3NoV3A1UzJ1M3ZVelNvSi9MSWl5cVNlb0M5WkRhenM2NEpTOGE2L0haUTVC?=
 =?gb2312?B?aisxZkt0amdqZllGNElsMVV2RlVicXQzR2NDTTY5ekFrRzkwVGZKUT09?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 450482f6-6c5d-4212-ec43-08de7d7f09a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2026 01:56:10.9211
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SWjYSwXih+v/Iln8n+ZqoVRrVABM3PjilDeUnDn5E81KBIyRHaJXO+UbDEw4OKSeoYKTmd7I/8BMV4q3qsekFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB5767
X-Rspamd-Queue-Id: C74DB2331C0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272660-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.964];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,cixtech.com:email,PUZPR06MB5887.apcprd06.prod.outlook.com:mid]
X-Rspamd-Action: no action

SGkgS3J6eXN6dG9mOg0KDQpUaGFua3MgZm9yIHlvdXIgY29tbWVudHMNCg0KPiBFWFRFUk5BTCBF
TUFJTA0KPiANCj4gT24gMDYvMDMvMjAyNiAxMDowNiwgR2FyeSBZYW5nIHdyb3RlOg0KPiA+IEFk
ZCBhIHNlY29uZCBTQ01JIGNoYW5uZWwgdXNpbmcgU01DIHRyYW5zcG9ydCB0byBjb21tdW5pY2F0
ZSB3aXRoIFRGLUENCj4gPiBmb3IgcG93ZXIgZG9tYWluIG1hbmFnZW1lbnQgb24gdGhlIFNreTEg
U29DLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogR2FyeSBZYW5nIDxnYXJ5LnlhbmdAY2l4dGVj
aC5jb20+DQo+ID4gLS0tDQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvY2l4L3NreTEtcG93ZXIu
aCB8IDM0DQo+ID4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiANCj4gV2h5IGRvIHlv
dSBhZGQgZGVhZCBjb2RlPw0KPiANCg0KVGhlIHBvd2VyIGRvbWFpbiBzZXJ2ZXMgYXMgdGhlIGZv
dW5kYXRpb24gZm9yIHNlcnZhbCBtb2R1bGVzIHdpdGggaW5kZXBlbmRlbnQgcG93ZXIgZG9tYWlu
cy4NCkZvciBleGFtcGxlLCB5b3Ugd2lsbCBzZWUgR1BVIHBhdGNoIGJhc2VkIG9uIHRoaXMgcGF0
Y2ggc29vbi4gU0tZMV9QRF9HUFUgaXMgdXNlZCBpbiBpdHMgZHRzIG5vZGUuDQoNCklmIHRha2Ug
YW55IG1pc3Rha2VzIG9yIG1pc3MgYW55IGluZm9ybWF0aW9uLCBwbGVhc2UgbGV0IHVzIGtub3cu
DQoNCkJlc3QgUmVnYXJkcw0KR2FyeQ0KDQo+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQoN
Cg==

