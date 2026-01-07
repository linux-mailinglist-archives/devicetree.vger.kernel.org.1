Return-Path: <devicetree+bounces-252493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E73CFFB3B
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 20:20:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0E45A3001BE4
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 19:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0B4332BF2F;
	Wed,  7 Jan 2026 19:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EFqIBATB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ffGKHDQB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA4D318EFD
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 19:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767813629; cv=none; b=TWIhk3QEJis1WcPq2bLMABxXxgNM7IJCvA78T6nd+ixtP5U5zwWe2XxjWGqIZ78t5sAvmCkfkHtjpp+CYhdMVRX0m5Bp4CwDExgidHniZwdcpGETIO0phBJnLX0R+tyFKDKQTiIlopLk02MLg3kGNMBjTTZ+32jufeKTfb6gv3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767813629; c=relaxed/simple;
	bh=tyP/V/skScf7mp3+WCTbe3wELSTuT9RspJs4XrrJTMI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bDaaB7HxJE7eG0p7msCMrIlJ3S0csjNuDMoqhzyhvHj3cq/del3fnez/1ylk0UdLAxRwjY1tNh+Flv5laE5y5ed+e9JTjkLZkCrxgltGR4B87Hz1T3RL7Vzb45nSOUlm0MfIFDaheN/48inDkGbzwWJek9sO0rw+MeS1qBWLZX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EFqIBATB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ffGKHDQB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607HPIou2988528
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 19:20:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lX6WHCx/JN7
	QHObDYbJg7ZM7OVn3XmiYWVeoPCXFwVA=; b=EFqIBATBVR+lUGbteYFe/wQLaJF
	MdYEZPjHrHpmA4x0mN9CP962Hq/za8Jte4IRFVjoXqnbJDWKc9AiYjZJnoeY8FkQ
	463+elEILdQ7IBjCIQFticFC9RdXkilGnR+grcmOv8j5jimXPbsjhzOXyUugKqP8
	MqxUXg+y8HJLy2d2c9UIKHA3JMKhcK7n4WaF8tDs1qzlY1BZvMCiZr/YIRSRS9Ju
	YoNu+/teFB4XG0rJxwyHx6I26FdXzdLI0szozzHT0FGPAX3TRadGN4NbRCrn0dY+
	WOCDrOUoE8rtQE2xkd/U0LVTQoPWLnTc2GWDHvXrCSMegdwX7dFGTU5KUTA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn2nsu4e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 19:20:26 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c904a1168so3588051a91.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 11:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767813626; x=1768418426; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lX6WHCx/JN7QHObDYbJg7ZM7OVn3XmiYWVeoPCXFwVA=;
        b=ffGKHDQBPaX93ngmVzHZMPLOKx+jMocJFhIWBThbGRsWGmwElPxO6S5XC7Ci/qBmhc
         7JiLa/BVAacNCei/locYUXBipbWKwUS6/EyiTd4C3t01LNOW2ZS/u0vEsDqyyjRpiDj/
         DwpFi+qquq6K18s7GvR05W0382PwHE5tWC6lsSG5x5d27iNhzqhmsGlPEwFwiCeSfPcI
         Qmxqv/eYwwUw+owJsLqsS1UDDG9S5Rodp1+txZUzTDxjOAMg9McKvak/gf1PWfJu+lvF
         ojM604AJrMVKVRoCzvJ5fLBzwqS1mJgoOVHqEAyJ0JjTH+bCufSP7M0hNaMzM7mVhKQz
         xUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767813626; x=1768418426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lX6WHCx/JN7QHObDYbJg7ZM7OVn3XmiYWVeoPCXFwVA=;
        b=nMssxvtbB0eI17YmrQtX04baTynh36LHyJNrJH0BZwq9LuzAtOx/EAk2bAot5So9vZ
         51t2HWFMJCGi7QYkeFJ1vFMDqXYEG6PZFSLVDl73XXBw/epgNsRvBgQGbNAo/5P2I9/a
         WZREXPKmO64J+q3N+RB6EaHgUp7mDNl5whVeVF3YqaxGN0BB1UhHcAES6q1WtJbh9qmf
         0qUydxU+XlKZxCuceKeOco/PIyUtlea3ATTv8krb+4aooTp4yVMdYO3dYdabgEcDlkwn
         QgGa144UY2q4lr3PtAy/AXMq4n1qkZTFRXzvrflA8T11GULRY7qyFMuqpxFo8cFBPajK
         aiZg==
X-Forwarded-Encrypted: i=1; AJvYcCWWzvh5p/yNBEiIXXuodwmRZovhjMpEgBpozIy4f5ok12n71LZBoWVHtuTD3Wze0GshFxmok2SFpLYG@vger.kernel.org
X-Gm-Message-State: AOJu0YyEJOYeDVR1D/jRI7QInCu7mHlpm7VFKzN/4nrSoK3d1s3ytqJY
	m19O0izYrVS8AZyoeTkeUsu2u7CPQpoC1VmdziXEKW/5+jpfWTJ7y119iUF+kYelzpXKgKVrwbp
	OQDDRsQLHTG9pJ6PvzgJ6cLI/q9QfOyvtMUyW/6se28mOVxiGlVgJBMevyjGogoE+
X-Gm-Gg: AY/fxX60ZcBBg9fbXbnQeGajm99nm3ysTwbfQDbauFMwuvM1Hksfdq2OZEM3CA6VN57
	/Lq+zPf5//3stKQDWdX0ILqP5WE8cCIq92hnUwUVjuRlzKVsQioGztvglaGp7S7qRguFYUsj/EV
	91j3GvjUFxUO70y+VWLqVCVw+QqgbEdkiYXvLIghdGdHpPN+cDlYEEB2k0X7EmBkpbUVY1P3qUg
	7NmfqivCUPCglNqu5czrdeh1DcZvCh7+qRe7+h/bXM4b45HAv61CyXPKLEJpGBHTAWYnK7W9on6
	Il+2r08FubMj0nSkbhCt8n6pVTojqIM7H05RtXU6s63YYEJfL2mEOmA5inpjZf7ZIgNWck0Smsd
	SiYriJ/URfH2jMfTrUmp2xLRemLUHFipwPi4d/5cY0M22hQ==
X-Received: by 2002:a17:90b:5884:b0:33f:eca0:47c6 with SMTP id 98e67ed59e1d1-34f68c27d86mr2989812a91.30.1767813625528;
        Wed, 07 Jan 2026 11:20:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGr0EmpIL15U+IbCIlvrn3vzsxZIsZrdOIKp6bfOdosBumro4P26Dw1embFFuQ06lzk4B7wnw==
X-Received: by 2002:a17:90b:5884:b0:33f:eca0:47c6 with SMTP id 98e67ed59e1d1-34f68c27d86mr2989791a91.30.1767813625012;
        Wed, 07 Jan 2026 11:20:25 -0800 (PST)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f7c4141sm5756375a91.6.2026.01.07.11.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 11:20:24 -0800 (PST)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: qcom,sa8775p-lpass-lpi-pinctrl: Add SA8775P LPASS pinctrl
Date: Thu,  8 Jan 2026 00:50:06 +0530
Message-Id: <20260107192007.500995-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260107192007.500995-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20260107192007.500995-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDE1MiBTYWx0ZWRfX7LEPttECyusf
 C66kWOkRuH5dXp6j3zPWwVOCGnGtep0o/mUNAjEUvmCoHwBfYD4XhW88LSVeDNZP0Xdwzp8WRrx
 uMZPD8Yrd1pxPcKO2T0D8Kfmm4WlEFnydiR1wzK+NijJRcVlzcRes/drJi2EtpQFBEyBs+wxZpA
 uzAl0Gt/AmdS5Wh50dQX+AQIM30KZ995aE7akRvWB+rkZClbTjBRkaEwFXT674n63+lLLsE2wFu
 BhpghV5blh7vhNQTvqy+8a6JXrU+bBapAygya/lgkxnYtyo48JA0Eq/B79ZpbeDjNYHQQR1Rls9
 8Z0Tx5IS6YcI84psTuFIvMye2bCO6FpIQGc4L+TzjtxvigXyql6dVOGYaZVdjnwDU+RWiUMcM37
 j0WiLHg7sikfrrI4qE/xjKsz4wl64ZADPF6AAheJh6X2lf/ghy9miJNwMbb2FfU3jI81dpQG8Gy
 U7gUUuT7YWGVtyWsTiA==
X-Authority-Analysis: v=2.4 cv=CYEFJbrl c=1 sm=1 tr=0 ts=695eb1fa cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=bT5XQOCXPleopHcqzpYA:9
 a=iS9zxrgQBfv6-_F4QbHw:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: GA3tOLtw_tNJjNUHeJoWNSNGbtTBDTr7
X-Proofpoint-ORIG-GUID: GA3tOLtw_tNJjNUHeJoWNSNGbtTBDTr7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_03,2026-01-07_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070152

Add bindings for the pin controller in Low Power Audio SubSystem (LPASS)
of Qualcomm SA8775P SoC and also document the compatible for Qualcomm
QCS8300 SoC LPASS TLMM pin controller, fully compatible with SA8775P.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 .../qcom,sa8775p-lpass-lpi-pinctrl.yaml       | 112 ++++++++++++++++++
 1 file changed, 112 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml
new file mode 100644
index 000000000000..4442f376a7b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml
@@ -0,0 +1,112 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SA8775P SoC LPASS LPI TLMM
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
+
+description:
+  Top Level Mode Multiplexer pin controller in the Low Power Audio SubSystem
+  (LPASS) Low Power Island (LPI) of Qualcomm SA8775P SoC.
+
+properties:
+  compatible:
+    oneOf:
+      - const: qcom,sa8775p-lpass-lpi-pinctrl
+      - items:
+          - const: qcom,qcs8300-lpass-lpi-pinctrl
+          - const: qcom,sa8775p-lpass-lpi-pinctrl
+
+  reg:
+    items:
+      - description: LPASS LPI TLMM Control and Status registers
+      - description: LPASS LPI MCC registers
+
+  clocks:
+    items:
+      - description: LPASS Core voting clock
+      - description: LPASS Audio voting clock
+
+  clock-names:
+    items:
+      - const: core
+      - const: audio
+
+patternProperties:
+  "-state$":
+    oneOf:
+      - $ref: "#/$defs/qcom-sa8775p-lpass-state"
+      - patternProperties:
+          "-pins$":
+            $ref: "#/$defs/qcom-sa8775p-lpass-state"
+        additionalProperties: false
+
+$defs:
+  qcom-sa8775p-lpass-state:
+    type: object
+    description:
+      Pinctrl node's client devices use subnodes for desired pin configuration.
+      Client device subnodes use below standard properties.
+    $ref: qcom,lpass-lpi-common.yaml#/$defs/qcom-tlmm-state
+    unevaluatedProperties: false
+
+    properties:
+      pins:
+        description:
+          List of gpio pins affected by the properties specified in this
+          subnode.
+        items:
+          pattern: "^gpio([0-9]|1[0-9]|2[0-2])$"
+
+      function:
+        enum: [dmic1_clk, dmic1_data, dmic2_clk, dmic2_data, dmic3_clk,
+               dmic3_data, dmic4_clk, dmic4_data, ext_mclk1_a, ext_mclk1_b,
+               ext_mclk1_c, ext_mclk1_d, ext_mclk1_e, i2s1_clk, i2s1_data,
+               i2s1_ws, i2s2_clk, i2s2_data, i2s2_ws, i2s3_clk, i2s3_data,
+               i2s3_ws, i2s4_clk, i2s4_data, i2s4_ws, qua_mi2s_sclk,
+               qua_mi2s_data, qua_mi2s_ws, slimbus_clk, slimbus_data,
+               swr_rx_clk, swr_rx_data, swr_tx_clk, swr_tx_data, wsa_swr_clk,
+               wsa_swr_data, wsa2_swr_clk, wsa2_swr_data]
+        description:
+          Specify the alternative function to be configured for the specified
+          pins.
+
+allOf:
+  - $ref: qcom,lpass-lpi-common.yaml#
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
+    #include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
+
+    lpass_tlmm: pinctrl@3440000 {
+        compatible = "qcom,sa8775p-lpass-lpi-pinctrl";
+        reg = <0x03440000 0x20000>,
+              <0x034D0000 0x10000>;
+
+        clocks = <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+                 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+        clock-names = "core", "audio";
+
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&lpass_tlmm 0 0 23>;
+
+        tx-swr-sleep-clk-state {
+            pins = "gpio0";
+            function = "swr_tx_clk";
+            drive-strength = <2>;
+            bias-pull-down;
+        };
+    };
-- 
2.34.1


