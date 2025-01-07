Return-Path: <devicetree+bounces-136025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC07A0384C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 08:02:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14C891609B4
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 07:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F931E0086;
	Tue,  7 Jan 2025 07:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="1gRaEtAt"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2073.outbound.protection.outlook.com [40.107.92.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E521DF725;
	Tue,  7 Jan 2025 07:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.92.73
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736233317; cv=fail; b=IAscq1BF7xF7gjytehax1chEUYg/gvdXXCTw/7+y2JjlglyHSpqgGiWqmfeMhh38q5s/vulF9dyBftDv0qAKqelq/H30ZPwfODEJ8nlu6gYwn3Yu4i9yKbjpd5jlFSRF/3ow5DJ6+ErfsIL1AxdAYOB6Kl10sl/DExcpFzmd/2k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736233317; c=relaxed/simple;
	bh=OLyslQtrkm0Ltrxe88WOZCDy7lBuyn0HjqwTJN08FIM=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hYSYbLNc6kVgbZby0cpcfOV7O5rQ3VQE+zpctcZ0mGWr6ECzejIZreTOrUPvRuvvBdgqprOrTwdmMEWricyjUuEzn1ZoCsx5At82CeMWva3nM+ICRY3XoC2ZEABXlYqv715k1ZdBwZe8lCagmq0Sljq7obN+dHtQmeTsJM1Wfwk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=1gRaEtAt; arc=fail smtp.client-ip=40.107.92.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n2jYJOt+v+Gp+Sfj681m4hCqSa+2P08AnKSzRtAwgdn2b0xjqZXXyKubN5wZfQ05D1qJDMCCFR+n6aoU/NVjNciOjPyB8MxMOMr6WGhQVJEkfj8hMu6zTj1Qzfa7DK+b+Hasuv9LTe6Y+Pb8yyrBEchxpMXxvHWeId7H2n2NyC++S0wdRm3S299YfDtLFtri4no+O50GKbcewS+8B6hKPz11qIBtHAjBkcXpYfrBOKcWRCP/CQENA1C89kbnriIvk1RVAkAh3waFh1vNiJNhfoHFSJDoyAzcqXNIPaXc19xnzmtr9V/LN26wRDG8//gGN5gFY0OmseolZTbygGMnjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m2isNV4jxUzalCj+b31OVGOoRcplH0u7qVMkh8igTx0=;
 b=fLFAeBNypOLbAp6ZG0D2LxoBRYV+kpsj+gDz22NrmC4biAIl30MlXCIE1n9XgzGNwJJLZpJ1BuOxoL143g8KDcw1NpyewU+RW/TkPEV7E19qqFUPSd1+UeLdJdT1cbbOtO+pA/q3EMBGf7oLpDMMlcaTHi8F0Ix4EBA4zjg3qWkMCHJHvSZgTg77Au/kVMKBiKcQeRMQCjaPjwK3jn29M4qMsL+YXW32IQ2VF71etAfFXdp5C+0dZVUZbLWgKvgDC51PJ66SS5USwB0fZ33x4IjU+HNnYA13mU3hZAC4l0cc8VGTLlqqMzjXrL+1xvmOtJKKEdJqZjouaxI0BLlkzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m2isNV4jxUzalCj+b31OVGOoRcplH0u7qVMkh8igTx0=;
 b=1gRaEtAtH9Z4fiHzaKIxuef7VqzRNNbOrE7anFYwC2c3XswETY08IiAWPdooMsYP6cWqG/gyq/BzuJRu7uTfsX+wQ+kdr9J38KhSSjUpKX8a512m76qw4qnPz62yp9UFZmdOtMmNjgew26gqcJTyqjngyyuXZNjc9vZ5HlhVTYc=
Received: from BYAPR01CA0049.prod.exchangelabs.com (2603:10b6:a03:94::26) by
 MN2PR12MB4269.namprd12.prod.outlook.com (2603:10b6:208:1d4::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.17; Tue, 7 Jan 2025 07:01:46 +0000
Received: from CO1PEPF000066EA.namprd05.prod.outlook.com
 (2603:10b6:a03:94:cafe::72) by BYAPR01CA0049.outlook.office365.com
 (2603:10b6:a03:94::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8314.17 via Frontend Transport; Tue,
 7 Jan 2025 07:01:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1PEPF000066EA.mail.protection.outlook.com (10.167.249.5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8335.7 via Frontend Transport; Tue, 7 Jan 2025 07:01:45 +0000
Received: from localhost (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Tue, 7 Jan
 2025 01:01:41 -0600
From: Michal Simek <michal.simek@amd.com>
To: <linux-kernel@vger.kernel.org>, <monstr@monstr.eu>,
	<michal.simek@xilinx.com>, <git@xilinx.com>
CC: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, "open list:OPEN FIRMWARE
 AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, "moderated
 list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v2] ARM: zynq: Do not define address/size-cells for nand-controller
Date: Tue, 7 Jan 2025 08:01:33 +0100
Message-ID: <7a3b9eb256b90ea19d35f8bbe3fd311890767974.1736233292.git.michal.simek@amd.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1445; i=michal.simek@amd.com; h=from:subject:message-id; bh=OLyslQtrkm0Ltrxe88WOZCDy7lBuyn0HjqwTJN08FIM=; b=owGbwMvMwCR4yjP1tKYXjyLjabUkhvSai/4lj3mYwqW0fndlXdrZsv3uhka2HV43Duy03Pe3a RFn/x37jlgWBkEmBlkxRRZpmytn9lbOmCJ88bAczBxWJpAhDFycAjARcVaGBZ0v1yY+EVmyxazL xvns7WWybSU8XAwLZuepr5UNFBC7euOdvPc+gQ+zTa7UAgA=
X-Developer-Key: i=michal.simek@amd.com; a=openpgp; fpr=67350C9BF5CCEE9B5364356A377C7F21FE3D1F91
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SATLEXMB04.amd.com (10.181.40.145) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000066EA:EE_|MN2PR12MB4269:EE_
X-MS-Office365-Filtering-Correlation-Id: 01370872-e9d5-4b93-6e38-08dd2ee925cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?G1RjYfMbOOXC9zTOaviDARfHxGpp0YprVnWr+wO53G0G6J9GmMMycYvKQ6UO?=
 =?us-ascii?Q?kPVsP5JVpFTG05EUUswb5lDK+VqX3C9CFf4wdcosZ+Cv4gKhFwHyU6koM1BL?=
 =?us-ascii?Q?Y0Arfh9KrHPHZ3cjWMtYJ8v1+8Bk7xC4s28iZZqu8I8jwPDl2+AbfVdZOe3j?=
 =?us-ascii?Q?uqlxZTwD3Bf7qaZanYGQ1TZxhGnBJt8dmZUINqXy/ZStPhKbVrs0DrWzf7HY?=
 =?us-ascii?Q?y7l3qIISjrDd4Mj3aSK/h+/8KWbCy5ch+b4eZsRkOnLPh9QdhSHQyf0swBNL?=
 =?us-ascii?Q?RFKxw9jgygz0KQqXnERdpftfsGZz1lcThpIS+4RQlQvdQ+UrDxlkuEt2TRfV?=
 =?us-ascii?Q?p/XJUxWEgfWUE0FrZ17e/NKdKjH4oqq7sGn3DKdnxdkWzIaRb4hjKBaEXWxS?=
 =?us-ascii?Q?IKOhBkIq3O5CunySV5X3kTYXEXEsMpyqxdAXq0GSOIPWf7KLHO1NJizhFA0x?=
 =?us-ascii?Q?eWXg21VtCoVQAg2v+sknlJwA7P8H67fcH/NKkzDJhpvlY3jCgZl1gYOB3bxc?=
 =?us-ascii?Q?nOxfr2VwFB4yso2TYJy+xgvpw0UBKiNDgBToMc62BknFamlM2aBrRrA3bgaL?=
 =?us-ascii?Q?nLL01NVOZJhdZ1y51CkruYtvOKukVDkdBcJOM1aQ1q2uMIPCv0BDkd1JCTm5?=
 =?us-ascii?Q?4kAcV54Hv8HY+qVdDsWyYVmC22rIZ4iEDnwAPtss5vQjVo7cm6V+IDFQBaPu?=
 =?us-ascii?Q?n1BWE3NjkwDa4dEhz6vsvh9LXKGqPN9S+b2EZA7oBCcPRWnkxtdXshHcwMQ5?=
 =?us-ascii?Q?2Wv5zEz0u4TPyvve7HpXicunsVK0s9C1fM2XSG5Hlp9/GcSu908QSVmObR+0?=
 =?us-ascii?Q?hFlSd+fsaT2ghNANULsB2lUa6aArQJ1ng8KLNbB905fL1JD19LrStbZJk+Ba?=
 =?us-ascii?Q?DgNb936Mx+5y2l1+Y6fUuG51XZgjQFTitVbfjnGUBzIJWSs3zyCeASHgIjfR?=
 =?us-ascii?Q?fLjSURXZfDksBb0aixY+Dnrma71ap1Pz+Ep0rEh8Pu5Y53pV+da7Sx5JvxCq?=
 =?us-ascii?Q?ocZD81rq7ztBsz/6+na9C8cEoCHq4/CM11ciYzEsxYi+AxZEVGbQ94UNGTLq?=
 =?us-ascii?Q?N8XXQTrpoHboK/YByQ7Z1u1fEHLgZZ2Odi+kaRpXZKCxny0/cwAohVouCF70?=
 =?us-ascii?Q?QTLu6+gP1z5YUlTkZW85pXpv+Us79n70a1wapXA4gXhEZG1DJimhKB2Oo+bi?=
 =?us-ascii?Q?qCSd9MzuVzFz4G3mmYQ/PeCd3XmzjNuX3e6h0R5qAd4KspLX07s8BKQ7j/bI?=
 =?us-ascii?Q?8/abUdLAjZEolUY5A7S0j/87X3RJ9ynyyEz2PojDFAbPfoiEVxNpT2g4fXUj?=
 =?us-ascii?Q?9hrpUZ1RCsc83pzbmWa8si3Jsx4hn4uRiO2GurJe6c/ZYvN/wAQN7WFDLH0E?=
 =?us-ascii?Q?sc5oAiwt8RQJyudQmG2th0LKVXQrRX4oOiyX3MWpec3Fg91Q7IhhRCqdZ7T0?=
 =?us-ascii?Q?wKp93O3EkHU2Xlc8GmAG+uXcHnBRd05TifPT0AkkEYLY0VthGUpdYGZw2Exo?=
 =?us-ascii?Q?nuJMursot50Up0A=3D?=
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 07:01:45.1171
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 01370872-e9d5-4b93-6e38-08dd2ee925cc
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000066EA.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4269

There is no reason to define address/size-cells without defining child
nodes in zynq-7000.dtsi. Define it in board file instead.

Signed-off-by: Michal Simek <michal.simek@amd.com>
---

Changes in v2:
- Update also zynq-ebaz4205.dts
- Update commit message
- Send it separately v1
  https://lore.kernel.org/all/37057526d8ee14416f61fb6e2b82bed65bde5d3c.1733920873.git.michal.simek@amd.com/

 arch/arm/boot/dts/xilinx/zynq-7000.dtsi    | 2 --
 arch/arm/boot/dts/xilinx/zynq-ebaz4205.dts | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/xilinx/zynq-7000.dtsi b/arch/arm/boot/dts/xilinx/zynq-7000.dtsi
index 4a29216a6d64..153b8d93cbee 100644
--- a/arch/arm/boot/dts/xilinx/zynq-7000.dtsi
+++ b/arch/arm/boot/dts/xilinx/zynq-7000.dtsi
@@ -303,8 +303,6 @@ nfc0: nand-controller@0,0 {
 				compatible = "arm,pl353-nand-r2p1";
 				reg = <0 0 0x1000000>;
 				status = "disabled";
-				#address-cells = <1>;
-				#size-cells = <0>;
 			};
 			nor0: flash@1,0 {
 				status = "disabled";
diff --git a/arch/arm/boot/dts/xilinx/zynq-ebaz4205.dts b/arch/arm/boot/dts/xilinx/zynq-ebaz4205.dts
index 53fa6dbfd8fd..14f644156a6f 100644
--- a/arch/arm/boot/dts/xilinx/zynq-ebaz4205.dts
+++ b/arch/arm/boot/dts/xilinx/zynq-ebaz4205.dts
@@ -51,6 +51,8 @@ &gpio0 {
 &nfc0 {
 	status = "okay";
 
+	#address-cells = <1>;
+	#size-cells = <0>;
 	nand@0 {
 		reg = <0>;
 	};
-- 
2.43.0


