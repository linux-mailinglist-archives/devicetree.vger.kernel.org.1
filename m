Return-Path: <devicetree+bounces-314620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gm5aLw/4OWoazgcAu9opvQ
	(envelope-from <devicetree+bounces-314620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 05:05:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA726B3AF3
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 05:05:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=lm1rG0Pp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314620-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314620-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EF339305178E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7768E2749C1;
	Tue, 23 Jun 2026 03:05:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11013002.outbound.protection.outlook.com [40.107.159.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FCE1A6835;
	Tue, 23 Jun 2026 03:05:26 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782183928; cv=fail; b=ZAVKrMdIaPzDKUAyG4yU8g8dBZShU2uluTD92YlqHSSDfOI8p3kHGRMHBcPNX+FezdDiSqAatu7CMX/vSAo+rP1mf+vhMTh2+iVUGuBEaAxdPd3Ztj+MLWNF9VPCIVPWZisezcWEd64t0Qu0/G6ZwLqIaE6mtxD6ZZbWfQ3QFLo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782183928; c=relaxed/simple;
	bh=HM5iBMnoD2d0UuA8KrsDIeISqVv9H+cwq3Al4WJ3KfI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=jc02rNiHTLUvJKCCmvGlt08l16/J9McRgAE0LOZyvK4wR2+CUWtOMEambgCSz0YnBVD2TJ0HXHjP5OT9HfyugMUC4CzybtxaumbJoEczpjjDdgT5GM/Q7aMfzeYs33KjCWYo/S5PiE2WFOwtLgOfduBY68BGV8cDmD3v2f3QtGg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=lm1rG0Pp; arc=fail smtp.client-ip=40.107.159.2
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o/QxBNewNITrRF/daIwbH/JNkNGZk0m4pGaYxw/tkR9TgXTVPvgccLURQDzpJnNWpHkBAn6lElssE58Jytbp9vcWTO1W1fzoyQ/c0nWg30ceH8sNYpHr+OtyvoP4GGkuiA9jIBAQ8qtZKcSz9vKq5sPeBc7ZaWdtHNkJVmh+xtRppobaDFnh4qz+ftPsoDAXobTEnhTo/eAtQXvEB0eFznMpGpXHFUPre0uA/Cb5sZhAM4TDrvdaDmJiA1CqoLuZJQKZs9LO9lG8L7PeoXvF6Lq74ERi0AaP1Qkh95htVOwGDsxmRZ4IOSjIPYn375yPj/14n+PVb1QIKF8FRigQkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cPXR1Lio1IdAXubOuqCEpyj5m1qc48M02vv6I/Qax6s=;
 b=NduGkWxWtgaG+8XCE5t81IJth/vTXs19Tza6Ic4FTSjIn/jtFFGI4GZI+W9KYY9v5oqVwcCfcsFQ6PGWijjHpQgtCCNPS6smB9zVZ01U8D2uX8qOH7PLuQZoK+0xQJOSG+uqFonGuF8qu9kIqVVQ6ncZDltap1giA6mqTdEJGFvNxzDHFSqqvWAgLnTeSmQESo92F/0o9hW/CRKj8vPKDAbOxPlJWI96FBiwoDyyJS+A8qYETwQecQVNXH2rMvBQZGi1qLCNlowu9RdP00zKyAgu+n602oAt/RSa8jFAo7lp5aK2Aok9MgyN7u/cLBLyegf4pY2s/R599XesqRHK9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cPXR1Lio1IdAXubOuqCEpyj5m1qc48M02vv6I/Qax6s=;
 b=lm1rG0PppSdgGrIm2sNGkVfdoLb71YiL0orZz/ztwp1WyXiGDMZi9VKOSHaJ+KOfP1Vnq4ng35I9KKzNuLOQBA6HFz4oAs0T8qc0NVPqKk7AJYGL3/UL8ZAC4bEJO4rKpxXEPjKPYoQHdeHGtYCx8C7RiwBXgkOACVX0Ssoao6xQnQW65TtboKYyGEiprEOmQqQr7549qkL6wEblNzoVHvVSHdMbRLZ4bPdpLYxaJJmXIFV7bSIxHE+B6IFjvdrzujMOssLIMcUz/bLvp6K8f9D7k+ulUaxssKxj8aGhmjfsPlwUeZPyDzC9EFlVXZuG2EyEEgiIbZAdrB2H754yAQ==
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
 by VI0PR04MB12188.eurprd04.prod.outlook.com (2603:10a6:800:332::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 23 Jun
 2026 03:05:23 +0000
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be]) by VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be%5]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 03:05:23 +0000
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
Subject: [PATCH V2 1/8] PCI: imx6: Add skip_pwrctrl_off flag support
Date: Tue, 23 Jun 2026 11:07:28 +0800
Message-ID: <20260623030736.1421537-2-sherry.sun@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260623030736.1421537-1-sherry.sun@oss.nxp.com>
References: <20260623030736.1421537-1-sherry.sun@oss.nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI1PR02CA0060.apcprd02.prod.outlook.com
 (2603:1096:4:1f5::17) To VI2PR04MB11276.eurprd04.prod.outlook.com
 (2603:10a6:800:296::7)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI2PR04MB11276:EE_|VI0PR04MB12188:EE_
X-MS-Office365-Filtering-Correlation-Id: 493a7f7f-0775-40fb-0e6b-08ded0d44482
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|7416014|366016|19092799006|23010399003|921020|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info:
	K1+pU6G3RUHylv4uVbPOEScbcSBia1wGDLxPDFwTNiOEDtAxl/LSUDT8D4JFkxSTkNnej+KnVwQuzQgKTK6JCTOqNMOffy408kFdhLNCwBQXa2YO9VR6NzD+wogXDjTcXWCiuZ66tVO9FBpywIcTfmkcr30Q73CWDq3n6G+Q5V6UT80zjgHLJT+ns3dUZc/6Lg1uBGfeH9EOAYygUEk10eKm5rIuRqwvrgdfRsbAEpp2c44yHmKEwzAk9DnoGRbEvuhz8ZWYpfXmy/xoEg7p14gWTpkNe4ImFMC7moVjoKwVdzPNZXmDPJWmUgyW4+rhrGSJz2LxZXfeYVQ7cjeSyhDQW9T+okQ1LfrGXMZOcyQnJn7E1xOa5JJw2VSfKUB2VI1id4WjEhV6GGokUGl6g3p2TMF+5bKVQCP2GbV9vw7UrFgoO3Qf4yW+zsN4BiIGr6NFHEEpHUqur2ttnJDSltuKQg55fVPnZEmTNQMKBvmLn/XT1LDpL7bflFUc1pLwz8+L33da0Vc5WmHQ1+24TtesmFMWfOrMdc8x0TCJtievn5OglIGanZbd22hvaslLHA/kWmg+CynpPPkY5OW3d5HlHb5qIyT1e3oFWzTuD1bKmgNDlcm4PrV28EK3pygLxlr9Ou9cw7bNXvOKjfMsIYLxSLbYm11GZZsOTJ9nubcn3E+m+AvFnJJuEjK9Ta+EPF9Md6MVtaFn7azU9Stz0A==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI2PR04MB11276.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(366016)(19092799006)(23010399003)(921020)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?pkW2MCVPRGzOQs/ILgdwI8dgVI2LbZ0tNlHt6SHsqkdnrc8XTv5X2cO3qgs9?=
 =?us-ascii?Q?qDaxvgIIvbZGvrFKkvurtu9dOiyJU5E6JYAqMC8mf/tjI0tnJOAjnkUoa5QC?=
 =?us-ascii?Q?0I4DZMlRZJ+evKBzPP+MbIv9yFUTJLGN7YH+6bOdVdWxmh9GTyUeD7WuaXTU?=
 =?us-ascii?Q?q1M9RgpWOumB/UchoN+iuFJ6SDbBx9RHgpIZOxymo1r3qleX7XCF+x6dnegP?=
 =?us-ascii?Q?Fk9evCkbucHm+RQDVcAIGSrHObX9kLPSczxUm/fVflNAyyVFrll++2Sk56eb?=
 =?us-ascii?Q?nltNNFtMVc6gzDyWq6NQgx4Eja9UCzZgWY1FPg/jUqi9bIKGSfAO6oWIq7JV?=
 =?us-ascii?Q?+qKmx66DgB/SMeGOicRvyqSwS9s3UguelFZqs+xMsyo83DpeAy4I6dqKtM7X?=
 =?us-ascii?Q?Dzhs+uhAc1LA05mWXdDoyVAyyHKlLuxALFkLm1CfjH/jvm7Z48c57A/+J3QR?=
 =?us-ascii?Q?/kkUMeoVluelaiBOK6/FpNbp6ksVcd5gVPo6ommsTPVGw3ryJOkfMZCuzT3x?=
 =?us-ascii?Q?ZxVWYZWQl3xqjVi2kTYa06womfOhvIhZCGw05Atkaz0Ky2eu/JdqhZHtkRuE?=
 =?us-ascii?Q?3/7aDlHk859vzkm/FNywvkFz2kplk6IgD9PSGE6Ala6Sm+eUzDJJ3O+VezlH?=
 =?us-ascii?Q?SHTmslvWu4yOFTodjLfNVjowjuvisQ9FMV+wyismJ+VtiT4ndao/oLdG7NAm?=
 =?us-ascii?Q?GNhMmT9xL6Q5cWkqCeOg3iFxCkTs6U2AtiZYmqnbMw4tf4q7R5IJPqygC8aj?=
 =?us-ascii?Q?3v+oGUnLDng11RIB/5WZn0z6rFDwKXsX0IkXV0CqYLYpRL9lATvZK5t7HShs?=
 =?us-ascii?Q?AnljsAOOgz56u1Kt4x9kg3Xadw/Sx4kG8xkBwat6Hb2MlUebBub0AK2sAeoy?=
 =?us-ascii?Q?C6B8lBZatnmSyYbm9HVyuWGtYGC1MzcHjvSpaG1IDWd69cO+2sCImbNZ1+QY?=
 =?us-ascii?Q?mHpveyHT1LyLqK18k5mbkWTjaoEaA07T4ySSP/3GeXKsUl0ZZKrlhl2o8Un+?=
 =?us-ascii?Q?cxzj2RKhFYKRX/luojZ/51mZSKCgi1uAC/m/2yu5mhmacOR4fvoEUx+8QUAn?=
 =?us-ascii?Q?66sm3nYH23EYvVE7VyylSx6lyytrt+G/vEZDOPqAd5ApSHUQHb0euP2Wu7zT?=
 =?us-ascii?Q?zBwkQvZnd+BtOw3XDrf3V1683pCyHgH1p6pVaFs+vw+Xh9XExhKKzVPbUqZF?=
 =?us-ascii?Q?rHUQj/iO8saNdY0eTDB5Rma8L5BF9iXLVWUxPJICKsJF6l8Nb2IU4BJyH30Z?=
 =?us-ascii?Q?I4qwZM3h2x6nEfSaiS7JS+F0qN3VMzt66zW/lAXXJ0GmDxAE4Qs3pTKtTQnn?=
 =?us-ascii?Q?rkqk6bXiFwCNL/xYwDOn0yuj50mSKmUEztKUqy86gTzf+piawC0wHCXe5+u5?=
 =?us-ascii?Q?uVc3GuKz2vQ9ihHuLiTyXLmctNAN+LFdk2ffgo+xxCrCkkZJfdYrytNz/Qya?=
 =?us-ascii?Q?+T9W4ixctArohjLJ/HZvz3n/CZy8C2rC3yO+DsOWiP5X4owVnJLQD3iQfPN2?=
 =?us-ascii?Q?yy2sHV7nGJt7OjrfB6mN3C+lH+3C4bRT0QkQqPRwRcDmTo4bYM5eaqqKp80d?=
 =?us-ascii?Q?W4ovFA5A1rdIClSsyUYE92AY/Eon9vuCcQfKBbOd51q2OkX6IAqhnh8Mv8gY?=
 =?us-ascii?Q?iBhOYvHQ9iblc2UJe/2fFQYibS4oOGLdiLG/12pYdYSV9W02Kd/GIkJF4WNt?=
 =?us-ascii?Q?iZKvsjLZATILsN8VH2UJJx6gD5CE+OVXb6oixEJZIO2za8D4MyXfCgdyMpQ/?=
 =?us-ascii?Q?bVhX8UESyhUMm9hHrHhd7DNtOzYoR1Bjltv/iAUAcYjUicX94T/4?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 493a7f7f-0775-40fb-0e6b-08ded0d44482
X-MS-Exchange-CrossTenant-AuthSource: VI2PR04MB11276.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 03:05:23.6990
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +ZDWXRDuxqGCGUi19vdH8kJlg9Stq+jWEEdAjA6UoQwmlHH599SPoSK6vQHnAMODOm36GgE0zlWTI5Uktf5BjtZb6IB0MQhH/6DnC1ow6UzyXCXvg1Q6CMKof7dkK9Ve
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB12188
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314620-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,oss.nxp.com:mid,oss.nxp.com:from_mime,NXP1.onmicrosoft.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DA726B3AF3

From: Sherry Sun <sherry.sun@nxp.com>

Use dw_pcie_rp::skip_pwrctrl_off to avoid powering off devices during
suspend to preserve wakeup capability of the devices and also not to power
on the devices in the init path.
This allows controller power-off to be skipped when some devices(e.g. M.2
cards key E without auxiliary power) required to support PCIe L2 link state
and wake-up mechanisms.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 drivers/pci/controller/dwc/pci-imx6.c | 36 +++++++++++++++++----------
 1 file changed, 23 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index 0fa716d1ed75..ff5a9565dbbf 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1382,16 +1382,20 @@ static int imx_pcie_host_init(struct dw_pcie_rp *pp)
 		}
 	}
 
-	ret = pci_pwrctrl_create_devices(dev);
-	if (ret) {
-		dev_err(dev, "failed to create pwrctrl devices\n");
-		goto err_reg_disable;
+	if (!pci->suspended) {
+		ret = pci_pwrctrl_create_devices(dev);
+		if (ret) {
+			dev_err(dev, "failed to create pwrctrl devices\n");
+			goto err_reg_disable;
+		}
 	}
 
-	ret = pci_pwrctrl_power_on_devices(dev);
-	if (ret) {
-		dev_err(dev, "failed to power on pwrctrl devices\n");
-		goto err_pwrctrl_destroy;
+	if (!pp->skip_pwrctrl_off) {
+		ret = pci_pwrctrl_power_on_devices(dev);
+		if (ret) {
+			dev_err(dev, "failed to power on pwrctrl devices\n");
+			goto err_pwrctrl_destroy;
+		}
 	}
 
 	ret = imx_pcie_clk_enable(imx_pcie);
@@ -1460,9 +1464,10 @@ static int imx_pcie_host_init(struct dw_pcie_rp *pp)
 err_clk_disable:
 	imx_pcie_clk_disable(imx_pcie);
 err_pwrctrl_power_off:
-	pci_pwrctrl_power_off_devices(dev);
+	if (!pp->skip_pwrctrl_off)
+		pci_pwrctrl_power_off_devices(dev);
 err_pwrctrl_destroy:
-	if (ret != -EPROBE_DEFER)
+	if (ret != -EPROBE_DEFER && !pci->suspended)
 		pci_pwrctrl_destroy_devices(dev);
 err_reg_disable:
 	if (imx_pcie->vpcie)
@@ -1482,7 +1487,8 @@ static void imx_pcie_host_exit(struct dw_pcie_rp *pp)
 	}
 	imx_pcie_clk_disable(imx_pcie);
 
-	pci_pwrctrl_power_off_devices(pci->dev);
+	if (!pci->pp.skip_pwrctrl_off)
+		pci_pwrctrl_power_off_devices(pci->dev);
 	if (imx_pcie->vpcie)
 		regulator_disable(imx_pcie->vpcie);
 }
@@ -1990,12 +1996,16 @@ static int imx_pcie_probe(struct platform_device *pdev)
 static void imx_pcie_shutdown(struct platform_device *pdev)
 {
 	struct imx_pcie *imx_pcie = platform_get_drvdata(pdev);
+	struct dw_pcie *pci = imx_pcie->pci;
+	struct dw_pcie_rp *pp = &pci->pp;
 
 	/* bring down link, so bootloader gets clean state in case of reboot */
 	imx_pcie_assert_core_reset(imx_pcie);
 	imx_pcie_assert_perst(imx_pcie, true);
-	pci_pwrctrl_power_off_devices(&pdev->dev);
-	pci_pwrctrl_destroy_devices(&pdev->dev);
+	if (!pp->skip_pwrctrl_off)
+		pci_pwrctrl_power_off_devices(&pdev->dev);
+	if (!pci->suspended)
+		pci_pwrctrl_destroy_devices(&pdev->dev);
 }
 
 static const struct imx_pcie_drvdata drvdata[] = {
-- 
2.50.1


