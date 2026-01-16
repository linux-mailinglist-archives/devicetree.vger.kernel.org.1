Return-Path: <devicetree+bounces-256133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F27D32C2D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:40:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 834D330519F3
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF6038A2AE;
	Fri, 16 Jan 2026 14:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Oouto2QZ"
X-Original-To: devicetree@vger.kernel.org
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011003.outbound.protection.outlook.com [40.107.208.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338DD3375A6;
	Fri, 16 Jan 2026 14:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.208.3
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768574230; cv=fail; b=tSJn9IhwUbXIGWi5kBtMBhEPOmBYOysXZFXF1SghNXRpm7dkYb3jPyZl1jxaRfRpZCks3k0Yeabch1z+aaKaJhJ1oFTN3yIOtL6u9EWVuiqdZtOzyAePbcc+qpnDZZykvy61ttj4SUk+sAw18GnuJUOLr2AYQevYHx6JQP14CQs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768574230; c=relaxed/simple;
	bh=mAkchqJM9AjDUhVy8P+oMqLgYH+GgcybyJOMEPah4n8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sASzKt+rMRtNHia5DWSesV2/Omy3n79k9Nkf6YwRYGcMWSY2coAyjjnM/KJQ/BwoyuRBoOr2lKGc156HKfFMwq03KkwUI+oV0DbBGCbOdILGU5zcOCGJ53lby+wbgncQUomziNEM0LPhQTzaWXYrDb1BCysO9UqBmt4MJoqtRzY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Oouto2QZ; arc=fail smtp.client-ip=40.107.208.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N2DbykUcI3V5nAQ2W3ooqa4M4SRaEobwie0vld/9sKzHKvocHdof7Bg7yhiTvEF2Lnnc0e05IPVu+Z2qCbwu4yqLuC4Yo+tOfw27KGVl/9SvEOupW2sBL/0obV7bH6BpTIdIY3eS5QtmPknxWOgPPytjDQiy4ueGvMsPLVLxvguxZZov/8Bky+r/eh14VaH6rb9UDh83rpcmatNLJAf5hIt0n0nyLGgctSh3m7+NwXQEt8eRSJ73wf/XBDwBjpNFXEBrvkmgg3ORhJkDKM0BEkLeI5eE65s1ZCOv7kc3s6ZLaJkltvUQOyb7Wy+m+OxGj6eEJ3WrYuxwX6M2QG3PSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6c5QFEC9gazGv13D+rSZlfDfmRVySXXLuG02DDXb8eY=;
 b=zKp4lU5nKBf65QYN1phxxUWdOYrZaVkN+bs8a3SNI5OcrBSxDB8ZxJwAy0yBQFN7TVwxP3tUaia+rrC7asOLKsKz5XhHulC95awr5kbKKiGjTObL3EmUle/ZhR0UIprMWWyhG46OKXKOKc6Kv8ylYY8CZwt37fawIX6nj6YXAKer35OrEs0XMB0uwP4oBaakrzLkhupMD3qA3YNQ1IC6tuSFFKll1KTindlH0kdngJ/mQw+n09C1ItvmJVWiko8MAGuHoXmIUMDEnAB5PGB1v3+CS/A42KIQEoVVLNPJdXIMM/fXz7OdZ1Py09f1N/RlOD5ZhJk2YqhmnEpFFU8Y5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6c5QFEC9gazGv13D+rSZlfDfmRVySXXLuG02DDXb8eY=;
 b=Oouto2QZIlnriH3+EN0n4ZBq1kcH4qZjggL9UWWbOYUGzvxaKMcBqRiEyIBScTW3Suf83KNoWO0vj3huhocvsFsNbbGSbtBgHYefIdseOs7R8rhjP7wBlgRSFF92HZ8RrDHkphzpGB22FUO1eIxw5qZARqPYa3U0ND951Zznst0=
Received: from BL1PR13CA0373.namprd13.prod.outlook.com (2603:10b6:208:2c0::18)
 by DM3PPFA3FC49FBA.namprd10.prod.outlook.com (2603:10b6:f:fc00::c3d) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.6; Fri, 16 Jan
 2026 14:37:06 +0000
Received: from BL6PEPF0001AB53.namprd02.prod.outlook.com
 (2603:10b6:208:2c0:cafe::87) by BL1PR13CA0373.outlook.office365.com
 (2603:10b6:208:2c0::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.5 via Frontend Transport; Fri,
 16 Jan 2026 14:36:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 BL6PEPF0001AB53.mail.protection.outlook.com (10.167.241.5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.4 via Frontend Transport; Fri, 16 Jan 2026 14:37:04 +0000
Received: from DFLE205.ent.ti.com (10.64.6.63) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 16 Jan
 2026 08:37:01 -0600
Received: from DFLE201.ent.ti.com (10.64.6.59) by DFLE205.ent.ti.com
 (10.64.6.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 16 Jan
 2026 08:37:01 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 16 Jan 2026 08:37:01 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60GEb1PL3417367;
	Fri, 16 Jan 2026 08:37:01 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, Beleswar Padhi <b-padhi@ti.com>
CC: Nishanth Menon <nm@ti.com>, <afd@ti.com>, <u-kumar1@ti.com>,
	<hnagalla@ti.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 0/2] Add TI K3 HSM M4F nodes in device-tree
Date: Fri, 16 Jan 2026 08:36:59 -0600
Message-ID: <176857413769.3702490.10178187354054510512.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260114173551.2545088-1-b-padhi@ti.com>
References: <20260114173551.2545088-1-b-padhi@ti.com>
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
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB53:EE_|DM3PPFA3FC49FBA:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bce975c-9f1c-453e-5f3d-08de550cb7c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|34020700016|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UVphekNyZXkyQmExa3dmU0tGV2JWTllROENMaEcxVDYzSG5LSkszOEFVQnRt?=
 =?utf-8?B?a0RqTlFoWEx1Ynl0YkMyQ0g0RXRVcDJXQ293UEFQY0R3VXNlMFBINERwQXVE?=
 =?utf-8?B?NW5xcVFyQTU0SjFiMENVWFgwZHppNHh5SzlwMnVxajlRZjRVWDAxV2I3RGUv?=
 =?utf-8?B?dVZCTCtXTUFpZVVuMmpYY0xpdERPZlVSV0lJN0I3dHdhTmVOT2k3c21tRHEv?=
 =?utf-8?B?dDA4a2RaSzBBckRkVUFKc015QzM3SStkQjR5L0tkcmNScXBJbktJUnplSkFD?=
 =?utf-8?B?LzdHY3NBT0c0ZXBxLzdoaW1waExZV3BrS2N2cGIxL0xrZ2dDdTRJUFR1TUc0?=
 =?utf-8?B?bHhKVk5MRjd0aXdGVFdnL04rQmptMUN5d0ZJelBUTjJVMFNDZFUxWWcwQzBV?=
 =?utf-8?B?RnZEWVpCN0hDZkdCWENBR0JmUWFEaDQ0RG0vdGp2QnV2WVdtcUJXL21hNER0?=
 =?utf-8?B?dnJEMy9pWXQxRnNpM0hyTzdrbnFidllISFBYZ0ltTVAreExhTUpOWkF0WElG?=
 =?utf-8?B?RDlaSUpCcDM5emUrQkRtcDIrZ3YwZnNlMjFNeDA1N05WMDkyR0JzY1pqSUFy?=
 =?utf-8?B?YVlGbVN0Umx0QXRBbkVpaVRvMEwraDhtRFRVdGNFNTlLT1hlWk44RU00M1Vp?=
 =?utf-8?B?MHpHbFNCUTcyQXpQNG1RVXVhYkEvbjZHYjVRN2ZhQUhyRUVTQzJDUlBKTnpU?=
 =?utf-8?B?YitBUkRSSHNzTGRHVXptOFhvRWU4T2NrcEQ2R3cvZk95YkVJSDg5Q1VEQzVN?=
 =?utf-8?B?emtkQXI4MHhNMDRXalVuYzlRd0JGVXk5MDZrVEw5anhqaFpkNGxFb1JZdzVH?=
 =?utf-8?B?Qy9aelFaeFp5YjNEd1dReXQ1QVZlWk1WSnNDTnhhZFRFSkdEWGZxTWh4N2hU?=
 =?utf-8?B?TnV4cjllakVDc2I3cXQ4K1RJTjJwY1pxYkJDck1sbG1RZVRyaFowLzM4TUFC?=
 =?utf-8?B?OFFnTXFhd3pndjNiRkJVSHYyTnhIbVMyOU4rZStzQ2RWZWtaQjZ1enBaZUdQ?=
 =?utf-8?B?LzRpU1hILzQ0bFZqWC9IR01hMFVyaTBXQ2RMQTV2ekZyOGJ1TmgvaytqZDYv?=
 =?utf-8?B?cCs3NFF2b0h5Wm9UdDA3ZTRJOHg4VWt5UXp6cWg5bnNOZmtpU0oyUlZuZ25Q?=
 =?utf-8?B?VW5tSmJ5eFF3VzQ5OXRRZ2VyUjBaei9jeCswdkdhTzkxWXR2NU9nSkoySmVI?=
 =?utf-8?B?V3NqdkRMbEtJeEVSSisrcXQ2NjNNcThSbFZTRXA3emhhd1ovSmU0a2xXOEFs?=
 =?utf-8?B?NE5QSnlIRnNCZGE1VWlRK1hCUFpmS2oxc3FCL2FJUVNWSjl5YVZTNE50VGFO?=
 =?utf-8?B?ZGxLU1U0MUpVSThDNFIyNjFxYjN0Y1g2MFlEQ0YrUzkwa0doa1NGS05oOEYy?=
 =?utf-8?B?SzZ4Tk9oQjVOVGpadzhTSE5Tc2NxeHBVRURDVk9VYlpRWU9JenR3Z1hJL2dW?=
 =?utf-8?B?QUYwRmYxK2FNbWlOWEsydVpXWFk3ZWNKUmNUNU1TYm5pR09kZzYzbFhlcFZ2?=
 =?utf-8?B?SGl0U083L3ZocWFiVkNzd2NIWUZhOStjN2xROVZubXhpaldyUjFWQjlDRXBr?=
 =?utf-8?B?WWJtQ2ZiSld0Tmc3WENQaWxrRXlIcnp0aG5CQlZDZTFDOVp0bFQ3NmdRMTZV?=
 =?utf-8?B?Qm1mS0R1cXRzVklmeGtKcyszaEU1dStmYWxaSGpJWHdBZUJ5bEpuaDU3U3hO?=
 =?utf-8?B?NFhGMnk2eCs5bDlUcm45ZWpjL2dveDlLaXZJajFLQXZLSDhUYnRjN3VGZUNr?=
 =?utf-8?B?ZUptU2dlL01ZU28wNDl3SHR5SHhjaitHNkhGQUxWVHBNT2E5ZjZ6YnlDQVVI?=
 =?utf-8?B?aHdpOFczNFdmb2hDYTIzTlZTMTM2K3g4TUh4NmtyTHF4THpKWkJ3eVRoem05?=
 =?utf-8?B?b2Z4YTVPTU1pY3EwVGNGUTJURDB4Y0lKODFidFM3anhGYjh3VytVN002RERC?=
 =?utf-8?B?RmRlTkRoaVMrMDJBQnFQbzFaZlhKdjcwN3RjYmZqVzZCaFN1MVAxWHNOUzRo?=
 =?utf-8?B?d1ZmZHhRTDFDamJsTTZjOEtham0vb2xtRzYvSzdYS2RZaGM4TVRlcmM4RUNq?=
 =?utf-8?B?cU5Pa2VzTlJweHJSV2IwUVVzWVpweVFZcXExQTlzOHJqTytxbXZWYjBMbFc0?=
 =?utf-8?B?eUN3dGdpYXFpSTdTZkdqS3B5M3pMeVZySHdyK2RSUnA5MklGWm8zSTcrcHJy?=
 =?utf-8?B?b1JacTJmcnVQTzJlbndWQUdLK3dYSGZKWUhONDVzY3BZaWZJSGplQ29SWTlZ?=
 =?utf-8?Q?9vCkA6UEo6hkvEN5KAu3kC3qyKFr6kD4XULuRbW9Hg=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(34020700016)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2026 14:37:04.2939
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bce975c-9f1c-453e-5f3d-08de550cb7c3
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF0001AB53.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFA3FC49FBA

Hi Beleswar Padhi,

On Wed, 14 Jan 2026 23:05:49 +0530, Beleswar Padhi wrote:
> Some of the TI K3 family of SoCs (like J721S2, J784S4, J722S) have a
> HSM (High Security Module) M4F core in the Wakeup Voltage Domain which
> could be used to run secure services like Authentication. Add the device
> device-tree node definitions for this HSM M4F core. The bindings for
> this has already been merged[0].
> 
> The HSM M4 core is typically booted early from the bootloader and the
> driver for the same is posted in U-Boot mailing list[1].
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].

Thank you!

[1/2] arm64: dts: ti: k3-{j784s4-j742s2/j721s2}-mcu-wakeup: Add HSM M4F node
      commit: 474530ef050b77482365de8c595b491f1d4ba683
[2/2] arm64: dts: ti: k3-am62p-j722s-common-main: Add HSM M4F node
      commit: ac838e45b46f33ae8ab7195892f4dcf1143a161b

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


