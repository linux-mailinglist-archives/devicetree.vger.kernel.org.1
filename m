Return-Path: <devicetree+bounces-133465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0CE9FAAA3
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 07:44:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4AFCF1885F5B
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 06:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7684E192B75;
	Mon, 23 Dec 2024 06:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="c+A0ILXT"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2075.outbound.protection.outlook.com [40.107.21.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7FE192B6D;
	Mon, 23 Dec 2024 06:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.75
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734936175; cv=fail; b=abyvN+DsbZpBhkyj952zAthYNZ3HuWw8+lCyq4LS8FsoTa2yaGXaLBY0gGU4ppe/RuegpiNxm5xmXB7y5F4P7zHVYvDXZQj6lfJkFQePAAbgOfk7O8gbJldudE+g3Yc5kbhI/O7YvIQscLnZ804A1xjAHFQAhHrKt2RCpsmcn3w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734936175; c=relaxed/simple;
	bh=YVCREuCAzpvEN6Z335jcwN4lUosberQa28Xiw2neqM8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Y+9o4hJJ6XNv3ZPz8yemhO/GX8Fp5fghrdOovMo7f4mL0iZt2w9Cm0NNRQXnVw+GW3heHZJwKkzuqiFjp6m5SJy8VeUzI7VkahrRWz8x12d4jrD2EkiO+9ZZd+nG+ckfabk9tAdtwsDfFqOM1lsppr1juSfjYwpezrfMKt556QA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=c+A0ILXT; arc=fail smtp.client-ip=40.107.21.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q/ri8HymZ9kbQag2J8J6W5gPB/mHIFLPlfoAJWYu5X1QkDzupEyWfvvFqENuCeMDoCXqK06iH2Rg3vPwWW4GX8PkvqirUUqQdKoOSI4rRfDhw0TtMrbxuV0V8QjXu+kzOKXjWJ3WFM6liEj1ohKJgAAXX7tng++w9L7QXvXFGxnpkkpUV4kUaQ9opTmrJI7UHS4HWeO8I1A7tkCWwx0+h3DmBC/fdUx8tGKaAGlFrpxy1cQNHGbPCTfor5apNII+l9FK7GU0qAoShDiQ75thHNX+HPd7RTPlmZboNAkFiY67TCvdRnGyeFEQBcEdUSqxIaf6QmpeOUU/+aSsx5JX6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vjHzbLsPa8aU7a7NL9nG12oXCuLBvlPl9KeGN0aVDwY=;
 b=w+efmcY6Xf2weLLNwAaY0hYyx5wJxBQzNmFDVt9caviTeVR4zKX14KkEHjm4PGJXy2NIBpYPEweycTl7/ue/E+x47W3zE48snbdAg5GkG/j6d4NGlKJpNmoL3K4NaWioXld7gMCxq/FU7ZT0e2FcHHh+H0+t6/PmjQneXUfzv7v3bOPq+xMibkEZV/+ETBAXL0aBQ2q4Z0Qzv4rszouHdJwuLecqNhieebih16yXaQEO3oA1rBLHiTS8vowEjTNkpCsMM/V0D/sMAN/IPTosmLPmUMOjXIxKAX0vKdYWebwVjKWP+fDjrM7d1Bv45FnZ+YF5H2BYVxYv/XePGljYTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vjHzbLsPa8aU7a7NL9nG12oXCuLBvlPl9KeGN0aVDwY=;
 b=c+A0ILXTQ8mlqxjCS+CA2gpS5CYhH3bip+LBPEG85VDSeX8YTrJrC/3+TWCJsY9MRhlYwqLTfbYBRrmih9+zUXzZ3pSOi+Tpcg0kz7IZfKnQKu/JdLb9sXwQ0Q/cyMN7Axzv/8B5CC51a4X/KNcWLWQI3PLU4Wb57Jx6+ZcNodPwCh4VksbezkBeR5qy5dZSG/o9XKmTOauwEFfZ+evBLyi/AZeaiOlDPvHZFzFZOQqY9GEVsigx5zLrOIAuGmqvVur4taoonsLqKLIINCg3LeFCsWAtUvCuEb/JrHLMueDJdqEJ0Nv8ESL9nAIa2n84iBQzwWzqPoxEitW9cwn6VA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB7941.eurprd04.prod.outlook.com (2603:10a6:20b:2a6::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.20; Mon, 23 Dec
 2024 06:42:46 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90%3]) with mapi id 15.20.8272.013; Mon, 23 Dec 2024
 06:42:46 +0000
From: Liu Ying <victor.liu@nxp.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	tglx@linutronix.de,
	vkoul@kernel.org,
	kishon@kernel.org,
	aisheng.dong@nxp.com,
	agx@sigxcpu.org,
	u.kleine-koenig@baylibre.com,
	francesco@dolcini.it,
	frank.li@nxp.com,
	dmitry.baryshkov@linaro.org
Subject: [PATCH v7 08/19] dt-bindings: display: imx: Add i.MX8qxp Display Controller
Date: Mon, 23 Dec 2024 14:41:36 +0800
Message-Id: <20241223064147.3961652-9-victor.liu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241223064147.3961652-1-victor.liu@nxp.com>
References: <20241223064147.3961652-1-victor.liu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2P153CA0008.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::19) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB7941:EE_
X-MS-Office365-Filtering-Correlation-Id: aa0a217d-d933-4bef-3e51-08dd231d02c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?iI6eX8nCZTJp1simiBhiNfO7MASlKiAg2nE/U844osgKf1F5lBYMdoRhlOTG?=
 =?us-ascii?Q?0fwTt52YNKdXkQFHbrjcjKk4JIXscZgTN6nx26f5ndPh/oH1xykcMwgNHcXs?=
 =?us-ascii?Q?FUI5dcNu+VqXu3vzfCrohj0VuXMcUvhItGIEfJmhvO9nfTrho7dMQ0gd4YBh?=
 =?us-ascii?Q?LPU3DsGKsLuGYaddjBjwBZY1W1QijRLHRBL+5USm78OzZbufAlPk79NPPGym?=
 =?us-ascii?Q?uBqKrIDaNWiDjKvp6u9CGbZuYuADNA24v+sagxEjPyJE0/39EsLNdtmZJKUc?=
 =?us-ascii?Q?QSFEQG3uD/UF2mT6FXdNRojGiDFCs6PqL2Ee+6WUB5CLS5U5GIDPqjJwMyNA?=
 =?us-ascii?Q?hrhyjX0gGOm/4Fg4f8fdQAg9qYmB6e994oml/RQMt61zxviHEZIlY4ih+w53?=
 =?us-ascii?Q?PE1Rg3BVP0KoDN+hTMW1Lo3DXmddNQFN9Ohhsu0uK60eYakLTdt/w7Hl/GeI?=
 =?us-ascii?Q?icp6Qfn+efMpI0PZGAeB89WM8xY8T3cXm7+3IcTSaNLgHT6vL2FH168wWGlz?=
 =?us-ascii?Q?xSFHubyrznJOKv4ndAcOm3VqI+Dh2HxJs5Kf47cp6JzePgbcRsVbs3bW7iZK?=
 =?us-ascii?Q?PhEKbenUio9yEOim93Z4MuQN6w21lbMKQWwdOLrmsUOTf+w/9lkceSkK5Utn?=
 =?us-ascii?Q?beRCwZwQz5v9JAJ1RlM5VTIsFQ8agBbbS+9oD+1fYUUpYKc9S0tIQg6Lx5mp?=
 =?us-ascii?Q?Q3MMP0w93zqeyOmJ83lo12pQu6vANMk9QZ3/jxLh6mHX8fksIBI8BM/XlJvy?=
 =?us-ascii?Q?SRPOuN/VkSCqmUD9fJUDjhVyhtsKW3bTA3NRSVgojr+r9cZzV2d4XFB5AoUN?=
 =?us-ascii?Q?y8TpUbo/eL042ImLaasT9xPv2Q1guYi5MiA4NsX53VZSZzsZWGL1KcQjhzIm?=
 =?us-ascii?Q?wpBUZeFk2mNGU2isAKtAq9IG2m8+w2ubPl1ffZmQgBuMi1UG3mZqgqJKJmlL?=
 =?us-ascii?Q?gN4yGgRqER3UdUKlaQnV78QzQjtt3UlL4Htfw6u9mktiWiuB/yusXjgV0LKn?=
 =?us-ascii?Q?PlVhlidz6/v7Uz/E3Sc0FSVCA7TNlXsMZO6AubJWTVRLRhZfwf/js1UTy8ww?=
 =?us-ascii?Q?46mDoAgIbUtHmahm9jU2CUY5bXzLWKpg5lAnyn5z2cnW6i9pZogdXcVrw81H?=
 =?us-ascii?Q?iLuR0QQR7FYLm92Fk2x26vFN+nop+srCeg73hj4ZaJtD5YOIpc4p6tT3nNw8?=
 =?us-ascii?Q?IHbUR1MV5YB68MKJxQITkssztLl7aIup77KCoJx+kiWGFFMJOIb8BqyZk10D?=
 =?us-ascii?Q?6p0QMCOXyq8n/pJo+7DyxbeuURNdIp7PB4JFDplPMxsJgwC+/qmx/taalPtP?=
 =?us-ascii?Q?0/F0taNAIj8P1AJubgSZBBM4FPQCMIYcOhkzYrm1Sd8C5cn1fHn4h3c9TXYM?=
 =?us-ascii?Q?JErsJHqyZBLpahg8froYATSOlE3b?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?H4mpo6ie92iUTR6OIhbEsc3IiQXaOYSdezw1V+yLS7ZuQvlnvuKqe1Q2H28q?=
 =?us-ascii?Q?kRTnc2NVc3fALHZpsDMonHpcQCv1vE9SX9Z7jFjDSBEWfEIkUwd6BvqSFkaa?=
 =?us-ascii?Q?O1QUnIFYwZgdX71opESwG4/O+wA0CMhM3JmPow7+9u67madY7TdpTPGaVUpP?=
 =?us-ascii?Q?fQvpZHtPj/2KnVHqw7YERXzJ0aw5js0Hpcil+1oeHrjBZVceKtX2UIeskgre?=
 =?us-ascii?Q?DSAb03NI4tif1UO0Vjvi2RlfK/8FfqbSyMA9VQDAv9+P4xK6ixEC1k5ty9EU?=
 =?us-ascii?Q?+Rk4EctNFUgWiE/nsVuPfewlDhXAqxsjxN1NDKFaL+JpMfUKI0Y5bLRgdtgV?=
 =?us-ascii?Q?EQQ1H+npC2g4UN4Wm81wwRHGHf5MDZv8eH+f29MoYs8HZAg8ZnQRogoTuLiv?=
 =?us-ascii?Q?Ow24T37ktxdJW/sbKpCgS/c0LPq8pl2kqOpIFRgG1aTsdUKeIKMlcfptVk/n?=
 =?us-ascii?Q?JsjdjnHeCAMfsrUuqx9XLJJ8DHxwdeBtmfsTMOyJljt/mj6v2T55I/Ozf1/f?=
 =?us-ascii?Q?jARoiID07GQke7VpQ6LW1CZZ+fo+/nQx0cSaDM6+uwX4ZyugrzAQqOZ5AcYQ?=
 =?us-ascii?Q?jSXx9Vm+MDf2gGKPic1g5dUh1kErGrlEq5sQ6vjp5AO1Yg3dzNylu2xglbvA?=
 =?us-ascii?Q?ktfiw4qG7HhQhLyKqyLKZwjXSHuABBLW5tmYxaoiOajvwc0FB7aGejWPG3zB?=
 =?us-ascii?Q?L/QAvIEvJXyBIgBE/P8WzhgbkeCNnzfUN4SqGCk4dRSE7d4Tvjial1iU6I1A?=
 =?us-ascii?Q?Ou2nCj7n2+2cunpNmwIDA9Wxe+KsAbZMZZJs/ziybHS1UK5eGkxgf7OtDAkC?=
 =?us-ascii?Q?AwB+v8H46eNOOOoBYLsjKZ5VD29cOHWpdC+gGt5sEeB4lcU/lwW7C8dGLA1+?=
 =?us-ascii?Q?fpSsb8xffXwYFaFQjOz2YHjPQ37kE1DdXpmyWojkZmn8VlE/Fr52vycAqYde?=
 =?us-ascii?Q?UhDCEnb+ggoydxtnCthYCPsEkStF7JwsaVTFKAVczEz3ynNuoiKNa7wr9iEp?=
 =?us-ascii?Q?hfqr132kDxCWxlM1WXb00gQ1dLFMqeK2/ByWUtiTed88STD4LdI4NU9pN0A0?=
 =?us-ascii?Q?N5cQ7Ki2ivjjg+J3LRmseF0dm6BE+nOmffuwXHMMbKN2Rc7q9vpt5kdK779P?=
 =?us-ascii?Q?z1hwSBWErW5OCqswLlJ/q918JbkVyT8x0coJjz8jCEPCdvRBDQSHamGMkI8T?=
 =?us-ascii?Q?1bYsxYDWjWtDDMSSS5aF8jOncppYFYSe2Xzyanm/mGH4WEJUpVpNe6OOQIOw?=
 =?us-ascii?Q?AB3V2FXvUqBlYYincH4hMU1qjnoZp46NB43Skpr91SCpOGXWYkK7z+/cdY8J?=
 =?us-ascii?Q?ziHnsOC5WOMtcRhadehm9goJ1e+LOia997/yB1e3ev5LHN2OuqTHlRkwHzqe?=
 =?us-ascii?Q?Nc21xS9ufHATplwHaEs5Gbz4le+/ow/MauRx6lfptXG16tORyE0Ugx5q1yYT?=
 =?us-ascii?Q?2UkED2NBwUDIUMhJN6JqyS/DS9fEqtKowLOCSik8deKBMSR2/Xaf3DeP0EGx?=
 =?us-ascii?Q?bMDIoGKlDkQd0TBXPMpIrPU3brswaLbHOwt39JWKspeiDLytLsn0Nflql64g?=
 =?us-ascii?Q?HyR1TUkBF12Ch9u7WC1IhTOP+bUtfO68TfzxJbnh?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa0a217d-d933-4bef-3e51-08dd231d02c6
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2024 06:42:46.5998
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l+0O8RYLtVSRdjxunX7FgHzzzWKm9igHreXKrYOtoegvqKZDc7zK4hmVZJW+JfK1L1UKbydIRBphrNOEkEgLSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7941

i.MX8qxp Display Controller(DC) is comprised of three main components that
include a blit engine for 2D graphics accelerations, display controller for
display output processing, as well as a command sequencer.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
v7:
* Drop DT alias documentations and add instance numbers to display engine
  compatible strings. (Rob)

v6:
* No change.

v5:
* Document aliases.  Drop Rob's previous R-b tag. (Maxime)

v4:
* Collect Rob's R-b tag.

v3:
* No change.

v2:
* Drop fsl,dc-*-id DT properties from example. (Krzysztof)
* Use generic pmu pattern property. (Krzysztof)

 .../bindings/display/imx/fsl,imx8qxp-dc.yaml  | 238 ++++++++++++++++++
 1 file changed, 238 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc.yaml
new file mode 100644
index 000000000000..0f49053d148e
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc.yaml
@@ -0,0 +1,238 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/fsl,imx8qxp-dc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8qxp Display Controller
+
+description: |
+  The Freescale i.MX8qxp Display Controller(DC) is comprised of three main
+  components that include a blit engine for 2D graphics accelerations, display
+  controller for display output processing, as well as a command sequencer.
+
+                                  Display buffers              Source buffers
+                                 (AXI read master)            (AXI read master)
+                                  | .......... |                  | | |
+      +---------------------------+------------+------------------+-+-+------+
+      | Display Controller (DC)   | .......... |                  | | |      |
+      |                           |            |                  | | |      |
+      |   @@@@@@@@@@@  +----------+------------+------------+     | | |      |
+  A   |  | Command   | |          V            V            |     | | |      |
+  X <-+->| Sequencer | |    @@@@@@@@@@@@@@@@@@@@@@@@@@@@    |     V V V      |
+  I   |  | (AXI CLK) | |   |                            |   |   @@@@@@@@@@   |
+      |   @@@@@@@@@@@  |   |       Pixel Engine         |   |  |          |  |
+      |       |        |   |         (AXI CLK)          |   |  |          |  |
+      |       V        |    @@@@@@@@@@@@@@@@@@@@@@@@@@@@    |  |          |  |
+  A   |   ***********  |       |   |            |   |       |  |   Blit   |  |
+  H <-+->| Configure | |       V   V            V   V       |  |  Engine  |  |
+  B   |  | (CFG CLK) | |    00000000000      11111111111    |  | (AXI CLK)|  |
+      |   ***********  |   |  Display  |    |  Display  |   |  |          |  |
+      |                |   |  Engine   |    |  Engine   |   |  |          |  |
+      |                |   | (Disp CLK)|    | (Disp CLK)|   |  |          |  |
+      |   @@@@@@@@@@@  |    00000000000      11111111111    |   @@@@@@@@@@   |
+  I   |  |  Common   | |         |                |         |       |        |
+  R <-+--|  Control  | |         |    Display     |         |       |        |
+  Q   |  | (AXI CLK) | |         |   Controller   |         |       |        |
+      |   @@@@@@@@@@@  +------------------------------------+       |        |
+      |                          |                |       ^         |        |
+      +--------------------------+----------------+-------+---------+--------+
+              ^                  |                |       |         |
+              |                  V                V       |         V
+       Clocks & Resets        Display          Display  Panic   Destination
+                              Output0          Output1 Control    buffer
+                                                              (AXI write master)
+
+maintainers:
+  - Liu Ying <victor.liu@nxp.com>
+
+properties:
+  compatible:
+    const: fsl,imx8qxp-dc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: axi
+      - const: cfg
+
+  power-domains:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ranges: true
+
+patternProperties:
+  "^command-sequencer@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-command-sequencer
+
+  "^display-engine@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        enum:
+          - fsl,imx8qxp-dc-display-engine0
+          - fsl,imx8qxp-dc-display-engine1
+
+  "^interrupt-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-intc
+
+  "^pixel-engine@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-pixel-engine
+
+  "^pmu@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: fsl,imx8qxp-dc-axi-performance-counter
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - power-domains
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8-lpcg.h>
+    #include <dt-bindings/firmware/imx/rsrc.h>
+
+    display-controller@56180000 {
+        compatible = "fsl,imx8qxp-dc";
+        reg = <0x56180000 0x40000>;
+        clocks = <&dc0_lpcg IMX_LPCG_CLK_4>;
+        power-domains = <&pd IMX_SC_R_DC_0>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        interrupt-controller@56180040 {
+            compatible = "fsl,imx8qxp-dc-intc";
+            reg = <0x56180040 0x60>;
+            clocks = <&dc0_lpcg IMX_LPCG_CLK_5>;
+            interrupt-controller;
+            interrupt-parent = <&dc0_irqsteer>;
+            #interrupt-cells = <1>;
+            interrupts = <448>, <449>, <450>,  <64>,
+                          <65>,  <66>,  <67>,  <68>,
+                          <69>,  <70>, <193>, <194>,
+                         <195>, <196>, <197>,  <72>,
+                          <73>,  <74>,  <75>,  <76>,
+                          <77>,  <78>,  <79>,  <80>,
+                          <81>, <199>, <200>, <201>,
+                         <202>, <203>, <204>, <205>,
+                         <206>, <207>, <208>,   <5>,
+                           <0>,   <1>,   <2>,   <3>,
+                           <4>,  <82>,  <83>,  <84>,
+                          <85>, <209>, <210>, <211>,
+                         <212>;
+            interrupt-names = "store9_shdload",
+                              "store9_framecomplete",
+                              "store9_seqcomplete",
+                              "extdst0_shdload",
+                              "extdst0_framecomplete",
+                              "extdst0_seqcomplete",
+                              "extdst4_shdload",
+                              "extdst4_framecomplete",
+                              "extdst4_seqcomplete",
+                              "extdst1_shdload",
+                              "extdst1_framecomplete",
+                              "extdst1_seqcomplete",
+                              "extdst5_shdload",
+                              "extdst5_framecomplete",
+                              "extdst5_seqcomplete",
+                              "disengcfg_shdload0",
+                              "disengcfg_framecomplete0",
+                              "disengcfg_seqcomplete0",
+                              "framegen0_int0",
+                              "framegen0_int1",
+                              "framegen0_int2",
+                              "framegen0_int3",
+                              "sig0_shdload",
+                              "sig0_valid",
+                              "sig0_error",
+                              "disengcfg_shdload1",
+                              "disengcfg_framecomplete1",
+                              "disengcfg_seqcomplete1",
+                              "framegen1_int0",
+                              "framegen1_int1",
+                              "framegen1_int2",
+                              "framegen1_int3",
+                              "sig1_shdload",
+                              "sig1_valid",
+                              "sig1_error",
+                              "reserved",
+                              "cmdseq_error",
+                              "comctrl_sw0",
+                              "comctrl_sw1",
+                              "comctrl_sw2",
+                              "comctrl_sw3",
+                              "framegen0_primsync_on",
+                              "framegen0_primsync_off",
+                              "framegen0_secsync_on",
+                              "framegen0_secsync_off",
+                              "framegen1_primsync_on",
+                              "framegen1_primsync_off",
+                              "framegen1_secsync_on",
+                              "framegen1_secsync_off";
+        };
+
+        pixel-engine@56180800 {
+            compatible = "fsl,imx8qxp-dc-pixel-engine";
+            reg = <0x56180800 0xac00>;
+            clocks = <&dc0_lpcg IMX_LPCG_CLK_5>;
+            #address-cells = <1>;
+            #size-cells = <1>;
+            ranges;
+        };
+
+        display-engine@5618b400 {
+            compatible = "fsl,imx8qxp-dc-display-engine0";
+            reg = <0x5618b400 0x14>, <0x5618b800 0x1c00>;
+            reg-names = "top", "cfg";
+            interrupt-parent = <&dc0_intc>;
+            interrupts = <15>, <16>, <17>;
+            interrupt-names = "shdload", "framecomplete", "seqcomplete";
+            power-domains = <&pd IMX_SC_R_DC_0_PLL_0>;
+            #address-cells = <1>;
+            #size-cells = <1>;
+            ranges;
+        };
+    };
-- 
2.34.1


