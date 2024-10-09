Return-Path: <devicetree+bounces-109313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B2645996069
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:14:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5A8E1C21F7B
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 941C91822E5;
	Wed,  9 Oct 2024 07:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Fl8bZGYC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C571817E900;
	Wed,  9 Oct 2024 07:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728458059; cv=none; b=BV9MVH9bnEdAUjKaevAyWZqYhjp53GIedrbE3EYIw9STcSOS0uvmO8KnC/Ys8G3+2Hsyzix13EKcZurX6LhJ1q0OHuKaOHkrFs68tbM0GCewijHBtcCmXQAZQqt+iaAFez+qJGTP3NzwxaLDNW5rK6hA4+DZzCntERxsOI0d+2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728458059; c=relaxed/simple;
	bh=uzITVXiNphhlxuf8FSttxAA5SsZxaUS7zoeg/g2WYXU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=tlpKS5VUgwSM4Vz5vcjbBLxZPe67te5AbX1IjA0L9cAnPjXUQftGlAdXA5Wr8hA1NaoR02SAmF7OSsRLI6AZmR8NAvwA3XA3PS/3qKeQm2i7Py4C4nWAcmejvmcARLNDknRImDw5OtBZM5UTbds2Kbz3sblWsCv40N4zjMvTeok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=Fl8bZGYC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4993Upaa032334;
	Wed, 9 Oct 2024 07:14:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FhphjEJUIzzWYU7kwkQcZhA46Rg6bTNpqt8f0ZOVfGQ=; b=Fl8bZGYCO/NFMxY6
	x8z8IuFcXlriJ00ysb2GHS0Qh72GAlhXVbL6xihKYt68HpCCDXkEXQ3uKid0TKXQ
	VWRQPXRFrteZaQXelH5ZpSiWX8BoAC892oTsifKNvuhJVGk+jX9DDrOfJS15PcB2
	QhE5O8GnCmgEQIgmp3pDba9oKcc3TRl9sJi5oUun1mlOkJsTCorNtxAn3mm+FYd4
	ubimQpumY96w0EXcYEcfJ3Blphl+ECS9b7o7X2hJ8/5wTouWRWWfbZSyx8L2JEJv
	b8ZBphIqXsBZSW+vIWKi3ziMcPaNXLq3nGHwjLlJC5EauJNUQ7grUzul15xy19PO
	EVreXw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 424wgs3vnj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 09 Oct 2024 07:14:06 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4997E5TA010450
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 9 Oct 2024 07:14:05 GMT
Received: from jingyw-gv.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 9 Oct 2024 00:14:00 -0700
From: Jingyi Wang <quic_jingyw@quicinc.com>
Date: Wed, 9 Oct 2024 15:13:33 +0800
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: describe qcs8300-tlmm
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241009-qcs8300_tlmm-v2-1-9e40dee5e4f1@quicinc.com>
References: <20241009-qcs8300_tlmm-v2-0-9e40dee5e4f1@quicinc.com>
In-Reply-To: <20241009-qcs8300_tlmm-v2-0-9e40dee5e4f1@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Richard
 Cochran" <richardcochran@gmail.com>
CC: <quic_tengfan@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_aiquny@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-gpio@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
        Jingyi Wang
	<quic_jingyw@quicinc.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728458035; l=4532;
 i=quic_jingyw@quicinc.com; s=20240910; h=from:subject:message-id;
 bh=uzITVXiNphhlxuf8FSttxAA5SsZxaUS7zoeg/g2WYXU=;
 b=etPok1mkRYOvf9LMKxEm6GVppDXAaaVhFs9WcS7WDvBQDblXUmBT8Wpew+WkCpSLMGaOjIyyr
 Qu8/rXB+YsEBN7R1ho5QyseSA/DnPtjOiywIM71BInBY2+yJQEpVf9A
X-Developer-Key: i=quic_jingyw@quicinc.com; a=ed25519;
 pk=ZRP1KgWMhlXXWlSYLoO7TSfwKgt6ke8hw5xWcSY+wLQ=
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 2v5jVI2OoWrOphScazb0XlsfOM8B4L0e
X-Proofpoint-ORIG-GUID: 2v5jVI2OoWrOphScazb0XlsfOM8B4L0e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 impostorscore=0 bulkscore=0 clxscore=1015 adultscore=0
 spamscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410090047

Add DT bindings for the TLMM controller on QCS8300 platforms.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
---
 .../bindings/pinctrl/qcom,qcs8300-tlmm.yaml        | 118 +++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,qcs8300-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,qcs8300-tlmm.yaml
new file mode 100644
index 000000000000..bb0d7132886a
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,qcs8300-tlmm.yaml
@@ -0,0 +1,118 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/qcom,qcs8300-tlmm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies, Inc. QCS8300 TLMM block
+
+maintainers:
+  - Jingyi Wang <quic_jingyw@quicinc.com>
+
+description: |
+  Top Level Mode Multiplexer pin controller in Qualcomm QCS8300 SoC.
+
+allOf:
+  - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,qcs8300-tlmm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  gpio-reserved-ranges:
+    minItems: 1
+    maxItems: 67
+
+  gpio-line-names:
+    maxItems: 133
+
+patternProperties:
+  "-state$":
+    oneOf:
+      - $ref: "#/$defs/qcom-qcs8300-tlmm-state"
+      - patternProperties:
+          "-pins$":
+            $ref: "#/$defs/qcom-qcs8300-tlmm-state"
+        additionalProperties: false
+
+$defs:
+  qcom-qcs8300-tlmm-state:
+    type: object
+    description:
+      Pinctrl node's client devices use subnodes for desired pin configuration.
+      Client device subnodes use below standard properties.
+    $ref: qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state
+    unevaluatedProperties: false
+
+    properties:
+      pins:
+        description:
+          List of gpio pins affected by the properties specified in this
+          subnode.
+        items:
+          oneOf:
+            - pattern: "^gpio([0-9]|[1-9][0-9]|1[0-2][0-9]|13[0-2])$"
+            - enum: [ ufs_reset, sdc1_rclk, sdc1_clk, sdc1_cmd, sdc1_data ]
+        minItems: 1
+        maxItems: 36
+
+      function:
+        description:
+          Specify the alternative function to be configured for the specified
+          pins.
+
+        enum: [ aoss_cti, atest_char, atest_usb2, audio_ref, cam_mclk,
+                cci_async, cci_i2c_scl, cci_i2c_sda, cci_timer, cri_trng,
+                dbg_out, ddr_bist, ddr_pxi0, ddr_pxi1, ddr_pxi2, ddr_pxi3,
+                edp0_hot, edp0_lcd, edp1_lcd, egpio, emac0_mcg0, emac0_mcg1,
+                emac0_mcg2, emac0_mcg3, emac0_mdc, emac0_mdio, emac0_ptp_aux,
+                emac0_ptp_pps, gcc_gp1, gcc_gp2, gcc_gp3, gcc_gp4, gcc_gp5,
+                gpio, hs0_mi2s, hs1_mi2s, hs2_mi2s, ibi_i3c, jitter_bist,
+                mdp0_vsync0, mdp0_vsync1, mdp0_vsync3, mdp0_vsync6, mdp0_vsync7,
+                mdp_vsync, mi2s1_data0, mi2s1_data1, mi2s1_sck, mi2s1_ws,
+                mi2s2_data0, mi2s2_data1, mi2s2_sck, mi2s2_ws, mi2s_mclk0,
+                mi2s_mclk1, pcie0_clkreq, pcie1_clkreq, phase_flag, pll_bist,
+                pll_clk, prng_rosc0, prng_rosc1, prng_rosc2, prng_rosc3,
+                qdss_cti, qdss_gpio, qup0_se0, qup0_se1, qup0_se2, qup0_se3,
+                qup0_se4, qup0_se5, qup0_se6, qup0_se7, qup1_se0, qup1_se1,
+                qup1_se2, qup1_se3, qup1_se4, qup1_se5, qup1_se6, qup1_se7,
+                qup2_se0, sailss_emac0, sailss_ospi, sail_top, sgmii_phy,
+                tb_trig, tgu_ch0, tgu_ch1, tgu_ch2, tgu_ch3, tsense_pwm1,
+                tsense_pwm2, tsense_pwm3, tsense_pwm4, usb2phy_ac,
+                vsense_trigger ]
+
+    required:
+      - pins
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    tlmm: pinctrl@f100000 {
+        compatible = "qcom,qcs8300-tlmm";
+        reg = <0x0f100000 0x300000>;
+        interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&tlmm 0 0 133>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+
+        qup-uart7-state {
+            pins = "gpio43", "gpio44";
+            function = "qup0_se7";
+        };
+    };
+...

-- 
2.25.1


