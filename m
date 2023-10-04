Return-Path: <devicetree+bounces-5735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6CA7B7B0C
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:05:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 67A4E281446
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3E79107B8;
	Wed,  4 Oct 2023 09:05:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA21B107B0
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 09:05:47 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB830E9;
	Wed,  4 Oct 2023 02:05:40 -0700 (PDT)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3945XZC6014767;
	Wed, 4 Oct 2023 09:05:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=KLlIbxbr6FoU2YW+qTSg2/yxNKk+LwDOZJ8E9V40cmk=;
 b=baIquWe06O/7gLkahG32HUrEZVrVMwPGxfpo0g9+iO0rIeQAPxTkw6WBd4y4MVGcNlc1
 l18GYAvaa3ePEx6E/KvZXC1UxTmA6IlpZgnIsAJTB0ZDqkIqE2tqm6HzimwfNlcs97vg
 +XQjm+uglGwlRwC34FguhFOw/vKk6jj+vg3nqbvMEFY3+tnB/O1rETRqducYiSrbnVoA
 IFzjkU/OBCOMZntrdn9rcytLMSptRRpLxhCG+WQ+RlFJI9JmF8S3QVYeG4qf+a53Hqml
 3XpNdNfH4bAgNFc4g25RcX2AxQiLhE2STwSWi3lQuCNZbZM1T6y3ssCFnVMqRN2T559n eA== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tgr9mhcjt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Oct 2023 09:05:22 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39495KHv014034
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Oct 2023 09:05:20 GMT
Received: from hu-devipriy-blr.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Wed, 4 Oct 2023 02:05:15 -0700
From: Devi Priya <quic_devipriy@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lee@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <thierry.reding@gmail.com>, <ndesaulniers@google.com>,
        <trix@redhat.com>, <baruch@tkos.co.il>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <llvm@lists.linux.dev>
Subject: [PATCH V13 2/4] dt-bindings: pwm: add IPQ6018 binding
Date: Wed, 4 Oct 2023 14:34:47 +0530
Message-ID: <20231004090449.256229-3-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231004090449.256229-1-quic_devipriy@quicinc.com>
References: <20231004090449.256229-1-quic_devipriy@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: XQEd-T8x5J1QuMSJw4Bh92ImV3vXhjvt
X-Proofpoint-ORIG-GUID: XQEd-T8x5J1QuMSJw4Bh92ImV3vXhjvt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_01,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 mlxscore=0 adultscore=0 clxscore=1015
 mlxlogscore=999 phishscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310040064
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

DT binding for the PWM block in Qualcomm IPQ6018 SoC.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Co-developed-by: Baruch Siach <baruch.siach@siklu.com>
Signed-off-by: Baruch Siach <baruch.siach@siklu.com>
Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
---
v13:

  Updated the file name to match the compatible
  
  Sorted the properties and updated the order in the required field

  Dropped the syscon node from examples

v12:

  Picked up the R-b tag

v11:

  No change

v10:

  No change

v9:

  Add 'ranges' property to example (Rob)

  Drop label in example (Rob)

v8:

  Add size cell to 'reg' (Rob)

v7:

  Use 'reg' instead of 'offset' (Rob)

  Drop 'clock-names' and 'assigned-clock*' (Bjorn)

  Use single cell address/size in example node (Bjorn)

  Move '#pwm-cells' lower in example node (Bjorn)

  List 'reg' as required

v6:

  Device node is child of TCSR; remove phandle (Rob Herring)

  Add assigned-clocks/assigned-clock-rates (Uwe Kleine-König)

v5: Use qcom,pwm-regs for phandle instead of direct regs (Bjorn
    Andersson, Kathiravan T)

v4: Update the binding example node as well (Rob Herring's bot)

v3: s/qcom,pwm-ipq6018/qcom,ipq6018-pwm/ (Rob Herring)

v2: Make #pwm-cells const (Rob Herring)

 .../bindings/pwm/qcom,ipq6018-pwm.yaml        | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/qcom,ipq6018-pwm.yaml

diff --git a/Documentation/devicetree/bindings/pwm/qcom,ipq6018-pwm.yaml b/Documentation/devicetree/bindings/pwm/qcom,ipq6018-pwm.yaml
new file mode 100644
index 000000000000..6d0d7ed271f7
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/qcom,ipq6018-pwm.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/qcom,ipq6018-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm IPQ6018 PWM controller
+
+maintainers:
+  - Baruch Siach <baruch@tkos.co.il>
+
+properties:
+  compatible:
+    const: qcom,ipq6018-pwm
+
+  reg:
+    description: Offset of PWM register in the TCSR block.
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  "#pwm-cells":
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - "#pwm-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-ipq6018.h>
+
+    pwm: pwm@a010 {
+        compatible = "qcom,ipq6018-pwm";
+        reg = <0xa010 0x20>;
+        clocks = <&gcc GCC_ADSS_PWM_CLK>;
+        assigned-clocks = <&gcc GCC_ADSS_PWM_CLK>;
+        assigned-clock-rates = <100000000>;
+        #pwm-cells = <2>;
+    };
-- 
2.34.1


