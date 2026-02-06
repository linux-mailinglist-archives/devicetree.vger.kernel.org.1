Return-Path: <devicetree+bounces-263452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iME1HNYmhmlSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:37:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EFE1012D1
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:37:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2B5CA302F73D
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFA96339875;
	Fri,  6 Feb 2026 17:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="g2F08kX4"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013006.outbound.protection.outlook.com [52.101.83.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655A712D21B;
	Fri,  6 Feb 2026 17:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.6
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399209; cv=fail; b=XXwC9tN/+flX8z3Tkgixkerd5G4Jz3Zmjfg6fWiIFhxzZhWd5O0pPQZGn5gsZXD7s7rNbBTTs3MFwt0ilFDBFrUMwSF9mVwL2e/KgHxdssbhEzhuKzdpbqK4svFdC4apYCfdgsjzh4zAq9NnFlx8cICpGkRwN3nbYzrWzMLZAfk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399209; c=relaxed/simple;
	bh=24SN6OyYns0dGNU62XQFJXHi53DcVSUklzNTLvSE5fU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=F8wIPj8CfolhjG1fM/PFNr3JUs1W/OT8Ka2bfddD5XtcRYpKPt2pPFf1iULchpLeI2Vy6cLsqwiY+koGtTBEPUULOpIZAPI5RKRx8nvuRTnbWvOzm49txjLaRB76Oq85vXVN0Hj/x9ppt5+hSCF0CrnYWqsLjFgJGxrGYWmJW74=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=g2F08kX4; arc=fail smtp.client-ip=52.101.83.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w7TKtoduDhIv5yqikyEENDyQs5+louA2GBa+LV5HJwhlMEfRT9geVt4zZ7TfwBj9t+B/gMMtegPzGdIvajtRK5+7mCHQZgsR4AaU0mOd8D+2sLwm3T8T/FvT4RKCgHZkUKeCGugoShO5wNZwVusIrDhmoIqobN0YuiwUT7uPi18n+LrkqBoR+k7ToWwuSV1vkTTA9dNZt6Fvgq5AUg+jGS1j36Bd8AioLXX6BVPXSqmn712nLTallSJwcHvHonktnDvsJ+70Q8Ifpy/rnwUPDWBRK/jONPQsXB9ROeZMYU+Nw5DG1EEpTYFYjWTFLm2K85WYpo3JGyeHSLc2Yuuitg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FpNP68e5GcumaMNI9sJJXawVZ95xb5woriFf/2pZpmw=;
 b=cqgi6dHo47g8KbceAHjILFIjtNbJPU0wbjmcubNKMb3IgAFL4ejIjS0XQoebzggjPrs0wqCjhFIH1qCpLgAN3SbKrtJq7H1jgOfKRrcALjaDBpK/5M3j5NcELHpFRMwYlF6cWzWfpZCn9m1SyQce+UMndFxAfMwr5TCbYM9kGrDfXut902qnveXhUqXiF9tm6VrEPK2TIy0y8Poc231bUTLk/IA/pguL8vpoj5d/pJI9+P/xeLEZj1kNtqMthb6S384KQGnkCMIHzKxv75vfYixc4mTnQ2x8F5wCDQFGXcOx3V8q4pJ4MnITjWKb7ZiSCDs9DQfsD6UoIx5q15uy/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FpNP68e5GcumaMNI9sJJXawVZ95xb5woriFf/2pZpmw=;
 b=g2F08kX4ss9EnfHk7nwMO4G+7jCP6NzKzBkHyZZ6uhz2xiTwcS/SFri8/bvWCUsTdX52O+4sgyCn1Ltblj0Y3WWZWt0MIgqsPhx32wX+/3JKhX0PtRXsLzkwpq+Ae0RuXOHBiA+rMzeV7HME+RfgP0m5vxt7RqO0AOpcYlhwQ/PRlj2lFGeGAj8GNWenShbLD5QEKIkxFCuCwrOIKtlBOUN1OZWzM2YK/OcI71d2qFKcBUjerBvnV2pthomlcz+Og3patOoNhrtb5WlzDEzBzvGvu/SoVbvgHAMOKl2rbnqgmwuJtmU/l0ZWVmXUCCMT0oqiQs+V4xoU2eoRjfuAog==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by PAWPR04MB9837.eurprd04.prod.outlook.com (2603:10a6:102:385::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Fri, 6 Feb
 2026 17:33:26 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9587.010; Fri, 6 Feb 2026
 17:33:25 +0000
Date: Fri, 6 Feb 2026 12:33:16 -0500
From: Frank Li <Frank.li@nxp.com>
To: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org,
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, broonie@kernel.org,
	lee@kernel.org, lgirdwood@gmail.com, vikash.bansal@nxp.com,
	priyanka.jain@nxp.com, shashank.rebbapragada@nxp.com
Subject: Re: [PATCH v5 5/5] i3c: hub: p3h2x4x: Add support for NXP P3H2x4x
 I3C hub functionality
Message-ID: <aYYl3IOjC89mGM2U@lizhi-Precision-Tower-5810>
References: <20260206120121.856471-1-aman.kumarpandey@nxp.com>
 <20260206120121.856471-5-aman.kumarpandey@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260206120121.856471-5-aman.kumarpandey@nxp.com>
X-ClientProxiedBy: SJ0PR13CA0165.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::20) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|PAWPR04MB9837:EE_
X-MS-Office365-Filtering-Correlation-Id: b50d37a7-4121-4d6e-a762-08de65a5d55e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|19092799006|376014|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?7PWPAuvzwK7wiQkMs/CSMlDsMab1/OZbTdSttuGl270+VaeZHnlXNIEf+hXr?=
 =?us-ascii?Q?9YpXq0EdamyxUlvDL3Y9vHK7Rx3Lizw5XZ6o4G3hUdw+j5YcW4NBUi3MdtFF?=
 =?us-ascii?Q?Oy7NPpYCoq/z5/OfcOm9LlXn5+QTi1JvKED9/5y6QZWYIgVpPUFqL4XfLv+8?=
 =?us-ascii?Q?G82wee5yn9RMyhHvF9S2QidioKwFiXZZyhjvhGh5nlTZwdHArQ5oDObJlCwy?=
 =?us-ascii?Q?c/Pkr0X58wYyFyekepoAugWRj4EmcPHkQevl+O1ZiFnVIrJRwLH517odoBxX?=
 =?us-ascii?Q?iPB7pwQMzEDqR3I+/MUs7m0kALOzRRDvhJbWpAd4f2xmekzsuBsDh4KjU3IO?=
 =?us-ascii?Q?3er3Nr7sXC1+OzVa8ZOuai+lhxvKX24MC7BM0QPMwBgMiigwbWDma8H66+95?=
 =?us-ascii?Q?jwFYGzaXvuCYiAUrpLzTNxQjsboHwxjSLZPtY/3UR9nyU7JXZiVzDa7g+ppG?=
 =?us-ascii?Q?G+4MbWs8nxSZM6PC0VZwYB6URcOlbKLDFT4nK+f2j/R28QHIUHTiWKihzzM1?=
 =?us-ascii?Q?qvHkmI+GbkQj0e5LDHWhaMbDkTNDMUCzYRtNwUeiXLmkBn4J4pWaCkVYafCG?=
 =?us-ascii?Q?1oFUaOALHyi2SP0c0as2q0CirC8fPCJRu0oevOyw28yIaZ94IZ0r38Xy8UQT?=
 =?us-ascii?Q?zFvox+jnwJvnyEzseu1UzYGsqIU3M+eSyZXlqlf2lNNnYpD6utCHP/JrdlMl?=
 =?us-ascii?Q?dp4SvWUl5rhnbTdSNmyDGlTtv0s9E6Rlj7RzKP90ldRWW1I9H1Z/HXqr5SIF?=
 =?us-ascii?Q?aKYwjd4cLQfsmJHJ17xoKKMK6Nmle10XcBP6GIwj8Ddk6/xu6htgfJu3ApKJ?=
 =?us-ascii?Q?9nI/25UeaARtR32CbMw3IFyOrJfeQnXycDMWgFBqr+Uad+/NXuBLlRuxOPC0?=
 =?us-ascii?Q?lZazNwnsJIjWBkW5rWot2LWhHT6Eu5xVY2zNbO8lXe9ysxvUv9DMJpGMvZzi?=
 =?us-ascii?Q?gV2ckumcel0OQAW+0S+HyMkGZrTl+VXWuUeiWYvWarp9FgFz6F7PHXf+fzWB?=
 =?us-ascii?Q?nIhUYKlgxKTWKKVHireNmOsRjp6zLttgsA3bjJ55PPfuYN5WBaiiuOPuY4ui?=
 =?us-ascii?Q?KCuia9hrIPgiT4vuz0nMFRgoYiXm9kkjYJPR5j/UOcqUrQhbi7MbUZmAzf5N?=
 =?us-ascii?Q?0LiufnP6FgHSgdT6uHBIefOs1ZhO3UW52ekZISe2DDSxPs/yMCMIL3MvkSKb?=
 =?us-ascii?Q?nWxww0RhsAI5IMJGjdJO3HOBq4zM4u5YMYy65E8NaJRmsg/XHVrhDM2PhpZ2?=
 =?us-ascii?Q?G8iH99CC34wKzn00bRDYx4tdcZAdtlHrGHrZCxhliJa5ZOhStxGwU54txG6n?=
 =?us-ascii?Q?FEgMTZbPzEMI9/Q4TLAz5BcwyewUl+Bm+9yrwH9UpkofNKYaRY51kPzpakKl?=
 =?us-ascii?Q?re2uYWSkEohsYVYCJUU2NbujjXr7Q/LhfQ/mCxi9FHGUGXKW5La/O0DcNjmT?=
 =?us-ascii?Q?ttEI8rTVnGyw/+OmUYvnSNEUq8F73gDhHKXmptknQt3Hb3I4uOUjn6yqwNRb?=
 =?us-ascii?Q?g2zzQeADufno+gAznSIAyOJlQCPs1iRj1JzxO6IHEkYS28W7rVYYFdr16ZZv?=
 =?us-ascii?Q?nmxtE30STCmSvo74lJ5XPaPvVz5GnqSiuLjjzjxLyym1C/8OC1C6edrfb0qI?=
 =?us-ascii?Q?TLL3sYDO/+8XswdvIIZoa+U=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(19092799006)(376014)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?l4CpcgkRUOf36jrDreFWdT0D6lbMrI3ubGCjXrd+yxYDfADNL6zCc95aytBX?=
 =?us-ascii?Q?M3ZUD+zXIwEM4pufGVYa7f/Or8v3Ea/q+PF6pzXv15CoO7YzgdjeB2qp7uee?=
 =?us-ascii?Q?nax7hkUOQJ8cM6Y4XW3wjdxqWEZdcxbGxxtsIc1tCRrA4tF/S6eWmGnLqrDI?=
 =?us-ascii?Q?m6xH0BplmYaTRe5fhkDwb2pD8Di13WbjsZ7X8bmNPybNmxyIYf2Q+V9YkZxA?=
 =?us-ascii?Q?5IzsyQ3iS/A2coW8SIMjuLE+pYNJyeLonenM2nDvXPC/Pr7wpZJw9MnZt0ED?=
 =?us-ascii?Q?XeKq1T/EHfyUlrA+W3WiKcR2hAnPGQzR0JM3eDJx491w+53n1fIVOpOilz8O?=
 =?us-ascii?Q?Vj8S1/xU++GA0K+WZx76gY5fBRLlfnc/S3a+AXdSAyAEZ0KA1n9JkT7sXvMT?=
 =?us-ascii?Q?mXzusCzdit2Ug6mySxTWqV34ZRPDam4CrOvL2MuQgQOqnfNCnV93Zcd7ElgD?=
 =?us-ascii?Q?lI5Odavbl5Ospjcn8Dx4VVIUzlatycJFUa5VLf/5CcYSA6bdJwrnZSs0R9C2?=
 =?us-ascii?Q?sCvvzAzvddfK95C/2/3Z4yoRv1Xec2x1xGnvV4z8jjZwEZseU3Fx6o+u4lQ8?=
 =?us-ascii?Q?R2AbsdFBdXfGOleP9SPPlRYOIJWB+dg0+1qx/gtZQEvWBPt3hJLsGJM6rtix?=
 =?us-ascii?Q?+E2CINIwrnUC8ZJEbR/c2kEvGb19xJfZtR1bKdjdFFoqFwZfj/+QLieFKRTZ?=
 =?us-ascii?Q?SaB1jD7pPuXcJ8pMW2JpZI8f/0aAreWmcmapQSbRpLl5UWapGKaA8wda+1Yr?=
 =?us-ascii?Q?F8CtbC0t4VIwlmBtkHib2UWjIFYpYFWLvyZ/JuvNQo7jRLUGIEJryJtU6Mpn?=
 =?us-ascii?Q?vDVyqBNcywy4lXFqQI0Y1ZfczUaM85qSl//MugK3nVVp2kv08r++tGorhLPD?=
 =?us-ascii?Q?HMdRV0JDbQ45DCDQdXM3RMN+LV82mUDX3lnTc5rkazT442O+LXQg2p+y5UZZ?=
 =?us-ascii?Q?E3jL6sPWTWgu9thGSaZAPXV9IBbwJQQ1I9trC56uwCbA9rqyAmYz/n2oill6?=
 =?us-ascii?Q?mu9HpKcW0xKrCsfY+RcOf1SotlnuMIvLwylRXwRyYE1Lj5GKL1lcPyE0vuYG?=
 =?us-ascii?Q?BetI4G9nbfXAxXN51a7Ekv9tGWhZypNYivSF6M3b4sBfSLvjgPN2CoyZIK5R?=
 =?us-ascii?Q?o3FiRj2+rCoWs3zuX3TyiU2qpBT3J2byKGa8d/voQX6sv47wBhJIMYumBRb7?=
 =?us-ascii?Q?Qm63eGUoYVR8O6co1noJV4l659LxTdUvRsG86Gakne38XO/wKTziMxIQSUpK?=
 =?us-ascii?Q?XZyVvXlUhxC8YEUY6Vu8smhSFuhzIgZOreCD8fBo7mNd2QLnGrJ+0PCn6mHe?=
 =?us-ascii?Q?hOrkQrpgvWpfBYog6YjqDqX66fJTSD7f3pP8FSW90YClaDlFjwTUHNqajL8q?=
 =?us-ascii?Q?YEWpAqebYovhaEqPkLwF48JrNJC1qcER4jNdkUJP85NWYHkxcA9IVbTlvGNZ?=
 =?us-ascii?Q?JgsI2ZggewDyVqmfxrIDDRljOI1bQzCIPrffJHo3K0aBh7S3P+/pkrqUBkPt?=
 =?us-ascii?Q?It8fOZ5U/0DpMBSaie7ltfYtUW+CDaOLQTNsyeO7H2wzkhGUL0wk8iq+PBh4?=
 =?us-ascii?Q?JfeluLe7R4R9EwMBnR0eCOVKpNOfoQEjiMncJbShcW6FdJlP/tesjSe+nlA3?=
 =?us-ascii?Q?29mj+weh5+DbsLDmd+Bk0sua9fB9yH8B97t2B2X7VDhdzuBKkR2GlJo33+We?=
 =?us-ascii?Q?aF4eFMuSSZNXy2heBc41eWLyyIbf5gJ9RCuVvwA0agnf8bR7?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b50d37a7-4121-4d6e-a762-08de65a5d55e
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 17:33:25.8796
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TerzAJkvvGqBkLjba0lEU6/Lh3TimEOnOfefGJYuZLrKMEaGVapcjC5g4YcKAaMQqVF26wngpRvnb0PUc5sBvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB9837
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263452-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,nxp.com:dkim]
X-Rspamd-Queue-Id: E2EFE1012D1
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 02:01:21PM +0200, Aman Kumar Pandey wrote:
> Add I3C hub functionality for the NXP P3H2x4x family of multiport hubs.
> These devices support downstream target ports that can be configured
> as I3C, I2C, or SMBus.
>
> This driver enables:
> - I3C/I2C communication between host and hub
> - Transparent communication with downstream devices
> - Target port configuration (I3C/I2C/SMBus)
> - MCTP device support
> - In-band interrupt handling
>
> P3H2440/P3H2441 support 4 target ports;
> P3H2840/P3H2841 support 8 target ports.
>
> Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>
>
> ---
> Changes in v5:
>  - Updated supply names.
>
> Changes in v4:
>  - Split the driver into three separate patches (mfd, regulator and I3C hub)
>  - Added support for NXP P3H2x4x I3C hub functionality
>  - Integrated hub driver with its on-die regulator
>
> Changes in v3:
>  - Added MFD (Multi-Function Device) support for I3C hub and on-die regulator
>
> Changes in v2:
>  - Refined coding style and incorporated review feedback
>  - Updated directory structure
>  - Revised logic for parsing DTS nodes
> ---
> ---
>  MAINTAINERS                              |   1 +
>  drivers/i3c/Kconfig                      |   1 +
>  drivers/i3c/Makefile                     |   1 +
>  drivers/i3c/hub/Kconfig                  |  10 +
>  drivers/i3c/hub/Makefile                 |   4 +
>  drivers/i3c/hub/p3h2840_i3c_hub.h        | 340 ++++++++++++++++++
>  drivers/i3c/hub/p3h2840_i3c_hub_common.c | 405 ++++++++++++++++++++++
>  drivers/i3c/hub/p3h2840_i3c_hub_i3c.c    | 354 +++++++++++++++++++
>  drivers/i3c/hub/p3h2840_i3c_hub_smbus.c  | 418 +++++++++++++++++++++++
>  include/linux/i3c/device.h               |   1 +
>  10 files changed, 1535 insertions(+)
>  create mode 100644 drivers/i3c/hub/Kconfig
>  create mode 100644 drivers/i3c/hub/Makefile
>  create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub.h
>  create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub_common.c
>  create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub_i3c.c
>  create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub_smbus.c
>
...
> +
> +static struct platform_driver p3h2x4x_i3c_hub_driver = {
> +	.driver = {
> +		.name = "p3h2x4x-i3c-hub",
> +		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
> +	},
> +	.probe = p3h2x4x_i3c_hub_probe,
> +	.remove = p3h2x4x_i3c_hub_remove,
> +};
> +module_platform_driver(p3h2x4x_i3c_hub_driver);
> +
> +MODULE_AUTHOR("Aman Kumar Pandey <aman.kumarpandey@nxp.com>");
> +MODULE_AUTHOR("vikash Bansal <vikash.bansal@nxp.com>");

AI: Should be "Vikash Bansal" (capitalize first name)

> +MODULE_DESCRIPTION("P3H2x4x I3C HUB driver");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/i3c/hub/p3h2840_i3c_hub_i3c.c b/drivers/i3c/hub/p3h2840_i3c_hub_i3c.c
> new file mode 100644
> index 000000000000..cbc6626721fe
> --- /dev/null
> +++ b/drivers/i3c/hub/p3h2840_i3c_hub_i3c.c
> @@ -0,0 +1,354 @@
...
> +
> +static int p3h2x4x_request_ibi(struct i3c_dev_desc *desc,
> +			       const struct i3c_ibi_setup *req)
> +{
> +	struct i3c_master_controller *parent = get_parent_controller_from_i3c_desc(desc);
> +	struct i3c_master_controller *orig_parent;
> +	int ret;
> +
> +	orig_parent = update_i3c_i2c_desc_parent(&desc->common, parent);
> +	ret = i3c_master_direct_attach_i3c_dev(parent, desc);
> +	if (ret) {
> +		restore_i3c_i2c_desc_parent(&desc->common, orig_parent);
> +		return ret;
> +	}
> +
> +	mutex_unlock(&desc->ibi_lock);

supposed caller hold ibi_lock.

provide i3c_device_request_ibi_lock() version, which have not hold ibi_lock.

unlock and lock is not good enough.

> +	kfree(desc->ibi);
> +	desc->ibi = NULL;
> +	ret = i3c_device_request_ibi(desc->dev, req);
> +	mutex_lock(&desc->ibi_lock);
> +	restore_i3c_i2c_desc_parent(&desc->common, orig_parent);
> +
> +	return ret;
> +}
> +
...
> +static s32 p3h2x4x_tp_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
> +{
> +	int ret_sum = 0, ret;
> +	u8 msg_count, rw;
> +
> +	struct tp_bus *bus = i2c_get_adapdata(adap);
> +	struct p3h2x4x_i3c_hub_dev *p3h2x4x_i3c_hub = bus->p3h2x4x_i3c_hub;
> +
> +	guard(mutex)(&p3h2x4x_i3c_hub->etx_mutex);
> +	guard(mutex)(&bus->port_mutex);
> +
> +	for (msg_count = 0; msg_count < num; msg_count++) {
> +		if (msgs[msg_count].len > P3H2x4x_SMBUS_PAYLOAD_SIZE) {
> +			dev_err(p3h2x4x_i3c_hub->dev,
> +				"Message nr. %d not sent - length over %d bytes.\n",
> +				msg_count, P3H2x4x_SMBUS_PAYLOAD_SIZE);
> +			continue;
> +		}
> +
> +		rw = msgs[msg_count].flags % 2;
> +		if (!rw) {
> +		/* If a read message is immediately followed by a write message to
> +		 * the same address,  consider combining them into a single transaction.
> +		 */
> +			if (msg_count < num && msgs[msg_count].addr == msgs[msg_count + 1].addr &&
> +			    (msgs[msg_count + 1].flags & I2C_M_RD)) {

AI:  `msg_count < num` should be `msg_count + 1 < num` to prevent out-of-bounds access

Frank
> +				rw = 2;
> +				msg_count += 1;
> +				ret_sum += 1;
> +			}
> +		}
> +
> +		ret = p3h2x4x_tp_i2c_xfer_msg(p3h2x4x_i3c_hub,
> +					      msgs,
> +					      bus->tp_port,
> +					      (rw == 2) ? (msg_count - 1) : msg_count,
> +						  rw);
> +		if (ret)
> +			return ret;
> +
> +		ret_sum++;
> +	}
> +	return ret_sum;
> +}
> +
...
> --
> 2.25.1
>

