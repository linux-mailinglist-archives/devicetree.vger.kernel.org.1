Return-Path: <devicetree+bounces-213560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8260B45C0B
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 17:15:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84F72A6654B
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 15:11:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7913E31B82C;
	Fri,  5 Sep 2025 15:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="He9so3ob"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8F531B82E
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 15:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757085066; cv=none; b=M3dIlE5mwn/3dki8n2+S6w0zBGdCDrtN4TpOSuktbACQcHuT3Aw9kkfgOoI3V6gRlIytc/afP5dGHSO9JQL49tpQB1KzXTX0/jLvHoGykSLuX/+gEyyH4g+huF3F2EzMsvK5ZZFAle0i6xqun6dNVDoc843hhzmU3MCxblipVIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757085066; c=relaxed/simple;
	bh=ziDnWoycYd1qxQD9/2fyvxl+OlWCnDcd+2Qkw8aGVVs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W3mEhwpCbfT0bAQ+O/1EFdYl0vZKgdn+Lg1vVjilhBtiVyAJzF3NCNMhDh0xVzfCcvIMAxRw8d9NOWPpUhitCAzGKK9RyOQbJtBRRjtmbt+1WK1BMe4r5oVTH31kU7SF/ZG25QVMZO2yfW36FHMhCcO80/RdfnZF/5vHDFT5Cw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=He9so3ob; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5857SfYl012221
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 15:11:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hQgI8oejIfeOTP8ExFldKXK3j+KseUYehUnwe2t70qo=; b=He9so3obLRgG/E4O
	RAjgOpx+fskCVgh9PhtJuaexxPE8wRJ08DUOf294RJrkgXZrry/mLj/fmlyNbga5
	O5fJC1nTCupobtsvm9kXJSvzv8g30/2cGJhiGLJHYOwOkrV2q3GHSZzzHewIwSNn
	remhg0ljcGXsQcloz2dwzkB/xAPUBxJkAEH3xIL45qtD5q8+3lmGJDcFxB1ELYKP
	9ujFk8dceu1RDVln1Kh2PdlCuS0JEbCHEN3U61CaydX8YeHJ3G5PmiY/tm2Iu5gg
	3hnjvWFOBcn4vdBqgR7k7Y7+NzF3oB6zwQeSvN7evvCxLjAwstkH3mi7L/+zXyUg
	QpQtgQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48xmxj7u1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 15:11:03 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24cc4458e89so39487925ad.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 08:11:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757085062; x=1757689862;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hQgI8oejIfeOTP8ExFldKXK3j+KseUYehUnwe2t70qo=;
        b=irTHe1ZLiPsKYQrktUEjfnsdhb1YbScmrNrVT6xi0y8oPrErY3M+6YUogDHaTXJDin
         Hcu7ibV4YnEJv8FvOLXh7+elLzQ3qlSzma+/zf0aus8Lun7O43WW2j9d5HayFfItJSzI
         Kb/FGEKWOG3pLlguvLwWTrHoGWYVwAymxCruKptwMw7KjQbiTxNNzo/IRar0i9JfK8/R
         kttbKUzn30NGKgsj+vexbk6fVxkdOj0ZlB8mKy9yE4+KSOB4r9i6hs/yM+Cih5VRasBj
         7fBKvXLBOytb8Tw2WWHc2D9SlQxE4OID7rwMQM8cCl0zKK8TJiSx0+qTkP6tVe6XzGF8
         H37Q==
X-Forwarded-Encrypted: i=1; AJvYcCX8xAPpOz0NcYa+2c866w8UcPvco615bFuhKPRO+8Ysjwvz+h9Oi2R75HpqSJxs9gosUsTapTDUuzFo@vger.kernel.org
X-Gm-Message-State: AOJu0YzV4caeiULSZxUyIxlLuOk6dT0tLnN4d7LjaFrAjYTHOucxoKem
	nhAx9KyyG9JBxqsBZRUxv+XPU0Kn2xN+m3GSx59P5VYECdjLKrP4RjwG26zejoc6JQ0sP2KxHN7
	Giu28HNJ2IeGR9WE4WXB7hefxtHZ5b4+31w3eT1u2oon0W9mmdm0S8AZSgIjio9mtXq/8rpYJ
X-Gm-Gg: ASbGncsHcth+Qst5WSkSfAtyXmegUif39oO+HESY6uDwZL4H3OJKJwTf8Ax3/cSWUOZ
	aCtsKPghw1KvW/Sw1elu+7GXUdGk5ENSZgXFM8NaIzH48GI3V6eGgy7KS5k1pP0PE54BtXVvkER
	VP++4YPGJzMPBUqdKLXOJ+XsNNalbinLlh32/vRzqxjP05+IyUfU95mRx8nfn+kIdUppvabCLE3
	iB3K5er8rplbfl4snuSQkaQoQuwg8BWT0frJ57fgDUtXUuj1aRTuW3qAYkXVhGbeOcj/9kkC5Ar
	qYRoGqffNNL137+TKgPo+6LkMkLVTW/Oh0mHlD4EP/K4f5ljNpOnA3LLcNKUkbP7973hrd2V2Mj
	5ls0DxN8UV/ieGklTHJPURnZuAeZ2MCLgubxDQUcKoEzrZRUC/avVgQT+C8oQ
X-Received: by 2002:a17:903:1a0e:b0:246:cf6a:f00f with SMTP id d9443c01a7336-24944a9b4b4mr341698125ad.31.1757085062326;
        Fri, 05 Sep 2025 08:11:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG94V3mKWvpf4i8JK87uKEbMYMX3NLPqJTttOkJh4d/8dbmvUu+0qi2eu+IQPWQ9DPLPKYFAw==
X-Received: by 2002:a17:903:1a0e:b0:246:cf6a:f00f with SMTP id d9443c01a7336-24944a9b4b4mr341697365ad.31.1757085061796;
        Fri, 05 Sep 2025 08:11:01 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3276f5a0bf9sm29279908a91.13.2025.09.05.08.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 08:11:01 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Fri, 05 Sep 2025 20:40:19 +0530
Subject: [PATCH v6 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250905-v6_tlmm-v6-1-1720e5080415@oss.qualcomm.com>
References: <20250905-v6_tlmm-v6-0-1720e5080415@oss.qualcomm.com>
In-Reply-To: <20250905-v6_tlmm-v6-0-1720e5080415@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, rajendra.nayak@oss.qualcomm.com
Cc: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAzMDExNyBTYWx0ZWRfX07IXr2GpMCND
 tBEMZOOjE14apx38vjhLYCsY5304wRzPnsck5x+ZxYzWULKacOEAyTbLFuONYoufj2+UzcfVljX
 8g9HIYHwhslLupA5bS7DCW9lTaMD9FpNR8THmVtRITD/nm3iHLVakbJolXmk3u3qPItEQE4hDvp
 RBTGe6V6W2fYmjCQLWpU1G6PLQU6gofzIKyujmCV+8gi0unU/CueLoP52Zb5/F5nhcOfFlLUYM3
 QnkSZW/8glj2iybqwpGapGgKxYcFOMj8L5cKYs14Gx6GJU3Wao2KQOSC1+oaCmxWBu0xysKsmte
 stBSJ23dHBTi3fCDax9KKuhhVvFZQeySZNIZbmxqZC+sYcKzMd5sysThhQz0lZa0ihVZr5gOwf2
 FNAPPVAB
X-Authority-Analysis: v=2.4 cv=a5cw9VSF c=1 sm=1 tr=0 ts=68bafd87 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=u--hiq7dTte3EtGYD-cA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: q8vcsMsL2fS4Hsnq74rIWw_H5HyWwFbL
X-Proofpoint-ORIG-GUID: q8vcsMsL2fS4Hsnq74rIWw_H5HyWwFbL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509030117

Add DeviceTree binding for Glymur SoC TLMM block

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 .../bindings/pinctrl/qcom,glymur-tlmm.yaml         | 133 +++++++++++++++++++++
 1 file changed, 133 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..d2b0cfeffb501e0b22c616e5debf52c960afcbd5
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
+    maxItems: 125
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
+        enum: [ gpio, resout_gpio_n, aoss_cti, asc_cci, atest_char, atest_usb,
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


