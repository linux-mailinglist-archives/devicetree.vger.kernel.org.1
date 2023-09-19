Return-Path: <devicetree+bounces-1315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B40B37A5E25
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 11:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EA9A28246D
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6DD93D382;
	Tue, 19 Sep 2023 09:36:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51625687
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 09:36:05 +0000 (UTC)
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FC53E6;
	Tue, 19 Sep 2023 02:35:50 -0700 (PDT)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38J8FW13001581;
	Tue, 19 Sep 2023 05:35:25 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3t5s7kn4hr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Sep 2023 05:35:24 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 38J9ZNka007691
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 19 Sep 2023 05:35:23 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 19 Sep
 2023 05:35:22 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 19 Sep 2023 05:35:22 -0400
Received: from daniel-Precision-5530.ad.analog.com ([10.48.65.230])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 38J9Z1d8030605;
	Tue, 19 Sep 2023 05:35:16 -0400
From: Daniel Matyas <daniel.matyas@analog.com>
To: 
CC: Daniel Matyas <daniel.matyas@analog.com>,
        Jean Delvare
	<jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        <linux-hwmon@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-doc@vger.kernel.org>
Subject: [PATCH v4 3/7] dt-bindings: hwmon: Add possible new properties to max31827 bindings
Date: Tue, 19 Sep 2023 12:34:51 +0300
Message-ID: <20230919093456.10592-3-daniel.matyas@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230919093456.10592-1-daniel.matyas@analog.com>
References: <20230919093456.10592-1-daniel.matyas@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: BsOc3vwKK_u-s5Cp3dEOwaeHggD-G10J
X-Proofpoint-ORIG-GUID: BsOc3vwKK_u-s5Cp3dEOwaeHggD-G10J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-19_04,2023-09-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 mlxscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 impostorscore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2308100000
 definitions=main-2309190080
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

These modify the corresponding bits in the configuration register.

adi,comp-int is a hardware property, because it affects the behavior
of the interrupt signal and whatever it is connected to.

adi,timeout-enable is a hardware property, because it affects i2c
bus operation.

Signed-off-by: Daniel Matyas <daniel.matyas@analog.com>
---

v3 -> v4: Changed property names (adi,flt-q = adi,fault-q; adi,alrm-pol
= adi,alarm-pol). Expressed default values in binding.

v2 -> v3: Changed commit subject and message

v1 -> v2: Added adi,timeout-enable property to binding. Fixed
dt_binding_check errors.

 .../bindings/hwmon/adi,max31827.yaml          | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/adi,max31827.yaml b/Documentation/devicetree/bindings/hwmon/adi,max31827.yaml
index 2dc8b07b4d3b..f60e06ab7d0a 100644
--- a/Documentation/devicetree/bindings/hwmon/adi,max31827.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adi,max31827.yaml
@@ -32,6 +32,68 @@ properties:
       Must have values in the interval (1.6V; 3.6V) in order for the device to
       function correctly.
 
+  adi,comp-int:
+    description:
+      If present interrupt mode is used. If not present comparator mode is used
+      (default).
+    type: boolean
+
+  adi,alarm-pol:
+    description:
+      Sets the alarms active state.
+            - 0 = active low
+            - 1 = active high
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  adi,fault-q:
+    description:
+      Select how many consecutive temperature faults must occur before
+      overtemperature or undertemperature faults are indicated in the
+      corresponding status bits.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [1, 2, 4, 8]
+
+  adi,timeout-enable:
+    description:
+      Enables timeout. Bus timeout resets the I2C-compatible interface when SCL
+      is low for more than 30ms (nominal).
+    type: boolean
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: adi,max31829
+
+    then:
+      properties:
+        adi,alarm-pol:
+          default: 1
+
+    else:
+      properties:
+        adi,alarm-pol:
+          default: 0
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: adi,max31827
+
+    then:
+      properties:
+        adi,fault-q:
+          default: 1
+
+    else:
+      properties:
+        adi,fault-q:
+          default: 4
+
+
 required:
   - compatible
   - reg
@@ -49,6 +111,10 @@ examples:
             compatible = "adi,max31827";
             reg = <0x42>;
             vref-supply = <&reg_vdd>;
+            adi,comp-int;
+            adi,alarm-pol = <0>;
+            adi,fault-q = <1>;
+            adi,timeout-enable;
         };
     };
 ...
-- 
2.34.1


