Return-Path: <devicetree+bounces-270813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEQHLad7p2kshwAAu9opvQ
	(envelope-from <devicetree+bounces-270813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:24:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 313F01F8E1D
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C1E5F30AF70A
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 00:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11872C032E;
	Wed,  4 Mar 2026 00:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="iSx1K0ms"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11022082.outbound.protection.outlook.com [40.107.200.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6344978F26;
	Wed,  4 Mar 2026 00:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.82
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772583772; cv=fail; b=K6P2KNvY/W6+IZQJ4oTrWEdz0Z4wNyDXU7sw3a/NiGvzAbHmoUztlU+Ioq0ugQnfRjJWjVp9EejvYKHnzvOeixBaI3NTiT4oXSapeaWhcq6wY5BoVVL1ymx+I/AKidQArg4vbJddv7sm6yeAO96bPAQFqfaWCSXwFZZI0s8+q1c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772583772; c=relaxed/simple;
	bh=Jo4sidq5y/EleFH5rJOHR4Os8GAc4DfTnWql8j4Hby4=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=XCZFzrMDL09mhuEYoDzZwI6uwxNXhz8gQfSLB1V+hXDzee6Yf5u0dNgV4iMXfRbDPPWOkqNe78TVZpicr35mKzcn6Eb2jTWfIZyrVCXHvxN2Q2Wsun+IMOMeLFOhjbZX0ZVhLdrwdnV/MctpvjMzUbJN7LapltnxEYk/7qiHsV0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=iSx1K0ms; arc=fail smtp.client-ip=40.107.200.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N2yaSt3sYqdjYIjWmKtAoAF+UHInSPBGeHS/fGC26D80X7GD6reLs0THMSRBakleYf+5IhiEIA4hPRk63Se12zdZLIyhZ1OPLdxKOyDALXQ0nhk6Cc2d99ue2Sp/IxPrucBrmvkDNP72qZQ/SRvDuLOb1owccTXNwIcFytXQ9PGSF6/gaZR6Ts0FU3gATzJp5IFb3fUJ+FTvhzlF7XnQy8T74TxHBNzVoDGG+L+nZZGS3SkpEBsYmYp+yXSPGSKamLEb/w37RtuWglj/IzwOCcgqPKtQV39ao4HoBuRMDCa4lMGJRxFRwLtI0DEypIAqzPIJ7lU2hmEdk5xS6fBxsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jo4sidq5y/EleFH5rJOHR4Os8GAc4DfTnWql8j4Hby4=;
 b=E0D5SstdMNT+rRzopXDaVyib/lOczMzT09ylVPCCm/IYv7AcnTvlr9ktKFkEKntJ9NkYM15h898G0Gp519dnf+/GAnxLdUCJabNJUt5mTIX78WWZm4tyVAOL6xwfPvGztjdV09c4iElynRjoafROHQTFIzaRQWzY9149FNvwvFJbaEpTcc+FAELWC/N63uu/Lnrzj58NWvtaSgR3VINDEfxuvzAuyLz/6tBrXPidNN4SrXzMLnVrtGLIp/z9ixeNsBTTsolh6PcIVhL9uC5AyH2mXMMd0Qq1O36U2SGod7cMCsWFGyyM8zf9O1myf5PIOZasbE40HkfTljAVzTHcfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axiado.com; dmarc=pass action=none header.from=axiado.com;
 dkim=pass header.d=axiado.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jo4sidq5y/EleFH5rJOHR4Os8GAc4DfTnWql8j4Hby4=;
 b=iSx1K0msuykeIIrxt4Bv9wnOQHCc+9xBDzLPSHAz7PHd0OJLY5YmBtCPYy6wtmvqNEHxM0XVS2KuI+Fh/Gu4sAo7AB4zFlZ+wCCUpyEU6QR+K9+s9itPPo88v5Se0vSKzsq4y2zt3R/HlyN+eS7ZOEGp4ieOp18lpyYaTwvSpQk+T5yUXllFukMqX1Bgjl2pIAhdFb/Me3CxdoxXrLcgU8gbaUgQ42I78UZkn7GVWQ04bAXLWuPU2SrZMMp0UAdmV47OZuGQJdTm16I7MbsZZACuk7iRJD+Hh1WcvqMrVL0sEAWmYr50qLGmfULrcOCkuQqqcPO/8NYkOf04Gnbnkw==
Received: from BN8PR18MB2993.namprd18.prod.outlook.com (2603:10b6:408:6a::19)
 by PH0PR18MB3830.namprd18.prod.outlook.com (2603:10b6:510:2a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.16; Wed, 4 Mar
 2026 00:22:48 +0000
Received: from BN8PR18MB2993.namprd18.prod.outlook.com
 ([fe80::9c95:1c06:2cb4:d2c7]) by BN8PR18MB2993.namprd18.prod.outlook.com
 ([fe80::9c95:1c06:2cb4:d2c7%6]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 00:22:48 +0000
From: Karthikeyan Mitran <kmitran@axiado.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "fustini@kernel.org" <fustini@kernel.org>,
	Karthikeyan Mitran <kmitran@axiado.com>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "krzysztof.kozlowski@oss.qualcomm.com"
	<krzysztof.kozlowski@oss.qualcomm.com>, "linus.walleij@linaro.org"
	<linus.walleij@linaro.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, open list
	<linux-kernel@vger.kernel.org>, Axiado Reviewers
	<linux-maintainer@axiado.com>, Prasad Bolisetty <pbolisetty@axiado.com>,
	"robh@kernel.org" <robh@kernel.org>, Tzu-Hao Wei <twei@axiado.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: axiado: Use lowercase hex
Thread-Topic: [PATCH v3 1/2] arm64: dts: axiado: Use lowercase hex
Thread-Index: AQHcq2yNeGHCt+VFxkOIzpvkof2g8w==
Date: Wed, 4 Mar 2026 00:22:48 +0000
Message-ID:
 <BN8PR18MB29930D52F6533147F65C3CF3C97CA@BN8PR18MB2993.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN8PR18MB2993:EE_|PH0PR18MB3830:EE_
x-ms-office365-filtering-correlation-id: 9731e51a-351f-4581-8580-08de79842a12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|7416014|376014|366016|38070700021;
x-microsoft-antispam-message-info:
 Lh6eTB7z3Ut2+R4f5OHMecQTIzB1tx6q3LmdW41Ig7vXGBWVL8+lya5vOOOB397cQ+9Th9svc/ZEa9vi4APhqqBGmPU4hrZk5o6d451SmCP7z2MASDBBfzCQoQvc2M+NdJHe/v3JHpXpZAKbH2uTjXCqcIGhaG1gIa1BHrIZQu/lCKJQLxTjzsZBwB8mu2qRLUABqV3MkL7m9bJeDdf1qAV8TS35voHEcurH9xNEDMzc+LUf4nqKAS/y67a66Qs4xF6DRZ6Fa6q2EcafIRE96ix02zuw4b7Gx069DbJ5CjFPffIG+Gk3iwfU1QVXXzn7kS2WVKOagsZfQgOQbfHEIk8Iy5gCG4XDwB2wqkSD6BE2Vx1rw3Fjg1ZsIw0k+tjDE2+4VU4C8BcNhOg4tpLjuQvn/mz3KK+iZ22SctrWlW25B3NoHSwdZPxOjDNy7wlvE4DYjUBIObiDSgs4YQc2IZkRVhnPQvaaGFZzGFk2YIDhdwVC1c8c/RzAqzkGELCBiT/cf8V8Sa6PvUbPiJUBk6HSyCPhc+BE29ulhuGyTqD4U5AmLluiHZT6i7fZ45D2wY1tB8xZMJlue/Yki+Ro6lcsbBfbB1uH947Ef/HQPYJQ9blLhnnSvWgA504MMiHFWpyo4npwT1ZOeTvAY0Ckpyy2CPJMXuKnBXAnm9V+oRRyioIFp9fgnTfepCl/qJLp0S2U3e1ioGWwqN05fX9Fg6bikVeaeKvahUEjEDoQhE4MF/qrxwu9hJsHGMYjxzCRTH6YX5xFj5PipBUUSKSOAQ==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR18MB2993.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?eQDaaYkwhbBJQrpK+5Ej/UVbJkV0YoT34GAIgffAStnLnZoW7T6O38phdu?=
 =?iso-8859-1?Q?K3F9LR0j7ZxuEdKu50jUKFPr+J18aICEMfFiwQqiqOPU6hcgZ6weDiAIVB?=
 =?iso-8859-1?Q?AAcv/LDiZfqFLdC+/OEXxH1VuIpc8RtTQxD7TGGYEStPqTcY5M9Vi9fITo?=
 =?iso-8859-1?Q?h8lSABpqzJBXaCaW5DE/8e2PYZLP6qS4chu4JYa0tkQDjVKkH2h+Gmo6cD?=
 =?iso-8859-1?Q?wuQ1dFbtP1vndAIvnpq6PEOkv9EkJ3mlfQyql/qvn4BP6lRYPEi0ZL6oC+?=
 =?iso-8859-1?Q?wv3N0digxrL2hJwKTXTwkdIMvn1MEMEgoVTH2hRGx84kMD38/yenU9KKcd?=
 =?iso-8859-1?Q?u4qShKcIHXD/PQ1NBjfxVFZ6xSpGGJEdPkkFgSMoEmsOrMbWlXWLTEiUx2?=
 =?iso-8859-1?Q?jPHinLAWEMmJu8xNUts7RlMP0Gc8PdHBR+nBP0xigtiuUUjp1ePYC5BqGs?=
 =?iso-8859-1?Q?gcY4A4CxK4uGz2ulbBsSU+6YIe+T5h7/1KZqFNjJMPXtURJ+LiUhn1SeZ6?=
 =?iso-8859-1?Q?qqwxwccpJ1+63fFX+XX8gRBV2nEqG24nOPdBtYNroui2q9shpZl8AK+1fp?=
 =?iso-8859-1?Q?pBb2p2El6oju6xleOWlcVPB3PgOCTtm8c1JGho2m096bwmg8mzVWGWF85A?=
 =?iso-8859-1?Q?qd2ib8dRkwaS2pq5/OLJuech+T8r7rU++WElHAH/fBRRXDu8GW4CWbuAnG?=
 =?iso-8859-1?Q?Ea0TCKVzWlktUXrBPkRNSXFr2ByksFjklEV5lFSwmDrzsTLMzKX9W+6vYS?=
 =?iso-8859-1?Q?uK3R9CSgZTxjKalQTNq9CHTVuS+Ig2VSag0O0By0Ox2g9V8Ei6PhtQpPc1?=
 =?iso-8859-1?Q?q/rGYP+KPP2UE2FtwmbNbfcl9hDoB/RBX3HpHxSQTji23nLEi3wD3AtcKA?=
 =?iso-8859-1?Q?3WwVBp3rfk2W4grin5EaYd8Prf7Sq+FvyISvYuTnDFjYoytQ9vhKOcBNNm?=
 =?iso-8859-1?Q?APFF0n5n07+vBxudyTu+l6Fs8yn9JM7SqUkG0JUYAscry7Y1mf8WpPR8lr?=
 =?iso-8859-1?Q?LLau10gu9R2pfGrnUDCC+c6UEOIqmagTJ3CzaBl7SN8BUUYAsvPsNIiahl?=
 =?iso-8859-1?Q?e1v9vlK1Ak4ZNvZBQT4P2hs510d2rbz5DOI1RDVUy04H61E4YphkrZOouQ?=
 =?iso-8859-1?Q?6BLBshenlLDIqNOkMtt6pouu9thhztC6ffXKOoJMVrThzOaEcC7HPO9+Dh?=
 =?iso-8859-1?Q?hGERU3XhB2XzZPxclzpYnglBu56lRK1j5NVOzgz2/yWahnQWSgj5wFCH40?=
 =?iso-8859-1?Q?rWIr/69vc1DrUwJvxlPlVrJSNN/2w4bi6XNQ2pgYgbmKkwi8wb5DsVlG+E?=
 =?iso-8859-1?Q?FQmWbyh/S4xyStH74Stf1z29ql1OqJ6saezQX9k5JyP7l4yV7rlV1G4n8j?=
 =?iso-8859-1?Q?0ovqSjbQAAqp9lyZnT1H9yywsU3LkH9CCJ6JHo4i8JmkHeSkwHmDcCf8eu?=
 =?iso-8859-1?Q?TIHHmA6+nugLv0ChE1JkMYnzO7cWWdGOqQWa2/+DZ3/e4SSAOhVhxBDapY?=
 =?iso-8859-1?Q?TxXcyM8HNEvpYeWO7Xx7ce6AzS9hqOukx6Q5Z31T4iuN4ZgGukUzllRvmJ?=
 =?iso-8859-1?Q?7pDd7c9iUDn5ec4DCyei9c5UtbFE3n6GXLOKZUfMN1V0YRuJonaKosbROd?=
 =?iso-8859-1?Q?ggCM1RZADzHYBjiCZxHjoe0UubO4BaLwF+3dAz2QIY/VNnxSle+UeiBTK9?=
 =?iso-8859-1?Q?z2Y3xuorr9leKv1X7Q7lyfmcgwLG9nnqPhKlUO4hbgP65I5Mza0EUKNERI?=
 =?iso-8859-1?Q?9RTtlDtusXCYGLtdOrD1T2Rt9wNDVbCwmbxucjbTff4w1L?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 9731e51a-351f-4581-8580-08de79842a12
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 00:22:48.1424
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yLgUS8PMs79a3VcxGumUZA42OmBntw8xUYR4hS3VyJs/SO7UR1dzljHPfRQ4m4jFrUI7GIlMhCZC4r2WHDIyWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR18MB3830
X-Rspamd-Queue-Id: 313F01F8E1D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	FAKE_REPLY(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270813-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[axiado.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kmitran@axiado.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

> From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>=0A=
> =0A=
> The DTS code coding style expects lowercase hex for values and unit=0A=
> addresses.=0A=
> =0A=
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>=
=0A=
> Reviewed-by: Tzu-Hao Wei <twei@axiado.com>=0A=
> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>=0A=
> Signed-off-by: Karthikeyan Mitran <kmitran@axiado.com>=0A=
=0A=
> It is not a big deal, but I just don't understand what are you doing=0A=
> here with my patch. I sent it, it got reviewed, so why are you posting=0A=
> it again for review?=0A=
=0A=
Apologies for the confusion. We weren't sure if your patch had been=0A=
picked up by the maintainer yet, so we included it in our series to=0A=
ensure the fix was applied along with our related changes.=0A=
=0A=
> What is the point of this posting?=0A=
=0A=
If it's already queued, we'll drop it from our next version and just=0A=
note it as a dependency.=0A=
=0A=
Thanks,=0A=
Karthikeyan=

