Return-Path: <devicetree+bounces-163834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BA9A7E3AE
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 17:14:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68A371898583
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 15:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 133D11FAC51;
	Mon,  7 Apr 2025 15:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="h41QXx+1"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2042.outbound.protection.outlook.com [40.107.20.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4AB1F8BBC;
	Mon,  7 Apr 2025 15:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744038305; cv=fail; b=l1sMrau/W7e/+1jJXOxXllSxlZWZZyXK30+PH9M+YFa2RLDkjY5Wnrt/7I2FOmNY7MzsHmWOn05uRdhLQgCEhlEswbNzVdFZhqSFcCWJ1VTe61V6Vce7cbR4J16HyEXDJKrLrHBZdV0hNh8pltlsFJRll5e5Th9LfbH5/KgxjQY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744038305; c=relaxed/simple;
	bh=38o/6SOILwWjWj3TmZjxVMS4a33CWUdXSkmdUCDbvxU=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=fZHEbQPL+MqCSSEX+s8i1lxaNcJlBiW/QFKdQsYEIR1Z5XvgXB0W6WKC8SZkpnoqYubhqa1e+ucEAvBA+/fW40i8jThyL5hLtVCjFBqWWjK0OjTBeUM0L6lkeKHem89A7y/o8AbbA+MfUVhh4cM05stqbxjYWixLMlGgBL5prYg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=h41QXx+1; arc=fail smtp.client-ip=40.107.20.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Sp6Th/xzoKVxq5EYF+ypg+Yj01j7ESJaSiPoMf9sekgFeb/exPg6E695wB3dCv3bDW19mF4HrusOILY/Hr4YtnwnUfqUf/nWyA/Bt0cNHnFYE2U7bhwqb1j099a64dpytXEO0S4X4kPU6q0kBl5yPlwT0IcVgtmLw2w22N5mUvhnNjZKoa9hINdwgP3gv+Hnqh/bwnoeBHzvn/TQG1qxyvPQOa9H/FraqaKpxq5aqubTT9QugfbnrzvJmQTHs5MxMmAAtKg7/KEhUVcZnTbaPH/b3VdI8TMuf1GT8gj0Ps7EV+uq+VcVSKvC3UL6MQkXcahjHLzc4tRc71rEDT5BTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=48Rl4AZwHqHllrCfIUnj8ATHUeVAsimQcluMR/c/dIQ=;
 b=n950gm99wzRpRv6XaAAM6yVNY2bWpCZ1A1eetgyVA8OujROeZkPJEXVC8Rnlea36WYzyX2Hu4KZxS4z8nqEDpDORyxx0PuDNbDGtRE4KwJI/Sus7vLH8zTvPE1Q61hM2/bl9GTu44PR2d5IHrRs8NlcKTrEO80emHdTOM4YwfBhXvXlJ39sAexNq5q4sTrxdoRRv8nzk1B2LdOfMt3bJTV+qYfDzcH8+/GszK6JSfpV9b259DDdhR93phUopvXS8jlSzbs5Mjpn3YxoytHPd15U40gXfxoGRuzH+F0FEx/54E+Th0KbHWVSo9Rj0vKf/5jwcpLL9Q5iJM0nfasMPeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=48Rl4AZwHqHllrCfIUnj8ATHUeVAsimQcluMR/c/dIQ=;
 b=h41QXx+1zEGM73vmZHV2vfNKzTGD5DPywZtT14WfCa+9+2ZxtQtXXUzHt2Ts02UsRf/hXU/FEkzMeggkGf0DtBu+gTztrFzMWmtIG7v3+7jz0ia7lSgcNtxAtLEh/EAk+ask3/EYZndISBKjf4sceOcq2lmD+4neKBSjKduQjD1ZJzHuPPEKsOstfMj3E1iZQSfSnbu7hvo8eOzpbxaCXpBKqXpW1roUC6MZGIah0mIHAxKD0MineBTv1YkvbERF1lGP8XbAkRVrlZC7il0vERovUBuKBu7uNz578FGDxVdkprY1WmZ3s+x3qEiv+ZuceDX5pUt/OYrq9SqoFdtf+Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB9PR04MB9626.eurprd04.prod.outlook.com (2603:10a6:10:309::18)
 by AM8PR04MB7236.eurprd04.prod.outlook.com (2603:10a6:20b:1d9::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Mon, 7 Apr
 2025 15:05:00 +0000
Received: from DB9PR04MB9626.eurprd04.prod.outlook.com
 ([fe80::e81:b393:ebc5:bc3d]) by DB9PR04MB9626.eurprd04.prod.outlook.com
 ([fe80::e81:b393:ebc5:bc3d%4]) with mapi id 15.20.8606.027; Mon, 7 Apr 2025
 15:04:59 +0000
From: Frank Li <Frank.Li@nxp.com>
To: krzk@kernel.org,
	robh@kernel.org
Cc: Frank.Li@nxp.com,
	Laurent.pinchart@ideasonboard.com,
	agx@sigxcpu.org,
	airlied@gmail.com,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	robert.chiras@nxp.com,
	simona@ffwll.ch,
	tzimmermann@suse.de
Subject: [PATCH RESEND V2 1/1] dt-bindings: display: nwl-dsi: Allow 'data-lanes' property for port@1
Date: Mon,  7 Apr 2025 11:04:42 -0400
Message-Id: <20250407150442.2778299-1-Frank.Li@nxp.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR3P281CA0199.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::16) To DB9PR04MB9626.eurprd04.prod.outlook.com
 (2603:10a6:10:309::18)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR04MB9626:EE_|AM8PR04MB7236:EE_
X-MS-Office365-Filtering-Correlation-Id: aa050cc4-950d-4f21-0800-08dd75e590eb
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|376014|1800799024|52116014|366016|7416014|38350700014;
X-Microsoft-Antispam-Message-Info:
 =?us-ascii?Q?7w9/OTV1PotljVtojwu2fkNlw6bsYZOia54yIE55vge7SrwGsiWZs3Jq4NoE?=
 =?us-ascii?Q?7Siy4ZT9zNgwe2o1S+AlqvkiRK6HWi8FPfgf0fglaw3Qn4NenTiEvdBisbJK?=
 =?us-ascii?Q?KCji71eYQqSh7jxNTMrNS8lpcLAr3/B+39/D40Q4gTq97eFAAyZ5HM7i6pm3?=
 =?us-ascii?Q?z8ynThLWs020/R+RC/Y8XlCJDU3MNtMs73+tKu08DEKf3l3YZrvGAwBETGtG?=
 =?us-ascii?Q?wjeFBV6CBncZ4pTufh4XqFXKGZ4UQWbS6MClvf9uwWHT78T3i/JHo4K3Lhso?=
 =?us-ascii?Q?D5zLkz5E+NFCta87SBrLnhzwvhzhvunkpeqOmem5tUeFMXMMyHJjGOXSw8Es?=
 =?us-ascii?Q?VsBdIFMyG91O+cp5x7MWTTAPiZdIN/4sxu1gxbiwTWBEuf2sLs7bgKULkF21?=
 =?us-ascii?Q?5NH+5HNZVMLjjwtscgHgjaRA5H5k2wS4FqijXJPLCDxNds8avazm82Aw9mjZ?=
 =?us-ascii?Q?ys9vf/FpK8bpOPSQNjMAY41nnrh2KbH42B16jcvw//mouZbmczJCmMMoFhQ2?=
 =?us-ascii?Q?YMD/KCWUCIQ5fSVwqQ8wAmht9rbuAc14aw1zr6RBNm2xTgZ1OAWQKh2N4aHa?=
 =?us-ascii?Q?+e2bUB2V79lWc7BtPEVonLqyjoolEbuC76KaQYxj6U7cjLMVpLUFeuxwi/QF?=
 =?us-ascii?Q?3xrwrO1HpXqIcl4H3VbW9DybJa/7ENY6F+TL9pSQ+rfc/rjNBJkquriY7JKT?=
 =?us-ascii?Q?QXoE15uFdn5Xmz8S5TcVD48pyl/CWyhaS6dFF7iNx18MaYI+e8geLh6EGL/4?=
 =?us-ascii?Q?zfokTuIbsd5S1c4THkL06MoalzY7wAylPNlbc6tepfraEM8KobnTwKmv8+dc?=
 =?us-ascii?Q?JCeN86LVipouXGdyT+Agdk2AfJv6YJIVJG2O9CbRcowkxhstZj25iQyE4wbl?=
 =?us-ascii?Q?ApaWQKj7z24IsnDgq6B+Q8xIw+/XlZZQNm/3KcxOXy1+lGdbxGSrizAbJwsW?=
 =?us-ascii?Q?AwXASgEVBaL7R/K5V3f2blE152Epi+CinaHdIhlpb4OajHGq078fW+YvFFyc?=
 =?us-ascii?Q?+lIT3Zum+5gqD+YSZY0sgn1vh3yMSPhAUWze2zO+wE9C2TgQg+u+XDRxBe6T?=
 =?us-ascii?Q?czjT+bhyZD/T+caR+ttTRKSUUMQgEzqmMwMfhLL4euf0PdLDJAdM00Ol3luW?=
 =?us-ascii?Q?t/2KJGQ2wQa20uGpWEYIjJmF0R3rwNsVDYPobS8he8uyBiC4O0VmdEZz0U0h?=
 =?us-ascii?Q?4KbolJfQLRmRA/uIXlU0NLsRfX2x8eqBZrWbVb0adyZjlMdX7iplBIH7M07D?=
 =?us-ascii?Q?ZWmpgfAFQ+Ub7+T7aCHXUHrRsxat+/FG1FBSkOBCu7rXWNaCwv2vzNC59Drt?=
 =?us-ascii?Q?heabLVFYi0dWfBILmmrAd9qUOjqogk12KhGALUUdQgk/Db5r58VuiAbjG1xy?=
 =?us-ascii?Q?+nD8RJBDa5eFjK40qe+aTCESaUj5Drc7zlUKlqOKDH6DtkWGOg=3D=3D?=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB9626.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(52116014)(366016)(7416014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?IUuMRxCIR4v2B0I4s9baL9TvdeQaKnfq5GddAAlNU7C3KSZANMFW0MEvreWG?=
 =?us-ascii?Q?/4rQF0MasGozVKxeXjpUJ3HCLrFrTT9bSuwOJgEDylxvR943ryzK6D6izrzU?=
 =?us-ascii?Q?9amjxSHFLUZ61CaN8Bmku2ufCcHf3G3a9mZrxEisE2HL046TE/5L0DM/Ga2E?=
 =?us-ascii?Q?bwDEWnO+vE+Mm8kvfbfrER0Qlu54zC+c4iDo/7hN56cjA+w3ye4QhkUjdCyI?=
 =?us-ascii?Q?LFn38LBznf/bcJSpnubHcWjMKhbq/Xb1ERggb6hRhARBXWqehpuBAscX4ixa?=
 =?us-ascii?Q?7ZV0uVPzRUTLFLnGWYatlEdEje65jgBondggPmFsw0BSsXIFlcrH+w4u+OMZ?=
 =?us-ascii?Q?qUEdZkQONEKic+y4yIC5Df3e97bb0UHpPAxo7FgX9nuswvFXrSP+3JlzO3lE?=
 =?us-ascii?Q?YpVefLG9YtU+DQs3g3uXdhQvFxwc8HUx1ONjb03hKx9slGqP0Hk/UWfP7Ji0?=
 =?us-ascii?Q?FCqyZ9FZPLecZO1VBvPQufLIaNelsZa5l33hSx33UHSBogbifxV7X8RonRk+?=
 =?us-ascii?Q?W1t9bEyxrrdhNS+X4Jz1EHRtxoLH088Nkbr/u1FpMrLzS/1ltS/LsC4Xjid5?=
 =?us-ascii?Q?UNKu/yTqIPmNVGI74UMTDO9yPBT8WO2K+6dpeX6xPnZYoHjop5SLj66a5vjH?=
 =?us-ascii?Q?LUbKYrJKJONu2hA2YghkKruC3sKxZLrXQ5Xt+OHtKAeEerlU6hM+No2kHzIG?=
 =?us-ascii?Q?0C7aEl05c/BuejAcUdlzr5h3w1wuNpANVwSE++VtB8vrpgBPgzgvn5Y1JKg/?=
 =?us-ascii?Q?YCpnqRyK23gV5HbClRbiYXYtGEUllKVtnkKkZ4HL8X6ax8z+3NYjfUSdWLQe?=
 =?us-ascii?Q?jSHxV/sEdTeAQx8wbm+pB+zs118buGjXo66CpbTZbgioBmmGbzHX7g0q/i7s?=
 =?us-ascii?Q?DsyetU1w3LnarNhGU4xI/U6dxQVIdBrhqNSwjUPsx8rvo80+RS1+G1pgZPwT?=
 =?us-ascii?Q?U+lCubYgTphIlD2DtkQyj3cUuDbaYu/WV4a0ztBjETXqWIwP+RodSrxxqmRb?=
 =?us-ascii?Q?3vaXQswAlk8w1mYPfDBYAMcFAkGBjSn4DHmuxUHxMWuF9vm+b8lisi/QNUAC?=
 =?us-ascii?Q?KI1rvWohVzQxzNDnFz6xntzm9naOPDEvypdsHG5ZfCUgfsGiJvL3yzp3OmhU?=
 =?us-ascii?Q?O8iJIjfTJqeqBBeh6IPwMX6L8z+kUD6iwtcsY2UaItQEtRvqlqqS9TcCO8/G?=
 =?us-ascii?Q?njj+Ntb25OwLx3bBUM7m99YICecHlUJKbraaE3IZtmKTKCQYwkt42XL2eaeL?=
 =?us-ascii?Q?l4vn99Hz2c+u+cZJRw5Q27q+REOYvQGgRaNgNd/zFz3hm+xn8Qf4AHmTG6ea?=
 =?us-ascii?Q?jboq9zSsZTDRVnWQNvltltNYjp96MDdPYoI1uTYk3wz+umnVMRZ5HyZGUc7i?=
 =?us-ascii?Q?A9NDiL/Lke8ZGy/vvdJwArnc64ZAEwz7QHExaELeGNzUNgrqYwNBSgNGSQwG?=
 =?us-ascii?Q?HDLK4fVT23ZWwFZUms3gomdthkaAJ+WrnjjyKmUtvuXpelhf1mWFEWOmCwJI?=
 =?us-ascii?Q?yQbY2nb64/kLOZgcv0B7MruaGCQrFwbngD9c2y+vweqqnlheG4FmBxEFpB1+?=
 =?us-ascii?Q?z56GGpSclAlcWupa8K5mFHKjDipNM34KquPPuVfq?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa050cc4-950d-4f21-0800-08dd75e590eb
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB9626.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2025 15:04:59.8253
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HN1xM5xdmYomWGhzuClUD5fS2c8dK3TBdnUBqKvMpKVvuN+sr5jB6gpRS8pGyXcYbVd9om3HADORT9hSpVFASA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7236

This controller support scalable data lanes from 1 to 4. Add the
'data-lanes' property to configure the number of MIPI display panel lanes
selected for boards.

Change $ref of port@1 from 'port' to 'port-base' and add 'endpoint'
property referencing video-interfaces.yaml. Allow 'data-lanes' values
1, 2, 3, and 4 for port@1.

Fix below CHECK_DTB warnings:
arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx-lvds-tm070jvhg33.dtb:
 dsi@30a00000: ports:port@1:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpected)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
Missed v6.15 merge windows.

This one elimiate last two lines warning under arm64: dts/freescale
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Resend V2: include Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
tags.

Original v2 thread:
https://lore.kernel.org/imx/c5y6mocsd77wj5lah6n47vtteqc5ekcrbdod6z5vtcnxhleudw@kfhpyoiylqqp/

Change from v1 to v2
- Add the reason why need 'data-lanes' property in commit message.
---
 .../bindings/display/bridge/nwl-dsi.yaml       | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
index 350fb8f400f02..5952e6448ed47 100644
--- a/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
@@ -111,11 +111,27 @@ properties:
         unevaluatedProperties: false
 
       port@1:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description:
           DSI output port node to the panel or the next bridge
           in the chain
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                description: array of physical DSI data lane indexes.
+                minItems: 1
+                items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+
     required:
       - port@0
       - port@1
-- 
2.34.1


