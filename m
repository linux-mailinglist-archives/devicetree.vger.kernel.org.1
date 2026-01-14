Return-Path: <devicetree+bounces-255177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB1CD20789
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:14:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 348FD300EDF9
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:11:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28DCD1D5ABA;
	Wed, 14 Jan 2026 17:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="PxMnS4Kh"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazhn15011022.outbound.protection.outlook.com [52.102.137.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8754502A;
	Wed, 14 Jan 2026 17:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.102.137.22
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768410688; cv=fail; b=CdC5XiO9NxReTCXGpa2/nTvVO0jhciLKV8NLtBoIsTUNZP9FLIIQ+V4s/gEuOVGo0LR85kcvUJtu1KUxSuBq8+oJaVQK4OuR1dLFC39h62piLYu7fv5J6M409qDIuQ25bT1O3W7dSQpYTVj1e48vXClJtHNb+H9k1UQT8M4BnpY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768410688; c=relaxed/simple;
	bh=S36AOtj+VAtgpMMJrKRKITPCSukqBdr/MH/NqO+Wut0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uFhWDlcwAYwS6jieiHeXymKMACKK4YLiyREqwe4o6Mq03QRum31s5dJyASJ7kscGBxxpKyNq9WzOnAGPvCEsoihKL3zBRA3+uWy6NJqewimNYhwk0Uq/6C+ELnoz38WdsZSDmn5RQDGX8yBOsopgjEx3YLSZshqV2RpEmZGn8Hg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=PxMnS4Kh; arc=fail smtp.client-ip=52.102.137.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GRZO4rU0zlIZiUTC8YQq/eSiyuGkZjCdGYPWiRmDgVOyWrlWPCabDqH15GpL10KGc/PO2vP334vVsd6Dj6Mhwe2Hr+3dbLhxhsVdWC+3OpmaIJJVU8LzKXO1fPedqSzY3uVGLF3TJgUiwTyQ8sbD3MRJ2h+a8sxLrhokRbsuqBGMyfwXy4bqs2vMccgcpt+J0/N0vS3kIrY2qI4YttvgsY3IzztlhOdGvpbmSnXzvs0YTgLQWOauoh7s7k9Nk6aLOuxKcsXjkKDM2isLsxgrjLKTgphY6zVvCt9NxtLofwR4yGdTZjiuLm2JK7D3aAEfh+RZBYGjUxLfIN5mLjlkfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b6GZnItqdbIc0/1BQerO2xqVcK4oiLLe43+okMC4EyA=;
 b=jfKKRAn/AFzDobYDYQOjT2Z1Sj5t5cC4VQTcvyi3pT8cCTsvsq1xQIUJ2bqz//2thOYDYPYO9wK+ECHT5SltnHmxKSWNBPKSBRXS876QeKuNLbc1Po0ifx+8d36D2XzxZE4aApDdmLGxBI6IUmZWqKxpjOOI0eqStIhhmato7/MunWsR4vJns5UEZ2sdoVgCEbiSDk4qDz5yE60h99yR0Esvg3NFj4LWkAqwYwAhs0KCB8E4vlno4EKksthT3ccjTvUUINJEFNUe5ikyOqzZ//aMBypk7tOuTROhN/UwgD0Rn/Zv0+/+2ltHwycUbjbzwHh7bxAdWtm7TDGVvYu41A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b6GZnItqdbIc0/1BQerO2xqVcK4oiLLe43+okMC4EyA=;
 b=PxMnS4Kh+6UsF1RLP7ty850wB1alHCRNYoUk6cotLsx8km4iJnhIMWo/Ws+zcX/ZAy/4gAcy6Ria7SSqGW/3cJ6QLTJ8B81OOysmKQ41h/UPsVPQHhK09odWn4yztWV44q6po3OuJa4xGocctq3BPJAcy1B5XB/iLElha1rpoaI=
Received: from BN9PR03CA0532.namprd03.prod.outlook.com (2603:10b6:408:131::27)
 by CY8PR10MB6611.namprd10.prod.outlook.com (2603:10b6:930:55::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 17:11:20 +0000
Received: from BN1PEPF00004683.namprd03.prod.outlook.com
 (2603:10b6:408:131:cafe::56) by BN9PR03CA0532.outlook.office365.com
 (2603:10b6:408:131::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.4 via Frontend Transport; Wed,
 14 Jan 2026 17:11:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 BN1PEPF00004683.mail.protection.outlook.com (10.167.243.89) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Wed, 14 Jan 2026 17:11:18 +0000
Received: from DFLE210.ent.ti.com (10.64.6.68) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 11:11:11 -0600
Received: from DFLE206.ent.ti.com (10.64.6.64) by DFLE210.ent.ti.com
 (10.64.6.68) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 11:11:10 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 14 Jan 2026 11:11:10 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60EHBAmJ134596;
	Wed, 14 Jan 2026 11:11:10 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vitor Soares <ivitro@gmail.com>
CC: Nishanth Menon <nm@ti.com>, Vitor Soares <vitor.soares@toradex.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 0/2] arm64: dts: ti: k3-am69-aquila: fix SPI hardware CS issue
Date: Wed, 14 Jan 2026 11:11:09 -0600
Message-ID: <176841066138.1986479.13950044706882278213.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260112175350.79270-1-ivitro@gmail.com>
References: <20260112175350.79270-1-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1PEPF00004683:EE_|CY8PR10MB6611:EE_
X-MS-Office365-Filtering-Correlation-Id: bfded7ec-3837-47ef-810f-08de538feef0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|34020700016|1800799024|82310400026|12100799066;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?djVIRExYZ0ZOUjRxZ0ZtdkFyV1FXTW9OZ3hsRjRRWlZod3pQWUxFZlQ2d2VD?=
 =?utf-8?B?SEZld1BoOUNFbVNvTFFHWVVFWFB1VTFhTHlCNUVLYmJaeEp0ZlJ0cFI2SVFa?=
 =?utf-8?B?TXBTVjJpNXF4SmZsSWJFOEVkL1A2TG1pc1pZcWJrUXM5WTJhZWtNbVhIMUIx?=
 =?utf-8?B?R1ZVT21DNXRmVHdWTS9OWlFiRlIwV1E3K0NiZzNacEVhYzExUnN3bko0Um5a?=
 =?utf-8?B?b1RqRWl5L2l0ZFh4dG9UQjNnamJScDJUWE5kbXM5VkExRXpmc1pTNmN3dkRh?=
 =?utf-8?B?U211VllHeS9LaElETFI4Ym1maTMzM0ZaUXBuSzQ0OC95SUR4TTIrUGI0TnJW?=
 =?utf-8?B?VllNYWo1UVdmQU51M0JuWFE4RzhwUmNLMWF5Q3BFeHVBNlNlckZpMjdkM2ZO?=
 =?utf-8?B?emtacDJWUnVFRUF4UjBwL3ZFOWRpZlhDd0pIRWc4UDFLZyt4U3RnZUdNVHlF?=
 =?utf-8?B?c1hwMnlWRlJSazlLSE1Za09QL1l5NXlEY1dYSUkzbXJwVkdUMVl6dVhMZ0N2?=
 =?utf-8?B?d2QrL1hYdmxtU05xckVPSnl5Wjlsd3hncFZFUzZicWpLcjZwWXhUalBBNkdQ?=
 =?utf-8?B?dklJbjhzVzgwM2hIY0JUMGxqT1NidVdmdVV0dlpWVHpNZ2FObWczZnZlNWdY?=
 =?utf-8?B?T1p6NENzUHZkTWE1Rm9pK2ZyYm1ZME4xYzZ5OW1xUzlUdUFjaHdoZ3BkS2JG?=
 =?utf-8?B?cys2TjVCd3I5dXNIY1ZITTJadGM4THpnMVVISHFVTDFmNldSbHNwNW9wSTlr?=
 =?utf-8?B?MVB6WVI1WngwV3NZb3VkUElvZ3RCLzZkbEV5YWhPMXZ5N2toMGwwRE9ZaVJD?=
 =?utf-8?B?RndNM3NDaHJOaFcxelRJREZWQ0g3SkpNdkZXblh2Z2lVMHhoTzBqRk1RL2ND?=
 =?utf-8?B?Rjc0RGozUEo2MFBPREdkN08xaVFuV1ppTy9FbVB1dEVKb2Fnb1JmTGlydFM2?=
 =?utf-8?B?MGRUa1pZMWxsQ2V4NVhCZ0FTQ0FBUFRkWmVXczlpZFFhSCtSZUdaZ0E4T1BW?=
 =?utf-8?B?Q1JBWUtZWWtYS2trcThVWTVhT0ZFNDF2VFJSdERGV002aWxDczRJZFVzeE5G?=
 =?utf-8?B?UW1xc1NuRnBKYzMraVNqbkVMTi84MkVoS2plZjQ3L2xPYmZFSWZ4V3ErZ25n?=
 =?utf-8?B?aWJkQmsvakdJbmhYVnIxdXhPVElCdUFNQ2JqaTFjMTVjTE50TXRLbUFhMWRy?=
 =?utf-8?B?RjN6OG85eURVWmVxUDVjSUw3dE9pV1JmZC84Q2xKWXlLckhnQWlzK2JtVm40?=
 =?utf-8?B?WXNTRDE3a0JIRVBIVWhlTU4zYnorWUpnTUhHVDhveUwwNlRTOVlTblFpUmUv?=
 =?utf-8?B?MDJjTTFDNEFYejdieERSRHdPRUhWZm5sQ25Sd2FnUWllRnRvNStqb2RrZEkx?=
 =?utf-8?B?YmVidlhNYUMvUm9BWWlQeVBtZDRzRmdBVElVTnZ6bVpXMlVwbzVzdkRpK1pF?=
 =?utf-8?B?VGdnNkhtVFE4YVBZRWZqYWl5REJvaDFlYUlVaFhKWURCR2JXcERCMWpCK21Q?=
 =?utf-8?B?YUZFeXZjaFNiQm11dDlud3NvdFdaaVV1d3JYVzc1QnFDV21aTURaVm9UQnpY?=
 =?utf-8?B?QzhpN3ZFZlppL0tiR0h5OURtanZieVRQS2RXMFhNOXNJVDlLMXZYQ01HMFJ0?=
 =?utf-8?B?aG1vSlBFeHVoUDhDYjdWQjJJYlZ0WG1LdUNVaElZQ1JILzlwK3g4RzNRU2FE?=
 =?utf-8?B?TXg0QUlPT2hQenROK3daZFJObFE4M2tub0dlRXRQMVBZVFVpYUdEWEVhUVI3?=
 =?utf-8?B?amI0cTZ5L21BK3ZFWG83aG5NWldtcWFMNGFPV2J5aG44RTdqRlFaOGZwNjYy?=
 =?utf-8?B?RndQRlVjZUtkQ2lrT0VydjBqaXAvNHlPUHJBNmMrcndIZmtiL1FtTVhCVjdM?=
 =?utf-8?B?aldhMFFDYWpVZVNYNU9sYVJqNXd0MkQ0U04zd2pTVnhEZExTVnF2RHk2NUp2?=
 =?utf-8?B?L1dBVncxenp0TVQ0Rk44UWM0SmVzRWxSQThsR3V1eVo4RGdib3I5R2t0YzUv?=
 =?utf-8?B?WExoNjBGS29JYnF3UXY1ZTEvMmpMM1VXbjVFSFFMQXR4TWVMZ3FxbThsNnFK?=
 =?utf-8?B?SE5sUUtvY2o2dXhtei9oV3NUWmpaZHFNRnNVUnN0djhpM0ltY0p4dkpFeUx5?=
 =?utf-8?B?dnF0MkFNaTh2ZG5McFpzb1hzS09Ba1JJM3NLSlZRalhyK24zOTJPM0RLKzgv?=
 =?utf-8?B?NXNHL3YwQnhiL1NTY2ZXTFk4Q1dMbGVHUFVVU3ZMZzZXWGxPZTM5RFBYdEkv?=
 =?utf-8?Q?H2Wb+19aqHdYLcvU55qm2fv9xzg3ZHv5q/sAwE8sE8=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(36860700013)(34020700016)(1800799024)(82310400026)(12100799066);DIR:OUT;SFP:1501;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 17:11:18.6162
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bfded7ec-3837-47ef-810f-08de538feef0
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN1PEPF00004683.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB6611

Hi Vitor Soares,

On Mon, 12 Jan 2026 17:53:45 +0000, Vitor Soares wrote:
> From: Vitor Soares <vitor.soares@toradex.com>
> 
> Hardware chip select does not work correctly on main_spi0 and main_spi2
> controllers on the Aquila AM69 module. Testing revealed main_spi2 loses
> CS state during runtime PM suspend, while main_spi0 cannot drive CS HIGH
> when bus is idle. This series switches both controllers to use GPIO-based
> chip select instead.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/2] arm64: dts: ti: k3-am69-aquila: change main_spi0/2 CS to GPIO mode
      commit: 78a123f45a7e9ac2a59f0eff8a37d31773e7a021
[2/2] arm64: dts: ti: k3-am69-aquila-clover: change main_spi2 CS0 to GPIO mode
      commit: 319fff9c7d620af83d8ab67050a54f63f16ae4e8

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent up the chain during
the next merge window (or sooner if it is a relevant bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
https://ti.com/opensource


