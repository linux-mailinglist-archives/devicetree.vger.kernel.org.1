Return-Path: <devicetree+bounces-246978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A628CC2319
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:26:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 419EF3019E09
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36D48342531;
	Tue, 16 Dec 2025 11:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Dd+NX0Ab"
X-Original-To: devicetree@vger.kernel.org
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013052.outbound.protection.outlook.com [40.107.201.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2679A34251D;
	Tue, 16 Dec 2025 11:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.201.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765884387; cv=fail; b=IQ+sNVILnBYoa13wiGB9uaX1/LQaaAHjYHs2eou4OgVJcl5cjQagQiTlawnIkCdopFKDr1h90qKhiWTIFbk9VaZtHTWrCa9rVVviK4GBji9dlnUj0lcjULRkENF0SiHG1rqHW0eQjUl4P0Lwf8FP9Yfn2mMsHAF4l7zWuZUJFUE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765884387; c=relaxed/simple;
	bh=5p/49Jvp5GsPMk74xGbn+NHph01OlXLA5l2nstb0luk=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NWeolCsVNPE/12rqp/pBeucHNK9zOIOReJUXSRoFtQD8E6MivvDNHDij1waikIIHJMA/nNlfpZMAmAg9Np8WLZ6UDG3mWNqcoiEDvzKpiLgMo2P9WxkXSTqJaQmbiFFFMhT3gpjUsuSq+I2SOixV5qv0z7SHHWDUBg6sSweiygQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Dd+NX0Ab; arc=fail smtp.client-ip=40.107.201.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dTGJMlAcmKh3TXZrp7rB7UhWzhmZed4yb5zlMVXBnTBmIZSZ/nJXVvaAICAlgq6FEXO5reHSKKLyYTdY7rloIb6BcC7SriKlMBr9+TNrwsR/xuWfyE1uFFo/hJOXukcAOhZcLOu+RA2ZSfSIF0IA5VKn2m2gMJ9TTcpNb0xM1pTYUOef74TrDh5zp8SZe1zK5AYEYYsVSCDePexxxEb+6SroBjsNNb+UyYRttSDaTRVmj5Lf824iAdm0kBEfVjfw90YvmREbVGhqmtSmweZqM5jwYRUrK6sLS7tQNi7RtqLDFK591n/vkFC8CRqdZVmep6KFz7Luwc6HfmXoQ/RLjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zy9Z9lOdibBQdx6VOzSwrw7RoXpnwWLzsjjTaGLzJE0=;
 b=amo9xMQ6JnG9FRPRqD153TaZI2DUrXlJJ68Oz4JaAjpc9b6IHgzUzNZHj+avSjhDOVQvONGcu0MsvZCqvA6G/OG4Vf8xOfTQBtxnjmQuOfUcrp4tZYi86wdVFHWoqpw0CudX7eYFDiGXpFZUsqXOROQEAtyHoLdq/TjDobefkz2DA8+XK3uif1X1WzsMU2xYZ06Wxf75tJa4SCm9MU7QpgT+GWLy5voyzBa2ni/aXCG56UCh1aW/Nj53nP5VbWKjupENCCSbuhRexso5gklll7HEmWASB8Faj2hUakoLuOydntZjUXyIyfSmh01zErmsu17ztSVGg3oFPeQKJxlqKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=lists.phytec.de smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zy9Z9lOdibBQdx6VOzSwrw7RoXpnwWLzsjjTaGLzJE0=;
 b=Dd+NX0AbG/CYbsDWdJH39kXdCXr+8X2EQ584CRV1f992nD8vrQcgZ6ezWyzjhxOvJNG8q/G72mx6FBTH6mcRmnb4hxu0OUCyjqQel9Ci2cttsE5L7oIuJewE/lNALV8EUkMDuIhPPsIX7+PkktNCntJtAWSc2ZGrAMOQBaeKQAc=
Received: from DS7PR03CA0213.namprd03.prod.outlook.com (2603:10b6:5:3ba::8) by
 BN0PR10MB5143.namprd10.prod.outlook.com (2603:10b6:408:12c::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9434.6; Tue, 16 Dec 2025 11:26:21 +0000
Received: from DS1PEPF00017099.namprd05.prod.outlook.com
 (2603:10b6:5:3ba:cafe::4b) by DS7PR03CA0213.outlook.office365.com
 (2603:10b6:5:3ba::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9434.6 via Frontend Transport; Tue,
 16 Dec 2025 11:26:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 DS1PEPF00017099.mail.protection.outlook.com (10.167.18.103) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9434.6 via Frontend Transport; Tue, 16 Dec 2025 11:26:20 +0000
Received: from DLEE215.ent.ti.com (157.170.170.118) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 16 Dec
 2025 05:26:18 -0600
Received: from DLEE205.ent.ti.com (157.170.170.85) by DLEE215.ent.ti.com
 (157.170.170.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 16 Dec
 2025 05:26:18 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE205.ent.ti.com
 (157.170.170.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 16 Dec 2025 05:26:18 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5BGBQIfP3965706;
	Tue, 16 Dec 2025 05:26:18 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Daniel Schultz <d.schultz@phytec.de>
CC: Nishanth Menon <nm@ti.com>, <upstream@lists.phytec.de>
Subject: Re: [PATCH v2 1/2] arm64: dts: ti: k3-am62-phycore-som: Enable cpsw_mac_syscon in U-Boot
Date: Tue, 16 Dec 2025 05:26:17 -0600
Message-ID: <176588434530.55546.1839102927935177683.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20251124090842.3377294-1-d.schultz@phytec.de>
References: <20251124090842.3377294-1-d.schultz@phytec.de>
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
X-MS-TrafficTypeDiagnostic: DS1PEPF00017099:EE_|BN0PR10MB5143:EE_
X-MS-Office365-Filtering-Correlation-Id: 9849301d-34c8-4082-0f94-08de3c95f02b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VTdzUnlwaHNtd2M2SjYzblpLWHNmUDVQbjR6NWJ2cXlSVEY3Tk5IMXlSVFFz?=
 =?utf-8?B?SHdjcVRaeXpWRFFWUkVWVmtJOS8reDJ0YXVLN3lqcFNUU3VTU1NVd1N0MVM2?=
 =?utf-8?B?NzloRTh5T0M4YlpIZkR2MTJqYTFOR09JSjlVYlJHa2svNURPQm9KMHdlTlRx?=
 =?utf-8?B?N0R2aTNRbmVTTnV4NFZidUprenlzNDdNUWNJMm9FR2g2ZnE4Y3dtTmpBUXAz?=
 =?utf-8?B?T0YxUXBpOHQ2Q2ZGeThLQklnSlNvajZjNk50cDlXZmNSVjBhaFhmWTkzYUoy?=
 =?utf-8?B?bWM1dnl6bmloaWJ0YzVSL3h2RzF4dytHZkV4VHN4SUI5S1M3OE11SytiV1Vx?=
 =?utf-8?B?Z2JreTJJQlJSdUYrbEFxSEJ1TGdIemQxWGlTNkthK0dDcHo5cW10QUlRWnBF?=
 =?utf-8?B?Ui9PWEFtQ0NqSWtSTVIvbUwxbG9JZk9Fc1hoSS9nWmthY2UzalhPQW4wcDVx?=
 =?utf-8?B?ZVlZYXRnbUlPTXd4TlY5MFZxTzc1aW01c3dZRVY4QmhXMHdvMERNSVp0NmZk?=
 =?utf-8?B?S3JWZ0habTdoSDZnNGV1cVhpL0xWcFUzSDJqOXphWUhnY0xLVjRrcUN4S3ZP?=
 =?utf-8?B?aUd2OTNUUEVGTW1IVzEyRGh4TkxncEdGTHVIeGdueEh2ZWNRczAvV3VObDRq?=
 =?utf-8?B?bDhCaE90QmoxZVR5bCtDT1IrU1BuT2V6VVduMXhhektnbnZVcnVGSzdsb3B4?=
 =?utf-8?B?d1hOOEhKazJvUkwyYWUrSDNqNUIzU2tBUVBUOEMrNWlrL0JrV1lZKzd4S0Jp?=
 =?utf-8?B?WDF6V0JWN2k0TitxaTNZS0V4a2RoVDJMTHo4enl2bVlZT01DdWlvUi8vYVdN?=
 =?utf-8?B?bUlxOU9oWSsrdWlndjQ5UERmTDBpakhhcnVPNVMveXlmN3hseWVuZjJObHpV?=
 =?utf-8?B?cjBPbm54T1JzM1UvcGRYN2xEVGVuSkZGTVNKVnpPWGZEVkVLOG9MbGFLSVpH?=
 =?utf-8?B?bTJnTDJoY1g3UlgrN2lseTJ0eUloWDRpdk9QY3lLY1IxRXdpSzhGUmhlWHFv?=
 =?utf-8?B?NUJWRXVocUsrWVNoMlNoeGQxRDB1ZXpuODBRdGNNNVdOeTZia2kzcXc0bVo4?=
 =?utf-8?B?M1czZCtsSnd4aTlIdHlKK2g4MW01aFRkbC9ETHVYeDBmekZOQXNEbkljYldU?=
 =?utf-8?B?NmF6c1dmblh3WHQ2WDA3TWVqaFVTQ25EQ1lKWFZFNU9qWkU1bUtIc0Y3UW44?=
 =?utf-8?B?cnFPMTBjald1ZDNEdTRwSTBicjhuQU90Y3c5eUoyTnQwRjZJS3NzZWVZZzdE?=
 =?utf-8?B?eGxxWnNoOWM2OWk2MzF0eGxFZ2x2T2FUZDFrU01pcDQ0NnRXVS9EOWFVVUc2?=
 =?utf-8?B?V3FCS0tCNkwyYlZMVlBQMm51YTJFbE1ydmdwKzArcTMzQzFFUW9Dd2FmTTAv?=
 =?utf-8?B?c2k2Y25DZVdLczg1UUFDb0Y2eUxtMDByZTloUHdUSlA2c1NTTUZIU3ZwaUEx?=
 =?utf-8?B?ay9pVFpVTTZubHVWM1hPQUgyckg0Y0tOSGZmZml5M2I1NWpiOWtzNzhxeEtE?=
 =?utf-8?B?T2Q0MDZMSkUyWlFyWTQrRUZvTTdCR05Wc0F5SG5aV0t5NmZ3R3JiK1ZCRFd6?=
 =?utf-8?B?eTExSE80SEJOSks3c2MxcDBZVTlHVmJwN0dJalVaQTJOeVFuZUh2K0ozQ3Nm?=
 =?utf-8?B?MzFkRzRVblJhVENrRTNrYjNuWUg5REFyb2RKNmxPV2d6N2Y1WE1JS3dvOG1E?=
 =?utf-8?B?VjQ4ZWsva25SeDRJUnpFNGFoOE5jQVNwR2VZeGRXeld0MDB1cXRlRm5GTFVi?=
 =?utf-8?B?b0hzMkRzSXhhckhUZ1UzMzI0cFVtaEpLRU9TWHVpMGVaQlZ4bWNHU1E1ZzBT?=
 =?utf-8?B?WnN1Vlc2Rk50VDZvaXQrRHk2VlZ5T3ZhU0NrVDNITkdYSjdNeVNxQmdoQXZ0?=
 =?utf-8?B?TkprOTV4RHhlNURRRXUvenEyMGxUSVNtZ1hvZGhnQWJaN1N3SlNERjc3S2RF?=
 =?utf-8?B?Rk1VOHhpSHpPWGpBZ2VrbDdva2xSSjhVZ09UNDdYNXMxUWpQRWg4aUN5bmt6?=
 =?utf-8?B?V3FRcklDNFhRb3FONEVOQjVSY1lpUlIwSDF4SURseE56NFVPeHBxand4NlUz?=
 =?utf-8?B?dU9EUmVGcTVDa0o4V0syTy9zemVTWnZ3dGZ5QmxjeUM0UDlEdFo0RG15ZHRm?=
 =?utf-8?Q?N8d0=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 11:26:20.9568
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9849301d-34c8-4082-0f94-08de3c95f02b
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS1PEPF00017099.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5143

Hi Daniel Schultz,

On Mon, 24 Nov 2025 01:08:41 -0800, Daniel Schultz wrote:
> Add the "bootph-all" property to cpsw_mac_syscon.
> 
> This fuse region contains the internal MAC address. Without this
> syscon node enabled, this interface will get a random MAC during
> network boot. This is problematic because the AM62x network
> boot is using BOOTP protocol for some binaries and this protocol
> does not support dynamic lease expiration. Therefore, the DHCP
> server can run out of free IP addresses.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1] with cosmetic
fixups. Thank you!

[1/2] arm64: dts: ti: k3-am62-phycore-som: Enable cpsw_mac_syscon in U-Boot
      commit: d468b7b8a6fe3d21df5a186d04f9d6124ef66d4d
[2/2] arm64: dts: ti: k3-am62a-phycore-som: Enable cpsw_mac_syscon in U-Boot
      commit: a9bd8d35a88e0bf72ebf5a803eb4c7f8e4731e3e

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


