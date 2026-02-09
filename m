Return-Path: <devicetree+bounces-263910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFmnDIqpiWnfAQUAu9opvQ
	(envelope-from <devicetree+bounces-263910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:31:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A71C610D92E
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:31:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 930813007C87
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 09:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD82B308F05;
	Mon,  9 Feb 2026 09:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ReI+8u9v"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010051.outbound.protection.outlook.com [52.101.61.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08830246762;
	Mon,  9 Feb 2026 09:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770629425; cv=fail; b=CZ5UJ9QKIEQYmILu9mhVg7FDp0SUjyxMbZYF+NR2i9avsxvzII/APvEUFTVV7aZMLlUpOr53Y9E9TBEdhOUDcKBtlLn+xvwbllgMR07KazOLdq0v2PcgekvFRvo5z5069iWiCJTKiy9MAq20Ullv+P4WZ0VLdWH8FLD9WvROdR0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770629425; c=relaxed/simple;
	bh=zEbgxBBoujYdjWeXIABKinGEEXBSFSoVgD2w6mvzwuo=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=kd3VteAMGzslz2NY7gYiiV74xTIBJHSSVTFWj484iQYNv6ZLKLcRCyWyEh0XuN+3mc0+ZsOQd2R6lRwGCZNXfq6jssggjO/saPTULkKEAaMJ+LXKkkV6YpXZQXE1Q/ZOgg6zvu7HexRwP/yNg3f6JfQB9/TzcJmClJkNe8ogLAI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=ReI+8u9v; arc=fail smtp.client-ip=52.101.61.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uC7yv53XOE4Li6JBBd6Xgy175SfWJQ7YURjnJh/D+OwQQIa/W9lYWgfVeK+53Tn5lvE9nuutw7g++gErcK5w2MqcyBrvHut5jD2b3UkOEVyvqn/WdQvl+Ab43xoFXpyRLAsZjCu0OMBBEBKdJAg/vSbS0xJms3n0o93APRdXBj6dYmBqpQPCkwInGpQ5kQDWvca+DLtp0eExZMYnZvzpFITJiKGloLY28Oe9nNtnMMeLRyCx9Se92rQqMfreyZQ5jxyr1l0JgPbcVCcyOEKiGL23AYXDPZVkTAysEBihNJL4NoNhvIa5pdA5/dN7lXgxI3rzGaNz7+lU+oUnt+sMbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+NwwBAoRxT7rtPAm6TEeI1TmrnhChLpvgCDZzXa1kq4=;
 b=vanJoOXFmc/fDXBvP4ncNdk+OXiwKW64xuEnvBarGQh8KOYtQ9Bjrqy+MbMGwzvvse5ZmY8MjyghOeuMLiyTqGaHx/7KN2xnrzxLLl3hDwIZJ4w5oRx9SbiIQm1iCjS7fPYwEAFyxOFfEckGglYXlsl33hzkrfxzYk/DEB6wJuEP6+A6ootTyQBYNmN8eXmqvG4tlacekwmIH5UgpqGbAqLSTjJ6AXfGHiixSHVaqiPNs4zwWtwhfcGmf04AHUsZ+xZwvMy5csRp2bKfiytPPJ0ah4lUiIMXNOwjOP4ESg4KtV5039asVuj9H0oZxFbs69EU2jvqIlwcpp+i7ejA8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+NwwBAoRxT7rtPAm6TEeI1TmrnhChLpvgCDZzXa1kq4=;
 b=ReI+8u9vZi+EKZ3z5oZ3wrDcpvu8AVp3soZmcDE1vkGFP0m/O+E2Vi0HUWzOHgPGqxPzbeWdtLtmh+xRoQWGnnHugN19r2br32oJ+FftJBcoldLDg8J3SptEDzSEb89Cof8wjvIC7SYekYTiLLOxiNz0s5e+g3MVUz5Ld1c/Kz0=
Received: from BL1PR13CA0073.namprd13.prod.outlook.com (2603:10b6:208:2b8::18)
 by DS7PR10MB4863.namprd10.prod.outlook.com (2603:10b6:5:297::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.17; Mon, 9 Feb
 2026 09:30:22 +0000
Received: from BL6PEPF0001AB58.namprd02.prod.outlook.com
 (2603:10b6:208:2b8:cafe::a1) by BL1PR13CA0073.outlook.office365.com
 (2603:10b6:208:2b8::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.6 via Frontend Transport; Mon, 9
 Feb 2026 09:30:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL6PEPF0001AB58.mail.protection.outlook.com (10.167.241.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Mon, 9 Feb 2026 09:30:21 +0000
Received: from DLEE207.ent.ti.com (157.170.170.95) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Feb
 2026 03:30:20 -0600
Received: from DLEE215.ent.ti.com (157.170.170.118) by DLEE207.ent.ti.com
 (157.170.170.95) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Feb
 2026 03:30:20 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE215.ent.ti.com
 (157.170.170.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 9 Feb 2026 03:30:20 -0600
Received: from uda0510294.dhcp.ti.com (uda0510294.dhcp.ti.com [172.24.234.212])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6199UGra1756079;
	Mon, 9 Feb 2026 03:30:16 -0600
From: Beleswar Padhi <b-padhi@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <afd@ti.com>, <u-kumar1@ti.com>, <hnagalla@ti.com>, <b-padhi@ti.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v2] arm64: dts: ti: k3-j7*-ti-ipc-firmware: Switch MCU R5F cluster to Split-mode
Date: Mon, 9 Feb 2026 15:00:15 +0530
Message-ID: <20260209093015.3454340-1-b-padhi@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB58:EE_|DS7PR10MB4863:EE_
X-MS-Office365-Filtering-Correlation-Id: c7049442-da66-4c6a-c58c-08de67bdd8c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?cdoMH/XGCsaTZyzV47yXZ5jLOX7Q4Dd+FgdPs9JYX2G+MwjDuNnh4jYIFl94?=
 =?us-ascii?Q?P1lQBmZD4OcYhIZracay7Ln29noP36P8QDxHsVkP2MapimcxPQTqex5sxLxQ?=
 =?us-ascii?Q?4NYfTHP6UR/H43WKIwcQ3oDkBhIsUtR3swf/aKoQ0ENU5LzDDELiu1d4CtGb?=
 =?us-ascii?Q?gcqlS7Fa7Mm6YT0oUSljp9E/zWwV12199PqTuIbFcgX+YAs//DR2EAmUke1n?=
 =?us-ascii?Q?APmsM0LPJEnelIAdCHX6rMq/ZsIMMSkoEBq3NuV+HVB86ZTq9VYdCmryNsWR?=
 =?us-ascii?Q?QpXnOQfPgF92QcxmGM3Yf7+Oe/HiNYo646DjMgXjkxDWvGjQsk4IDGmLh8UH?=
 =?us-ascii?Q?RpU0RxacvqEAJZKRF5Y6eWT4vsb9I2c7L1Iduq1xXH8JNeiI513qEuc387It?=
 =?us-ascii?Q?sIB/Ze7hP3I9KOCbHMsNjy63oLQh7e95cxY7WnoXDyVmqmXmRdjEj9XSFWPz?=
 =?us-ascii?Q?66s09u8txoWsTXgpgfZc7K7d1h/26e5IAjuEFvzrHV8wxuHjVpVDpZWuHxhj?=
 =?us-ascii?Q?9Ut7oHZLbHMpZGeo0aH/hlkZUTRpn+ZHNd6OR1w1jcHEGKVvEiLCTTi8uXtv?=
 =?us-ascii?Q?QZJPkZJQRavI65RWkezfp32ayIeXXJEDDa3+jaK6f7sPJdL8bIN5kbNAAZ4r?=
 =?us-ascii?Q?e0jy8q2etb9FRCqXpHHEBeHuSG7hoh19/bXJ1oMyVuluKZd58XDv6UTFP0fM?=
 =?us-ascii?Q?qlONHC5BHR2/6xxVYpsgxxrF3UtZ67DIeV2ktvpEYn5Bzatm6iIA+vqPK3kt?=
 =?us-ascii?Q?Y16pKuw8p1Rk3Y2kpguvAq/USb22jnETWL81zTQ8mzXFTyF/mAdMsA8PQk6k?=
 =?us-ascii?Q?6Q4lDQNccV4znxmw12p5TCSVnpJWiEMWj5jGZsstJG/WSuxbAlNlaHhPLXLg?=
 =?us-ascii?Q?WTrisz6GOfBrMzURA6fIiqqMwGeECzM5B0ELKFUAzu6Mh3p/Oef/4XOezST4?=
 =?us-ascii?Q?TDy1hcUVmRQ5ahTt2gCZ7DLdxmDwp8SLU2jpM1lZfFaTjG3D8XmIH6sM7yHM?=
 =?us-ascii?Q?sYERUcNzntIQ8mFUxxYjjpkeW/BCmeLm+Xl+jsUJ9M8Pi2Evx7lJsrUkS763?=
 =?us-ascii?Q?h+oFT3cIbOu5MUHXKm9HC1WsJ9z/+XNW7wKApMLFnVwH74aC3J7m4okq/cT/?=
 =?us-ascii?Q?2yRNaiHvU/5XI9wTHInz1TEtQP1JOTetoYHR1kMaHVmCbIjMrS6gzg76D56G?=
 =?us-ascii?Q?WwDpYKLryIH4IfY1Ha/MCh5VFoXIE/iNMUwJ4xR+SY6lQ51PateDJ8ptV6qz?=
 =?us-ascii?Q?HaXMUfbSk+HTUDcTMg99cgfPmSYSdhRv1T9Kll1nW9qi6dJegRXtaXQja54N?=
 =?us-ascii?Q?Hdrd52wW1jCnEyrn/l3O0sZjVoqD/9rRVL6mm5N7JxZ8OTgaiqi8vfQBMVgQ?=
 =?us-ascii?Q?t0AO289Xp1BUffcqQLl1at4JK+2qY8JkpO9rGZASXwXSFBttcUt5RBljCg+1?=
 =?us-ascii?Q?dLq4gcfPGAXwCnSdaRZCepLuDCN3tLpnrTHxdvoZi3gzPKKkoreKfiTa9mx1?=
 =?us-ascii?Q?uwbfMDSJp4stQFFQDlEqWE7GGT5h25JrIO2EsXI6awipsKBpQHw9c0vDZBmo?=
 =?us-ascii?Q?w+K5AJAfhAnfuwIlVkwSGuv6qFn0YjZG8utnUIkYXXsJUksttwKG1Pjq/tXj?=
 =?us-ascii?Q?qTphuNpVKWtGEDw3Fis/XtI+TEkMw5B7g+HH1yfjfmpVbeTJRW7ItTQMh4vG?=
 =?us-ascii?Q?zQgYf7fe/+uY16FZxTaSa99xGMc=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	0Zt6ImTdqEkftAj+E4OV2AboM7+6+wFM+H++HDutfBGq77D07/d6KFocFPWDxRU3Prwa7ap3Vr+QQekCAf2W5sySh7R5WqgHH3UMSMyiVciAfn5zkML0AdzJb4jU8eu/lOxpX8f6Ps/JinIIKOPJ2RvShs3xQkMAwDc6FZY24/j0YXSbi8czPCOl1C0g5pCJWzO7Nl74/Sjb76AloxzGd5kVzpVOqtpATSLiiohfx32PL0XvXRBRTYrqz0q1nuo7lHtccEHUM9DZqXeHz6+0oZVOCD6mPVikDWs9DoatYoedYp79CFJJFAh6MKyUAQOvu0xF2xmYZ5bsUkZ7Ff6X3kGRPImvIwPARIcb5CaTBxEdrPSjS0hxUXJeFmYyAGDzpTwSP9XshjhYNz+6y9FUt3wQMBusCuA59QKa5SqjduSQHTo18AsIvlkgaX2/+Zwx
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 09:30:21.5251
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c7049442-da66-4c6a-c58c-08de67bdd8c5
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF0001AB58.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB4863
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263910-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[b-padhi@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,ti.com:dkim,ti.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: A71C610D92E
X-Rspamd-Action: no action

Several TI K3 SoCs like J7200, J721E, J721S2, J784S4 and J742S2 have a
R5F cluster in the MCU domain which is configured for LockStep mode at
the moment. The necessary support to use MCU R5F cluster in split mode
has been added in the bootloader. And the TI IPC firmware for the split
processors is already available public.

Now that the firmware dependent configs have been isolated out from
board level DTS to the TI IPC Firmware DTSI since
commit c5b645dbecd6 ("arm64: dts: ti: k3-j7200-ti-ipc-firmware: Refactor
IPC cfg into new dtsi"), switch this R5F cluster to Split mode by
default in all the boards using TI IPC Firmware config. This gives out
an extra general purpose R5F core free to run any applications as
required. Lockstep mode remains default in the SoC level dtsi, so
downstream board dts which do not use TI IPC Firmware config should not
be impacted by this switch.

Users who prefer to use the fault-tolerant lockstep mode with TI IPC
firmware config, can do that by setting `ti,cluster-mode` property to 1.

Signed-off-by: Beleswar Padhi <b-padhi@ti.com>
---
v2: Changelog:
[Andrew]:
 1. Posted this as a separate patch from the DT refactoring series[0]
[General]:
 2. Updated commit message to indicate the refactoring series has been
    merged, and now its time to switch the R5 Clusters into Split mode
    in the TI IPC Firmware config.

Link to v1:
https://lore.kernel.org/all/20250814223839.3256046-34-b-padhi@ti.com/

Testing Done:
1. Tested that this patch does not introduce any new warnings/errors.
2. Tested Split core functionality of MCU R5F Cluster in TI J784S4 EVM.

[0]: https://lore.kernel.org/all/32d4b3c2-4017-4ad2-8527-493b6d3b7ecb@ti.com

 arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi             | 1 +
 arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi             | 1 +
 arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi            | 1 +
 .../boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi     | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi
index 9477f1efbbc61..b66faa2543f71 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi
@@ -94,6 +94,7 @@ &main_timer2 {
 
 &mcu_r5fss0 {
 	status = "okay";
+	ti,cluster-mode = <0>;
 };
 
 &mcu_r5fss0_core0 {
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi
index 40c6cc99c4056..abd0d137d860d 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi
@@ -211,6 +211,7 @@ &main_timer15 {
 };
 
 &mcu_r5fss0 {
+	ti,cluster-mode = <0>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi
index ebab0cc580bbb..54ae8c86901ec 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi
@@ -183,6 +183,7 @@ &main_timer5 {
 };
 
 &mcu_r5fss0 {
+	ti,cluster-mode = <0>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi
index 455397227d4a1..ff9a296b927a8 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi
@@ -254,6 +254,7 @@ &main_timer9 {
 };
 
 &mcu_r5fss0 {
+	ti,cluster-mode = <0>;
 	status = "okay";
 };
 
-- 
2.34.1


