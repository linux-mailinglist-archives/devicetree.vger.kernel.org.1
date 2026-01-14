Return-Path: <devicetree+bounces-255178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B6852D2073B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:12:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F2893015A41
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DA082E2679;
	Wed, 14 Jan 2026 17:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="qQ+bwQyP"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010023.outbound.protection.outlook.com [52.101.85.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919132EAD09;
	Wed, 14 Jan 2026 17:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.23
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768410693; cv=fail; b=gAK48ZemP6wAssVhmnQpJiVQCvJVZ+CHFjyvtzlbUSDNoCyubdJM9pXA2nhnaLY3zbNI9eHy8ZEjaBsgVtS7ROD/0QT7QUhDi802PneXaLKIdvorUJ7a3rW+BVvf/cTetjA7rjlnX8YJlSSl8IAa3iT+eagdcHU1I6+CSrrJ8GU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768410693; c=relaxed/simple;
	bh=cPBWXnA336d0bzUIDd0hm40Kop7d5zGCDh+HMkRA2Tc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EvLrGxseOeYevujTuy9kHMu28iA6+3vcRkKfc8Wih8xMYYLKQXo+9PAPG92BF3zXX0sXA3n1wT4TyNNCcmZPSwpAur0TkYGY2zTFYjWKHY9chwM6sJYFzIlVNlZRGMGqZ0F8rA7oBaPETqAdAVT8f9DOgMNJzSIHyCVFA3lAgDc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=qQ+bwQyP; arc=fail smtp.client-ip=52.101.85.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZJoozoD0rVCutYPopqyKYeeFJZArZLb0rO4NYYq3Fjag4us3ze09akVq9Z40gjVq1BkWP+wmMpsPZ9OFnhrCXbJRtfttCIlW2lNcXWWLBclkYN1mAje9W+l4t0CK/iSilFyn2TAorH8M62EaixnUfCjcqAY85vzv/1C4yM9gEgKuoiKh4GkI+RsYkXHibRuqeig73S0g3jNlQnA+2HFTj2aLYPbzmKUBGUJoTHj5SGxfYp1D8qDM+mZLz4aD9XLmwVt7y5ib5C88KIGrurmTC3oqXxR6rjJD2j6y5G9/8xH8dd82nmS/43haV31zBuC4rFJwcKVTI5GDg2Sb8KZfPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IhuW5eIMGYg9P1TfnTuzWIhTNFzA6qV2AMMhYNxnMuA=;
 b=eyoQk0gKuVbWfcC5Pb4pQEZQalJSvq4ZPLxMxu5x1WZvPf6snW/89bXpjxbbJ/gZVgERBv3E1tDgZ/BsR7cjtIYTnHO2N1gmW0ESfDWVGyJVguB7oyzYpfalGQ3J7CnYqXknRZyOSUmZ5v6vdlDrgyZ3iiSpTVRZJyHUJZfV6qd2yZjrD8BAltqanRl5jbD/qg7ZNZor/yQ+d/D8JVlHb6UXMv1krsummJaOVUK8JBcxpIZeqoS7Bg4Phc2e+6P2969E3eV4R+RbwaPLUxyBf8Q8IYynxbIZODsveSOD5XNgNHixyZ/UjSvE8E2D3R1mPLsPpb5ECJ1rrOp2hlGi2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IhuW5eIMGYg9P1TfnTuzWIhTNFzA6qV2AMMhYNxnMuA=;
 b=qQ+bwQyPyH+7klsx/vyY0GiNsD3EbVLJzM3PnIOTku2jBMhM8pN4GIdpbtiimaV4AAcxHOfs7Mx+nzgk9XKcsq9uPCbMXddAPslk7SijLvostCdKzCMJgO0Lk5ek0wqOgOezCDFURZjAEN+CZX6HKojb7VqcSdv9wtEDGUNOgH4=
Received: from SJ0PR03CA0236.namprd03.prod.outlook.com (2603:10b6:a03:39f::31)
 by DS0PR10MB6994.namprd10.prod.outlook.com (2603:10b6:8:151::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 17:11:29 +0000
Received: from SJ5PEPF00000205.namprd05.prod.outlook.com
 (2603:10b6:a03:39f:cafe::89) by SJ0PR03CA0236.outlook.office365.com
 (2603:10b6:a03:39f::31) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.5 via Frontend Transport; Wed,
 14 Jan 2026 17:11:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SJ5PEPF00000205.mail.protection.outlook.com (10.167.244.38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Wed, 14 Jan 2026 17:11:27 +0000
Received: from DFLE213.ent.ti.com (10.64.6.71) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 11:11:27 -0600
Received: from DFLE208.ent.ti.com (10.64.6.66) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 14 Jan
 2026 11:11:27 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE208.ent.ti.com
 (10.64.6.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 14 Jan 2026 11:11:27 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60EHBQ61134854;
	Wed, 14 Jan 2026 11:11:26 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<conor+dt@kernel.org>, <krzk+dt@kernel.org>, Abhash Kumar Jha
	<a-kumar2@ti.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<u-kumar1@ti.com>, <p-mantena@ti.com>, <m-chawdhry@ti.com>
Subject: Re: [PATCH v4 0/2] Refactor watchdog instances for j784s4 and j742s2
Date: Wed, 14 Jan 2026 11:11:25 -0600
Message-ID: <176841067668.1986622.2045743329581022992.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260112085113.3476193-1-a-kumar2@ti.com>
References: <20260112085113.3476193-1-a-kumar2@ti.com>
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
X-MS-TrafficTypeDiagnostic: SJ5PEPF00000205:EE_|DS0PR10MB6994:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ecfecdb-2367-44c9-3389-08de538ff473
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|34020700016|36860700013|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dkR3VDJSQVdtQlhMQWw2dHJnV25jSjRmWWYwM29WUWF2WFhzV3N4OHg4aWFy?=
 =?utf-8?B?T0dkM3k1cUlUc0dvdmtGVjZiTlZ1UmN2YzlOYXRMczdhY2Z3aDNySnVZcnNu?=
 =?utf-8?B?OW5UeUx5L3pCcDhMTkVudWEyL0ZMVmRjQlNXUS84aWFKZ01VYlF0OUlTMWlw?=
 =?utf-8?B?djU5dGxOaHV2SEtSNW1PL3BzUVcrdUxCcHhHbklndDVoVnpJZllZa3IxczRs?=
 =?utf-8?B?VVBLcFp5citSMm4yVTFjdjBlUXB1UmFWL2x6emhWZHo5Z2hCUEdaZG9LQ21T?=
 =?utf-8?B?UmF5czI0eXFvRlZtUUJVOU1OUzgxQlp6dHh4SWNTL1p2YzVIcUpnSGlwemll?=
 =?utf-8?B?aGIrUUJJQXc0ZW9JWEQ0eGEzclhiYkhhZmtjY1JUUG5vVWx6TDFhSER3THcr?=
 =?utf-8?B?d2d2blhzU3Bkdml6elU4OEZhT1NUb3RFd3FpSVorRnlheGNGRFpEWVJBSnBt?=
 =?utf-8?B?Tk1PRi9aOHhlc1kxbGFTdldhMk1mN0FZZzg4RjdEVkdSMUI0M3lHS2tZc2lj?=
 =?utf-8?B?clQ5K0dBY3MrRWZzb242V3RsaDlZeEM1Wm8xWWFzM2gydVpVRlJKUGRnVHpn?=
 =?utf-8?B?UGJ0c1kzL2hsSmZaQ1I0U2QzbUc5THFLeWd2YWU5MWhBcmsvS1U2ZGp2MHFz?=
 =?utf-8?B?dnZqcVNtMHcyY3RGQnBuM2RlR0xPQ2RaNEUzOWJZbnFxYlhwMEV2QWxzMk9M?=
 =?utf-8?B?ZkV3U2NzVW1qMHc3eEVOQ0h0RkJzblZGZmFjRlBLK2oveTZhaFdBNWtMSXdo?=
 =?utf-8?B?S0tQZmF6NGd0dzFKd1Q2SHZKbk43RVBWSXh2RHZQcXZlcEZjYys5UEhGckJF?=
 =?utf-8?B?UEtrQVVBOW1lYm5QMFpGVUNYdkllTlRuRmluSStSRzdjd1NWVHArYUVrQWVu?=
 =?utf-8?B?a1ZTVVFWUHV5cGF3NjR5eDE5S2o1dnZXYnkvcUh1eXRjaThoWnVjS28vMFEv?=
 =?utf-8?B?U3pRRlA0TmYrenRNdi9IVUN5VDRJbkhJVkdyODlaM2k2Lzh3UFVYV3lsb1FI?=
 =?utf-8?B?b25wQy9KV3ZCWHFyZXoxSHRRTkZYMEw4UEI0Znk0QVZEL3pMTkVCNFFCb0JB?=
 =?utf-8?B?YWNkQzJSdWxueG9va0RtOFNqbnNORHRkT0thd2NHazA0SFF6WVI1OWN6eEl0?=
 =?utf-8?B?ajRic3BudXJsaG8wOVBScUx6Zk9LbVhnQkZjSC9iWHk0cFdFc1QwUzFXVVgr?=
 =?utf-8?B?ZFMrN0w4L2J3ODRwUFlvaDhjOHkvL1lyYXpnVkl0czgvTzNmdUx5cGZWdVhh?=
 =?utf-8?B?MitMV3IvNWxmYXNkaDJoNDVFS3I5OFFaaHF6VXJvMzVGcmMzd3JxVmJURmdU?=
 =?utf-8?B?V0dCT2JYUTFHZ25OdGpJSHVsb3grdUV5bVVybTJlRWNyYU55dmJTaGN4dWJa?=
 =?utf-8?B?WkR2cmVHRkkvY1dlamh2T3pYUHhHOWxCTFZYVjZXWjZoUDdvKzhhd2hoUWlq?=
 =?utf-8?B?cmRQd00zRUNXWEU3VnhlZXdGNWFCNmJVR1IrSlUvcDh1eDBkSEhIdStMcVND?=
 =?utf-8?B?NUNGVjhrcEhZWlpvTVFCSGF4WXhRVU5GTzZZOTlGQ1VMaDQzR0hxVUVlZU9i?=
 =?utf-8?B?TmlhNEZYSCtoWmlweUNRVzlTdTRCUWZWUEpnM09BcUVKV3h4ZXdISHdwanNZ?=
 =?utf-8?B?Vyt2czI2eGYzRjdDS3pCYTZxazcxVnhBMUEvUys1Qm9HalluenJmcEwxVlZL?=
 =?utf-8?B?RTUvRDVCSVBsckRGdUt6S05CTm1HQnJlNjFQRzlqbzNyb29sdmhLT21MK3ly?=
 =?utf-8?B?aFRFS1BsdzBBdFZVYmwzM3I0WHA1bS9LNktTYmY5VjJhNkVJMkx5dTdxRng2?=
 =?utf-8?B?L1VtQS9sK3NwUGpicW15MW5NTnExNXhBSmJpcVd4WG5rS3ZrZjZ2OXFUZVJD?=
 =?utf-8?B?V2V5YWE2MDNxcWlHblFJNUJ0SmduOWZnTmp4ZzJVakdDWTRBYkwybUFzbHJl?=
 =?utf-8?B?cm43dHQ1YWtETzY0NFNad1pyak9FQUV0TGNLVW9wSDNQeVZZVG1oZjR3dGRp?=
 =?utf-8?B?Rzg4SGFzZFc4b2NOTzJVSEJWaUpDWmlNQk15ZzF4MmFzY25ZTmEvYTlleGJ6?=
 =?utf-8?B?VG9yQUlKYkVMRkF5RzVneDlFSytiZ0hlMitTaE1EOHBUYThmdy9UMGJuNzEz?=
 =?utf-8?B?eVdYL0cwUlZYYW80QUVyK2JPcmU3S3hxWFRkM0hpZjFnQUVhOWpwTFJTTGw0?=
 =?utf-8?B?ZU02WVB0SU4xUXRiOEdWRVVrU3NBazRTMm1uZ1E3R21OQnRUa3JrdFRUQ1dH?=
 =?utf-8?Q?TTjwLJnZNEgjSzsJzZU9IjJkwCDqFcFRX3bshgOxBQ=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(34020700016)(36860700013)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 17:11:27.8410
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ecfecdb-2367-44c9-3389-08de538ff473
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF00000205.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6994

Hi Abhash Kumar Jha,

On Mon, 12 Jan 2026 14:21:11 +0530, Abhash Kumar Jha wrote:
> This series performs some refactoring around watchdogs for the j784s4
> and j742s2 socs. We have one watchdog per A72 core, hence the number of
> watchdog instances should match the number of A72 cores.
> 
> Move out the extra watchdog instances from the common file and put them
> only in the soc specific file.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/2] arm64: dts: ti: k3-j784s4-main.dtsi: Sort the nodes in appropriate order
      commit: 24c9d5fb8bbf5e8c9e6fc2beffeb80ac2da83de4
[2/2] arm64: dts: ti: k3-j784s4-j742s2-main-common.dtsi: Refactor watchdog instances for j784s4
      commit: 61acc4428a7f52e0a13e226ba76f2ce2ca66c065

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


