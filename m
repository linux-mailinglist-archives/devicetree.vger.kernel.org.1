Return-Path: <devicetree+bounces-276444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gH4MGNLSuGkpjwEAu9opvQ
	(envelope-from <devicetree+bounces-276444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 05:04:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD392A3728
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 05:04:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57839302D092
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22B02379EEA;
	Tue, 17 Mar 2026 04:03:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022121.outbound.protection.outlook.com [52.101.126.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F84A36C0B1;
	Tue, 17 Mar 2026 04:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.121
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773720198; cv=fail; b=dbK7kVsCz7ETbkbRltD6bCBR+WsGAuv8yQgLjtrkX3xPqG2NV+Ly7jDMiWnQuG59FwkSn1QRepPokdrhx/SBDtI+Owg2vCdb4B8uNFd3bMdp6Hj8Oh7Vhfg/8M6GUuc8gKwp8vm1GDZgHpLQqBtg3CaizQOfObAFKtxNSY0KGu4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773720198; c=relaxed/simple;
	bh=qQ0cRRUrkXxAxpPjOjsKXbrUToKIc8jW5mVEnLltJ4Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=NJSPrZ641zdP6l1kdzO4Gwt6jG3IYm625oKaPMRWaXoLRBLXNNnCNVE43qVzN9YdUxYl6aZbQSURdvj6lKD/AwkPqwfdfxqd3n3COXZki2u3mpzrnqRg1BxC3FnYPgww20ymdad7GdSGtigbXyWvzX082+swVeyuM2B/Qdv2AaA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wesion.com; spf=pass smtp.mailfrom=wesion.com; arc=fail smtp.client-ip=52.101.126.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wesion.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wesion.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iAv+TLMB+TzBEdV3G1rfIgzVZKeesTv7VzTzKNj7YwU76Dtgk0CWIqyCRnXHlbRUU+TiDtLA2eAhvOF2cZ42ThF2LoUlGbgPWjPzPWGzk7y9BFRU6xxckrw36BG80irl/TbdOKY0km+FUlWr8znfk4heSYA4H9eOVNFNiagZ0sWlhC0OJVgnTY2NRdQhM3UdGTyd4gA9t2ww6Hjp6EZ9QHLa3Q00q31PtVnJxDIVzvReqHmdIGJ9wRHPMID8ldyQMjkNmm1FTUz2padCZ/w3IhK9HXfLLEGllk8ysG+p9TYNH8aY20LADUaX78rfh4KnWi5rkBAURyUY+YOtvYTfuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xSXXeJ0Icc0MINvWjWU4LWPJs2M+n2FfdB9bpTXXYbQ=;
 b=ujCJnZNKgVzagx/7ngDpbhkeBDHizB+Tyfg8vzgjG2aZ8YAJl31eIgAlSI769VPA6pnh3iv24AQEttqfjyBnJMMH9ttP4cKM1iu7Ju8j8C+o1a8OxLlZ8xVeSwUBfskWvdKg9hIrkz1holmXD53Xk0Ri45UUcVJIMwD0/d61eH2+W6BNS91aTQ3XXv79sj8x52/k1Rpgqcsy8qv+VdJv24neX9aeIMz+X6I7yMEh8u12MlQpAEC3wO1efipLsGGtKZpuXKfKgeoAjkYAnHIsyPNaUNI9ZjiMelwCXwEgEuIeVAwAHqgDYXyw0cQJXcvVA18LGITdeoehuw8f5C5f1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com (2603:1096:990:91::14)
 by SEYPR03MB7216.apcprd03.prod.outlook.com (2603:1096:101:da::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.24; Tue, 17 Mar
 2026 04:03:06 +0000
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7]) by JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7%4]) with mapi id 15.20.9700.022; Tue, 17 Mar 2026
 04:03:06 +0000
From: Gray Huang <gray.huang@wesion.com>
To: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	naoki@radxa.com,
	jonas@kwiboo.se,
	chaoyi.chen@rock-chips.com,
	i@chainsx.cn,
	michael.opdenacker@rootcommit.com,
	inindev@gmail.com,
	quentin.schulz@cherry.de,
	andrew@lunn.ch,
	alchark@gmail.com,
	pbrobinson@gmail.com,
	nick@khadas.com,
	Gray Huang <gray.huang@wesion.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Khadas Edge 2L board
Date: Tue, 17 Mar 2026 12:02:47 +0800
Message-Id: <20260317040248.267154-2-gray.huang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260317040248.267154-1-gray.huang@wesion.com>
References: <20260317040248.267154-1-gray.huang@wesion.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TP0P295CA0024.TWNP295.PROD.OUTLOOK.COM (2603:1096:910:5::6)
 To JH0PR03MB8617.apcprd03.prod.outlook.com (2603:1096:990:91::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: JH0PR03MB8617:EE_|SEYPR03MB7216:EE_
X-MS-Office365-Filtering-Correlation-Id: 95559403-a371-4d63-92bc-08de83da17cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|52116014|1800799024|376014|7416014|38350700014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	kRiQZJF5HPZbQJPIeuOEqHKgo/rbcWTWG9L1nsR7xi4+vwlFjqDJy2DU1piIPp8xPX9tnEr3S5bJJD/tmooypjZBEY+RVoOYfzWy1fwAPNQOdhDLGLQNkTR7gfxwGpOLUfvnQ8kX+Pzq24DnM1wXWdTMQ5WE2k0Tcm24ARynKNTTo/xsa6qC7zpQIoE0ecne+khHMGZpGtbcH+W6I2hddA1lpfyOEDjMN71a1IQ2JGm4abkrp8hM20HmkhH4IQNX+ilya/A6E1rx3zD+RRXf54yK9RfnxVnkhtCi8ObCeV+WY2015PUneU6IqaCKKRRSudXpjA0IzI3iTj/g/eQgHoSi+ldW4Zw5sxRguFOSVqfaVRTP3mCc8c56WqzLiNIiJsqsO6lwljt2RcA4u2cl53bCUOUvzbiRTl333kpytWe9ZJepcClp0O1oFq85cORhHtN7pUzEzKoIIFokBlZs98Rgg1ERuk+k6srY5OWpgwRXjt5cbb3iVhfvT2x4QDismtt/jXn4ZhEHxsAKqGU/SweViDVbRTlyTqqKfq0JQPibpG1HarchRMU5dE6FAqYKUQul9NSUYOp8x/+aMe7kW5tBg7HjMBYROgvx49S/MfjsMQebcGqxvzs/decZZNpgRNr6bhUzdG4f3iD7DWF7+1An8xA5a5FBBoipkA5Rdbri2avri4HNyop4TDMOh+6ogx+UOrLgY62R9bIUj9e0LSfArrg7+qJSW+aBwlBlyuXAlPZf1+UPfopTHNlccFKQr+fpvP7x/oNAdXCh1qEyHZnB8iog6zxtOQ7CqliQCwk=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JH0PR03MB8617.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(1800799024)(376014)(7416014)(38350700014)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Eu5TBh/BsRQhvCZt5lZcunVG+aFUuoqzag7gdJzTQf5ozvz7L7jdFJIbbHYE?=
 =?us-ascii?Q?lOaE85nju55N4h35tuuBwEBldVZ6ZJyAKxZVl0Bv7dSgPdzcE9wqckrFbwYy?=
 =?us-ascii?Q?fk/tA/NC1iJ+ixLmALRnND1rDpp+q75I7DVPh87wLSHUfkkwU5MTtJDkxvML?=
 =?us-ascii?Q?qwowtd5PlDWEfoPz7dh4RCYQICJHburkCiFH9Q3QHIlHVkTHQhwBASwYkdcO?=
 =?us-ascii?Q?+gT3qCmsJSa23TaRIR4Npx2HvQuxjAoxuD8wnHXWdZMQLdNcFqAcqLGdNmyk?=
 =?us-ascii?Q?WoV+LDMymfLJM7ggA0XLtt0ezro/oBP/iSyVBBTKapUqkeLlgcoFWkhZX5rt?=
 =?us-ascii?Q?HvVajxzmoyfZdDejkWvu96kQ+q7paCFBikZox6afzFwmf7JQ3yFl4iYEst5Y?=
 =?us-ascii?Q?2JZXck/E8g8OLur6qfvPv4gUCYBxHj58ldOikuFc4irwXnvK6xOev7LyKmgk?=
 =?us-ascii?Q?+RygcVegb8Pz5V+5SUdbSRdSkf8/9rV8VtQOKt2tdO3WC+1uO/K4u9NajdTC?=
 =?us-ascii?Q?g8PdZbATuy6bebQRdspirso+ZmtZ/L5ABPYLWwttdDg5kjYkBHJIAjluqiAF?=
 =?us-ascii?Q?sQ902lMBvd+FjV+O6NSOhzlV/1jByM9KbM5SBoWe6rDG3dwyOOJJVflR2L+w?=
 =?us-ascii?Q?wB2vnYRPiCSj8jxdgBM89xFaFJZGEdT0WMPxuQtRKiz6pRCowEK77y6BUMMz?=
 =?us-ascii?Q?WPzbs/FdB0KuUOwhEGeJ7O3IY/Xr6FRKrF568V3hHD278sgHupD5dE9LOKJP?=
 =?us-ascii?Q?FrXr1ZXpUo94WNQwLMs1I/oMfqkXjYY0fmbPxz7BqD0MJZ1mTMvUduPqowir?=
 =?us-ascii?Q?PyG6vXFUlCAtMuKiIF/55VA1NT+txHH96JS2jXBHq/Lh56P1x2iEKh+vkesp?=
 =?us-ascii?Q?9LtTOQT2HHKTzNaIZ7DvuS/Y6czyHHWLlwgw82p8Dj/OPomCgLak24aCjILl?=
 =?us-ascii?Q?VB+3zDv3oKxtc9OgOLPYxGzElQQ3KFdNQa88q78Arxb3gqETnhTlupxgntlB?=
 =?us-ascii?Q?Zt4bZd2clDNzIRtE9cGb7sCP61+6RFnmYIfZRwFf58ky45Okup3e/1xKLXnF?=
 =?us-ascii?Q?LIHp342TNQOZdDq5HwwtaRPvxrimM60RxwEOLq3diUmqrIqS094kK0hvp1hB?=
 =?us-ascii?Q?64TQjn2/DJHljTWXiDXOk0jtKZj3KO5qSW8/eCsOvVhNrTI/12VI+cy0TXSS?=
 =?us-ascii?Q?5vRJyeXfVH2PcJj52VOYrfRwV/dMCgWE/QuPEmDk2Iafkxvoet+NTHkyMfIM?=
 =?us-ascii?Q?NANfDRJB6bNkUgfoPSAM5XvdrEk42nZH2WLiocCwfUtPdI2u2yifBYK+d5L2?=
 =?us-ascii?Q?ZhouStDHbkv1a+OH752zTqEJgctqk4pG/5LnuDogF//BYsX0uOke3Gm/jMHg?=
 =?us-ascii?Q?nAwgLnlrVrf61MlwNtSjIJiFs/1LTxOG8W0n99UM9Y52DD4ulf/2mK2DN/Gm?=
 =?us-ascii?Q?+RuzpHv7SwrMjEt73Zwh7NALxR+CS+iX9u1zSphRsoSZYZOe/KPPdP5OMAoS?=
 =?us-ascii?Q?jB3R5LmbYbzige3yjyUnhyuNaGTo3Mo/ROLsPD6jkk1+TuDAe2LVOS3/iNNu?=
 =?us-ascii?Q?c5AYw+dEjAj1tucVfn4jM1xnLb1sSd/Jqbek6i08RV6ECYHmHFozhwCMMdSW?=
 =?us-ascii?Q?PQCtTAI6nozvxGHBy8PF+XPKmIqPw8E5xwFJWHDrgt/a/zDB1AazjyD6lCn9?=
 =?us-ascii?Q?ChyDi9uiqzyhXOKrcLy8JtaLIbXqjXdj0fVpPEfyuN12zr+8J3C853VTCOZ0?=
 =?us-ascii?Q?eGPygSedaQ=3D=3D?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95559403-a371-4d63-92bc-08de83da17cd
X-MS-Exchange-CrossTenant-AuthSource: JH0PR03MB8617.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 04:03:06.1745
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n4tNHmOgfMDjbVuIr3SR0TvuI84bfoq6dEFwYys+EKL6n57riQ0QnMHsxK9ygoOQU0mRqP4zIEVPDefLzw6dzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7216
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276444-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,radxa.com,kwiboo.se,rock-chips.com,chainsx.cn,rootcommit.com,gmail.com,cherry.de,lunn.ch,khadas.com,wesion.com];
	DMARC_NA(0.00)[wesion.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gray.huang@wesion.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.842];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wesion.com:email,wesion.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BAD392A3728
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Edge 2L is an ultraslim, credit-card sized ARM PC designed by Khadas.
It has quite a few rich peripherals.

Specification:
- Rockchip RK3576
- 8/16GB LPDDR5
- 64/128GB eMMC 5.1
- AP6275P WiFi6 LAN
- HDMI2.1 Type-A
- MIPI-CSI x2
- MIPI-DSI x2
- USB3.1; USB2.0
- RTC clock
- PWM fan
- SPI Flash
- Pads expansion board (UART, USB)

Signed-off-by: Gray Huang <gray.huang@wesion.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..aaf6ed3b364d 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -754,6 +754,11 @@ properties:
           - const: khadas,edge2
           - const: rockchip,rk3588s
 
+      - description: Khadas Edge-2L series boards
+        items:
+          - const: khadas,edge-2l
+          - const: rockchip,rk3576
+
       - description: Kobol Helios64
         items:
           - const: kobol,helios64
-- 
2.34.1


