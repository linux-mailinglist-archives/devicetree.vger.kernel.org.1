Return-Path: <devicetree+bounces-43121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71679859505
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 07:31:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EBBC1F21342
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 06:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BC834C6D;
	Sun, 18 Feb 2024 06:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="Sw/yWBQd"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2075.outbound.protection.outlook.com [40.107.20.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B998163B9;
	Sun, 18 Feb 2024 06:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.75
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708237869; cv=fail; b=K9xnAh/dKrSm2Nxswckh6msKFbZVSu0aOBZtnoC0IgFKd6h3OYvV88Ble0ZMaCWqqW5PW/alnSXEfFkCLcSBD96micxVJtdrdErckX7nXGOHyr0J+CJw00JVFc426oQvITXzAbKfJuR9yHJJy3PCOej9/9yZPUxjVSNBUJdOIGs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708237869; c=relaxed/simple;
	bh=+f166lGDTa2j5l2vvZSv/EG6dhOOMwOOT+xIfM46lvM=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=pD/8tRIaU82HKV8QtjSShqDc+hxWb87GlvyiOlNfjGUbimTErTcUGMRqDfeFb23HKzRQ4lJWCFiruiQSDfG+MJ9SpcJ60X5+6c2ujCzcaXqPJSIjvZUmcW0kAE3Y6Uct7n+pOmAUQ+e6IFv+JJh3p0TpIxcQYHkwk8tC7Qy9AuI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (1024-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=Sw/yWBQd; arc=fail smtp.client-ip=40.107.20.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GnBcXmffEv2KOfaDgqZX4vdXEsNK4ZZk6v6rlUEvcX2O91jI2FCmJcyFTQy2158B7IrcpV/hwywlfMy/Aghmix/X0VPXvSULCB2b3i9R407EOxYp34/X/rPLbOYBzgSu838Jj9cwke300s6J7NlfEB1M6gwWA1h+AwosxY9URXV0ZNq7fiHK+V/Jl6czSOs79hIEQxiuiUQmSTUxbjvMR1gILrbVV/GLbSn1wktK0a2fPD9TNRYH1kF1+5NojZX5rHR1PVfOP4enRIZ0ekqYCE6AZfyifTS5h70REpEJFBNvIvPvPoC0QiVIP5k9m440KL/t+OUtcC+7x82gMEQlmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RIcsuXeZpt1YWuC/P8vNkPEorzKo006DaXKjm6crxxU=;
 b=dnRngmNExTCMhPI1jZlrK3XgxcBrzI0MV5qbpXr8FfRAvS2YeXYtfThxOnyALJCWFRLDJgiBX+mHWvpzv5VxxU/DLs3kwSCoW2J65wd+lLV+5sv8AfHGwb/3ktKVwigCMVGBDId6BCp+h2hrMxsS8vw7vJmAhkGUbyQLQEwRKX00pms9ON2dbjl1Ie0dUwRGqrnqxLZNol3FC024AmFj1jcXntjoPIs2ByTq0cM+Uwm9G829KF1rwqdeAlJLMoLIO4hyFgssGH2hNN8Y3hcvODrUoR6C1gq19XGnAM5RFBHpuK4jdXOd+DQIwbDs653rkQ681Cv6X5NDWsxk71F8JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RIcsuXeZpt1YWuC/P8vNkPEorzKo006DaXKjm6crxxU=;
 b=Sw/yWBQdN0ioKuwAU5mS6rVrSJwiZGqpiZJuVQ7NBsU3ysGh1Sb563SatuwjOq/2UzqzyD1SuQ4JFNHktch7EjCVp3y8JbkyJKo9F7SAYgcUsmaDrzLVsfhaCzgf7/Ynclby4/ftkY6j6Qn+rY39weMXd6r05OqOaT5/Pyc26eQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by AM9PR04MB8321.eurprd04.prod.outlook.com (2603:10a6:20b:3ed::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.34; Sun, 18 Feb
 2024 06:31:02 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::4ac3:3559:4200:38e1]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::4ac3:3559:4200:38e1%4]) with mapi id 15.20.7292.033; Sun, 18 Feb 2024
 06:31:02 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Date: Sun, 18 Feb 2024 14:38:52 +0800
Subject: [PATCH 2/3] arm64: dts: freescale: add i.MX95 basic dtsi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240218-imx95-dts-v1-2-2959f89f2018@nxp.com>
References: <20240218-imx95-dts-v1-0-2959f89f2018@nxp.com>
In-Reply-To: <20240218-imx95-dts-v1-0-2959f89f2018@nxp.com>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Li Yang <leoyang.li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708238355; l=48129;
 i=peng.fan@nxp.com; s=20230812; h=from:subject:message-id;
 bh=o4sMpw+7jAolpeqkWSEnP5kprUgwHwkwMYNY05yn+f4=;
 b=/3O/UHPXP973YmuMWI8F4qL+f5q/onngmyUzSBogo/o3s5IXd58pFVbSBFE5nkuwMQNLMMQqt
 WRji5AdypNvDjblHqzXfCmV8BTU4gKz4jsnB0qEvqt29UPLxpvAwARL
X-Developer-Key: i=peng.fan@nxp.com; a=ed25519;
 pk=I4sJg7atIT1g63H7bb5lDRGR2gJW14RKDD0wFL8TT1g=
X-ClientProxiedBy: SG2PR03CA0127.apcprd03.prod.outlook.com
 (2603:1096:4:91::31) To DU0PR04MB9417.eurprd04.prod.outlook.com
 (2603:10a6:10:358::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR04MB9417:EE_|AM9PR04MB8321:EE_
X-MS-Office365-Filtering-Correlation-Id: bb9b13ff-3742-4313-b386-08dc304b2d18
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	7T1imnRrl17ktb3tj5JPaft9DlBaaKfU5vg0fjenUci76JHbGD389mVUjGy57LvUbuLdmVZUEXCQ3Kgfvzurja835kIJHonflEmnLmDO618TVfZUKsP5ynMoa1vaNK6IyQkKeKZwquvEk6XqNJGy5jMDbUbJvlG+uz7Nwpdaq/l4CByYlyofbPePRLH1nG+l6iRCIKxZCqPW7aZ/vWai9quWK2Jz9n9lUfBuLzj3DMxC9+iVGWADq7tgTifHp014BkcDdecXQ3Me3n3dmwuOLO4H0zK5E7X/YBP60/VVvJto0dIf9cPQ/Bgnu0NN6V938US/56hbOc2vM0Arp2CYVSQRF8cYtrHPuyeFjM28uNPChcnMS3mIp4zsKQ0v+eToVsZjgjEnE8f5dFC9FaIqDD94wLbEs9mgJf9zElZl+cMNd6oUH5MSXUePmLrf49iiJQAsrzaPuz15PvvdGHGz11NwPCOqawrUkmYwmTgjO+ATpLxURtg58oJB1HzIBrL/Kh+Vk6cfIGLDK0gX4PRy+eiXFTGbjRtwOins8PbUmfQrSMITIof7FJ2wUaZhuwE8y9eDJ6TRSclJ4r3yGEyqHs/Rl7btOcpbnEjVxeQVt1wMcohAKMHdCVJ0R2sK2kPz
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(136003)(366004)(396003)(346002)(376002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(38100700002)(2906002)(7416002)(30864003)(5660300002)(4326008)(8676002)(8936002)(86362001)(41300700001)(316002)(66556008)(66476007)(66946007)(6486002)(6512007)(9686003)(478600001)(6666004)(110136005)(6506007)(52116002)(83380400001)(38350700005)(36756003)(26005)(579004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?b2x4emJjSCtHNGE2Lzh0N0tNbU0vbUlqZ1RGVCs4L09yd3YxQ1VaakxkbGp0?=
 =?utf-8?B?Vnl6c3p0WE9JMEllNHJra1pTbDBnZDZuTFNsUitaMjBJV2FsMjlJTkV5ZzFC?=
 =?utf-8?B?QkRma284ZWlEMjc5STExQWVHbjJJeGxEaFlSRTVGN2NWOThMOWF5U1VjVFNj?=
 =?utf-8?B?R3crQ0VIdjFkajdQZnFrNEJHREpPWHBCc2dEUE5LZWtkbm8yZ290M0dDbHdj?=
 =?utf-8?B?NGdzOTBpemRvRVFjcER3NCtqMkxsMnl6NUNiVGdFTFJGMiszT1dCcWlDTS9u?=
 =?utf-8?B?clNLRzN0S1lXRkZMd2o3NUxHYkNYYWd1Yno4Q3BNRERkQlVBbDdibGlWaFR0?=
 =?utf-8?B?RXJzSnF1enVnVHVWcnVMSk03U080SWlaaW9yM3hpZjhYakc0VnF3M05PQ2pU?=
 =?utf-8?B?TFEzaUtraEFZR25oa1FwbDAxNllUeVcveHBYbVlWR2hoZDhjcTBEaW9KTXJv?=
 =?utf-8?B?MTlXK0pKcy9SM3d6eVFTK2pCRG9pcjlDM1ZQc09hK0ZKQTBjWHdETCtlVTZj?=
 =?utf-8?B?RjM3eHQzNG1VL3ZDb0FwUkpTeldqY2plbUVmRVY2c0RMM2NkMXgvR1JGUUhu?=
 =?utf-8?B?Z1NXdFRkcmNvMy8xZ01SdHlzSWtVRE45bHBJckdYQU5nN1lLbENzTzljeG5r?=
 =?utf-8?B?YmtGZlpHZ21aL0VTTy9IMUhraFNISU5RamVLTTBFWmd3dU1WVWVvb2NhaGk4?=
 =?utf-8?B?akYvVmNPSTVxZG9lTkhDVUxWWThPdEZORVpVYWZHTS9GcTMxUDJCMndmV2kv?=
 =?utf-8?B?dFR1QkVvalpGVXZSWHVJQnFHTXhBUHdKSDBMY3YzaEVrZzJEenFUYWVmZHVK?=
 =?utf-8?B?eEJMenl2aWwrMjhEcEwrWFlCOU9tajFLdXFvVkh3QUx0VFhVa2dPdG01aUxk?=
 =?utf-8?B?VHh0akN3dXdrY1l1ZGNzZTViZzY2QVpYc016Q005VHdSUUdWVVNyR1ZCc3gr?=
 =?utf-8?B?NXFycVNraU1iaVlLTDFPQjdnQzdwbnRMQ3R0eG53ZFZtR0RVWHpCOEtXaXhF?=
 =?utf-8?B?U2lyeVJFLzJYVk1uYkJGc0hOU2E2Vm1CS2tlL2o3K0VXL0JEZ0hvNytBY3A1?=
 =?utf-8?B?VzU4UnhXaGIyQUFmdFFTZFhESFRLSXhvY0JscmUrQnNqQ1VielMvQ1REZ3Z0?=
 =?utf-8?B?S0VuV3VscGtJaHk1QmhCNmdiQmNXYjYxdStyTE9VYTN6VHFZQ0YwT01rSVVD?=
 =?utf-8?B?TE5TaDI1RFpaazV6UVVkYjYyL3JvUmFYOFhTTDBaQnBZbVpweUFXRDhXMXpO?=
 =?utf-8?B?Wld6dHo3RlFWR1VUSzZpK21INmRLdm9pNDdqODlpd3k0OUY5bDRQbk02a3JI?=
 =?utf-8?B?UkRnN3FhZlBYVWNaZXdDUFZNN1FmSEN4b2dBc0RJQ2wwbDY2RkRRQ0l0MXdm?=
 =?utf-8?B?aTJ3dUJPaTFXSWZSY2NmdGJkRXE3amFtOUFxaE5Ld09ObW5GT29JTzd4YWpF?=
 =?utf-8?B?WlFpdGhpcHhrRnFRcVZDQmI4M1I0NWxySDVhalYyTzBKSVFvWGRxZTl0LzI0?=
 =?utf-8?B?aFpSclVrODk2MHQ3QmNKMjgxd0ZBeldpOFFXYS80R2JSa0lCUHZIMmlpTURx?=
 =?utf-8?B?WmVZK0xBanZ3c1E0My9ZQm1vOWV2OGdXNnRSWDhqNHJEQzdsTmsrNHFWRVRs?=
 =?utf-8?B?dFNXSGI2d1JBeFUzZG5ncjJlcmh1M01wTmF5Qm9lTW5pOE5PcDdXL3E4WG1r?=
 =?utf-8?B?cm9IRDZ6bXMzOFZZZTJhV1hmZ1lMOWRBd2NQQmVZZ3JUV3BSMzJnaUUzVnpD?=
 =?utf-8?B?UFhkOFZ4OG04WFBTcGkwRzNjWHNna2tYRFVvZVpJb2owR1o2YXBTQjI3Y0Zh?=
 =?utf-8?B?TXpIb2xud1VSV0pqYmordVVydXJiMjF3c0h4NmFIcDdMa01jVkgzY0hVUDJX?=
 =?utf-8?B?clY4WVFZUUFENnUwdXpZL0F6VFNybWNNcGNGSm9HbnE2ODVhemFZdVpQLzQ5?=
 =?utf-8?B?UGRKc3lqU2RNcnYzZU1Mc09RTExiS1hjVlR4QnRUVFJYd0dqNDJKamtlazho?=
 =?utf-8?B?UUpvSFU5SklVVit0V3FrMXZiU3VNQTFVOW1NNTdmd1RCNWhXU0ozSHFnQVAx?=
 =?utf-8?B?blZyQVNDamFlMXdsVjZXYndCRkppUW1GVlY0ZnVGZ2tCaitETEg4QnM4NUhr?=
 =?utf-8?Q?GDDeBNwlj2463P79XZS/Z5sOY?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb9b13ff-3742-4313-b386-08dc304b2d18
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2024 06:31:01.9780
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6msDMkkFbcfM8RT+bY1yS8adOYS6nnrFIcJQJ96cG5iB9FK0A5gcVYTTdN6TqHm/Eg4Oqs4Ci0gi2+0K41GsxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8321

From: Peng Fan <peng.fan@nxp.com>

i.MX95 features 6 A55 Cores, ARM Mali GPU, ISP, ML acceleration NPU,
and Edgelock secure enclave security. This patch is to add a minimal
dtsi, with cpu cores, coresight, scmi, gic, uart, mu, sdhc, lpi2c added.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx95-clock.h |  187 +++++
 arch/arm64/boot/dts/freescale/imx95-power.h |   55 ++
 arch/arm64/boot/dts/freescale/imx95.dtsi    | 1215 +++++++++++++++++++++++++++
 3 files changed, 1457 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95-clock.h b/arch/arm64/boot/dts/freescale/imx95-clock.h
new file mode 100644
index 000000000000..939655f0414e
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-clock.h
@@ -0,0 +1,187 @@
+/* SPDX-License-Identifier: GPL-2.0-only OR MIT */
+/*
+ * Copyright 2024 NXP
+ */
+
+#ifndef __DT_BINDINGS_CLOCK_IMX95_H
+#define __DT_BINDINGS_CLOCK_IMX95_H
+
+/* The index should match i.MX95 SCMI Firmware */
+#define IMX95_CLK_32K                       1
+#define IMX95_CLK_24M                       2
+#define IMX95_CLK_FRO                       3
+#define IMX95_CLK_SYSPLL1_VCO               4
+#define IMX95_CLK_SYSPLL1_PFD0_UNGATED      5
+#define IMX95_CLK_SYSPLL1_PFD0              6
+#define IMX95_CLK_SYSPLL1_PFD0_DIV2         7
+#define IMX95_CLK_SYSPLL1_PFD1_UNGATED      8
+#define IMX95_CLK_SYSPLL1_PFD1              9
+#define IMX95_CLK_SYSPLL1_PFD1_DIV2         10
+#define IMX95_CLK_SYSPLL1_PFD2_UNGATED      11
+#define IMX95_CLK_SYSPLL1_PFD2              12
+#define IMX95_CLK_SYSPLL1_PFD2_DIV2         13
+#define IMX95_CLK_AUDIOPLL1_VCO             14
+#define IMX95_CLK_AUDIOPLL1                 15
+#define IMX95_CLK_AUDIOPLL2_VCO             16
+#define IMX95_CLK_AUDIOPLL2                 17
+#define IMX95_CLK_VIDEOPLL1_VCO             18
+#define IMX95_CLK_VIDEOPLL1                 19
+#define IMX95_CLK_RESERVED20                20
+#define IMX95_CLK_RESERVED21                21
+#define IMX95_CLK_RESERVED22                22
+#define IMX95_CLK_RESERVED23                23
+#define IMX95_CLK_ARMPLL_VCO                24
+#define IMX95_CLK_ARMPLL_PFD0_UNGATED       25
+#define IMX95_CLK_ARMPLL_PFD0               26
+#define IMX95_CLK_ARMPLL_PFD1_UNGATED       27
+#define IMX95_CLK_ARMPLL_PFD1               28
+#define IMX95_CLK_ARMPLL_PFD2_UNGATED       29
+#define IMX95_CLK_ARMPLL_PFD2               30
+#define IMX95_CLK_ARMPLL_PFD3_UNGATED       31
+#define IMX95_CLK_ARMPLL_PFD3               32
+#define IMX95_CLK_DRAMPLL_VCO               33
+#define IMX95_CLK_DRAMPLL                   34
+#define IMX95_CLK_HSIOPLL_VCO               35
+#define IMX95_CLK_HSIOPLL                   36
+#define IMX95_CLK_LDBPLL_VCO                37
+#define IMX95_CLK_LDBPLL                    38
+#define IMX95_CLK_EXT1                      39
+#define IMX95_CLK_EXT2                      40
+
+#define IMX95_CCM_NUM_CLK_SRC               41
+
+#define IMX95_CLK_ADC                      (IMX95_CCM_NUM_CLK_SRC + 0)
+#define IMX95_CLK_TMU                      (IMX95_CCM_NUM_CLK_SRC + 1)
+#define IMX95_CLK_BUSAON                   (IMX95_CCM_NUM_CLK_SRC + 2)
+#define IMX95_CLK_CAN1                     (IMX95_CCM_NUM_CLK_SRC + 3)
+#define IMX95_CLK_I3C1                     (IMX95_CCM_NUM_CLK_SRC + 4)
+#define IMX95_CLK_I3C1SLOW                 (IMX95_CCM_NUM_CLK_SRC + 5)
+#define IMX95_CLK_LPI2C1                   (IMX95_CCM_NUM_CLK_SRC + 6)
+#define IMX95_CLK_LPI2C2                   (IMX95_CCM_NUM_CLK_SRC + 7)
+#define IMX95_CLK_LPSPI1                   (IMX95_CCM_NUM_CLK_SRC + 8)
+#define IMX95_CLK_LPSPI2                   (IMX95_CCM_NUM_CLK_SRC + 9)
+#define IMX95_CLK_LPTMR1                   (IMX95_CCM_NUM_CLK_SRC + 10)
+#define IMX95_CLK_LPUART1                  (IMX95_CCM_NUM_CLK_SRC + 11)
+#define IMX95_CLK_LPUART2                  (IMX95_CCM_NUM_CLK_SRC + 12)
+#define IMX95_CLK_M33                      (IMX95_CCM_NUM_CLK_SRC + 13)
+#define IMX95_CLK_M33SYSTICK               (IMX95_CCM_NUM_CLK_SRC + 14)
+#define IMX95_CLK_MQS1                     (IMX95_CCM_NUM_CLK_SRC + 15)
+#define IMX95_CLK_PDM                      (IMX95_CCM_NUM_CLK_SRC + 16)
+#define IMX95_CLK_SAI1                     (IMX95_CCM_NUM_CLK_SRC + 17)
+#define IMX95_CLK_SENTINEL                 (IMX95_CCM_NUM_CLK_SRC + 18)
+#define IMX95_CLK_TPM2                     (IMX95_CCM_NUM_CLK_SRC + 19)
+#define IMX95_CLK_TSTMR1                   (IMX95_CCM_NUM_CLK_SRC + 20)
+#define IMX95_CLK_CAMAPB                   (IMX95_CCM_NUM_CLK_SRC + 21)
+#define IMX95_CLK_CAMAXI                   (IMX95_CCM_NUM_CLK_SRC + 22)
+#define IMX95_CLK_CAMCM0                   (IMX95_CCM_NUM_CLK_SRC + 23)
+#define IMX95_CLK_CAMISI                   (IMX95_CCM_NUM_CLK_SRC + 24)
+#define IMX95_CLK_MIPIPHYCFG               (IMX95_CCM_NUM_CLK_SRC + 25)
+#define IMX95_CLK_MIPIPHYPLLBYPASS         (IMX95_CCM_NUM_CLK_SRC + 26)
+#define IMX95_CLK_MIPIPHYPLLREF            (IMX95_CCM_NUM_CLK_SRC + 27)
+#define IMX95_CLK_MIPITESTBYTE             (IMX95_CCM_NUM_CLK_SRC + 28)
+#define IMX95_CLK_A55                      (IMX95_CCM_NUM_CLK_SRC + 29)
+#define IMX95_CLK_A55MTRBUS                (IMX95_CCM_NUM_CLK_SRC + 30)
+#define IMX95_CLK_A55PERIPH                (IMX95_CCM_NUM_CLK_SRC + 31)
+#define IMX95_CLK_DRAMALT                  (IMX95_CCM_NUM_CLK_SRC + 32)
+#define IMX95_CLK_DRAMAPB                  (IMX95_CCM_NUM_CLK_SRC + 33)
+#define IMX95_CLK_DISPAPB                  (IMX95_CCM_NUM_CLK_SRC + 34)
+#define IMX95_CLK_DISPAXI                  (IMX95_CCM_NUM_CLK_SRC + 35)
+#define IMX95_CLK_DISPDP                   (IMX95_CCM_NUM_CLK_SRC + 36)
+#define IMX95_CLK_DISPOCRAM                (IMX95_CCM_NUM_CLK_SRC + 37)
+#define IMX95_CLK_DISPUSB31                (IMX95_CCM_NUM_CLK_SRC + 38)
+#define IMX95_CLK_DISP1PIX                 (IMX95_CCM_NUM_CLK_SRC + 39)
+#define IMX95_CLK_DISP2PIX                 (IMX95_CCM_NUM_CLK_SRC + 40)
+#define IMX95_CLK_DISP3PIX                 (IMX95_CCM_NUM_CLK_SRC + 41)
+#define IMX95_CLK_GPUAPB                   (IMX95_CCM_NUM_CLK_SRC + 42)
+#define IMX95_CLK_GPU                      (IMX95_CCM_NUM_CLK_SRC + 43)
+#define IMX95_CLK_HSIOACSCAN480M           (IMX95_CCM_NUM_CLK_SRC + 44)
+#define IMX95_CLK_HSIOACSCAN80M            (IMX95_CCM_NUM_CLK_SRC + 45)
+#define IMX95_CLK_HSIO                     (IMX95_CCM_NUM_CLK_SRC + 46)
+#define IMX95_CLK_HSIOPCIEAUX              (IMX95_CCM_NUM_CLK_SRC + 47)
+#define IMX95_CLK_HSIOPCIETEST160M         (IMX95_CCM_NUM_CLK_SRC + 48)
+#define IMX95_CLK_HSIOPCIETEST400M         (IMX95_CCM_NUM_CLK_SRC + 49)
+#define IMX95_CLK_HSIOPCIETEST500M         (IMX95_CCM_NUM_CLK_SRC + 50)
+#define IMX95_CLK_HSIOUSBTEST50M           (IMX95_CCM_NUM_CLK_SRC + 51)
+#define IMX95_CLK_HSIOUSBTEST60M           (IMX95_CCM_NUM_CLK_SRC + 52)
+#define IMX95_CLK_BUSM7                    (IMX95_CCM_NUM_CLK_SRC + 53)
+#define IMX95_CLK_M7                       (IMX95_CCM_NUM_CLK_SRC + 54)
+#define IMX95_CLK_M7SYSTICK                (IMX95_CCM_NUM_CLK_SRC + 55)
+#define IMX95_CLK_BUSNETCMIX               (IMX95_CCM_NUM_CLK_SRC + 56)
+#define IMX95_CLK_ENET                     (IMX95_CCM_NUM_CLK_SRC + 57)
+#define IMX95_CLK_ENETPHYTEST200M          (IMX95_CCM_NUM_CLK_SRC + 58)
+#define IMX95_CLK_ENETPHYTEST500M          (IMX95_CCM_NUM_CLK_SRC + 59)
+#define IMX95_CLK_ENETPHYTEST667M          (IMX95_CCM_NUM_CLK_SRC + 60)
+#define IMX95_CLK_ENETREF                  (IMX95_CCM_NUM_CLK_SRC + 61)
+#define IMX95_CLK_ENETTIMER1               (IMX95_CCM_NUM_CLK_SRC + 62)
+#define IMX95_CLK_MQS2                     (IMX95_CCM_NUM_CLK_SRC + 63)
+#define IMX95_CLK_SAI2                     (IMX95_CCM_NUM_CLK_SRC + 64)
+#define IMX95_CLK_NOCAPB                   (IMX95_CCM_NUM_CLK_SRC + 65)
+#define IMX95_CLK_NOC                      (IMX95_CCM_NUM_CLK_SRC + 66)
+#define IMX95_CLK_NPUAPB                   (IMX95_CCM_NUM_CLK_SRC + 67)
+#define IMX95_CLK_NPU                      (IMX95_CCM_NUM_CLK_SRC + 68)
+#define IMX95_CLK_CCMCKO1                  (IMX95_CCM_NUM_CLK_SRC + 69)
+#define IMX95_CLK_CCMCKO2                  (IMX95_CCM_NUM_CLK_SRC + 70)
+#define IMX95_CLK_CCMCKO3                  (IMX95_CCM_NUM_CLK_SRC + 71)
+#define IMX95_CLK_CCMCKO4                  (IMX95_CCM_NUM_CLK_SRC + 72)
+#define IMX95_CLK_VPUAPB                   (IMX95_CCM_NUM_CLK_SRC + 73)
+#define IMX95_CLK_VPU                      (IMX95_CCM_NUM_CLK_SRC + 74)
+#define IMX95_CLK_VPUDSP                   (IMX95_CCM_NUM_CLK_SRC + 75)
+#define IMX95_CLK_VPUJPEG                  (IMX95_CCM_NUM_CLK_SRC + 76)
+#define IMX95_CLK_AUDIOXCVR                (IMX95_CCM_NUM_CLK_SRC + 77)
+#define IMX95_CLK_BUSWAKEUP                (IMX95_CCM_NUM_CLK_SRC + 78)
+#define IMX95_CLK_CAN2                     (IMX95_CCM_NUM_CLK_SRC + 79)
+#define IMX95_CLK_CAN3                     (IMX95_CCM_NUM_CLK_SRC + 80)
+#define IMX95_CLK_CAN4                     (IMX95_CCM_NUM_CLK_SRC + 81)
+#define IMX95_CLK_CAN5                     (IMX95_CCM_NUM_CLK_SRC + 82)
+#define IMX95_CLK_FLEXIO1                  (IMX95_CCM_NUM_CLK_SRC + 83)
+#define IMX95_CLK_FLEXIO2                  (IMX95_CCM_NUM_CLK_SRC + 84)
+#define IMX95_CLK_FLEXSPI1                 (IMX95_CCM_NUM_CLK_SRC + 85)
+#define IMX95_CLK_I3C2                     (IMX95_CCM_NUM_CLK_SRC + 86)
+#define IMX95_CLK_I3C2SLOW                 (IMX95_CCM_NUM_CLK_SRC + 87)
+#define IMX95_CLK_LPI2C3                   (IMX95_CCM_NUM_CLK_SRC + 88)
+#define IMX95_CLK_LPI2C4                   (IMX95_CCM_NUM_CLK_SRC + 89)
+#define IMX95_CLK_LPI2C5                   (IMX95_CCM_NUM_CLK_SRC + 90)
+#define IMX95_CLK_LPI2C6                   (IMX95_CCM_NUM_CLK_SRC + 91)
+#define IMX95_CLK_LPI2C7                   (IMX95_CCM_NUM_CLK_SRC + 92)
+#define IMX95_CLK_LPI2C8                   (IMX95_CCM_NUM_CLK_SRC + 93)
+#define IMX95_CLK_LPSPI3                   (IMX95_CCM_NUM_CLK_SRC + 94)
+#define IMX95_CLK_LPSPI4                   (IMX95_CCM_NUM_CLK_SRC + 95)
+#define IMX95_CLK_LPSPI5                   (IMX95_CCM_NUM_CLK_SRC + 96)
+#define IMX95_CLK_LPSPI6                   (IMX95_CCM_NUM_CLK_SRC + 97)
+#define IMX95_CLK_LPSPI7                   (IMX95_CCM_NUM_CLK_SRC + 98)
+#define IMX95_CLK_LPSPI8                   (IMX95_CCM_NUM_CLK_SRC + 99)
+#define IMX95_CLK_LPTMR2                   (IMX95_CCM_NUM_CLK_SRC + 100)
+#define IMX95_CLK_LPUART3                  (IMX95_CCM_NUM_CLK_SRC + 101)
+#define IMX95_CLK_LPUART4                  (IMX95_CCM_NUM_CLK_SRC + 102)
+#define IMX95_CLK_LPUART5                  (IMX95_CCM_NUM_CLK_SRC + 103)
+#define IMX95_CLK_LPUART6                  (IMX95_CCM_NUM_CLK_SRC + 104)
+#define IMX95_CLK_LPUART7                  (IMX95_CCM_NUM_CLK_SRC + 105)
+#define IMX95_CLK_LPUART8                  (IMX95_CCM_NUM_CLK_SRC + 106)
+#define IMX95_CLK_SAI3                     (IMX95_CCM_NUM_CLK_SRC + 107)
+#define IMX95_CLK_SAI4                     (IMX95_CCM_NUM_CLK_SRC + 108)
+#define IMX95_CLK_SAI5                     (IMX95_CCM_NUM_CLK_SRC + 109)
+#define IMX95_CLK_SPDIF                    (IMX95_CCM_NUM_CLK_SRC + 110)
+#define IMX95_CLK_SWOTRACE                 (IMX95_CCM_NUM_CLK_SRC + 111)
+#define IMX95_CLK_TPM4                     (IMX95_CCM_NUM_CLK_SRC + 112)
+#define IMX95_CLK_TPM5                     (IMX95_CCM_NUM_CLK_SRC + 113)
+#define IMX95_CLK_TPM6                     (IMX95_CCM_NUM_CLK_SRC + 114)
+#define IMX95_CLK_TSTMR2                   (IMX95_CCM_NUM_CLK_SRC + 115)
+#define IMX95_CLK_USBPHYBURUNIN            (IMX95_CCM_NUM_CLK_SRC + 116)
+#define IMX95_CLK_USDHC1                   (IMX95_CCM_NUM_CLK_SRC + 117)
+#define IMX95_CLK_USDHC2                   (IMX95_CCM_NUM_CLK_SRC + 118)
+#define IMX95_CLK_USDHC3                   (IMX95_CCM_NUM_CLK_SRC + 119)
+#define IMX95_CLK_V2XPK                    (IMX95_CCM_NUM_CLK_SRC + 120)
+#define IMX95_CLK_WAKEUPAXI                (IMX95_CCM_NUM_CLK_SRC + 121)
+#define IMX95_CLK_XSPISLVROOT              (IMX95_CCM_NUM_CLK_SRC + 122)
+#define IMX95_CLK_SEL_EXT                  (IMX95_CCM_NUM_CLK_SRC + 123 + 0)
+#define IMX95_CLK_SEL_A55C0                (IMX95_CCM_NUM_CLK_SRC + 123 + 1)
+#define IMX95_CLK_SEL_A55C1                (IMX95_CCM_NUM_CLK_SRC + 123 + 2)
+#define IMX95_CLK_SEL_A55C2                (IMX95_CCM_NUM_CLK_SRC + 123 + 3)
+#define IMX95_CLK_SEL_A55C3                (IMX95_CCM_NUM_CLK_SRC + 123 + 4)
+#define IMX95_CLK_SEL_A55C4                (IMX95_CCM_NUM_CLK_SRC + 123 + 5)
+#define IMX95_CLK_SEL_A55C5                (IMX95_CCM_NUM_CLK_SRC + 123 + 6)
+#define IMX95_CLK_SEL_A55P                 (IMX95_CCM_NUM_CLK_SRC + 123 + 7)
+#define IMX95_CLK_SEL_DRAM                 (IMX95_CCM_NUM_CLK_SRC + 123 + 8)
+#define IMX95_CLK_SEL_TEMPSENSE            (IMX95_CCM_NUM_CLK_SRC + 123 + 9)
+
+#endif	/* __DT_BINDINGS_CLOCK_IMX95_H */
diff --git a/arch/arm64/boot/dts/freescale/imx95-power.h b/arch/arm64/boot/dts/freescale/imx95-power.h
new file mode 100644
index 000000000000..17be8a4cb96b
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-power.h
@@ -0,0 +1,55 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+/*
+ *  Copyright 2024 NXP
+ */
+
+#ifndef __DT_BINDINGS_IMX95_POWER_H__
+#define __DT_BINDINGS_IMX95_POWER_H__
+
+#define IMX95_PD_ANA		0
+#define IMX95_PD_AON		1
+#define IMX95_PD_BBSM		2
+#define IMX95_PD_CAMERA		3
+#define IMX95_PD_CCMSRCGPC	4
+#define IMX95_PD_A55C0		5
+#define IMX95_PD_A55C1		6
+#define IMX95_PD_A55C2		7
+#define IMX95_PD_A55C3		8
+#define IMX95_PD_A55C4		9
+#define IMX95_PD_A55C5		10
+#define IMX95_PD_A55P		11
+#define IMX95_PD_DDR		12
+#define IMX95_PD_DISPLAY	13
+#define IMX95_PD_GPU		14
+#define IMX95_PD_HSIO_TOP	15
+#define IMX95_PD_HSIO_WAON	16
+#define IMX95_PD_M7		17
+#define IMX95_PD_NETC		18
+#define IMX95_PD_NOC		19
+#define IMX95_PD_NPU		20
+#define IMX95_PD_VPU		21
+#define IMX95_PD_WAKEUP		22
+
+#define IMX95_PERF_ELE		0
+#define IMX95_PERF_M33		1
+#define IMX95_PERF_WAKEUP	2
+#define IMX95_PERF_M7		3
+#define IMX95_PERF_DRAM		4
+#define IMX95_PERF_HSIO		5
+#define IMX95_PERF_NPU		6
+#define IMX95_PERF_NOC		7
+#define IMX95_PERF_A55		8
+#define IMX95_PERF_GPU		9
+#define IMX95_PERF_VPU		10
+#define IMX95_PERF_CAM		11
+#define IMX95_PERF_DISP		12
+#define IMX95_PERF_A55PER	13
+#define IMX95_PERF_A55P		14
+#define IMX95_PERF_A55C0	15
+#define IMX95_PERF_A55C1	16
+#define IMX95_PERF_A55C2	17
+#define IMX95_PERF_A55C3	18
+#define IMX95_PERF_A55C4	19
+#define IMX95_PERF_A55C5	20
+
+#endif
diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
new file mode 100644
index 000000000000..5b5b29a9aff5
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
@@ -0,0 +1,1215 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2024 NXP
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/thermal/thermal.h>
+
+#include "imx95-clock.h"
+#include "imx95-power.h"
+
+/ {
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		gpio0 = &gpio1;
+		gpio1 = &gpio2;
+		gpio2 = &gpio3;
+		gpio3 = &gpio4;
+		gpio4 = &gpio5;
+		i2c0 = &lpi2c1;
+		i2c1 = &lpi2c2;
+		i2c2 = &lpi2c3;
+		i2c3 = &lpi2c4;
+		i2c4 = &lpi2c5;
+		i2c5 = &lpi2c6;
+		i2c6 = &lpi2c7;
+		i2c7 = &lpi2c8;
+		mmc0 = &usdhc1;
+		mmc1 = &usdhc2;
+		mmc2 = &usdhc3;
+		serial0 = &lpuart1;
+		serial1 = &lpuart2;
+		serial2 = &lpuart3;
+		serial3 = &lpuart4;
+		serial4 = &lpuart5;
+		serial5 = &lpuart6;
+		serial6 = &lpuart7;
+		serial7 = &lpuart8;
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		idle-states {
+			entry-method = "psci";
+
+			cpu_pd_wait: cpu-pd-wait {
+				compatible = "arm,idle-state";
+				arm,psci-suspend-param = <0x0010033>;
+				local-timer-stop;
+				entry-latency-us = <10000>;
+				exit-latency-us = <7000>;
+				min-residency-us = <27000>;
+				wakeup-latency-us = <15000>;
+				status = "disabled";
+			};
+		};
+
+		A55_0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x0>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			cpu-idle-states = <&cpu_pd_wait>;
+			power-domains = <&scmi_devpd IMX95_PERF_A55>;
+			power-domain-names = "perf";
+			i-cache-size = <32768>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <128>;
+			d-cache-size = <32768>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache_l0>;
+		};
+
+		A55_1: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x100>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			cpu-idle-states = <&cpu_pd_wait>;
+			power-domains = <&scmi_devpd IMX95_PERF_A55>;
+			power-domain-names = "perf";
+			i-cache-size = <32768>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <128>;
+			d-cache-size = <32768>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache_l1>;
+		};
+
+		A55_2: cpu@200 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x200>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			cpu-idle-states = <&cpu_pd_wait>;
+			power-domains = <&scmi_devpd IMX95_PERF_A55>;
+			power-domain-names = "perf";
+			i-cache-size = <32768>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <128>;
+			d-cache-size = <32768>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache_l2>;
+		};
+
+		A55_3: cpu@300 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x300>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			power-domains = <&scmi_devpd IMX95_PERF_A55>;
+			power-domain-names = "perf";
+			i-cache-size = <32768>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <128>;
+			d-cache-size = <32768>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache_l3>;
+		};
+
+		A55_4: cpu@400 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x400>;
+			power-domains = <&scmi_devpd IMX95_PERF_A55>;
+			power-domain-names = "perf";
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			cpu-idle-states = <&cpu_pd_wait>;
+			i-cache-size = <32768>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <128>;
+			d-cache-size = <32768>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache_l4>;
+		};
+
+		A55_5: cpu@500 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x500>;
+			power-domains = <&scmi_devpd IMX95_PERF_A55>;
+			power-domain-names = "perf";
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			cpu-idle-states = <&cpu_pd_wait>;
+			i-cache-size = <32768>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <128>;
+			d-cache-size = <32768>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache_l5>;
+		};
+
+		l2_cache_l0: l2-cache-l0 {
+			compatible = "cache";
+			cache-size = <65536>;
+			cache-line-size = <64>;
+			cache-sets = <256>;
+			cache-level = <2>;
+			cache-unified;
+			next-level-cache = <&l3_cache>;
+		};
+
+		l2_cache_l1: l2-cache-l1 {
+			compatible = "cache";
+			cache-size = <65536>;
+			cache-line-size = <64>;
+			cache-sets = <256>;
+			cache-level = <2>;
+			cache-unified;
+			next-level-cache = <&l3_cache>;
+		};
+
+		l2_cache_l2: l2-cache-l2 {
+			compatible = "cache";
+			cache-size = <65536>;
+			cache-line-size = <64>;
+			cache-sets = <256>;
+			cache-level = <2>;
+			cache-unified;
+			next-level-cache = <&l3_cache>;
+		};
+
+		l2_cache_l3: l2-cache-l3 {
+			compatible = "cache";
+			cache-size = <65536>;
+			cache-line-size = <64>;
+			cache-sets = <256>;
+			cache-level = <2>;
+			cache-unified;
+			next-level-cache = <&l3_cache>;
+		};
+
+		l2_cache_l4: l2-cache-l4 {
+			compatible = "cache";
+			cache-size = <65536>;
+			cache-line-size = <64>;
+			cache-sets = <256>;
+			cache-level = <2>;
+			cache-unified;
+			next-level-cache = <&l3_cache>;
+		};
+
+		l2_cache_l5: l2-cache-l5 {
+			compatible = "cache";
+			cache-size = <65536>;
+			cache-line-size = <64>;
+			cache-sets = <256>;
+			cache-level = <2>;
+			cache-unified;
+			next-level-cache = <&l3_cache>;
+		};
+
+		l3_cache: l3-cache {
+			compatible = "cache";
+			cache-size = <524288>;
+			cache-line-size = <64>;
+			cache-sets = <1024>;
+			cache-level = <3>;
+			cache-unified;
+		};
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&A55_0>;
+				};
+
+				core1 {
+					cpu = <&A55_1>;
+				};
+
+				core2 {
+					cpu = <&A55_2>;
+				};
+
+				core3 {
+					cpu = <&A55_3>;
+				};
+
+				core4 {
+					cpu = <&A55_4>;
+				};
+
+				core5 {
+					cpu = <&A55_5>;
+				};
+			};
+		};
+	};
+
+	clk_ext1: clock-ext1 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <133000000>;
+		clock-output-names = "clk_ext1";
+	};
+
+	dummy: clk-dummy {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+		clock-output-names = "dummy";
+	};
+
+	sai1_mclk: sai-mclk1 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency= <0>;
+		clock-output-names = "sai1_mclk";
+	};
+
+	sai2_mclk: sai-mclk2 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency= <0>;
+		clock-output-names = "sai2_mclk";
+	};
+
+	sai3_mclk: sai-mclk3 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency= <0>;
+		clock-output-names = "sai3_mclk";
+	};
+
+	sai4_mclk: sai-mclk4 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency= <0>;
+		clock-output-names = "sai4_mclk";
+	};
+
+	sai5_mclk: sai-mclk5 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency= <0>;
+		clock-output-names = "sai5_mclk";
+	};
+
+	osc_24m: osc-24m {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		clock-output-names = "osc_24m";
+	};
+
+	sram1: sram@20480000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0x204c0000 0x0 0x18000>;
+	};
+
+	firmware {
+		scmi {
+			compatible = "arm,scmi";
+			mboxes = <&mu2 5 0>, <&mu2 3 0>, <&mu2 3 1>;
+			shmem = <&scmi_buf0>, <&scmi_buf1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			scmi_devpd: protocol@11 {
+				reg = <0x11>;
+				#power-domain-cells = <1>;
+			};
+
+			scmi_sys_power: protocol@12 {
+				reg = <0x12>;
+			};
+
+			scmi_perf: protocol@13 {
+				reg = <0x13>;
+				#clock-cells = <1>;
+				#power-domain-cells = <1>;
+			};
+
+			scmi_clk: protocol@14 {
+				reg = <0x14>;
+				#clock-cells = <1>;
+			};
+
+			scmi_sensor: protocol@15 {
+				reg = <0x15>;
+				#thermal-sensor-cells = <1>;
+			};
+		};
+	};
+
+	pmu {
+		compatible = "arm,cortex-a55-pmu";
+		interrupts = <GIC_PPI 7 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
+	};
+
+	thermal-zones {
+		a55 {
+			polling-delay-passive = <250>;
+			polling-delay = <2000>;
+			thermal-sensors = <&scmi_sensor 1>;
+
+			trips {
+				cpu_alert0: trip0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_crit0: trip1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_alert0>;
+					cooling-device =
+						<&A55_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&A55_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&A55_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&A55_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&A55_4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&A55_5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
+	etm0: etm@40840000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0x0 0x40840000 0x0 0x10000>;
+		arm,primecell-periphid = <0xbb95d>;
+		cpu = <&A55_0>;
+		clocks = <&scmi_clk IMX95_CLK_A55PERIPH>;
+		clock-names = "apb_pclk";
+		status = "disabled";
+
+		out-ports {
+			port {
+				etm0_out_port: endpoint {
+					remote-endpoint = <&ca_funnel_in_port0>;
+				};
+			};
+		};
+	};
+
+	funnel0: funnel {
+		/*
+		 * non-configurable funnel don't show up on the AMBA
+		 * bus.  As such no need to add "arm,primecell".
+		 */
+		compatible = "arm,coresight-static-funnel";
+		status = "disabled";
+
+		in-ports {
+			port {
+				ca_funnel_in_port0: endpoint {
+					remote-endpoint = <&etm0_out_port>;
+				};
+			};
+		};
+
+		out-ports {
+			port {
+				ca_funnel_out_port0: endpoint {
+					remote-endpoint = <&hugo_funnel_in_port0>;
+				};
+			};
+		};
+	};
+
+	funnel1: funnel_sys {
+		compatible = "arm,coresight-static-funnel";
+		status = "disabled";
+
+		in-ports {
+			port {
+				hugo_funnel_in_port0: endpoint {
+					remote-endpoint = <&ca_funnel_out_port0>;
+				};
+			};
+		};
+
+		out-ports {
+			port {
+				hugo_funnel_out_port0: endpoint {
+					remote-endpoint = <&etf_in_port>;
+				};
+			};
+		};
+	};
+
+	etf: etf@41030000 {
+		compatible = "arm,coresight-tmc", "arm,primecell";
+		reg = <0x0 0x41030000 0x0 0x1000>;
+		clocks = <&scmi_clk IMX95_CLK_A55PERIPH>;
+		clock-names = "apb_pclk";
+		status = "disabled";
+
+		in-ports {
+			port {
+				etf_in_port: endpoint {
+					remote-endpoint = <&hugo_funnel_out_port0>;
+				};
+			};
+		};
+
+		out-ports {
+			port {
+				etf_out_port: endpoint {
+					remote-endpoint = <&etr_in_port>;
+				};
+			};
+		};
+	};
+
+	etr: etr@41040000 {
+		compatible = "arm,coresight-tmc", "arm,primecell";
+		reg = <0x0 0x41040000 0x0 0x1000>;
+		clocks = <&scmi_clk IMX95_CLK_A55PERIPH>;
+		clock-names = "apb_pclk";
+		status = "disabled";
+
+		in-ports {
+			port {
+				etr_in_port: endpoint {
+					remote-endpoint = <&etf_out_port>;
+				};
+			};
+		};
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>;
+		clock-frequency = <24000000>;
+		arm,no-tick-in-suspend;
+		interrupt-parent = <&gic>;
+	};
+
+	gic: interrupt-controller@48000000 {
+		compatible = "arm,gic-v3";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		reg = <0 0x48000000 0 0x10000>,
+		      <0 0x48060000 0 0xc0000>;
+		#interrupt-cells = <3>;
+		interrupt-controller;
+		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		dma-noncoherent;
+		ranges;
+
+		its: msi-controller@48040000 {
+			compatible = "arm,gic-v3-its";
+			dma-noncoherent;
+			msi-controller;
+			reg = <0 0x48040000 0 0x20000>;
+		};
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		aips2: bus@42000000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x0 0x42000000 0x0 0x800000>;
+			ranges = <0x42000000 0x0 0x42000000 0x8000000>,
+				 <0x28000000 0x0 0x28000000 0x10000000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			mu7: mailbox@42430000 {
+				compatible = "fsl,imx95-mu", "fsl,imx8ulp-mu";
+				reg = <0x42430000 0x10000>;
+				interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				#mbox-cells = <2>;
+				status = "disabled";
+			};
+
+			mu8: mailbox@42730000 {
+				compatible = "fsl,imx95-mu", "fsl,imx8ulp-mu";
+				reg = <0x42730000 0x10000>;
+				interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				#mbox-cells = <2>;
+				status = "disabled";
+			};
+
+			wdog3: wdog@42490000 {
+				compatible = "fsl,imx93-wdt";
+				reg = <0x42490000 0x10000>;
+				interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				timeout-sec = <40>;
+				fsl,ext-reset-output;
+				status = "disabled";
+			};
+
+			tpm3: pwm@424e0000 {
+				compatible = "fsl,imx7ulp-pwm";
+				reg = <0x424e0000 0x1000>;
+				clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
+			tpm4: pwm@424f0000 {
+				compatible = "fsl,imx7ulp-pwm";
+				reg = <0x424f0000 0x1000>;
+				clocks = <&scmi_clk IMX95_CLK_TPM4>;
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
+			tpm5: pwm@42500000 {
+				compatible = "fsl,imx7ulp-pwm";
+				reg = <0x42500000 0x1000>;
+				clocks = <&scmi_clk IMX95_CLK_TPM5>;
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
+			tpm6: pwm@42510000 {
+				compatible = "fsl,imx7ulp-pwm";
+				reg = <0x42510000 0x1000>;
+				clocks = <&scmi_clk IMX95_CLK_TPM6>;
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
+			lpi2c3: i2c@42530000 {
+				compatible = "fsl,imx95-lpi2c", "fsl,imx7ulp-lpi2c";
+				reg = <0x42530000 0x10000>;
+				interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPI2C3>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpi2c4: i2c@42540000 {
+				compatible = "fsl,imx95-lpi2c", "fsl,imx7ulp-lpi2c";
+				reg = <0x42540000 0x10000>;
+				interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPI2C4>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpspi3: spi@42550000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx95-spi", "fsl,imx7ulp-spi";
+				reg = <0x42550000 0x10000>;
+				interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPSPI3>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpspi4: spi@42560000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx95-spi", "fsl,imx7ulp-spi";
+				reg = <0x42560000 0x10000>;
+				interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPSPI4>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpuart3: serial@42570000 {
+				compatible = "fsl,imx95-lpuart", "fsl,imx8ulp-lpuart",
+					     "fsl,imx7ulp-lpuart";
+				reg = <0x42570000 0x1000>;
+				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPUART3>;
+				clock-names = "ipg";
+				status = "disabled";
+			};
+
+			lpuart4: serial@42580000 {
+				compatible = "fsl,imx95-lpuart", "fsl,imx8ulp-lpuart",
+					     "fsl,imx7ulp-lpuart";
+				reg = <0x42580000 0x1000>;
+				interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPUART4>;
+				clock-names = "ipg";
+				status = "disabled";
+			};
+
+			lpuart5: serial@42590000 {
+				compatible = "fsl,imx95-lpuart", "fsl,imx8ulp-lpuart",
+					     "fsl,imx7ulp-lpuart";
+				reg = <0x42590000 0x1000>;
+				interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPUART5>;
+				clock-names = "ipg";
+				status = "disabled";
+			};
+
+			lpuart6: serial@425a0000 {
+				compatible = "fsl,imx95-lpuart", "fsl,imx8ulp-lpuart",
+					     "fsl,imx7ulp-lpuart";
+				reg = <0x425a0000 0x1000>;
+				interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPUART6>;
+				clock-names = "ipg";
+				status = "disabled";
+			};
+
+			lpuart7: serial@42690000 {
+				compatible = "fsl,imx95-lpuart", "fsl,imx8ulp-lpuart",
+					     "fsl,imx7ulp-lpuart";
+				reg = <0x42690000 0x1000>;
+				interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPUART7>;
+				clock-names = "ipg";
+				status = "disabled";
+			};
+
+			lpuart8: serial@426a0000 {
+				compatible = "fsl,imx95-lpuart", "fsl,imx8ulp-lpuart",
+					     "fsl,imx7ulp-lpuart";
+				reg = <0x426a0000 0x1000>;
+				interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPUART8>;
+				clock-names = "ipg";
+				status = "disabled";
+			};
+
+			lpi2c5: i2c@426b0000 {
+				compatible = "fsl,imx95-lpi2c", "fsl,imx7ulp-lpi2c";
+				reg = <0x426b0000 0x10000>;
+				interrupts = <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPI2C5>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpi2c6: i2c@426c0000 {
+				compatible = "fsl,imx95-lpi2c", "fsl,imx7ulp-lpi2c";
+				reg = <0x426c0000 0x10000>;
+				interrupts = <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPI2C6>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpi2c7: i2c@426d0000 {
+				compatible = "fsl,imx95-lpi2c", "fsl,imx7ulp-lpi2c";
+				reg = <0x426d0000 0x10000>;
+				interrupts = <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPI2C7>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpi2c8: i2c@426e0000 {
+				compatible = "fsl,imx95-lpi2c", "fsl,imx7ulp-lpi2c";
+				reg = <0x426e0000 0x10000>;
+				interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPI2C8>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpspi5: spi@426f0000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx95-spi", "fsl,imx7ulp-spi";
+				reg = <0x426f0000 0x10000>;
+				interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPSPI5>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpspi6: spi@42700000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx95-spi", "fsl,imx7ulp-spi";
+				reg = <0x42700000 0x10000>;
+				interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPSPI6>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpspi7: spi@42710000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx95-spi", "fsl,imx7ulp-spi";
+				reg = <0x42710000 0x10000>;
+				interrupts = <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPSPI7>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpspi8: spi@42720000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx95-spi", "fsl,imx7ulp-spi";
+				reg = <0x42720000 0x10000>;
+				interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPSPI8>,
+					 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+		};
+
+		aips3: bus@42800000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0 0x42800000 0 0x800000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x42800000 0x0 0x42800000 0x800000>;
+
+			usdhc1: mmc@42850000 {
+				compatible = "fsl,imx95-usdhc", "fsl,imx8mm-usdhc";
+				reg = <0x42850000 0x10000>;
+				interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>,
+					 <&scmi_clk IMX95_CLK_WAKEUPAXI>,
+					 <&scmi_clk IMX95_CLK_USDHC1>;
+				clock-names = "ipg", "ahb", "per";
+				assigned-clocks = <&scmi_clk IMX95_CLK_USDHC1>;
+				assigned-clock-parents = <&scmi_clk IMX95_CLK_SYSPLL1_PFD1>;
+				assigned-clock-rates = <400000000>;
+				bus-width = <8>;
+				fsl,tuning-start-tap = <1>;
+				fsl,tuning-step= <2>;
+				status = "disabled";
+			};
+
+			usdhc2: mmc@42860000 {
+				compatible = "fsl,imx95-usdhc", "fsl,imx8mm-usdhc";
+				reg = <0x42860000 0x10000>;
+				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>,
+					 <&scmi_clk IMX95_CLK_WAKEUPAXI>,
+					 <&scmi_clk IMX95_CLK_USDHC2>;
+				clock-names = "ipg", "ahb", "per";
+				assigned-clocks = <&scmi_clk IMX95_CLK_USDHC2>;
+				assigned-clock-parents = <&scmi_clk IMX95_CLK_SYSPLL1_PFD1>;
+				assigned-clock-rates = <200000000>;
+				bus-width = <4>;
+				fsl,tuning-start-tap = <1>;
+				fsl,tuning-step= <2>;
+				status = "disabled";
+			};
+
+			usdhc3: mmc@428b0000 {
+				compatible = "fsl,imx95-usdhc", "fsl,imx8mm-usdhc";
+				reg = <0x428b0000 0x10000>;
+				interrupts = <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>,
+					 <&scmi_clk IMX95_CLK_WAKEUPAXI>,
+					 <&scmi_clk IMX95_CLK_USDHC3>;
+				clock-names = "ipg", "ahb", "per";
+				bus-width = <4>;
+				fsl,tuning-start-tap = <1>;
+				fsl,tuning-step= <2>;
+				status = "disabled";
+			};
+		};
+
+		gpio2: gpio@43810000 {
+			compatible = "fsl,imx95-gpio", "fsl,imx8ulp-gpio";
+			reg = <0x0 0x43810000 0x0 0x1000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>,
+				 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+			clock-names = "gpio", "port";
+		};
+
+		gpio3: gpio@43820000 {
+			compatible = "fsl,imx95-gpio", "fsl,imx8ulp-gpio";
+			reg = <0x0 0x43820000 0x0 0x1000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>,
+				 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+			clock-names = "gpio", "port";
+		};
+
+		gpio4: gpio@43840000 {
+			compatible = "fsl,imx95-gpio", "fsl,imx8ulp-gpio";
+			reg = <0x0 0x43840000 0x0 0x1000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>,
+				 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+			clock-names = "gpio", "port";
+		};
+
+		gpio5: gpio@43850000 {
+			compatible = "fsl,imx95-gpio", "fsl,imx8ulp-gpio";
+			reg = <0x0 0x43850000 0x0 0x1000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>,
+				 <&scmi_clk IMX95_CLK_BUSWAKEUP>;
+			clock-names = "gpio", "port";
+		};
+
+		aips1: bus@44000000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x0 0x44000000 0x0 0x800000>;
+			ranges = <0x44000000 0x0 0x44000000 0x800000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			mu1: mailbox@44220000 {
+				compatible = "fsl,imx95-mu", "fsl,imx8ulp-mu";
+				reg = <0x44220000 0x10000>;
+				interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_BUSAON>;
+				#mbox-cells = <2>;
+				status = "disabled";
+			};
+
+			mu2: mailbox@445b0000 {
+				compatible = "fsl,imx95-mu";
+				reg = <0x445b0000 0x1000>;
+				ranges;
+				interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				#mbox-cells = <2>;
+
+				sram0: sram@445b1000 {
+					compatible = "mmio-sram";
+					reg = <0x445b1000 0x400>;
+					ranges = <0x0 0x445b1000 0x400>;
+					#address-cells = <1>;
+					#size-cells = <1>;
+
+					scmi_buf0: scmi-sram-section@0 {
+						compatible = "arm,scmi-shmem";
+						reg = <0x0 0x80>;
+					};
+
+					scmi_buf1: scmi-sram-section@80 {
+						compatible = "arm,scmi-shmem";
+						reg = <0x80 0x80>;
+					};
+				};
+
+			};
+
+			mu3: mailbox@445d0000 {
+				compatible = "fsl,imx95-mu", "fsl,imx8ulp-mu";
+				reg = <0x445d0000 0x10000>;
+				interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_BUSAON>;
+				#mbox-cells = <2>;
+				status = "disabled";
+			};
+
+			mu4: mailbox@445f0000 {
+				compatible = "fsl,imx95-mu", "fsl,imx8ulp-mu";
+				reg = <0x445f0000 0x10000>;
+				interrupts = <GIC_SPI 230 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_BUSAON>;
+				#mbox-cells = <2>;
+				status = "disabled";
+			};
+
+			mu6: mailbox@44630000 {
+				compatible = "fsl,imx95-mu", "fsl,imx8ulp-mu";
+				reg = <0x44630000 0x10000>;
+				interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_BUSAON>;
+				#mbox-cells = <2>;
+				status = "disabled";
+			};
+
+			tpm1: pwm@44310000 {
+				compatible = "fsl,imx7ulp-pwm";
+				reg = <0x44310000 0x1000>;
+				clocks = <&scmi_clk IMX95_CLK_BUSAON>;
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
+			tpm2: pwm@44320000 {
+				compatible = "fsl,imx7ulp-pwm";
+				reg = <0x44320000 0x1000>;
+				clocks = <&scmi_clk IMX95_CLK_TPM2>;
+				assigned-clocks = <&scmi_clk IMX95_CLK_TPM2>;
+				assigned-clock-parents = <&scmi_clk IMX95_CLK_24M>;
+				assigned-clock-rates = <24000000>;
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
+			lpi2c1: i2c@44340000 {
+				compatible = "fsl,imx95-lpi2c", "fsl,imx7ulp-lpi2c";
+				reg = <0x44340000 0x10000>;
+				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPI2C1>,
+					 <&scmi_clk IMX95_CLK_BUSAON>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpi2c2: i2c@44350000 {
+				compatible = "fsl,imx95-lpi2c", "fsl,imx7ulp-lpi2c";
+				reg = <0x44350000 0x10000>;
+				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPI2C2>,
+					 <&scmi_clk IMX95_CLK_BUSAON>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpspi1: spi@44360000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx95-spi", "fsl,imx7ulp-spi";
+				reg = <0x44360000 0x10000>;
+				interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPSPI1>,
+					 <&scmi_clk IMX95_CLK_BUSAON>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpspi2: spi@44370000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx95-spi", "fsl,imx7ulp-spi";
+				reg = <0x44370000 0x10000>;
+				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPSPI2>,
+					 <&scmi_clk IMX95_CLK_BUSAON>;
+				clock-names = "per", "ipg";
+				status = "disabled";
+			};
+
+			lpuart1: serial@44380000 {
+				compatible = "fsl,imx95-lpuart", "fsl,imx8ulp-lpuart",
+					     "fsl,imx7ulp-lpuart";
+				reg = <0x44380000 0x1000>;
+				interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPUART1>;
+				clock-names = "ipg";
+				status = "disabled";
+			};
+
+			lpuart2: serial@44390000 {
+				compatible = "fsl,imx95-lpuart", "fsl,imx8ulp-lpuart",
+					     "fsl,imx7ulp-lpuart";
+				reg = <0x44390000 0x1000>;
+				interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_LPUART2>;
+				clock-names = "ipg";
+				status = "disabled";
+			};
+
+			adc1: adc@44530000 {
+				compatible = "nxp,imx93-adc";
+				reg = <0x44530000 0x10000>;
+				interrupts = <GIC_SPI 199 IRQ_TYPE_LEVEL_HIGH>,
+						<GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>,
+						<GIC_SPI 201 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX95_CLK_ADC>;
+				clock-names = "ipg";
+				status = "disabled";
+			};
+
+		};
+
+		aips4: bus@49000000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x0 0x49000000 0x0 0x800000>;
+			ranges = <0x49000000 0x0 0x49000000 0x800000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			smmu: iommu@490d0000 {
+				compatible = "arm,smmu-v3";
+				reg = <0x490d0000 0x100000>;
+				interrupts = <GIC_SPI 325 IRQ_TYPE_EDGE_RISING>,
+					     <GIC_SPI 328 IRQ_TYPE_EDGE_RISING>,
+					     <GIC_SPI 334 IRQ_TYPE_EDGE_RISING>,
+					     <GIC_SPI 326 IRQ_TYPE_EDGE_RISING>;
+				interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
+				#iommu-cells = <1>;
+				status = "disabled";
+			};
+		};
+
+		gpio1: gpio@47400000 {
+			compatible = "fsl,imx95-gpio", "fsl,imx8ulp-gpio";
+			reg = <0x0 0x47400000 0x0 0x1000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			clocks = <&scmi_clk IMX95_CLK_M33>,
+				 <&scmi_clk IMX95_CLK_M33>;
+			clock-names = "gpio", "port";
+			status = "disabled";
+		};
+
+		elemu0: mailbox@47520000 {
+			compatible = "fsl,imx95-mu-ele";
+			reg = <0x0 0x47520000 0x0 0x10000>;
+			interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		elemu1: mailbox@47530000 {
+			compatible = "fsl,imx95-mu-ele";
+			reg = <0x0 0x47530000 0x0 0x10000>;
+			interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		elemu2: mailbox@47540000 {
+			compatible = "fsl,imx95-mu-ele";
+			reg = <0x0 0x47540000 0x0 0x10000>;
+			interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		elemu3: mailbox@47550000 {
+			compatible = "fsl,imx95-mu-ele";
+			reg = <0x0 0x47550000 0x0 0x10000>;
+			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+		};
+
+		elemu4: mailbox@47560000 {
+			compatible = "fsl,imx95-mu-ele";
+			reg = <0x0 0x47560000 0x0 0x10000>;
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		elemu5: mailbox@47570000 {
+			compatible = "fsl,imx95-mu-ele";
+			reg = <0x0 0x47570000 0x0 0x10000>;
+			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		v2x_mu: v2x-mu@47350000 {
+			compatible = "fsl,imx95-mu-v2x";
+			reg = <0x0 0x47350000 0x0 0x10000>;
+			interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "tx", "rx";
+			#mbox-cells = <2>;
+			status = "okay";
+		};
+
+		v2x_mu6: mailbox@47320000 {
+			compatible = "fsl,imx95-mu-v2x";
+			reg = <0x0 0x47320000 0x0 0x10000>;
+			interrupts = <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "tx", "rx";
+			#mbox-cells = <2>;
+			status = "okay";
+		};
+
+		displaymix_irqsteer: interrupt-controller@4b0b0000 {
+			compatible = "fsl,imx-irqsteer";
+			reg = <0x0 0x4b0b0000 0x0 0x1000>;
+			interrupts = <GIC_SPI 214 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 215 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 303 IRQ_TYPE_LEVEL_HIGH>,	/* reserved */
+				     <GIC_SPI 303 IRQ_TYPE_LEVEL_HIGH>,	/* reserved */
+				     <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>;
+			power-domains = <&scmi_devpd IMX95_PD_DISPLAY>;
+			clocks = <&scmi_clk IMX95_CLK_DISPAPB>;
+			clock-names = "ipg";
+			fsl,channel = <0>;
+			fsl,num-irqs = <512>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			status = "disabled";
+		};
+	};
+};

-- 
2.37.1


