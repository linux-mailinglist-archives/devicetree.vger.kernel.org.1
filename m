Return-Path: <devicetree+bounces-1513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1227A6C73
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 22:46:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5ADB91C20E0C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 20:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7FCA37140;
	Tue, 19 Sep 2023 20:46:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7767835892
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 20:46:18 +0000 (UTC)
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0818493;
	Tue, 19 Sep 2023 13:46:17 -0700 (PDT)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38JIROAk031116;
	Tue, 19 Sep 2023 16:46:04 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3t6gc23s82-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Sep 2023 16:46:04 -0400 (EDT)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 38JKk3bR059541
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 19 Sep 2023 16:46:03 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 19 Sep 2023 16:46:02 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 19 Sep 2023 16:46:02 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 19 Sep 2023 16:46:02 -0400
Received: from HYB-a2JJhsYKAxD.ad.analog.com ([10.132.252.38])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 38JKjWcw032705;
	Tue, 19 Sep 2023 16:45:47 -0400
From: Gokhan Celik <gokhan.celik@analog.com>
To: <outreachy@lists.linux.dev>
CC: Gokhan Celik <gokhan.celik@analog.com>,
        Liam Girdwood
	<lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gokhan Celik <Gokhan.Celik@analog.com>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
Subject: [PATCH v2 2/2] regulator: dt-bindings: Add ADI MAX77503 support
Date: Tue, 19 Sep 2023 23:45:22 +0300
Message-ID: <5ce9482e53587d9250ecaa07d0908b987081b4e9.1695155379.git.gokhan.celik@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1695155379.git.gokhan.celik@analog.com>
References: <cover.1695155379.git.gokhan.celik@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: goQT9poUM5z38Phckr8lvcqg8Pge3ip7
X-Proofpoint-ORIG-GUID: goQT9poUM5z38Phckr8lvcqg8Pge3ip7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-19_10,2023-09-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=999
 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2309190177
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add ADI MAX77503 buck converter devicetree document.

Signed-off-by: Gokhan Celik <gokhan.celik@analog.com>
---
 .../regulator/adi,max77503-regulator.yaml     | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml

diff --git a/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml b/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml
new file mode 100644
index 000000000000..128e04ae3f4d
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2023 Analog Devices, Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/adi,max77503-regulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices MAX77503 Buck Converter
+
+maintainers:
+  - Gokhan Celik <Gokhan.Celik@analog.com>
+
+description: |
+  The Analog Devices MAX77503 is a single channel 14V input, 1.5A 
+  high-efficiency buck converter. This converter has 94% efficiency
+  for 2-Cell/3-Cell battery applications.
+
+allOf:
+  - $ref: regulator.yaml#
+
+properties:
+  compatible:
+    enum:
+      - adi,max77503
+
+  reg:
+    description: I2C address of the device
+    items:
+      - enum: [0x1e, 0x24, 0x37]
+
+required:
+  - compatible
+  - reg
+  - regulator-min-microvolt
+  - regulator-max-microvolt
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        regulator@1e {
+            compatible = "adi,max77503";
+            reg = <0x1e>;
+
+            regulator-min-microvolt = <800000>;
+            regulator-max-microvolt = <5000000>;
+        };
+    };
+
-- 
2.34.1


