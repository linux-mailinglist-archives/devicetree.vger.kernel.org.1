Return-Path: <devicetree+bounces-270243-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CzIBtwLpmkJJgAAu9opvQ
	(envelope-from <devicetree+bounces-270243-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 23:14:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B39D61E5124
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 23:14:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9E1F530058CB
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 22:14:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1602877C3;
	Mon,  2 Mar 2026 22:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="DgDcuyaT"
X-Original-To: devicetree@vger.kernel.org
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11020106.outbound.protection.outlook.com [52.101.201.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D911A6805;
	Mon,  2 Mar 2026 22:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.201.106
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772489688; cv=fail; b=s14FGF4nDZ3ngETevKNLPL49ZihMomsNvoihD/XnVftwoJUAgLmEgbJF+Lz2RDprLHuUi+kpqe4Yr/BWg3IjK8TvtM3wiY5sKbgoxg3tGbpwYgt3bf4AA6SwjNbIbovroXrxtpLwBv71m/FEb7rws80kgVXObOXNKl0s02OY1bw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772489688; c=relaxed/simple;
	bh=L6yss263OVTFgs/KqdT0n69H65WoBgcvXiHjBUKJ3sc=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=UCNWDBGlz6fJ0EkquVi5QGNT5LPtRnbj/bcCtuiANEQ2Mcjw78ZJtczdFDaSYnODq//tfC7yXta25CN0B63b/RNKxrWEWd2Um0Z+2W67KFV9rO4EMIauamV1ychTPsOEeAK9AdECVj9XDkQW8Z/4eEHY/u8RZ16VJUvBocoyq0k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=DgDcuyaT; arc=fail smtp.client-ip=52.101.201.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JPn8i8HgKdM4Y6LUfOWMeKkS2pGxhN5n8CSchu/0c1udNGgLGogiI5omP6IcCYnpi5mQYUuSnBwUyouMYJpW2aak35XshIUyeYagcHLolby9Yj8SvtHiipnTHEHhEos1i5MFyaA0NNJ5lgUv+CAd4NubA2pRqydXjxRiR57vzL9Ap0QckZfkI+33Ix+bplu2n3RQvXXXdBDn3Qb4OppqisjW06coZuPMA/U6ZSFDu9dROCpqt7795jKYfEu0hfZTjHGbVpkA+k4jJXpTSYUBeIwAwdUnmtqwX61IiOr8WspeJUC7XnyuUyeBaQ4FB1YDs3BHt0vIuKGZpf3Xl3d2EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L6yss263OVTFgs/KqdT0n69H65WoBgcvXiHjBUKJ3sc=;
 b=PnztKdKcLlWQB95i6XHYUI8Rm/9cVrIcGPhgyV4Sli7STgkxOsuaHHMnKebGsSIEnrWmazjWoevggRovqX26o/fJpOqWuiqRyJGXDBc4C162si00q0+Bl8v+Bw57yB0qY8SkjRqrRAUtE9h5/LDEFx9WZg90V5y8iRxPD/FbtxQtX5mfCHsvaqvzb+zTYO5K/mTrXZNTgJbyOdrh5wyzypg8CYAVCoZe6FjZk/NEv32hHDXn14iYSQInAQ+/BpmZ/2r+q7YSkUQ03K7qPVXL/pVZqW/GpXnI5NGOFgBWiX6X9/I4fTMH+Ra3U95zHwt48wzUiyEmOguZvGQRFnIvTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axiado.com; dmarc=pass action=none header.from=axiado.com;
 dkim=pass header.d=axiado.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L6yss263OVTFgs/KqdT0n69H65WoBgcvXiHjBUKJ3sc=;
 b=DgDcuyaTf/g9Mhsgwk35RVMemIn3jgnXAYnGWQD429rlJzkhgh16McXQJj07/76pL/BcDTe4ClCWOnOvGfBSuDKezT6qwezse93BQ+Csdx4sJ1GKAiudrVV8/JzA+zi42pyIKfVyWCzFWPMNBUStg6RS9D6EHujdK9lSaseYELjuEt1YAnPOV5fLcRBGakz2pk+c+Ns/Afbuiz6tPZdY3Eg0XbMFxqdEATmsFt0taik4j/lXxVtftTfllwqslnHU9Yz9dSSPV0XzlpycDdhvIWO29hG8Nl0uXEv7XKLm37n+69IPxiD8vpGddsW30yTOj6/58pEaHhhVWaJwjIIrLw==
Received: from BN8PR18MB2993.namprd18.prod.outlook.com (2603:10b6:408:6a::19)
 by BY3PR18MB4643.namprd18.prod.outlook.com (2603:10b6:a03:3c6::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.15; Mon, 2 Mar
 2026 22:14:44 +0000
Received: from BN8PR18MB2993.namprd18.prod.outlook.com
 ([fe80::9c95:1c06:2cb4:d2c7]) by BN8PR18MB2993.namprd18.prod.outlook.com
 ([fe80::9c95:1c06:2cb4:d2c7%6]) with mapi id 15.20.9678.014; Mon, 2 Mar 2026
 22:14:43 +0000
From: Karthikeyan Mitran <kmitran@axiado.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "fustini@kernel.org" <fustini@kernel.org>,
	Harshit Shah <hshah@axiado.com>, Karthikeyan Mitran <kmitran@axiado.com>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "linus.walleij@linaro.org"
	<linus.walleij@linaro.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, open list
	<linux-kernel@vger.kernel.org>, Axiado Reviewers
	<linux-maintainer@axiado.com>, Prasad Bolisetty <pbolisetty@axiado.com>,
	"robh@kernel.org" <robh@kernel.org>, Tzu-Hao Wei <twei@axiado.com>
Subject: Re: [PATCH v3 2/2] MAINTAINERS: Update Axiado reviewer
Thread-Topic: [PATCH v3 2/2] MAINTAINERS: Update Axiado reviewer
Thread-Index: AQHcqosG6tlZm3tCOUOrHxITHIf0Jg==
Date: Mon, 2 Mar 2026 22:14:43 +0000
Message-ID:
 <BN8PR18MB299393BBCCB47E7531D44952C97EA@BN8PR18MB2993.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN8PR18MB2993:EE_|BY3PR18MB4643:EE_
x-ms-office365-filtering-correlation-id: 2eb433b1-34e4-4bc4-8a20-08de78a91b30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|7416014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info:
 y3ZaodlQ6l5IUqWllky36PxdMQ0M3mYonn9BpXbzB5n7pI3NXMQf0GWo6ZApGQ5URnLzoWYl4Bv4pBY/tMSXfmNspNvIitsHffnVrBLSDAxAc/+nezUfrTr48TVCBX8u6imXQ5ut8EsowGut6faW7yJznl/Ho3EaJYDKoB1HkDKvxOeCTfMJVe1CxceBWSCdtAU1q6fEBcOC6EvmZpxcrZ3z/IggopiZHz3Gfx0JlDAf6Vni9nS/sfAWBGMUs/XJ/mkoCFIa5jo5SON0BUsuz3IwRmova252WLNRf7JiKnzjBS1ltb/eb92YIbNuJ900YkzU+MqGhUEg+cHmRXgqz0N4xBzMDb6c+DgjFXjWox4bwhnRp81ULpJ4GQ69H2bAGPqwcIwGtiNtBMamegZlzZu4/cvO55TUjWYhiU1ILsJ/l3GVnyyK5q6CAtXuPJZ7wScfN3X283p5GwQwKrjmD+j1Tpr28p5eFWRw3jRIk6z7sFTy9i2Og8QVV47VGMN6yhf5uImh6G+WCWcKOKEtXTgqm1A5NVcBwZKa6B8ums2BmUlNvhyKoYul6pr6d10lxhefyRqhl0jg9Djoxgdge0UntTC64yu80fneA8SidGv+xLfcCCqilzXy1E5U9a8DQOqe0yri84f9bytNxlFaCn7H45InZrzDh7P9utiBpn2Z/M86dQorzwzcUWVOcu0a4IsnZumOdo/UxLi+9CI4597tqvLl3AXCLNFZ7YeD51mVcRzoynPYBOrnYHrLRfhiV72gaXCYeGbjtn8kFqeM6tcl/lEM9TDot4ySkIMjPqM=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR18MB2993.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?Vzc3BC37lSmGWvsdVdLivuPezzok5syU8DkZNniFEF8KrJBZfyLoV6YnzF?=
 =?iso-8859-1?Q?s59CpN8GWLqaC+t2uXrdce+TkVw4le+o+oJoR2bmyJO2B/zKDZzWmgVcW3?=
 =?iso-8859-1?Q?VEkqVFRLbsg/17ey/WseGn4wJcsbuQa1BYiIYdrgVn/lnoNZ+MTllLB914?=
 =?iso-8859-1?Q?hIMl32MCX6y2iHes4CMYL1Mzul4ib4WkgVooH/ajPkBWruy70rfp10ej3+?=
 =?iso-8859-1?Q?Rtpw88PDdLeSgXUtSsEX3rrOS38sV7ouvnn5WF8Jc4LCxPkUTLdHqnw4N2?=
 =?iso-8859-1?Q?Kr0K7JEP+IqqISU8FKSXNR2ze+ndEnUDGQx2lYqxK4AiyL4bTt2CnfVV4C?=
 =?iso-8859-1?Q?DMf5X2ZWyIWUqOKbvaivo5AEqdUlBdy9+H2SIw0H7okR6/JiLd3h9ANwgh?=
 =?iso-8859-1?Q?lnfLF+se+Uyg+bJPMti6xiQkm91TvBypau3iRWcV0vcbK8Esg7kYhrkF71?=
 =?iso-8859-1?Q?T/MrEqW63gBrRCXR9DfXnU9tjB3YyP6JY5pkn3LunR7G6um7cZCCBw56Mw?=
 =?iso-8859-1?Q?b6x5zRacm+PANmy5mtuaV6GHkHZD2BNKI2yTsoM2GhNS6CI7aPA4+eFMZe?=
 =?iso-8859-1?Q?I0LhStrCSfROeM9ZlFDosFuaSL2VD5WQ8a4YfPTFgxpnvRihr9b6uEqUm9?=
 =?iso-8859-1?Q?QYsovZ2KDmpbskGmj/L/e0K8ccFN1dmdbaP4s82B74lUjftvw+5SThVGWh?=
 =?iso-8859-1?Q?opozs65IGQdSSY5iJxAuclmNpB1v3G1WO/o5KTtoBlp/abjiT1HRqQIUau?=
 =?iso-8859-1?Q?bWVCVXo5NzDufzZ6VfS5sUimw2zdkVl+MfyCH74pIfzYqADNHHWQKq7R3d?=
 =?iso-8859-1?Q?xDRZ9N2MuPJmH9vDJu6jKOTbYF8GGAh0o2sn58MFHO02TurDFBT9EAgcQZ?=
 =?iso-8859-1?Q?gP8CGVUp7s2zbgKFGo+LzYbL9qpFBHlAjcmA8ugdl4RPEwZUFtbax0phx2?=
 =?iso-8859-1?Q?4QYdjcn9ShOQ1DPLNniqQVMy7KkFnVzO+ddCnpMiUEqKndPslZFBN+tcxm?=
 =?iso-8859-1?Q?nI+Y1Xjr4vl2TEC7gd9eL3t+RIFMwP0k2OW+JhFwXJErlg83dYU9qwDTYC?=
 =?iso-8859-1?Q?BTZEmo6MyxyuL5sz6dlfAt5URAAAFWEYnNomb/GOP4c3ucsMjLwwj0PSJm?=
 =?iso-8859-1?Q?TJ+8QcBOSBj7C4IWzoVortphtUA8OxMZuTzM74cB01S4QK+Ja1RMjmAj7S?=
 =?iso-8859-1?Q?mfjXOPgYkYR18PG3XDGzRpMcGlC91jbehKgzL5vhFemrf/m3M2uK3akElh?=
 =?iso-8859-1?Q?9hTT4FhkApLyF5fEWyi+2m5pMWCz8Ovv9s+Du0eiO43KMd7wfDRt5eC7CP?=
 =?iso-8859-1?Q?s+IM6TdYFLmYTBpIU4OjEACQP0Zwt38u+J2H22pmheh7MmVXWevMLv7CNr?=
 =?iso-8859-1?Q?Azk39cp5wuku8k70SuF8s+4vM/kDK4ryDc9X0IgzXEcfDk3Xi2/pU/pn0o?=
 =?iso-8859-1?Q?UlCwPIGw3+rj2XT2hD5YLdU1nwWCMRmHqo5F3ckuUfttODrH3/jEzc5G1P?=
 =?iso-8859-1?Q?musAXbLQ7aymHbN/rq8RP7VNgC5FhPqa9DIDQbndptG5xKjKf+uyQ1+AAp?=
 =?iso-8859-1?Q?TMWHLHll4VTiSv55yVPQaTGWKD0R5xbxOUZWrAG/XinGTCrJMTFJBmfw+1?=
 =?iso-8859-1?Q?q+TGFLsQkLXDZN4QliL8X5mcq8Kak8wQqaBjzon/7gkCp6oEYNJw8El6Mz?=
 =?iso-8859-1?Q?zPPR2ybwuNMnDSPbPNP+DnicgjvagRncfZICsG62BDrRztek84qGzpP1XU?=
 =?iso-8859-1?Q?nM8OO7IsXc2W1HH64qhMeUAiEP/aba1Yc2JT2E1g8D8KSa?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR18MB2993.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2eb433b1-34e4-4bc4-8a20-08de78a91b30
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 22:14:43.4006
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4CckVI1POrEegZAMDQh7ZI8pRxiQi3/uuaL9lUYn5kLxRnu3GQDxLOnV8T2aqxjeVhP5ZxKo6Myao/aDUVCXEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR18MB4643
X-Rspamd-Queue-Id: B39D61E5124
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	FAKE_REPLY(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270243-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kmitran@axiado.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axiado.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,axiado.com:dkim]
X-Rspamd-Action: no action

On 27/02/2026 01:31, [Reviewer Name] wrote:=0A=
> Same comments as before. You are doing much more in the patch which is=0A=
> not explained at all.=0A=
=0A=
I did explain this in the cover letter:=0A=
"A maintainer has moved from the project, so we are adding three new=0A=
maintainers (Prasad, Tzu-Hao, and Karthikeyan) along with a reviewer=0A=
group for broader coverage."=0A=
=0A=
The outgoing maintainer also provided their Acked-by in the commit.=0A=
=0A=
You're right that this should be in the commit message, not just the=0A=
cover letter. I understand the heightened scrutiny of maintainer changes=0A=
post-XZ, which is why proper documentation is important.=0A=
=0A=
> You received comments, so respond or implement them, not just send the sa=
me.=0A=
=0A=
I've sent v4 with the full explanation moved into the commit message so=0A=
it's part of the permanent git history.=0A=
=0A=
Thanks,=0A=
Karthikeyan Mitran=

