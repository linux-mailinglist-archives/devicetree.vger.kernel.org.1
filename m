Return-Path: <devicetree+bounces-258508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6A8bEO9UcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:48:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 079116A472
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:48:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 55FB93001CEB
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57E7048BD59;
	Thu, 22 Jan 2026 15:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="aYtn3g1E"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011035.outbound.protection.outlook.com [40.93.194.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7983481AB0;
	Thu, 22 Jan 2026 15:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.35
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096700; cv=fail; b=MatrZZazStJCEhabgd4HwHK3lZSEtQZKBYr0ew/UyUlr9kXZO7+KsuQQ1rsnTI868TTgtFdTZe9mQ7mQD03tRyj1DZCP4x8MKWqOYsdOfl6gdjy6hBLHf6+eGyTmJhjXipwuXnQdgH6bUZkAGYormnSfZf2LCG7fGIPi7Ap2b+g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096700; c=relaxed/simple;
	bh=ZutK9RgYacBNshZaL3E9tYedJG0VCV3BSEj1cQpsQ+w=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MncgnXp1eDbvB2c6qraER2g9pbmpDp1wGRDoeWI3rrjTAcCCzJo836tQS9zQT9+nURJRg6grqA3AeFWMpZSYv9W6+2dJLO/iZ6SyJGAG3lHIs0l9sZWLie5bUTzLViZI+QFIKY+fckoF5q2G/4mb0y6STHiu0blnQZun3eWhWEU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=aYtn3g1E; arc=fail smtp.client-ip=40.93.194.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u7NZRVQQtMGoFKr24g2L7NvZ970mFYm5lgHatJBqHECK5jpn91z/R4DQd1bLgZQnz+qdH3hPtIK+rprdb2aykdMKfV/ezW2BAXXGuts9IAz/Xo2kx3CUIWPKCMjmjeuvCsgXEeZnqJTLdSEQGYCcHWObnRyqBouvQDwKaXP/LKWgmxqKrSd4j1G/VivtRwiCangCP7/cQRwj7P+jBBusXrxbf+hfMxiBZznIb97zIMN7GN+zkMsvhXPi6rBfgItT1O72td5qu881ukSLCljRIoswzZjU/9MErBobLx52NDM0P2g2VZVkn6WZaHx3eG9Gn/iAzPo6sdrnw0lXr/t+xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xc7P1ZqCIqhOqsfObuTAJJMsngRk68bcs7Z96rmfEi8=;
 b=r48h0sv4b1gUE2pUFlb2wpNkDV2x4k6PgKFlj1C7zUZa6gHvCLRJhcgLxZR2ITXATDOpVtP69PDQTJAmtxPtO+bOHCZoYrdw2ZKDQQF+grOdkaPYykL/+WqKfJ0p24xAVzGHViQuWTx4zOT1dlvKoW+Y8DHQH6clP8misN25Lue7dYnOIrmzepc+Vp+SlTQldmVmMyN9Q2P81ElwWP1HRjbXCHG/QI5/ogr2j4VPlnwd9GQMvD0NAF+5vlFwlpLMGu+VH0qHa0uA9qN1NpyVUXgQex606KBrSVixGwwMpqNS5ddl58mZaUEGvAMaiMHoAOl6bhuF3dDnOgiJl8BUgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xc7P1ZqCIqhOqsfObuTAJJMsngRk68bcs7Z96rmfEi8=;
 b=aYtn3g1E3E+bz8r1Mzq+Esq24L1AL6wcG5RA971lVnrUyOBOkX2cr6j957Vk4/jgfdjnEveMyfAr9ADCHUqz2lG8XmH/C8iwgPEU8puJpKEcBed1Fk2LI7NKiF/kMbzbvTXBfKm45jjm10TNTuPkLOReJtHClxRhWPwRMJBaoD4=
Received: from MN0P221CA0018.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:52a::29)
 by DS0PR10MB7407.namprd10.prod.outlook.com (2603:10b6:8:15c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Thu, 22 Jan
 2026 15:44:49 +0000
Received: from BL02EPF0002992E.namprd02.prod.outlook.com
 (2603:10b6:208:52a:cafe::c2) by MN0P221CA0018.outlook.office365.com
 (2603:10b6:208:52a::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.10 via Frontend Transport; Thu,
 22 Jan 2026 15:44:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL02EPF0002992E.mail.protection.outlook.com (10.167.249.59) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 22 Jan 2026 15:44:49 +0000
Received: from DLEE202.ent.ti.com (157.170.170.77) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 09:44:48 -0600
Received: from DLEE211.ent.ti.com (157.170.170.113) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 09:44:48 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE211.ent.ti.com
 (157.170.170.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 22 Jan 2026 09:44:48 -0600
Received: from localhost (lcpd911.dhcp.ti.com [172.24.233.130])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60MFilTU784422;
	Thu, 22 Jan 2026 09:44:48 -0600
Date: Thu, 22 Jan 2026 21:14:47 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Kendall Willis <k-willis@ti.com>, "Bryan
 Brattlof" <bb@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62l: support cpufreq
Message-ID: <20260122154447.7r53x5f4nel3znmh@lcpd911>
References: <20260122-am62l-dt-cpufreq-v1-1-fabcc15e25fa@ti.com>
 <dys7x6zsaofct4ozb4unbojc22devxiz5qebdb7m3b7kxx6nmb@j5iaqv7yuptn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <dys7x6zsaofct4ozb4unbojc22devxiz5qebdb7m3b7kxx6nmb@j5iaqv7yuptn>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0002992E:EE_|DS0PR10MB7407:EE_
X-MS-Office365-Filtering-Correlation-Id: 147fe150-c7fc-4fa4-5821-08de59cd2d31
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?YxWbP3CG2t5YPHbYw3JNsRGo1TuI91iks12SKxsx5rvB1Ih4RcaNo2frfRjU?=
 =?us-ascii?Q?UdyXsCI7/8CGuAa4m+liiVQ3iGwhvNHeq7DY+MUTd12sZdv+0dCQX2yAjk7i?=
 =?us-ascii?Q?xlYnWYObKEqze8kKBRfBdCiaeYSRYNjwFliNfBBB0ZIZ4zYK35VEsTBPSz2Y?=
 =?us-ascii?Q?ngoPug5WCF/VyXhuLUadNe3c6r8Sp7Hz0KVEz5I4hIhQ+HhBiItXAvhYisKj?=
 =?us-ascii?Q?9jC9afOt7L5ZBkwRgZl8mB4uWKxXijfmd0vDASvVm3ZuP5D2BVA/eBdFDDfu?=
 =?us-ascii?Q?JlbYsSKYgIZFaVx2DXcn+K9+Gh9HAWEjYtWTAy1RsvknqPqvBVKPqjLG5AzS?=
 =?us-ascii?Q?bVQI8mcNT0p7+eIpHf2/SRjn05h2uhiOV1xqtoIE1R7YSpmH8dKEulSWEMKu?=
 =?us-ascii?Q?aVYMyF1uA2rpJlLNrfyRYNtKzA5DFAalBQD/Uq+d0I2C6XGT/U16nN04tCum?=
 =?us-ascii?Q?ss3Wfyg+QqFSYAMpwImsf7Jm8ZI+/ehQ8TJG4ogmFRawEQLDKzsyg1VYxiU5?=
 =?us-ascii?Q?p2xn6OZgZ+7O/D4f8COSGL2DfK7yEBd5iveT+m0viPlcbRGL+vfdM2n3e4+9?=
 =?us-ascii?Q?oBoldwpoyugowwMW0Ee+EJeS+9FOkiMUWXtWCSWuPy7wDqS7zaqafChSLQfq?=
 =?us-ascii?Q?XPNNjcaueo7B2qiRkQ3IgnJaCZ0KM4a1+PfJe7qiLbPelwy7RnxUdHGY3wEd?=
 =?us-ascii?Q?HHRvcKDonZVkksvYvchh9a7LjhgRwhO66IOkgnEcDzmK1rRmqrsdSxmYp8kF?=
 =?us-ascii?Q?gwL1Q4J0wRZPWuwKbVRbU7x/VH0Io+q0+fHshyxjlugFHf2wligNG4Djs+jU?=
 =?us-ascii?Q?1BJrh4HXLIJM/tVswxqOlxxSaUXZVgGhdPi1qZH3n8JWn20E/DunDiFjxQKf?=
 =?us-ascii?Q?shlsFy5Ex4mh3hftDq5IF7a2YbCBG/ct7sV9YelV2RF1uumJqB+nMMkSCWkb?=
 =?us-ascii?Q?502buotVYpqB5Gw4tG8vNq0+n+mZttSKAK1K30U5Z+HywSdHURHajY4LzbxF?=
 =?us-ascii?Q?3mgKR8VKQMc6/W4dGMMNl88gQTU9GI53oU6IAkggl3m+BZpH+gOkW9bdh6HG?=
 =?us-ascii?Q?9KVyCH/ubQsadV+OR/EXhJ9oOV9hWeNpiSCqp3K7WJiPDr+YWpbWYMUa0d6g?=
 =?us-ascii?Q?U6X4Ulg9W9/c0995kgodkfImHL9SwoGoODOvXm1AQG+Sm3Kzs0DGnAAGkg85?=
 =?us-ascii?Q?VSQcv8mSYDOPV9eQRQBTHFcPghTfjjfT9d9iRaQCxvK9rVIPqa77SVwm3sUA?=
 =?us-ascii?Q?rS1YbqKiuFTv+dbqgrL1IYbpRjjjd2/W/0YnzgL7B6psmw4U4wl+SJ5YJvm8?=
 =?us-ascii?Q?YWa0GshDvNRndbAiiYxXtLkPdEWIe40ywYjGsRQdplUUfyEIJEnSdEeI2ZSj?=
 =?us-ascii?Q?2JaqaPLfvupwdXWZN2tfF4/cAG1Vau9uKLyXKsDW1NX8jlLPVmKKjlNFv7MY?=
 =?us-ascii?Q?iimczhQ/gQbZjykQfAVQ9vobYereEeUTiWmwKivLngTGdZ8IMLBVOKdmld/N?=
 =?us-ascii?Q?qAvsriiB0SMGP2q6lU5+6JMm+wDLFEHjnrp3ua3KEmJC4ltaaXPmOCgHY4wl?=
 =?us-ascii?Q?eaVIH0bvmduN/ZQ0q1hGdQ/hdM6rqhBOKhtn9SUF+Rhus3xBYNLCGtzT0Esl?=
 =?us-ascii?Q?IxRYg1/dX8C6an0sDocgFe8EWJIYZr5ThXMEKcxPZikyK2WAB7XPCY6tjDRJ?=
 =?us-ascii?Q?dMaapg=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 15:44:49.3426
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 147fe150-c7fc-4fa4-5821-08de59cd2d31
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0002992E.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7407
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258508-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,ti.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[d-gole@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 079116A472
X-Rspamd-Action: no action

On Jan 22, 2026 at 16:56:21 +0530, Viresh Kumar wrote:
> On 22-01-26, 16:19, Dhruva Gole wrote:
> > Enable CPUFreq support for AM62L SoC by adding the relevant OPP efuse table
> > syscon to k3-am62l-wakeup.dtsi for speed grade detection.
> > 
> > Add the operating-points-v2 table with CPU frequency steps from 200MHz to
> > 1.25GHz to k3-am62l3.dtsi
> > 
> > Configure CPU clocks to reference the SCMI clock controller for frequency
> > scaling
> > 
> > This enables proper CPU frequency scaling capabilities for the AM62L SoC
> > using the ARM SCMI protocol to interact with the power management firmware.
> > 
> > Signed-off-by: Dhruva Gole <d-gole@ti.com>
> > ---
> > The driver changes were merged previously [0], and so the DT patch
> > is now being posted seperately. 
> 
> This should still be marked V4 with all previous version history.
> (Don't resend just for that now).

Okay next revision will mark as v5, and add this link for v4 changelog.

> 
> -- 
> viresh

-- 
Best regards,
Dhruva Gole
Texas Instruments Incorporated

