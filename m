Return-Path: <devicetree+bounces-4170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 820607B1768
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:33:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3225D281491
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3AC7341A3;
	Thu, 28 Sep 2023 09:33:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587A631A83
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 09:33:04 +0000 (UTC)
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F174219B;
	Thu, 28 Sep 2023 02:33:00 -0700 (PDT)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38S8hI2V022933;
	Thu, 28 Sep 2023 05:32:49 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3tbx5y6xhx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Sep 2023 05:32:49 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 38S9WmRg056380
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 28 Sep 2023 05:32:48 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Thu, 28 Sep 2023 05:32:47 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Thu, 28 Sep 2023 05:32:47 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Thu, 28 Sep 2023 05:32:47 -0400
Received: from ubuntu20.04.ad.analog.com (HYB-d0iOFy9ma8q.ad.analog.com [10.48.65.139])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 38S9Vjfb028736;
	Thu, 28 Sep 2023 05:32:39 -0400
From: Eliza Balas <eliza.balas@analog.com>
To: 
CC: Eliza Balas <eliza.balas@analog.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Derek Kiernan <derek.kiernan@amd.com>,
        Dragan Cvetic
	<dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: misc: adi,axi-tdd: Add device-tree binding for TDD engine
Date: Thu, 28 Sep 2023 12:28:03 +0300
Message-ID: <20230928092804.22612-2-eliza.balas@analog.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230928092804.22612-1-eliza.balas@analog.com>
References: <20230928092804.22612-1-eliza.balas@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: D4PHCfXSckcw1YurCPPnzYjXlWZ7WEdc
X-Proofpoint-GUID: D4PHCfXSckcw1YurCPPnzYjXlWZ7WEdc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-28_07,2023-09-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 phishscore=0 mlxlogscore=999 spamscore=0 adultscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2309180000 definitions=main-2309280082
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add device tree documentation for the AXI TDD Core.
The generic TDD controller is in essence a waveform generator
capable of addressing RF applications which require Time Division
Duplexing, as well as controlling other modules of general
applications through its dedicated 32 channel outputs.

The reason of creating the generic TDD controller was to reduce
the naming confusion around the existing repurposed TDD core
built for AD9361, as well as expanding its number of output
channels for systems which require more than six controlling signals.

Signed-off-by: Eliza Balas <eliza.balas@analog.com>
---
 .../devicetree/bindings/misc/adi,axi-tdd.yaml | 65 +++++++++++++++++++
 MAINTAINERS                                   |  7 ++
 2 files changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml

diff --git a/Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml b/Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
new file mode 100644
index 000000000000..8938da801b95
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2023 Analog Devices Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/adi,axi-tdd.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices AXI TDD Core
+
+maintainers:
+  - Eliza Balas <eliza.balas@analog.com>
+
+description: |
+  The TDD controller is a waveform generator capable of addressing RF
+  applications which require Time Division Duplexing, as well as controlling
+  other modules of general applications through its dedicated 32 channel
+  outputs. It solves the synchronization issue when transmitting and receiving
+  multiple frames of data through multiple buffers.
+  The TDD IP core is part of the Analog Devices hdl reference designs and has
+  the following features:
+    * Up to 32 independent output channels
+    * Start/stop time values per channel
+    * Enable and polarity bit values per channel
+    * 32 bit-max internal reference counter
+    * Initial startup delay before waveform generation
+    * Configurable frame length and number of frames per burst
+    * 3 sources of synchronization: external, internal and software generated
+  For more information see the wiki:
+  https://wiki.analog.com/resources/fpga/docs/axi_tdd
+
+properties:
+  compatible:
+    enum:
+      - adi,axi-tdd-2.00.a
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: System clock
+      - description: TDD Core clock
+
+  clock-names:
+    items:
+      - const: s_axi_aclk
+      - const: intf_clk
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    tdd@84a00000 {
+        compatible = "adi,axi-tdd-2.00.a";
+        reg = <0x84a00000 0x10000>;
+        clocks = <&zynqmp_clk_PL0_REF>, <&zynqmp_clk_PL1_REF>;
+        clock-names = "s_axi_aclk", "intf_clk";
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index bf0f54c24f81..c5cc69c83c39 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1345,6 +1345,13 @@ S:	Supported
 W:	https://ez.analog.com/linux-software-drivers
 F:	drivers/dma/dma-axi-dmac.c
 
+ANALOG DEVICES INC GENERIC TDD ENGINE DRIVER
+M:	Eliza Balas <eliza.balas@analog.com>
+S:	Supported
+W:	http://wiki.analog.com/resources/fpga/docs/axi_tdd
+W:	http://ez.analog.com/linux-software-drivers/
+F:	Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
+
 ANALOG DEVICES INC IIO DRIVERS
 M:	Lars-Peter Clausen <lars@metafoo.de>
 M:	Michael Hennerich <Michael.Hennerich@analog.com>
-- 
2.25.1


