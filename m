Return-Path: <devicetree+bounces-244332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBFCCA3D20
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:32:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0500D3030C96
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 081633451D4;
	Thu,  4 Dec 2025 13:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ldf5rvob";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F27Y4RUy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B823451C1
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764854566; cv=none; b=ENUGWp1GV42JwMWbjviCpzkZ/Hm7Y80aDv5VOamVvsU0g7ElZ2rt0seC37OpFI49FJQ5hG8R1sUVDRgtFHt+dFACrA7caDikeEa700Q++RB3ifxwCsHHImCfzdb8OXHchUo0b1naPpyVTPBHE2yeL+WBcD5UCTcSFvh/TrhYm00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764854566; c=relaxed/simple;
	bh=uzoDcZNdCpHHjRw8JCBhOS0dKddZGSZY5hbgz/0ND9U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z1Ghndc8nUQV2XcnOSAMHDVkUr2xcPs0qzT0k5gjyR9p1UlYlqdolDuqAspwYRcBgU+yQWG0gl9yn5H2olx6tHIpYaom3Up/fZhKqElm6Gr9gg7ZNzJFPqCbdItYDWCNnXL566lW3NMCBAUSPP3/JSsAHPbtlMHXgHNtDVgMLh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ldf5rvob; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F27Y4RUy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4AEu7A1159665
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 13:22:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dNj9R18HY9BBEV+EQzdpIOpzUF1L4+YTCM0LbT+T/xo=; b=ldf5rvobKiSCPKK2
	rE4ypVn8GX4D92jJfjaEfsxX62QgLnER5fLdsj9uO4e5Yppp5Xk1F0wwWwp8yzR8
	13LQBQ3OxtuCV7rEUaE2k0J7fGygvCzrq7HA7wpI2/9dlhc+eL0tEOWh58/CgSBx
	vzIzAVvTcq9AK5CUQwsecWlS5VMQwWn67UN6lsVVTehD5Y6Gb3RDYc1VCDBCusni
	4lxhsyQRfi2QdO8CNYfChDNGRFIwm6YRHMM1+MJOrjbIKSQyFVXTN0Plra2CgBVg
	mzpnOYI9GodoN7eTQbaRG6ok9l4FFZ25GCIFncKyR3qvnI8gU/16UwYvt3igubb/
	YF/UKQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atu3h2vsp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 13:22:44 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34740cc80d5so1821396a91.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764854564; x=1765459364; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dNj9R18HY9BBEV+EQzdpIOpzUF1L4+YTCM0LbT+T/xo=;
        b=F27Y4RUyj11Com8fxqpV0ePKYQ0zPDnkMJ6owNnVnE7FIK1jZD5xYdKaLyMVAqY/jI
         +pqaB2BGV3rc5bSdHUf5f+UH15ssaTiBVwkjckqs/CpGWpH9jOZntqZKxjWD5m7219oD
         yr4CKHddJLbg0eTTIV7qSijJGB8oDDtZlRWhJLDSjqqdEEDQ5A4XOfDEzG5VyLJI/VIg
         XxA5oFajDK/K2Z05NmSiDdQmVoi9m66jEu49gu+DdRN5NXSkwP6OsTHppi+MUsLYvt5y
         pYsN3aVaiX1Nh26osgTAfhHSLhRkYTfljwC2z+oyHG/kcrDU4LewCqlgr6jZ1JTVltxQ
         C5Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764854564; x=1765459364;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dNj9R18HY9BBEV+EQzdpIOpzUF1L4+YTCM0LbT+T/xo=;
        b=G7hbTkCs+UO7TEoUKtFAVHW9iHxZ32rrCIAxzXSIqsKVAxQVqx0HJMcqrhsm1GhESY
         f9UgRJa6DAlhsHOElIk0+E/acXoMZQFZnAKcwGgGaxGKclPhI99B9dsURGVf1iIhZl/P
         9SuPXZo4gzYpbh0ykSlx0XmsSxrcGsjoygmNHRMHrn2eZ/XYPL0FXeU6OITFLpm9GerM
         +Jc45o5HZ+4PINRsqlAgfx0XWfokt9AMfztE7kNWgIdXx54ny0lzXW8Q92UiQq9lOt0T
         ZfxXpAUNasUJdwHXkyCH4U5li7VOMKAMzSKiF8TNXilV6a8y1YfgiG3lh6qt7EUPPXuo
         woYw==
X-Forwarded-Encrypted: i=1; AJvYcCUmbc8tQjfy5nvAiTniLDbObUvSye/vGyZIWT4rCtJyXXtBF/L1Rkz75qekYS4xxlGk9JiLyPBSoX0d@vger.kernel.org
X-Gm-Message-State: AOJu0YwCqT2PLD6MdgJvRmQhpkgczzz5Ut/5Cuy2jutBuw+gQ5s+Af1v
	j0azaHunQnehqmw1ndqFfE9VbBPAGSHzijLWbYBNN1hhWRv8EsVBwOyL78206q30NdOB3Sg/GEf
	gttlDXB3f81C8aBd7d71dzOGSfp4KP9Nbrmjz8PXsU+NRTkg5lTkUfAstJhpBb5mR
X-Gm-Gg: ASbGncvKUQnaDnjXEegmr6VQxA3l3S1R3BnSJXJdh8/CIC/O0WrjL1X3Z38fMO0y8ra
	aDwSEFV7YwkJPmLTFyA45NHZeCG0hW0QU0w2Qr/pXJBoW0aGidzEOfz4GKls2kNVR1RL8TjkAgL
	CVIDqrtsv2aosR6uVYIbFPhhxWeL8m2DfMtjBhT+sfcbMbSJ0zy55krMJc/DuQbD2Z6RBTfsL85
	ILyI8wlIXOkMsSi8cmbJa5QRGQ6q4wvCp+V4ou2NAG6ccgpbCsm0ulyiFHZLeyXhp6ZjxY/5Wjp
	0ZLVtMwgUnnJuCREdOSFHbiZolnTlwHKSD46sbwlZy6WMtd6JOE8aHtBDypbtoikZiHcQASBaoQ
	+Eoq1dEc6vxVws3mrBH7OISIm3aKIrAaY9g==
X-Received: by 2002:a17:90b:3c50:b0:330:6d2f:1b5d with SMTP id 98e67ed59e1d1-349126b7cb2mr6437083a91.26.1764854563708;
        Thu, 04 Dec 2025 05:22:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFM7Yj0aAfp0DXPBcgTSCIeIyBXDcgz95NeVV+9v5b3m13qcDhXGMK6w6HenmZz+/02fo7qtg==
X-Received: by 2002:a17:90b:3c50:b0:330:6d2f:1b5d with SMTP id 98e67ed59e1d1-349126b7cb2mr6437060a91.26.1764854563184;
        Thu, 04 Dec 2025 05:22:43 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3494f38a18csm1914740a91.1.2025.12.04.05.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 05:22:42 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Thu, 04 Dec 2025 18:51:56 +0530
Subject: [PATCH v4 4/8] dt-bindings: display/msm/rgmu: Document A612 RGMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-qcs615-spin-2-v4-4-f5a00c5b663f@oss.qualcomm.com>
References: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
In-Reply-To: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764854530; l=5138;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=zUAYCX1J5MIdytFviYtCDr+x6dE7Gr9+3odzNMnnNEI=;
 b=nLTboisLMjix/tDE2QzkAreMiBJRUIWErvDk+xe6+ZTfWQ9SZUYN3KU02bsZJd/s9kbQy1S24
 BzgXb/Xkt82DSn1USz+XUiN1zjhHSdSYO/j5Jt3L3VgeM2OYc1Ui52J
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDEwOCBTYWx0ZWRfX3pszOLQs/toV
 w1j1cMGiSYlaiMSGsL+y7Ot10oaNagjXY0j45XY5zY7mQP7avOPr5BJeXkvRO0uBUeS6g3q37VH
 xxiPqOcZUs+0jVHhGz736/GCFlc23qq5KesbMZIKZ7DzPSvvezKztKRkmpVjbO6lX3G5AEIGWfH
 v0J4U4SupBGbWoh73LwlpuMRzBj550FAkvYywgDJuKTcdmfOE0YyMiMmx7NzRT6KeTEFqi0pUsW
 +kT7XCBA10HL6jXjSbF3J1bFSwfnWxDeZHNY7FVTVS9jBqaSgy6/U0yzcya6p7EkQ4PETncH+R8
 cCsA+yJGiPiOgqxGlR/1CJQ5nJArbaSEZCIDt0QCQvr7kwTFHSNenrX/0CnfW4LiPKhGmw9EqpB
 8akBbYv0cu4086DIo/il1rBD5RiIrA==
X-Proofpoint-GUID: LOpv2zpz8Lo8vVHuxNcEigOt-4X5MvPW
X-Authority-Analysis: v=2.4 cv=KJxXzVFo c=1 sm=1 tr=0 ts=69318b24 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=y_M5XU1qouMi1lcPmcIA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=sptkURWiP4Gy88Gu7hUp:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: LOpv2zpz8Lo8vVHuxNcEigOt-4X5MvPW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040108

From: Jie Zhang <jie.zhang@oss.qualcomm.com>

RGMU a.k.a Reduced Graphics Management Unit is a small state machine
with the sole purpose of providing IFPC (Inter Frame Power Collapse)
support. Compared to GMU, it doesn't manage GPU clock, voltage
scaling, bw voting or any other functionalities. All it does is detect
an idle GPU and toggle the GDSC switch. As it doesn't access DDR space,
it doesn't require iommu.

So far, only Adreno 612 GPU has an RGMU core. Document it in
qcom,adreno-rgmu.yaml.

Signed-off-by: Jie Zhang <jie.zhang@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../bindings/display/msm/qcom,adreno-rgmu.yaml     | 126 +++++++++++++++++++++
 MAINTAINERS                                        |   1 +
 2 files changed, 127 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,adreno-rgmu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,adreno-rgmu.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..bacc5b32e6d7b2f2b9e0424e77236e6a0ebe9a19
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/qcom,adreno-rgmu.yaml
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+# Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/display/msm/qcom,adreno-rgmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RGMU attached to certain Adreno GPUs
+
+maintainers:
+  - Rob Clark <robin.clark@oss.qualcomm.com>
+
+description:
+  RGMU (Reduced Graphics Management Unit) IP is present in some GPUs that
+  belong to Adreno A6xx family. It is a small state machine that helps to
+  toggle the GX GDSC (connected to CX rail) to implement IFPC feature and save
+  power.
+
+properties:
+  compatible:
+    items:
+      - const: qcom,adreno-rgmu-612.0
+      - const: qcom,adreno-rgmu
+
+  reg:
+    items:
+      - description: Core RGMU registers
+
+  clocks:
+    items:
+      - description: GMU clock
+      - description: GPU CX clock
+      - description: GPU AXI clock
+      - description: GPU MEMNOC clock
+      - description: GPU SMMU vote clock
+
+  clock-names:
+    items:
+      - const: gmu
+      - const: cxo
+      - const: axi
+      - const: memnoc
+      - const: smmu_vote
+
+  power-domains:
+    items:
+      - description: CX GDSC power domain
+      - description: GX GDSC power domain
+
+  power-domain-names:
+    items:
+      - const: cx
+      - const: gx
+
+  interrupts:
+    items:
+      - description: GMU OOB interrupt
+      - description: GMU interrupt
+
+  interrupt-names:
+    items:
+      - const: oob
+      - const: gmu
+
+  operating-points-v2: true
+  opp-table:
+    type: object
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - power-domains
+  - power-domain-names
+  - interrupts
+  - interrupt-names
+  - operating-points-v2
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,qcs615-gpucc.h>
+    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    gmu@506a000 {
+        compatible = "qcom,adreno-rgmu-612.0", "qcom,adreno-rgmu";
+
+        reg = <0x05000000 0x90000>;
+
+        clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
+                 <&gpucc GPU_CC_CXO_CLK>,
+                 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
+                 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+                 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
+        clock-names = "gmu",
+                      "cxo",
+                      "axi",
+                      "memnoc",
+                      "smmu_vote";
+
+        power-domains = <&gpucc CX_GDSC>,
+                        <&gpucc GX_GDSC>;
+        power-domain-names = "cx",
+                             "gx";
+
+        interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "oob",
+                          "gmu";
+
+        operating-points-v2 = <&gmu_opp_table>;
+
+        gmu_opp_table: opp-table {
+            compatible = "operating-points-v2";
+
+            opp-200000000 {
+                opp-hz = /bits/ 64 <200000000>;
+                required-opps = <&rpmhpd_opp_low_svs>;
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index ea364af99ba5c28895df765288d9d77448d2a8b7..77d7ecb92d9eeacf54e02415746e41d472915e38 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7980,6 +7980,7 @@ S:	Maintained
 B:	https://gitlab.freedesktop.org/drm/msm/-/issues
 T:	git https://gitlab.freedesktop.org/drm/msm.git
 F:	Documentation/devicetree/bindings/display/msm/gpu.yaml
+F:	Documentation/devicetree/bindings/display/msm/qcom,adreno-rgmu.yaml
 F:	Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
 F:	drivers/gpu/drm/msm/adreno/
 F:	drivers/gpu/drm/msm/msm_gpu.*

-- 
2.51.0


