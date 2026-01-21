Return-Path: <devicetree+bounces-257731-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMr8AdZhcGkVXwAAu9opvQ
	(envelope-from <devicetree+bounces-257731-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:19:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 672A5516CA
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:19:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7E3E8424630
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:19:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 112B536167E;
	Wed, 21 Jan 2026 05:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="gvDgeptp"
X-Original-To: devicetree@vger.kernel.org
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011063.outbound.protection.outlook.com [40.107.208.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E853612FE;
	Wed, 21 Jan 2026 05:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.208.63
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768972751; cv=fail; b=eE3epynW95XbrY1XR6iceskwV3xsp8JZ8Hjity5dat7h1uhn0F0IH5piUDfNB+Xx6IXC9KI2g9ESZVGzT/UUqjnOQUNwCt1sokpSs7/yUpmchX9p0qZ821tk63MIvnLYb+8rvprKw1JzNK8c8JvT8c3EzoCGjPHVDeY1i37HYaI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768972751; c=relaxed/simple;
	bh=4muemYlCJNm9hdXiG74zBlw41Ul8j/F+rh9gKj87Uzc=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=VhBA47fVHWBdL27gQzq+MjzqAeOzllBBOoxGn3u4zWLik2ux0vUcyhnkPIcmmglU92rhJKXQtAZ+Ej2s9AJREq24NqOKnlC8rJ6ZBNofvf1c66BB/7Hyi74/DGHEZyvcH0WahS3J+t6vC96PXd/hhLWeX1WC9Hy14AijUcOKMIk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=gvDgeptp; arc=fail smtp.client-ip=40.107.208.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ae6wEYn6mGT/zMD2agq9M+3OndsdyjvzGWMIN7k7/Qj89X97KoBjpmzmrcNsMDvzP5t8tpgOEUUFdc3oBAhzIZFa7KNz+UqQdn1hvDoBrg3gEQyJ6Z+hNXMqB5G9kMTQg2Qn9xCY70RdfyU5ZoMH+bb4ZIxcKEN7to7SeX08Y5rVPBtFWx63MZuXXp6sajwjG6x+NFg/EDzXbXKczdt2Z9yQ1EHHfsYqgNPH1m7mm7NlZqA35iO9lylJpcjejBpL47bU85U1LgP/n7WUA5CHp041ecAbYAIw/ow6LFbkygQclt4JywI8V68hpmKWz4/8vI3dLnsiOQ/dQ/xi6KmFlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DJIXOJeCmidi6bs5hbTBETX+IBIlm53rUnHNw8LUAXY=;
 b=OyE2fPYD6DEapWSRIWmt1qmvSZmY0+P3I/pyfbPi1KZ+RwRtv8pCGw7lsmy5PA1StTA4sbtAV6+9i81zyJyQWSJe/ofNG/upmKJYj4PVZG7MRzUk9k6XCjeMlOz94aRmS6asHIZ672f8S+ZsCgLlgpWSsnfj6oMCcZ0dKa11OK/xoknnN3VMB6KZC7BSso2Be2dMHPq1sgW2nOlGPpjcRNTuXd92/rN3Vr4z06PfRKqCUw/vZIk6RJvYoC1a3y8WV5zHZjG6Ooa+w3XPajEy8ic2bMmVu9fRIVjLR3CbL6FoiPyFIGrwhXDQKg5+aRt7xZszl9+9wP83WOyidRhDzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DJIXOJeCmidi6bs5hbTBETX+IBIlm53rUnHNw8LUAXY=;
 b=gvDgeptpQ3f3cOmQwGCnHeOOnAKvCemePukiqkahs/y8lvf8hvafmRCVbsvor0H1HKXMOHeSDAb5LO8ofEpo+vUxxjG1x5TRjp1JY5uiudTU8ouCFN2sSbLVf46o9tmGtZIvPCcAoLeZfH/EhgJneAX9/tBfBinTUpoTKxoJp+4=
Received: from BL1P221CA0018.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:2c5::30)
 by BN0PR10MB5031.namprd10.prod.outlook.com (2603:10b6:408:117::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.10; Wed, 21 Jan
 2026 05:19:04 +0000
Received: from BL6PEPF0001AB52.namprd02.prod.outlook.com
 (2603:10b6:208:2c5:cafe::2b) by BL1P221CA0018.outlook.office365.com
 (2603:10b6:208:2c5::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.9 via Frontend Transport; Wed,
 21 Jan 2026 05:19:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 BL6PEPF0001AB52.mail.protection.outlook.com (10.167.241.4) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.4 via Frontend Transport; Wed, 21 Jan 2026 05:19:02 +0000
Received: from DFLE204.ent.ti.com (10.64.6.62) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 20 Jan
 2026 23:18:59 -0600
Received: from DFLE215.ent.ti.com (10.64.6.73) by DFLE204.ent.ti.com
 (10.64.6.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 20 Jan
 2026 23:18:59 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE215.ent.ti.com
 (10.64.6.73) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 20 Jan 2026 23:18:59 -0600
Received: from a-dutta.dhcp.ti.com (a-dutta.dhcp.ti.com [172.24.235.228])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60L5It9f2436581;
	Tue, 20 Jan 2026 23:18:56 -0600
From: Anurag Dutta <a-dutta@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <u-kumar1@ti.com>, <gehariprasath@ti.com>,
	<a-dutta@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-j721s2-common-proc-board: Add QSPI flash partition details
Date: Wed, 21 Jan 2026 10:48:55 +0530
Message-ID: <20260121051855.5890-1-a-dutta@ti.com>
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
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB52:EE_|BN0PR10MB5031:EE_
X-MS-Office365-Filtering-Correlation-Id: e03570fd-fae2-41b6-f133-08de58ac975d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?AnJ6kaJWMvf4en+VCmsrEWCJkC6/A1z9bHh2YTwsR5kUp0TEqi8p9eJRl6ld?=
 =?us-ascii?Q?2mFyN39RCTN+vxADmQVOvNmP/Q0W0r+uh19VgvaODkby28rmt1JoqewO8NqX?=
 =?us-ascii?Q?mtH+hFaIoFF8Mo+n8IrN3dt4rUwAcT+Xe1B3Ar948jv94m9ETCzRIcBm3nKK?=
 =?us-ascii?Q?gHGO5pDmpRR3yxe81Bewon0goou9ipU4blUIBHiZkdterymIq3YBTu/kK7Gb?=
 =?us-ascii?Q?M+kqHWj9EStOY33WfYz4wNQX3lvpuSNC0e2BzwIcz6FuwXOVeSbf+/TwI0Qy?=
 =?us-ascii?Q?UeZEYXtNXpJhBfQH0QPGHexbp5YcdIuBFb49MWnYqVCiDAhrY7Ry00IhIWwS?=
 =?us-ascii?Q?oUtC+eKyp8Ay+zp8YlXjIpDrD4v8VgMhms0NvxOJCHo8IJNDwqal6+Bptbg3?=
 =?us-ascii?Q?HiMYfLj+O7cVSnQV2sxwkA8J9/7R6UihMem3m6tqnTjR8++F/LfxuFmDboyt?=
 =?us-ascii?Q?FY1fJKHBIZY/D0hYeam2vc2DMGkyoHMGh0iUdM1r5pXpwTkE65r6SQ1SCVjY?=
 =?us-ascii?Q?tAvHilloZbLKku8qa9sYbR0qQbVMgtzAWz9WmUPeUDois80o3Zt+Q0uWsNoq?=
 =?us-ascii?Q?S06FB12iTO/JSJO4BpZJ19vr8Y2Ky1SzN41997NYJ7T3nLVyWMNbsszfuoW4?=
 =?us-ascii?Q?1CDTuiDG59CjRlT4Hfb/UEbGCH36NrwfSfSEzv+Rvhl/S7hgHBq8BaqHrvm2?=
 =?us-ascii?Q?b4l7u82rzsc1Rgn58Xh7GJgyaTW4y0lunWhWzHaD3u4izkiwLht0kHvq68/H?=
 =?us-ascii?Q?HXILixmWzYMlVSLB/wkr3E2DmDdD2hsDgqnTaRFTdf8i3Z0/Qbr8n3Wfa/EA?=
 =?us-ascii?Q?UPug5eeIn8L0hz1F5u8J2WHU+eAeWB4PFTP1BhH7flFmSaaLUbyccxntJr72?=
 =?us-ascii?Q?I4xHauluLLAUcYek3fJaBuLEBDGWT7qE+F0MknDesRf5DXRNW7WTyB2Pwg4d?=
 =?us-ascii?Q?0t8f8Xat0hrSVMg3XkXG1vIaVjSG/UEQZYX03kosM8vSreGR2sOQ4r3zPiSt?=
 =?us-ascii?Q?cKK4CqeHA3zOj+zCRy8n5U5IN7mfoXuXolYzzOVrRQCL2GNoCMmQkQxqjNjt?=
 =?us-ascii?Q?vJ+90ou3nS57nNaNbLtiDtV6/0TB0+80D5pQSxIQGaYaosVLiL2NVYnZZQpw?=
 =?us-ascii?Q?TK8SxicugHtky0LNYcel+wUEP4MFR939k31kufcOe3QOZizxxzlXDF7VK/M1?=
 =?us-ascii?Q?avgTU/7DT9yHNMmQMIwojtw+Ru+znkDIAMbIlcVRZ9Et9MtYlBceajPjB0wW?=
 =?us-ascii?Q?J9hvuxaxeSQLCAAxg31jO0LLtbb52US2KqUVr6dpM+JCEl4WracA0FuZkLCA?=
 =?us-ascii?Q?pSkq4OySuJINIaGuXNRXp07LeiPKYl02BuEPu8BMD33sjXyZJdyaza6LjKOX?=
 =?us-ascii?Q?P2gQdJ9O1KdzTpNncTMh9huD7oxQHiEMq64lyAR6fd3OStWktQ98KfpmeyT6?=
 =?us-ascii?Q?QKOb52/XfImrHUOC+4QWjOxmTRsb8mHy1RM1Uiz3DviZh7AOLZnopMZc4Zxx?=
 =?us-ascii?Q?qmU5hogcDizD7qbZUo6qNrL/XNRp2Pfm3JMCQIlVBUcY9GbC+dT5s49h13Zi?=
 =?us-ascii?Q?C02mg27Elbm5xwYNqT2hNuAjcUBnaPRomOp0efvimiRzVESLV5/GYNYOZPTf?=
 =?us-ascii?Q?E+JGeBdl653QtoQnM71HXHadSfj972Wd6An7/ARFTbexHuwv6CQ9HatmndvB?=
 =?us-ascii?Q?7LmPFw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 05:19:02.9052
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e03570fd-fae2-41b6-f133-08de58ac975d
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF0001AB52.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5031
X-Spamd-Result: default: False [1.54 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[ti.com,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257731-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a-dutta@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 672A5516CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

J721S2 EVM has MT25QU512AB 64 MiB Quad SPI NOR flash connected
to OSPI1. Add the partition information as per bootloader.

Signed-off-by: Anurag Dutta <a-dutta@ti.com>
---
Test logs: https://gist.github.com/anuragdutta731/b65f63f22c69317d714b65a201438cbc 

 .../dts/ti/k3-j721s2-common-proc-board.dts    | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
index 4fea99519113..7faf9367dbb2 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
@@ -530,6 +530,47 @@ flash@0 {
 		cdns,tchsh-ns = <60>;
 		cdns,tslch-ns = <60>;
 		cdns,read-delay = <2>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "qspi.tiboot3";
+				reg = <0x0 0x80000>;
+			};
+
+			partition@80000 {
+				label = "qspi.tispl";
+				reg = <0x80000 0x200000>;
+			};
+
+			partition@280000 {
+				label = "qspi.u-boot";
+				reg = <0x280000 0x400000>;
+			};
+
+			partition@680000 {
+				label = "qspi.env";
+				reg = <0x680000 0x40000>;
+			};
+
+			partition@6c0000 {
+				label = "qspi.env.backup";
+				reg = <0x6c0000 0x40000>;
+			};
+
+			partition@800000 {
+				label = "qspi.rootfs";
+				reg = <0x800000 0x37c0000>;
+			};
+
+			partition@3fc0000 {
+				label = "qspi.phypattern";
+				reg = <0x3fc0000 0x40000>;
+			};
+		};
 	};
 };
 
-- 
2.34.1


