Return-Path: <devicetree+bounces-275400-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMsBELQ0tGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275400-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:00:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99476286874
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6511A31FFEC5
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92BBB33F5B8;
	Fri, 13 Mar 2026 15:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="l45Eip45"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011018.outbound.protection.outlook.com [52.101.70.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8E435E947;
	Fri, 13 Mar 2026 15:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.18
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773417354; cv=fail; b=IgpCi9gqJ+fs1eKyuY+6g78dq1HWEOaUvO1qP60wYW0tzVTtrl+bDc5STdSjKuBFj/bdSjTEM31OxXqIKwa3G9AHf+GWHU3qiXR6TAslW8OL/UqYD93lJV0I6N5c8/oGWIwYSGtiCSrPEc6g4WFiVSexpydbT40XrIaiUMNntjo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773417354; c=relaxed/simple;
	bh=CfSqn97JrjW1Rq05tc0cDLF8mmwAwSh5iNqoltTNzYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=sd4+vzv6T/+O9KJ/jdMF9dYajBhXpG8Xi5I99C2+f/Yt3QSULTIy+qP1JwGbYENlH/XfOQWN2OeU/uZ9Y7QngzIAC4khn/QFlL6na6x57yR9xjgkh72lmFUpN7Y0f8ZqtOcxIBf1W4dzirZifjxtep9qmS1MqBuvHRODI3K+h+0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=l45Eip45; arc=fail smtp.client-ip=52.101.70.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yHDQWTzZ6cSZW4aOvtsVAFoOJSzTiOVNVSEWof0vB+G92x0xUTHIC95GFBc79fSjpfRuNrNeRBX8L+lqflKFpWlnXsWrXuemLTFfmAgWN7HwJJWhGpNxlx6WwKD27hTcL7nVBfUdcTLs7HvsBeKzaTg+VcXKJeZE4OQQkMNvyse3+bY3wLwHIRkaBmqY1ncmUpf6DrPo0Bip90FfdjhI0X+dWGGW6yAAqGiQvVVQjIB53Fy5GCueqSmSVvr9J5lpVOSQGiMpR9O8ATtXC3Nacc6Gtr1PlBV7RAssEKEIXNhd0QoYFhfh1ql58NSDWNIeEQ2/CwSDTO3njRLTBh8DwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CfSqn97JrjW1Rq05tc0cDLF8mmwAwSh5iNqoltTNzYI=;
 b=ZyLjAMoBy9cI7AqfUWoRMmUxEAFYieOHaOPlboCNOI0DwLOv6efIzJ6aRvt/MOC0Md9aSLNnyCF0+NVJmPfmMJ6iRMeMav1dY/tWBqL31Qa5UmPeOIEA3oUTuZMmOjjSPDkUSiFMoyvTRThFrPxNvI+5NyNJ5wjce4P+2xs1jmZM1UxvmKG7bt5bkpPYpqJr6bl6zxzqLAYzQwyxs+cxtcvgjIMZn/IOBx2FqopSXJg5ioU5WGIq1qWhC14MzhfYJN5eMf8m5z6CpHk37eKVeaNSmNluVi+nuTsXRDTFHhyiLB9uiUr02uv/QPOi7NynvkIJajpfbo/zSuq1W155zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CfSqn97JrjW1Rq05tc0cDLF8mmwAwSh5iNqoltTNzYI=;
 b=l45Eip459wUG/u5OPaNER2kn9BZ4PlnqgoYjwxeTUZS5NBss1X+eHf7JfjtZQPBWdVvSUetGlCDxe/qsn+SyHS4kf38THVPx+oRXAAtdVTR/OdKol8tP1jCk1Z7Vm28JOLfQ467gqo6lB+HibEkzLj9uIopvp2ySeBYkoLnSxeRco4F/q3tM2qTYpQm8Ajzw+mha/b0TUO4PO9kWS3RDZfGVDc/lLN+MOzyBCmUq4I2DxP4lHnCm2/dJHlmriJb1Pbmho2OkLHH3HgEaSUF8nmJWqTjiEglbYy8QOh4eqtRgn3N8hqYK2xQmGvW3t4NYGnE3P+dIXlO5Fv/eKN0rqg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by GVXPR04MB10898.eurprd04.prod.outlook.com (2603:10a6:150:214::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.17; Fri, 13 Mar
 2026 15:55:40 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9700.010; Fri, 13 Mar 2026
 15:55:46 +0000
Date: Fri, 13 Mar 2026 11:55:41 -0400
From: Frank Li <Frank.li@nxp.com>
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v3 04/11] arm64: dts: freescale: imx8mm-var-som: Add
 support for WM8904 audio codec
Message-ID: <abQzffCVdVFNvoZM@lizhi-Precision-Tower-5810>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
 <bb76d92b9bfb164827f53eafceada37fb3312145.1772898346.git.stefano.radaelli21@gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bb76d92b9bfb164827f53eafceada37fb3312145.1772898346.git.stefano.radaelli21@gmail.com>
X-ClientProxiedBy: PH8PR07CA0031.namprd07.prod.outlook.com
 (2603:10b6:510:2cf::11) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|GVXPR04MB10898:EE_
X-MS-Office365-Filtering-Correlation-Id: 752c7e4c-848e-4319-39c0-08de8118fd2e
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|1800799024|52116014|19092799006|7416014|376014|366016|18002099003|22082099003|56012099003|38350700014;
X-Microsoft-Antispam-Message-Info:
 hSXB38LSM7p5h3YGztzEDI5WQDQl0y5IqXM+d9uciDWpM0hdASHQPLKwhu5Bev3B+lkiDtZgddeAS2xV/I0LxI2pjN+tsXTt98flhUiypJiqlNvd9hfGCkWZ8hGwIM0qtysnXYy4OD4f5eBD6jCloqXy0exQHmnQJ8KdXMY3xtNA7fRnyCjO4ISEf4QUHSmMg08+8VKcO3i3xfbE7g9yzuwLr/CGLl544E34EGKYjLdN+8z6IuWScOGo/ufDFAD4LT2cVpSW2yDHuz2/yJUWYw+wxL9MSjn5DV6OqLIUp6nPOYJelTV2LIJxL0IDoT4JjE0pA/kszjcDHWek4G7AUIUTewATesXdIPOiSn6WlxTSYwsymzYEl8+ddf2yBro1R8wZok8T4PcoXBQwRQooJSRoMLF776GqcdTBG7v0/NCOsX9hF/0PjnKA4X6GSxooOO2OB84bwhlUj2fkpDcNHJXtpTJe5F8hRDd9wxbIQkBT9ftntt4u79/8yAHe1MXsslJUHy1dAljlQMac1XNcB7TF9ODIYr5oq5bThPtW8pj+Uth3rWLIkvX1yh3Xxye6+xTJ9vQlg111QeDu6QIAaPDbalofuw9gtsocWVz8eNLaJDUtdD1euLQKcXVh0aY//8IC8EiRhIQhyImUIKZRojyO2ZDAp0Sp7HWuttjF8uDtv66Su7LcsTAmbkUp3EkpQYxb9RQ5ZiOjv6FIePolEm6VOqM25vyu0qPwkibC3v8nRaN4ZE2n3VWH8NgxMeav9w3J4aXaDSMT+SWN1hRFFx59cYNbNb/fdmwZgCxcrGE=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(19092799006)(7416014)(376014)(366016)(18002099003)(22082099003)(56012099003)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?yXUmxk8PRdwg1RBfvA4Zc4C25KYa+u7/5EGce4bEqKmG/QzdTPSKbD4mDonJ?=
 =?us-ascii?Q?NlUODXFc3hF2AJMbWAPvCx2VVF9AOho7yparqm/IFcUm/qa/FrCM5NeCwPZi?=
 =?us-ascii?Q?01XMOq0n+8Ik79/2dqnaYNpY/NsJHfiEQ+7lSDWqi7qeRqpfyENRxZhI2sTb?=
 =?us-ascii?Q?AcxEAtFD1c4Eafj0du+/5zdUd4bzTL3JDh2vZZMpUMLqyPW/lysoXIjISsQw?=
 =?us-ascii?Q?PCdD+JmrbrRmnVqQiyKrmyY4qi+tV18GW0f9Sc0L0zS/+Atp1CwpGxGOJlwi?=
 =?us-ascii?Q?XNrm8wfL2DBVtcJRfu1l70A1ZSrpm6dPUT3R05N9MmiHZUlNtrfgmE+H3vDH?=
 =?us-ascii?Q?soTg6c70nZFVfYscK9lrzDQSlVG8bKF8hV4zsz/1BkuRVktCHBdTsERiUORB?=
 =?us-ascii?Q?HJDmIqcyF2ArNlrtMzfGJIdPcOp/ED93v9lBugIL9zHNWb10nv8eHr28oLDg?=
 =?us-ascii?Q?88IZJrkLWdukJ+JWqfptPlffPe7bkToW2Z1+lty6c9ax/uMiZET4S9pL+ve2?=
 =?us-ascii?Q?jVoTzVz0SlUCZboRORG1KeRsqG74KR5s/vrNCUXIm2bRgI1qT2ZCkBuXm/cc?=
 =?us-ascii?Q?bVAubg3u/cIqSNWKFJZWPvOUqBBPz4H2lHOQQveg5VMn5U6js0/X54akaOo3?=
 =?us-ascii?Q?Uehpc1Xzrx2yERST13sHDl8quTRiPYpDDvdIp2DMqzhc8YzvYX+ubgmOvqDe?=
 =?us-ascii?Q?ob+pRbQNUSq6SLY+WQLyPzmkHCkHbykj/T1V9x/OYhPofP8FUbUpoUyqYNvD?=
 =?us-ascii?Q?Vjpe9LGQYTZfTywa7sVELwwro9Jip3K5xNciIi9Cqwn19TKYjaPXOoyoiYN5?=
 =?us-ascii?Q?vHLUxqXhrJ79V5Vd7NAk7DjNMCVNSiIp0D8rfeGtiZvPlu/oetTuOnjYfh38?=
 =?us-ascii?Q?pmhq9r/c/SexEyQEAq55S1jZsB2Do3klR1mjfF7TWpFz1Qo1M0ogttPzRBRD?=
 =?us-ascii?Q?dY6dJK4zn/WEW6/88GQS7HVxz7msKhw/wfyGTN4mKFtOmZX2mCaRdJuA766K?=
 =?us-ascii?Q?NUnzx48aokCBMdFyGZmq0db2eC78NGRcTsO99Xi5Rz8PXmbqea4+h7PDwYe/?=
 =?us-ascii?Q?MOebUK8PO0i2bSLsnqxtPVYi3AUNDOANJinqx5AnjVejEr/uTf6BmT3ghW2L?=
 =?us-ascii?Q?uRSvE8aDqySpRPC6iDaTnFrn9IsKMAGbFwWNqQdqodyYDr2Lb6MZpN+CwDz4?=
 =?us-ascii?Q?fee8KRPF2w2SlNCrc37V2HSZ6m8uADhSCr4Nz4N0pMxGiH6ovwn1LfBqvoY+?=
 =?us-ascii?Q?9RFk0pBMrSJmq6ie5L1Mxjfx2cH0402pSl3BJ0nFCp6EbB+csrT4hxyjKfh8?=
 =?us-ascii?Q?OL2aQ2zG72h18amVUWcZWTnchPwOCVU2aQh4aqa0Bezy7l0S1I7iY32GS4qu?=
 =?us-ascii?Q?CQnYjjL0sevqht3FDzQB64Bllt0RGBge6dilgbmz9jd+mlc67DiyF5LBZ5xr?=
 =?us-ascii?Q?f6Y0I0pJcKRJBVzWWYaT43/IuzGLFTaQvMVTIsqh8IeWdRTusbex2Xge8eqr?=
 =?us-ascii?Q?WFQgv2IiPqOv3EVUQktPBQprA4O/m6XlkXcVtqGtGs6CedIxcJT0sG6Vy4OB?=
 =?us-ascii?Q?TG99nwrF4cvcEk2aD/uzuQrp2wQOwgSfcD2u981LwCLR2ZFguzn9SsxQx4Mo?=
 =?us-ascii?Q?XXguZ6+5zO4WwYLen2h0lcouHEFWpcueNTiEjr3ItZyJbM69IevZ/86Cb5Ze?=
 =?us-ascii?Q?/gvNao2ARqlesTtSs2+Hqs5dCH6A6OS/2PqhOAwJSlgvXIBv?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 752c7e4c-848e-4319-39c0-08de8118fd2e
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 15:55:46.2991
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nCFxFMm9HKNLOjQdAnuMm33xjYDxzzuKpoERIvwNuY+PnTsb8G1NukUhKGUhm/WtxD3P5ha/Zu9KU+m7KiXi0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10898
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275400-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,pengutronix.de,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,variscite.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 99476286874
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 07, 2026 at 04:54:40PM +0100, Stefano Radaelli wrote:
> From: Stefano Radaelli <stefano.r@variscite.com>
>
> From: Stefano Radaelli <stefano.r@variscite.com>
>
> The VAR-SOM-MX8MM can integrate the WM8904, a high-performance
> ultra-low-power stereo codec optimized for portable audio applications.
>
> This patch adds the WM8904 device to the appropriate I2C bus, enables

Remove words "This patch", Just said Add the WM8904 ...

Frank
>

