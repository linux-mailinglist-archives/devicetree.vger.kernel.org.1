Return-Path: <devicetree+bounces-111021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0AD99C8C7
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 13:25:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 484C31C2153B
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 11:25:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EE2115350B;
	Mon, 14 Oct 2024 11:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=bp.renesas.com header.i=@bp.renesas.com header.b="pwoGjN20"
X-Original-To: devicetree@vger.kernel.org
Received: from OS0P286CU010.outbound.protection.outlook.com (mail-japanwestazon11011009.outbound.protection.outlook.com [40.107.74.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D50A33C5;
	Mon, 14 Oct 2024 11:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.74.9
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728905110; cv=fail; b=GvFRbWshix/VPcScW15sHaqXBJGNS3Mmsq3YKNx6P+/oJgHVK0UkKGtxt8U0aj7b5dLxJq+CRfcwltybn6iGxF0U+OX+Xw+6/iF88QIw2UcRWhYGpvrtQBle2L6Dk0CsbuBVCs8vc3yDBFRuUDZy2q9pBvJX6tiqAaOeQByxBFU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728905110; c=relaxed/simple;
	bh=v76ZIbwlrUP0ZVZEvS5UhlmQp7AC68qTYNFHiqZpXbI=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=RjVRwkFyUjXBRMS8g/0gtph+K4mfPpP2kW4sLjC0ZstK1/qX28KreiJ2ceLLpYXMUIgh6EqxEkIUucBzaKKJQ/YiSaYQg9Dp9tM2Wfw2Ny3D6xDEMYnBVThitgoKUERQgmxbhwz5X0zw6Nf0Az/3y3/RYYQsYnJqpGH+GZFEd0o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com; spf=pass smtp.mailfrom=bp.renesas.com; dkim=pass (1024-bit key) header.d=bp.renesas.com header.i=@bp.renesas.com header.b=pwoGjN20; arc=fail smtp.client-ip=40.107.74.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bp.renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GTJko73Mxf/zAIT5GeNUJJk310SXqkvshPakJDslRtQQNajS0o7ZGKR2blN9VGVE+EDxEQT9seGI4iqZ7FG9QFZ5PMc/Sl4GMD6sS4RMzIw4JyiKl+PHjr9DsJn7USUT6JtPQq07fAKbXcfas1Ca5z7ZMdXhFwMrZPOOz779XGm4YYU26jeUDvWvY4BwQK9+Z7nkhl6nFwclc4ESZqgLl/6oHB9hLtlPzTjNE3yV1jjE+8bKyDbl6vHP4gHz7EaC7JaSwSKRaEYgmhrEuBr0baNSjc2TVlJPujTkwGcD2VtMEBLAKu3L/kAiiroxkrpM2PWDhU6bkCCF/MKcIXi+ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JJ6Jm+CGxlAnbbz96ktU4EjwwWsrgn07VXtCeuHKxi0=;
 b=BjdRMnnXvMsG7zDg1l8kUlSeTzaK0hShEFvGyUaf402VCAVKZ5A5DVYMUX69GeGYu7IGE2rqRGm+JKAWMqt4AyJLwZb6aW4rUbxQEt3zLJoqnT6ehcguuMsolrCh+aKnwqBhMkQ7nweVgj8RYunwd4DftMFiLfEuYT7OrLuVhjfnfjZNPQdI9Ych2SLGFl+/OYwvZBOH+tuA//m0HRX0Tm097uW7eYZxCxwny+elkip3h3VqqXdZT5PaXD9zfpqSt2tZCvh+rQYUZWBHfzU4S3GEM0bkJ6GmkArKny02RSCptKXxYHTbu5Y8XEzRpjvd+xWfT/DeAHYabycyrQgX7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JJ6Jm+CGxlAnbbz96ktU4EjwwWsrgn07VXtCeuHKxi0=;
 b=pwoGjN20M46PpYBvevS5kLudJU6CxdFcg4ADCNBNJYG9KpP88eA0nh4oSmOTiMARWy0sF9peVK9TKnrIgwAqq3gbkGcGtIyFBa9pDGWkGH1hoNsQUTCTLqD0xWDxdPVyW3gHbIFKHkBpsX0qBWHfSQzBNl6tC8Sm6c0BbLH9ctQ=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TY3PR01MB11447.jpnprd01.prod.outlook.com (2603:1096:400:3dc::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Mon, 14 Oct
 2024 11:25:00 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%3]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 11:25:00 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Liu Ying <victor.liu@nxp.com>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "andrzej.hajda@intel.com"
	<andrzej.hajda@intel.com>, "neil.armstrong@linaro.org"
	<neil.armstrong@linaro.org>, "rfoss@kernel.org" <rfoss@kernel.org>,
	laurent.pinchart <laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se"
	<jonas@kwiboo.se>, "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
	"airlied@gmail.com" <airlied@gmail.com>, "simona@ffwll.ch" <simona@ffwll.ch>,
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
	"mripard@kernel.org" <mripard@kernel.org>, "tzimmermann@suse.de"
	<tzimmermann@suse.de>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
	<kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
	"catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
	<will@kernel.org>, "quic_bjorande@quicinc.com" <quic_bjorande@quicinc.com>,
	"geert+renesas@glider.be" <geert+renesas@glider.be>, "arnd@arndb.de"
	<arnd@arndb.de>, "nfraprado@collabora.com" <nfraprado@collabora.com>,
	"o.rempel@pengutronix.de" <o.rempel@pengutronix.de>, "y.moog@phytec.de"
	<y.moog@phytec.de>, "marex@denx.de" <marex@denx.de>,
	"isaac.scott@ideasonboard.com" <isaac.scott@ideasonboard.com>
Subject: RE: [PATCH v2 5/9] dt-bindings: display: bridge: Add ITE IT6263 LVDS
 to HDMI converter
Thread-Topic: [PATCH v2 5/9] dt-bindings: display: bridge: Add ITE IT6263 LVDS
 to HDMI converter
Thread-Index:
 AQHbHHmcAQrmzLsoUU25rfXdj34z0LKCyOiAgAAMWYCAAoXDgIAAYU0AgAAhkXCAAAh2gIAAAEmggAA1cgCAAAB90A==
Date: Mon, 14 Oct 2024 11:25:00 +0000
Message-ID:
 <TY3PR01MB1134657F6286446CE3A9D168586442@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20241012073543.1388069-1-victor.liu@nxp.com>
 <20241012073543.1388069-6-victor.liu@nxp.com>
 <4a7rwguypyaspgr5akpxgw4c45gph4h3lx6nkjv3znn32cldrk@k7qskts7ws73>
 <07b47f70-5dab-4813-97fa-388a0c0f42e9@nxp.com>
 <dvcdy32dig3w3r3a7eib576zaumsoxw4xb5iw6u6b2rds3zaov@lvdevbyl6skf>
 <90e0c4ac-1636-4936-ba40-2f7693bc6b32@nxp.com>
 <TY3PR01MB11346530A53C8085561713B6086442@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <ki7zj2qvf64oi45kcnxl4maoxfvxtawko3vcdikg7dc5q6gw7u@5obyfvyylb3w>
 <TY3PR01MB113463A0E53DAA7481926219186442@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <p42wdftkplib2c3hrnobinhytglok53cunqywtbcdfcp4gg7cg@4oclcixgcxso>
In-Reply-To: <p42wdftkplib2c3hrnobinhytglok53cunqywtbcdfcp4gg7cg@4oclcixgcxso>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TY3PR01MB11447:EE_
x-ms-office365-filtering-correlation-id: b2a7a1f8-f584-432f-61b8-08dcec42d730
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|376014|7416014|366016|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?eosUDhRd8+YneNAFF69XDChZq4oMdnmUFTxkGCtOH954hXkBEZV0iatHqRBr?=
 =?us-ascii?Q?qbJC+1EOZUOXJZqSRs3tYX2i7gHk3WXw9vycHgllvQ62RCbaEUSnTBk56Uvg?=
 =?us-ascii?Q?Zs2WSNx4FJuEMul+9kAOIBn7Ceovrd1sGgKb1/n5r2jy1zf8iS1PsFDXwHoD?=
 =?us-ascii?Q?Wh7ehBPrwkcANLgeOVDcx5xYrmiKFqMJ4Uj0NozhFbUL7T0BX5JkHiplonLj?=
 =?us-ascii?Q?vXvlOC4T+61/hTKOwxReA2vUQ+mcyabC4hSlsSaY0t8x/+k7RrcOU9bpM1yY?=
 =?us-ascii?Q?u6Gl2BOCFXWle8/dG5WLGpkb2hVjB6dpJDb+/fr9+NFFNFq+xeNui7ix9hGD?=
 =?us-ascii?Q?jvGHTdroJdxpFY65BpkPULXVir6t3UETJES7/mu0QLXopUgWIRynaCAR6X3U?=
 =?us-ascii?Q?l/4CwqKSCQQ4xEg4uqMWSY+PHMG2hEIKHNANo9NQ4yjkyS4GvSovKGC7shvM?=
 =?us-ascii?Q?TYPHGGWo7gTzqA4FJPJW5PK5qVZI7Zgx5BpH7JaR8sXFbKYRKwJx1eC6s07Z?=
 =?us-ascii?Q?56a3Rb4yxSGGJ3GqGHxDu8HOBHVcPtZN7Q+R6xzXU4JgWNQjvRYb/NTpIhzW?=
 =?us-ascii?Q?/7DoIH23iZXwVBUGp06jTqNyrEU6y3bZbRYwogNOA+zW6ppd4LxY9udd2L89?=
 =?us-ascii?Q?a20eEr3oLNDvaP4cBbMrOxaj6BjZ6g0rQuHAmOfQz2T+bpYuRju/nJP37OBJ?=
 =?us-ascii?Q?5zxnbT3YQQfxPmq8VfCtqaiiRV6hXkm5kCYE18ZOyICUPEnv+Y2avFDOy7Fm?=
 =?us-ascii?Q?xLXbwNSv7wV5BKmPYhEKiegZDnVQt9I17lm0fK5eWtWdTt7mIVZxHmTNK+Ca?=
 =?us-ascii?Q?H3B5oSI2Xlvh31xIZNGryam77UDMe6q5fHnVrNUTFV96u3j/Q4LGF00PUFT1?=
 =?us-ascii?Q?+XPtefFGJgWUhkVR0fkWlVcikKtKm7cgS3yjOe0Smm65vo5AvlJeBtnNtj7t?=
 =?us-ascii?Q?b/GJFnICnqAtqGciMFuaF4akUZbuWxIUixJYl/mZjL6kYGuyx7FrjDCGqeyg?=
 =?us-ascii?Q?4HiYGmm8wRNd0NMIZA2qHJLNlv7RgA1z6lJJ15i5NQhhQKhRLGFbPF1qsA5+?=
 =?us-ascii?Q?ifURCmAyNEYxIiTlPDJZt+8sWe5myAxg7Ka0r7iVyqNi809Q6kbQPl22o8N9?=
 =?us-ascii?Q?eBOA7UhWvDDgMej2WFW4ysZ/ERqYCLPeWzES20CNuLz6FyQGUmzTZf/8+zF7?=
 =?us-ascii?Q?z+gh7YDF+qUHfVW17/1xlm18zC0WjSuLH565we6v+4mm1x6fVnS4U+rY/Kxf?=
 =?us-ascii?Q?m/iaPls5kZPTFx7jZ4HroCLiNNyka+gM82tZeno4Ww=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?9CYQnEDK7MtTKfnRy0X35rR/jFY1SIJX5eWgUOWmX2KrxOhZYcyUScQQJJfT?=
 =?us-ascii?Q?whhL5/1QDNIFiZ/kvDm0qcpZaPkFk7E65s2B3B8kMEcwp2sRYxiG1EYGlKM1?=
 =?us-ascii?Q?IHogSXAcHxlZ85ddN8Bu0RvVLah9+CYN6xufvWtpnVSe7EBlURymgLyRF6nX?=
 =?us-ascii?Q?d71+wSsX4Va/tFryPh82WgS2U7j1A1kbCYZIyI2kH/NUcVPujp5Vy63pN9wB?=
 =?us-ascii?Q?BNOcACuE6BQwVw+lFVFVwkPaGJ6DYid3XyGxfpaUtgMz4Lgb25Yd0brjhw7h?=
 =?us-ascii?Q?hICf/wqZaW8DYwXy4xk+M4wlMawGCA4fxYFtWKbhOc3aVfMxfGiW4dU5eLL3?=
 =?us-ascii?Q?gD4lzfa2dEE00wOz7jpRKARw3wOypZe4UlEDCLLAOt8TaAZAe93BAc+ce5kQ?=
 =?us-ascii?Q?b4Xn4I3EqHTaF/iHvTBDBUJPIi3QQufE0Lotjk7/BvpAT5cqvtGQ/6tkd3gH?=
 =?us-ascii?Q?P5hatsawMqUbWdW5hR04xhQL6Wolpgu7+GXMTFoD2ZpUtw6OYKDUQMLOSDyB?=
 =?us-ascii?Q?6LHOtcjqD7SzYXXxVx5wfu9VsYAfvTUGnx2JAvEenItOD6L5idw+HaF8B5gQ?=
 =?us-ascii?Q?q/xFlIHmc3UPCrXR9GUWpFCn7HiuexG12p0vkHtfURuLsrINPAAV2XuRlePb?=
 =?us-ascii?Q?jd8WFof+lCjBkaG9xy8y5HhiQIIJOihKF2M5kwkB2rd5O6yxyLDUvm9pcJ4g?=
 =?us-ascii?Q?goAsYPEVLRlpSrWY45iQoHyAa+2Cj431c1qoXFXU264wb3cwivQd6qfvm703?=
 =?us-ascii?Q?TnA89aJCBfw5Eh9XB49GRqYo+L50LokKO2VlJcQHnWhvUr3+XM7zBjQ+HEFr?=
 =?us-ascii?Q?5g7cH5S/65Wkup73kCIbzg0ogi8r1AkVPs3zNbB+LkPezzIjJRd9L7xJsfSi?=
 =?us-ascii?Q?Lm+MEHG94Eq3brgGeg6L7blc36zrDU7IdME0HDLulXDWUxTYA5yEpEDK/LT0?=
 =?us-ascii?Q?+UbegqcqEyU2QLK7C9EfUfWh6uwxAJ1IFYqRwO6cMn/wpUz8Uil0JRiagaS8?=
 =?us-ascii?Q?D1w4UMYbjIwWkDC8qSOSMgqCRNjKuvG04JAaqblOofLUkkshQCLEGPpvaSpZ?=
 =?us-ascii?Q?s1E7mprPIEQY4c1Az6accUwMykgtaFV/NWFLdL3u2ByUf55bGvqwvz2olGR3?=
 =?us-ascii?Q?N6/z3Dkq7W3vu6LvDMy2OTnTPScDMIUj8ghuGUboyxpKhboCJxzmWldhIaQA?=
 =?us-ascii?Q?5OtYmaBIUb8JJ3ImUJiuClxP9FThExfbfWxFU/hDAN8Of9vwhaEVLoL2A0ZE?=
 =?us-ascii?Q?2BttQz8hfwji2l63Vu4+EQOkLt9UsSk9nXZiqTO/4W3D4RgZWN3+WSgHWxCS?=
 =?us-ascii?Q?z71s8v8Rhd5IR10CxW78+tP0uKaAZqdbi2vDI5xQY6ihvCcv8tXjuGhV0Q9p?=
 =?us-ascii?Q?9GO28YZNETLGwGqObpTS9zFIIpxoBbXqfFjbCbjGpmR5h36OKuFrDeRfDorR?=
 =?us-ascii?Q?HgLPvS/yophJip1tSTm9v1QUqlrt5fdT2xEag5w1SUFG/zoPtj6cVL3Lcqsw?=
 =?us-ascii?Q?MKgaTai2o8HXywOu/z43tbJpTOB2oip8qdMIyE3o7BlQ6039pTcDPM2XSIqa?=
 =?us-ascii?Q?TSQYhypJnDmVk1I150DdBcgfv9g2q2Fb0GkXTSI6L/XvYs1EIFmHq0fpsG9T?=
 =?us-ascii?Q?wQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2a7a1f8-f584-432f-61b8-08dcec42d730
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2024 11:25:00.1496
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tkQKmoxkVZ+atFObsZ3rzCZyUOHIAtRNRr9KYePOYR48GHlvq2Ce4jPE1qAup3Ip79dYYki9GqsDp0EMiuc9nmUslqgsKS9zhfTaMgrmG3I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY3PR01MB11447

Hi Dmitry,

> -----Original Message-----
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Sent: Monday, October 14, 2024 12:16 PM
> Subject: Re: [PATCH v2 5/9] dt-bindings: display: bridge: Add ITE IT6263 =
LVDS to HDMI converter
>=20
> On Mon, Oct 14, 2024 at 08:09:44AM +0000, Biju Das wrote:
> > Hi Dmitry,
> >
> > > -----Original Message-----
> > > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > Sent: Monday, October 14, 2024 9:04 AM
> > > Subject: Re: [PATCH v2 5/9] dt-bindings: display: bridge: Add ITE
> > > IT6263 LVDS to HDMI converter
> > >
> > > On Mon, Oct 14, 2024 at 07:39:16AM +0000, Biju Das wrote:
> > > > Hi Liu and Dmitry,
> > > >
> > > > > -----Original Message-----
> > > > > From: Liu Ying <victor.liu@nxp.com>
> > > > > Sent: Monday, October 14, 2024 6:34 AM
> > > > > Subject: Re: [PATCH v2 5/9] dt-bindings: display: bridge: Add
> > > > > ITE
> > > > > IT6263 LVDS to HDMI converter
> > > > >
> > > > > On 10/14/2024, Dmitry Baryshkov wrote:
> > > > > > On Sat, Oct 12, 2024 at 05:14:13PM +0800, Liu Ying wrote:
> > > > > >> On 10/12/2024, Dmitry Baryshkov wrote:
> > > > > >>> On Sat, Oct 12, 2024 at 03:35:39PM +0800, Liu Ying wrote:
> > > > > >>>> Document ITE IT6263 LVDS to HDMI converter.
> > > > > >>>>
> > > > > >>>> Product link:
> > > > > >>>> https://www.ite.com.tw/en/product/cate1/IT6263
> > > > > >>>>
> > > > > >>>> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> > > > > >>>> ---
> > > > > >>>> v2:
> > > > > >>>> * Document number of LVDS link data lanes.  (Biju)
> > > > > >>>> * Simplify ports property by dropping "oneOf".  (Rob)
> > > > > >>>>
> > > > > >>>>  .../bindings/display/bridge/ite,it6263.yaml   | 276 +++++++=
+++++++++++
> > > > > >>>>  1 file changed, 276 insertions(+)  create mode 100644
> > > > > >>>> Documentation/devicetree/bindings/display/bridge/ite,it6263
> > > > > >>>> .yam
> > > > > >>>> l
> > > > > >>>>
> > > > > >>>> diff --git
> > > > > >>>> a/Documentation/devicetree/bindings/display/bridge/ite,it62
> > > > > >>>> 63.y
> > > > > >>>> aml
> > > > > >>>> b/Documentation/devicetree/bindings/display/bridge/ite,it62
> > > > > >>>> 63.y
> > > > > >>>> aml
> > > > > >>>> new file mode 100644
> > > > > >>>> index 000000000000..bc2bbec07623
> > > > > >>>> --- /dev/null
> > > > > >>>> +++ b/Documentation/devicetree/bindings/display/bridge/ite,
> > > > > >>>> +++ it62
> > > > > >>>> +++ 63.y
> > > > > >>>> +++ aml
> > > > > >>>> @@ -0,0 +1,276 @@
> > > > > >>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > > >>>> +%YAML
> > > > > >>>> +1.2
> > > > > >>>> +---
> > > > > >>>> +$id:
> > > > > >>>> +http://devicetree.org/schemas/display/bridge/ite,it6263.ya
> > > > > >>>> +ml#
> > > > > >>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > >>>> +
> > > > > >>>> +title: ITE IT6263 LVDS to HDMI converter
> > > > > >>>> +
> > > > > >>>> +maintainers:
> > > > > >>>> +  - Liu Ying <victor.liu@nxp.com>
> > > > > >>>> +
> > > > > >>>> +description: |
> > > > > >>>> +  The IT6263 is a high-performance single-chip
> > > > > >>>> +De-SSC(De-Spread
> > > > > >>>> +Spectrum) LVDS
> > > > > >>>> +  to HDMI converter.  Combined with LVDS receiver and HDMI
> > > > > >>>> +1.4a transmitter,
> > > > > >>>> +  the IT6263 supports LVDS input and HDMI 1.4 output by con=
version function.
> > > > > >>>> +  The built-in LVDS receiver can support single-link and
> > > > > >>>> +dual-link LVDS inputs,
> > > > > >>>> +  and the built-in HDMI transmitter is fully compliant
> > > > > >>>> +with HDMI 1.4a/3D, HDCP
> > > > > >>>> +  1.2 and backward compatible with DVI 1.0 specification.
> > > > > >>>> +
> > > > > >>>> +  The IT6263 also encodes and transmits up to 8 channels
> > > > > >>>> + of I2S digital audio,  with sampling rate up to 192KHz
> > > > > >>>> + and sample size up to 24 bits. In addition,  an S/PDIF
> > > > > >>>> + input port takes in compressed audio of up to 192KHz
> > > > > frame rate.
> > > > > >>>> +
> > > > > >>>> +  The newly supported High-Bit Rate(HBR) audio by HDMI
> > > > > >>>> + specifications v1.3 is  provided by the IT6263 in two inte=
rfaces:
> > > > > >>>> + the four I2S input ports or the  S/PDIF input port.  With
> > > > > >>>> + both interfaces the highest possible HBR frame rate  is su=
pported at up to 768KHz.
> > > > > >>>> +
> > > > > >>>> +properties:
> > > > > >>>
> > > > > >>> No LVDS data-mapping support?
> > > > > >>
> > > > > >> It is enough to document number of LVDS link data lanes
> > > > > >> because OS should be able to determine the data-mapping by
> > > > > >> looking at the number and the data-mapping capability of the o=
ther side of the LVDS link.
> > > > > >
> > > > > > From what I can see, data-mapping is specified on the consumer
> > > > > > sink side of the LVDS link. This means it should go to the brid=
ge's device node.
> > > > >
> > > > > Then, I won't define data-lanes, because data-mapping implies
> > > > > it, e.g., jeida-24 implies data lanes 0/1/2/3, see lvds-data-mapp=
ing.yaml.
> > > > >
> > > > > Please let me know which one you prefer.
> > > >
> > > > Assume a top level use case where a user changes the format from
> > > > JEDAI to VESA using On screen display or modetest(if some one adds
> > > > support for lvds-mapping) then setting of the lvds data mapping sho=
uld be dynamic.
> > > >
> > > > Maybe for initial version hardcode with JEDAI or VESA as default
> > > > and provide a way to override the host driver and bridge with
> > > > requested lvds-data mapping dynamically
> > > later??
> > >
> > > The ite,lvds-link-num-data-lanes property should be removed, it is
> > > not standard. I foresee two ways to specify the number of lanes
> > > used: either the data-lanes property or the data-mapping property.
> > > Granted that data-mapping replaces the data-lanes functionality for L=
VDS links, I think it's
> better to use it from the start.
> > >
> > > Frankly speaking, what is the usecase for specifying the data
> > > mapping dynamically? What kind of uAPI do you have in mind and what i=
s the usecase for it?
> >
> > It simple just want to change from VESA to JEDAI, how do you change it =
with existing DRM framework?
>=20
> Why do you want to change it on the fly?

It will reduce validation effort for LVDS and bridge driver for testing var=
ious bus formats.

By allowing on the fly, with single dtb, we can validate various bus format=
s.
Otherwise each dtb for testing each bus format.

From a product perspective, this use case is not valid.

Cheers,
Biju


