Return-Path: <devicetree+bounces-8432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCD17C82CD
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:15:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7459282B7C
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67EC511CAA;
	Fri, 13 Oct 2023 10:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="DmwfaumX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9019711CA0
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:15:28 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2062.outbound.protection.outlook.com [40.107.243.62])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10AD4E7;
	Fri, 13 Oct 2023 03:15:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=am/NYtrscdYUL8uUO3uKRuUxmITOwoVYPT0pR4LCZgNDqmbs1US+nmphC3+xZ3SaViGxUqQC1mVsB3dVT12CE7jnkFdz9bThW6/fN6rsiJo27XIzOzQ6gQHDR5UlS/L0LIxFep1BBuD/nPeiAr6XZiEJqWdii5C3MJn2u8DeUwZml+otAtpLmB8TML9ZyP7Xp7TXlQPSEto3zBvQGpXl1dsLl21NtAmhrkZLEguav19OXyW9USNRR9UJmfiNfAF1g2tksrasi4idLI/dT23ukhv4jnzwlz9ACM17bfaOC/u6YtbpJYongCOwd5bRTLAdho/hpwVzq2JE/5MYNwSbLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C3aiIK1J/uxTumQDI4aYsDbzu79nt0ZPEBe//iwH6XA=;
 b=ALC2ard9kgtKChIUZvEROUQT6vfwv+5g0Z8Gp2Am7I1cw81jRJ3rFo9wMeVahD9lTNWdf6XQT1JHQTHaTrw0m9tBYxZPkSKldJ9jScZpOuaqOjMmqcg0sfQy9AkJz1jPTvI24/6EmAiTb7UVnQMsFZ2fLi4lJN1vTeUE+vyTua0gG2qzTcO/gIzs7L+5NvR/Y7iRKyjFzHPqoO1PgKeSQsJNPWIueFYIFSruU63qMgMX9wOWLgtp/6Zi826/Cg7VH0w+9q+prFxbdc+6UVzKTDes710H42Js7ABlnaIjr0Gp0SNAsL2qEM6YJjiZTKU2JWWq3gYgjH+LxlT0LnbrSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C3aiIK1J/uxTumQDI4aYsDbzu79nt0ZPEBe//iwH6XA=;
 b=DmwfaumXRukRadSbF5ZZYXPy+WSy2NEBkRYxu+n9UcXUUqKVzgvRFrnmQDlgHiUZghl9NtbneBcZA4x40Ef59DGAvxNONJJFZ7XCRA5FD7vLJQT4pad6xm8TjJjPj6lgB6KTn1iePFSKgeY0db99yYc7Fkb4F8EIANcF1HYakBA=
Received: from BL1PR13CA0271.namprd13.prod.outlook.com (2603:10b6:208:2bc::6)
 by DM4PR12MB8558.namprd12.prod.outlook.com (2603:10b6:8:187::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Fri, 13 Oct
 2023 10:15:22 +0000
Received: from BL02EPF0001A108.namprd05.prod.outlook.com
 (2603:10b6:208:2bc:cafe::99) by BL1PR13CA0271.outlook.office365.com
 (2603:10b6:208:2bc::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.27 via Frontend
 Transport; Fri, 13 Oct 2023 10:15:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BL02EPF0001A108.mail.protection.outlook.com (10.167.241.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6838.22 via Frontend Transport; Fri, 13 Oct 2023 10:15:21 +0000
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 13 Oct
 2023 05:15:21 -0500
Received: from xhdharshah40.xilinx.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2507.27 via Frontend
 Transport; Fri, 13 Oct 2023 05:15:19 -0500
From: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
To: <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<michal.simek@amd.com>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
CC: <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/5] dt-bindings: nvmem: Add nodes for ZynqMP efuses
Date: Fri, 13 Oct 2023 15:44:48 +0530
Message-ID: <20231013101450.573-4-praveen.teja.kundanala@amd.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20231013101450.573-1-praveen.teja.kundanala@amd.com>
References: <20231013101450.573-1-praveen.teja.kundanala@amd.com>
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
X-MS-TrafficTypeDiagnostic: BL02EPF0001A108:EE_|DM4PR12MB8558:EE_
X-MS-Office365-Filtering-Correlation-Id: b86d1ae2-23ee-43bf-ea18-08dbcbd54f32
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	gXQjNCpoJUckor14poBIcmaQ+mRBtel2bh8kZMUYX2bzxBxZg3mJUCHL3fWsxkEu5g9AceN2PMjfXQ5s8Myp9IEBN99CcnEFMCOEPnvyibH4wdMj2itX0RD8KXRVK+bzsQ3ZEgwZcqJiFcTVIV1mJkO7K34MI/ZDIK5+GSV9wpc7aWsFyvDu7a5A4XRjESnvlcwjWtDg3KL6Lyhd1BxT0f1rgKqyX3jU/4xnSEZlP/07YQaMNjK+wbxufhvT9m+RVrMZzzuokJ7WjjHyGzUcJ4F9e2Hp5k5BAC+pimZ0EbxWrStqFyhvvZwXj2w1U/POnx1C0hCZemIzU8OAGgQv/+t1E7E48tKq5F30dXvnqEPsdwOesj6SdN/XuwMNfG4QgQpYibzKs+gi9OgDyracEGTAX6M3txvvjTjWodeHJmyf7Tx8WqkthJ1js1UNBrTIeqttCmJ5gN0p08eneatdOcFO1oWI+PpRaacZJn2KbAk5jhSxfU0umr0tbaD8FR6XPLd79pPlPzBUtNimI2c8LjMr9o8895T6T3dZy/mvO3rg7ugxj19qILj6z93CNgX0ddFuk8tBjqMLw1GbYe0qFxqDkDyATsbOG/8O3LC/4z8wlIVHf4nlhZlRiAVb2OhiE2yBOpaHYr3RseClKyPTd4BbFUbjTi53GvjE87VUHC2iFL2IT3bpcXX6bNJMbiK7Td2YrrvQqNbgi8d0dzN9iWJpoGjXZ/rPrnEIpqTyaXWfDEVvswi5giCZU8j+ojY1Z+BR9Ud+LVTvcElyz8ep6w==
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(376002)(136003)(346002)(39860400002)(396003)(230922051799003)(186009)(1800799009)(451199024)(82310400011)(64100799003)(40470700004)(46966006)(36840700001)(70206006)(316002)(70586007)(110136005)(4326008)(8936002)(8676002)(41300700001)(36756003)(336012)(426003)(36860700001)(5660300002)(356005)(82740400003)(81166007)(2906002)(103116003)(26005)(47076005)(2616005)(478600001)(40460700003)(6666004)(1076003)(86362001)(40480700001)(83380400001)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 10:15:21.9954
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b86d1ae2-23ee-43bf-ea18-08dbcbd54f32
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A108.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB8558
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Added nodes for ZynqMP specific purpose and PUF user efuses

Signed-off-by: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
---
 .../bindings/nvmem/xlnx,zynqmp-nvmem.yaml     | 213 +++++++++++++++++-
 1 file changed, 212 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml b/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
index e03ed8c32537..d2a036a80cda 100644
--- a/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
@@ -8,7 +8,7 @@ title: Zynq UltraScale+ MPSoC Non Volatile Memory interface
 
 description: |
     The ZynqMP MPSoC provides access to the hardware related data
-    like SOC revision, IDCODE.
+    like SOC revision, IDCODE and specific purpose efuses.
 
 maintainers:
   - Kalyani Akula <kalyani.akula@amd.com>
@@ -43,6 +43,140 @@ patternProperties:
     required:
       - reg
 
+  "^efuse_dna@c$":
+    type: object
+    description:
+      This node is used to read DNA of ZynqMP SOC. Read-only.
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+  "^efuse_usr(0@20|1@24|2@28|3@2c|4@30|5@34|6@38|7@3c)$":
+    type: object
+    description:
+      Eight 32-bit user efuses. Read and Write is supported.
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+  "^efuse_miscusr@40$":
+    type: object
+    description:
+      32-bit MISC user efuse space. Read and Write is supported.
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+  "^efuse_chash@50$":
+    type: object
+    description:
+      32-bit PUF chash space. Read and Write is supported.
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+  "^efuse_pufmisc@54$":
+    type: object
+    description:
+      32-bit PUF MISC control space. Read and Write is supported.
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+  "^efuse_sec@58$":
+    type: object
+    description:
+      32-bit secure control space. Read and Write is supported.
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+  "^efuse_spkid@5c$":
+    type: object
+    description:
+      32-bit SPK ID. Read and Write is supported.
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+  "^efuse_aeskey@60$":
+    type: object
+    description:
+      256-bit aes key. Only Write is supported.
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+  "^efuse_ppk0hash@a0$":
+    type: object
+    description:
+      384-bit PPK0 hash. Read and Write is supported.
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+  "^efuse_ppk1hash@d0$":
+    type: object
+    description:
+      384-bit PPK1 hash. Read and Write is supported.
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+  "^efuse_pufuser@100$":
+    type: object
+    description:
+      This node represents the 127(0x7F) 32-bit PUF(Physical Unclonable Function)
+      helper data efuses which are repurposed as user fuses.
+      Read and Write is supported.
+
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
 additionalProperties: false
 
 examples:
@@ -56,4 +190,81 @@ examples:
         soc_revision: soc_revision@0 {
             reg = <0x0 0x4>;
         };
+        /*
+        * efuse memory access:
+        * all the efuse fields need to be read
+        * with the exact size specified in the node
+        */
+        /* DNA */
+        efuse_dna: efuse_dna@c {
+            reg = <0xc 0xc>;
+        };
+        /* User 0 */
+        efuse_usr0: efuse_usr0@20 {
+            reg = <0x20 0x4>;
+        };
+        /* User 1 */
+        efuse_usr1: efuse_usr1@24 {
+            reg = <0x24 0x4>;
+        };
+        /* User 2 */
+        efuse_usr2: efuse_usr2@28 {
+            reg = <0x28 0x4>;
+        };
+        /* User 3 */
+        efuse_usr3: efuse_usr3@2c {
+            reg = <0x2c 0x4>;
+        };
+        /* User 4 */
+        efuse_usr4: efuse_usr4@30 {
+            reg = <0x30 0x4>;
+        };
+        /* User 5 */
+        efuse_usr5: efuse_usr5@34 {
+            reg = <0x34 0x4>;
+        };
+        /* User 6 */
+        efuse_usr6: efuse_usr6@38 {
+            reg = <0x38 0x4>;
+        };
+        /* User 7 */
+        efuse_usr7: efuse_usr7@3c {
+            reg = <0x3c 0x4>;
+        };
+        /* Misc user control bits */
+        efuse_miscusr: efuse_miscusr@40 {
+            reg = <0x40 0x4>;
+        };
+        /* PUF chash */
+        efuse_chash: efuse_chash@50 {
+            reg = <0x50 0x4>;
+        };
+        /* PUF misc */
+        efuse_pufmisc: efuse_pufmisc@54 {
+            reg = <0x54 0x4>;
+        };
+        /* SEC_CTRL */
+        efuse_sec: efuse_sec@58 {
+            reg = <0x58 0x4>;
+        };
+        /* SPK ID */
+        efuse_spkid: efuse_spkid@5c {
+            reg = <0x5c 0x4>;
+        };
+        /* AES Key */
+        efuse_aeskey: efuse_aeskey@60 {
+            reg = <0x60 0x20>;
+        };
+        /* PPK0 hash */
+        efuse_ppk0hash: efuse_ppk0hash@a0 {
+            reg = <0xa0 0x30>;
+        };
+        /* PPK1 hash */
+        efuse_ppk1hash: efuse_ppk1hash@d0 {
+            reg = <0xd0 0x30>;
+        };
+        /* PUF user fuses */
+        efuse_pufuser: efuse_pufuser@100  {
+            reg = <0x100 0x7F>;
+        };
     };
-- 
2.36.1


