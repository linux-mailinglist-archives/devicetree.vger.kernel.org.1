Return-Path: <devicetree+bounces-276481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YA8DEA78uGkTmwEAu9opvQ
	(envelope-from <devicetree+bounces-276481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:00:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 881BA2A48BC
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:00:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 27E4F30067B1
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 06:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A5843491C4;
	Tue, 17 Mar 2026 06:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b="r0DOpiZp"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011066.outbound.protection.outlook.com [52.101.65.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1F51C862D;
	Tue, 17 Mar 2026 06:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773730770; cv=fail; b=nIecT78RAgUDyeCiw41Ed9n0jG/CmuR6+2UzVCyVCgAmsNHO4IccH9RpWnFDGBE6tgQ9ndnfjMO5HPOE7Cz7EEGWmxAse6rhbjxTuzw7VAwHeCantSMYVkVgT9GUabWOFNH6kEuhFj0FfIDWCl+Sb510yCkWEIpcihZKqMuVL+8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773730770; c=relaxed/simple;
	bh=tqNkR/XP/njX2Uhjnn8fcD6a6LCDkhydFK4TPuX/S+o=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=iuNtLlMQv+Fh5kzAd1gr+AHLyBXfeLxgI8HIJRJfzPbjJUqW60a6uIZdtNhG/zzCm5V/Y2u53qOt9X5Qssvj1ztb6y+928abXSVNa8F7A8AncTSAgHpB2X/uQIxDYZc/MNIE2nUBpt+YOzyzXdk5eMgulCUKLielPJQmGvkH244=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b=r0DOpiZp; arc=fail smtp.client-ip=52.101.65.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=siemens.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z10akgcVldbRghr3g4c2dPmuR9nzTWl23mlMV1paSm5/g9arj80Mxyu9LnuhveckGOTHh175IzrD3l5lNFeUtD3NXu6sMY3N1q1ItrcOwvthVXr9Oqob4OvqrQntFUU924YF8R3Z4EyjYAuDLdPEPhbfVRe7rHnJWU71lLWcJLFQpLXK5ODmoiyVd9RM/Whg8QrXSiU3l7SVorDwMPtghL7bSlE54+BS3WvDW9IIkqDUP8OdtMujHZ/Kg8SmmOCcCHOmxX30TKpO51ua85R/9oimTbhnRhY892uj+iONwOPXWA+RF0dn3BWecjpWv6jOcfjBiL6Sa1YcE4kzJNoUaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tqNkR/XP/njX2Uhjnn8fcD6a6LCDkhydFK4TPuX/S+o=;
 b=NBHEtMNmk50IRXFs69tB5tvXZ9iDl1N5z2JfDS3jeyZg3Es/Qm2wlczhTe+S6t7hh3I6jvoux/uq3EY57CLyqpnX+gzuXvcKe6V/VrDX8qP0wMNX7GCy8gw8y2M8fGSaILgYXsGuXWNv6O75yYMX9TakPXkLpFg5G1gIDCtMC2mUsW7s1rvT8td41kYuSIIM206HGgPWFdzOdweiEjaZg1g9d3Chu3EZqjyz0GAch8b5UZqsVbl3xyHoeX37n6ukJMC2V5juTNKnyzLQy+PfBYh+vBXk95zfVSd6vIwTWjCOFidEDW5Fk0DpnFcXiLuFu9Elk2U07GlAQaJ0riiCew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tqNkR/XP/njX2Uhjnn8fcD6a6LCDkhydFK4TPuX/S+o=;
 b=r0DOpiZpFfOwufrlVadRIdgaQjn5fu1RsKg9Yltb4J4CiDmYSbmbIG10dl/48/JRLf0dHWxOr1xUllK6C/jiuDFYQubA6GrfXDEPCupPnvP6I9Ee92A+iY8xI0V4PTOkUUEEL63x9DhQKR82HR1lQVrdbLxI1Q6TBprPMPW0rnd1Obxc+RN3IxkS4pS/h/bdo6J3vTGsJPPRo90F16OfSesQ23sTGYYQ0y9UmIdUtlKA1RHIp7Gnxz1jt81JT1ykJ9t5phmkpU3suBiUNljKRgX6tRxb5hDqpan89cEin/1G5mTUOp3zwDi00prioSQdlmXudL+F0szkAPgclJTG2A==
Received: from AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5b6::22)
 by PAXPR10MB5328.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:281::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.25; Tue, 17 Mar
 2026 06:59:23 +0000
Received: from AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9126:d21d:31c4:1b9f]) by AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9126:d21d:31c4:1b9f%6]) with mapi id 15.20.9700.021; Tue, 17 Mar 2026
 06:59:22 +0000
From: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>
To: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "vigneshr@ti.com" <vigneshr@ti.com>
CC: "s-vadapalli@ti.com" <s-vadapalli@ti.com>, "afd@ti.com" <afd@ti.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"j-choudhary@ti.com" <j-choudhary@ti.com>
Subject: Re: [PATCH v2 3/3] soc: ti: k3-socinfo: Provide reset reason
 information
Thread-Topic: [PATCH v2 3/3] soc: ti: k3-socinfo: Provide reset reason
 information
Thread-Index: AQHctRNPoKm+Ma9sf0OFuK9kvaJrHbWyOUGAgAATwYA=
Date: Tue, 17 Mar 2026 06:59:22 +0000
Message-ID: <9dfc175b64964919480d8f7c9867ba0110bd4033.camel@siemens.com>
References: <20260316070429.1545707-1-alexander.sverdlin@siemens.com>
		 <20260316070429.1545707-4-alexander.sverdlin@siemens.com>
		 <7ff12e4d-a1c4-4a7f-b80c-62b68f698672@ti.com>
In-Reply-To: <7ff12e4d-a1c4-4a7f-b80c-62b68f698672@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.54.3 (3.54.3-2.fc41) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR10MB6867:EE_|PAXPR10MB5328:EE_
x-ms-office365-filtering-correlation-id: 0782c8ec-69f7-47ad-f9f4-08de83f2b83b
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|376014|366016|56012099003|55112099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info:
 rmbiCXMYs/id/cw6i1PhppozlANf0ZwIkYF84/MEhhgEEatUYNYp58AWHnfeHdNr2+B9wE5x9JaH04QHN8gYoEexTvyW68gENMI5GAgMFOew8A848ztt1dUrlZXEosMts4UnbvR0z0bmNWTUaLdtmLChl3uSic0tAO/+amISCI2rx5YRx8dQ8T3Of/HRp7cdzKJZ53xH1oMKQ0qmFLs7SrmKvuMSUBr2JXX3+5fAprrigo2gRJPJXghErphKhbpQeS8Vc0OFyNUBD86Ha1hABf2Fj76520cNuRjD+PrUtWUH9yhPKkv9Etczus3BLHKCZnXgjjku2c3FVi7p2oBlBme7RuDBCTmfOvfAkUkDAMxGiUdF8k2pO3fWS0fWFhPtIHBDCjmUdnEWB8+u9WH6yGvTL0qz8e/AdBzPBzYUFNUSmq3fENaJWL8hpecSpDNBcR6q/PkkW1Cy61LmSvDsCbHkF4jc+W9sqC2c5JXE32O0sSyB3H8EmRMcR+vgg97OYeDPHUAya6eHmi6KkNFfDQgOdJ4LvLmIprMhDlSnVht99lyW5BlCaWJyHsVbQwbaJ3I6VNr5adgamVVbYtse0sBCPbXHDtprdWawkzIryhmKPXjJabYTYFkaUWRSG3BJh6TFzFLA5KMgz7uef79yS8iHPkXQbkWXMg1HxQPOb06KVy134oDJAt4pe++ECnNAzER8bRBAmzNEpY95S4Cgr/M09khOJlCv39tOSYl/si+9ZsSy5JqGegLjrZaGrVoZ
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(55112099003)(22082099003)(18002099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?QW9iUFMrSWwzT0llOXVQU1E1dHhEK09NZndvZElFeHpqZnc1WHZUWUUyakNy?=
 =?utf-8?B?ME5hcjNjZTIrMDF0SDhXaUl0cW8wMEFESzFTZzNOYVZOWGhGU0dWM2ZINmRP?=
 =?utf-8?B?NXV6UzlwbkZDMHRua2pIRnE4bjczSXQ0OXdNMGtSbUx1eldlaVA5V3p4dzJB?=
 =?utf-8?B?ZEZTVFlDcUhoWklsQ2cwK3hzcXlMTnpzVWxzOEd1UU5QTFhLQVFZaXZvMkcr?=
 =?utf-8?B?MEovWlpMNlJvcGxtYVhYbHY4aUxpdVJlSjNQRGRsSngrWkFuSnMwSUgyY2pR?=
 =?utf-8?B?ZHRZYVlJdmpTYUxSVy9Qd2lxdW5DRVlLQ1lRMzYvaXMxQWRtdUpxK3ZCM1Az?=
 =?utf-8?B?eksxTGhkSU5vVEh0K1VCY2R5RG1lY091dVd0dWlweFdFclBNYTVkZ1FIc2I3?=
 =?utf-8?B?d0JBOGYvaFk1Q3BPdzB0UGNhTjcrcnp1dkFJZHMrTU5VT2MreDhTVnlmNUVw?=
 =?utf-8?B?RHZZcDF3NGNqcGtNU2YxNVFmK2FkeGJiU0NrSWxkaVRETnQ2UitLNUloMWJ3?=
 =?utf-8?B?TXFxMUFScWJWL0o3MUpGRVIxZHBpSFBqRitqUHdFNkxTajNSWTlPV1M1Q1E3?=
 =?utf-8?B?VEtQdXVSQTdxSjl5VEZ6YWZtSU5JRVFuOEtWbW9OZkZjTjIyMHBzd0MzZ1Ry?=
 =?utf-8?B?cWxTOGdGQ21KOElVUGR0Z1FEc0ovM2s3dDduU3Q5RUlhOXZTbCtVZUk3YnZP?=
 =?utf-8?B?b2hvVWVQYjBVU2V5elJTcDR1eDkzT3VXQ1Z4anhPREhlSEZWTDdWa3g4S2tW?=
 =?utf-8?B?WW1aUTJKOUZBZkZPSWtXR0JmbGVCUFRFa09icWtsNDFyS2hRa1JlSUlZOUxF?=
 =?utf-8?B?UjhmNEpkKzNtUE4wYUtTcktpUHIvSzl5cVV6OXRIbWNZZ05EM0Q3czdGOUFQ?=
 =?utf-8?B?VGFOWTZla0VlV1Y3RTJZZTFWNWovR2s4U1FWMlIvOXFTMURiZXgyQjVIeTJ1?=
 =?utf-8?B?MzZKNUxjQkhjemR3cGdGU1JtcmlEZWxnZHpzcHFkVHJ1c0lqYURVYlc5NXJX?=
 =?utf-8?B?d3ZmQ2VtOXJ2Rjc5K3FIUklqcnV4SkJrSnQrcjZEaUhvSnVuVTdabmRiTVZq?=
 =?utf-8?B?MllFdkIxbFFaSm1qVndGL3IyWkVkTnVPUmVUdFM1OXBqQXYwOW5KY2NHUFcv?=
 =?utf-8?B?d2FTNzc3Q2JTR3k5aW0zTnZ6QmlQNmtXYkxOT3R2NmV1dUYyVEgwbXExc1BX?=
 =?utf-8?B?cVZEWFh4UnB6ellobHU4Vk11eVpaNHFxekFDOVgrU2c3SFp3NVBPODZWbGYv?=
 =?utf-8?B?c09FeU16aHE5MkhNdnhkRUJtTXByK2JrNzBubHJzdFpQaTlYeEhQTEEvY2di?=
 =?utf-8?B?YTY4cEpVM1BDVGtuT2d3Q1RRYmhUM05LRVhJdXF4L2lPQmY5NUdobTkvQkxy?=
 =?utf-8?B?OU13aGlGYml4ZlE1MGloK1dDUEdUMVdZaldnNTBMSVg0SlhqSU5qMHZ3S1ZN?=
 =?utf-8?B?SHZtWFNOKzRaNlJWU3FJS25ZSmtDNlZhVFFYcGZ1eWJpWEwwNmR3SHFmWlBI?=
 =?utf-8?B?Z0pMYytjR1pHdVRKakpKNmFSKzFKVUhSZW8raFBSMVVCQXcrQm1wNGJKM2pq?=
 =?utf-8?B?UDhXamZpUHVYYzkwSUw5M3FUWDVIcGZBVVNoR2ZGNDlvVGRNeDRCU2J3cldy?=
 =?utf-8?B?OFE1UkEyVWx3a3M3NDlJb3F3Wkl0MU1SckdGUzNjbndFd1N5UmpBdWtMR3BX?=
 =?utf-8?B?eWdQdUJnNUF3OVB3MVJMRGd6QTBOZXlLbEE2OFNXQ2VsOXRrUjRsWkRETlU3?=
 =?utf-8?B?SDRiUU1LOXhGYnI0cU1wOUhiNjZZeFRha2JPUkE4YXJnUHFHQnJIbnNYcmV3?=
 =?utf-8?B?T09Xc21FaUJIdXNsZVZZa0xPY3ZGQWYrSUtwemYzUTV3a255bFRSeDdHc09h?=
 =?utf-8?B?ZitNYWt6NTJxREV2V0U1UlFjbHZYNkViTkNST2N3WXRZcStWdnZ4VVV1cjlQ?=
 =?utf-8?B?aFdIaC9SVTNGY0lieVFTL3R3dVFqMHZQbmt1Yk1nd3ptSHdBMFpKUFVxaW9I?=
 =?utf-8?B?T25Rck1tWWp3VGNKNU53QzB3R3Zza0NVMFgxNjF0YklkK3B0UEl1MkcySXZL?=
 =?utf-8?B?dVhVb3p0UjlGemVINzJlejJoNkdQYnBkaXZ3anNKbWVpODg0WnhmTDZOeitN?=
 =?utf-8?B?SXFhV3RsOXU0N283RG8xNTVvMXV0cmZ5UkxtUjFON3ZxVlF0VURQK24wVWVl?=
 =?utf-8?B?Qmh4ZHlBaXkzNVpBWWhwMW85VUEyYld1SlN5eE91UlEySzE4aXUrcFZFWWVj?=
 =?utf-8?B?QTdpdVdiMXZ0OENRaFFnL2RtcWVUd21IR3J2VGRRZXFyMTZWc2ZCby9VVGs1?=
 =?utf-8?B?NG15Mzc1QjFHT0MreGVVcEsyMzFOR1cxY3o0QnUwbjdSZFdTOUdncFFKSmhG?=
 =?utf-8?Q?/f17FGIwoS7fJphw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <45D4100173FFF941BC98EF021E554605@EURPRD10.PROD.OUTLOOK.COM>
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 0782c8ec-69f7-47ad-f9f4-08de83f2b83b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2026 06:59:22.9168
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HFK7G4+6w34EZFCVudTRwd8lJ4DIQSaft8JAH6ElH3Zi3YCZpvYWpQqC71T5HYIsI+l2zHxabfm3mlwfzHVl0kjLmsnGkGmcOE4A3a96e/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR10MB5328
X-Spamd-Result: default: False [-0.06 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[siemens.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[siemens.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276481-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[siemens.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.sverdlin@siemens.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url,siemens.com:dkim,siemens.com:mid,siemens.com:email,siemens.com:url]
X-Rspamd-Queue-Id: 881BA2A48BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgVmlnbmVzaCENCg0KT24gVHVlLCAyMDI2LTAzLTE3IGF0IDExOjE4ICswNTMwLCBWaWduZXNo
IFJhZ2hhdmVuZHJhIHdyb3RlOg0KPiA+IGFuZCBsYXRlciBTb0NzIG9mIEszIGZhbWlseS4gVGV4
dHVhbCByZXByZXNlbnRhdGlvbiBvZiB0aGUgYml0cyB3YXMgdGFrZW4NCj4gPiBmcm9tIHRoZSBB
TTYyeCBQcm9jZXNzb3JzIFRlY2huaWNhbCBSZWZlcmVuY2UgTWFudWFsLCBleGNlcHQgdGhlIFBP
Uiwgd2hpY2gNCj4gPiBpcyBub3Qgc2lnbmFsbGVkIGV4cGxpY2l0bHkgYnkgdGhlIHJlc2V0IG1v
ZHVsZS4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgU3ZlcmRsaW4gPGFsZXhh
bmRlci5zdmVyZGxpbkBzaWVtZW5zLmNvbT4NCj4gDQo+IA0KPiBUaGVyZSBpcyBzdXBwb3J0IGR1
bXBpbmcgcmVzZXQgcmVhc29uIGluIFUtQm9vdCBmb3IgQU02NHg6DQo+IGh0dHBzOi8vZWxpeGly
LmJvb3RsaW4uY29tL3UtYm9vdC92MjAyNi4wMS9zb3VyY2UvYXJjaC9hcm0vbWFjaC1rMy9hbTY0
eC9ib290LmMjTDEwNw0KPiANCj4gVGhpcyBjb25mbGljdHMgd2l0aCBrZXJuZWwgYXMgVS1Cb290
IGN1cnJlbnRseSBjbGVhcnMgdGhlIFJTVF9TUkMgYWZ0ZXIgcmVhZCAoSXRzDQo+IG5lY2Vzc2Fy
eSB0byBkbyBzbywgdG8gZGV0ZWN0IGFkZGl0aW9uYWwgcmVzZXRzIGF0IGJvb3Rsb2FkZXIgbGV2
ZWwpLiBTbywgdGhpcw0KPiBpbmZvcm1hdGlvbiB3b3VsZCBiZSBsb3N0IGJ5IHRoZSB0aW1lIGtl
cm5lbCBkcml2ZXIgY29tZXMgdXAuDQo+IA0KPiBJcyB0aGVyZSBhIHVzZWNhc2Ugd2hlcmUga2Vy
bmVsIGNhbiBtYWtlIHVzZSBvZiByZXNldCByZWFzb24gaW5mb3JtYXRpb24gZXhwb3NlZA0KPiB2
aWEgdGhpcyBkcml2ZXI/IElmIHNvLCB0aGUgZHJpdmVyIHNob3VsZCBhdCBsZWFzdCB0YWtlIGEg
Y21kbGluZSBwYXJhbSBmcm9tIA0KPiBib290bG9hZGVyIGluIG9yZGVyIHRvIG92ZXJjb21lIGFi
b3ZlIGlzc3VlLg0KDQpUaGFua3MgZm9yIHRoZSBoaW50IQ0KVG9vIGJhZCBteSBVLUJvb3QgaXMg
dGhhdCBvbGQgSSBkaWRuJ3Qgbm90aWNlIGl0ISA7LSkNCg0KQnV0IHlvdXIgcG9pbnQgbWFrZXMg
dGhlIHdob2xlIHNlcmllcyBwb2ludGxlc3Mgb2YgY291cnNlLiBXZSBkbyBuZWVkIHRoaXMNCmlu
Zm8gZm9yIGRpYWdub3N0aWNzLCBidXQgc2VlbXMgdGhhdCBJIG5lZWQgdG8gbG9vayBpbnRvIFUt
Qm9vdCBmb3IgdGhlDQppbXBsZW1lbnRhdGlvbi4uLg0KDQo+ID4gLS0tDQo+ID4gQ2hhbmdlbG9n
Og0KPiA+IHYyOiBubyBjaGFuZ2VzDQo+ID4gDQo+ID4gwqAgZHJpdmVycy9zb2MvdGkvazMtc29j
aW5mby5jIHwgODggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+IMKg
IDEgZmlsZSBjaGFuZ2VkLCA4OCBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc29jL3RpL2szLXNvY2luZm8uYyBiL2RyaXZlcnMvc29jL3RpL2szLXNvY2luZm8u
Yw0KPiA+IGluZGV4IDY3NjA0MTg3OWVjYTMuLjM3MzZjOTgyZmQwYzggMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9zb2MvdGkvazMtc29jaW5mby5jDQo+ID4gKysrIGIvZHJpdmVycy9zb2MvdGkv
azMtc29jaW5mby5jDQoNCi0tIA0KQWxleGFuZGVyIFN2ZXJkbGluDQpTaWVtZW5zIEFHDQp3d3cu
c2llbWVucy5jb20NCg==

