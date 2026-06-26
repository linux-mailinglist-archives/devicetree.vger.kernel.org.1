Return-Path: <devicetree+bounces-315893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OiBvJWnkPWra7ggAu9opvQ
	(envelope-from <devicetree+bounces-315893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:31:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B2B6C9C58
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:31:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=A55UyAh1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315893-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315893-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EDD033042502
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 02:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34A9430DEB2;
	Fri, 26 Jun 2026 02:30:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012007.outbound.protection.outlook.com [52.101.66.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7236309F00;
	Fri, 26 Jun 2026 02:30:56 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782441058; cv=fail; b=U+Fsj9DV/Z5lzvagtoAtB7/LI959DJMT5np9XYESqiInn1pFuVtD74+uT4KM/GUi0uHD6Qsr43CW2kTCwQjqfw1YvIO68qw1RywcNePj/Fs9nyztWRglLWnZ3QUKDFDN1a3WH96/cg3IA9Qq2xiXwmN/p3ceMGWioibib0iBOOo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782441058; c=relaxed/simple;
	bh=tMGNqJ75nBjqujhcHtKKTpSp7iFjiRyAnfY2CFXBUAI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=b0cGzFWIIBva91vshnd0+h9C7YV2UmJonGtcL0OB1Wb7MoTZNk7J/c5qW20D9sFnXAPh8P0A55gvCNbBwGLjCKfezBLdWL0wdy5p8iSWRw7pJR5j9e5t1NSwCz65MpJgPqWwuTXkEd7L6sotu25lxF3qrgYEZPRl/BUSwnVFHqs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=A55UyAh1; arc=fail smtp.client-ip=52.101.66.7
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ictsumXl5whdsjQsBkXJ1YtRIf7vRr0mfWlCr1drkbquGpwg8byXfzjoD2v5kifcZQjXXpnBA0kB2yvKPr44uuPSEgTw3yAzd4NabqVxhtFd5BVZAtRwKkgC+kTzC3KTnAl7VQ5eoJ8+X/9d0VcdgEv2uHx4/p++PVXoC4PMcfU7KlS+oT1aTHm4rR38kpBDuqTvQGND8PpMVpsaKD8osuZj/58a2lUTIpb4gWz039NKlC5nch4dLlkxbh4vHTsiOzkresCQ+6LuEBtG+iJo39atKORI/4bBiOqgbESvJnqGp2l7XjkW+QtO/KjOTFUxNZKeGdQ08jq5uka41/J2ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t3JY82sGT6mGd4Eehns/4ctBimy8A4JopmnuLu9zBd8=;
 b=JmWXsP6Gj8TBu638n1kES5qXaf6MZ34THbWLWe4MW1EVvxfKF5dSFoAalOn26jssBms3bimoAADll3avibJihYpzaoHlQD6iZKavJ82wLUPqN+CMG2iTbAjXfhTuWhxsapsbTgA9qPmrTuxSTCiYSquQar4uv9SFf4tFeJMG/dbcX3xghmQZMp5lkQV2aDvZfUiLzL3JYX/XAQ3gIZ7TcKaoPi6MjgpRMpB5JL+DdrCbi2H+46yauMBryWeqydBUioTI3j0/GvTRUH9C9a/Rl03JGX/ixjrRG/jvnbVagIu49i/A8wZgg+bRz+MJaAPqeMnbOWVEYCBgs/C/d5ZLsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t3JY82sGT6mGd4Eehns/4ctBimy8A4JopmnuLu9zBd8=;
 b=A55UyAh1Jkg5UKeM4NcLwUKMB/IFxzBzW/6Q6kXSN2NVhbcCMLf0B4rX7IQXSQoZ4mwrMGW0TAfYXL/73uCfQoobFND4n6Z7fLv9R3L1aH/jFtRCSZEVqvTzr/ofyYOoGHZV7ni9a5FssFoyeBoJ9gweD+z0xDTDe3imcuNvOWC1rdc4QtbNVnlDj7XwCe7hPjSbOoT+eMGSHKpG8fwHh/xDADP+noLGaQ9ORoN6ZcKX51tEQjnf8Xy0phpPi+KFAyyCoFqEsIXsTISf9YY+R168fPDj5YHO/e9kGNb/f0JQl9N/l1nd08lUgpgUaDiu//VlsC3X+Ge2EcCEFwhVEQ==
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
 by PAXPR04MB9445.eurprd04.prod.outlook.com (2603:10a6:102:2b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Fri, 26 Jun
 2026 02:30:54 +0000
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be]) by VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be%5]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 02:30:54 +0000
From: "Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	amitkumar.karwar@nxp.com,
	neeraj.sanjaykale@nxp.com,
	marcel@holtmann.org,
	luiz.dentz@gmail.com,
	hongxing.zhu@nxp.com,
	l.stach@pengutronix.de,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	brgl@kernel.org
Cc: imx@lists.linux.dev,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-bluetooth@vger.kernel.org,
	linux-pm@vger.kernel.org,
	sherry.sun@nxp.com
Subject: [PATCH V3 4/8] arm64: dts: imx8mq-evk: Describe the PCIe M.2 Key E connector
Date: Fri, 26 Jun 2026 10:31:22 +0800
Message-ID: <20260626023126.2189931-5-sherry.sun@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260626023126.2189931-1-sherry.sun@oss.nxp.com>
References: <20260626023126.2189931-1-sherry.sun@oss.nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA0PR01CA0050.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::7) To VI2PR04MB11276.eurprd04.prod.outlook.com
 (2603:10a6:800:296::7)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI2PR04MB11276:EE_|PAXPR04MB9445:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c7fdb65-79ee-4b7c-875c-08ded32af22a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|1800799024|23010399003|19092799006|366016|18002099003|22082099003|11063799006|56012099006|921020;
X-Microsoft-Antispam-Message-Info:
	oQd/4C1ZuxAv6OzctA/P/nZQXCtqn/4ktuokH7t+YdYLzRQW+zHJ1dW3DGcoAhAwZDSvdnrzr3FkMtS8AdkZ7tdcYcaZitkb4/Ew8tdTBxDVzULkfRuaKgeaJHiW0crIpW6ZANJG28VOs0tmRLlJ5XY6mGaF3ht1ggBaJoF6qIMEBKeibEEiGBCTEoyTa04A3r4fTP0FT+9WmprSwYpem7yjZfIUBNTSNNACaO5YLqiVo5vDKVyX96q5ArQJpwgR6b0jlItoz4fW07WNi93iNiy6Au4thNuOFuO5FLHQVHHyEBWAIpvwsOMeqeffaUcLa8jIk2IR+JXtYTZEBLIynPEjpVcQAK0AN+lrFuOwZdMxEP+JBEytdOX2KraoDMatVfABvo++WQLO9U5DVL7z2ZeRMkwXp/VbUiH4kaENMRMLog5MCgaskJ1PjL8HEOyBuxvQs6yL9ynzhQimarN6IZBDH7ydPo4VKlHSUUf2PwPkGuCRoUiT6LYbUp2c+zwTpyftyY8SbU+NIR0L1VrmMpl5MnWZTNWvDgPf/YI0BcU9RfUY5Jg5is//TzZnA/HvDO3ZxMeJaaWRodEVWRQ/XHVLPNMf/uGLnaB7qhjpfHX7rkgUH4xX3AehRpi3sy7nij+ftvY9Ig0isUsVn4XI7j2MzVQ5APF/CP5FW6XyBIzOBYRC6jxDGKKM/vXX7J+d1c8LPT6gtp01I5Iywm/wZQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI2PR04MB11276.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(23010399003)(19092799006)(366016)(18002099003)(22082099003)(11063799006)(56012099006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?WR1af1DIk/Mshy0r7TS+hsIi8xUIhXU6ZEiPU8i3kKdavvi1wWTMDvhBVCqf?=
 =?us-ascii?Q?oXJjkSvolODmVq1xzJhoyUqhp9WGjlAtogHnMDzoEun3t8UGhWz//yhEyod6?=
 =?us-ascii?Q?kaiLXb/tghPJXSvTwpZThC6G93PT0NhRm+AmH9gHXAS/ook7eTGnNOXa7FFl?=
 =?us-ascii?Q?eXQ2rZSlTCO9OyhJFvQe14T17cVpb4YNTlUQmwAtWLU0JDRagjOWiq0447kf?=
 =?us-ascii?Q?BC/bmXQZQZTjAhpCgb80SVqliEULd7VgHfsqCCW9HckAcaVXOAFnbIcygP1u?=
 =?us-ascii?Q?CUadfzUW+I8hObggA5eRmaYtzFnO6bhSsB/vfkLGlKrvp6OaWQcq3LcHvtld?=
 =?us-ascii?Q?weYJ0YbSAndR6NKkbdkauJIDSs2/O77+M7pOKbEaBcvcBn6/9nZRAVY2rVi+?=
 =?us-ascii?Q?xWvZn634dPMnnImy4cuWUDlx/m4Yge90Bzzx1Fotn1vw8ckl5SphBfStJgFV?=
 =?us-ascii?Q?xfyNtMXwT1rb84vWdVtkPVeT8wZZ5rHv93zxIX5FmuX5gy2rQyKw+MN8VDCn?=
 =?us-ascii?Q?QGQuSqovNJOFVAqhcELA8p2GSb7Nq2tE3RfGXXOZUI9WLa0AJ1FVWZlBuMXH?=
 =?us-ascii?Q?bKMe/7AiL4RMCG5YLB9+pc1P7jsGiHuIr6BWNFliZ5JTCgU3kqrSokjvxR0K?=
 =?us-ascii?Q?PZPvOA+9Az4saoh/jD3R5I/URTd8doKl/czlg/T9wQkUI7x2aFjOQyGGnTiF?=
 =?us-ascii?Q?aRY6VdSERxPBX2bZMCj+xdGJDt/OTin05XMg8XbnV4e3EPlu1cZj0PPEY8sQ?=
 =?us-ascii?Q?QPpJOKMxn8Bi/KOZ75ZT/VGNMRmDO/w/cgrUDaHq6ykCRp/SFg/Byjy8F+Xt?=
 =?us-ascii?Q?WZx1a5w1SNJz+cA4PPpJzRj5z6YVUAxGd0ob1MXwy7o/Aq0Py3AvXpaO9nuF?=
 =?us-ascii?Q?YBZdrsNKRl8vu+ICJIW961Rocay7WOpVp1ZtoStcJh1vOyVJ3aHyqEyDhEVs?=
 =?us-ascii?Q?l68M7TXS3jb7LR1bxChpgNeofJaW37UvNYwF8BgrPk3wBdr8/IydGvef5lrG?=
 =?us-ascii?Q?jNyP/Su0n3x3PGzOUCRWicar/5+JzzNUsBzg+SzBb8LlOvPCdy5ChaCdCvBl?=
 =?us-ascii?Q?rQjF9e9BM/9/MM/x4YfUyNM/Uj6xyebbMsPq2btjSWKfH/xGSQUTWOgW8FpA?=
 =?us-ascii?Q?aWBdo+rl4C72ubEnpGzvQleoLY+gNmrJwtnBmNnvAOFxC+McvTtGLoNhjd2F?=
 =?us-ascii?Q?4un3oihkWz+vH4aiYIXI/8nQQyDMhy4loqVGELhZ4XFYigynV9GtEK3ML4lk?=
 =?us-ascii?Q?8HbwYp3o/ufR8/KT3bww/6cTYNMay6T4mUkryjVTU3eeL6sb1gRGxwImYlx2?=
 =?us-ascii?Q?7MenXHHPBT5hsdB61npWDVJd+maqY3hAq7EGk8kidUcVQeB+IwYixgDLwKIv?=
 =?us-ascii?Q?f5JSY9XMWen3p5QoaRt5wYO+nvqUeoCHFOjgu07EAjF3kvytTHMhn3yVuGqb?=
 =?us-ascii?Q?/ncE6W/v7y0qwAoX1tQEs7ZpNyX+WZIYeO/hSQOrx2DR2A9yWffHDyI1vv7/?=
 =?us-ascii?Q?IrEn54beU0cP/PAPq4ltjVqKgnfcAzsJ+Vjm75MDmW5R34Z577853GrmgHVa?=
 =?us-ascii?Q?8iPU0q3oS7GJfJnvrej5D1Q7yhj2FmS1j8OnceeEKo42EoGsRgzaQW4O8Xhx?=
 =?us-ascii?Q?QnkCl7FerN6Mrmenpl46z4Jayvf9cJOiJ4sZBKsLXT7oFVEy2h21L5Nb/Kyq?=
 =?us-ascii?Q?7L2q8tCrWD6qkkXj1gEEbyzjyhkUfRi+8L2LA18iZN4wtrDs3F2s4E+qpjP3?=
 =?us-ascii?Q?prtdl3EWej8MxnSJmGXEj0MfwXJd4mv1+FCpeToS8yvqyE0uOkLI?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c7fdb65-79ee-4b7c-875c-08ded32af22a
X-MS-Exchange-CrossTenant-AuthSource: VI2PR04MB11276.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2026 02:30:53.9664
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eRjc7ydzS5ieiRrMU2cmeIYN5MpF4bU37exWErH38oafKfWmK8tfIXj/51pMC+yKVEzq+3Z5CHu+I7EGnJlorrSz1VUGGW1bOrdKVsP9L8FkcD3OTv5mTou6kuU0aYi+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9445
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315893-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:amitkumar.karwar@nxp.com,m:neeraj.sanjaykale@nxp.com,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:hongxing.zhu@nxp.com,m:l.stach@pengutronix.de,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:bhelgaas@google.com,m:brgl@kernel.org,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-pm@vger.kernel.org,m:sherry.sun@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,holtmann.org,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[NXP1.onmicrosoft.com:dkim,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 33B2B6C9C58

From: Sherry Sun <sherry.sun@nxp.com>

The i.MX8MQ-EVK has the PCIe M.2 Mechanical Key E connector to connect
wireless connectivity cards over PCIe and UART interfaces. Hence,
describe the connector node and link it with the PCIe 1 Root Port and
UART3 nodes through graph port/endpoint.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts | 44 ++++++++++++++++++--
 1 file changed, 40 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
index 71504a0af87f..482e5203e879 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
@@ -21,6 +21,36 @@ memory@40000000 {
 		reg = <0x00000000 0x40000000 0 0xc0000000>;
 	};
 
+	m2-connector {
+		compatible = "pcie-m2-e-connector";
+		vpcie3v3-supply = <&reg_pcie1>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+				m2_e_pcie_ep: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&pcie1_port0_ep>;
+				};
+			};
+
+			port@3 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <3>;
+				m2_e_uart_ep: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&uart3_ep>;
+				};
+			};
+		};
+	};
+
 	pcie0_refclk: pcie0-refclk {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -420,8 +450,12 @@ &pcie1_ep {
 
 &pcie1_port0 {
 	reset-gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
-	vpcie-supply = <&reg_pcie1>;
-	vpcie3v3aux-supply = <&reg_pcie1>;
+
+	port {
+		pcie1_port0_ep: endpoint {
+			remote-endpoint = <&m2_e_pcie_ep>;
+		};
+	};
 };
 
 &pgc_gpu {
@@ -506,8 +540,10 @@ &uart3 { /* BT */
 	uart-has-rtscts;
 	status = "okay";
 
-	bluetooth {
-		compatible = "nxp,88w8987-bt";
+	port {
+		uart3_ep: endpoint {
+			remote-endpoint = <&m2_e_uart_ep>;
+		};
 	};
 };
 
-- 
2.50.1


