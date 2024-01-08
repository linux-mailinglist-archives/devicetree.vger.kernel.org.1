Return-Path: <devicetree+bounces-30089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 648CA8267C1
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 06:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73E611C2136A
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 05:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99AAA79CC;
	Mon,  8 Jan 2024 05:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="elC1lpaS"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02on2053.outbound.protection.outlook.com [40.107.212.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C7579CD
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 05:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ufiof3z6NvbilTJxsUyN8d5AUHlPTFcXVg9V0R3TpCNaaTNd3CgC5SiaGtzbwtbgm2XQPlxthlUrIU6+zH/UATB5HJoGp5pbs8z+VIkvEnFq7eoX8YvkRdTfkWU/4vz8pxkpSDJszqmQ/sFuhi68nvuRpzRUjt8qncJXtBE/JUaeTAYuUi8SNjE2ZeFpV4QyI0c7YmglOh4rEtAVZRwulSAjvId0UtV/frcVrR6biIOAPefbaIwb/I4/MGBxFp9yZ81Y0AnCDRvRhroBzVilPeU/9PpJI5oqcS1LK4V6+6TJE5TCDoZhjuVuJFTujF55AhVkIb1vtxVbdZkvV2OTSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pUapCjsryGcoYHNfIFSd2XXTWpgM+LdwUpqVKPww5qQ=;
 b=Op3XliaHNqF2jRuuibUaV/L8fOlq0NvzV1PvVuQ05xHTg34wGkXcGuwyBuGy3aC+YZZFJb9l+cCQo+3+loo9C0BO228g9PCHn4dY0bDp8zp5jcJZRPs+l/ywbS+ZeUPMuIAkJA6lCQHHiHvQJaIVrKrNzLsec2Bz7AQhCSK8KM6PhUw5UsyN4SWWfxTWSadsH8p4zAmELYtjQZu4I9rYfT4AYmfECb1ucT9sF5sW4opuJCu2v5vKiUmFYdaj2i4zr9vgN4e+Aobep2ZtsQqq6IlqsCGvLJbBTNxBl/H1Xmq5PO0E06/5W6W+nqHHY0Rh71BRhJURupRzKuhoxgJH7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pUapCjsryGcoYHNfIFSd2XXTWpgM+LdwUpqVKPww5qQ=;
 b=elC1lpaSfAOQv+yxCKjrutrCV5utPuIpRHF2wNyJHFFtL4WdnsYOCAKVq39lhSxFbhJriX+1nGuYnDwPqJePEtW2wNQBHcc3/AA30ONzK82DxEzt2P8t4wQiNTwg7K+rQa2OdbX/mZL04Ug/F2ljflCNtkkPnrxjCCd7ManHxQw=
Received: from SN4PR0501CA0063.namprd05.prod.outlook.com
 (2603:10b6:803:41::40) by MW3PR12MB4347.namprd12.prod.outlook.com
 (2603:10b6:303:2e::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 05:27:16 +0000
Received: from SA2PEPF00001506.namprd04.prod.outlook.com
 (2603:10b6:803:41:cafe::8f) by SN4PR0501CA0063.outlook.office365.com
 (2603:10b6:803:41::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.14 via Frontend
 Transport; Mon, 8 Jan 2024 05:27:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 SA2PEPF00001506.mail.protection.outlook.com (10.167.242.38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7181.13 via Frontend Transport; Mon, 8 Jan 2024 05:27:15 +0000
Received: from SATLEXMB08.amd.com (10.181.40.132) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34; Sun, 7 Jan
 2024 23:27:13 -0600
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB08.amd.com
 (10.181.40.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.32; Sun, 7 Jan
 2024 21:26:56 -0800
Received: from xhdbharathm40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2507.34 via Frontend
 Transport; Sun, 7 Jan 2024 23:26:53 -0600
From: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
To: <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<michal.simek@amd.com>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
CC: <linux-kernel@vger.kernel.org->, <praveent@amd.com>
Subject: [PATCH V3 2/3] dt-bindings: nvmem: Convert xlnx,zynqmp-nvmem.txt to yaml
Date: Mon, 8 Jan 2024 10:56:16 +0530
Message-ID: <20240108052617.32510-3-praveen.teja.kundanala@amd.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
References: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF00001506:EE_|MW3PR12MB4347:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bb26eed-3236-4e57-40e6-08dc100a7979
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	oXuf0EDrTz0ddNdVqVaE00ClACKCbnNR/P/aiAjatpdzRDsuputHCIIZeN9tnkFfd6BWZeKcWlawednOjTibV0G9RJMxYduiwsbhPrBnSiPGeunhaznVVulDHmpQ3RBmX6oy3GM8iuVmXw1E868SXMhZoMA0BFeF3bUoX347NufamJ7GoI5C8KrIYb/P0GZ6yxEfZEvZpsq1OqN7mAItM2hHWlaConD9U3garkuU/Bl2D8gmHWbFFT1WrEuo34zi7DHxPSykVxQrZfODsWUFSj825ShdUE6NsiDufMsuVzlo/bid3g0ycnaPmPD9RRyQBuDp8TmQAhtfpW++9bEFNhe4Fk30QA2OegLcdLKWbg3+wMptmi0V29WReO2xgG9p17Qc48ndV2E0oe49np1sghR0h7OjnFwpN8Y3LR47wuetC6J4HD7P2OUwHDOyK1RnoGZQ+pIP0Uo9IhqNGuB04SgZdludZsCnf1fIx0W9skhFjeoD8uLZ42vRAVXLrHQypeOreMNOMMS5G3EvaWpUN5x1KbKHXhyvxj366HO82izaD/T+azYRExgb1YpUq6d3pNN5+pEZsPWwXEQ6EHTaJcxBhCYriJMGjJvc9qiKYyATFbgznKJ5/w2g1cu9pEisIPPgEFe7r5E2345V14gRgNRo9aAO7nif0+xXRmJZkuOrii1cUgB74wfMTxiZbhUUBfVsbdTxgWXSsGbC1R3xvYafStN8qCs0QrfJMDdZOWl9J9qa0WrU9O8jO7HmKyWhc8sKKz3lHeCXKtz/HLx9NQ==
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(396003)(136003)(376002)(346002)(230922051799003)(1800799012)(64100799003)(186009)(82310400011)(451199024)(46966006)(40470700004)(36840700001)(81166007)(41300700001)(2906002)(5660300002)(82740400003)(110136005)(40460700003)(36756003)(36860700001)(86362001)(356005)(103116003)(40480700001)(6666004)(316002)(8676002)(8936002)(4326008)(70206006)(47076005)(70586007)(83380400001)(966005)(26005)(1076003)(478600001)(426003)(336012)(2616005)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 05:27:15.3006
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bb26eed-3236-4e57-40e6-08dc100a7979
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SA2PEPF00001506.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4347

Convert the xlnx,zynqmp-nvmem.txt to yaml.

Signed-off-by: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
---
Please note that DTB check will fail
for zyqnmp dtsi with the current changes.
Accompanying Device Tree Source (DTS)
changes will be sent out separately.
---
 .../bindings/nvmem/xlnx,zynqmp-nvmem.txt      | 46 -------------------
 .../bindings/nvmem/xlnx,zynqmp-nvmem.yaml     | 42 +++++++++++++++++
 2 files changed, 42 insertions(+), 46 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt
 create mode 100644 Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt b/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt
deleted file mode 100644
index 4881561b3a02..000000000000
--- a/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt
+++ /dev/null
@@ -1,46 +0,0 @@
---------------------------------------------------------------------------
-=  Zynq UltraScale+ MPSoC nvmem firmware driver binding =
---------------------------------------------------------------------------
-The nvmem_firmware node provides access to the hardware related data
-like soc revision, IDCODE... etc, By using the firmware interface.
-
-Required properties:
-- compatible: should be "xlnx,zynqmp-nvmem-fw"
-
-= Data cells =
-Are child nodes of silicon id, bindings of which as described in
-bindings/nvmem/nvmem.txt
-
--------
- Example
--------
-firmware {
-	zynqmp_firmware: zynqmp-firmware {
-		compatible = "xlnx,zynqmp-firmware";
-		method = "smc";
-
-		nvmem_firmware {
-			compatible = "xlnx,zynqmp-nvmem-fw";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			/* Data cells */
-			soc_revision: soc_revision {
-				reg = <0x0 0x4>;
-			};
-		};
-	};
-};
-
-= Data consumers =
-Are device nodes which consume nvmem data cells.
-
-For example:
-	pcap {
-		...
-
-		nvmem-cells = <&soc_revision>;
-		nvmem-cell-names = "soc_revision";
-
-		...
-	};
diff --git a/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml b/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
new file mode 100644
index 000000000000..917c40d5c382
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/xlnx,zynqmp-nvmem.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Zynq UltraScale+ MPSoC Non Volatile Memory interface
+
+description: |
+    The ZynqMP MPSoC provides access to the hardware related data
+    like SOC revision, IDCODE and specific purpose efuses.
+
+maintainers:
+  - Kalyani Akula <kalyani.akula@amd.com>
+  - Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
+
+allOf:
+  - $ref: nvmem.yaml#
+
+properties:
+  compatible:
+    const: xlnx,zynqmp-nvmem-fw
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    nvmem {
+        compatible = "xlnx,zynqmp-nvmem-fw";
+        nvmem-layout {
+            compatible = "fixed-layout";
+            #address-cells = <1>;
+            #size-cells = <1>;
+
+            soc_revision: soc-revision@0 {
+                reg = <0x0 0x4>;
+            };
+        };
+    };
-- 
2.38.1


