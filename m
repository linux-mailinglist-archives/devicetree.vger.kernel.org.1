Return-Path: <devicetree+bounces-262550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOSeEvYFg2lLgwMAu9opvQ
	(envelope-from <devicetree+bounces-262550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 09:40:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B5883E341E
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 09:40:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CCC603088CB9
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 08:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D153393DFF;
	Wed,  4 Feb 2026 08:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="E/bVeYZg"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011024.outbound.protection.outlook.com [52.101.70.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3244C3939C6;
	Wed,  4 Feb 2026 08:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.24
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770194106; cv=fail; b=bSQ20W5Pfj+L4AWpKwl/gYRyBLHI3J+bpQpgzm8bjzpgT1lzp3G5bBi3lAd4ixpevCCFbCD2Ww7tja9g6u42GjZXFzQhUU1z4KeyD9LxuwRV1J9YZPEetOGCGqoi6bgMuNRVi4dWFXBfWMKgYHFVax6Yt4xvO+dqlCYKWm5jhOM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770194106; c=relaxed/simple;
	bh=SDMG2OUp68wT/V5y0kxhqPywxUWFyS/8lJIjEI8wnCw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Go1mVHobZal/vtDvOG4Psj5uDTMQ7xN9mv/9ZLEniSmVt/mCmAajur0wdh7OsEPQDut0w2OKsDzEek0nBzuTFvi/8H3WxMtLNWiAsdW2JP2nROYxrBzAhF/rT5cxm289NLdMktU+zE/kHGq1Ntv4JOLNSklSCRrwLML8HTil8B8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=E/bVeYZg; arc=fail smtp.client-ip=52.101.70.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UShhaCR7LC/a7AYhajYTMSB8xYLS9eT/LDP53W3s4M5l61iDdh+cU7LP92xKRx8DBp3AZybSFLyIcxqThT58D6BjUTr5aPZNLyFkd0lbdTj9OB1Odq/z07f/xewSGgYZND87+vbPlKGjYE/WLFJ/2OnRp+vkyCnX0kBSH4M5b/odQtogsWzJI8OhKSZ3mIOnp2y9rKGGfb+X0DUNZ8+8rqrGuLrKKrvLXx8N9CFtPv4VUAcEWFafGJEH/nxzBFjtBG63g5wxoIMHPefAWHO2EJK3SC9m9OquTuImzjoH4gXH0texRkuJFhOOWRJH0oluwhq0b+JOXg4/Eh00GEzU7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mq3yEq86wsuYZVpSw+Hh4JIsficiXQkAuoCFSwnlpcM=;
 b=mfy2D0Q097KegQmQ5/UQ5Q69um13AclQXcbxuA6AMhdiUriJP52RX/BcigXGXgpjbJObBM/buWYFmeDqnmQFWQEXguXvBqCYuDsznqkCr8KEh6dRS41VnOda2f6CNhnuf0mRmliVw4z7CHofhLI+XWEU25C/fyswn0UobXeoxZ6PqYm4knQA51v+yzu47RJ2ZDUFdMPEGPnkO+pT2UPrclcGvrhlD2xHPJRPzR7n/MBWW6Q0JbR8zJf3wR1IjavHV+x+CytZmgdV14uNhR248Msv7ip4goXN14VqcDB0wctkvqQfctqFggeQpzZdovWI1fOTL6YE/1aSeIyGVZNrDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mq3yEq86wsuYZVpSw+Hh4JIsficiXQkAuoCFSwnlpcM=;
 b=E/bVeYZg0+fRMGpjP2p27kMinU0DYf6ceGcurGi65u9G8msqLpnSw7m3zyr/wCKQc/m0q9c+UkuzGdeIsxCWZoYZAkE1Jt9wkT6ZEDqIp9ovuN1mReRBVuE3w8GRQy0kGnd9MtSFS7WJqcqFRROTw30/t4rDByqJJF4CzQLjcTiYds4xtIo6d+D/zafqJkOMBJO6FnxARSlw4PYpnGxygVKXloxmYbZVa8ZKnJ8L3yFN5rLfEPRY628UtMrsSIEM6DaBWfmetTNA0V1kWfmDt0F/SvnscUS16ZVYN/cZ/hepuU2qDcj/Upb9/rimE6y2I/Z82mrRQ5whMQqqAiWpYg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI0PR04MB12114.eurprd04.prod.outlook.com
 (2603:10a6:800:315::13) by PA4PR04MB9245.eurprd04.prod.outlook.com
 (2603:10a6:102:2a0::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Wed, 4 Feb
 2026 08:34:58 +0000
Received: from VI0PR04MB12114.eurprd04.prod.outlook.com
 ([fe80::feda:fd0e:147f:f994]) by VI0PR04MB12114.eurprd04.prod.outlook.com
 ([fe80::feda:fd0e:147f:f994%5]) with mapi id 15.20.9587.010; Wed, 4 Feb 2026
 08:34:58 +0000
From: Sherry Sun <sherry.sun@nxp.com>
To: Frank.Li@nxp.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	shawnguo@kernel.org,
	daniel.baluta@nxp.com,
	dario.binacchi@amarulasolutions.com,
	alexander.stein@ew.tq-group.com,
	Markus.Niebel@tq-group.com,
	matthias.schiffer@tq-group.com,
	y.moog@phytec.de,
	josua@solid-run.com,
	francesco.dolcini@toradex.com,
	primoz.fiser@norik.com
Cc: imx@lists.linux.dev,
	kernel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH V6 1/5] dt-bindings: arm: fsl: Add i.MX93 Wireless EVK board
Date: Wed,  4 Feb 2026 16:35:47 +0800
Message-Id: <20260204083551.2867263-2-sherry.sun@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20260204083551.2867263-1-sherry.sun@nxp.com>
References: <20260204083551.2867263-1-sherry.sun@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR04CA0016.apcprd04.prod.outlook.com
 (2603:1096:4:197::7) To VI0PR04MB12114.eurprd04.prod.outlook.com
 (2603:10a6:800:315::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI0PR04MB12114:EE_|PA4PR04MB9245:EE_
X-MS-Office365-Filtering-Correlation-Id: 25def931-373c-4517-d3bd-08de63c847ce
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|19092799006|366016|1800799024|52116014|7416014|376014|921020|38350700014;
X-Microsoft-Antispam-Message-Info:
 =?us-ascii?Q?6nZnXqehoC//daAmEyWv2BFYZKDUHAEeBP8l9xlbeutt0yGdr+L5eZhEZPvh?=
 =?us-ascii?Q?pRyT9aUdw0SmvH/ZZFFmvg8NuSBjA9j4dRlGU9fSX0jl2U2KRYv7bh616it6?=
 =?us-ascii?Q?oHLOEZaisywRbIjTLLN88IyF7Gsp4qXR1hqtpCDsPuBiYc8Kl3qUi8BNbTE4?=
 =?us-ascii?Q?ThgJlV9iSv28Q5dUTAQl+mNNmxX8L98s5C24hE8iYp345A9HWGFiD0kI8mjh?=
 =?us-ascii?Q?9vXOoEzI5hcQiiF5hp9kvrED93GIhEtwehO326bihf9/HpDzeoMMZ2Ka7Qx9?=
 =?us-ascii?Q?ADyBOyEnxGRiemsYIvGtqgGEebawFrgzINBAup1M+CQlIAoIjt2uQ/5vKAqV?=
 =?us-ascii?Q?1tQPioR19h6JzpVfRf5mUItB/OlnnXEqgraumStv3cTh3zwlXP1lkFZrn796?=
 =?us-ascii?Q?vurFUmb3bMFPlYoUMjFtub0GlwiP3jtzC7g4XOf8ArLZatNi0hRlHEKnDVBu?=
 =?us-ascii?Q?XNekUTrR3mHd3QAk16MD0cc3ciEKb+0VJ2TvFzR5NslFQ8kYR+00kZYbAGY2?=
 =?us-ascii?Q?fNBgIsZjRpb5R3v1fOPoQ1QKbsIp0fmdWwRe+KkEz3uvh2cWAY/RCXvXQzY3?=
 =?us-ascii?Q?g9hSKVtyer5jFSmAgzdVG4GN+ufqyLIX1ogJtGKjYD3IsLnzB4M8hMFiEI0O?=
 =?us-ascii?Q?brS2d12FR6As7xMVPYpwZLzVFjDQFnCL/jyycQVBZyJUD7ytzVHZjMNwif8M?=
 =?us-ascii?Q?U5K6oz8+hm0KrWmz63iZsbEwqx1m6TfynG4kk3PP3DKc25/148n+bOkuV5tb?=
 =?us-ascii?Q?toi43THeupzUIDS5NR54jExrII1f3rJy/eLwp7T8yWqftDfhQbv+gHVeS+8e?=
 =?us-ascii?Q?GT/hIM9ML9J0YqmobNlkhP4SMmXeSx+QDX737lkYTWC2wVJWT4VaT9Ap9MS3?=
 =?us-ascii?Q?MwchfYDa+4OmF3LRb8i1QKHz+LNtAw9RE1DVogCzL7vqtWCyCh0ClQ3/nVoD?=
 =?us-ascii?Q?lXTXRwnmgB22kr0X+FZsYeRpHD7yjBW4r06azm8fcfWljzKxuQvMWrBEUjiM?=
 =?us-ascii?Q?9E9kHSFcBK5Pg7QuDhivmEjyA9eFbe4r68j4kb+3BtGIWcCe78eRomZBKrHI?=
 =?us-ascii?Q?aNQlae5g5fN+Z/5zNFo2S4Ht2uL7Fef2yzIOv2vWqWiI5rmE+Itkspmjx2Tr?=
 =?us-ascii?Q?iQKmrjqWAgMxpZf1M4KrqrlCsTTrQhCuzQaPhqoLwnaFF8KZJCExFIebCWCi?=
 =?us-ascii?Q?Ub70zxQotTqMv6dd8ekZQoELS7mMTn0mGSoHFdeFaYnpQZWHmxsTxv2Ve3or?=
 =?us-ascii?Q?Q6lrVV6oxbRZNZjC4Y8wO0kcCgtXjiZQwXZPJLLnLNxIr/08IbXh5QykyVeh?=
 =?us-ascii?Q?LycmNEK06AD+5MclV+dsc4kMFz5IIO8n4854zW3J71PSeIrMnYbiNf2mKR1u?=
 =?us-ascii?Q?7uxgi5xFRnghgDR289nhM0QaLRNh9+RrF1IMgCza5tDDQX/G3gvq0TOFgdWl?=
 =?us-ascii?Q?VGpX79TH9OYXjlPtY8vUVZ7B0dIaTcntDYYi6QkviEh3OD4h9j3zDff/lSmB?=
 =?us-ascii?Q?pP8rEeqMRQw3WsAqqUDqoq62WAVHQRU7XR3ntAAWyhpNEmxQwQY1NQLffgXr?=
 =?us-ascii?Q?a6xW4erIJsdxXf/NOqAl0tuNSHaBM/w8U1V3X7teVeZPP+mppnreXUcCTUXh?=
 =?us-ascii?Q?AAA6+/LyBpPummVMzNNQzZjUTHFB0jK+Myx+++RUDqUa?=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0PR04MB12114.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(1800799024)(52116014)(7416014)(376014)(921020)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?biyGVgyJm3wnTApQCNDSjqsYA8+VSmwyyyd9BnREK74P4/Bwh6jrJVDE4PPj?=
 =?us-ascii?Q?5E8ftKj4RfbVlkcbuyJLFKcGgbi/cKOUQd+Q8VrVd32y+YDV3lKYiLzJq8xL?=
 =?us-ascii?Q?hNxWyf9weiCwq+8iyDu93x5nUeKO5MDY+rRIoADPz+0f+d+M9rbhxWLQbSPD?=
 =?us-ascii?Q?bgrljz9DDzAZ6ee/Z9tYzN0kf0mEWvehgRSFvVgOGCsNuCOeFqQsi0wkS8zd?=
 =?us-ascii?Q?V3JhFb0d/HFV0il43Te783ObVARE3PHNsE1ECeLc8OWGGfxAYkYl40XiQPbt?=
 =?us-ascii?Q?roW2NE+r0HZzu3d0SPb+6uqlDFCFsNVyaalfJOt2qu5iYrny5fmc5TKrRnxX?=
 =?us-ascii?Q?mmZ27kgaWTVyStBdcJki362yC/ErhPUj0qbkYRd8sJ00yDbJvI6+nr9Mw5UW?=
 =?us-ascii?Q?74brhFmXxp/ShZ4WUXZu75UKEvM2f9jrAOj2FBj6C5U4APxUPBnQE0wmoJD1?=
 =?us-ascii?Q?eNCIZuHue0a5eJ2IMM44Bhwx8Rox3zoFi7UG/C9n/ZABu4qjbRmea4mYzIsC?=
 =?us-ascii?Q?qw47uRJ6AFl98xEDvkrYopwKPEINWn1K4pEO554rpmNKwQX0XH/9qfVxLb5z?=
 =?us-ascii?Q?veHQwBHJ2k5sblHlEFTIYSN/Ar6OqjkyjtHgIfYtMUF0GXiBeFmPGBFoFFcC?=
 =?us-ascii?Q?wUKTeiN2xy5pAWvsfbFScyfBRJMAfpDFVRi+rxTiWeFP668wb6UtwMKXj5LV?=
 =?us-ascii?Q?weneCuE8JpvmzNWJOqEemWmQ9TRlXS/WHaAmCj3eTIy2Zle6t3umW5FgcPZO?=
 =?us-ascii?Q?GhlSdu9bP3yVw0eUc267dimk4DoMMj17VKk/QMfEZ5k4h3pZ81XvA8mmw6L+?=
 =?us-ascii?Q?xEX78zpfkxHAN5RDy+H7Qp5Nlr6G7ePfCTd1724WnAlPHwGUU9fYA5+c2Toq?=
 =?us-ascii?Q?+s849CqSGesE9N/mnmapgacygXZFT/xwjSTOhBit2hEU270YXmp5qjB0Ghgv?=
 =?us-ascii?Q?c5ttCa48iieAVsB545ggySuXdKTs0fMLV2wnHKgyDAoulG4X5YTU8Ztbe6rs?=
 =?us-ascii?Q?yUO3DJGHw6xIHkJnWI8TlTfAPpjroek9EexiWOluZa78wtVGsJiGzT4xvCJd?=
 =?us-ascii?Q?Hb1KxG0RlGAajmKJMwg/XmeYtI6sffYe3rY4sA6F/Iw305d9MaMTqAFECCJZ?=
 =?us-ascii?Q?OCoHkQaa9LpgU5gGKj3izGErH2VhG6+1RHExE7ov0wJNbgL830Wp8HUBgfFn?=
 =?us-ascii?Q?OSBB+RtoeRkefm0r3W2UX8W5vKX5AZfA06cI0jjQFxCiO8US7PuXJpSooVck?=
 =?us-ascii?Q?gu647McbL0CPpgxjKF3083g5sLE3iUvPl8dMSRRbh43/QjkBBtKUipVi8zEQ?=
 =?us-ascii?Q?mghdTGxJcO50OzE6vg9RNAHiz5DfqV14xjlCfx/hSNkVzelbssLhKqYstQz7?=
 =?us-ascii?Q?8bU5N9mHdAtNKKyQYU1WS2JyTLzmCjHtaF+p2IZ/cLqWHr1tUFLYQ5i1mYIr?=
 =?us-ascii?Q?qHRHqE/MsgWK1DDX3nq/xzX96ftNS3M0jfPd8AL2T+oLqvvqgv1zWlsAdlxA?=
 =?us-ascii?Q?4Ktq1I5QJVbX35RO3Ynw50UC9N6emm98ByUBWIoOFkgobmNQLWrTCeQTaOy/?=
 =?us-ascii?Q?oxuM8UlIwfBQ2MJiKy+BkQKJPnNHNDlSlUwynWbqJx2jQQUJruzNNgFP4UPn?=
 =?us-ascii?Q?tuIcpnJJx/HsF5puGrd0c7Ho6EaYmVv2t+aqBb2tLzTErjnn1xtMjLRWRQzN?=
 =?us-ascii?Q?bNi03sXhTXqixmsY8ujAtJT4BPYU2qBWehiA064/WweQuSltkmlrLsejeflV?=
 =?us-ascii?Q?RHdtCdW9pQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25def931-373c-4517-d3bd-08de63c847ce
X-MS-Exchange-CrossTenant-AuthSource: VI0PR04MB12114.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 08:34:58.5603
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7q+QHi04qvYcVS1HV1nvFmJdbIukoUc8CpYlL615UC3moHwTH3RMasgQinJpgyQOe9srtzTkuOYeYhUPj8xB3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9245
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com,amarulasolutions.com,ew.tq-group.com,tq-group.com,phytec.de,solid-run.com,toradex.com,norik.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262550-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sherry.sun@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,nxp.com:dkim,nxp.com:mid,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B5883E341E
X-Rspamd-Action: no action

Add DT compatible string for NXP i.MX93 Wireless EVK board.

i.MX93 Wireless SiP is created by integrating i.MX93 and IW610 WLCSP
(Wi-Fi + BLE + 802.15.4). And i.MX93 Wireless EVK board with the i.MX93
Wireless SiP basically reuse the i.MX93 11x11 EVK board, with some minor
functional and pin connection differences.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5716d701292c..df01b928c6c5 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1441,6 +1441,7 @@ properties:
               - fsl,imx93-11x11-evk       # i.MX93 11x11 EVK Board
               - fsl,imx93-11x11-frdm      # i.MX93 11x11 FRDM Board
               - fsl,imx93-14x14-evk       # i.MX93 14x14 EVK Board
+              - fsl,imx93-wireless-evk    # i.MX93 and IW610G WLCSP (Wi-Fi + BLE + 802.15.4) SiP EVK Board
           - const: fsl,imx93
 
       - description: i.MX94 based Boards
-- 
2.37.1


