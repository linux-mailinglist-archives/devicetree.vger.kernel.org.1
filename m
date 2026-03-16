Return-Path: <devicetree+bounces-275915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNLhDP5zt2mGRQEAu9opvQ
	(envelope-from <devicetree+bounces-275915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:07:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A3096294545
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:07:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A0EF300FC79
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD4431F99F;
	Mon, 16 Mar 2026 03:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aspeedtech.com header.i=@aspeedtech.com header.b="PGKsak0L"
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023078.outbound.protection.outlook.com [40.107.44.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED41DC2EA;
	Mon, 16 Mar 2026 03:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.78
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773630459; cv=fail; b=ZdUADknVtEAPY8wDp2FnH8q4QiQS+BC+3nPju7i9ZqO49Ffo7SM13hsJCHB53OKN6uwDLIoPn7ULFKPoppH7mn7kE+aPC6/3prXmvBJXjB3S2pgYKKN/NJTFV5ti5MWFW7YEMwiflq9bD9LrryBGNLeaUf4jcobweoU0pOvazLA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773630459; c=relaxed/simple;
	bh=CPTQ3rGQjrIYPY7c34KeqkArsmNDOSIFFllWqPtpa1s=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=GfNzdN+nptJTF0vHNyXynguLM1L4lkQmpL9bYdxC8MbRktAYx4YbndPx5xkZ1mr5M31Gbc6fxyowEMYmHx6sn/yP/ALwN+ldGaLno/Ss7eFeb5WcikqLePaXFsh3pbdfGaoE+lnm8Z3fQOfEy79Z011gqChVCAI+sBg4ANLOhdE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; dkim=pass (2048-bit key) header.d=aspeedtech.com header.i=@aspeedtech.com header.b=PGKsak0L; arc=fail smtp.client-ip=40.107.44.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gQjbJ318a0oTHiDoXdiAp+3gMvvpd/xuY5KTSnvjNJEg8ZUPt0N03emDndE6VeN+u9rLtFL5pb6lJd7Wn5XRC6rK2rDyiGoochyKHo1W4u1kiJdp2d/0HQB1GXSglSEDDp6T8sOfwjn7EpJkqzo1ZgMPOTAjF6aniDxBjNnGtLTEAo/KjPpBq8w4oURVChB8QM6i5i4MYMIzrAuu7Re9kWg1PBVWv0lgBRR3J33c9AHrDrfUjWg6NOsptiXEvxwTBRNYYzsU3RQkjBCUCiSauaUhNQCCdVjyuk6mU1IOVGnoMfja+rsw3m7rAJq4yM27FsoBbgDTgdhSVX37MOyzTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sesXusHnH+y8IG4TACmcY3vkIHIJl3C5XxrZfc1VzAQ=;
 b=BpFyb9z4riqapkCeYrXOfsVrcgWlEGtx4+D8h6GjmkbTh/fQFfWWyrR76yStFSe+sLMBUj6IrVssJWIz6vu8gQtpQPhyGoCVgnlu7fT0gTVQMoCZRhGnv8qkDuD4xQIb9j1HppdGq/t43dA6WMGb2HosVD8pkcuVUbvWuhJ4tSxTn/xVNTOuyNsiypLkJLkEajQBDHPphl6g2yLFxCk2v+AcIYDjxjdlfhceF3ywd59xk4KFNsRhVaS2h/PcToi9VBCn36KmtxBw5rVWGPhBeXn2pbmXsNAr63gu3AZWVaWnGarlevAGvSuXrhEHxiP+GX43sWcOwRnQ9bDWhJayvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sesXusHnH+y8IG4TACmcY3vkIHIJl3C5XxrZfc1VzAQ=;
 b=PGKsak0LIuj88O2GWfzV87CYy3c9BLz7M1wDFkB15GnUwuGPj7DbboVfubbzc0k3Dhd8hTg+5uIIuOx8SPC0FK0UOGFHBA4eD17IburXlTMsoZSogSVP/9FoQX4vScPaEoJ+dQfAEWGD0CxCAC0KqA9cIRdqlM3brW2v+7Ea9MgUCiWDtPiaCDnTtSt47dTGVv7AYTbgUJUm/XEQ5DBjWMoENZY/8DXb7YjW88K+a6gP1DEHw6D2c1UfyOJx34mAIFmtP6EkRx8PjjbvNOSYvUCCs6PnzW7ETgPy9qc9mUzG1urbRVvX77vK4xBO21DtzAAUL6j96VPMs2hQ6SJSYA==
Received: from KL1PR0601MB4276.apcprd06.prod.outlook.com
 (2603:1096:820:78::12) by OSNPR06MB8345.apcprd06.prod.outlook.com
 (2603:1096:604:485::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.24; Mon, 16 Mar
 2026 03:07:34 +0000
Received: from KL1PR0601MB4276.apcprd06.prod.outlook.com
 ([fe80::b7f3:3c41:fd0e:e3f6]) by KL1PR0601MB4276.apcprd06.prod.outlook.com
 ([fe80::b7f3:3c41:fd0e:e3f6%5]) with mapi id 15.20.9700.022; Mon, 16 Mar 2026
 03:07:33 +0000
From: YH Chung <yh_chung@aspeedtech.com>
To: Mark Brown <broonie@kernel.org>, Conor Dooley <conor@kernel.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew
 Jeffery <andrew@codeconstruct.com.au>, Ryan Chen <ryan_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "openbmc@lists.ozlabs.org"
	<openbmc@lists.ozlabs.org>, "maciej.lawniczak@intel.com"
	<maciej.lawniczak@intel.com>
Subject: RE: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
Thread-Topic: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
Thread-Index: AQHcstFOqEOl3ItXl0mr3midS8GMZLWsphAAgAACQICAAASLgIADy9LQ
Date: Mon, 16 Mar 2026 03:07:33 +0000
Message-ID:
 <KL1PR0601MB427619F9E0D2259597D68A309040A@KL1PR0601MB4276.apcprd06.prod.outlook.com>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
 <20260313-energy-casket-ca8adc1f1fd1@spud>
 <903bcc13-5b50-462c-8fa8-051f07748127@sirena.org.uk>
 <de40d5d7-2d2b-46a6-a725-c691005b63bd@sirena.org.uk>
In-Reply-To: <de40d5d7-2d2b-46a6-a725-c691005b63bd@sirena.org.uk>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR0601MB4276:EE_|OSNPR06MB8345:EE_
x-ms-office365-filtering-correlation-id: 71c26419-9c72-4ff1-a9e8-08de83092b0d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|7416014|376014|366016|42112799006|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info:
 biZIH8zzsJkpaWG0PxbDjsUpWFA6Cvkg7K7Uv8uaRWoXdSuHsK17A28Yjvq060TxgjJnELQGGkNKvDYRgitOHQS2yV63b5LUkUMUmpe/iv3tvgRYTOLO358HXanA4d5mrTl6zLrUWJiqAGhbpWFgKegW7BEawIfwMrGxEUJ3WoCCxzn2XiWPRS3joDBEqNqJHqdK2LYhROXRfDTJc7344ytkiTnpcEysxRJnVKcwkF0fc0+bAj1UKwU76jzwF0IUxq/0q90i2t/giT4Fn0jhtv6nPFQZz6VI3HV4SmTG7wojTzCVzqQOlPYpWifgCpkwulElyIex5v8Z0EwPgoievQZhHjwXqAINe+s6icFL9zsWdXm1oiQMuUUVnR+d4rVnB6btOeqKSyaVBUpOMv+tgo7gIVqRMLfEWTLhSvjB7SWMhKoqagOYOSgB2XRoVc0dJ7j09sxhiOkPkxzDB78EAwbE9DTCGzOSsdYmoPhY7bUiJyFVlOdr3S9zhBu/Iga9cVjeVMgcV66IzBxdRFTzRjbymAp+krVEo6rYk6U6ZkB3IY25+JUZCDgffGTjwPLsEZIYJT2Yq7EvIiq4dy7VMHP1a4xWsnLADwikuIVzwK/6vk+BJ53ZWMiuhtepE/3ln4mXj4oyeRDcmIwQbvgb8WP8jtqB6+MchnKY/ebBORRoVRBjZZIyeJ/98H3znUI3fMA78K8TiVClH0D4QlyZMu1uAL8SZ2PLqbAhkdNNo7HXHzbHefVq/HyjlEfJevsUdicESPd03Su+DodM+OCChbTC6FiiX3DUUJ95wzBRxq8=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR0601MB4276.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(42112799006)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?7xV1B8pzDY5gofWgiX2wuDiQT2bw3lGz/szd/OMYASfv9qxkLk4DwBuR36vi?=
 =?us-ascii?Q?Sl09vMZbKhRBb+4T94FgAWbsGaWSF9MtEXN/Hgxln0D/drB78XvFtXv32cKW?=
 =?us-ascii?Q?eXWe1PERdEBY95VhstbvAZ2yW/cbx0/3HPGx4CSge+cQa385Rti629NEnq2d?=
 =?us-ascii?Q?a+fWXCT8pAGpA6U/O/gWPm00sXJ8FeDZ8qjAXk3lychl3f1kKVPeK55Ic6Wk?=
 =?us-ascii?Q?eB1VzeXv7sB3axssWxI0MfrPpHQ1w+okx7QjI70VeXslTIz8pwWTkgCUiloW?=
 =?us-ascii?Q?3DVW8CSxmfN8/HZer9s133Yo4IV6gDIMaCDxkUbel8t0VFH+0ty+8UQiBU3h?=
 =?us-ascii?Q?gfEPFsNYu/L2WIFpUprijkFkQ+Q0MkcziMhqUjnGPugPSjEUU2vx36pH2sUX?=
 =?us-ascii?Q?XZu4FyXGDJE41Q90nIpBCwT1A0UNPmQp/at//NtwXd+rrQl/C769PN9DpUZw?=
 =?us-ascii?Q?Ed/a3WCNPrhNOAVf56lGasuXp8j4ddGKm0bC09RNAefa+Ct8W9rWsMhfYwH4?=
 =?us-ascii?Q?t67f0YVyvzQm3MdOfhR6TZ+tUjR+Js7yMIK6LXGi5mzteE4lMjSmRbNlij/S?=
 =?us-ascii?Q?MMaSIACaWSUfejyaxhb/aA5/SU9P8D3OHDlaDvflL3aUvQ+6pCPdPCspMJ9q?=
 =?us-ascii?Q?SqcEqNolkQUPdv26pBjCxKIbBfDmA5H7S+E5kVbM3HfyBZCZ21ssx6ChcPf/?=
 =?us-ascii?Q?h4n8WmELUpR0FHrE1CTe4fe+pmNJ8bPZiuCsJLjBmB7ogB3fHqEafZlut8hQ?=
 =?us-ascii?Q?VZMHd3F/F7RVjEuaoqAJqvnXpa/3go/TJ4fG+xImdaebKAVEbwUVzP4QcPWT?=
 =?us-ascii?Q?Mr68Nl2gvV9+ST4AdsRsNdqN0WLxHbpsjgJWWgiadtBISE6TEzJd+BBDnmq9?=
 =?us-ascii?Q?7dzrCmGbs22bI8dNcrvm/TvaVPb3m6O4PQt3L1R79ZejN+NoxtiyDX5tssdL?=
 =?us-ascii?Q?6dKYdNzXyCQZQwCnjGxoTrRv6j576hcEv8gMZGTngy2nhazYqnyxxVA/popi?=
 =?us-ascii?Q?29l0maiAMsC3S2zMIULcGsflRgyg6EdHDMEvYcAJwAyE1baUeW5ov3JQ1X9B?=
 =?us-ascii?Q?PScy7u8AYzEjrmzYhv0cyyhmRpFJUoMoejEyVrtYc+G4dkkTAnHCglQv9+IK?=
 =?us-ascii?Q?JEUGRgaWrl3TzagM25yZQoFL5nlhMn+QkVaF6uQ0qhkrE+LuXDi/dP8lLA0W?=
 =?us-ascii?Q?43hgpm5XMel9Tq6b7gTKgfoV+Pl9l5SFHEYGNITsVog9xIIYSylgy6/WkJab?=
 =?us-ascii?Q?t1JpEqC2N0g0Zc2WCdwGohpsxTqZ8h6wVrJ2TSfDsrMIl6Ps+OMKI5TR4F5C?=
 =?us-ascii?Q?qbn7wxl5pVvx0gbU9OEnnwwmGwsvo8ZGnq0M1DOh69X9FLN+cGjUdCHwzsTq?=
 =?us-ascii?Q?H9DL03hay1Q6HIn4zmhaVIdG5CGyhR4MAJoVocGA2/bzrykyxM9lwM8IPSSN?=
 =?us-ascii?Q?G64cIWzDPYC4pfkQ4qBS7DV53FvKMwgHa56YxdeH9wg1kqoQadq8PE8CvUHY?=
 =?us-ascii?Q?nSgXRPZ8RZRcz7zL+xR5ilqHLMZSI+W454OXrtVvui4CXjiKtU3ZZNOxrpkf?=
 =?us-ascii?Q?liyrWHSXAihNoswdK8LN7IDAN6X0pEpk6mT+vWHR6PlhlHEKh+UYDH5trKim?=
 =?us-ascii?Q?BgCdjdVf8EoUza9JXndjOJT4idws3h5HXu61qV8m8B8ENdSlH9WtjZEM+4ND?=
 =?us-ascii?Q?RM5UEVPVtAiPfaSUnqY+GlBYrHVLYceroLYwXwTpTh9lHvDxjqJFjOUXV47K?=
 =?us-ascii?Q?xRSSiqopMg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR0601MB4276.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71c26419-9c72-4ff1-a9e8-08de83092b0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 03:07:33.3092
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KtYTUCQCz8xloETKxwdEOS+xVWeWj/9iEP68/mtRNdgtto1qAKL90AY+zhyA0GRz30jXp2jo06Yr0yrmK+3WLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSNPR06MB8345
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[aspeedtech.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[aspeedtech.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275915-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[aspeedtech.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yh_chung@aspeedtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,aspeedtech.com:dkim]
X-Rspamd-Queue-Id: A3096294545
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Mark, Conor,

>On Fri, Mar 13, 2026 at 04:32:31PM +0000, Mark Brown wrote:
>> On Fri, Mar 13, 2026 at 04:24:22PM +0000, Conor Dooley wrote:
>> > On Fri, Mar 13, 2026 at 06:07:35PM +0800, aspeedyh wrote:
>> > > This series adds initial support for the eSPI controller found on AS=
PEED
>> > > AST2600 BMC SoCs.
>> > >
>> > > The series introduces a eSPI controller framework for ASPEED SoCs un=
der
>> > > drivers/soc/aspeed/, adds AST2600-specific controller support for
>> > > peripheral and flash channels, defines the corresponding devicetree
>> > > binding, and adds the AST2600 eSPI controller node to the SoC dtsi.
>> > >
>> > > The driver is intended to support host-BMC communication over the BM=
C-side
>> > > eSPI slave controller present on AST2600 systems.
>> >
>> > This all seems to be in the wrong places entirely, shouldn't an eSPI
>> > driver and bindings go in the spi subsystem? FSL's appears to be there=
.
>> > Mark?
>>
>> As documented in submitting-patches.rst please send patches to the
>> maintainers for the code you would like to change.  The normal kernel
>> workflow is that people apply patches from their inboxes, if they aren't
>> copied they are likely to not see the patch at all and it is much more
>> difficult to apply patches.
>>
>> Please submit patches using subject lines reflecting the style for the
>> subsystem, this makes it easier for people to identify relevant patches.
>> Look at what existing commits in the area you're changing are doing and
>> make sure your subject lines visually resemble what they're doing.
>> There's no need to resubmit to fix this alone.
>
>If this is a driver for SPI hardware it should be under drivers/spi and
>use the framework there.

Thanks for the kind guidance.

This driver is for the Intel eSPI interface used by the AST2600 BMC, for fu=
nctions such as Super I/O that were previously handled over the LPC interfa=
ce.
As there does not appear to be an in-tree eSPI subsystem at present, our in=
itial thought was to place it under drivers/soc/aspeed/. If that is not the=
 preferred upstream location, we are happy to restructure the series accord=
ingly.


