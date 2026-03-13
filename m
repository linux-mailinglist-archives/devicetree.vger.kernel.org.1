Return-Path: <devicetree+bounces-275143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +C4/Jobws2nYdgAAu9opvQ
	(envelope-from <devicetree+bounces-275143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:09:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB8A281F42
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:09:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 969EA301F6AB
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E4F137105D;
	Fri, 13 Mar 2026 11:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="Id5q4sfw"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011022.outbound.protection.outlook.com [52.101.70.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BC93148A6;
	Fri, 13 Mar 2026 11:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.22
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773400196; cv=fail; b=T7SDPDHdtWPTW2Iqa3Ch5nxOWPhJVf7LVtNr9XnPsTem4SJoMac1UDd2fp6I4S10lC+HwOPLrulEODLc5rG62ESSQ+KFujt7kFkhw1Q2+0VxefNkRYC2CQ3DfwiE7yVjiAJU5FzOKGfhzPI893R2MLMeVdd1QBuYNzXvl3LvNNs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773400196; c=relaxed/simple;
	bh=wLygXZd7bfxrnag6HBTtlRs6pVa3/D7VGndgyk5bETg=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=kjgXzwmKNxX49EcphJ/Ry2D+iPkvPesL6vAjG7ffg2CxoeFdYQbCebtf/EWIVPUvAbNE4oJv66EmMSwuMl/47db14HkY7eMnkyANmDFPQvXKI09UrvNa8BVI2yOxnR+5lh/HU/Mr4Hkl3kWz3R2Pa+XjOxLquEE9ghC7fVcWZY0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=Id5q4sfw; arc=fail smtp.client-ip=52.101.70.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uUiBJ0t52bhGHdKvVDPSPlyL3DTZdxHMGOjpnS1OUTFnw4ebqv3pZzytpv8PAIF8LEqc7mE8u/i+ZL+iiAWx0qQaj+4wTg3GU3Ta2rJDBJ2nSkQ7hv6pqNtkWif4R1DbLx4wwRWRfwcGpGKD8XhNdAweNRqQHedByE+l1EUyg6TBP8uKY7RjQ8RJahldvvKHelZlhKpGkIjfM/vvowjLikEVcZbqnKGhEjP2VGBbVJkxgXxZ6Em3PqjM8dg8De0MxsdTbYQZmUkF3jH4QZIxKw12pbQn9kePOO2yHEXN5z911tPNewR5mOWPBPQHPWIYGsJpo+Y/fLFJokvqZapFog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9IgzZrPkx8AHiwoW7u91hvRVEbJL0T5UWU+6qPZnIHg=;
 b=Jgdd9MJclETIyFF2sYozhzuUzkXwy7BxQfUNbUQo6kjKF/ftjrYPZkEq4d1iBjs85V2XDPyL0YFfJ1AL49EXOfMYTaUZtxK+q2rxDOJQddk6AMIv8XyfcLM8UyFqpyzSWmx1R+7n5CQUellD+Z4vIt2TgmA1Xf2gwRpjj1dMBQdtMbIaOzLHDRZdaHErzbiwAdYUz4qSJIqFT9RefX+fPVkZH/3Bba7kv1JUP89VHvW8+r6vHBxDQTiQ1ZlJkR87flgMpKVhFEYeyNCWa83VXkiMo6AsE+cxruS1q3BcY1DzDuLFlEbCgXodIteVVP337Td0qT94zNGmwgsveEq6Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9IgzZrPkx8AHiwoW7u91hvRVEbJL0T5UWU+6qPZnIHg=;
 b=Id5q4sfwPYb1+tHeMk+FCFMiohGfyy1lwpph/q50wIKO4vHAmirvi361eWaJ6wMyNE5cSjS4qq3QwaZtve9q+VvDP6CPjcMrfiakBxzRYVidE42z1pYAJ70J3s9/1jbHCKMovr4N5ldZZPbjQgSTy5qxYIK+2bm7vpIxRMHdeHAWikhqLpNNfBW2hOQkHWLf1kS5iUEBokVwbPKwFKpAQ3/fvdaikZKzyLbOeKT0eyg95UM3aXhEewlqFKHOPQ81BhxORhlEKC/QAWxGxsWf6b3v6bfXgjwB4nr0MDw2QYR7xLFgeMEmUHBsrzOSAZ9Aqcpd/WhTw073L2nR++89jg==
Received: from AS4PR04MB9362.eurprd04.prod.outlook.com (2603:10a6:20b:4e7::9)
 by GV2PR04MB11093.eurprd04.prod.outlook.com (2603:10a6:150:278::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.16; Fri, 13 Mar
 2026 11:09:38 +0000
Received: from AS4PR04MB9362.eurprd04.prod.outlook.com
 ([fe80::abe7:4a6e:a51:baf0]) by AS4PR04MB9362.eurprd04.prod.outlook.com
 ([fe80::abe7:4a6e:a51:baf0%6]) with mapi id 15.20.9678.024; Fri, 13 Mar 2026
 11:09:51 +0000
From: Lakshay Piplani <lakshay.piplani@nxp.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
	"alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "robh@kernel.org"
	<robh@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"broonie@kernel.org" <broonie@kernel.org>, "lee@kernel.org" <lee@kernel.org>,
	Frank Li <frank.li@nxp.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
	Vikash Bansal <vikash.bansal@nxp.com>, Priyanka Jain <priyanka.jain@nxp.com>,
	Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Subject: RE: [EXT] Re: [PATCH v6 3/7] dt-bindings: i3c: Add NXP P3H2x4x
 i3c-hub support
Thread-Topic: [EXT] Re: [PATCH v6 3/7] dt-bindings: i3c: Add NXP P3H2x4x
 i3c-hub support
Thread-Index: AQHcsFstbeRrFutBCkyz6OBrlMui6LWo27+AgAN3JZA=
Date: Fri, 13 Mar 2026 11:09:51 +0000
Message-ID:
 <AS4PR04MB936254136A4791441EDA2F91FB45A@AS4PR04MB9362.eurprd04.prod.outlook.com>
References: <20260310065727.3759342-1-lakshay.piplani@nxp.com>
 <20260310065727.3759342-3-lakshay.piplani@nxp.com>
 <20260311-outrageous-unnatural-jerboa-53f5a8@quoll>
In-Reply-To: <20260311-outrageous-unnatural-jerboa-53f5a8@quoll>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS4PR04MB9362:EE_|GV2PR04MB11093:EE_
x-ms-office365-filtering-correlation-id: 02640ea9-0491-4b51-59b0-08de80f10c34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|366016|19092799006|7416014|376014|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info:
 OLdcQU8C1ATA4ow2LbxU66msusLBfqT94o7Sl7W1oDDv5xgvEBpv4TgrqrlJMkmOfzxjh/xB38kj6ZfrneE9IwKOJu/kN1hyKDM3qThDIQEuutEK1nXoLmQO6SauAUU0wZd40EpYXjv7O+2qoOQRoIH4Ctkzt6+MCXX8xzdzpMSe9cMVSRaBYsD8Lp5scFF6q0rTxrWHwkP80Z2tZ6dcljRyWZJrzF/7ai9Cy3hgbadFun30C8rvBroKwSerXqQ8P+mKpiptP33KrXRCG+/tsjTwtRcPYJXCUKQ1ubdXS/JjbIejnIcHA0/1LMGdPhr5lqNn0QlhMOsQn7OlkusKSHaXMZ9TG9BoiHJ1wAiqdzBKaLTWyYqGC1ix85Bx9uFYmtqrA3LuIP1pCxJpt13YTwiwRCLK25UQDotswlWPzwqwMZKZjx2Pru+ok6W7GIVnxgn69SRV71co9ZoIPCKXpsgI69CgqjN6Dms88kXbb0gbnjd4ck02HGBtJmNM3giMSyvaxJe0tOrt8DrayizrefbRo6O3N/mwFLqa9msE0OZy2uMwMiVfVNzRtGadAXcNtktJF6ayT41/hFVgCE/R/tU2wlHsRAhN2L4qCIbkY96//ig1DQNQN/YZnPji96bbH33DPf6/Ra92ykABAhC3eoGWJT9w/uogL1LhwyMTFe1EfAiVBW3VoB0hurHWkhSXzguPTp4VQhYSqEcbkhCL2UeKpM24I4nkFPZzk28Hakwk16+gaimk58WmredYr+bI/QNlk9q4NuQ/sjt3lACxGdnK2WKTqPgnhxccZbonC6s=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR04MB9362.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(19092799006)(7416014)(376014)(18002099003)(56012099003)(22082099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?DVaYUELx9ibRCS5Rr7LEbgIGg65zf2tkj0bHb5JXwq7IBtxfvin1G0umvTnz?=
 =?us-ascii?Q?BEtqvFvaC+GVtyTK6mk7sOVXVjdMXqR5+6cTnv937T6fIWJW573Lo58hglE+?=
 =?us-ascii?Q?+dFp7E6JR+F0D52yLcxGJVam9bPrSyh1vncuSv2FlVpb/QvgW2TaIOHT5n1T?=
 =?us-ascii?Q?aCZK9uEnVvB7GtwTNpxl/pDdcRM1MGAR9/ZTHLRfLwwH5HGwqe6jve/nmiMP?=
 =?us-ascii?Q?IBdvMnieAtgCq8D8FZVxlRQHoIGho9ulFYsSW2ulM8jLqmBR3qxZJqT9RR2n?=
 =?us-ascii?Q?4nYVTVpbdVp+xOR8p0OcHglF5YZ5+7Aw/dU3lv5xC5kDUltJ4jh5xe5bqiuv?=
 =?us-ascii?Q?7c6JwMscfrXENMzQ6wPnFNXVcHCQuHZgQ1Rvq62n7rScoCftqvU9kxPyep1n?=
 =?us-ascii?Q?i5kgYFq+ZbxTpw5ENX/ca0WREzvR5pS/XyMaoLWLTwI5Et1w+NhqF9MyCNDh?=
 =?us-ascii?Q?9unxRfdFzH3DLPfRQ/GJ85B331YzOchhsxDNzU0FGTzrl1OEGeRr/+8LthjX?=
 =?us-ascii?Q?QfZL3HoLtpucVofhNVbolrzdU7W8NH9H3kZzz9bNJqbNd4gfxiGxMPj5t8S1?=
 =?us-ascii?Q?7zQfbapaJuoMCk5LwkUfYBavarpPRTBgQBhXeSaIoXBrD7teq5M2E0OYJ6Aw?=
 =?us-ascii?Q?ej+BWV1kFUAs19RCLjIKraSEcV1yddybrbu7LoWmekX4XZQXYYYoW9RMfXKq?=
 =?us-ascii?Q?Tehd/T6ynSFoIZccJe+OoxBnPaoxtHQYL9DZirtgl99D0+e4VO4Twu+k4Qfn?=
 =?us-ascii?Q?qFoRuFrCn4lyeOdH8hRnj9uGlCVD2WaBa0ZRbfAAIs4ZGkUetCLOKhA8ORdw?=
 =?us-ascii?Q?422s5k3SqeVvXMk0PyZbwQUbedbTVXgu09acYhjwxjYTTNYVGYEF75UyAAvF?=
 =?us-ascii?Q?0VY0FT4ddAHMOCGI1H40w6gbzf+ZR8Ega8k/w0A3+sLuEKxlxgIQQzHQgaXh?=
 =?us-ascii?Q?q8nRE+H/BzTYrfLoqOVDSwjr2xRP0/l7aL7lo6Jb2YITsmglfR/jfuA6BAl5?=
 =?us-ascii?Q?Y55hhsVIXAA0t8hGHcsmOjJuTuEjskGM6xvsg2ka3PTSM20x8IsKl5HXqJiP?=
 =?us-ascii?Q?rqAIqeGcIpCMxlRwq3sLAlydrBwz49W9iKGc45Q+OvKwziJ8qDu5k9xmZZCH?=
 =?us-ascii?Q?+DtvtTwih4OaVVbCdTov5nm+MGldu9FsuBO7dRVY1BeCqwgjbxwEnFNms4P/?=
 =?us-ascii?Q?08LQ++k/y2m9dVeYopl0AmwBWofvP9YXiyep4csPgRkS2LyXDE4AY5/Upsca?=
 =?us-ascii?Q?SQeCnGNrxfBU2Id0b3UT3YiqDs2ZxSKWRPORXZjBZoPRneMPpMGtmXncAE5d?=
 =?us-ascii?Q?oYGHm4FTVdt6/jCup5yZ8GFDkzs3g5AhwTjlSRYzJPoKbMDPFXRIFbRfSKeR?=
 =?us-ascii?Q?JnZRhCcRcKAdl78+G5cLhyMZ6ygNPDLoCfWj74d5FBPtBUeuTkIaDwygTk2+?=
 =?us-ascii?Q?HZHXsR/Pk69258snurLv7FWwx3BJTsldINR8tvxkfJgd0NB/6h2dwvGUIZHn?=
 =?us-ascii?Q?XKEgWNTNw/vOLnWE1Fktpgb/Gl7SCkgBQgk0RbwVoNIAyqwgbGF8YrXJSpWP?=
 =?us-ascii?Q?JhvkwpUpvJC4fWrZILS70iR7c7NevUhUnDdsju3K4IE4zeuND4VBy1WGUszm?=
 =?us-ascii?Q?HvV9f9dPq4LLZRV+Q0KZwJf4xBR+OMl0CENtiJtpikfw4pNj6PCc8zHrTBi1?=
 =?us-ascii?Q?9sEabAMHBngyQYM57TTbdCqwrqD01WtV2EPh6Tzz+wdOQ7ytCpFzZNF9fw4n?=
 =?us-ascii?Q?GbgKXIA56g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS4PR04MB9362.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02640ea9-0491-4b51-59b0-08de80f10c34
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 11:09:51.3157
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Q003wafV1p2aKGafkZqtI+xCU2pX7vcvt5m0t+9Jtanpt2+QmKGpJgNMCgTnFSo5UOnkgGGyOAYOdjsj7P17w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR04MB11093
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-275143-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nxp.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lakshay.piplani@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.70:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nxp.com:dkim,AS4PR04MB9362.eurprd04.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 3AB8A281F42
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> > +examples:
> > +  - |
> > +    i3c {
> > +        #address-cells =3D <3>;
> > +        #size-cells =3D <0>;
> > +
> > +        hub@70,236153000c2 {
> > +            reg =3D <0x70 0x236 0x3000c2>;
>=20
> Where is the compatible?
>=20
> So this wasn't checked/tested. Try yourself, remove required properties a=
nd
> see if there is an error. No error, right?
>=20
> Best regards,
> Krzysztof

Hi Krzysztof,

Thanks for pointing this out.

In this binding, compatible is not a required property by design. The P3H2x=
4x
hub can appear on either an I3C bus or an I2C bus. For I3C instantiations, =
the
device is  self-discoverable via Dynamic Address Assignment (DAA) and its P=
ID/DCR,
so, the driver does not rely on a compatible string for matching.

The compatible =3D "nxp,p3h2840" entry in the schema is meant only for the =
legacy I2C mode.
where a standard OF match is still needed. Since we did not include an I2C =
example in the
examples section, the compatible property does not appear there and is ther=
efore not
required for I3C only cases.

dt_binding_check passes because the schema intentionally does not declare c=
ompatible as=20
required, and the examples conform to that.

Best regards,
Lakshay


