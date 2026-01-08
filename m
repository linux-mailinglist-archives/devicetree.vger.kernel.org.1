Return-Path: <devicetree+bounces-252904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 46412D050C4
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:36:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 329A830E9054
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 16:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71C492D9EF9;
	Thu,  8 Jan 2026 16:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="sW1RxAzS"
X-Original-To: devicetree@vger.kernel.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazhn15012043.outbound.protection.outlook.com [52.102.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99ABA50094E;
	Thu,  8 Jan 2026 16:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.102.128.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767890442; cv=fail; b=e2i3llx5kVWPUpZlVx1tudlWXMDKFAM5/B/zvVvJ+ERcbh6z4IDzwEw/91hn8tHw74rSq7gr86rDai9ppOXJtLVVXkOtIEh2V4+C7X3GKNHl2iFk32QXY0pHnsDRzxq/mFO1uAi1+gqQzS3KdDf33SRL87nEY0rXrfD1VZFLzO0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767890442; c=relaxed/simple;
	bh=tEzCYFp65/un96jJOi4W4SCmung7z6fXNIZkcQcuWLU=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hZi/LA/MveKZYwUoph4SrDKwObX4DE7luH967gxCTd6IzM1zVydqx4HsF9LfI4SrUu/aB+JdI1VbHnal+sQPSXlP779d+DhaniDq1sdeWqF5KoRGrnDWkvN2RGggCTzvXadrn62u32v8Rw5G1htP/q+TkkNvKFRYsZF+YbLgk78=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=sW1RxAzS; arc=fail smtp.client-ip=52.102.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FZFZ+QITetErSYrKnZ04ohU7jDBUijLx9hEDrCqQtPC+meXjiIT+1nxOubB8kiJUlCSjAp9wR1I05+4nmT+cMyoQTFPRxJyCmQeQvFePb9b7n1hLB+LQPvwb+q+5xGbQJT9su/eUqzqXibrB9xfpqjqH+kkI/2eYGp6FTmIsABTkI6wVxy+vofGx5mhFSJPKbKDR5/hyEs+ffsQjeeG9Hl/E/RPBTQiLEN6H9Oz7UsrEWtNpT3YYJZlV3KNlMBtif6Dyef/VQUfMhgehZKe8BO/qpEfulOb1963oLDkYNyyZfaxtr3OyH0cjW20GQLV4FKjknZZJ66+GcAo57RwZlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QzKPXcys/yDv3xR50V/DQ4UbV8OFp6lVFesvejZ/KE4=;
 b=gcp9oU7r1h4Iu4iTEzWauFiOjnSbFGCimnSsRrXi9J0lWDB3hDY5VCMDg2Kkjn4cOI5YApYwAIzEOKM1jtQ98fyNeixMZHbkQjs2rrJZ4H+R57zhOcOmwVvr2nh/HS2/NzCLuknsgrbguPTf9FfTCa6vDd6p3AMQQJu4R7ize4kZHeYy7jOtw5OEBkluaUhBAwuXHJtR6iSgjC1b1EAs5tlwne+L3zmJ8hpNVjEoPlAsZ7avnX44m9cDjDAdp35oxZ3YwUky4Eqdv0mZweI1XjYSo7e0ReIkpDJ+lR8M6slOzxAD9ZBSJNoxMovSBO2QOzlUuuY92qguJS05SlLVLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QzKPXcys/yDv3xR50V/DQ4UbV8OFp6lVFesvejZ/KE4=;
 b=sW1RxAzShqEybrpSmOtSoNZEDGvqxjEI+bUFFy4ItnwQHQ5u6c75UI5+mZlP4gkbcTDOWbUh7iMkSA/KfbJbu5VUV9PvD2f8fOEYdCKCRbW3ape29WZw115yH+o/oNDT6nIYIrx2RgMfV/z2AmEsrZ+XKM0EVduVDtThZHaYikY=
Received: from IA4P221CA0002.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:559::8)
 by PH8PR10MB6337.namprd10.prod.outlook.com (2603:10b6:510:1cc::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Thu, 8 Jan
 2026 16:40:34 +0000
Received: from BN3PEPF0000B078.namprd04.prod.outlook.com
 (2603:10b6:208:559:cafe::ba) by IA4P221CA0002.outlook.office365.com
 (2603:10b6:208:559::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.4 via Frontend Transport; Thu, 8
 Jan 2026 16:40:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 BN3PEPF0000B078.mail.protection.outlook.com (10.167.243.123) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Thu, 8 Jan 2026 16:40:32 +0000
Received: from DFLE206.ent.ti.com (10.64.6.64) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 8 Jan
 2026 10:40:25 -0600
Received: from DFLE207.ent.ti.com (10.64.6.65) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 8 Jan
 2026 10:40:24 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE207.ent.ti.com
 (10.64.6.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 8 Jan 2026 10:40:24 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 608GeOqp2674922;
	Thu, 8 Jan 2026 10:40:24 -0600
Date: Thu, 8 Jan 2026 10:40:24 -0600
From: Nishanth Menon <nm@ti.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
CC: Markus Schneider-Pargmann <msp@baylibre.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman
	<khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, Sebin Francis
	<sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, Akashdeep Kaur
	<a-kaur@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt Trigger
Message-ID: <20260108164024.fodfklk7xayh4dqj@authentic>
References: <20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
 <979eb1054dbe116c2c8bb9920e94e3a93db5346c.camel@gmail.com>
 <DFHSDXTVL4AU.2OQ9VB9TEJ75G@baylibre.com>
 <6c90102537c3e3f1712538ca0b165cd54d71d8c2.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6c90102537c3e3f1712538ca0b165cd54d71d8c2.camel@gmail.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN3PEPF0000B078:EE_|PH8PR10MB6337:EE_
X-MS-Office365-Filtering-Correlation-Id: 019846df-1a8e-4833-7bb7-08de4ed4a45e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|34070700014|376014|1800799024|7416014|82310400026|36860700013|34020700016|12100799066;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?k6h74jTKTRfH/n2xceMwm5qyxWHcj0GErZouanMUOz9uAI5sq0rEYAa8ft3o?=
 =?us-ascii?Q?c3mnhe3gail07p2CUKyNs/C56kRw+nXsu+kTlToJXpFZOnb315b5wrJQUY0Z?=
 =?us-ascii?Q?E2pJHpyFuHZ80/xjJ2bjZ9+hxlsLhCWSNpOqyfrNl7hD10aeAzPRKmpxRsa/?=
 =?us-ascii?Q?LxVuwyGuxXU69F/ONr1azinLOikNt5cWV+8DbrkdQqgY3qEsYAng8T6MQ9F6?=
 =?us-ascii?Q?6i8B2aklb9mLfB6bGHaRmcRrBBBBRJ/4mJFIFIPLvvtYTnhDLEiGwUOJ/txY?=
 =?us-ascii?Q?9FY6reNGQP18OLoLnn7DKAAn4m9zstU+mLoeqxtxaRCgjA8Lz9Tq336pfgRV?=
 =?us-ascii?Q?67BaKtUNOL+27zvz+DSVtoY41KL4673tqMYTv9jRCADjNknlC0qOmULSM34A?=
 =?us-ascii?Q?xslLvTrTCQ4o+8XhaDZKGHyoNlJUk4VBcU7i7xnkZdTltk/cWWt5ij7BhegR?=
 =?us-ascii?Q?wuAFBhAsMVJm1LaSuMo++L6LDBfu5sRXqQkdlRqMHBfakaAcC2o7Jk+Sm0Tl?=
 =?us-ascii?Q?A+MrQ8XotSPPC3YSgGRThkQB/wY2sbtxaLHsqrDylphcbXEZJsJ4ASqAGrG9?=
 =?us-ascii?Q?laBhmYuDuHZa4hmTKme+Aic4CFUflZXAIKgBr5ooFcnuUBT8CkGCiss5CagP?=
 =?us-ascii?Q?ev8VdWJQK1qsJ+89V1gus12IGwPUU7mXb+OExJen+b203aSXH10fZ6/aqOLB?=
 =?us-ascii?Q?5rvPttFXSaXSU4Got6xv1XUCkBcawm9+MnPm19fwTSulsIxB/V1Y6RNGEMhL?=
 =?us-ascii?Q?Z9xp9gKWeoSBWC4dIEnMr1HABTcRt5jOnOQZKV4ba4bIfQFQ5CRwnTiGPHfM?=
 =?us-ascii?Q?4Q0lQ74awrddLe+UNxZQLjR4WBkxoLh/0oxxc49P1rQ4Mr08+DJgGBtBuNwf?=
 =?us-ascii?Q?EaMnBpCy+hLPef1Y2CaDQI75cvaPoORlaOEAyvBYaIZMidQf8xyprlQmilm9?=
 =?us-ascii?Q?v/Hqv7mIxzivvs+Mo6IASm5uXxJGu14hO4CO+FteOfxHUx/+7ElzatphloQt?=
 =?us-ascii?Q?ATTTHuNVKFI0B7jKc/w8nv+2/eKbo3XgDRyak7AEKNzjvKFze6x5t+OqrYlA?=
 =?us-ascii?Q?w/IrFK980VIA3pBn1UON14NrmnszxhbkaGSiwvin7x0ID3nx4w8J+VZmjDrn?=
 =?us-ascii?Q?2wOjheMiD4WiPfYHCzIiPyw1nbyua/VHBXECpty+HszeQR/WzGFcW9cSIMi5?=
 =?us-ascii?Q?oX9LlHfC0SoUBBh6ID/3LwdxbVsl40ybVksZxBbJnQAOn49+TFfULrRC750B?=
 =?us-ascii?Q?mRxaqJSlHsYCqvifv6Jv6/oTnsHd6hiTgHdA4YxSvFRQVohkhUJz3ZNdMqkZ?=
 =?us-ascii?Q?Oi+FFdD8VRvc5gPTEyuVDKhcc3qy4EfZ9sPPsBY9fA5q5iDuaxkTF+ryIIcC?=
 =?us-ascii?Q?XqDVl8PTrS1zMZMuL9i7EcPJshNg6eBSkkmSXZpWwGA/hqEnTPTzWwdqhYGX?=
 =?us-ascii?Q?raPNSRfewd1tonfLBPK4enXes3plhfEWTUGRzPDPL1MN0WjErBGAIx6N7fhb?=
 =?us-ascii?Q?Jr4ANY2N+n6xIVj31XGIc2tLdal3mUgzlNwqroCPY87OmwimZBJAHrFuf/qa?=
 =?us-ascii?Q?RFfCUx+V2l9BzbXAiRE=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(34070700014)(376014)(1800799024)(7416014)(82310400026)(36860700013)(34020700016)(12100799066);DIR:OUT;SFP:1501;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 16:40:32.9656
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 019846df-1a8e-4833-7bb7-08de4ed4a45e
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN3PEPF0000B078.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6337

On 23:57-20260107, Alexander Sverdlin wrote:
> Hi Markus,
> 
> On Tue, 2026-01-06 at 21:25 +0100, Markus Schneider-Pargmann wrote:
> > > I think we would need to discuss this with TI via our FAE, because the change
> > > in question has both been discussed with former FAE and the technical team
> > > behind, and adopted in TI SDK.
> > > 
> > > Or have you already discused this with corresponding TI HW team?
> > > 
> > > Which hardware is affected, is it the official SK-AM62A-LP?
> > > Is MMC2 the SD-card?
> > 
> > I only tested my am62a board on u-boot v2026.01. It is a SK-AM62A-LP.
> > MMC2 is the SD-card and mmc1 in the devicetree.
> 
> just wanted to let you know, I was able to reproduce the problems with SD
> card access via MMC2 under Linux on AM623 with ST enabled.
> 
> We will seek clarification from TI on why this happens, which peripherals
> are affected and what should be the course of actions.


I have passed this up the chain here at TI. What confuses the heck out
of me is this: from an internal email chain I am privy to, i am being
told that "the ST_EN bit in every PADCONFIG register should never be
changed from its power-on default state of 0b1" and the fact that Linux
kernel has been stable with the setting for a long period, So I am
confused why U-Boot would show this instability.. I don't have answers
at the moment. until we clarify the reasoning, I am going to have to
hold off this given that kernel behavior has not regressed that I am
aware of.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
https://ti.com/opensource

