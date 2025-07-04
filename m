Return-Path: <devicetree+bounces-193164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 821B5AF9855
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 18:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59A6D3B4260
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 16:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BDFC309A48;
	Fri,  4 Jul 2025 16:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e0IVnfMw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57704303DE9
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 16:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751646724; cv=none; b=P/uUE1klR75nSyRcPR733qlk2+5CxnJ8Jd+iHMwFZH2CHJynv9eLdIh4A9ZzEa9KBRigOti8JsLFDIh/K4U3HPqsFTw1RhMhpzEHAbytXFu8ECRdRwJc5mAG6T/z9jIImeA0A72UUGZF6LZsXaHyTmEu5n6Ur3TmbERNZdNqs5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751646724; c=relaxed/simple;
	bh=LdPFH6oRbQYmT9cq0Y/hHQSHOp9Z0VRztyZKZ01w694=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VTET46OmZ5pA5jxEIK7eVWYIBb1wKFYWU2JzKf6geoDhJP367UJ5dK0pSR9EqO732c7wqH2iu1A3PGx07P+LvXjhkmdnOjgX8RCVexcNIEGQs6DJIR3sBuYcB5oneY1QUbdQh6NlO4QDJ7HAer48I21wo6O/ZKRYcU45NgwGGjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e0IVnfMw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 564E4HuI016379
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 16:32:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CA4cR3EPt0ZKpDXPz76t1inkPsQdE85Hlallld4sOBE=; b=e0IVnfMwi4vHGSyF
	4tprmXwvmhnaLBzF8lnDm7Ank5+Z6eaQvXV82lDs0fKv8O2zET068/ttmg3P2cx4
	MPEX3f1G+RdabbDtvVlAzn9xK+D0y4piJZokwZga3KUifq7T0f0oyg6fJMmhsMxY
	YCpsUJ1DdwAO1gNyNCP+P0sgBMwoosBGRviMIlxDkE3wMLkB/GQhjLyXCcufsVIb
	M2kvg91sz39aZGmjXhXnWiQQsGU5ynpF4uxx28aDQWSb8Fl/aVZQEIyW91QME501
	9P5I/IPq3lGvhsv2lkAVtBchEi8qU1DB0Vuzt6ug1FqzRAXppym6LCnMz1x2v+rT
	skuHyw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j802c7b5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 16:32:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d3d3f6471cso174816385a.3
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 09:32:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751646720; x=1752251520;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CA4cR3EPt0ZKpDXPz76t1inkPsQdE85Hlallld4sOBE=;
        b=h6qMCRPKUjROylJoXjggWspi82ZocZDTfveXDEQqU09WUA//OZpGViFajQpySvOUro
         XQp8+65bDRwaoRWes5MDjI/F5uTYe0xez0N4aTRQY+2UGFXIVoRvgN588zrpzMPrc8qn
         5pTWbHG1/1frH97HUzF3cIew/o9y/KkhVM3IksB3LH66Zdkz1LqxjGUxa6ouubYqc+mN
         zC+yGFwluodRptPCUfYbVsyKok5ho06XTf3gTnDYIEOKsGsZQakfHVtrH8JXkHbhNibE
         YnLZFHS91o/S9kFx2kCvZdjSxEGinDg34HZ96SUnybRE9TdrF44ax+s7gfv4h6KyfOgJ
         VcqA==
X-Forwarded-Encrypted: i=1; AJvYcCWznWPIjg+EnI6yI0h4+EA1KseeBic51CISYLxygWHpR1QoqUrH++Vhjia/r3cqP68JK5KfYfSY85ip@vger.kernel.org
X-Gm-Message-State: AOJu0YxRxN23NhKxwFn7315KIVfB0j6eeB8Vtcm9rcPzgF86vAndx4M+
	z1534keYyYKQ5KIlo2ej/P8YErM4fReNjkD/2Z7pY748Zbc93ZG+cB0pWKqi7u+Li+iebw6edWd
	pcEGwuCfNCZK5Nh8+9sb/veFAz4QiEVllCKuM8v1Q7J/5wCdvsv67DVAymZNaK5xL
X-Gm-Gg: ASbGncvfxp1w+54nh4ePuw2habYoh+bm4V7O7135GjBVAiAsziohZX2ah6h/ZwbVqED
	9fOHadE7K3USGiQvAUJtVdtbxYQvDjj/dUOEFQ7CfOPjuRHMqAbh7SayrWnia69jhTUetyvMkzB
	sPa2iZPF1fHkOiXgndNXJY+wVR9oesMkUM9x8k1vzn0cKYc3bMEMp4nKEJniRxAQFLhtFecsMvW
	/D/I6vrD0EdK9jgn110iW1FA7YBB8mu0DfHDwNoqQyzpOJnOe3Q9CiMhTV/OqAvvuoTMTlmvR32
	5CRQpa/Xbj1ctp/lIWeA14i2ydpNc1eGCMi2f+D2sPkF+tJHJ6ynAcb0dneyBRsUqAzJFhjSRHE
	tkh3TH9q2P4LmHCeWqtzFUqy9dtV6LE/7yaE=
X-Received: by 2002:a05:620a:4553:b0:7c5:5670:bd6f with SMTP id af79cd13be357-7d5dcd4048bmr562637485a.53.1751646720135;
        Fri, 04 Jul 2025 09:32:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFr3+g6l0u0WyfYKx74vE0m1HBQS0pRyhe4KErDw8IpkZJfjmohlKg+ZO0KDPYK/r6AiAHRXw==
X-Received: by 2002:a05:620a:4553:b0:7c5:5670:bd6f with SMTP id af79cd13be357-7d5dcd4048bmr562631885a.53.1751646719489;
        Fri, 04 Jul 2025 09:31:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32e1af83102sm2813571fa.6.2025.07.04.09.31.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 09:31:58 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 04 Jul 2025 19:31:54 +0300
Subject: [PATCH 2/4] dt-bindings: display/msm: describe DPU on SC8180X
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250704-mdss-schema-v1-2-e978e4e73e14@oss.qualcomm.com>
References: <20250704-mdss-schema-v1-0-e978e4e73e14@oss.qualcomm.com>
In-Reply-To: <20250704-mdss-schema-v1-0-e978e4e73e14@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3613;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=LdPFH6oRbQYmT9cq0Y/hHQSHOp9Z0VRztyZKZ01w694=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoaAH6nnSALyAuxHSso/6VMpuKfgpAStkiLnufr
 MDtUiOt/YGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaGgB+gAKCRCLPIo+Aiko
 1bkWB/9UNkOrPbaYrvefY+V+F6irbPlq67sccAvejlrV8j2Mb88fT40wYeT7W9kBfH5Q5H/zeeQ
 tTyZjZiZoO9n9j33gJvEuIdF7w6FW+Ig6A4VDoeIfR7ANqfqAx4lG6qcQI+Pm/pKF//LSSYtKrp
 mj+NVmr40rTTyAgnf2t7wWtFHBw9kzJcSIVzF6X2qtw07L6F7kT5gE5VDsw7iQjP9YgPFFggKGv
 Tv2z25esKQwQWn6VC0V/SW3xT8AIPik6P9teglDVl9WBmNepe+ZZAipmQBe+BsuY+74ea55lXkb
 MCHJYpQoyXr4xOYl16wxxOTukOyvw0JbaTFA13Z/QKe92m9c
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: GSKf_BsJlPmyxGydEosXPJtuXaGOhdEr
X-Authority-Analysis: v=2.4 cv=YPWfyQGx c=1 sm=1 tr=0 ts=68680201 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=PRzSAg5HSsxOSwAYWMMA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: GSKf_BsJlPmyxGydEosXPJtuXaGOhdEr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDEyNCBTYWx0ZWRfX99HZIr2NqG3o
 pPB2icUl58vXvB6t5DJjCzRQGJm04dKanpaS26wNgyYD9+Ak/ciKn79ynCEsL4CI4OeS2nbrQKs
 vhVi0tb+VWN09xQmxb9ebSqcffk/NTXS7gC4niCsgkbKKpv798p48XPSyOM08B599WbaEBQ0BgT
 JEhUaq41pkwEtYz3HXDW10lqOTRTi9MBTHo+Uqjc4dwHF9SPvrjjD7UqPXcxgxKG3S+gutfa8UX
 l/ToAFjri9pdWVFpo/jbcUXgFWLHY78/PEwABNfvM2bH7lcDIuc2iGyQ4SFjh7ED6VsE5Sk6YfL
 52gtXE9IQf7EUamN1JJ3HZjJzfDThonLx6CCYEuuG9hiNub17fS3x0KPgcRqg/DuZ2uGM7mWG+q
 Jgsj0ltdzTtAwM2V6OhwAk+Z5zn+CeXT1m2cJD1Of83UATNnMDSg+rOmYBrKPiPggXbHlET7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_06,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507040124

Describe the Display Processing Unit (DPU) as present on the SC8180X
platform.

Reported-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/display/msm/qcom,sc8180x-dpu.yaml     | 103 +++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc8180x-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc8180x-dpu.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..a411126708b80f77bde88d7dd1ed49184856969c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc8180x-dpu.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/msm/qcom,sc8180x-dpu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SC8180X Display DPU
+
+maintainers:
+  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
+
+$ref: /schemas/display/msm/dpu-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,sc8180x-dpu
+
+  reg:
+    items:
+      - description: Address offset and size for mdp register set
+      - description: Address offset and size for vbif register set
+
+  reg-names:
+    items:
+      - const: mdp
+      - const: vbif
+
+  clocks:
+    items:
+      - description: Display AHB clock
+      - description: Display HF AXI clock
+      - description: Display core clock
+      - description: Display vsync clock
+      - description: Display rotator clock
+      - description: Display LUT clock
+
+  clock-names:
+    items:
+      - const: iface
+      - const: bus
+      - const: core
+      - const: vsync
+      - const: rot
+      - const: lut
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,dispcc-sm8250.h>
+    #include <dt-bindings/clock/qcom,gcc-sc8180x.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interconnect/qcom,sc8180x.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    display-controller@ae01000 {
+        compatible = "qcom,sc8180x-dpu";
+        reg = <0x0ae01000 0x8f000>,
+              <0x0aeb0000 0x2008>;
+        reg-names = "mdp", "vbif";
+
+        clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+                 <&gcc GCC_DISP_HF_AXI_CLK>,
+                 <&dispcc DISP_CC_MDSS_MDP_CLK>,
+                 <&dispcc DISP_CC_MDSS_VSYNC_CLK>,
+                 <&dispcc DISP_CC_MDSS_ROT_CLK>,
+                 <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>;
+        clock-names = "iface",
+                      "bus",
+                      "core",
+                      "vsync",
+                      "rot",
+                      "lut";
+
+        assigned-clocks = <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+        assigned-clock-rates = <19200000>;
+
+        operating-points-v2 = <&mdp_opp_table>;
+        power-domains = <&rpmhpd SC8180X_MMCX>;
+
+        interrupt-parent = <&mdss>;
+        interrupts = <0>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                endpoint {
+                    remote-endpoint = <&dsi0_in>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                endpoint {
+                    remote-endpoint = <&dsi1_in>;
+                };
+            };
+        };
+    };
+...

-- 
2.39.5


