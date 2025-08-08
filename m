Return-Path: <devicetree+bounces-202635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E32DB1E4AE
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 10:49:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BBBF7258D4
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30BEB266B72;
	Fri,  8 Aug 2025 08:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PApENXoZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E476264638
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 08:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754642974; cv=none; b=f1zJ0gXLugEOIzbZi55cIy0gFCTHg1QeF7/oKV70Wc3vrBqMdrk8kZbwPuPATff0R5xWPQdfvkoDZiSWLRvSyQBtKdPlA17gRVHejS+B5yV3QinRFPyGThlpj/mWfXkSBv+nD0RlQDezMX1njlnCYufs8fUA+usZMVnTP10PYcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754642974; c=relaxed/simple;
	bh=VO/XqcSD3T9bRV+GvDZsTJwOmB/gxlb+z0LFlAiA8e0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ph8osNiVan1m06ZzClJy9ffk3daZBnm/M4td7ARFqI5H2HI8sCGqbwE/zs2EOUtwDzR0SIaz2OTXxPZ/ji0Qbef4GJ4mJ6W3Z4T3k1MekOUkHR76wYv/rCWdt8LFr+7zwlHJVfUhec7Kw7Y7P+xjzFHWVWyMV27MDh9rUeGLy1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PApENXoZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5787LeCC018565
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 08:49:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YY+jHz5mvoy
	usButmdCoBF7o4RYZY+zFj5xw1jAtys8=; b=PApENXoZ0oH5gON89HIJ+9YwMoX
	iN1h2BkseLOMlBvlS2uEVCtnvgdmjPQNcU8kKEfKzGcFJ42SHHzuoiS/geGBJvpF
	kvMNfWwT2hrJqpimY8C4CrZrHSggpAgO/ZIENUvOdabPSfTh+X5qb3PDOq/kVYsh
	be2NPAZUGzmtLA0rYQcbBVmb2m7OsmEhcH3TU8sh7Oe00RZbt8aLPsokORf2FnLJ
	16/MyTetFCFMbz0p/JWxNx+i9BKPHnA6wb4c8fKg4w5eiEpirVQaWHAjKWXwRzNQ
	XMtSx+UB1GQ7/Fpp7YCsTcHi8S7eopNhVq/eor8cBFVBawf42zlX6fDxmdA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48c586extx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 08:49:31 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e82a101470so225739485a.0
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 01:49:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754642970; x=1755247770;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YY+jHz5mvoyusButmdCoBF7o4RYZY+zFj5xw1jAtys8=;
        b=Jfhv/BUNOA+2igjkewXJR50zcL+FytJ3CQ/L9sIb7zXeR7pseRfmWG+qtH+7ZHhIto
         MXNDiFSxxIMzf83vcLAm6jybGF80ovFtVQSCcXk0Dsopa8MHVKT1e++uVidW7J/vju44
         WU6otaLxeCDVi23PUWhQXhrqOvJDMxY7D1wOP0eMwrO1X0qBW8Ii3zE2GKKjlkG+qp6k
         lPTM4Eqh/YI1mMnCUV1ovvswMBCqWSQTw2nPWsFbpr1hQhGDFFyjCOpmsSwUJEJY6BkT
         REczDzKvGagAO5uxdOJ41SEleOcq7xdrA60d0J13jQcWQkYWvidwNBRMGSsGj9YT+XcT
         23Uw==
X-Forwarded-Encrypted: i=1; AJvYcCWLbydYQhrXyuCHn/ovSS039pm9gkR0KXwf+aDOFLDQPxrHLgD4b4idDJRX50MKHP0EDM/TOGrXgAUV@vger.kernel.org
X-Gm-Message-State: AOJu0YzP15BMuHOqHWAJpmbWelI0qN5B9nlZMbZr8oGVPsolEqnAeHGN
	GRa8faVVZGWvKyWsJLpa7agzuKO1QmH5rUqHZ8xg8lQ20xeMiexm221RvOPjcJ0g28HMn7/NCmK
	Hvx8XA5VD7dOewszTjZ1HCFTIGVQrNULGGZ5mMdNnxxNrHTJ/LhQuc19E39cVni+U
X-Gm-Gg: ASbGncuzIcLjn4sULGqtkhIxl67nN3XjY5AaYZz0m9IDA7oQhZbQtxw217etv5LnyrJ
	NBIipWDBTrjZI+7FQ1RG5JaUXC63EiRoHvvwTqRAKPQR4+UP6S2t1Zz8Zf1OtdQkiH0Qh8IrALn
	ZK+JpgGhacYOTKF8EdeyBlE0lYYE5DFtpJRDQKPkx/Brb5w6HrTgPCiC9aq7Uo3nR8W3zW+ysGn
	ShEqZINL6f2sUNnt3rbz5qILBZftdepugO0hlxYQ1p6lc6LSWDouTjZVA2shC3tocNsLW/MpsAK
	lbmsfTPHOZavP6Lz/C17RBlzuigfyOFEeQJ52Q95LxjjyiQMQtgTXwLzEy2QJ0u5ajNUeNLrCiN
	ZfH0L4qQNNY/U
X-Received: by 2002:a05:620a:aa18:b0:7e6:211f:c1f1 with SMTP id af79cd13be357-7e82c77afdfmr235170685a.30.1754642970279;
        Fri, 08 Aug 2025 01:49:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrnqG1fYrsPPgSDt/6KiFyQFURcQNGhFPS+8mxkKIlHrqKTsQkCORYvz4jXC1HcC0BILXBsQ==
X-Received: by 2002:a05:620a:aa18:b0:7e6:211f:c1f1 with SMTP id af79cd13be357-7e82c77afdfmr235168385a.30.1754642969822;
        Fri, 08 Aug 2025 01:49:29 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e58400f5sm122904295e9.2.2025.08.08.01.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 01:49:29 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
        andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v9 1/8] media: dt-bindings: venus: Add qcm2290 dt schema
Date: Fri,  8 Aug 2025 10:49:16 +0200
Message-Id: <20250808084923.1402617-2-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
References: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: GfBaCszaRnYmYk5i_gaNkzQtQ7SDTM7I
X-Authority-Analysis: v=2.4 cv=MZpsu4/f c=1 sm=1 tr=0 ts=6895ba1b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=Wl4eHCndyL1IYbKsAYUA:9 a=bTQJ7kPSJx9SKPbeHEYW:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: GfBaCszaRnYmYk5i_gaNkzQtQ7SDTM7I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDA2NCBTYWx0ZWRfXwnto3EmfphIz
 hCvkazmGJAX7VtZPLG3vFcMn67hqiN0m/Jad4NRDw9zsBrveP3nFBYB9eGEdQxBtRFpx/WnKk00
 iZpDrLg39J4wUU1xy76aY+4+8u1H7IVniuhw+ikuBRjw6VX0Ld492H98xmUtrSDIc0h5svVXHSk
 UDc1DwSsvQ6PO37nOJL8AhAmX9+tnoeXCYiGje5TlXJOam5ZNrrUxJaW0JRb5zCmQ845z3hOW9p
 qQtrXijTHP8kyW/sopve4rfakLiXp0y5G7ifqnoanjDeOgGLvPHNf5mAjfM0BtXCG7yS/5hVDJt
 SNEse32LsLUuk6QEwmVe9H0hhfX3jXNf3xglDBczK4lXpfQSyGI+n+e7tf9l9+X3h22B/4lztg1
 qN/ozbKX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0
 adultscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060064

Add a schema for the venus video encoder/decoder on the qcm2290.

The order of the IOMMU list is strict: the first two entries correspond
to non-secure IOMMUs, and the remaining three to secure IOMMUs.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/qcom,qcm2290-venus.yaml    | 130 ++++++++++++++++++
 1 file changed, 130 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml

diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
new file mode 100644
index 000000000000..3f3ee82fc878
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
@@ -0,0 +1,130 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,qcm2290-venus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QCM2290 Venus video encode and decode accelerators
+
+maintainers:
+  - Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
+
+description:
+  The Venus AR50_LITE IP is a video encode and decode accelerator present
+  on Qualcomm platforms.
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
+    #include <dt-bindings/clock/qcom,gcc-qcm2290.h>
+    #include <dt-bindings/interconnect/qcom,qcm2290.h>
+    #include <dt-bindings/interconnect/qcom,rpm-icc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    venus: video-codec@5a00000 {
+        compatible = "qcom,qcm2290-venus";
+        reg = <0x5a00000 0xf0000>;
+
+        interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+
+        power-domains = <&gcc GCC_VENUS_GDSC>,
+                        <&gcc GCC_VCODEC0_GDSC>,
+                        <&rpmpd QCM2290_VDDCX>;
+        power-domain-names = "venus",
+                             "vcodec0",
+                             "cx";
+
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
+
+        iommus = <&apps_smmu 0x860 0x0>,
+                 <&apps_smmu 0x880 0x0>,
+                 <&apps_smmu 0x861 0x04>,
+                 <&apps_smmu 0x863 0x0>,
+                 <&apps_smmu 0x804 0xe0>;
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
+            opp-133333333 {
+                opp-hz = /bits/ 64 <133333333>;
+                required-opps = <&rpmpd_opp_low_svs>;
+            };
+
+            opp-240000000 {
+                opp-hz = /bits/ 64 <240000000>;
+                required-opps = <&rpmpd_opp_svs>;
+            };
+        };
+    };
-- 
2.34.1


