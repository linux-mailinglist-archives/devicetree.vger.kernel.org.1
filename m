Return-Path: <devicetree+bounces-274972-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oB64FRLEs2mEagAAu9opvQ
	(envelope-from <devicetree+bounces-274972-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:00:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2149927F276
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:00:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4F0A830087F3
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4CC92D876F;
	Fri, 13 Mar 2026 07:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="PPXPtqz5"
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012002.outbound.protection.outlook.com [52.101.53.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33269330D35;
	Fri, 13 Mar 2026 07:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.53.2
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773388718; cv=fail; b=hykx3dEe1GvVgFixSeXapM4jkloeLGma9eMROKBk2ptsriS8WPZxzJJVbwMhLNa9vUNezMU3Z6g9jyz55g9ERbOG7S8KIIxhBY/u6ybzsQhvLUaQj/vFDxaEBGd1vYtrQWCkwTHtIcU4tcMyL7nIGllZez/EzAo1pgq6H+HJ3zk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773388718; c=relaxed/simple;
	bh=EaZM+xoaD45J+kXBr5GEYXDRVLcyuHe7RuGvZW6AItU=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qu5Prh8xZHJuwDEixonQKwtaGInNy0nW+NzEn5Ln+9Nk7xzmKkUyc8yXmq1E6lBXT5zUmDuzt/DXcJpEXEnIIdWTihlMCmP5pTAN0llQdvxQs76NK7bj7EEb2PQpvfiqEH8wD4hHQpOwuk+xx9fRjl/QfoWdQJANOY+zth1ZX4U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=PPXPtqz5; arc=fail smtp.client-ip=52.101.53.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fBYEp7XO5kWofuVml/g+279AhxFLVVmNgN7HDI+scNGuNEAUCe//xGlb9o6W+A8T76DmZndWOA39gpIRjSn+LuNQL5BoxN3ANX/Ubyb/p8XgGaQCPaAV2MNH8+Ij5yMw8/IzSWzzYtHkTBtGrXxq6lPGlPJsH9uNJ8fUYQmFfXMBW2KwerN53AS4v1ynMFVUHSKUBHP7Hi02tny6a3tcE1UyJ3puW/0/vczNB1MYEPjjfql5gdblpPsQXcry296d0SMZEETZKv7MpwqCx3jI7GIhqWOZ4y6qiVJmvuhW9QofD33sHEDBm0miC9cAe0dIOyaDDpmqZmew1gYg3enNYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gU8ZEIEJ9FRgoKmZgRYTDyfbgpo6gh2kU+5J1Y7oLro=;
 b=Z12Iuwxl9t6KTbE3e3EH08+TO32HvjrlBHBA4nhw8FdSSAOjsfa/w2tmB5XYXpKt5M86f+PZAu5m4Z7BF82ycacYPyLomEoc/XJX2E6dtuZ3TGlOZzfcF3a+XAxJEBUSLugeNzjDpLtQckXQ1fB/WfHa6v50v6JkE2A5MLwYJN4J2kA3So3unjiNIaGHdUy2+HXxB4DYhmBkbPKXGptNJTgoDAwlqvGzdA7TMeVTlutsUug5O77GIjr5jo/MOZY3+XeHWF9yZ0lRKxmt0c3AfAAQ72PmZlUpyMULxydufSO8fefnN4mtSKLNcNo0HOIPIrv98N6dFncMlJ0o3tb8Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gU8ZEIEJ9FRgoKmZgRYTDyfbgpo6gh2kU+5J1Y7oLro=;
 b=PPXPtqz5FM/zakhOieAAfnsT9zAhcit9yBR2pRfFhwO4oRRuarr+lQyE29VMaJSnu2966i+wnaMqa0gn07P3oJp9A/mMs0ryLezKIkaL6zS46kY9eAkF8PqxI7dBPPM6FUQu5Xr1YdD3rfDqKXbEHowuMbFuFj59Zfx/TdPd6bs=
Received: from MW4PR04CA0346.namprd04.prod.outlook.com (2603:10b6:303:8a::21)
 by SA2PR10MB4811.namprd10.prod.outlook.com (2603:10b6:806:11f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.17; Fri, 13 Mar
 2026 07:58:34 +0000
Received: from MWH0EPF000C6187.namprd02.prod.outlook.com
 (2603:10b6:303:8a:cafe::70) by MW4PR04CA0346.outlook.office365.com
 (2603:10b6:303:8a::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.28 via Frontend Transport; Fri,
 13 Mar 2026 07:58:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 MWH0EPF000C6187.mail.protection.outlook.com (10.167.249.119) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.17 via Frontend Transport; Fri, 13 Mar 2026 07:58:32 +0000
Received: from DFLE215.ent.ti.com (10.64.6.73) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:58:16 -0500
Received: from DFLE206.ent.ti.com (10.64.6.64) by DFLE215.ent.ti.com
 (10.64.6.73) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:58:15 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 13 Mar 2026 02:58:15 -0500
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62D7wBve174039;
	Fri, 13 Mar 2026 02:58:12 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Dhruva Gole <d-gole@ti.com>, Bryan Brattlof
	<bb@ti.com>, Kendall Willis <k-willis@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <vishalm@ti.com>,
	<sebin.francis@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 0/4] arm64: boot: dts: ti: k3-am62l: allow WKUP UART wakeup from LPM
Date: Fri, 13 Mar 2026 13:28:08 +0530
Message-ID: <177338196937.240421.12915313003860675200.b4-ty@ti.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260219-v6-19-wkup-uart-wakeup-v4-0-eda09dce5623@ti.com>
References: <20260219-v6-19-wkup-uart-wakeup-v4-0-eda09dce5623@ti.com>
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
X-MS-TrafficTypeDiagnostic: MWH0EPF000C6187:EE_|SA2PR10MB4811:EE_
X-MS-Office365-Filtering-Correlation-Id: 1435db87-992c-4a62-5d32-08de80d65276
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700016|376014|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	a0d4JoD/rXbKVQV/Pw0PbcVO1G4gy6lp1sEXabFnW0NU2F4+Dr8cSBPXg3RQ6d9nL9WzLmX74ZIxhk/u4RGNhLN8mnE5Pz0ZJqS2WfZ2PJBpOIlP/w/FQ7ih/LXcNeXC6Gb5S54Le3AH/D0BrNsktgmI6xvQsvR866f5VSj8CVhhVqoaRDN2v6NtAOdEQWYLeOL4ZW9xi9LddRjpgc15an/aj0jQbDYyMUwKJfm0dMhy1KdrEMRqzUO4OSewvdcM3gFNfnKf8NbXrJu4uygaKPK0lhhDF4nH6WgxpiOkWqZ8qKXkKrQmrMaaBr2MY+xgcqzSNJUnKIbtee+rSr5Ul04WdUnb21CXCXKY9ulb504BXRRQp0nDD7zaWdUstitpqJP62BL8gmNLxuUS9+PajKaBNx8ka9yWK12ffPNCL5FvP3v1KpAvbiXv3REiXmHdh1ybH9nwiVm3Ziia2m6PmZxiLDQZVtIMtysxHHSXicgXrf5M2B4BiXlg7nBpuclqxuR+nCnVhKDR5QwNB0DK4Ad5xE3WobZBQ2NDNlrtZACK3nht4sddzHqiPG0NTXWFb3LID9q6sgBZ4DaxbKmMDt2ui4QJJXyTzmHJqJL1iV/j1ci5zn3fzY7CU+/TjPi35lyOHMKRt/hNRCx3EVN7eYsIojRDuJrm5ZAXjJ/31NC8cyT4CCphGLq12r00V/XBwe6o3/MLLvH8o7INO983XXCUl2QcGnqTsQlTj7/WAUY=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	2+GQ+MT8JQGb1GeFiHXJrWElLfGgUSn/wFgsgiETqjiFtdOsYpG3qW1Pteh6T+QGpo2+PJGoZaUEVZhsYSXV/zVKqggNwrdxM6yccp/H1P9U5Jxn20OasFimCRoN2GIXhDE8BXHKl2lxfQmq7//qpEtrPgjYLYfjRxV3W2u0BczIF+cazb6hnGXX6iua6eLCszIutIi3Juy40ShX6oQkkrfebhEsZBoDmhLurbnz7IMp6BiaFvBXbG3C3jWMktXdqoVfNsgttkJO2rtNZocDQZF64Qb3T1GSx7QBVnGXxkVeEs0ORjWqj+Y6cp/b5pi2XbhBGSZPkVDEvaTRR2Dm4AFJ+5gV/SNYOfLcaFjOrusO3u1WjqZ9vem32dxgxL0xfE3jFZZ4V1YkO/lbVW9ykwnQ+0zdC4+euBeoESbPzisUCCG1Mbio/QDwFRw6CKzx
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 07:58:32.6682
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1435db87-992c-4a62-5d32-08de80d65276
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MWH0EPF000C6187.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4811
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274972-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ti.com:dkim,ti.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vigneshr@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 2149927F276
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Kendall Willis,

On Thu, 19 Feb 2026 13:43:15 -0600, Kendall Willis wrote:
> K3 TI AM62L SoC supports wakeup from WKUP UART when the SoC is in the
> DeepSleep low power mode. To allow wakeup from WKUP UART the target-module
> device tree node is enabled. The ti-sysc interconnect target module driver
> is used to configure the SYSCONFIG related registers. In this case, the
> target module node configures the WKUP UART to be able to wakeup from
> system suspend. The SYSC register is used to enable wakeup from system
> suspend for the WKUP UART. Refer to 14.7.2.5 UART in the AM62L Technical
> Reference Manual for registers referenced [1].
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/4] arm64: dts: ti: k3-am62l: include WKUP_UART0 in wakeup peripheral window
      commit: e5452968a4b04f93bf9b778ccfd00f79e4d4f529
[2/4] arm64: boot: dts: ti: k3-am62l-wakeup: create label for wkup_uart0 target-module
      commit: f177b48ac038ddf131d05099ce6b05eae946db08
[3/4] arm64: boot: dts: ti: k3-am62l3-evm: define wkup_uart0 pins
      commit: 54217686642ac0007d4e0c8032c0250dd9b29f91
[4/4] arm64: boot: dts: ti: k3-am62l3-evm: enable wkup_uart0_target node
      commit: 3865126f0e5b497e2a94eaaba56464ac4ce8faef

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


