Return-Path: <devicetree+bounces-306139-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2HohHKr/H2oztwAAu9opvQ
	(envelope-from <devicetree+bounces-306139-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 12:19:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1014D636822
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 12:19:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nxp.com header.s=selector1 header.b=RqCp2a4H;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306139-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306139-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=nxp.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 382AC30741AF
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 10:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06003AD52F;
	Wed,  3 Jun 2026 10:16:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11013058.outbound.protection.outlook.com [40.107.159.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489D233C1B4;
	Wed,  3 Jun 2026 10:16:04 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780481765; cv=fail; b=KZPSvJ0h9/SEeY9gsSvuYhCwb/2C7kMg/4m2iGVjED/+GxkbnoO3YQNN4N8se7PiHsIYExGYwIDjXE/uicCR/iNo2V+l87d/yx++j4rrpSSHeBuuynIpM5VgZfsGuP6psw/T5phlU/o4bJk9TwfPhnjzWtblSxh8KvLV+KddSQ4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780481765; c=relaxed/simple;
	bh=KQIrILqL1pHifhy/pH+BBXxjfD5xXveKo8H/SU2wdBI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=D4IptQSHrQO5SQUSW1xQnuJ0WIh8a9N3Wz6nPM22+B1LK9rTMGLowzXyjLq3yNkt16mblbRR0P8h4dDh+cSqAp17FP/D+UPziPObfBSIbbfAIBYVDfmdHP+SftunthrvIgErfIcRzpuddtfWy8xJcBPhoP4G5lWczzg8r+Kf4J8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=RqCp2a4H; arc=fail smtp.client-ip=40.107.159.58
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ryDbq5Bnedn+exNO9rbyFThRWsMx/HhIRIiNk6Nskt0suCu+NAKFN7ilJ5NzRgR1AtnK+QV5dCahOwqBNcpmC9ZpI4tD2Uz3s1lrPS3FyH/IPAd8/pKYpAJ6LeWVyYrByS5Vu/kjrGA3PKzjw1cfF+xoWhpAuliYpWiIjR0jgIkVDYZ9ZKi2Z/ZubeFUPG9Dtfd4TiH4kA6RaBGXFsX1TfMaZbmZv1QezbO+8pXk0Kadhl2JGU1LjP3MzesIuiS3ymesTvgT6QaWJlzGbN/J2aXZpDhu1o7bz5hngBQReIrq8wIB8BAOOOG5MkzwnfQVDeao7dFRoC98bGy/nqrggA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/VtQGt2M8UPoHeh1Ke8d+pj00cJtJhfx3tvqCIBtXSM=;
 b=gEiEWv4v0Wf4mtpdAZ9HbO0iZYZvAEo/PBUnPYASVxRcsHO9wxAHtZXPoDCAKWOLOcTUmCqg24MP77Atcl1SW3A5zWv9c1fadCS4skeFHprgYUSWP+1Y6XHjoxex+dhwpZIMYqtaOM8mZaQGAAEZadqaGMZaY8AO40GmFlVpGrnudk+QMb/ZgXl90irAKmtUZjToPU3Kk3G/G8YVgcBqBPeyZUDZ7y3iVmS9EEzkaFRGdEpR8JwUrpm9CNbtHXffLa6n5U1SomwUvPHeFmzRizGXR2K4sX6CAGoHcY0Qw0FRCkFQErDESH9YyM3jMoIQ94YXBqCGfC2xqENBBS7vNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/VtQGt2M8UPoHeh1Ke8d+pj00cJtJhfx3tvqCIBtXSM=;
 b=RqCp2a4HvLaTld1378U+lqVCbzZc2NgJCBGEFin27qsSwiu5rJEnPh7kVwge+JvnRiZ8LjxzBYGX+zukf5IC8GGegFGMkS02JfxWNELN70iPusxMYcZXKHlnlnhpjcn3ocXMIXS2nrVj0586ZAat8pz6SIgJvg2nB6S+97W2diY3KAx6bjtmlMasBUNbq1jrlCL6QA8JK8JAi03/pnLLQZXzF4JMOVwVknIIPUfBbB/vtJ1dsjWxX/7ELwrRkAOywBwoP2IYsInnbQOTwKCSKhE14pwnXV/+U38ZV/PDNtYp8e2eZUN1iWU+/qgya5SYEb/6JIa6HqB6P2hHGsSbNg==
Received: from AS8PR04MB8150.eurprd04.prod.outlook.com (2603:10a6:20b:3f0::12)
 by PAXPR04MB8336.eurprd04.prod.outlook.com (2603:10a6:102:1c5::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 10:15:57 +0000
Received: from AS8PR04MB8150.eurprd04.prod.outlook.com
 ([fe80::24f0:af2:c6f6:38f1]) by AS8PR04MB8150.eurprd04.prod.outlook.com
 ([fe80::24f0:af2:c6f6:38f1%3]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 10:15:56 +0000
Date: Wed, 3 Jun 2026 18:18:10 +0800
From: Robby Cai <robby.cai@nxp.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Frank.Li@nxp.com, conor+dt@kernel.org, festevam@gmail.com,
	krzk+dt@kernel.org, mchehab@kernel.org, p.zabel@pengutronix.de,
	robh@kernel.org, s.hauer@pengutronix.de,
	sakari.ailus@linux.intel.com, sebastian.krzyszkowiak@puri.sm,
	slongerbeam@gmail.com, kernel@pengutronix.de,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] arm64: dts: imx8mq-evk: Enable MIPI CSI and dual
 OV5640 cameras
Message-ID: <20260603101810.GA540052@shlinux88>
References: <20260529132334.3333294-1-robby.cai@nxp.com>
 <20260529132334.3333294-2-robby.cai@nxp.com>
 <178031282290.662668.15145642423417739969@ping.linuxembedded.co.uk>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <178031282290.662668.15145642423417739969@ping.linuxembedded.co.uk>
X-ClientProxiedBy: SI1PR02CA0037.apcprd02.prod.outlook.com
 (2603:1096:4:1f6::13) To AS8PR04MB8150.eurprd04.prod.outlook.com
 (2603:10a6:20b:3f0::12)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8150:EE_|PAXPR04MB8336:EE_
X-MS-Office365-Filtering-Correlation-Id: 48bfbef5-2fb4-47e3-aecb-08dec15919b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|19092799006|376014|7416014|52116014|4143699003|18002099003|22082099003|56012099006|11063799006|38350700014;
X-Microsoft-Antispam-Message-Info:
	RDmEAQb6G1/xRAeWONinl/m+Iva96oaeV3GxbPvftkC9EEMD7jf0RYkTyJpwuiBXklO9KYlxd1SIB1lxdqvR0qG7+rh5QuuLbk8NIQWH83UAwk7URQoRksjbA2XclNwHJQS5IbeCjRXoUyyvUn7nZZQkaRZVG0WLsOb3ROszgTl+wNaUYnWGYK430NwrXsNLIcDiyJOuXFpar4VX3hNxedP5EPr4u81E5y4DXrdyH0k41eH2Dlja0ONFvNktz1Yx23HSpcbTCZWrisODbuGbJt+WFzECiUB3Ihj+38ziLtYDOZ5vMi1xUcmh+feSEwSCbjfWpDYhGGXFb0l4OfNyYkz98iTAdoW3Wg0Eqzm2bI2aSByX9smQ44IaNHWz3hgccqitL9inlXgg20+9uGB1bS6hS7mLOipvtOBwb9zfQivbe7k/TL8EUfyM4LV9uqVkOdfB9DUCNQxkp3xMwtgsB7PCJq7S9QifIBch1/OYdShF29aom+QZrefwe4O9XVXOt3GVGJbw929Ef7QTUjyiZu+wPqyxhGLJDnqEY4v6WjwXCFBAqfoAe8CE2LL0Yqd+WA8Ms5W3pxL/XkRX1IJ1KQdbw7nnwBRIsYwcE+HUQ5xvAfXvs5Wfdn+gtpbeq7LvIvGE2P4Y0NPqJEj95uaTnc7HEGcjzeM9QJWgZdwFpsaNOWZEKSmiEUMA+aNiAaXaeXlb+0W5+HIKI8DE1ngRfD3Ke/WGWVc3D7CtF/Vr6jRuEE8+1mJHO92MFhuYdlMu
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8150.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(19092799006)(376014)(7416014)(52116014)(4143699003)(18002099003)(22082099003)(56012099006)(11063799006)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?/7boNb8I7Z7zWqCxmdOIU0qTPzACo7VjDYJZaq/SJqDNlZT6jOR9EjBUXt9e?=
 =?us-ascii?Q?oGya3hueFeMc4cxmALzl8Jtm9emILOTlsJWQpWfY2zArGhsC0zShONBj1v3p?=
 =?us-ascii?Q?ElJIwHUmLBzGcusnKyn8KWz4JkDitGilzIWBmvIkeqP7s/CMBaGfX8+YYlax?=
 =?us-ascii?Q?PNhSnitdarzlPQtisqQ/ish9zLh7xQXEk57xhazvFuJBoKiRYzA4U28e6ywg?=
 =?us-ascii?Q?hMNEIRIRdGBPWQaEYKs7w29daoClTI6Ak+Hkd/RT/gdjL6HQkWBTGPFKh7iI?=
 =?us-ascii?Q?t8jqylzybLhP0PnAeSN7xmIxTBJYTnx/H8IKYORbJmXsiUixAWryOMPQgx0s?=
 =?us-ascii?Q?LxcY7lOWQDMCFcQtcQgDOBZH5mufDImEuJEKU3qWRvfKMUI/Hq9hWnENc/qH?=
 =?us-ascii?Q?k7Qias2UiFmf2Dzsta+sQjE9kkilFxTiGkRhpIPS653RygOyX3MzDlrPmPQN?=
 =?us-ascii?Q?0XmBvJih5rHFvUVNhfyLG/uS7jkUg8bk7rACitJbddYNqH6r9TJum1Kba6f7?=
 =?us-ascii?Q?X9MnmpaxUMGBD9R0CJ7fUg6agYjDVSWzROhsNAgZe2qBBPddfuVU/6LKREYj?=
 =?us-ascii?Q?r6BHwRl4xUuS2j/C1Hj5add0LmAQojFVfwHNvhhA+7pWQhYG1Xdhy7BpoLpN?=
 =?us-ascii?Q?RutQuRjKVvsYyDYNfCyxluW5WFty5JPy0bviXGgrgE7bkpelZphbk+LIJvNY?=
 =?us-ascii?Q?/pIx1i2cy7Zl9RqG+lETZLVrdKyzcXU3SgBAfDNi665cdE1vGdhXDzGzb6ZQ?=
 =?us-ascii?Q?fEDfrzA4jSoIx8Rs1n82sZMQpnIDSKlbO9u8plzJMnGbyauTXAKVWRbc37vB?=
 =?us-ascii?Q?/2582AltQ741v6KEVuFdrfTxsnCARTElSR8F4qcHQTtzAL1B40UjyfEBnnvs?=
 =?us-ascii?Q?vozUGGYDUAl26Lf2uBi/SZRp01vF3/jh6o5psISvJdUZuM4meUETG4fpdZHD?=
 =?us-ascii?Q?DQ1bwDYMFE03LDb+XujlvVrc7ExF0DVWwznw14WeUXkUTJr5vTIctKFqSNXk?=
 =?us-ascii?Q?g43a3sitciDxkFB4Y3Ocs90y2/xonhoGh32hnvpQpKsOG+Af+z7n8003Bk5i?=
 =?us-ascii?Q?eDR6g2499euVf5q/eqVw5/y43NaVRFUVRmqMRPAn1k1hDT7JlwoDaRqsIUf3?=
 =?us-ascii?Q?M9UwZEgJznsf4jNyNAQY5tQRf0Ut3V3bG0CNNUdZ0pxGgmTGdnBmpZvCp7UV?=
 =?us-ascii?Q?R/7AEwTojWH8jgxJ2nAndcHSedJ4HcY3ce3xPxwBnaYaEl9LGLrGeo6IBAW4?=
 =?us-ascii?Q?AWltbYpR/vAAGQKFrRxwLFVU2rXqPtTn5AXY64XAQrZLZhwychi1lsK/ZBaa?=
 =?us-ascii?Q?esJUyEYseimaZ00vHyI860xNbKv6w8kpALpFCb6czqe0LKX6pdJDVEdFfUwO?=
 =?us-ascii?Q?gytuKvLOW8zzME9Tu+hUAaPIX0/t+oNQzyWagZw0y1294thR6q63MhaEAX2W?=
 =?us-ascii?Q?oqjqPpLc6pIOyj5p0WN+K3ngs7MHWkRkFmsJLO3kYijMGRCx6Q4w7I5gAyPQ?=
 =?us-ascii?Q?tIyIS0tVcYe6zhESwHqYMXMnqyNxk1tBd+rpf0RsJ6IIYiBCx1z6QHXuUIwa?=
 =?us-ascii?Q?iKVwNgpMKxOldf6zGgWVgk3Q0Gfp/8whI9gGgHPie8YrbGn4KKfKAgbSf7uO?=
 =?us-ascii?Q?9crCXLtn7JDtIL3dNif3T2crttOOMVikMkkIa4S1K9ih9sujZTFn7RLND5gT?=
 =?us-ascii?Q?EUAoEaTZYDexTVzccVm4xA9pmlsbhG5I1L5InDwxXnW8LVI7R/mEiLYkAwJ6?=
 =?us-ascii?Q?MPONh3Zlzg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48bfbef5-2fb4-47e3-aecb-08dec15919b9
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8150.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 10:15:56.2840
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f0lqsMM+WiP05YdDl52QslJAZEREyf+D4mEDdvAykeSVyheyiEE+ncZ70oACD7AV3QlpxRZnzNy8lSMNhwJQLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8336
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306139-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[robby.cai@nxp.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kieran.bingham@ideasonboard.com,m:Frank.Li@nxp.com,m:conor+dt@kernel.org,m:festevam@gmail.com,m:krzk+dt@kernel.org,m:mchehab@kernel.org,m:p.zabel@pengutronix.de,m:robh@kernel.org,m:s.hauer@pengutronix.de,m:sakari.ailus@linux.intel.com,m:sebastian.krzyszkowiak@puri.sm,m:slongerbeam@gmail.com,m:kernel@pengutronix.de,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robby.cai@nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,gmail.com,pengutronix.de,linux.intel.com,puri.sm,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,nxp.com:from_mime,nxp.com:email,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,shlinux88:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1014D636822

On Mon, Jun 01, 2026 at 12:20:22PM +0100, Kieran Bingham wrote:
> Quoting Robby Cai (2026-05-29 14:23:33)
> > Enable the MIPI CSI-2 host controllers and CSI bridges, and add two
> > OV5640 sensors on I2C1 and I2C2, forming two media pipelines:
> > 
> >   - OV5640 (I2C2) -> MIPI CSI1 -> CSI1 bridge
> >   - OV5640 (I2C1) -> MIPI CSI2 -> CSI2 bridge
> > 
> > On the i.MX8MQ EVK, both sensors share a single reset GPIO line,
> > while each sensor has an independent powerdown (PWDN) GPIO.
> > 
> > Both sensors also share the same MCLK source (CLKO2), configured
> > identically as required by the hardware design.
> 
> Shouldn't these be overlays? Does *every* IMX8MQ-EVK always have 2 x
> OV5640 modules attached? And never anything else ?
> 

You are right. I'll use overlays in next revision.

Thanks,
Robby
> --
> Regards
> 
> Kieran
> 
> > 
> > Signed-off-by: Robby Cai <robby.cai@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mq-evk.dts | 150 +++++++++++++++++++
> >  1 file changed, 150 insertions(+)
> > 

[ ... ]

