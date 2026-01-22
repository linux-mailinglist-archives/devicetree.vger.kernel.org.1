Return-Path: <devicetree+bounces-258509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNGMIs1McmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:14:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE55369B61
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:14:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D9635302A12B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A46D14949F1;
	Thu, 22 Jan 2026 15:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Hz6hxyza"
X-Original-To: devicetree@vger.kernel.org
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010052.outbound.protection.outlook.com [52.101.56.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD11D492515;
	Thu, 22 Jan 2026 15:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.56.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096741; cv=fail; b=QwNzGwsyrtXb1h1OO4f45a85f246fPlwBvK914c9E9j23VPuqQtvpszpYH7mkQIKX16+XxsMeV3dujPq6dISWF6z61jEcltBhqbqvdAW7qy0Ufgy3CKHCJOXH4Mzc6oI7hyAe31uhzhMjzb0NIX2sNZohxTdwrq5fd2M7M1eZVo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096741; c=relaxed/simple;
	bh=onrUQs8G50I1LV4KM9f2wfNKXuojsDcG7s13lfhy8XY=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=scxRLTH/CaI0/7kcaJaYit+CSUGBUM9dpBwjlXi5hWV2M5Y96BRTeAK1cPotu6S/tw5hl+J6IlEaP9XepBgs1SP9spxkrOf0PzLl3+vOApw9jK/ZvQoYfxr4JQJuV26jkXLgr/8O1JRP2NYfnA8e4+iB/02ySPQD6gx4njJGhg0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Hz6hxyza; arc=fail smtp.client-ip=52.101.56.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X9fyVTzdp9XRQfzh0/FufrSuWjebg3d+jT8f3OzCxvgxAhZ/FPf3BlLlL5+C6MTbViMrj6R14H1qsaAhx13D83T+XA4UZoA/ddcnhrOt5YM+6KapLrMh/7rEyZyVK8bappYWd+bQG58cNEFEx3TNgqs9+T5y/UjE8HzHVunTNq6DW4rAO+uRsLv3oEqSsrMCEZsFtPtyyU9J7pGl9D6MnQzPObFHTRiJLQ7yN+rn0mDShTrpEnZd2aVpZtTJomzeLzYGNa9X8MERnEe3dEEjHm9SkEvce1efEIOr57fA2Rad07lGbmZnxHsWdusFbge/HuCpWeFECIZNYo0ucyWQzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vZdsrNJjRzDjnskb+rcRKoon8p27D1rAAHlWkiyMLFQ=;
 b=eqLDbnVok2qtFkZ48lbdINrsJdBoujrusb9xe+ZtRHbNF9RbuAdh//flWXBL3vnURAzq7N4myM5Ua+TTw3i4HrJWskJ4HZtYQhqpNZTtJsbMhxAI2XMElciIQPJLoZMPkogc7DNey9uxOON4VNwFE7hcnFt2k/UvrQXAaU2PMdln2wafKbAfShwXWKmUegjF9V6xQFjTsNx4vo5yD00qdtNwIS9w6jdXxIiBpduUTGP0EgJSHaIBwMxMi6YXSl5RsHC+mS1hsMGbU9C18aV3iXz/tNUErSHxFCNiutzN5cXTU5RQskH3y90B2bG1n0qV3P9p7ioP2+1arCmANXus0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=linaro.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vZdsrNJjRzDjnskb+rcRKoon8p27D1rAAHlWkiyMLFQ=;
 b=Hz6hxyza0GQV0GtPdRAxjQp3JI/tZyXkORQMEIzUu5CnoBZkMfUl7m1TGScntKXycuf6+vyTKBDo/83v2eeGpjbX0x9BaIqWEEwQk0YIUab6IyPEXoptgn/PBk9+8VjVaMhwtGX7RMlXMrVFKcG3HNC5nb6OoPqtZzLrsXIhd/o=
Received: from SJ0PR05CA0082.namprd05.prod.outlook.com (2603:10b6:a03:332::27)
 by PH8PR10MB6292.namprd10.prod.outlook.com (2603:10b6:510:1c3::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 22 Jan
 2026 15:45:30 +0000
Received: from MWH0EPF000989E9.namprd02.prod.outlook.com
 (2603:10b6:a03:332:cafe::9c) by SJ0PR05CA0082.outlook.office365.com
 (2603:10b6:a03:332::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.3 via Frontend Transport; Thu,
 22 Jan 2026 15:45:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 MWH0EPF000989E9.mail.protection.outlook.com (10.167.241.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 22 Jan 2026 15:45:29 +0000
Received: from DLEE202.ent.ti.com (157.170.170.77) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 09:45:29 -0600
Received: from DLEE206.ent.ti.com (157.170.170.90) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 09:45:29 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE206.ent.ti.com
 (157.170.170.90) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 22 Jan 2026 09:45:29 -0600
Received: from localhost (lcpd911.dhcp.ti.com [172.24.233.130])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60MFjRVv657364;
	Thu, 22 Jan 2026 09:45:28 -0600
Date: Thu, 22 Jan 2026 21:15:27 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Kendall Willis <k-willis@ti.com>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Bryan Brattlof <bb@ti.com>, Viresh Kumar
	<viresh.kumar@linaro.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62l: support cpufreq
Message-ID: <20260122154527.fbpo2vxtfv66bh2x@lcpd911>
References: <20260122-am62l-dt-cpufreq-v1-1-fabcc15e25fa@ti.com>
 <77815f93-e5cc-407b-8e09-93b007f3ecc9@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <77815f93-e5cc-407b-8e09-93b007f3ecc9@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000989E9:EE_|PH8PR10MB6292:EE_
X-MS-Office365-Filtering-Correlation-Id: b51b19f9-5ba6-49e6-3487-08de59cd4559
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?lWvVtHYaMsFxRooVHQg+XrluTjoazfEKSZkiSCqOClPkuuNzoILAYjrsqK9n?=
 =?us-ascii?Q?nYQu7iWY3fetuW84xtWLtTx4d3OzKA0qSJyx/iWdngw3wQCVQ/Gq0QNTy7qp?=
 =?us-ascii?Q?y6QowIKJgBFKEitJyEc+WaNYkjGv0PIjtY08rhSxm+9rh2+GHvEQpLTo+9mw?=
 =?us-ascii?Q?nscSnq7HrjQQtv+JXQHa/wlgOUKtvj/2lTZ/GgnvzqZuvBlJclp9cOVpPH9m?=
 =?us-ascii?Q?JHT5E2FWfW++fVswAhm6tOEuiebiFDThAQH7cxW9Q6Gfv3Qip0SWh16afFeF?=
 =?us-ascii?Q?uIMoSAF/omfGqX0740UbTvMYy/ZojEpKkJ+MK8ar8PvnfFiMtIXnkfPv9BSB?=
 =?us-ascii?Q?/j+JwfcdXfg/ADTetkoiGG0bHXkjIyR91EletaW5hy/eICAtiRE8oUgGnZ+L?=
 =?us-ascii?Q?kbmIfzl0vHq6BOu1UqwkJzpPfn6SNJLxkc8rndFkThgnr6SAnxJPkIaKv6Wr?=
 =?us-ascii?Q?GS1P34kJBfzC7jH9eJstcJhrx4o7vqDrf+QtO+tJcgvNuIWf9a+2FVXXso+9?=
 =?us-ascii?Q?4qXDml3V0EPUnyhWacRHttoFJ9/4YvaPJyOw8cK3E1WCny179enXOFL5LP9y?=
 =?us-ascii?Q?6xlg4ynQsKxjxKmmbM/+eWNQPwzfUtGsmsUfmRfH8JcTiISDRhZbRsg/yBEi?=
 =?us-ascii?Q?f1XGlezPdvFkAFxrP682H3xYFyKaALzyYrD+sLmH5LLU4VAEvODVPOrcTQX8?=
 =?us-ascii?Q?j9sJ7k/NjJsd+clXDMkpLpR9tLNGN5kI87o4IwZxH/r+EeI7enT2A1TLuD9F?=
 =?us-ascii?Q?XaTsZUdM387870zuwx+a5DKm+IzjwCEQpNCXe6LN68RT4WyAUSL0sXvPrN7x?=
 =?us-ascii?Q?cA8iNKiL4+cakR686/Md4NXi0xoWaoefmfWN+bdUrCQkfrKZy11E2dC8ffUj?=
 =?us-ascii?Q?NF7U9uDtbvOb9vSrttBJflqBaq+bGDo4bwG3hDcQLxK2T2T4GISDXYpkTnoi?=
 =?us-ascii?Q?UbsQ3yIk1F+KWgO5ihgriaKOtZJNHRlZ+lpOf0SwkfL0rPeB0QznL1fPbWB/?=
 =?us-ascii?Q?TPhQZWiovyqgZC1nuHK+HBO3ljIQ4xuPFNc/KxE+2kfVuOym+C6jX4XuVHLH?=
 =?us-ascii?Q?L7om9KjtyOPKqe/b0V1v1GZ/nsHHt1Otd5sX/Ib6w7rBpfRnLu+ndskca9zR?=
 =?us-ascii?Q?5Ved1islbAFLgILJzFG8kECuRbAGwtAD/ievfd3FcBmshGrfsFG38QgITXV9?=
 =?us-ascii?Q?onc7w6ZeiagQhVoQrRYuj42p8hCHk5wPrcSveMDo0d2r7PTvvSgsKc8hmqwq?=
 =?us-ascii?Q?Av9oy9EcYjqVfmzCeqaGFHYCVCe/+02aHqZRixLqZDCnkmtGNgwRnmVPjAbo?=
 =?us-ascii?Q?wx6xHXADnRgtBkUihmMrFOmpncXt39SDZeqBbxBNYiJBYEucHdksUo7IzVql?=
 =?us-ascii?Q?DR89OylulDgbEYZA4gcwY0Pm67/K7MpgJzYp19qBcAzmRMgMGTreQojRkQh0?=
 =?us-ascii?Q?Ieyy80kUuswN3O9fxcZN5mKAI+Tf1aucwq+0lSDVNW14OxoChqqdWip9RxX5?=
 =?us-ascii?Q?hv1CuAaBimxMSPUuy0hQ0YOWsDA1nzEEMxFHxsk/leiHfc+LjrnDBYCO2GuX?=
 =?us-ascii?Q?VPPCCRkH2+oFDpupY6wMX6UP0w0wL5nP4mPKMuyMxBeK2QGGNyPBGnbpIxJz?=
 =?us-ascii?Q?/y6t2r5yslI3DGhK6jUatmX6Nv7xX943poSSSzf7bCzqZRcPCycrUXp9k1s7?=
 =?us-ascii?Q?zqCl2g=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 15:45:29.8439
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b51b19f9-5ba6-49e6-3487-08de59cd4559
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MWH0EPF000989E9.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6292
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258509-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.7.208:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.14:email,0.0.0.0:email,0.0.0.1:email,0.0.0.18:email,ti.com:email,ti.com:dkim];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[d-gole@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: DE55369B61
X-Rspamd-Action: no action

On Jan 22, 2026 at 08:36:45 -0600, Kendall Willis wrote:
> On 1/22/26 04:49, Dhruva Gole wrote:
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
> > 
> > Logs:
> > 
> > root@am62lxx-evm:~# cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_available_frequencies
> > 200000 400000 600000 800000 1000000 1250000
> > 200000 400000 600000 800000 1000000 1250000
> > 
> > Changelog:
> > - fix the bit fiels in the OPPs as per Kendall's suggestion
> > - Fix the scmi_clk ID of the second A53 core
> > 
> > [1] https://lore.kernel.org/all/20260120-am62l-cpufreq-v3-0-8c69b80168a3@ti.com/
> > ---
> >   arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi |  5 +++
> >   arch/arm64/boot/dts/ti/k3-am62l3.dtsi       | 47 +++++++++++++++++++++++++++++
> >   2 files changed, 52 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
> > index 61bfcdcfc66ea8d802a36ed43cd01fbbf3decc70..a42ccd0d2fcc4d204cae81508f839c44ce83f558 100644
> > --- a/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
> > @@ -127,6 +127,11 @@ chipid: chipid@14 {
> >   			bootph-all;
> >   		};
> > +		opp_efuse_table: syscon@18 {
> > +			compatible = "ti,am62-opp-efuse-table", "syscon";
> > +			reg = <0x18 0x4>;
> > +		};
> > +
> >   		cpsw_mac_syscon: ethernet-mac-syscon@2000 {
> >   			compatible = "ti,am62p-cpsw-mac-efuse", "syscon";
> >   			reg = <0x2000 0x8>;
> > diff --git a/arch/arm64/boot/dts/ti/k3-am62l3.dtsi b/arch/arm64/boot/dts/ti/k3-am62l3.dtsi
> > index da220b85151227c63f59b2b8ec48ae2ebb37e7bf..26d3040ff53259daba21b39a55bb8a2ed65d4e8f 100644
> > --- a/arch/arm64/boot/dts/ti/k3-am62l3.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-am62l3.dtsi
> > @@ -39,6 +39,8 @@ cpu0: cpu@0 {
> >   			d-cache-line-size = <64>;
> >   			d-cache-sets = <128>;
> >   			next-level-cache = <&l2_0>;
> > +			operating-points-v2 = <&a53_opp_table>;
> > +			clocks = <&scmi_clk 356>;
> >   		};
> >   		cpu1: cpu@1 {
> > @@ -53,6 +55,8 @@ cpu1: cpu@1 {
> >   			d-cache-line-size = <64>;
> >   			d-cache-sets = <128>;
> >   			next-level-cache = <&l2_0>;
> > +			operating-points-v2 = <&a53_opp_table>;
> > +			clocks = <&scmi_clk 357>;
> >   		};
> >   	};
> > @@ -64,4 +68,47 @@ l2_0: l2-cache0 {
> >   		cache-line-size = <64>;
> >   		cache-sets = <256>;
> >   	};
> > +
> > +	a53_opp_table: opp-table {
> > +		compatible = "operating-points-v2-ti-cpu";
> > +		opp-shared;
> > +		syscon = <&opp_efuse_table>;
> > +
> > +		opp-200000000 {
> > +			opp-hz = /bits/ 64 <200000000>;
> > +			opp-supported-hw = <0x01 0x0003>;
> > +			clock-latency-ns = <6000000>;
> > +		};
> > +
> > +		opp-400000000 {
> > +			opp-hz = /bits/ 64 <400000000>;
> > +			opp-supported-hw = <0x01 0x0003>;
> > +			clock-latency-ns = <6000000>;
> > +		};
> > +
> > +		opp-600000000 {
> > +			opp-hz = /bits/ 64 <600000000>;
> > +			opp-supported-hw = <0x01 0x0003>;
> > +			clock-latency-ns = <6000000>;
> > +		};
> > +
> > +		opp-800000000 {
> > +			opp-hz = /bits/ 64 <800000000>;
> > +			opp-supported-hw = <0x01 0x0003>;
> > +			clock-latency-ns = <6000000>;
> > +		};
> > +
> > +		opp-1000000000 {
> > +			opp-hz = /bits/ 64 <1000000000>;
> > +			opp-supported-hw = <0x01 0x0003>;
> > +			clock-latency-ns = <6000000>;
> > +		};
> 
> Thanks for implementing the feedback! One last thing is I think
> opp-1000000000 should have the opp-supported-hw value of 0x02 because speed
> grade E only supports up to 833 MHz.

Okay fixing this in the next revision.

> 
> > +
> > +		opp-1250000000 {
> > +			opp-hz = /bits/ 64 <1250000000>;
> > +			opp-supported-hw = <0x01 0x0002>;
> > +			clock-latency-ns = <6000000>;
> > +			opp-suspend;
> > +		};
> > +	};
> >   };
> > 
> > ---
> > base-commit: e3b32dcb9f23e3c3927ef3eec6a5842a988fb574
> > change-id: 20260122-am62l-dt-cpufreq-c24f0236ad15
> > 
> > Best regards,
> 
> Best,
> Kendall Willis <k-willis@ti.com>
> 

-- 
Best regards,
Dhruva Gole
Texas Instruments Incorporated

