Return-Path: <devicetree+bounces-247658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CA1CC9EB9
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 01:46:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBE3C302514B
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 00:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 690F378F3A;
	Thu, 18 Dec 2025 00:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b="IBWs0uHH"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013010.outbound.protection.outlook.com [40.93.196.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7D51BDCF;
	Thu, 18 Dec 2025 00:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.10
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766018807; cv=fail; b=Vn/GOjrwt3vteol6eT0i3Vha/TQAw2oBm/K2IrNBhOl/8kNaq5oSzfGVrqDHWW2CSLDy+XwPy3QchTkmnIGpJ05JIq+F9d5yGLpWYgF1IJdC3JzYEKMfMBvwc8gq+9DhlSi1iekA0ihF7uBH7dr+sxjJABliIc7HW/CPGNlAom0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766018807; c=relaxed/simple;
	bh=129RJQCU3GuajUQi9aGYxzhbK6bZp/SD7W2K1UW2mQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=R4GjFhh1dxrgSC9D6ru+I6qq+dx3C67/mf8HBfXsBnAtlaqBqB22ayUblQVjAhQdkTp1fZMQBBn+FjfcKcctYK2XYFkNRXHoGVJ15LhbvZu9TixQXaAw9ShL+OLXwTGsWfY3Z9Gis2Ih7VhhREsLjmdpJGcIoHrtMqe5lliXrLg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com; spf=fail smtp.mailfrom=nvidia.com; dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b=IBWs0uHH; arc=fail smtp.client-ip=40.93.196.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yfZz1/hDHM+m9a2jUhVWKQR65O6Mk+qWrChJ8yhbahFlpZ5aK3LZri8GF0kDp9fy/IIzFkkL72N5ASTx60dfXQbWdvaH/VIsCY6tT0TgsTzpRcOil/8dlWBphUKFx+0DiG9aeCPVCQjrLRy2EkW7wKx/qDIBxjNw5lffbdkvOCHDxQluQuUyBAxNv7lUv8p10uoQHaqyTsN+VON154fcTBQ3IqJZNb2jb1eMRwyS16aL4a39dQzaNBlX1cgVnEzYwrnFDITeLtF9bigx2d5kvMck/i2DJkoXoDQrgHxkuZmBrm1ZkQlpKqS6MAwfMQCfIC0ZME+hWMP8ZiJVZC5smg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5gCp1cPhmE/vbSZIyMUDJx6BLB5ImHdC/D8y6awXAMk=;
 b=S86rsp9X3NQAQDSqoByp1MCBH2jpy0dOznA6tlh0k2I+AtxqjUCSEM0GL1FW7OGDFe01gjUMwQTciabfYP3gvGGkPNEjTeDk0mf8RZPmHtqDyV5OdUYFA/U4mYc8LsmR9b2mviToaLtUdJT0oJVCqAfFwtFyWjqFNQOWWbQL5F/QXQzNppP+ThpRGwYR0UhOR0aIUixEca+WI/39kx5KCQKoaOuodyo/AI0CRqiFNnUkWpn0k9JIn25f1hHHLl9vCQnge27IhdGKNqOt+BMc0ZNTxLNJ995J4WpyPoCA1HssOhr7p0F0WAmgMok6zo6LUWT0Z5tApUXVNpYfQ2kSzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5gCp1cPhmE/vbSZIyMUDJx6BLB5ImHdC/D8y6awXAMk=;
 b=IBWs0uHHUAvzCaXp7ovZZ9e4V62gGUpTCtNO/q0+fnpmDj212GHZcnyupg7gO2TE4S1lGiJgIdMxRoheV38Fuw1uYqtR6KmbVLaPDAN+UtBgxSwGW5HvaaFa2Nf+yHkNTkJyHq4YtKjOVed2rmFXOdtRztDuFUWTFSL2Uepv0r6/478pWqYfrJEXU4M8v+etzZXI4fGlgFvaICksHC1uEIEexzzMwhQv3j1OE05AcLx8r7PQbFvZ2X7DLu0o2iuacGAmmyxTAOnEEtKm4/tZoHI8GelypuurYrK/hyGgfJbdcyigUSiC7G0mgvotqeOIpFkec3bxGX+ubJJHOYFFJA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH1PPFDAD84AB72.namprd12.prod.outlook.com
 (2603:10b6:61f:fc00::627) by MN0PR12MB5834.namprd12.prod.outlook.com
 (2603:10b6:208:379::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Wed, 17 Dec
 2025 23:13:35 +0000
Received: from CH1PPFDAD84AB72.namprd12.prod.outlook.com
 ([fe80::7816:ec9f:a1fe:e5c9]) by CH1PPFDAD84AB72.namprd12.prod.outlook.com
 ([fe80::7816:ec9f:a1fe:e5c9%6]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 23:13:35 +0000
Date: Wed, 17 Dec 2025 15:13:33 -0800
From: Marc Olberding <molberding@nvidia.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	openbmc@lists.ozlabs.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm: dts: aspeed: add an alt 128M flash layout
Message-ID: <aUM5HcEs0OVrDO1w@molberding.nvidia.com>
References: <20251211-alt-128-layout-v1-1-100f57d2bc4a@nvidia.com>
 <61f561d95af86a46f1e1075df39e1ce0f1324098.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <61f561d95af86a46f1e1075df39e1ce0f1324098.camel@codeconstruct.com.au>
X-ClientProxiedBy: MW4PR04CA0180.namprd04.prod.outlook.com
 (2603:10b6:303:85::35) To CH1PPFDAD84AB72.namprd12.prod.outlook.com
 (2603:10b6:61f:fc00::627)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PPFDAD84AB72:EE_|MN0PR12MB5834:EE_
X-MS-Office365-Filtering-Correlation-Id: bfb683a3-b63d-4273-bc75-08de3dc1e72f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
 =?us-ascii?Q?mxZR/Gd+hN6CgsS+gPf78Bmg5vu7XJ/AlyAbP8ajyY+b/b9rOKU5YgdmFqty?=
 =?us-ascii?Q?H1UfVsTwQIELZXjlLQ+viJycAbB/wmCgASPMI+9xfQb3efotXCv3M3wOi93l?=
 =?us-ascii?Q?qqb7T52PrW8+rzTkwKrGfIeEoo4+g612+BtCUY0qwIN0C3xiOCUTmNIj6ak+?=
 =?us-ascii?Q?Cft23+LHTjaD9bhPdDgtiBcK7j7gUHLHEclE0MtuL4df4bDpNX1CxYCFFAVM?=
 =?us-ascii?Q?GMGwt971w/J78VbqBxlMS8IEKt2gXwIEUaYST5y+m0Ki5iGUbEv/G8iZk4Kg?=
 =?us-ascii?Q?UH8HWzZYgdFszOgGy6OFJRIaAyTfwU/ZNNHYmptNdgriGlvYu7zOMwHIf56K?=
 =?us-ascii?Q?EDq4RcUpYOYUR6XCJi3aQrXSsEUu65ulYGNLRp4mvOrCc2ZuQOmXJch5ZoaV?=
 =?us-ascii?Q?402E2GH2q6EV7puTICByMHT7GGPOwnhKIA5+tYbTlxrQ1L5s4vC4migy5cLP?=
 =?us-ascii?Q?REAcp9c9qexIZl5bBcby/DVL2lagesV3SHlYwXCy0bvTfUmuQjMaQPY2jLJX?=
 =?us-ascii?Q?ewP3gNVW7gkoa+6FVcdoVTUbzy9JkLB719ERmDjlpU2hHr/SeRk9nWWJwuOw?=
 =?us-ascii?Q?S30guGWaVfaZTeyQ9nr4KUhZ9xpEe9vKJJ1SJ7TADrkfJDFhV0K4zT+qg+XM?=
 =?us-ascii?Q?GmTFL1W+YrfGs0hekd7h3PDCWWMTv88QlnDuOED0mWel4Q6+pJXwo3Ya/wV+?=
 =?us-ascii?Q?4aNNxWcSS3kVSCbAJk/cyifiichZrB0kUa8qsEb+pbH8ZneWpNVniSJr1dZE?=
 =?us-ascii?Q?lI0zdCIvzbs6G2UfLj0Ud+zfBmP7mpnwBwslkAXl5gJ5ecx8+PC55bRV33t3?=
 =?us-ascii?Q?5Pk5kMie6Y3eDtUOHQcGZpc8/TQKhv7qZcBxeSLi7wK+eegxPp7uOIHsq2Ls?=
 =?us-ascii?Q?hJ9DXJd2qKrOZN9cGuMpUif5GOSwhT1hyL1bgcjWkMMqPxConW6lRgCzp5LA?=
 =?us-ascii?Q?FpCbfwTv05QIkJBKwo83hS3pmcGpfXA3pyJw89lIzp3PbIxL8mM4Ghwxv3tI?=
 =?us-ascii?Q?yG6M0v+TLveVbWcUVJ0YP1IE49/2GZnLdc9WFaHSNNLhH5VHRwo49Ix1/MTW?=
 =?us-ascii?Q?fp8DYAPHz2ks6EA8SRCGMhkH/r87riqrbqgPOV2muzCnkEG0SpfsVONsGx+A?=
 =?us-ascii?Q?abGPeYkALKPlfEorc7jdb/j611XgmES96BlmAMXG4xvxMdWA3fueS9BGDim4?=
 =?us-ascii?Q?jMFOdylAyfFYDS74lpFYsWQnY4+MmPUYoN6FujEL9lYVRp9jC1p8baMobv2S?=
 =?us-ascii?Q?5klEBKzWh0MH312YkgbZ9lo7KMG9h4wFrAqoh/egCdKj//kCVvzMccZ6/SZA?=
 =?us-ascii?Q?ge4KWu++o2MlmZuUrCejw1p8e08lv4Proi6z4mlJaopA046kUuFUImtruVFU?=
 =?us-ascii?Q?K+Gz5Aa36Tbg35lL4eP+nuvm84DhH7BZevrkkQNivzQbTdy8yiFGdCBWnL4o?=
 =?us-ascii?Q?/bI6cfMqXUOtdMv2E4+N0DMXvEeNdiTk?=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH1PPFDAD84AB72.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?8KWolpDhb2n+0+cWOUbNp7680oVeCGLnbFVRG/14DieLvd1LPfTvdw0P4o/i?=
 =?us-ascii?Q?lFHByobltLB6WnQGVvTfWoWHq3dBRubTGC3+C6wZ0W5kYRlAoY7sNKGKKFiE?=
 =?us-ascii?Q?GDFCCJSVe4r4Xuv5uz2scCTrVICjwIuhwywQuL524TmaWgxW1Oc6dIEU/Iof?=
 =?us-ascii?Q?PayXN2mjpTG2eS+vQVIM93Jgbj+9c+OiXedj4klCDq27HT+LcXIKBSre2jLn?=
 =?us-ascii?Q?W6wtNLEUnGUTdvMRxfyHzXGk1p4f6kmCPtK5r+mc4M037t9iJGLE//CGlVat?=
 =?us-ascii?Q?6LE3ulT/kpmap6y1WjzLaxHbBJonoP49vrJ5y34oz3LSbE2ID7J3ICMoXiUS?=
 =?us-ascii?Q?TnJTlKehA1ulPl6Jvr4hwnXronnGujXs/yFY7c4p0WXwAxhzqrPJLJScTAOU?=
 =?us-ascii?Q?qKOoRRoB1b74HfhAl23BSOPkzy0pwSg1aPIdiGXPYccZBNQuzL+mXc9E/+uD?=
 =?us-ascii?Q?E9OvfWBNdXfme8WR7C6cc64cBwYIxH2uBhXOxJ6opBNryCDZN0ZoEiVmjxfK?=
 =?us-ascii?Q?KuPKxekITtSPMGS45riR8SzXq/tZkIa6W2cKzhuk4eg18gH4X5I8r9o5J3BJ?=
 =?us-ascii?Q?fN3dmO6OOv9IPKWThbjXtWsz7HAHFg5y0gt3061KQmw3iLUh2y2zoUSAYhgB?=
 =?us-ascii?Q?RqBVJmXWleJ+I1zRJJS+DgYESlvMnski7wNXK3Pfza+qImjHpKAYbFvQsBOn?=
 =?us-ascii?Q?snbjs4h6gh2M6AMmFujUImNNyYyvMWpz/Zbg7E2FKa3v/ycRofkfaUtzui0Y?=
 =?us-ascii?Q?Q4h+QqRzURLW+zBIarCe89TKpwbj2hXOxBVDkM0AH2sWPtCke8OaeXFs+3ub?=
 =?us-ascii?Q?NYsRvSw9AwJioV78auFm1660LAmf8arbhKekh9GVUtCKzFS7sfdGs7c/BveD?=
 =?us-ascii?Q?N5rissIo9tY82ni57HqyNaq34PH49G+kq5jL2JZE3Fyg7VoOh059DHZCyIBM?=
 =?us-ascii?Q?nlS9KR3VGozEDcNprolLxIrc9cwv9CNPKUm2wZJTYYqwhxzYY/oilET8ysd1?=
 =?us-ascii?Q?IAuQdJeuSrjThC1WC0RW+yjoD4aUAgkhEDHZhOYW519G0xgOZZcfqQiJm/xu?=
 =?us-ascii?Q?YbiyzjGUUtgBBH5y3nvx9IcYGW3Flg6TVs3TPIlC4FoawEEWJ8H4ouKtZFEm?=
 =?us-ascii?Q?O8Hy6f8FEXyFn4+0ixHq9ZxIk7PjC4gcuJNEArhDXjRbQs6ODPWhuhzEbEl4?=
 =?us-ascii?Q?bZphWkZl8FxFg+KnFmbjLGRcq41R5FsCIlqsigYhgZw1eASj9L/CyWg1vLRL?=
 =?us-ascii?Q?mEBmid42n0D+C27HCE4adrb8H94Zs/Jiqm1N8K5OZ8ROfDAVANVajSA/zt7d?=
 =?us-ascii?Q?hL4qYzqYMoTYn16TKI2CIWQLB6qHFKYnvArMTo61xLiaixBxMRRaG9631+eR?=
 =?us-ascii?Q?FCpgsuTXkDyfUHbbSftN0iheFhz05pE4Eq7S/qjP5T89Wjbt2xYPdWBylNye?=
 =?us-ascii?Q?xVIDgnY8FFnZwFT5wFCG+wPqRaAbiYOwRuAGP2z5HxR993pRyxpp6+ksjEal?=
 =?us-ascii?Q?Ze/NF0r+/2PotmwZs+ayDkxtQ2Z4teT4y1kQhTalPJfCGtMqkCH3mDVi3qR7?=
 =?us-ascii?Q?FWfuQB5zJkjhWN1wfEQx1uXFxgdvxDSd0l+Rmysb?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfb683a3-b63d-4273-bc75-08de3dc1e72f
X-MS-Exchange-CrossTenant-AuthSource: CH1PPFDAD84AB72.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2025 23:13:35.2307
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nBe7kX3DK7RnWjD1+VmuRQl4RiGAjiXbNin12ZTq8oYnK4JMCggsmVhG8YxMLkmuaHTbZVSETZlZYbU9/c6WsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5834

On Thu, Dec 18, 2025 at 09:29:44AM +1030, Andrew Jeffery wrote:
> On Thu, 2025-12-11 at 13:35 -0800, Marc Olberding wrote:
> > Add a 128M layout for the BMC flash chip we didn't boot from.
> > Including
> > this allows the user to write to each partition on the alternate spi
> > chip. This dtsi follows the existing standard of using the same
> > layout
> > as non alt version and prepending `alt` to each partition's name.
> > 
... 
> This may be fine, but please add it in a series that also introduces a
> board that consumes it.
> 
> Andrew

Ack, I wasn't sure how to handle this, since the MSX4 hasn't merged to
master for upstream yet, its just been merged into the openbmc tree.
I can either just hold off on this patch or update the msx4 series.
I'm assuming that including this in a patch targetted to the openbmc tree
is a nonstarter. Any thoughts here?

Thanks,
Marc

