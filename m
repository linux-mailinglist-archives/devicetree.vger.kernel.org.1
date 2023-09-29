Return-Path: <devicetree+bounces-4440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3417B29B7
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 02:39:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 220411C20AF6
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 00:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 720F9A49;
	Fri, 29 Sep 2023 00:39:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF1D10FA
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 00:39:41 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EA5C199;
	Thu, 28 Sep 2023 17:39:39 -0700 (PDT)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38T0LeSF004291;
	Fri, 29 Sep 2023 00:39:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=HIjurGlTv0ZvYAR4Q8pB/LH3+AQ+59qEjHBWFY4T1H4=;
 b=NOY/R61eHqO9pg5DjXg+s0yNZPPm+tBn+LIOMg2vaq6+RcRBV86nZoq2MtmMYIA+cYfF
 N3X8DZ+lFK7VN1sRF63u8NOro4j5ZakzHsfW3PC57yL9KFoXgOj6CfAT9ibErwhnShZR
 WT4F32DkfvekK+GRyClE6mFZ6SYZvUCGRG38AaRDH8u8n0U6Y1DEScwZFIA80mVX+1ug
 M7xiTJdViojbKnG2+SsgnPZ8lUH2l6VohKfRflB0LAtslxX5iM0YWeCLdWK8EdZ0Y3dm
 zsfcVclyqyI6x+bFTMurxO8psY1ylhyyrEJTyzgEcer29PSMaciLPm/NFmlbrDHze3Ff Vw== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3td5se1v2q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 00:39:29 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38T0dSeF007736
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 00:39:28 GMT
Received: from hu-amelende-lv.qualcomm.com (10.49.16.6) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Thu, 28 Sep 2023 17:39:25 -0700
From: Anjelique Melendez <quic_amelende@quicinc.com>
To: <pavel@ucw.cz>, <lee@kernel.org>, <thierry.reding@gmail.com>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <agross@kernel.org>, <andersson@kernel.org>
CC: <luca.weiss@fairphone.com>, <konrad.dybcio@linaro.org>,
        <u.kleine-koenig@pengutronix.de>, <quic_subbaram@quicinc.com>,
        <quic_gurus@quicinc.com>, <linux-leds@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pwm@vger.kernel.org>,
        <kernel@quicinc.com>, Anjelique Melendez <quic_amelende@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 2/7] dt-bindings: leds: leds-qcom-lpg: Add support for LPG PPG
Date: Thu, 28 Sep 2023 17:38:55 -0700
Message-ID: <20230929003901.15086-3-quic_amelende@quicinc.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230929003901.15086-1-quic_amelende@quicinc.com>
References: <20230929003901.15086-1-quic_amelende@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: J1LFDAHqKfChDh7WizdIhl1E6kS9GzrW
X-Proofpoint-GUID: J1LFDAHqKfChDh7WizdIhl1E6kS9GzrW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-28_23,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 bulkscore=0 mlxlogscore=861 adultscore=0
 mlxscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309290002
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Update leds-qcom-lpg binding to support LPG PPG.

Signed-off-by: Anjelique Melendez <quic_amelende@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/leds/leds-qcom-lpg.yaml          | 89 ++++++++++++++++++-
 1 file changed, 88 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
index ea84ad426df1..590cd5ff9190 100644
--- a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
@@ -11,7 +11,7 @@ maintainers:
 
 description: >
   The Qualcomm Light Pulse Generator consists of three different hardware blocks;
-  a ramp generator with lookup table, the light pulse generator and a three
+  a ramp generator with lookup table (LUT), the light pulse generator and a three
   channel current sink. These blocks are found in a wide range of Qualcomm PMICs.
 
 properties:
@@ -63,6 +63,29 @@ properties:
         - description: dtest line to attach
         - description: flags for the attachment
 
+  nvmem:
+    description: >
+      This property is required for PMICs that supports PPG, which is when a
+      PMIC stores LPG per-channel data and pattern LUT in SDAM modules instead
+      of in a LUT peripheral. For PMICs, such as PM8350C, per-channel data
+      and pattern LUT is separated into 2 SDAM modules. In that case, phandles
+      to both SDAM modules need to be specified.
+    minItems: 1
+    maxItems: 2
+
+  nvmem-names:
+    minItems: 1
+    items:
+      - const: lpg_chan_sdam
+      - const: lut_sdam
+
+  qcom,pbs:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: >
+      Phandle of the Qualcomm Programmable Boot Sequencer node (PBS).
+      PBS node is used to trigger LPG pattern sequences for PMICs that support
+      single SDAM PPG.
+
   multi-led:
     type: object
     $ref: leds-class-multicolor.yaml#
@@ -106,6 +129,39 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,pmi632-lpg
+    then:
+      properties:
+        nvmem:
+          maxItems: 1
+        nvmem-names:
+          maxItems: 1
+      required:
+        - nvmem
+        - nvmem-names
+        - qcom,pbs
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pm8350c-pwm
+              - qcom,pm8550-pwm
+    then:
+      properties:
+        nvmem:
+          minItems: 2
+        nvmem-names:
+          minItems: 2
+      required:
+        - nvmem
+        - nvmem-names
+
 examples:
   - |
     #include <dt-bindings/leds/common.h>
@@ -191,4 +247,35 @@ examples:
       compatible = "qcom,pm8916-pwm";
       #pwm-cells = <2>;
     };
+  - |
+    #include <dt-bindings/leds/common.h>
+
+    led-controller {
+      compatible = "qcom,pmi632-lpg";
+      #address-cells = <1>;
+      #size-cells = <0>;
+      #pwm-cells = <2>;
+      nvmem-names = "lpg_chan_sdam";
+      nvmem = <&pmi632_sdam_7>;
+      qcom,pbs = <&pmi632_pbs_client3>;
+
+      led@1 {
+        reg = <1>;
+        color = <LED_COLOR_ID_RED>;
+        label = "red";
+      };
+
+      led@2 {
+        reg = <2>;
+        color = <LED_COLOR_ID_GREEN>;
+        label = "green";
+      };
+
+      led@3 {
+        reg = <3>;
+        color = <LED_COLOR_ID_BLUE>;
+        label = "blue";
+      };
+    };
+
 ...
-- 
2.41.0


