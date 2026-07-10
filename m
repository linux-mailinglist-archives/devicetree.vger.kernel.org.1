Return-Path: <devicetree+bounces-324275-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qWnCE8ysUGoM3QIAu9opvQ
	(envelope-from <devicetree+bounces-324275-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 10:26:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EBF7386FD
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 10:26:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=mt.com header.s=selector2 header.b=ktab6rPP;
	dmarc=pass (policy=reject) header.from=mt.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324275-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324275-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B8BF330071FB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 08:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB0E63EFFDB;
	Fri, 10 Jul 2026 08:26:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11011046.outbound.protection.outlook.com [40.107.130.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5C53EFFB2;
	Fri, 10 Jul 2026 08:26:47 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783672009; cv=fail; b=qON2glzNGCgc/KPi9WhbLQgdvaf0EwcT+5S+es7tdDdMTre5EsEGcarIKn7zff+XJJWz5qOCkDRuPqQKZ/mh4MMD3lHv4gBG7GcczFi5UuyBTawbuozelM5U4+tZrbcNRHQ31hnHi8fete+Ll44hPohBfDkox4I+eXDksUThYIE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783672009; c=relaxed/simple;
	bh=t6Lo1F8IpNefYeBAwHdHKBFXj+XLjrLKNWllyH4wDIE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JwgMpoOr0/ez3IkY9YeB0K9ntv7Ddn/KEzI2/bckdvRf9+p8szME3gKtcCzUpNuXk3YQUEXUU3vR/gt/Vki4/n4mRlDm7SHWP+phsXyObA/3Gw2tXOqoYz8vjg+QCzPfjhiXBeLMpTcXgLtTCVBadj48G4SGiAY8EFa+i2pFHUU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mt.com; spf=fail smtp.mailfrom=mt.com; dkim=pass (2048-bit key) header.d=mt.com header.i=@mt.com header.b=ktab6rPP; arc=fail smtp.client-ip=40.107.130.46
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K6VcM1Clik8afNl91EPhYLPQeHZVF1O5V93lkhXmryTmUrNQ2fInggL+1/gsh9cOxlhZNQmMv2IBrPX78EBOh7KCcdMfY3MsHSq3v2q+36crWV7A13Tbw1806/Eu1YyLUSOaDCJP5FLj94Biexg5/w1MFLNTHPB/fQO8jBAyZ1WkUGB1FnkgxJ4HLopVCzK0NA5661oXWn3Fh0DR3HvtZwwsyx0PjhrN9RornwdiKcR/K/ZbND9mnNOAn7oNEQJgG4bYXThBr4WyhxB+RoPwQgsLG5WmuAxrn0sOK2jsMhVCOpEakodAj8Kub35RuzBYsLTJWT4Bd9e6NTGai/NdfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uDMrCxeHbibDimrcVkRwzwg4TdiskrjwdgRpSbWviOQ=;
 b=DVoe7V2zKYb58QnjvAvkTdg9ncF1Xt1Q52sBbxj0n04XhrEehrAZbfYPCzSBUxjqZDnaopTeyYvNW1UdpYzxYqB+tQka5vVpPL9ffweYt59s80af/IJiBfhbfDhaWmdyTMKzoiIWugzFcW640xPBjV+avQBjv6ZRmKWaPcAsKeYsmIeHWzcqc8V30b50TZobS2o79DH/naFZKCe0Hd/GNJDFjlPL9JF4fxCVps8cZ9ZWvQsHbIhlxvNZz90xjMX2IzS77+wzebhBfYg1Yti5WvAKZQ9pj3tGXxoMjSvHhdslTqefvShb/05SFv2az0Ajpr1dyaf+FGXJjb7/QdWIwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mt.com; dmarc=pass action=none header.from=mt.com; dkim=pass
 header.d=mt.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mt.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uDMrCxeHbibDimrcVkRwzwg4TdiskrjwdgRpSbWviOQ=;
 b=ktab6rPPKZyHv8zNg0nzl3L4CU91YRm5aPfd0H8A3F3UDxQfCMKeB8U36/y6gYCNsNZMiz2aAFhxHX00GEMeXw3ZAU34/q5BlfTHf5y7+TW6enMK+B7WYlPpjsShT3YwL6I55Bq9MTb9jIr80yvJmSUlgqIX9O5zPoimm5o0jdWzXo64xrd2N1yRbhKJtco69NKudy0hr45zxRZf+IyyUrAKnKCrI+1/fcrxhCscXWxrbsgPtVdTJgDOVl/IA7BIp5MhNUcwlBivshL2OAT62KI7Y575H8dscJwt1ghRcqcJmelFmsL/ZnZf3Q/bsl4yitJzJ90PJy4ZBNsJ4/8PBw==
Received: from DB9PR03MB7180.eurprd03.prod.outlook.com (2603:10a6:10:22d::13)
 by DU0PR03MB9731.eurprd03.prod.outlook.com (2603:10a6:10:44d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.15; Fri, 10 Jul
 2026 08:26:43 +0000
Received: from DB9PR03MB7180.eurprd03.prod.outlook.com
 ([fe80::6fd2:12a9:4423:8ddc]) by DB9PR03MB7180.eurprd03.prod.outlook.com
 ([fe80::6fd2:12a9:4423:8ddc%6]) with mapi id 15.21.0181.016; Fri, 10 Jul 2026
 08:26:43 +0000
From: Wojciech Dubowik <wojciech.dubowik@mt.com>
To: linux-kernel@vger.kernel.org
Cc: Wojciech Dubowik <Wojciech.Dubowik@mt.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Marek Vasut <marex@denx.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2] drm/bridge: ti-sn65dsi83: Add reverse lvds lanes support
Date: Fri, 10 Jul 2026 10:26:27 +0200
Message-ID: <20260710082630.394040-2-wojciech.dubowik@mt.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260710082630.394040-1-wojciech.dubowik@mt.com>
References: <20260710082630.394040-1-wojciech.dubowik@mt.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZR0P278CA0028.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::15) To DB9PR03MB7180.eurprd03.prod.outlook.com
 (2603:10a6:10:22d::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR03MB7180:EE_|DU0PR03MB9731:EE_
X-MS-Office365-Filtering-Correlation-Id: 2428e767-4ea7-4311-f683-08dede5cf917
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|23010399003|376014|7416014|19092799006|1800799024|56012099006|3023799007|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	XRG5skWfbpRYOHQQVlwN+Ta6Lnr3Cvovw/VuIVCg+4qO11PXdcGyjWgAfddkSWMrBIrRrtgQht41w9nsGx2z75EQuO6SjXYEHoxyJUWyDLhC3Yh2woPYuNeY5u0n0SHSCyHl/aox51l2/vy8q20q4XqMw3+i97vqK/qrOZ2KmC2/IECZlgJhsGrNVxA+b/2ZgriXKynnWyFT3nffv28cR+R3t2J5wsCrUO27f6zvjDllEd9gOZswngyqNDvXV5vAErPHz4ceRobNqX2bZ+IxbzIkAAsiCrQPmJdxu97X9bZUV+rkCGSKeW+3etA7gus24s94pgZCY/w8KDDZhpSNbgpxQ/ofzbYps65KwYekBJ84NJbfLkjRmowy75At+SQhJSQnCrGksz7KzNB6dhv+XXvYoLcQ3wajcSEXYNgdzEEyRxRlh6wqDOL9eQENT2DtgaUsLYzFd8Pakdf8UMPHWXZFbRBs4N9hQ+tphiUBcqI0wC6aMY7KiBgkW8wiO2+8cxOsL3Lf1d0O7EnhT856upcE+IekFw1Ul3mYLI0r3Ou/AZcq8OPslpwMJqP8EISssM5D0K1IjlIBhIljK7BBQ3gWmjMnZpQPBaYBWtmA/M4OIHw4ZicnJ/qAB15F56o9kYMNsGQOa6Fiouh73GaqNxVAgqcr7BPDDkwfuompaHo=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB7180.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(376014)(7416014)(19092799006)(1800799024)(56012099006)(3023799007)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?J3kz34IMcRR2b+0q45IKsFSpyY066vCtCmaIz6p4k43AAelB5sqf14Joypfq?=
 =?us-ascii?Q?/gy7zPJA8SuE969X7GJ7rJ9EW9aD/moOZUS+GomMepGbacz/W4PEcaAFxegv?=
 =?us-ascii?Q?5atDpyBMwM/8DOkD0NOv+8vV186qyK7MPREveqAm+7CuTzekraeYWcmh3n6O?=
 =?us-ascii?Q?zRnpmy0nUIMkNVrR9YprJ7mLeTuhvrBkUi4xlKUPEhFy+iyIrzOAsr5ssOz9?=
 =?us-ascii?Q?zgxY2hgxr9+TsHmr85bTjDOqHvbotZTOgl0csnNjgTJwBKGj2mQv3zbC2iB8?=
 =?us-ascii?Q?wRACAaFuCzYMmhPNd1qCcxPpz02QU1BeFCuu4jxR3MbkFSxVZYneM4Jh9Grl?=
 =?us-ascii?Q?tE3KZnTquGVnfZKsknYl2ncZAWXvmI1yhUo1CDJ+wqKYf74eW30UqiLkMTga?=
 =?us-ascii?Q?Ck8erU/qiAkQ2lrSPIVr/Oi2OxCbTMeoi6ujPyP9ndpX/kX1LIOh4kKcHvOW?=
 =?us-ascii?Q?xqMtCMlxfUA+16+ng170Q5gLuU7kAs8NN3CIuEOfpfTRPhRIsPrB97kKyPJ4?=
 =?us-ascii?Q?a2zer9XbQqcIi2bDyFcmE97Xcb9foeLtAZ3RhafglCArcW5JzqvM/xounaWv?=
 =?us-ascii?Q?8a4GtEc+4tK60QK5+aolfZmvGJqhxYE2dDurqQroqM8Zm89O8SJ3euXboQ9Z?=
 =?us-ascii?Q?lJxy95w9FQ2FeOcgEmai3RRxhCfpNnzGj9Kya4zJh1xIXy45uA/vYJEolTjn?=
 =?us-ascii?Q?2wus+d4VoRvtz8ovzSC4SpDItaSMtiHD+5ra5ok6RZZz+l1ifCPhYRMPDOEb?=
 =?us-ascii?Q?WyxxfxDahda7ZWiOsdnLKJwLITkHBbUeeJQyRgyu7xfjv2tmdsLgGvgIM0x4?=
 =?us-ascii?Q?8dGa0qUYGXspZdkP+M7Fb2qd+yHY4h02r540VnxJc3a6hOyX9+DGN6GrzE2T?=
 =?us-ascii?Q?Hh7VHp0r5516uzlxw4aGEYJRrIyKRZWP/8SAIYaamJhHcS8dLRffLxINzOjO?=
 =?us-ascii?Q?JDgm6Nu86bjsP640w/MJxdwP32qHWQTecc0adYEk/CkIzmIclkzcDa4SfXuK?=
 =?us-ascii?Q?+tEkQJSObizXVM4eY4TuRaIUMNUVMmW3ujcifs5M6i1vaVe8UDuJ5bqGaSsW?=
 =?us-ascii?Q?gVQB2SbBFtkR69ZZjvK6YH9M54YTgDOfA1/5vK9TlV5eDW4NNmpDiKpY58OL?=
 =?us-ascii?Q?QnNLw84jnhU5ZzrQwK34t4NxCo6fmc0zxhryAMMUneanWisRY+04+JD7aNDK?=
 =?us-ascii?Q?Lcc81YR0al853tu8yRgJKogAejfOpigWbF4l9PgfZke0qPYwy28VwV1v7YGE?=
 =?us-ascii?Q?u2UTEr7iPKPcIsZ3ywJgABfYm/sdrJUuhAturv7wgvhIUWGFfNk6H/KlwuBL?=
 =?us-ascii?Q?Q59dp13r08C8FSOhgZE4iVZKrNYgfgCLxClR+3YIvKVtAmVo7ymQK8FiRmR/?=
 =?us-ascii?Q?s7P8qRUDImYID8F+VnXlGHtNnssSSOkMASTEjErXM6YxjnhwTRqT+PMDzBn5?=
 =?us-ascii?Q?UqoWpAIc4dLA0Ox6QSm5Qu6n+Za3PVZkFRa2dmIf3H3S2Bs9KGvfXnmNhPcI?=
 =?us-ascii?Q?51BdF2oLPeooyTVWHTq/RrOeupdGggeAncDNx8cr/cx92Gs2zYhaiaQg+ZDL?=
 =?us-ascii?Q?uGDcnhBhSxJsZHwGBAS24J9+NvybNBdSOXgMZLdf/U6auL+netPlBjNqfcgl?=
 =?us-ascii?Q?j6s1uRAjcz5teY9bpTYWYIrFUsrj9JtjD0fOm3rOHEeJaBCWeHpUD9JnsW4V?=
 =?us-ascii?Q?WonrTeyRGbRm1JEqZcd9cY6gZBAdezTIf9Z/S29bSjvQ8qzWTqezMpnz0B6M?=
 =?us-ascii?Q?EeggkdM+mw=3D=3D?=
X-OriginatorOrg: mt.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2428e767-4ea7-4311-f683-08dede5cf917
X-MS-Exchange-CrossTenant-AuthSource: DB9PR03MB7180.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2026 08:26:43.1816
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fb4c0aee-6cd2-482f-a1a5-717e7c02496b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a/t3N2AuzJ/5+SbMlLi1RLQ7WYhIaZJ0UPlS/mV1G0eqD7LtxuMjhJMgBIuDlaGldLbwQGX5iMjqdeOPMCO6+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR03MB9731
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mt.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[mt.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:Wojciech.Dubowik@mt.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:marex@denx.de,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-324275-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[wojciech.dubowik@mt.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[mt.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,bootlin.com,linux.intel.com,suse.de,ffwll.ch,nxp.com,pengutronix.de,denx.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	DKIM_TRACE(0.00)[mt.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wojciech.dubowik@mt.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mt.com:from_mime,mt.com:email,mt.com:mid,mt.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E0EBF7386FD

From: Wojciech Dubowik <Wojciech.Dubowik@mt.com>

Add support for reversed lvds output lanes. With an optional
data-lanes property one can support default layout <1 2 3 4>
or reversed layout <4 3 2 1>. The property is optional and when
not set it keeps the default output layout.

Signed-off-by: Wojciech Dubowik <Wojciech.Dubowik@mt.com>
---
Changes in v3:
- Add optional data-lanes bindings for output nodes
Changes in v2:
- Parse existing data-lanes property instead of ading new DT
  bindings
---

Wojciech Dubowik (2):
  drm/bridge: ti-sn65dsi83: Add reversed lvds lanes support
  dt-bindings: display: sn65dsi83: Add output data-lanes

 .../bindings/display/bridge/ti,sn65dsi83.yaml | 42 ++++++++++++++++
 drivers/gpu/drm/bridge/ti-sn65dsi83.c         | 50 +++++++++++++++++++
 2 files changed, 92 insertions(+)

-- 
2.47.3


