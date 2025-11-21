Return-Path: <devicetree+bounces-241115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 513E7C7A15B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:16:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 7094A357D6
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 13:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0139D3502AE;
	Fri, 21 Nov 2025 13:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="DwDebxYp"
X-Original-To: devicetree@vger.kernel.org
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011006.outbound.protection.outlook.com [52.101.62.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D52E35028D;
	Fri, 21 Nov 2025 13:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.62.6
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763733287; cv=fail; b=nB/nFDU5RMUxdAJonNsS87VCIytT77yN5hy86BDcK5urLF1FCb5o0VVO8zvVE9XBuRKilRJo8U2lwKWSnNN79knuAk2OAO2FasNMDEHbV6ftC9magCuIzOgm/l5jTLgD8dZZE+CvCqUVb9K+yxRghFouGS7NU4+VGOsAJz17uRQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763733287; c=relaxed/simple;
	bh=nXNc1RDIlNpyggu7qFyvfjjSQEOMp3d9UO30XSfD/9k=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=i6MO2IX5VL2bVkv4LWHEGDSw5lbyIJUZJjgfv6/75qBtUEq0MR2WT8IlQn2zG4DvydSz2aiJOgt6aEI/aYDTNW/vwZ3VljIMNVgV/F1XCr/T9xyrIOu8ocIuwkKoJn6umPwrm4lZ+UdTn13QTgZzRCaNmlFOVX99IvRSlpbQjjs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=DwDebxYp; arc=fail smtp.client-ip=52.101.62.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R6KRohj3wAt/ElYs89106mS/meg1Mxl5YKbC4J8u7mITo2D36v8gv5bwwpJ79t/ezVNmMZuXi2byCJQnf682f2X9+/IuV6WdTa7c2iAtRPBwUAtX5Uj/iSpqUQzEBzCPnEHKyEbXuUwlySoLdD4g8U77tf37QhcRt734mLvbYCv1rzSd24x02NJTUi2fwgzqsmOoX0uiyryXmOsl1Ohb686WCv2/QoiEsoZ33bieX3dfoXN1B/VdFJnrrAO4do+VLZQNFebs8BXa6b4eXZqyDLAVVrK9lYIG04uDbVPOjzJ4wInj/Wb6qer2YmZSLJBj/teJKn/VO1cun0AhEZplLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4YcwXSmbcu1aH9az3fvIztneVEkPBJjzWrsbjHac1sw=;
 b=bmT5SkclodNgZGCaBjnwp7qvu3zrox9aDqKICBCMe8bzmE8Fb8ip7iDBgbFpXA49fQfsHZ+BixuHUzJdSfET2A2zWIlRYM11fK1vORI8B74BoVf5S66JZK/JIh56TYWOIICV9iCuL35h2WTEsyoxgONQCAmm0yAsWcuBh5VNfKIOp04wpnjO+gaKvs9KOiM54f1PgSDgYVKi8xRFHFr4BU0Lolu6GeM3LCvhzYvGeKXms1zVbsVdEVNo+SPvNTI9XRdsiWLbh19IpEyHc+IqPzx5lDwKjWBtsOP+KNTcfDosRgIAFvSdKQK93Jmh8wGIHzgAP3+f3emAus+ZAAVtfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4YcwXSmbcu1aH9az3fvIztneVEkPBJjzWrsbjHac1sw=;
 b=DwDebxYpkd3ZWYvq4qL5yAimn5H3rCvbvcVangCTnfJ9FyICbrBxz4FsK3YTl6jrQMEnIFuXTCVTo/7HEwt0YkvpLXG1yD9BI0bf4Rdpo1zwax8FVGQzvCF75R0yVj7dl8/XZGvfOSDNG9L6MHFGKrbviqTTFcD3U4JcRRA9CRk=
Received: from SJ0PR03CA0241.namprd03.prod.outlook.com (2603:10b6:a03:3a0::6)
 by BN0PR10MB4920.namprd10.prod.outlook.com (2603:10b6:408:128::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.14; Fri, 21 Nov
 2025 13:54:42 +0000
Received: from SJ5PEPF000001F2.namprd05.prod.outlook.com
 (2603:10b6:a03:3a0:cafe::b2) by SJ0PR03CA0241.outlook.office365.com
 (2603:10b6:a03:3a0::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9343.14 via Frontend Transport; Fri,
 21 Nov 2025 13:54:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 SJ5PEPF000001F2.mail.protection.outlook.com (10.167.242.70) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9343.9 via Frontend Transport; Fri, 21 Nov 2025 13:54:40 +0000
Received: from DLEE202.ent.ti.com (157.170.170.77) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 21 Nov
 2025 07:54:36 -0600
Received: from DLEE211.ent.ti.com (157.170.170.113) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 21 Nov
 2025 07:54:35 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE211.ent.ti.com
 (157.170.170.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 21 Nov 2025 07:54:35 -0600
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5ALDsW3U1320865;
	Fri, 21 Nov 2025 07:54:33 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62l: Fix unit address of cbass_wakeup
Date: Fri, 21 Nov 2025 19:24:30 +0530
Message-ID: <176373265681.739386.428802920845388075.b4-ty@ti.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251120143419.223238-1-vigneshr@ti.com>
References: <20251120143419.223238-1-vigneshr@ti.com>
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
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001F2:EE_|BN0PR10MB4920:EE_
X-MS-Office365-Filtering-Correlation-Id: 967cb0a8-8224-4110-0ba3-08de2905847e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QlZYVEF5WGhUdlJwc2pCbXVmbmxhenFQOWxFa0VTQk9nZTAzZ2VkM0Ria3hO?=
 =?utf-8?B?Tm1MVC9meGlKaDlFc2hUdlJtV0NVWWxleXhlT09ydDFzVG9sUktZS3ZSME81?=
 =?utf-8?B?RFlyZHU3c1Z2dm9xdE44MVh3dm5QSjdDR1RCdVBYSEh0L1UrTjFqNkRWcFBa?=
 =?utf-8?B?S0h4aUtFRXVlTUxrVitpSGp6NlNmUEhqVzZSZXh2cjY5QXAzcHdsd2xKanlI?=
 =?utf-8?B?WkFJZjQvQTlXWnJmcUxlMVhydkF2L29iTkt3YUw4SmlFZk9yU2w3dDF6QTg5?=
 =?utf-8?B?RHdQTVkxekovdFd3UVdUVlZERDFWTUJ0TlMra1FxOWtaTlFjWHI4MXE5UVJ5?=
 =?utf-8?B?QmlicmlxTzVVUDI0Skc2ZDc2SzhlT2N2YjJkZ0lHcjVNS0pzR2tneHFBdENz?=
 =?utf-8?B?UTBZVWltUm90bHR2TGdPbjdiUHUwckV6YlFmZlY5K2tZaFNTWHFSZkpxWFRS?=
 =?utf-8?B?SklVcU5ONkV1QlhkVHVJNnVkbmhGVFRjQTE1YURlR0RyVTN1eE9ZOEdMSFMx?=
 =?utf-8?B?YXBreHhhVlJORVFoN2Q0Qkd0K0lwTUVRNEwvU1hMN2syN0xteDVlOTlpYTVP?=
 =?utf-8?B?ZCt5S1dSc3dETkhySWZSUjVkTWN1T0cwZXRucUZhVVRzN0YzVXFmRHlxdGZv?=
 =?utf-8?B?NWU1V3VyMlJ1Z0JxVC9LTFhaQUVvZCsyV21zSUdvTnMyYU1OVmxFM2NOeFd5?=
 =?utf-8?B?ZHhSbzMwV2lBQlNlaXpiUGxOZUgwZ2hyem9HdG1kTlBWSFpBRGlYVWFZUE9t?=
 =?utf-8?B?MWdQWE9YODlHTGltNkRtRDNTSnlDeU9jTUl2R3I4NVV0R1RiSUFFcVdMMktB?=
 =?utf-8?B?eWZzN3VOUWg3cE1pQ3NjbnBxS25PcVliTGxqYjhNbWw4ZjJuVWVSa3FLL2I5?=
 =?utf-8?B?R1VBUEt6dzhncEkzaXl3MG1VbW0yUXRldUMxZEpHZDdTNEFoZmo2QWd1VUho?=
 =?utf-8?B?NHdvWW94VG9EU1V2MDNsdDgwVFZpOUU5SmlHNHpTZTROd0JwU3BOb0kzUFgx?=
 =?utf-8?B?TVI3eWM3YjRKY3hwdUUxUzZRdXp3K1JaM0phbDIxZUhGNkw1djExZlB0dGZk?=
 =?utf-8?B?L3dadnlOWDN4TE5JcmNTUHhRa29wUWRVbmJPN3IrR210RWRxTDRVVTJBNWs3?=
 =?utf-8?B?THNTdmt1MHBHY1pTUHc0NDNuWDIxUDYvRDNsTklQMW5hSFFUSTFoM3U4TmJZ?=
 =?utf-8?B?NkN2YXR2SjJ4eTMybHBmRi9DZkFmY0szbG5XZFZLV3pnQ0laV1MvRGk1b1R0?=
 =?utf-8?B?VU1JV09xWWFITlFHb3QyT0VCRTNLUzZRb3k5WURLWlcxTlcwT1dDamw2VHlT?=
 =?utf-8?B?ZDhPcVl6b3FtOThjTWRWbGdMSHZaZDdWZ2RDRnhoeVdHZmdjQVdSV3kxc1Mx?=
 =?utf-8?B?Ny9IZFVCT0FXakUyME9UOGMyWXh0U05SYlpTQnlpamFBUlJqaEoweGZqRXhS?=
 =?utf-8?B?NzRnWWFUeng3ZlhVWFRPVDhvZzJ4a1N4NEU0NnJJNVZ1ZmUyVldPS2FVZEQz?=
 =?utf-8?B?UG5OQ2JtME56TkUxZFNPTXNmOWN0SzJUTVNrbWpkY3dDZ1lpSkoweVg0ckFh?=
 =?utf-8?B?NWpmSW83KzlNZDNPbE1HdkhmcUFiMklab0lTYkhSbHZyQW9qVCtEdU9EcTU5?=
 =?utf-8?B?U2lubCsrbENjcEFrakg5UjNMWllrd0E0VU1rZzdreEs3ays5N1p2ZzhNVTZa?=
 =?utf-8?B?WXZ5RDZQTDRXd1U2SE43M3lTZElPc1BKU2FSbUlWemRZZGM2QTJucGUyaUcx?=
 =?utf-8?B?MmRZNGw4eDhjT1hCUGN4dGxJM0labTBMZGpKYStJYVdxeGhuTWNXbkVxTmtt?=
 =?utf-8?B?VUlKQ2ZIeHBGTWtIanNObmpsQWd3MW5GSG5TZHVldFBiV3RqalRQQWo4UWVr?=
 =?utf-8?B?OGN6b2hvUDQ3UVkwMS9jWHJRQ2U0K3VLaWZuWjZVQmdHejkyanovdzA3dytm?=
 =?utf-8?B?KzI5SmxZNWsvVmJRUTFZcWFkQ3d6SVp4ZEk1a0g2eE50ODZCK0FBN0QyK1M5?=
 =?utf-8?B?cjJRdkRibWt5QnBXRmI1M1lwUVZnQy9zWU5Ibktua1cvS2RxU050SDYwbEp5?=
 =?utf-8?B?S2dsWHpqMHd0S3JDQm9BeFp5SkU0bVQ1WGl3emFzTWd2cFU1eFNmMTVQalM0?=
 =?utf-8?Q?MhSs=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(82310400026)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 13:54:40.6313
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 967cb0a8-8224-4110-0ba3-08de2905847e
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF000001F2.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB4920

Hi Vignesh Raghavendra,

On Thu, 20 Nov 2025 20:04:19 +0530, Vignesh Raghavendra wrote:
> Fix the following warning with W=1:
> arch/arm64/boot/dts/ti/k3-am62l.dtsi:101.30-112.5: Warning (simple_bus_reg): /bus@f0000/bus@43000000: simple-bus unit address format error, expected "a80000"
> 
> While at that, also remove extra space b/w label and node name.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am62l: Fix unit address of cbass_wakeup
      commit: 56baa9190988f35d53b1479a87c1bf44f6c979c6

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
Vignesh


