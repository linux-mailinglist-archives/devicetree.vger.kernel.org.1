Return-Path: <devicetree+bounces-17814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8A67F43A8
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 11:23:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1B181C208CE
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 10:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF7A354273;
	Wed, 22 Nov 2023 10:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="wpwJWV5V"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02on2064.outbound.protection.outlook.com [40.107.212.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 470C683;
	Wed, 22 Nov 2023 02:23:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XzWKhtvqGO/b2Yqz2dQvl0mZ8LJFsyrA2vvlA1fdllC/DHL60uJPlu+L56x/2HKjCihMLyL8qwJF1vsAO9oA0CVrrwlCy8OdOhxI0kk17Z/jjkwwBYYNCRJ2AG71KJR2zrdf8VmKTdF2LN6RaNT7nrMdzMblO2L023WzI6m03Z9lumkLG69EF4Q4Rag8/HzFLJw700XCrH+xyeQrgsiNa5xEHZJ+igHZF5K2GZz7RQvlrbFybqQlQn61clN7uck8XuIE8cVob1AwCy+bwfJXogZCzsV4GhSWDV23wt3T+JAW5UFsWvAy/nO09Omhr4WJ7pFjfQYNqvDk8SuEIh+PSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AUCe0/onr4kEVKJ/iGZ/8ZHOggWP+0jiYKlt3VRy5Ow=;
 b=L3xXon/Ep/DZfovcbkrhBRy3n62t9IQ1/SMKAO71JI4FwrtAmOkrPx1pkVhRmh+bGcy0vtFtrifEZ0syopdwWTJe/ThwWoxDrlAbyi1pm5Y2EPmvDMOyicldl295RHrmUbsgdTAfrylPgqiTtfS8vft9rhroxsN1e8WX3WtznaIx2mKqDOKlNo72qiQSZJq+46WuIqFCu0FmUa0Ccj+iQq9rw+/Te+vyN3L18hMlNPmHqhYK2aKMu/F22H3KGaFCvaNKXdipphtC2kg+hXnDMV18GXtNYuG2TwegRXcy1J7yJtPPXW4Gz1q1oxatfxnAA0yiYq/P+kP3TWqjjAeg/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AUCe0/onr4kEVKJ/iGZ/8ZHOggWP+0jiYKlt3VRy5Ow=;
 b=wpwJWV5V2z3W2Wz4PyY+ojTWnSC+CyeWOnqhCd3Qu6D+3z3S93GedkQ9cg46g1t7hN4K3DBsX3+/OZvbFu3L7XidzPbPSzyv5xa8tT0hgl0AK5ufy1yNIfO59V/ETxaylnMqIo3z1pQkJKNmmjWiMGdLblUGUZgigiYZPYTrHJA=
Received: from MW4PR04CA0173.namprd04.prod.outlook.com (2603:10b6:303:85::28)
 by PH7PR12MB6719.namprd12.prod.outlook.com (2603:10b6:510:1b2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.19; Wed, 22 Nov
 2023 10:23:17 +0000
Received: from CO1PEPF000044EE.namprd05.prod.outlook.com
 (2603:10b6:303:85:cafe::61) by MW4PR04CA0173.outlook.office365.com
 (2603:10b6:303:85::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.18 via Frontend
 Transport; Wed, 22 Nov 2023 10:23:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 CO1PEPF000044EE.mail.protection.outlook.com (10.167.241.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7025.12 via Frontend Transport; Wed, 22 Nov 2023 10:23:17 +0000
Received: from localhost (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34; Wed, 22 Nov
 2023 04:23:15 -0600
From: Michal Simek <michal.simek@amd.com>
To: <conor@kernel.org>, <linux-kernel@vger.kernel.org>, <monstr@monstr.eu>,
	<michal.simek@xilinx.com>, <git@xilinx.com>, <robh@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Damien Le Moal <dlemoal@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Mark Brown
	<broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, Sebastian Reichel
	<sebastian.reichel@collabora.com>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 1/2] dt-bindings: soc: xilinx: Move xilinx.yaml from arm to soc
Date: Wed, 22 Nov 2023 11:23:12 +0100
Message-ID: <281ed28bccc14e7006caf17d6cfeb2a679b0e255.1700648588.git.michal.simek@amd.com>
X-Mailer: git-send-email 2.36.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1821; i=michal.simek@amd.com; h=from:subject:message-id; bh=ATsRClbMclplCuL1YZiV5DMlYbwv1rnHfq/hz0RAE0s=; b=owGbwMvMwCR4yjP1tKYXjyLjabUkhtTYa30cypOfzea0lt4iJcHPuz32Bn/G6ujnYYGHihJP7 rbeZmjXEcvCIMjEICumyCJtc+XM3soZU4QvHpaDmcPKBDKEgYtTACZSms4wTyHsreJ7febYqYws CVc5+xvStR8UM8xTmpXPLK/d9nMrf1xS400+hVQTHSkA
X-Developer-Key: i=michal.simek@amd.com; a=openpgp; fpr=67350C9BF5CCEE9B5364356A377C7F21FE3D1F91
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SATLEXMB04.amd.com (10.181.40.145) To SATLEXMB03.amd.com
 (10.181.40.144)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000044EE:EE_|PH7PR12MB6719:EE_
X-MS-Office365-Filtering-Correlation-Id: dfa1a33b-3c21-4ef6-4f24-08dbeb450b1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	QtSLuL+DnS99v5mmwgKo+mcdwSUIULX2d+R6ucCpexk/ht8tx+fxs87t4asUu2xGUQQKSEKjMKc/Es1K0/fG3DN4GKfPV01XZ4OG2c9lwxyisTQU6zy8t1G0nG76edjif4W/Qsm7bIgKQNTvoKrcfHz6SHvd1z3njsdLHFkEwYOAenUncaAC/W8SCUcg2jU/BHGt9aO/26aCU6UTbWNjhmbgoYO2PechPeQUf9ge5Tmel8bH7bfroVpTomLOHW9EFZJEi6FTfhScZ3ehRzmNK8AF9onlnDCkRpIqYX9zjuS/TjIMKx9CLgL57PsAsOyMucNjg6OjmWfM9hQyLKDLmcExkyQ42gz+/WMX1E1Xyn8wwgToRxwP5wXPpliJytCNbmBQs/c3OWiUVUJZzuMss7WS6osvS7P49j81Z8JWis6mj/Fal9Rb/xGSoLE47I8YH3bkYl+UNBDCIcamtw1nBCADFSaykzfFnHAJ5CsOtxXDv8vsMIzgsaXlfprZmyK6s5S1VFiFmhB9rc+V0mp1MhVjmE4/YV65+/rwSARqco0SCGjLzkmB0Sl+ZEXO0kbDm9zwwZBOneGInNlGC4NRFgtuA+L8f1wEV/kWwMS2xuMbZEPLeOoCU1NNb6oxaWUuLILDIVfqm+f4HDm8ypVMydVkxD8/aJN7bzaewywiDpdquvdPEeitrFPPD1in2R/gFDHQ3s5njCzFCWi1J68g2G6PgT/1EhCZRI4AOSpMoDC53loTACz6iIRcTOCb6kJQIuS0FkPeAn/+7czDHYt1TQ==
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(396003)(346002)(136003)(39860400002)(376002)(230922051799003)(1800799012)(451199024)(64100799003)(82310400011)(186009)(40470700004)(36840700001)(46966006)(83380400001)(478600001)(36756003)(70586007)(70206006)(110136005)(2616005)(40460700003)(426003)(336012)(54906003)(316002)(82740400003)(966005)(356005)(81166007)(40480700001)(4326008)(36860700001)(8676002)(8936002)(5660300002)(6666004)(44832011)(47076005)(7416002)(16526019)(26005)(86362001)(2906002)(41300700001)(2101003)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2023 10:23:17.3079
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dfa1a33b-3c21-4ef6-4f24-08dbeb450b1d
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000044EE.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6719

All Xilinx boards can hosts also soft core CPUs like MicroBlaze or
MicroBlaze V (RISC-V ISA) that's why move boards description from arm
folder to soc folder.
Similar chagne was done for Renesas by commit c27ce08b806d ("dt-bindings:
soc: renesas: Move renesas.yaml from arm to soc").

Signed-off-by: Michal Simek <michal.simek@amd.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v3:
- Fix commit message reported by Krzysztof and add his ACK

Changes in v2:
- New patch in the series

Based on discussion here.
https://lore.kernel.org/r/20231108-copper-scoff-b4de5febb954@spud

---
 .../devicetree/bindings/{arm => soc/xilinx}/xilinx.yaml          | 0
 MAINTAINERS                                                      | 1 +
 2 files changed, 1 insertion(+)
 rename Documentation/devicetree/bindings/{arm => soc/xilinx}/xilinx.yaml (100%)

diff --git a/Documentation/devicetree/bindings/arm/xilinx.yaml b/Documentation/devicetree/bindings/soc/xilinx/xilinx.yaml
similarity index 100%
rename from Documentation/devicetree/bindings/arm/xilinx.yaml
rename to Documentation/devicetree/bindings/soc/xilinx/xilinx.yaml
diff --git a/MAINTAINERS b/MAINTAINERS
index ea790149af79..14ad00009a63 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3020,6 +3020,7 @@ F:	Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
 F:	Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
 F:	Documentation/devicetree/bindings/memory-controllers/snps,dw-umctl2-ddrc.yaml
 F:	Documentation/devicetree/bindings/memory-controllers/xlnx,zynq-ddrc-a05.yaml
+F:	Documentation/devicetree/bindings/soc/xilinx/xilinx.yaml
 F:	Documentation/devicetree/bindings/spi/xlnx,zynq-qspi.yaml
 F:	arch/arm/mach-zynq/
 F:	drivers/clocksource/timer-cadence-ttc.c
-- 
2.36.1


