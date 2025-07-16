Return-Path: <devicetree+bounces-196920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DADAB0791D
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:09:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1FB93BDD18
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DE47223301;
	Wed, 16 Jul 2025 15:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d7L3Zb74"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E581F2882CD
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752678526; cv=none; b=fGmbg5+joBW+/zFjxCRC39KCthT8pYbpzDFkTtrCUgoMXRigXJ1o8+/BUlZkYB1Hrm+KadSPG/ceNzvxdRmkmciF1t6o2WrKVL+4fiaXX0T/cPp4dC6wQOSi7D1LNJva+XQMxdDs/KvusC9YV/inSNtgo6qr0uMRQ902HEM6HlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752678526; c=relaxed/simple;
	bh=ihxEo3F2oGvFSAfvy9ZRtQwJhHZpLy2gs3SPOW/Vg24=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=B1Wvjcfvwqme9rvTFNm71sYv6UUonQPSwW31GpiSCFZXao49UK896AJ018G4GbHYTJNPUuEJWq1L2H9GjGvaFx3tAFyBMgvSeoF0zTXTwB9xaoTTBuJ7xXfhB63VYlfvxFvdZrLWHM+FV+7XjCw85vF+FEwSsiVfrgftUpJG85M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d7L3Zb74; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GCLgNW022755
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:08:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=N+5ZTCNwIsI
	AtPOS8xEDMk0BGYkhezLOgVzMiDvz2cI=; b=d7L3Zb74R+E8dDbj5BIdkz6/YZK
	SiTaWum/J2dhO4C9kcC9KH5UkgSWZJ/WAfuX2mW2E7ouVz7arhfVUOB/gttY5XjE
	nFXQLSsltQh7HS9VT5jtKJZfIPy/U/mAGiVGs17tWeDTn6zSN1gwCL/kdNCMRYoe
	WJDQHPzTwDilJqv+vc93WqjhHCaqnP7pK/qYFrMNyL+gTG8hvYZyuZe+TagaQPi+
	i1CwbFCb3hdorwRoQ1CbZGKXRTSmrCybGvQzeR+HBzLooYGvUcMDqoefTRotXZTc
	3lEHXnkjKaD1crdmKzSGcHxz5T4jikCtdHxtDMICxvgcY0bCbYvVMK/DR8w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wkrun5xh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:08:44 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-74d15d8dcd1so9088b3a.2
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:08:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752678523; x=1753283323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N+5ZTCNwIsIAtPOS8xEDMk0BGYkhezLOgVzMiDvz2cI=;
        b=QSD1f9K1eTri9Ri3XinRIYjsMYIG564aYovbzzx73mjXJeTeXZ0T1AxexwmiWXVttU
         L2BiKSoBWicCg72LV1IGm8m/IxrMFMGD8nWryhk62muqGXwE6LG4qa7VWs3AILy2Te+/
         qxPq6NglEU/jXleDuurwpZ+l0VdYZwOnTeCaiMlYgMch6qlEXPWwOO+IcvKsOpA/iJb8
         5/b4RzVbG+TrtSqF9kmvQmv0PlG7SKB/7t9PkjD4OHQYgDjJAyDXJjqzijXYtNZjBP10
         eq6AnNbjQSTJoGx9Ko9W/8qO4poHwBEWoU1c2bWVWO8VmMytMPaZfX3wA8BiHwsoCFnb
         agQA==
X-Forwarded-Encrypted: i=1; AJvYcCUC16GY2ukF7UCGi0+YqD7okI/GpgTdGe3wOj92uSoTNzYsLyghOpWGlrP2iRpSv6U01VGNf1LQzvVQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwAj94iiyp52IHN++agrpDoU/9hrerPeYtvEsYoKcSnKpDnIMQ6
	B+WAfe97/ZW7e2QTpppKoUOkTtbjtFEExrAcOmNeVyP73xTkcsCqE08QleiZUFkcKa3adqwSfrX
	JU0B2k6Pf8TmdxJXfaoZsyXFPdz0JWWEmnoOg1+LWXQbxOvawJWZRC5DJNsOpRTRD
X-Gm-Gg: ASbGncu1mKTzr3Kzst8Kmcsv17B21/rrHCjBmN9XDMiPDnEirOK7+jhdodYcLxAWh7D
	KLqL+f1baukVipCyfZ/r7mhIuLixiNFps4m+ZYmT14ff8T7N2DvOwEJYPbmjHU7mX1osqcak2Na
	kKnqFxI7Hj1SPIvTI3QdsQm87XqyVK8a6EtT3clcjAlzM5pNnq6Skwr+MevKCH30jUmFycuv/yL
	BBPJ1JheMV0Zm+3VVNOMMtX080LEV4iQOB8ekYZyoI2uaM8sM/PGfp/V3uVZ7CbDyi+DGG9ynj7
	HAl5BGgkIhltnWIjqNKnXw0Z60IcQ6laIjtoup83RAuiDb8Zzuw0CAU6cRjVNaTiTirIDL1Nth4
	pKUDcnbrNoCpa1UhVOEPOwTER/SyKg/vujitCTcV/kAVcDPIVr4nsbN0cLNuR
X-Received: by 2002:a05:6a20:a109:b0:232:1668:849f with SMTP id adf61e73a8af0-2381376841bmr4817157637.38.1752678522964;
        Wed, 16 Jul 2025 08:08:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGHNJXAOaeNOjSazGKGjs4TDK6pDqSGhXNbcwlHJ7ti5SgNtEhaR5S1i9hxf7bO4tF7J+uzA==
X-Received: by 2002:a05:6a20:a109:b0:232:1668:849f with SMTP id adf61e73a8af0-2381376841bmr4817106637.38.1752678522532;
        Wed, 16 Jul 2025 08:08:42 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3bbe6f56a9sm13713112a12.59.2025.07.16.08.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:08:42 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: andersson@kernel.org, linus.walleij@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl bindings
Date: Wed, 16 Jul 2025 20:38:21 +0530
Message-Id: <20250716150822.4039250-2-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250716150822.4039250-1-pankaj.patil@oss.qualcomm.com>
References: <20250716150822.4039250-1-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: BokpHzYXhUyxjij3F1KUpJQPt-QDf_sb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzNiBTYWx0ZWRfXxP24yji/9aO8
 hQgJupckcqSQ22xY9DnKioaDG/0gObk4pP1u4gDcmQtdOsHiyPBHWHdrNyDSasQvCG5k+coZLC4
 aScygZa8GrAIFOX0gSvF9DHwGLs6CMNiq8b7K3j0hP35M2FnDYwV/sOvKyeGXkYypXh3u2Nm6Fy
 lNRvZgb8SytvRsSNPo24z8ClNiuxKssaBmh4rftuf+S20ouRInNc0UrYtUfX8ZZhXUfldJuZkNJ
 qQ7L6ex5KRgU/MUw3aSgs8CHV2kErLhP1SAT4ksUZn43siydcye28wQs5m4JfQqoWP3NgdrY/tQ
 vinWe8S1GFtGKZcIwMidXplVtcUcAjecgDsGTVE8GuMJcYH7bb3W/PeyU1sINFT/pzTX4ruZxa8
 uyQzqFtVO5dHvdWaz/Iz4qXn8yUsET9fa0brIKsh1OIG5d2pKqGdQZb3zaltX4BQiLURW4ZJ
X-Authority-Analysis: v=2.4 cv=WqUrMcfv c=1 sm=1 tr=0 ts=6877c07c cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=u--hiq7dTte3EtGYD-cA:9
 a=IoOABgeZipijB_acs4fv:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: BokpHzYXhUyxjij3F1KUpJQPt-QDf_sb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 mlxlogscore=999 bulkscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 clxscore=1011
 lowpriorityscore=0 malwarescore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160136

Add DeviceTree binding for Glymur SoC TLMM block

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 .../bindings/pinctrl/qcom,glymur-tlmm.yaml    | 128 ++++++++++++++++++
 1 file changed, 128 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
new file mode 100644
index 000000000000..d767a6f5b5b5
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
@@ -0,0 +1,128 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/qcom,glymur-tlmm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies, Inc. Glymur TLMM block
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
+
+description:
+  Top Level Mode Multiplexer pin controller in Qualcomm Glymur SoC.
+
+allOf:
+  - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,glymur-tlmm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  gpio-reserved-ranges:
+    minItems: 1
+    maxItems: 119
+
+  gpio-line-names:
+    maxItems: 238
+
+patternProperties:
+  "-state$":
+    oneOf:
+      - $ref: "#/$defs/qcom-glymur-tlmm-state"
+      - patternProperties:
+          "-pins$":
+            $ref: "#/$defs/qcom-glymur-tlmm-state"
+        additionalProperties: false
+
+$defs:
+  qcom-glymur-tlmm-state:
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
+            - pattern: "^gpio([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9])$"
+            - enum: [ ufs_reset, sdc2_clk, sdc2_cmd, sdc2_data ]
+        minItems: 1
+        maxItems: 36
+
+      function:
+        description:
+          Specify the alternative function to be configured for the specified
+          pins.
+        enum: [ gpio, RESOUT_GPIO_N, aoss_cti, asc_cci, atest_char, atest_usb, audio_ext_mclk0,
+                audio_ext_mclk1, audio_ref_clk, cam_asc_mclk4, cam_mclk, cci_async_in, cci_i2c_scl,
+                cci_i2c_sda, cci_timer, cmu_rng, cri_trng, dbg_out_clk, ddr_bist_complete,
+                ddr_bist_fail, ddr_bist_start, ddr_bist_stop, ddr_pxi, edp0_hot, edp0_lcd,
+                edp1_lcd, egpio, eusb0_ac_en, eusb1_ac_en, eusb2_ac_en, eusb3_ac_en, eusb5_ac_en,
+                eusb6_ac_en, gcc_gp1, gcc_gp2, gcc_gp3, host2wlan_sol, i2c0_s_scl, i2c0_s_sda,
+                i2s0_data, i2s0_sck, i2s0_ws, i2s1_data, i2s1_sck, i2s1_ws, ibi_i3c, jitter_bist,
+                mdp_vsync_out, mdp_vsync_e, mdp_vsync_p, mdp_vsync_s, pcie3a_clk, pcie3a_rst_n,
+                pcie3b_clk, pcie4_clk_req_n, pcie5_clk_req_n, pcie6_clk_req_n, phase_flag,
+                pll_bist_sync, pll_clk_aux, pmc_oca_n, pmc_uva_n, prng_rosc, qdss_cti, qdss_gpio,
+                qspi, qup0_se0, qup0_se1, qup0_se2, qup0_se3_l0, qup0_se3, qup0_se4, qup0_se5,
+                qup0_se6, qup0_se7, qup1_se0, qup1_se1, qup1_se2, qup1_se3, qup1_se4, qup1_se5,
+                qup1_se6, qup1_se7, qup2_se0, qup2_se1, qup2_se2, qup2_se3, qup2_se4, qup2_se5,
+                qup2_se6, qup2_se7, qup3_se0, qup3_se1, sd_write_protect, sdc4_clk,
+                sdc4_cmd, sdc4_data, smb_acok_n, sys_throttle, tb_trig_sdc2, tb_trig_sdc4,
+                tmess_prng, tsense_pwm, tsense_therm, usb0_dp, usb0_phy_ps, usb0_sbrx, usb0_sbtx,
+                usb0_tmu, usb1_dbg, usb1_dp, usb1_phy_ps, usb1_sbrx, usb1_sbtx, usb1_tmu, usb2_dp,
+                usb2_phy_ps, usb2_sbrx, usb2_sbtx, usb2_tmu, vsense_trigger_mirnat, wcn_sw,
+                wcn_sw_ctrl ]
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
+    tlmm: pinctrl@f100000 {
+        compatible = "qcom,glymur-tlmm";
+        reg = <0 0x0f100000 0 0xf00000>;
+        interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        gpio-ranges = <&tlmm 0 0 249>;
+        wakeup-parent = <&pdc>;
+        gpio-reserved-ranges = <4 4>, <10 2>, <33 3>, <44 4>;
+        qup_uart21_default: qup-uart21-default-state {
+          tx-pins {
+            pins = "gpio86";
+            function = "qup2_se5";
+            drive-strength = <2>;
+            bias-disable;
+          };
+
+          rx-pins {
+            pins = "gpio87";
+            function = "qup2_se5";
+            drive-strength = <2>;
+            bias-disable;
+          };
+        };
+    };
+...
-- 
2.34.1


