Return-Path: <devicetree+bounces-276599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMxaAk0muWm1sQEAu9opvQ
	(envelope-from <devicetree+bounces-276599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:00:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9502A769F
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:00:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4E0963000FE6
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A69883A4F26;
	Tue, 17 Mar 2026 10:00:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022107.outbound.protection.outlook.com [52.101.126.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB29F3A453D;
	Tue, 17 Mar 2026 10:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.107
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773741631; cv=fail; b=k4mP0j8YIhcRI9rHt/NSxv3L3CmIvr03RGEESjFma4B9mqhS6dPbtgLzGaKPsNpa7uRhPa6sYD1I9IhV66DKFL6pdNyJpbZPz3h5V9Pck/v+7BIrG/B6ICSPdXoZVeEC5Re6IG1HRaL6E0ld+Os2Sn3c3ryBE/ImnSuXd7FK4QE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773741631; c=relaxed/simple;
	bh=DYUWqEpPdEgmyRxkbw3Bzibp4/7XzhBx8D/axYJ4gc4=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=ByTd+wrPUbO1h/VLM/zFNMbmnVuSnt98+puGAFrKzI/96UD2l6nYLpz2JedxBf3VWhHuuVz8lMNYG4tW8Y9Nf6te90ad3USmJ9fu+/a6QNY2S9xiGUvJo7O3yj8Qv3WktAAqRXlE2L4yar2TDJ/ONi9MsPFJjlLK5wUn9IDbzhI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wesion.com; spf=pass smtp.mailfrom=wesion.com; arc=fail smtp.client-ip=52.101.126.107
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wesion.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wesion.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e50BUZXp2zUT7j/hCXNDTuBb0ITP9iPtq5NZPa63pgHSouTc1H8BBQYeEfy9xaHZNSsl68OIBExozaaiLN8dRur6zVHA4CspFuyAxW2tn2CDLTGt6CwydBF7qnKTanrEN4z5Qw9QnTmV4K7lu3idQ+o20Gp5zbI+Xnojl0pu/daibVI1UNn5to5DOeM6eIiVfCiTRbzjsRspiYmQAW5T8bF6x7KDAEEDeod5esIiYwVJ4KzCbHTD/N/A5yS/t7y77pf9jeBvSjpEnctXa+7KtjMdks6LK5XxjhX8pflkb3G/jtMWUcWRQYtdsUqUCHfVaNsq0gw3fTJ4KZH8lmBFFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DYUWqEpPdEgmyRxkbw3Bzibp4/7XzhBx8D/axYJ4gc4=;
 b=VF64eN2j4WTPUAbqzQyCwe0u+a/lsZHoQRAuLoV8l5kqxiWv0LFRKfGd2O/t8/1F7Gfas7Jq9SPNOMhr1vbpzbamN8Wj1OCBcxfzkUM7thO0fzi6/j/43jWe9QNf3CeE5rF0Jyme/VfnRgmUXsO/Y6k1dXgZZQTENDO9OT1mVgu7+V3N5TYSFLtnX+0DPMFIWG2qDoape6z7i8ILJL5KmonjG/1Tix0vuTqc7X21xm6BmOuFjy5+7CQ/bLgIwR3Vl2RX2WSCToMypJfVdkgE5AjYIEDZ1UU5PFGMoiWUgQCeHcsnolkQRJQL5qOvTsp8sioc7n6EOhK8G/Q5unjdIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com (2603:1096:990:91::14)
 by TYZPR03MB6894.apcprd03.prod.outlook.com (2603:1096:400:287::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.24; Tue, 17 Mar
 2026 10:00:25 +0000
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7]) by JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7%4]) with mapi id 15.20.9700.022; Tue, 17 Mar 2026
 10:00:25 +0000
From: Gray Huang <gray.huang@wesion.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: "heiko@sntech.de" <heiko@sntech.de>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "naoki@radxa.com" <naoki@radxa.com>,
	"jonas@kwiboo.se" <jonas@kwiboo.se>, "chaoyi.chen@rock-chips.com"
	<chaoyi.chen@rock-chips.com>, "i@chainsx.cn" <i@chainsx.cn>,
	"michael.opdenacker@rootcommit.com" <michael.opdenacker@rootcommit.com>,
	"inindev@gmail.com" <inindev@gmail.com>, "quentin.schulz@cherry.de"
	<quentin.schulz@cherry.de>, "andrew@lunn.ch" <andrew@lunn.ch>,
	"alchark@gmail.com" <alchark@gmail.com>, "pbrobinson@gmail.com"
	<pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Khadas Edge 2L board
Thread-Topic: [PATCH 2/2] arm64: dts: rockchip: Add Khadas Edge 2L board
Thread-Index: AQHctcL3bHI9aQDC1UW6iuORj+0GaLWyXBYAgAAguTk=
Date: Tue, 17 Mar 2026 10:00:25 +0000
Message-ID:
 <JH0PR03MB86177CE00005EB79A2B620E2EA41A@JH0PR03MB8617.apcprd03.prod.outlook.com>
References: <20260317040248.267154-1-gray.huang@wesion.com>
 <20260317040248.267154-3-gray.huang@wesion.com>
 <20260317-discreet-swan-of-bloom-cecb3a@quoll>
In-Reply-To: <20260317-discreet-swan-of-bloom-cecb3a@quoll>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: JH0PR03MB8617:EE_|TYZPR03MB6894:EE_
x-ms-office365-filtering-correlation-id: c07c9537-e9b6-4f47-1974-08de840c02ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|7416014|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info:
 dciJnW6Lr/PJVpQth4Zixmt1nnQRGCCwQtpXMkBOmHjfleOvZPC3z0HCD54mCqVSagV0EyBzWTT021H9LKDR4i4gFS3A6P3bgSciaJdcGjXZpdKcgbe2aD7gxiRLpjweHpFywQNmhuCnxTSjF6W1ZztdPXFjjk6SM6AwUrRHGMSOhEXZzMRzDhTAh+EfRfDtSFQsOG1sWYEId1WFQvxxdJe5EJ5xU1Lv9xzAw/E083r8m0R4cN134ZG4kEe3V4kKCrgyVA0iBci6+CBsLNa0BvoM5YZK8apfWPfUKj9RigBVZGZx9j9h5evXojHmAgEKM9MIroPdb9G65JVUJlyJ6MB86F3OBli/BJ7ffBUK/U6mOnsef+1HnWcYOFungeKuYPm1FtN9wEMgXpyHHSl8tJl/WDCm4MhJTI+nPbiZZiYLWcRuO9iXuL/CwKyfTsZ4CuCbr+g8iJyIGf2KieV1eYwZ9URvCy8LQaRX85PtBwulmMqroko4Mpnsb9pkVyCFDU3Ub0LgswF9gB1iVda7ImoNhQn/IDZIATn0Omc9kOXSuW4kkdpi3cS/4ttZmm6P8lz0R2XoMaFcWEYWlvfpE+ZolxpE24+ETu7Cb30KfVRUHR7vXfzIeutxSNjy0097WuFFfAfAeU0ZtZEhSZ2qauwX5q74X7Wghj2pitPBiANzXriJ9z6W9LKgZq6A/BbctFb0gt7h4jIV3NH3mjYsCysMCsUT3SQEZP5ZzY26hFdcov8gcNUcX3IfQQRiB78p
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JH0PR03MB8617.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?2e8FF69iMyRr2JTc/zlp0CZ05nNw2GchC99GsBNnVtQfzjB99ot6IwZ3bs?=
 =?iso-8859-1?Q?gPQLSDmu+yj271qgHDQhI0aX0PHgyJ52NPQqnjWlMybNu2L7Rszu6dV0vp?=
 =?iso-8859-1?Q?FY6IHN1xWt3ikCIg//6BAcDUissSWeAyhVIG6CUuTjpjverxKJ7x0Q7SvN?=
 =?iso-8859-1?Q?/uxJRad/19WEpFY7/+Yn1g1KJ0zxypSZOT3YTrKe8hscEhv34RMJ677NkK?=
 =?iso-8859-1?Q?PVvbaJNCHn/ipGcQ3rf8DCsnd7M/e8qWyTi3WDugDVsCZUYKPJJaxT5gxL?=
 =?iso-8859-1?Q?pshZNHDkmlau8QLIwlk3ovqLOAVQ+INxaEGdGCpIUXoCQSn0427UC6URv7?=
 =?iso-8859-1?Q?79oYJStUetgdjOZK3FUUgmPnnvi8SlSLr9iPtZGHM+4hRwlsABJQ2TJt6X?=
 =?iso-8859-1?Q?tfLTCO6ylpe7U/HNRzgyrARgOGo8wn3lFERzprx8dGJJivgVg3g5jhdCo8?=
 =?iso-8859-1?Q?Kj3Ppmilyx7KyoYhpQZix/uoVj2BuB+JaLSrirXLcDI9E582+0sgoPSk3S?=
 =?iso-8859-1?Q?ZoN/cIMOuLOEREVFZGDgpvI0gYczORLqUlCyO1RLfR3FtjfFJ7KuNdIhj+?=
 =?iso-8859-1?Q?M67um78EJI7ZWfHdyHuLZ74efqECNhXe2jaGdSUt1EtUvKkwkOauQNHX8Z?=
 =?iso-8859-1?Q?Bdx2sq5jiGTKQhoiBFyWGWRV3niH4aUv0WnEAr/DHqaHJ97nmqtU/rN9CG?=
 =?iso-8859-1?Q?CuUsiEEgNGACZV7czNhtykgoRH0GG4SxMojhv1Bda8ajXc/KDqbPo50STb?=
 =?iso-8859-1?Q?pGCkXgisCFtqlKC5BNgiQDwu7ahICYuR5lWW5O26QQ//D9HF01KsdYHFwJ?=
 =?iso-8859-1?Q?a2MJSE/OmBvnLYYeRvv37GTYOnDSgimnO5x7/K/zWk47mYkeR6ROnDP/tt?=
 =?iso-8859-1?Q?D1W/SQOsXjHU1aUFvX9zoU3tA1en5CiYMkVTeDaq90kQynE4KIlI38Xs8G?=
 =?iso-8859-1?Q?drhYY3SAprNX+/UZOmUfhZlnUzGyz4ZY2HAq4UOddUGgWicbrmFi6L2MvG?=
 =?iso-8859-1?Q?1KNio+nHyW3URxq/pqHbQULqR6BDeXLl/SWlqmGm6NedSP0El8SzC2CCXp?=
 =?iso-8859-1?Q?FmgxoLWM8pGLJ43Rz7fMh8bkoCIGckeV5kA82nvhlN1SKAv5q+60fTqEWF?=
 =?iso-8859-1?Q?7TMFbj59C0zpAqhzvbXYoBWhGxUKuPGGPfxEjnrTGkzZph4OfDwVBk7DKe?=
 =?iso-8859-1?Q?y+f2zF6ydf5FI/UdT1/yCfQmdjq/K5UVMHETCh5KHqTFhnUYcOO0icU6tC?=
 =?iso-8859-1?Q?R4neiHQMXvgTqyTVhu0qDsl48tMRionxMiO0lGnXtPO5jZ1m3c33Gh6wXl?=
 =?iso-8859-1?Q?SffmVyuoCfgs4HPtzqct1t1MVDAFNGxM/XkkAC7zZjnVJR4UaPUQn/o4Fo?=
 =?iso-8859-1?Q?Z6fZnGr7+Q/ezgcQSbmeJVO2Sri5hVRHdlPIp/IIcv2QTxHleY2vGHRG4T?=
 =?iso-8859-1?Q?fpnGTQJhnjG0ICdz/mywXL+DCGwsMVp6im4nEfN0HlPPt20DqPLhdAgVNx?=
 =?iso-8859-1?Q?n8DVHqotynakuOUueRE6SBOdwKpSe6s1U0xFodsQdtSM/CclVy+6XbmJDb?=
 =?iso-8859-1?Q?gt7VJeCJ6Rjd+VJSFMVxvrAsvZ9Q1OXen3skwcLhajNdlK/XcZetKju9Dg?=
 =?iso-8859-1?Q?pIaCVOPw8KTP+rYXMXWvN4lQCZqtYhIndhT3wUk2EL7Pc+WjSF7Px+XBm8?=
 =?iso-8859-1?Q?h801tf4gbyipySae+V7nk9HsFNoK5WarXP7tW57jn1hFGXpylmQxByJ6LU?=
 =?iso-8859-1?Q?YcafAw9tEZ1E+p0Vc+MO6AqRUHd5BZnT94h4bc00k1Bv2Y?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: JH0PR03MB8617.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c07c9537-e9b6-4f47-1974-08de840c02ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2026 10:00:25.6790
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WzlgF3l5RbcRpz5Ol+RVCpbtq3w13HWKziFUoDdLHPXfYA3zxyRAK7eKy0bd/v7R9F4rbuw6jzOoPL0wlTKYIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB6894
X-Spamd-Result: default: False [2.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276599-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[wesion.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[bootlin.com:query timed out];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[sntech.de,kernel.org,lists.infradead.org,vger.kernel.org,radxa.com,kwiboo.se,rock-chips.com,chainsx.cn,rootcommit.com,gmail.com,cherry.de,lunn.ch,khadas.com];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gray.huang@wesion.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.542];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[JH0PR03MB8617.apcprd03.prod.outlook.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DB9502A769F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

>On Tue, Mar 17, 2026 at 12:02:48PM +0800, Gray Huang wrote:=0A=
>> Edge 2L is an ultraslim, credit-card sized ARM PC designed by Khadas.=0A=
>>=0A=
>> In this patch, we will add basic device tree support for this board,=0A=
>=0A=
>Please do not use "This commit/patch/change", but imperative mood. See=0A=
>longer explanation here:=0A=
>https://elixir.bootlin.com/linux/v6.16/source/Documentation/process/submit=
ting-patches.rst#L94=0A=
=0A=
Thanks for the review and the pointer. =0A=
I have rewritten the commit message using the imperative mood in the v2 pat=
ch series.=0A=
=0A=
Best regards,=0A=
Gray=0A=
=0A=
>=0A=
>> Only eMMC, UART are enabled, so it's capable of booting into=0A=
>> a basic Linux system from eMMC via serial console.=0A=
>=0A=
>Best regards,=0A=
>Krzysztof=0A=
=0A=

