Return-Path: <devicetree+bounces-125185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AF89DB2FB
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 08:04:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C9E25B213D5
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 07:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1574813BC18;
	Thu, 28 Nov 2024 07:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=de.bosch.com header.i=@de.bosch.com header.b="YtEyQPm5"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2044.outbound.protection.outlook.com [40.107.20.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6C817C7C
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 07:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732777480; cv=fail; b=kUzWruzFUZDM/skmuc20MJF+XP6RSPj68kvWY1MY/CfCUv+Z+GkNO3YYdpf4MrdO87lnaSrI+4CxtdJx6yJCFt+jNT6BwsTye6m+bKn9Lwuo4kZw/Soqb6xggNvmzfnSZ/VsxYgqBN/1TgC9m0Q8l+LpeARaibOGA1Xu2vKM8cw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732777480; c=relaxed/simple;
	bh=sLkuAcAvDU5kFUzR/948MLegvW6mkK6N+/kC5Q0NOsY=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=Fia4WYlAePJgMsrGXTkYMYLspGh6uLILLGxqSK3wD4w/skFWhdEYDEdadugWoUw9cBHBY5IZD1pPzgTmdRYSA3AeHUc1c0Z9cLDvUT33tvUWiGTxwOSY7vP6UdlZr2KbCSMJCIEpQC6YJvreqnvzNCg7XC+hdoknanh6vCYHbxw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=de.bosch.com; spf=pass smtp.mailfrom=de.bosch.com; dkim=pass (2048-bit key) header.d=de.bosch.com header.i=@de.bosch.com header.b=YtEyQPm5; arc=fail smtp.client-ip=40.107.20.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=de.bosch.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=de.bosch.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KnhYqZ4p6AiyDSNLtOODPmxYL3walTZD4D+A0B7mytcqXGWwOYOfXwDTlWyMOktriaf07meFpzZqyEA5OpJTMN4S0Z8KCJnF6Za1xDEBOcWud0FGayl7uysZFm44Ys/TuN3u16kyLuQJH8fL+2PjCZbXR7XY5kqhfgx9dQ7CczAfPt6pvNZi+Np3aj3yLeU8dgY1dqvI1ssZN80faFeUsZh633jog1ZaZAuXCWORX3VbxStHuQix7L9hLoGkohiKn8RMfGJiC5an6kKKQRtVwH17TuOantmNksGORr4nLwxoHiba7OVWAsYPdUNOy0lUMAEcma9PBDHvUV7DgRIUcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zxAyDpSesdHJlQ5Y7iDMeh6gSTFzCJg5D2cTUUbCmRU=;
 b=CcydFJf6QN77bZOan0rsvpkY+mTA80wPUUu9tPovojNtHGWi1kI8eokOKUM6JloQeDOEusxnK1QDrBV9vdm9tESbT6ihGsvQ2stknv8F1RqwemdjaUlsn/oIZiVb3JI6PFvoH2NIXOSfIytXUbKsJmECkZMGZ5eCB0mkA5XcN3Mte9HHqTTEXCYm0oUL1n5vvPnyTin3ykhOfoqL8+cZ3fzQFqUtNPn4CDlabmr9q3uRwHGbVRshv0IDOatFGDghSKgMdyHIviBGRh7TOrpXnv+nEcEqTARWwnXfgSxyZ/aMXmg5pYBHVEs0A29mndacVYlIrvrXB1BUYa7UBDizrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 139.15.153.205) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=de.bosch.com;
 dmarc=pass (p=reject sp=none pct=100) action=none header.from=de.bosch.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=de.bosch.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zxAyDpSesdHJlQ5Y7iDMeh6gSTFzCJg5D2cTUUbCmRU=;
 b=YtEyQPm5M0G5BPI2f871guhQNtn5YgYRoZh36edJhsvSV3msrLjXNA8hNoy7ae3tQoWXqjm/BGEotCKC6GMVVLZTGNnHwSEUMyctdiPKXv6d1PREhz4LIOTQcDGTa5kiPzfA3UgSVzMP1SuU54K+UjIMXSlqeKVCcuZPqjF9u76FazIYrAN0OnruSQDw3P30QlMrIIJj2GpUYCh4sqmUfHY05rXvwMrpteyVlhPp2xeg4Kb1g4KyKG9zGSj8gIwuCAsDeo2fUy7VQuWIaDSAO8nqYWcfSEV0j/Si3HwMfm3WtoIyekAAjnFttNQ6mLDw6IWp+tSRRql5BXUZTl4PsQ==
Received: from DUZPR01CA0221.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::28) by AS2PR10MB7903.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:647::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Thu, 28 Nov
 2024 07:04:26 +0000
Received: from DB1PEPF0003922D.eurprd03.prod.outlook.com
 (2603:10a6:10:4b4:cafe::dc) by DUZPR01CA0221.outlook.office365.com
 (2603:10a6:10:4b4::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8207.12 via Frontend Transport; Thu,
 28 Nov 2024 07:04:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 139.15.153.205)
 smtp.mailfrom=de.bosch.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=de.bosch.com;
Received-SPF: Pass (protection.outlook.com: domain of de.bosch.com designates
 139.15.153.205 as permitted sender) receiver=protection.outlook.com;
 client-ip=139.15.153.205; helo=eop.bosch-org.com; pr=C
Received: from eop.bosch-org.com (139.15.153.205) by
 DB1PEPF0003922D.mail.protection.outlook.com (10.167.8.100) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8207.12 via Frontend Transport; Thu, 28 Nov 2024 07:04:26 +0000
Received: from FE-EXCAS2001.de.bosch.com (10.139.217.200) by eop.bosch-org.com
 (139.15.153.205) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.13; Thu, 28 Nov
 2024 08:04:10 +0100
Received: from [10.34.219.93] (10.139.217.196) by FE-EXCAS2001.de.bosch.com
 (10.139.217.200) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.43; Thu, 28 Nov
 2024 08:04:10 +0100
Message-ID: <f97dc442-b306-487a-9699-f38544bd7219@de.bosch.com>
Date: Thu, 28 Nov 2024 08:03:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: <devicetree@vger.kernel.org>
From: Dirk Behme <dirk.behme@de.bosch.com>
Subject: of_unittest: Missing #address & #size-cells warning
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF0003922D:EE_|AS2PR10MB7903:EE_
X-MS-Office365-Filtering-Correlation-Id: b9a08204-da30-4cc8-2a5b-08dd0f7ae59a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ejRTUi9CZ0ZLODg0OWhhTGc4YnlYMHRHdTdpTEZVVXlBK2IrYm9reXdlNnc3?=
 =?utf-8?B?Y2pIaTkwQnZidVhqZjBIanJxUGhGeldLWG11aU1JU1ZCMjdQOGtGYTkwd2FP?=
 =?utf-8?B?ekgvQXd4MWJLc2VGcXJSUG53amNxTjRUbWJobE9ac1V4L1BMcXlIK1BMM2pX?=
 =?utf-8?B?OE00N3dQT1AramgwTk52UlVpc0poeUVYQWYraTFVVnU4a1Qyb1lPZWcreHJN?=
 =?utf-8?B?U1NzV09ycWVPWmtMTytCdURaeUZjdTQ1dG9RL3ZZOHZraTQwTmNDQng1aXBh?=
 =?utf-8?B?Qm40ODN3d3JrbWhHQ1NoUit4WnM0UzNZR291VmNvRDNKS0tpOFhidE5HMjFC?=
 =?utf-8?B?VjZFZEFSTnAvWEpOY0h5cnRtT0h0VVRuUThhc1RFU21rN2hyQ3BjV2hNL1ZU?=
 =?utf-8?B?YldFZEM5aE9GQlNEcHNWcWtKc0ovczBTaCtWWXJ4YTNJUitZV1BOcGY1ZS9z?=
 =?utf-8?B?amx6L2U2L21KdlN3SjZBejI4SUxuYlFXSHJ6Qnh5c2x6Z1pBeFhPSFZZQWxW?=
 =?utf-8?B?WERDRmxBY201alVJa040aUxZUmJja3VKZzFDMllHcXRKWVNQek9EcFp1MFVV?=
 =?utf-8?B?cmJHNXNRRVpjUlFDR1l6K2lPaVRNZjI4VnQ3SitxVm9kYTNaaGFlVHJ2WTNs?=
 =?utf-8?B?OEtXVzhLRDdkL01kSWxELy9kSERDSlBVdkV0MXdjMlQ3WTd1NmYxN1BkVzNM?=
 =?utf-8?B?T3BZWmY0NC9SWGVnQlFTdWw4dU9MWXNmMDhNeUlWREdYdGp1d2VjTXZqUVpC?=
 =?utf-8?B?ZFF2TkpkcFQrdVdvVkhoZHZxMGx6RUFsNHZvaFA2YUtaNnIySWxqODMzODVJ?=
 =?utf-8?B?bnhjV3Q3SW1NeEU4bjBpbGs0NHozQ0toNnpyL0RnNm9YS2RIY0FHTUg5RkZj?=
 =?utf-8?B?aWw2NmVRSUZHejhRdTRkTTA1K0tiZXNLTmgrZ250K3BDbldzQSs4cEFmTkN3?=
 =?utf-8?B?bUQzZ3Y2N2dCWmwzWkI2NmVxbzc0SnpyN2JPWG5xOUp2OC9aZjZtM3ZOZHh2?=
 =?utf-8?B?bG14YVh6d1k0VUtUWGFMa1NVNVY3R2dPMkxWZHN4Q0lxYXIwVTdJdnhUNmJa?=
 =?utf-8?B?ZUFFNzF0dzlhbE5NY2tIR2pxd1ZJRkFKYVJoNE9SbmpKNjRxY3hWd3ZVT0h4?=
 =?utf-8?B?ZEl4VVpMaVUrdEhsekhmdkVWV0p0TE9jcmVHMkttT1RhMWp1ak50dFZYMlRD?=
 =?utf-8?B?S1B2Tit4YTQ3Mm1WMVpMODVUbEtQamtnNGQySHBWYXhlMk1BTUZDR1hyWU9n?=
 =?utf-8?B?VjJ0Z2JrRHhvWFQ1YTI4VHlzQjFNL1ArbDFHWko4TU9xaHdKUGVCM3RXSHZQ?=
 =?utf-8?B?ZjN4SGx5OFpEYU1qMk9LdDkzQS9GK01FZmJ0N0ZWMFR4Wi8xb0JnTUpieVUr?=
 =?utf-8?B?VDYycUpNWVBjdktWQXJDK0FjYkhFR2VxQUlkQnlWY3dhR0N6a2ZqT3U2RjdG?=
 =?utf-8?B?VFRxbGx1dUc1T2pwV0M2K2pBNkk1ZEk2aDc2ZXZqUWlFZm43MVNOTHpkaWtQ?=
 =?utf-8?B?TFd0cUMzMUhPeTNQajJTRFhFc0syZXpiaXByc2NKa2tVRm1UNEtoQ3hBZngz?=
 =?utf-8?B?cFpEckR6Uy8xSWo3RVovaWhnTlhGR2pXQ1M0Q1dzZjNsZHVMWVBGZ2tSdm5N?=
 =?utf-8?B?RWEzdjNPTG1XVkplTkdGaldkS2tVVTB2a1FCSDJSeStNcFhsUVNkT0ZobFJ1?=
 =?utf-8?B?cjBHaHc3ODZMVytyZlpJdDBNRGx5OW4xMUFZeVZCSFFQb213bjBYSDNnSFFZ?=
 =?utf-8?B?N2FmN3dsMmxnSGxXN1Z0RzR5eUpoT1N1a0VqWEV1dE81VGNic0RTZi9lVUhj?=
 =?utf-8?B?NU10aUNPWU5QUnVoM3BvL25NU1VSeU8rclZhOVdXRGZMcUJxbXJocHFmT2oz?=
 =?utf-8?B?NHFicVgzaGRpUXVCRHMwNzVEZFhoL2M2MGY5K1lTTWJieHFMV0tqRjVob3la?=
 =?utf-8?Q?bYvonwuIecWBQdheKNdEddy9odKkx5hK?=
X-Forefront-Antispam-Report:
	CIP:139.15.153.205;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:eop.bosch-org.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: de.bosch.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2024 07:04:26.8053
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b9a08204-da30-4cc8-2a5b-08dd0f7ae59a
X-MS-Exchange-CrossTenant-Id: 0ae51e19-07c8-4e4b-bb6d-648ee58410f4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0ae51e19-07c8-4e4b-bb6d-648ee58410f4;Ip=[139.15.153.205];Helo=[eop.bosch-org.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF0003922D.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR10MB7903

Hi,

on recent Linus' master from today [1] I'm getting [2] running the
of_unittests.

Is this known and/or is there somewhere a fix?

Many thanks

Dirk

[1]

x86_64_defconfig + CONFIG_OF=y + CONFIG_OF_UNITTEST=y

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/

HEAD: b86545e02e8c2 (master) Merge tag 'acpi-6.13-rc1-2' of
git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm

[2]

...
[    1.934623] ### dt-test ### pass
of_unittest_parse_interrupts_extended():1590
[    1.934865] ### dt-test ### pass
of_unittest_parse_interrupts_extended():1590
[    1.935562] ------------[ cut here ]------------
[    1.935683] Missing '#address-cells' in
[    1.936089] WARNING: CPU: 0 PID: 1 at drivers/of/base.c:106
of_bus_n_addr_cells+0x6d/0xb0
[    1.936653] Modules linked in:
[    1.937326] CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Tainted: G
      N 6.12.0-10553-gb86545e02e8c #1
[    1.937706] Tainted: [N]=TEST
[    1.937787] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.13.0-1ubuntu1.1 04/01/2014
[    1.938196] RIP: 0010:of_bus_n_addr_cells+0x6d/0xb0
[    1.938458] Code: e8 48 30 00 00 85 c0 79 4d 80 3d c5 c7 14 01 00 75
ce c6 05 bc c7 14 01 01 90 48 c7 c7 e8 60 fd b3 48 89 de e8 64 d1 53 ff 90 4
[    1.939060] RSP: 0018:ffffbb4740013be0 EFLAGS: 00000286
[    1.939212] RAX: 0000000000000000 RBX: ffffa43ac7dc3e38 RCX:
0000000000000000
[    1.939392] RDX: 0000000000000000 RSI: 00000000ffffdfff RDI:
0000000000000001
[    1.939650] RBP: ffffbb4740013c5c R08: 0000000000000000 R09:
ffffbb4740013a18
[    1.939885] R10: 0000000000000001 R11: 0000000000000001 R12:
ffffa43ac1ba0218
[    1.940083] R13: ffffffffb3b3a160 R14: ffffbb4740013ce8 R15:
ffffbb4740013ce8
[    1.940287] FS:  0000000000000000(0000) GS:ffffa43ac7800000(0000)
knlGS:0000000000000000
[    1.940501] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    1.940650] CR2: ffffa43ac7601000 CR3: 0000000006a2e000 CR4:
00000000000006f0
[    1.940926] Call Trace:
[    1.941455]  <TASK>
[    1.941684]  ? __warn+0x83/0x130
[    1.941833]  ? of_bus_n_addr_cells+0x6d/0xb0
[    1.941939]  ? report_bug+0x1b7/0x1d0
[    1.942036]  ? handle_bug+0x54/0x90
[    1.942125]  ? exc_invalid_op+0x18/0x70
[    1.942234]  ? asm_exc_invalid_op+0x1a/0x20
[    1.942375]  ? of_bus_n_addr_cells+0x6d/0xb0
[    1.942490]  of_bus_default_count_cells+0x1b/0x40
[    1.942644]  __of_translate_address+0xfa/0x480
[    1.942768]  ? __pfx___of_get_dma_parent+0x10/0x10
[    1.942931]  of_pci_range_parser_one+0x10e/0x360
[    1.943073]  of_dma_get_max_cpu_address+0xe3/0x100
[    1.943236]  of_unittest+0x1572/0x2890
[    1.943354]  ? __pfx_of_unittest+0x10/0x10
[    1.943469]  do_one_initcall+0x43/0x210
[    1.943579]  kernel_init_freeable+0x19a/0x2d0
[    1.943699]  ? __pfx_kernel_init+0x10/0x10
[    1.943813]  kernel_init+0x15/0x130
[    1.943944]  ret_from_fork+0x2f/0x50
[    1.944127]  ? __pfx_kernel_init+0x10/0x10
[    1.944347]  ret_from_fork_asm+0x1a/0x30
[    1.944493]  </TASK>
[    1.944602] ---[ end trace 0000000000000000 ]---
[    1.944810] ------------[ cut here ]------------
[    1.944968] Missing '#size-cells' in
[    1.945139] WARNING: CPU: 0 PID: 1 at drivers/of/base.c:133
of_bus_n_size_cells+0x6d/0xb0
[    1.945340] Modules linked in:
[    1.945427] CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Tainted: G        W
      N 6.12.0-10553-gb86545e02e8c #1
[    1.945796] Tainted: [W]=WARN, [N]=TEST
[    1.945919] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.13.0-1ubuntu1.1 04/01/2014
[    1.946149] RIP: 0010:of_bus_n_size_cells+0x6d/0xb0
[    1.946282] Code: e8 58 2f 00 00 85 c0 79 4d 80 3d d4 c6 14 01 00 75
ce c6 05 cb c6 14 01 01 90 48 c7 c7 10 61 fd b3 48 89 de e8 74 d0 53 ff 90 4
[    1.946705] RSP: 0018:ffffbb4740013be0 EFLAGS: 00000286
[    1.946866] RAX: 0000000000000000 RBX: ffffa43ac7dc3e38 RCX:
0000000000000000
[    1.947129] RDX: 0000000000000000 RSI: 00000000ffffdfff RDI:
0000000000000001
[    1.947303] RBP: ffffbb4740013c5c R08: 0000000000000000 R09:
ffffbb4740013a18
[    1.947470] R10: 0000000000000001 R11: 0000000000000001 R12:
ffffa43ac1ba0218
[    1.947638] R13: ffffffffb3b3a160 R14: ffffbb4740013ce8 R15:
ffffbb4740013ce8
[    1.947806] FS:  0000000000000000(0000) GS:ffffa43ac7800000(0000)
knlGS:0000000000000000
[    1.948027] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    1.948186] CR2: ffffa43ac7601000 CR3: 0000000006a2e000 CR4:
00000000000006f0
[    1.948359] Call Trace:
[    1.948425]  <TASK>
[    1.948485]  ? __warn+0x83/0x130
[    1.948579]  ? of_bus_n_size_cells+0x6d/0xb0
[    1.948691]  ? report_bug+0x1b7/0x1d0
[    1.948796]  ? handle_bug+0x54/0x90
[    1.948922]  ? exc_invalid_op+0x18/0x70
[    1.949088]  ? asm_exc_invalid_op+0x1a/0x20
[    1.949210]  ? of_bus_n_size_cells+0x6d/0xb0
[    1.949323]  of_bus_default_count_cells+0x2b/0x40
[    1.949448]  __of_translate_address+0xfa/0x480
[    1.949565]  ? __pfx___of_get_dma_parent+0x10/0x10
[    1.949691]  of_pci_range_parser_one+0x10e/0x360
[    1.949815]  of_dma_get_max_cpu_address+0xe3/0x100
[    1.949985]  of_unittest+0x1572/0x2890
[    1.950209]  ? __pfx_of_unittest+0x10/0x10
[    1.950416]  do_one_initcall+0x43/0x210
[    1.950526]  kernel_init_freeable+0x19a/0x2d0
[    1.950642]  ? __pfx_kernel_init+0x10/0x10
[    1.950757]  kernel_init+0x15/0x130
[    1.950891]  ret_from_fork+0x2f/0x50
[    1.951041]  ? __pfx_kernel_init+0x10/0x10
[    1.951156]  ret_from_fork_asm+0x1a/0x30
[    1.951268]  </TASK>
[    1.951329] ---[ end trace 0000000000000000 ]---
[    1.952208] ### dt-test ### pass
of_unittest_dma_get_max_cpu_address():1100
[    1.952544] ### dt-test ### pass of_unittest_dma_ranges_one():1121
[    1.952747] ### dt-test ### pass of_unittest_dma_ranges_one():1139
...

