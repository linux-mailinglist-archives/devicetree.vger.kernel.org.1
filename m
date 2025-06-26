Return-Path: <devicetree+bounces-189949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C83AE9FC3
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 16:04:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 063611C420A6
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 14:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C132E889C;
	Thu, 26 Jun 2025 13:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hSMfIxc8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665772E7193
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750946382; cv=none; b=fs97GVwqfUCQpbtFjdGzDmNua310uNAOt3hq2znq1zlbs/9skXs9v7ueyJekeE/jaxI7Ycz9GIYU8r3CydsYsKNkzJ3ZJvgA39p9oTqoauzAu/2W5xNech5qf8Caa0SWBTjMQadA+7AuAJeIWsyPBqREGTj+7VHn8rUzlSkjrNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750946382; c=relaxed/simple;
	bh=3llpCeYPwVEU1Ua4dK/n1ltSBvl3qua0O7k/UjK9Xkw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GamxOJlNW6a8dzcBZuDKhJZHYPZKOjrHuka0k9TzBe9E/UbKWveGLSL8CTpgE8vho4mS3oKzxC1btwBtEmi4jy9JPDzeYnnzjsHRkwHbfGhosEzOKRHG3VDtbWN1IpDgPeqnhX4vz89QS++Zoj4NX09YaQVDrLZOCY8kHYr4WI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hSMfIxc8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q9wqQJ009362
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:59:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=w5ukSaT42Hf
	S9Tp9K7F/V858WfIpO/bmJmKWflR8t2k=; b=hSMfIxc8vlzAtk8XUank+7JpwsF
	iY+BhNiM2ppLzKTKqY7EKCft6WXbvmLrf+w8z9Y/KMaK08B1pRWuBAcPLy6L+VLe
	dSgVWFVdZCZfuZGeshDk5DuUZvxEMd3uEcZtxYANH4R/P/aBMFc9DPQ6vYkV6MSj
	Z4XFyoH4my1uXTk2l7gBRuduYGesXe0oLaASyuLBjcFmB7+N4GFvlF69lHFeoizf
	xMUDJ99FfLY2mLLUOr4HJF0PoqUdQKAtdnZ2Qq9tCcK3KaEkiZ7Z57lCxuk3+hAB
	Uy5+rA/plvDxMF3zUdgOAXO0eeEftdODMthZiDTCqTBNvx78wTpt4Qx4eog==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbhqsxyg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:59:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d09ed509aaso146582585a.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 06:59:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750946378; x=1751551178;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w5ukSaT42HfS9Tp9K7F/V858WfIpO/bmJmKWflR8t2k=;
        b=JaYRJtrAuhInp9bNQ/y2fUx/laZi8KHPCO62s+A/5inqFTelXxoSZY2ewhv8ldlBJy
         /uDvn5OTuOrAgq9zNrWS3D0UvyJq3NaMiFJK+a68JMGObOl5Z4WC8O7nUCUZeJBBvONB
         NQYF19E5dTUU89IPUJyStTYraYkzuZhg0uReqlOxai9Fdso6FkYX1t+JsZZsfVx4EvZA
         /c95i0ysJyUqU22gYgan6kEYdP6AGd0bvFkOy93QVs5DBqHjJGEVkix05nTcsvhATd2A
         en5u/EtiajWyMkJy0JYqJbd4SwoasjOM3C3A5AY3rGK5VEiSGg/YAa7247kdHIuMZBM0
         Vgng==
X-Forwarded-Encrypted: i=1; AJvYcCU5DlxNMCl5RWex9l5QQwL5lKk2Boi9UMPUK1sWnzy3TjIj6NGK1WfSbs/isCw1vBt1Es3bBmIQqwd6@vger.kernel.org
X-Gm-Message-State: AOJu0YxxBgJ0mlx4RCYsUpq5AJ2/KXakYccI5KW40+BQFrfdzy70Nz5R
	ZtyKl+Y/5YQabpr3E6f1UPcky7qu4SoS4L7Y8HmA0+EawI14nRU4Le2BhL4iuROGcA7FmXboTlc
	aSfcmarHt7LcITq3FwoIJSc6aAdCZBu/VQSOvvczyu74xUcaqQfzFSTr0tRJmrox5
X-Gm-Gg: ASbGncuC/mAlhkRkxk73/S8M1zPecmD+1P8wIpHwOb7HvDgR/744AFG38tCHHY8YQa/
	JU3E8GtggvCMWXlHLaRjXBcwU2DmrT5WmnSPzLdVDVGHxfzqX5auNIP/nC2ND7gu6Q/dz6BZK7J
	Ov8M/kHnjV+chiwiS8TEzoMc9OEiOx2THLef0UsAgpZqHZq3fJhGIto+UN/DkW9inj6hGH0bnvb
	Ghnf9PhW1vHXb3zfpcOe0hl25pKUNHMop1QqqZrwsbBXqFJM0f+AS1vGmq5d35no9K2swoM7jRf
	GO+QdO/9IqhAnGi3lwRhO9y6wuc9+ChUchLr4LwtsR+sW4G3emiBrMAXoRdctmdOZInkNToztNM
	2
X-Received: by 2002:a05:620a:430c:b0:7ce:c47e:7877 with SMTP id af79cd13be357-7d42973f693mr819026885a.39.1750946378186;
        Thu, 26 Jun 2025 06:59:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQVjfLIW4yZd8IXs/lRogGtYBSNMwPGRxW0UqFNcWPzl2N+Q5ZCuRIYwpWPGBtAxJOqYBulg==
X-Received: by 2002:a05:620a:430c:b0:7ce:c47e:7877 with SMTP id af79cd13be357-7d42973f693mr819020985a.39.1750946377582;
        Thu, 26 Jun 2025 06:59:37 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453823c57d7sm53723365e9.40.2025.06.26.06.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 06:59:37 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, krzk+dt@kernel.org,
        bryan.odonoghue@linaro.org, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, mchehab@kernel.org, robh@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/5] media: dt-bindings: venus: Add qcm2290 dt schema
Date: Thu, 26 Jun 2025 15:59:27 +0200
Message-Id: <20250626135931.700937-2-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
References: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: AhbQev17Qit4evtOnOexVHxlbbipVbGW
X-Authority-Analysis: v=2.4 cv=Id+HWXqa c=1 sm=1 tr=0 ts=685d524b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=COk6AnOGAAAA:8 a=1mX_ai67dwKzVtmm1w4A:9 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: AhbQev17Qit4evtOnOexVHxlbbipVbGW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDExOCBTYWx0ZWRfXz3y44nfLhy60
 ttH/dTMrU6KE2k6lB2Z7/HbzzrDIIw3abPxZaiYJs5l4WA0NfPzHTjVfZ1SIuxDsMSwqsW7nOr7
 BASQNS8cg695kyPDwya7epN5SFzG4cGErXJMcjN/9/bkHoaA1zTw98TPj8FN9VbmoHlIhVWsxp0
 MXDy6ygoohYmwYBQ89kKO0xI/LZML8OC3D5lwMK157FN/ysncCReUlL9sHwtPMr5eA+vvFc34PJ
 mchfe6b5Ewk+OevIyCw1/GtGOQz7ydQRlxip/KL5x3gg8RBZ0aEmGgTg2IyNK1ej4uQt88TlkLI
 eG5jVO/ds0lt0SKCmN7h5FCBfOfBVpE6m8ZO44PemQjlLZ7Xj2Np2e0Rzr4LMygZjVza41Xv9YM
 Y2SdMVCAT8s5d05BWa+9A/1pR2jXHEPCrJft6KbG0ldZpaCizKUOE1Q+KH/1j5v4Fx+Ioum4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_06,2025-06-26_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 mlxlogscore=999 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260118

Add a schema for the venus video encoder/decoder on the qcm2290.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/media/qcom,qcm2290-venus.yaml    | 127 ++++++++++++++++++
 1 file changed, 127 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml

diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
new file mode 100644
index 000000000000..a9f89b545334
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
@@ -0,0 +1,127 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,qcm2290-venus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QCM2290 Venus video encode and decode accelerators
+
+maintainers:
+  - Vikash Garodia <quic_vgarodia@quicinc.com>
+
+description:
+  The Venus AR50_LITE IP is a video encode and decode accelerator present
+  on Qualcomm platforms
+
+allOf:
+  - $ref: qcom,venus-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,qcm2290-venus
+
+  power-domains:
+    maxItems: 3
+
+  power-domain-names:
+    items:
+      - const: venus
+      - const: vcodec0
+      - const: cx
+
+  clocks:
+    maxItems: 6
+
+  clock-names:
+    items:
+      - const: core
+      - const: iface
+      - const: bus
+      - const: throttle
+      - const: vcodec0_core
+      - const: vcodec0_bus
+
+  iommus:
+    minItems: 1
+    maxItems: 5
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: video-mem
+      - const: cpu-cfg
+
+  operating-points-v2: true
+  opp-table:
+    type: object
+
+required:
+  - compatible
+  - power-domain-names
+  - iommus
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,gcc-qcm2290.h>
+    #include <dt-bindings/interconnect/qcom,qcm2290.h>
+    #include <dt-bindings/interconnect/qcom,rpm-icc.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    venus: video-codec@5a00000 {
+        compatible = "qcom,qcm2290-venus";
+        reg = <0x5a00000 0xf0000>;
+        interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+
+        power-domains = <&gcc GCC_VENUS_GDSC>,
+                        <&gcc GCC_VCODEC0_GDSC>,
+                        <&rpmpd QCM2290_VDDCX>;
+        power-domain-names = "venus",
+                             "vcodec0",
+                             "cx";
+        operating-points-v2 = <&venus_opp_table>;
+
+        clocks = <&gcc GCC_VIDEO_VENUS_CTL_CLK>,
+                 <&gcc GCC_VIDEO_AHB_CLK>,
+                 <&gcc GCC_VENUS_CTL_AXI_CLK>,
+                 <&gcc GCC_VIDEO_THROTTLE_CORE_CLK>,
+                 <&gcc GCC_VIDEO_VCODEC0_SYS_CLK>,
+                 <&gcc GCC_VCODEC0_AXI_CLK>;
+        clock-names = "core",
+                       "iface",
+                       "bus",
+                       "throttle",
+                       "vcodec0_core",
+                       "vcodec0_bus";
+
+        memory-region = <&pil_video_mem>;
+        iommus = <&apps_smmu 0x860 0x0>,
+                 <&apps_smmu 0x880 0x0>,
+                 <&apps_smmu 0x861 0x04>,
+                 <&apps_smmu 0x863 0x0>,
+                 <&apps_smmu 0x804 0xE0>;
+
+        interconnects = <&mmnrt_virt MASTER_VIDEO_P0 RPM_ALWAYS_TAG
+                         &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
+                        <&bimc MASTER_APPSS_PROC RPM_ACTIVE_TAG
+                         &config_noc SLAVE_VENUS_CFG RPM_ACTIVE_TAG>;
+        interconnect-names = "video-mem",
+                             "cpu-cfg";
+
+        venus_opp_table: opp-table {
+            compatible = "operating-points-v2";
+
+            opp-133000000 {
+                opp-hz = /bits/ 64 <133000000>;
+                required-opps = <&rpmpd_opp_low_svs>;
+            };
+            opp-240000000 {
+                opp-hz = /bits/ 64 <240000000>;
+                required-opps = <&rpmpd_opp_svs>;
+            };
+        };
+    };
-- 
2.34.1


