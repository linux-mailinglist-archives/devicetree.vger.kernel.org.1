Return-Path: <devicetree+bounces-251908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C43CF8301
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 12:59:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 361FF306304D
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 11:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2FDB328241;
	Tue,  6 Jan 2026 11:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="YxIOygXj"
X-Original-To: devicetree@vger.kernel.org
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011023.outbound.protection.outlook.com [52.101.62.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8709132E152;
	Tue,  6 Jan 2026 11:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.62.23
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767700656; cv=fail; b=NUA+oZQJn68fwAnRVxinzrGgl+BQRRZ0m3RYBte/xG0nbpDyvbQA1ZlnIhIfROtUEXYCbwrp/uGSRLm2Gregszu9rtk2+4zB3HuXeyHOLZS9UVL4iZdyc4T+TnJXyZ49sNbhFg2wzelIiIq0tqrVVb1arLIy/rWLPHdKbJokTLU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767700656; c=relaxed/simple;
	bh=Mbe+apetgq4WIGNePAeoapDI9/dznbI8jUyVO+/2HJ0=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YOVWUkJea2NSIXaGp2aMTaAIGedzeFWtKtQVKBHRiUf+ecfuRZz6WBVbOFDfnDrlHLTqaHUSZYmMZNqDinIv8hQ7pFAA5UtyizJWKVL55ewLuXP55jqIADUQTkCTIL3lnkv7rV3WLN/DB1IeKd1H/SodSm9DOkqM+NKNiGuzu2Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=YxIOygXj; arc=fail smtp.client-ip=52.101.62.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i/Gb3e2BDy8a4wv8Vz+9sZoHsJVWTqp4AlFNd20/mqFI76XsBUD+NME0eZijo94tqqzpp6WECwVy6qWmNhrFBpk9AMWu444Njqrd50fTnnhXYEbmxrEn+mRX4TgXIW/pE2fB/qHaKmWs4oBlJY8/pWPyTiv0CfY/jmB4jG4MKmySn0VGVpNhJdAWQ/6M8tOmRZpfd4B6t0jv4rySNci4cbss43USj+rVL+EqxqE8IJMhJfof6YxrO7lBIZLTMdjeEYWrlh/ZodVZOv/RjYIz5tnkKHeqM9dPNz/GrUPi35e0PvobfE7LXHkdzX6JTR0D94VbV1KCHAfeRrmU+igjVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uYsASLbwbm+fq/VMNQlfnKq23ZF0gXqWCY+BRgfBcE8=;
 b=vsq05J2ub9z0Nn5ntkRrfWRHQhefJGahXEYTFx2AsO76DDIDjs3frC+AOevvJ6X4ISdNYjB8UBTnJTBVdD7kbktJTaC1E3/JNoxkxBypSwEFW/SQqM0FfE3ne3v6FjgzIUQT+2s5XNixX8C1KWueutj5VbDKuZlhNoUcHirG6izOjJ7Wf6K2J1Z5do8wMQ/Xrw+KqI3uDVoTPc+QsBiOHfLHcpTdb2NzGuk8fD6d8XMrtvPpT0M/5LuVSn8SoFkez9NeJSFPLShmTPzGv6Flft0D9euR1+BxAv73jZLneKOXOz6x+P6alUijmf2NzNo3s+ioDfZ442K3WUbbW0DKGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uYsASLbwbm+fq/VMNQlfnKq23ZF0gXqWCY+BRgfBcE8=;
 b=YxIOygXjD5uFNwPgJ3mKWcyJ+ePkd18NbWHSMM2pRqwLZ1X1n9sX/YEdMdqUMVWok8i820RQcV53YAloU9aq3Pz3WuRoI1izRrNRjXCd2Ewuqgb6LH4ZWNtzvKWMIyUp2gu43Y8WMQUP5BVZdEgXHvyMfmIxEk140icfHgrbcFI=
Received: from DM6PR14CA0040.namprd14.prod.outlook.com (2603:10b6:5:18f::17)
 by BN0PR10MB4902.namprd10.prod.outlook.com (2603:10b6:408:12a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 11:57:28 +0000
Received: from CY4PEPF0000E9CD.namprd03.prod.outlook.com
 (2603:10b6:5:18f:cafe::5c) by DM6PR14CA0040.outlook.office365.com
 (2603:10b6:5:18f::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.2 via Frontend Transport; Tue, 6
 Jan 2026 11:57:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CY4PEPF0000E9CD.mail.protection.outlook.com (10.167.241.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Tue, 6 Jan 2026 11:57:26 +0000
Received: from DFLE206.ent.ti.com (10.64.6.64) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 05:57:26 -0600
Received: from DFLE200.ent.ti.com (10.64.6.58) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 6 Jan
 2026 05:57:25 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE200.ent.ti.com
 (10.64.6.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 6 Jan 2026 05:57:25 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 606BvPZD2963211;
	Tue, 6 Jan 2026 05:57:25 -0600
Date: Tue, 6 Jan 2026 05:57:25 -0600
From: Nishanth Menon <nm@ti.com>
To: Kendall Willis <k-willis@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, <d-gole@ti.com>, <vishalm@ti.com>,
	<sebin.francis@ti.com>, <msp@baylibre.com>, <khilman@baylibre.com>,
	<a-kaur@ti.com>, <s-kochidanadu@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/5] arm64: dts: ti: k3-am62p5-sk: Enable Main UART
 wakeup
Message-ID: <20260106115725.qqyg6isf5q7cg52g@renewable>
References: <20251230-b4-uart-daisy-chain-dts-v2-0-fa5257ec54bb@ti.com>
 <20251230-b4-uart-daisy-chain-dts-v2-4-fa5257ec54bb@ti.com>
 <20260105135202.vnamexwl3afdt4cw@deferral>
 <44b21f10-2ad4-4c88-a8e8-f485ecb53af9@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <44b21f10-2ad4-4c88-a8e8-f485ecb53af9@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9CD:EE_|BN0PR10MB4902:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cd46461-ea10-467e-375a-08de4d1ac2cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?5c3hczwSb8QoIVjFRNeGmlXm/S+idiI8lwI5uxA6lXYm58k9qnR4XrmLQ6LJ?=
 =?us-ascii?Q?yBdfCt0OM8sl7z7tWfqJfuhgEk8K9Z+h6c1ss5e8esJgw1zkZMEKWXvUaYiu?=
 =?us-ascii?Q?CZ8DoAJA3+XltZRVH2UgCjtB7+i+M4c6FGx/RKAZ92whP4aOd3CT5lNvdFUw?=
 =?us-ascii?Q?iBgFHHMeXNgAutBjpj8R7nah7FR2VipYAV+YQi9d1fSDVWNQKtHv5fWNxQWU?=
 =?us-ascii?Q?mCO1ZPw9eNP8cIi7bX5SnFK+UzXiWgLfvwz+ItBZST8VBvxCAaKCodDHEc6G?=
 =?us-ascii?Q?6G2cAdg6TZJKwDRhlyKHeOfp+boGlQnVYOGzPeFl6xQ7xNeyNAPp3hQVAucv?=
 =?us-ascii?Q?2buivfo0+Xh9Htq3gYbuXqZmn7+SwHidahYHSavBGZnZN/2JOwd+JCLcj0lE?=
 =?us-ascii?Q?SQRLkL5OTiSr3etxqoNezYBqhFD4MV2/w9OtJylSy5xYBtjkJ+P5K6lltLSa?=
 =?us-ascii?Q?zN4JTTqk4R7rOTVbuAd87hbjLPFwoJb/ESVD6O4qJiw+KR7+LPSu3oxJ4SVG?=
 =?us-ascii?Q?n7+yrYAI+qBVRN90ajxubn1QlcEreEWUf5sEAZ7FEKQTKq5ga0uYX+CKVkoy?=
 =?us-ascii?Q?AZQCZP7zFcpYKWe2aG0toOPvyEBQXu0NjN0Mad7GWU4zvlFIOVdiPu1YpKyB?=
 =?us-ascii?Q?rTGBtd+TelsRv72OuqawYinqzmUxjjBv9VWhJh+9x+w1dzUR20Z/S1RTexAK?=
 =?us-ascii?Q?fXewr/SiWktJym+GnpvCkSQTnfDJFlQ0iQbb7gPcHmOhdAP0/fH2m5Is2sqe?=
 =?us-ascii?Q?IvHeHmuD1ASNByKzwK/1TEV4uhnT7PVOAh5/66lL9o2kspwVKQ+gE4afiwEE?=
 =?us-ascii?Q?TmPSSRV7Y+26NIuFTIWlr8o42ORPJp6E6L7QitDVPrf+O/BV4NCqOY1E6AT5?=
 =?us-ascii?Q?WL/J2Qw4dYf2OWP7FvNbl50G53Cv2HC5Wfy4PaCNbHdGrb0e7GJsjPAqR6a/?=
 =?us-ascii?Q?151xT6fwXKYqP+rwNQeACmOq3Y6CdYuEBrvGaDsoUZ508CD9huRLFHd4I0Gh?=
 =?us-ascii?Q?z4qE73UnWkLugRf+Av+6cpDaO9PZtiQPy2quLrEpmEGxbKYGllFHYFGGYk0a?=
 =?us-ascii?Q?B4nRxA6MNdiCh3Q+ujhZewIZkw0OyjIsqLWKr4I4f6yuE+Lccx4cqJ7gz0FG?=
 =?us-ascii?Q?rsTfUmWSxc9ecLFWiicRD8l35USUUKFyE3oqRDTUUuSfMMEQCV6Q782cO6gJ?=
 =?us-ascii?Q?bvLmSjEG6AcnThhITQWCBI0TtCMC6EroFlqBaNVbjek7fa97FE807TLjlyuw?=
 =?us-ascii?Q?Npy4WoRmUjgaO5t6s66yrm88ZsqSoe1gBgn6L7MDWgPVi6lpAnj2RreMY+m+?=
 =?us-ascii?Q?iGqw3O6zfdxbneqXmdHYK93TaUIfN84u9+RYp2llmcy430JY6gFGnPCkbptJ?=
 =?us-ascii?Q?hGtUynUfCwXJPUTtz2/BIpxV64GmffZ6xHq4g6tqrgwGo5IMeQHC4slam/Bw?=
 =?us-ascii?Q?MfuikuhgjAoJuFlZKTPx3JpD6N8De5UpyDxNAByi1cMhE8IR20EMtti+Af4n?=
 =?us-ascii?Q?ziX6Gl0X0bWkIN5reJqS7/aLnlSv4pRhLIoEf4ewcI2f61az9tQ/GUdEPylE?=
 =?us-ascii?Q?tX3QK2ukz2LsJBAdtaQ=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 11:57:26.4648
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cd46461-ea10-467e-375a-08de4d1ac2cb
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000E9CD.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB4902

On 16:06-20260105, Kendall Willis wrote:
> On 1/5/26 07:52, Nishanth Menon wrote:
> > On 20:38-20251230, Kendall Willis wrote:
> > > The Main UART can resume from suspend to RAM states when PIN_WKUP_EN
> > > is enabled. Add the necessary pins needed to wakeup the system. Add the
> > > system idle states that the Main UART can wakeup the system from.
> > 
> > Is the tx and rx pin register states both lost? I wonder why during
> > "wakeup" we set PIN_WKUP_EN ? is'nt that supposed to be set while
> > entering "suspend" state?
> > 
> 
> The UART driver uses the default pinctrl state when the system is active.
> During the process of suspend, the wakeup pinctrl state is selected by the
> UART driver in order to allow wakeup. Upon resume, the default pinctrl state
> is selected again.
> 
> > if the tx pin register state is not lost, then all we need to do is
> > play with the rx pin state (and leave pinctrl-0 as is)?
> > 
> 
> Yes, it can be done where the pinctrl-0 does not change, and there is an
> additional pinctrl pins that has the TX and RX with PIN_WKUP_EN. The logic
> behind both implementations are the same, just a different approach.
> 

Keep the diff to as minimal as needed + update the commit message
please.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
https://ti.com/opensource

