Return-Path: <devicetree+bounces-199006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC438B0EFFE
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 12:37:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9172A7A8931
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 10:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 105E72C1581;
	Wed, 23 Jul 2025 10:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GfHpLglp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339B92BD59C
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 10:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753267030; cv=none; b=DT35sDYcNhlYJSgKWmAFHxEjkKcofxr1QACZydwaHYlSLiPAeSnAMdizBMybBnyQfIs9u8b+RihpZ/hgpv3NExMqkb+znRtL0DkTTJSpf2HmIr6pdhbj0Qqj66z9zalifPlj4iWiUoOhofPAMABh8kJyuVGoy9Ul9Plwfmc5LD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753267030; c=relaxed/simple;
	bh=LVNg2Q2O+pFfknd8M9tmBYGR3cuA1JPNjB0AsEwAFhw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eRJq5Rj0Jh6zn6mfr3Fnk2LiLYfj3h9AUre9tRYUfP9hP9oxFSFel9UTaAAs9g4xmccKADpxbXO+76Et2w0pJ64rJHwe1lme3j8HCA2vPtcsUTPBpNODrihgLbsOzBl1dP3k5sGV6g08rN9xdppA2MJGD89u8uuURVbfa+V2I88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GfHpLglp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9Klh8024756
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 10:37:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FlrT8Y+9FXC
	vRqpO942xG/ERKUUQGwNuz/enNNd3ois=; b=GfHpLglpyrHWWgxGAGKP/5hgj65
	MLPMW1CuW/NQMCU4Kgqw5Tk+etDDobJwA5ggBYwp2nP0YUx5x925T7EOZs01Y5VN
	VVwWsmY65eLZU2OCQzChBHACGuaVJWNUYEIDn7LH5KCiEj8SOa5eciL498qunwJg
	JCjZ9ekJ95tsk7oaJwWpnxCX+xy7tyCs1mLxwiloH/FFmfl74fRdrOtTayqtvs12
	wEEcxqYKWuH5FanydArTRKmm5j5QZzIcjOkRVZd70HUOz25dInmqfKHkB2IxnKfa
	jh5owvqBX2r9WGWPwg8gwUDMMEB6mCwj3uqOc/BbzIeuNPx0DwZevVvCidw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044dmn3d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 10:37:06 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-74ae13e99d6so639341b3a.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 03:37:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753267026; x=1753871826;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FlrT8Y+9FXCvRqpO942xG/ERKUUQGwNuz/enNNd3ois=;
        b=FkKkdlS6dmWuAeSIeJnbyM8lgP84ZeQACI9aVt8W3YSVEvDtvoAo6GNwn11azBn+9+
         pSh7nHUcDsEbOBQgYj4GBQydTm2VLLfue+0D/EfcLckZOIxl7/yb3G1YKR2P9Nl0eaKR
         3gGfZz6hgkod2Q1xJnpzFrDxFQLQ6eNn9/eaHeZ77WgsIbuUPPH+79avK4XZWK7fptPR
         PqFEhtTRZKdmu+LtRO6gdxzXg7SZzMlYa8btvAzp3exsNesPSvwPmwbCTzvs2ucESPqc
         Pu0QablYLmQ53qWN2fgkk+P+E/aswR/cAIYh4vnnaSMiqnqYPNTCZTB1iHaZwMY//Aef
         wvZg==
X-Forwarded-Encrypted: i=1; AJvYcCUSuzxNlhhf/Cu9QohwkdXNd3GiGJQtQ94pbngNIU7I4uTpoILUcC+kfFkL4fQkP7zGI9O/O+IjYBA4@vger.kernel.org
X-Gm-Message-State: AOJu0YyAQ0L2WomwM0RwwWDJ9DTIDysSkjd/Kn2myCCDx7EDNe74Zswc
	o/Y7nopTikfL//GQg2KPvbn3oh2sTHKMb0et4+kg4UeLYB2H3TDeTp9mxvJUBzeH41LpYcX478L
	pUNHfoST6LLmhZEUsvSvF0egUBVHaxQjTwYTWNvhjRbJb6lUxKVzq45EcJ1ZGsdv5
X-Gm-Gg: ASbGncs8pIWvPpNIFNqYBPQtvRHHH6/JTjM/D3J2D5VQSBnt7UmBhi4AqbMayG+b5nA
	9fqFOXYSIbT1AGQMn8cIBgvl/YZCB5XigAy/vueC/0lZsgH9hdI0A0IUTlSrQskAmkAHDgS0Njy
	GCnWUND4LbCELDiQnuH775wSkLJlP/gfUwbxHeMN55MMLwUBT93q3UcJS6DXaxYfZYAA/ZCnwGv
	kmLkCjq8uxPXKVNY+UAwMNwHd5l8SeVEOdsHQMdmxgvf18olk8NBOCXay2cBi34rqVYxH9U1AFc
	QedPo0MEgm+rkINXyN2zQOmJnuHY7NtNOiZwJcJGSlhkUCfNVzBvq1r0eZo+wjHSptQztWVC+AY
	vi1aEoZ0cQEz/3e4EtGbKcoZtB/lifa9irM2cCaN59PGV48JNJ2OP8dL1Ru29
X-Received: by 2002:a05:6300:6141:b0:238:351a:f95f with SMTP id adf61e73a8af0-23d48ead3b8mr3594465637.22.1753267025628;
        Wed, 23 Jul 2025 03:37:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+STtEf2ZKozXNR0Q2hWZWs4URKYbpvEpcSQk8WkIj82o9SKmWQtKYke/Sx0wwkrPRzJMi+A==
X-Received: by 2002:a05:6300:6141:b0:238:351a:f95f with SMTP id adf61e73a8af0-23d48ead3b8mr3594422637.22.1753267025113;
        Wed, 23 Jul 2025 03:37:05 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb678f21sm9458954b3a.104.2025.07.23.03.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 03:37:04 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: andersson@kernel.org, linus.walleij@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl bindings
Date: Wed, 23 Jul 2025 16:06:43 +0530
Message-Id: <20250723103644.4058213-2-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250723103644.4058213-1-pankaj.patil@oss.qualcomm.com>
References: <20250723103644.4058213-1-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=6880bb53 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=MZc3Y3F7moGl6OQG0A0A:9
 a=zc0IvFSfCIW2DFIPzwfm:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: cboHpQXHhQmAUOTPJBrRgEDjCOXQbl-M
X-Proofpoint-ORIG-GUID: cboHpQXHhQmAUOTPJBrRgEDjCOXQbl-M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA4OSBTYWx0ZWRfX+Llroi6FnFyj
 Fgpoutq5Bip8j1IVN7hsrGnPGrICXbQnn8jj+RZW8ezqlCxIupKFmsEmobOiMtaJpBVozaIZgRk
 TNPAvqZlX7B6R7vhDxbS0ETxHwIIXmpvrq2/dN6z3CH/lccaobvgO3Ro3OMj487oQo02/m5Ihun
 id064wPh8Xcabgv1ZtVodZRUeJ7Df15pVCAT3fHWmpe2i2E/MiJ2tfqLXCO2rUCkWbhRB+fRouo
 q7HnBRDrGLkF21TECvmTD/e5hdjAy+pJ5utNLmPYOqqMg1h8efPnBW+8On4gyyM7lgSZp5ELcgJ
 CqdwR/Zkd2qWmT+9AZg+1rv+d7fgw5H3DxNIUXxW6sAE29uwEZ7up46RQ9eZ61s+1htE0/qznDT
 9TgWVX7dcadBiczNd3DKXD/YS72BSlB4KUSHoYUwR9HpCrPahTi6HdOn1flybDtONfDfjVCt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507230089

Add DeviceTree binding for Glymur SoC TLMM block

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
Changes in v4:
Updated enum in bindings to line length of 80 char

Changes in v3:
Fixed indentation for example tlmm node

Changes in v2:
Updated gpio-line-names maxItems to 250
Fixed example node reg property
 .../bindings/pinctrl/qcom,glymur-tlmm.yaml    | 133 ++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
new file mode 100644
index 000000000000..38c360e77fa3
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
@@ -0,0 +1,133 @@
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
+        enum: [ gpio, RESOUT_GPIO_N, aoss_cti, asc_cci, atest_char, atest_usb,
+                audio_ext_mclk0, audio_ext_mclk1, audio_ref_clk, cam_asc_mclk4,
+                cam_mclk, cci_async_in, cci_i2c_scl, cci_i2c_sda, cci_timer,
+                cmu_rng, cri_trng, dbg_out_clk, ddr_bist_complete,
+                ddr_bist_fail, ddr_bist_start, ddr_bist_stop, ddr_pxi,
+                edp0_hot, edp0_lcd, edp1_lcd, egpio, eusb0_ac_en, eusb1_ac_en,
+                eusb2_ac_en, eusb3_ac_en, eusb5_ac_en, eusb6_ac_en, gcc_gp1,
+                gcc_gp2, gcc_gp3, host2wlan_sol, i2c0_s_scl, i2c0_s_sda,
+                i2s0_data, i2s0_sck, i2s0_ws, i2s1_data, i2s1_sck, i2s1_ws,
+                ibi_i3c, jitter_bist, mdp_vsync_out, mdp_vsync_e, mdp_vsync_p,
+                mdp_vsync_s, pcie3a_clk, pcie3a_rst_n, pcie3b_clk,
+                pcie4_clk_req_n, pcie5_clk_req_n, pcie6_clk_req_n, phase_flag,
+                pll_bist_sync, pll_clk_aux, pmc_oca_n, pmc_uva_n, prng_rosc,
+                qdss_cti, qdss_gpio, qspi, qup0_se0, qup0_se1, qup0_se2,
+                qup0_se3_l0, qup0_se3, qup0_se4, qup0_se5, qup0_se6, qup0_se7,
+                qup1_se0, qup1_se1, qup1_se2, qup1_se3, qup1_se4, qup1_se5,
+                qup1_se6, qup1_se7, qup2_se0, qup2_se1, qup2_se2, qup2_se3,
+                qup2_se4, qup2_se5, qup2_se6, qup2_se7, qup3_se0, qup3_se1,
+                sd_write_protect, sdc4_clk, sdc4_cmd, sdc4_data, smb_acok_n,
+                sys_throttle, tb_trig_sdc2, tb_trig_sdc4, tmess_prng,
+                tsense_pwm, tsense_therm, usb0_dp, usb0_phy_ps, usb0_sbrx,
+                usb0_sbtx, usb0_tmu, usb1_dbg, usb1_dp, usb1_phy_ps, usb1_sbrx,
+                usb1_sbtx, usb1_tmu, usb2_dp, usb2_phy_ps, usb2_sbrx, usb2_sbtx,
+                usb2_tmu, vsense_trigger_mirnat, wcn_sw, wcn_sw_ctrl ]
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
+            tx-pins {
+                pins = "gpio86";
+                function = "qup2_se5";
+                drive-strength = <2>;
+                bias-disable;
+            };
+
+            rx-pins {
+                pins = "gpio87";
+                function = "qup2_se5";
+                drive-strength = <2>;
+                bias-disable;
+            };
+        };
+    };
+...
-- 
2.34.1


