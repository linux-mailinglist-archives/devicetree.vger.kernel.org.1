Return-Path: <devicetree+bounces-273637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cE7cAJ9NsGnFhgIAu9opvQ
	(envelope-from <devicetree+bounces-273637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:58:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 959E925529E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:58:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 02C5D3028508
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79EE23C0638;
	Tue, 10 Mar 2026 16:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="YqQAscQx"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012050.outbound.protection.outlook.com [52.101.66.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A87339937E;
	Tue, 10 Mar 2026 16:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773161884; cv=fail; b=NULEu+urDITlVAaetOThUrWkrvbyzXDtvuDHpU8QIvHZh8ydwoi0yaa2Q8HCJafQNxYTH4WFRSDALugDmufrGJAIleUZUlvZBFB7yvMzqF9SEEsRzvLaTORpyJRPBMH5wx3czISItU475IhkDNO/WwoxORGkYs4WpAnQ4+GqYeo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773161884; c=relaxed/simple;
	bh=uPq9rmemnAR4ytS3QfzmGjWnfleWCE7y2yNFGlPzWnQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=Sw4yNyLsQzCQsshvq0JHgQqZIOEXVorY/0bRQrn1PU9yObTBRBFow4WaEoS9O3A8F3f1uNngb+pWl99gNYzTilHvWYjjj9AWDcSufRfDr5p1WW09zSSdm3RZWt/Oq/nG7jJAou2ZY+V9qGXm8ZAGJb/9ygN4xKfzLdokFqFoyZQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=YqQAscQx; arc=fail smtp.client-ip=52.101.66.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wcm6DUNpqLlcjzp9kok/am8m0y5p9XkWHqLSnTbhXDc5Bx97jFmvBCJsLk3lhP5JbCz7zj8d+mdqOUJf81y5VVjG3aH/w7ohcFJwFF2JW8+sifo/tqItdrBbvtx6neScq+Ww1JydEv1s29p8IAFmoIBDy0C16DQP+2rSdSNv9Oi5pZF058x+80ZBJ4ACafPfaJcFEVxjGRDQimbojrL+/Q+ueayPKqJs+v/ELgNSaG6g5CJk/nIhLMAMe/xN5vQL7bF1nq0W6cvVf0kxmqxNO7udSh4XXBLVLqc+ySNxKlaV+6ckbHZ84r070XpPp6YPqtTI9k8RvcJ0nm2VfCrMMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Np2rG1A4PvyftQYfMI+OE6cU/JxEHSqXA1S9RpXW5w4=;
 b=c61VAVNBN+VAIKNFqyadjsfY2PyOtZx/tnNEKpmMtXHR3dm9lyYwfnWUdtjG642XtbImmWf+MfXVyC0OtsqjmIB+t+UOjC4r7DfJ/VpumEZhzUvnTVwl/QfrsTaIuaH54IsIOl/h3ahanNP15KTtlNOPWhhphqq6Yr+Atn2P8mW0Q/4C7PyZNWsti3tU6LGDJcdVS2vgZT7TT+bxZMJF0RN3xM5pNglhE+elNfVOFTM+vWPXcNZUGY0FuPcglXInIKA0WuHghkcO6GkxpL4rIT5Y2HZioshck3qZ5HXqPXaC1iQ9BGVjtMUYBOr4SCfn0khQC5kV5KvDMYcQBJw8+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Np2rG1A4PvyftQYfMI+OE6cU/JxEHSqXA1S9RpXW5w4=;
 b=YqQAscQx+ftw8Xp1KVG6C4cjtah4gr7nB296aN7jPqk4nlwoYh/xFmfLJ3T7TPqlwVGwcJjSBkomsF4Qk7734CyzeSxsxQMbB3o5o3m5pczkUvWuDwfDoJlGlovJKk1k+/c52XGNJLexqXqDFmWj578o/k2ANVpU+Gwk37FUvdlKNTpq8F4//QW8FIEekd/Pef1lPzTXAurpYljSUFXmV+oGYV4Jyx0/eRwxyVe6wBh6jfkzYgF8di/I921lpziHeHHpzhehGcHt4+4WrdqgHCd6ptBWvXyKRjfzmbB9kuB4a0PzQSN1Nl4ETL9IeZPK99zdEi19Ig8BE1jdYbzSvg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by VI0PR04MB11889.eurprd04.prod.outlook.com (2603:10a6:800:305::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.24; Tue, 10 Mar
 2026 16:57:59 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 16:57:59 +0000
Date: Tue, 10 Mar 2026 12:57:51 -0400
From: Frank Li <Frank.li@nxp.com>
To: Lakshay Piplani <lakshay.piplani@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org,
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, broonie@kernel.org,
	lee@kernel.org, lgirdwood@gmail.com, vikash.bansal@nxp.com,
	priyanka.jain@nxp.com, aman.kumarpandey@nxp.com
Subject: Re: [PATCH v6 4/7] mfd: p3h2x4x: Add driver for NXP P3H2x4x i3c hub
 and on-die regulator
Message-ID: <abBNei8mkbYoZ0Bn@lizhi-Precision-Tower-5810>
References: <20260310065727.3759342-1-lakshay.piplani@nxp.com>
 <20260310065727.3759342-4-lakshay.piplani@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310065727.3759342-4-lakshay.piplani@nxp.com>
X-ClientProxiedBy: SN7P222CA0022.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:124::7) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|VI0PR04MB11889:EE_
X-MS-Office365-Filtering-Correlation-Id: 52a176bc-90db-49ab-506f-08de7ec62ea1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|19092799006|1800799024|376014|52116014|7416014|38350700014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	VxjGY71idFhRHp64OP8C99XNAOyaVpi6Sa9qC6zWeVsbOVrH9WEVLHtyq9/jpFtfFFTlSMLj6ZJcuSbIkg2mTKDm0fxzNp2lE5vKAgf2qkaucIsW8Jku/Ax/Hry+IR0hNxUzM9b0DOtfqBIUeQSQ5kYkhiASEY1DeV6lkZBWv2sNLd457wcrcRSPtFxM4G9F1HWig4lUKZgEzOc1xpMCT7aT2axXhK+rKPjsEABmPIYzLqJNdgDjGGDK5A9i4UALvCHQ2M5gZ1hvEc/pxgwPq8ALoVFaJEeiIyMYBXOP5P5ew8U9tFPPE9x+uBaEmrSP+N/16WoEGwZZ0oYxL6ZvmBlO42bOda9eOo6HAevgiyLjeMiMByAoVry4y5bA2phtyhP6yhJcfK3gGKeUSEA2ZPn8sf4MYJgssIsCmLqcDglPw4gDkDNmYpLk+oMyP/TXZnv1tOtmZjQtlURKm+S6jtzxAnFp8TFXAfrxLlaxou2bI/JtjsK9nmjbnHYlgFEIzf3+uC34P3WHhp7Pm2xkMBcwXSfn2CVMTwCJY6fw4xQeanuvK5TT/7P3114gDPnhyNu/t5SDnyCvLFIDB4s5MTLlGNiiSQNFgxCHKdkzK8tCwgxuAY6UqqakLrmi8SlobAoIV4yXj4REXlbvzN0V4HxHqUNHbFMa5tyawsF7mLMCl5QGaTqIGXKuGINOgPpn2cMphkqTY26vmmMyq4hFCZA8AAxjg4BbQ8viIibnTyEgxmqAEQqoPtF3ytWTtg1xlJusSLGWB2td7SW82RvrC4OL5TD7LxI3EUvzlgYCqjU=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(1800799024)(376014)(52116014)(7416014)(38350700014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?S+cBYNBXynupNBtuLZnPD470TRqLmPyHD4hwDB6bVSiICkR3p5oYVESkN4Rf?=
 =?us-ascii?Q?rF36mQzwo40kPZyC5M1YcXeuBUwYqWt5oulQwTxb7LgvQPICuF1HU4iDxnNs?=
 =?us-ascii?Q?+Y19lUR2gRy/YujEYE4xDZ5+y0Ag9YRzli+ZVk6q0eDgG1rVLuU+DtpNiM8g?=
 =?us-ascii?Q?R081CJNLmCPSSn9IUf5NSb6jSC7wox6asV/R52M6GikQ7qLE29UVpbbAs/0e?=
 =?us-ascii?Q?kFkmwu3iQxHI4QHzA4xfUxt9mokops8bCp+g6weFM35sSwqqEU/vrMv4VMIr?=
 =?us-ascii?Q?0c/ihcfVw3WTh0MSYb5vmzBxsHP3swSaxQUwEhdnzKPJr7oDUmBTAsvd/7p3?=
 =?us-ascii?Q?/ALB/Ypc52rn/72Qs8g0gGrPkvfv9mZbSsE4BDbcyKn5E9ttzoZpVy0fpubc?=
 =?us-ascii?Q?jchEPPLkRdQ8+Ni+f/kvEE03lgOs7GCQEAkPtwgSFxs9VnXMcpx+fIbjyvEc?=
 =?us-ascii?Q?mvpss6ziLy4AdZt/vqLU+C5kbanPq0X9A6VsnZBPFReB7AqsqS6HCIsN9fJk?=
 =?us-ascii?Q?96x/R6xwYN/PKMe/xkPrNu6WKaWENV21imyASJxQJ579O8cE4qnza/bDBJqD?=
 =?us-ascii?Q?o6OmNMI+rvG0SWuaq6eMHeLx1PqUSCGxwidJz9mO6m8TapzFGtyn5WhhJBHJ?=
 =?us-ascii?Q?+3ehEoziFHQT1/HORb3eeJMbSWY1qY0uzHxLpBo+kpKVAXyxN1rx2wRlhB46?=
 =?us-ascii?Q?RTEXDXdS3UDbLceOYOvAp8iulKR3FAc/jPO1znD6NtjvYD9jiM6268JXPfyv?=
 =?us-ascii?Q?ZSHPEy4HRHZBviFQ2xXAL+pi1IvJy8dTlC6B0B9/8+w1Bp6F+tziWo1NUNhC?=
 =?us-ascii?Q?GyxsHjxZfYjZbe7Wi5Eo1YbTH5p4I7+isQKrlC7ZLTQonz0qPOBJ9n15F6Qm?=
 =?us-ascii?Q?vKcgWOa8fdKZebkedHdJXxa8LHDabZMyKJzup8B34/zazJlTBvDlt6EBnXEN?=
 =?us-ascii?Q?0D5bZayIeemd6zPqAVN9s3FapN5Fym+JuYlTaiJlq3eIbjkbuyKI1TztJreF?=
 =?us-ascii?Q?39R8fFusoJP8HpO38iz+Qh4/JghkEIJlNc5q/GXD+ICziTUInTiNDxN5NZxt?=
 =?us-ascii?Q?EHFbsE6SbQ4TuY+bfGBK1x+v3lmNv1MgXkBXoXv4yFBhbKUcTIQdmtPs20VW?=
 =?us-ascii?Q?TLlundazmwwQ+me2ENkkOs/GxC5oP2VYxXHX3EOIB/7D3++jLMoLK/gxjRPX?=
 =?us-ascii?Q?w3x02gzzhFB3jX3+Tqgq8+vPizRlooiWZ9nG4lfvWYZu2+WOM/fZehqVXVfN?=
 =?us-ascii?Q?4oXfR4x4gyD/NZ2DbJqVrhJwNJkyrfsEGV/7wOQdCIQukvIAxOnq+uQy7kHf?=
 =?us-ascii?Q?m1SJPe/UXRTyvv6Iq3GGcGrc6+RkQgbuwgCANlrpok7eQQav7FJhj2zd5L8P?=
 =?us-ascii?Q?PZA4+dNAP9DTTJmZcUii8YC1KnDjZ7jPv5emQ5oyw5iLFIMoLBFbnxPaypiQ?=
 =?us-ascii?Q?rdidhCtGHzePxQozNdS2r0Jb5C/GASQg3NVerlmHB0XcCnf6qnJPpwygQP8N?=
 =?us-ascii?Q?6RFlz3lUF3IUNmQSi2jUATuFvAXYiNu+QCqaX+8RptSF0xd+/d0ucqrbYmVL?=
 =?us-ascii?Q?lVQZGuyowV98FhwVim15Ny814kt1rmBFzSPzQjLvi9k/b/67j5RjNZBVA8/K?=
 =?us-ascii?Q?yYRTQkkj2tyVxj7wgo0BlWfLIOHV5ofI+IxEwkqJFNg1T+oQZE/6ih/ix4z9?=
 =?us-ascii?Q?xCqJXxekOn34jx5w/+nFR9Xi+pmGHMQmuvO8VvquOTdnvzrqt4zVYFHCxuEK?=
 =?us-ascii?Q?+wtE8wWl9A=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52a176bc-90db-49ab-506f-08de7ec62ea1
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 16:57:58.7345
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qUJfeU0AyKi5au08fp/gzz4FF4wOPh9pVK8T/8R4GlYCn5TUsO+npR9SJvlfm8USQg3ZDd2jVA0KZzNLsPfZ8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB11889
X-Rspamd-Queue-Id: 959E925529E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273637-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,gmail.com,nxp.com];
	DKIM_TRACE(0.00)[nxp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,nxp.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 12:27:24PM +0530, Lakshay Piplani wrote:
> From: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
>
> Add core MFD support for the NXP P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841)
> family of multiport I3C hub devices. These devices connect to a host via
> I3C/I2C/SMBus and expose multiple downstream target ports.
>
> Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>
>
...
>
> +config MFD_P3H2X4X
> +       tristate "NXP P3H2X4X I3C Hub Device"
> +       depends on I3C

Use new config I3C_OR_I2C

> +       select MFD_CORE
> +       select REGMAP_I3C
> +       help
> +         Enable Support for NXP P3H244x/P3H284x I3C HUB device using I3C/I2c
> +         communication interface.
> +
> +         This driver provides support for I3C Hub and regulator, additional
> +         drivers must be enabled in order to use the functionality of the device.
> +
...
> +
> +struct p3h2x4x_dev {
> +	struct i3c_device *i3cdev;
> +	struct i2c_client *i2c_client;

Any place use this variable? suppose you get it from regmap's dev by
i2c_get_clientdata()

Frank
> +	struct regmap *regmap;
> +	bool is_p3h2x4x_in_i3c;
> +};
> +#endif /* _LINUX_MFD_P3H2840_H */
> --
> 2.25.1
>

