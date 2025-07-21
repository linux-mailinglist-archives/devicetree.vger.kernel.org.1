Return-Path: <devicetree+bounces-198318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3DFB0C65A
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 16:31:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6AE8B7AF1D6
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 14:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82F292980B7;
	Mon, 21 Jul 2025 14:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YkdNyGHs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48CA1B4138
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 14:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753108265; cv=none; b=Hv1+VkXgb6Qmp3K2dZdpJ8ZN1TSyshD7/zmX3fwiGYnHwwPcBcADtmL5VVOcvTiDyyCw5hOfiXwZEOOWCNgGMfWwgRWEy4capohBSRaIk3nBAmd6kZkSqStaHrn9+3K+XUclrjgxVtlS81B6OKIxRTgYQ1ZsQNXX08OBi5+6RGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753108265; c=relaxed/simple;
	bh=TxCQVjHu8v/XTD779R/K9bsguolEscatCSuaO2Tvim0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ov2Lz0ZOnEarzyyLuen26pgJylgPSteYXqaQypVM6GqCkN6ef5LtTqROAh4jOYfJ7g8U+znuuKdoEOdGRzFdIWpWMpdN/xACdMch/71YYbW4YBBQpndXWMaENXq8OsiXno70BgmgeKv0SZ+9wdAub+Po5jL3JPZLxvBMUkk8xDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YkdNyGHs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56L9qnRK016585
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 14:31:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ItGq+wqYysW
	OIQQZgquamzbiff6QYWhmEITX7yLzkG4=; b=YkdNyGHsVNdObJ3SRnu5TAx5jAS
	ApY474zRgTXRO4eUyDGftyI8wWlAxgItUbFAj4Tou+Y27L595+qjxjO+S4n+bF5o
	SRIbXMFjrKCgvOFPYSi2clUXIYiIGLkOtrQbtV5Abs/Tac43ry2/9/lI5mEJi++8
	ksPkDkkRa5UT4ON5Xv1pPebkpmdYsd3BCFHuHAbLCQ0zqI7PqHE4ALXhgT+esWxQ
	Ub1uU7LMyaUMdjwF/EnDj/kF0vSxrSrgVsyP2k5yFMs74Rrv1fTlkHbnu19FrKHu
	AdH1Xfbb5I+CVCACe4yd8FWhn1IznFovfhGz6iDVqh8zHQe7WSw1zhsVO6A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048rwng9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 14:31:02 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-74b29ee4f8bso3927397b3a.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 07:31:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753108261; x=1753713061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ItGq+wqYysWOIQQZgquamzbiff6QYWhmEITX7yLzkG4=;
        b=FSYP53j4VVJSZUycFN+H8dGHAuPd6nPBnVc1CTKeYJzZqtkMkzGVMcXH2nbtHhkjfU
         K+3kvvtiboBDIUey/Br4QwqKy1eNfLlLb1BU2E1tD4T/RT/FlTiEdcRug3b0IHoVWPWj
         Q2fHSC/59TVpF/e8JR3SOHTDSntR0pfoUCUptXiRWIImtKiH7kwsImmtWa0fDrBXfo7o
         JPbwd6ggOzJVtg9AHfwHYCOWoPyorN4F5vMa5DqK7cDMNULZda3x3kZc1iL4zzw04B0a
         IE2rF5YgbuGwDYaOr9jpRyyQdcd0MwEnebdN4/chtF8YUn1/lkejz0s6iYy7z1EIaVII
         EOsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZEajgk2eQUWWm8UKkolk7aCxeIyVI64g/yoE+0+X1sJB2vA4T7K2oYZZmQKuIdqr3U3YWkYks17ox@vger.kernel.org
X-Gm-Message-State: AOJu0YwqwTS6/VnEG2ZBnOvABJV19dInrTrL9DTlZWQc7bUQ+N3a4VAp
	XPZRmNE44ff655bioL/Ok9iHa7c3ti3sWklO3pPVugBKIH1Oi0mxgTCkjH56FlPWSSii4dOrtNj
	DpupdGxmY6Jgz8kQET3Ulkgu5b3oOMTbzYdjFl0Qg7cQ8CIdK9jZ18WpKLERDPDgP
X-Gm-Gg: ASbGncvpjqUO0Hmpo5mFbaKLjKQoS6PpRPJaRHwn8L56GDr9flDc5VP2GvwzWsNrS3B
	ClgQodGbAri/rSWl2cY0u5Y9DixT93/hXcL0H7+L07S93f6ecuI/REIIVWChlSlk4mUcQ+UImnY
	NhMr6k4BzO6rPk7yP9jrJDciYCH+ve46AkSoIoHzTESPLR0d6UIvyjvlCPhjE1ATkhOsSU7fGVO
	/sz3PGyxNVPgaQv+l0AQjS6xqsPkFf/sHZmITW/R7UDOLV3IGaks9fY7xBtxrnKWLTnMfRVCmPU
	xm08fNgkrhZxT9YsVFnJXFISle/arLWLuNjq2T2074CbiYCCp21xwPibfDS1mw4mZ0ea2zEZGJK
	TtIzw4+5AVPGiiLv8Y5fMB7KEt5RSmcpmQFqj6VPyWY7JUzuDjPHZlL0SG+s1
X-Received: by 2002:a05:6a21:6197:b0:235:e7b6:6a04 with SMTP id adf61e73a8af0-23813c6d6abmr32725198637.24.1753108260994;
        Mon, 21 Jul 2025 07:31:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfJ82Z7ZMT2wqlnDmQL1Ll4asKY19DVfgK4q1KM0phmb0LBk6pLCfbexRyFKZOsb3xPjwcSQ==
X-Received: by 2002:a05:6a21:6197:b0:235:e7b6:6a04 with SMTP id adf61e73a8af0-23813c6d6abmr32725148637.24.1753108260538;
        Mon, 21 Jul 2025 07:31:00 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb155e1asm5750110b3a.74.2025.07.21.07.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 07:31:00 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: andersson@kernel.org, linus.walleij@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl bindings
Date: Mon, 21 Jul 2025 20:00:36 +0530
Message-Id: <20250721143037.20983-2-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250721143037.20983-1-pankaj.patil@oss.qualcomm.com>
References: <20250721143037.20983-1-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDEyOSBTYWx0ZWRfX8mSNo9bVUrlT
 0DqkTw/6aB24FPy6WVF2VBed7bxuLoR3qVvAarLFRlXEUQeqkxLkW1sHuHTUnJK108jxm6h9DQ6
 Jlg0/tNF3XfzInkcjZ55sHoOyW+km+ee17e15jRBVzoKr0tOvHTG6/z/zxmAgJKPx1lWmuiuXV8
 RUEzIm2+YP5GzWJD7bzemDDeywYa5fV0k/8tpxehvV+kTv4By7LFiX9DInZdh+M+G95moKKyO/H
 z7UmNa6GNKuYhQa+7KIeQnuD795DvyuZPlBzTxPf3Qzw8BRUdxk2uRjXkebSJcJ2yL1I2+BJg3J
 63QOEa1q+v7u21BigTj0dgZrzk7ImrXpnrRBwGAqFG7h2VX0Yq7BcP2SZT+kfHGJLy8BUmG6n8Y
 M3AcJ2ME62lCfIo64NWM9AT3HeXsp8SS6JR16qO4X4eoN2GfN99LzUR6QadhrS/LMynif6px
X-Proofpoint-ORIG-GUID: qL3Xt8zd1TK4n_UfnrwgsFD3mdHwJAjP
X-Proofpoint-GUID: qL3Xt8zd1TK4n_UfnrwgsFD3mdHwJAjP
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=687e4f26 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=u--hiq7dTte3EtGYD-cA:9
 a=OpyuDcXvxspvyRM73sMx:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_04,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507210129

Add DeviceTree binding for Glymur SoC TLMM block
---
Changes in v2:
Updated gpio-line-names maxItems to 250
Fixed example node reg property

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 .../bindings/pinctrl/qcom,glymur-tlmm.yaml    | 128 ++++++++++++++++++
 1 file changed, 128 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
new file mode 100644
index 000000000000..67c1de62afe2
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
+    maxItems: 250
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
+        reg = <0x0f100000 0xf00000>;
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


