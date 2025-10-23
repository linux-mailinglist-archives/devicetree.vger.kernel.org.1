Return-Path: <devicetree+bounces-230039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B15AEBFF258
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 06:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 420CE3A9F23
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C21B7253B66;
	Thu, 23 Oct 2025 04:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cdQHj14s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AE52472BC
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761194396; cv=none; b=eT9E3PI47FFXw1/rF0nOwK+auLNS7nzDHWYAEGTKZCBMD61zBCIS7AWYf/GWSv8P2vsROfJXYBTQUgxyX/z/2Iv8mBxLxztC79CtPcHhxPwzQxc0p1nO+FmyE1nmi49b2l7uZv+kjZ/Ck0MvgMIvoXyYtng49D0r/fiXuh8tqI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761194396; c=relaxed/simple;
	bh=2YXzWT4uFDf8CoTmhrz0psEHILwes0H3rkqIid7e/3w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XDfEpGnpGM0KLI+pQbECi7CrGW4Fr7/ZRG57toIceEAetWYSQxIAomIpVJdzCkiPYCqzv3U3WGgMAH7jlYxHGYCLNrGPmxSqjayopoV2J1WzbE2rLo2GPzckbWXDsY9l3LViBX6URZ7X11c2fzth6xppXuHU/l4SJZ6GPxQ3l5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cdQHj14s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MIeoE1028863
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:39:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tLAj8QTiM5i/yJsXqtteQjnX24PsjYgoBjsarJ4Hd/Y=; b=cdQHj14shX5f+JpD
	y7BNFLS4SOUfa3P+JMYgivhY/YyYg+akyF/ghnqP24lcg17EIcoYhplqFfGC8Pp+
	1JDltHxiW+hcu5yq4Rf5HHPhKCeOAhW+sD+pmesivhQUHZLRKFxrYqETpVc3MKQU
	ggBW8HrpMmEzXuBmF2nyVOf/Co72Kq7RG8bt9/MODYmaRftPdy/6ZbN6wRl03uim
	H7bO5KUd/5Iu/6gtWt7DMcwWsQ6jnR9/L5gbuT0w+Pw+73mTCyaoequZ9xJC6Ua7
	Xw2zlple1kINeNfsqT2O4Ph+tSRglhi+eU+W75YK2t1fQ6OzvijbubNop7qj3mNf
	O+6nXw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08wcnme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:39:53 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-290da17197eso6091715ad.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 21:39:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761194393; x=1761799193;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tLAj8QTiM5i/yJsXqtteQjnX24PsjYgoBjsarJ4Hd/Y=;
        b=B6RximisiwJVODCe2YpgKb8fbvirX2A3NOsOmuRiMs9RVnegZWqke90bjMysa4Fqa5
         gd5xLcFoEbRoijoSmCdEqmS+5N6vI2OId7gPd02BW2yN/fW4DxragBwJz5euPaKX1ECp
         2yxyEunO07pr2g4NxxOdNlWT5ruzx6tf+5BEq1B8BOlEXHuFJjdTO9sSvWgVTrM5uN0F
         KbVgSLebC/AOHkt6p3FZyh7IZu1Mssz8xHurVDufyT2gLeoHIvXULojeULWs/TaNDhlO
         wLn4YdCN8n2Rhz8Sg4cYP/23n1KHnX5lSsbYnq7H0TbSEv1Lryt7+ZGdENHhxkLM1CYl
         Vz0g==
X-Forwarded-Encrypted: i=1; AJvYcCUdvCwtFrvG59/NEsOrPVnSSk16ZlLLfLiUy6EMafjLi1JgVhuSOjOsu4vgUfL5JvXkyuY0lw6cgrLZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3vbe//U/PB66ajw+lJ5bFPsTVZ1+c4Sq3mCUJ3Nq5PvLAs77b
	spQm+ZFlf4oFSYX0P0g0qFIViCdTjPdm5kR4SfCERA9ydDTzoLviUH9/bbhgrCNbXmiwDv5SZuY
	Kr0VNpDwuwEKKnoWPmFFT7SqXfmKflWZN6CVWq+rQXuSSO6PhmNolyJDpsq2r4zKPC+lage61
X-Gm-Gg: ASbGncvrDWJOk9EDbJwZAiebHdQnIaRMp184ustdcgSxQW/SQQ2LRFgw/CD1nSP0LX2
	rSaJ+Qw86K8ZjeD/P9ujgtrz0I5UL+PsxcuQE9pp+1+jEZq6Q3iHLqjTpXcAOcJGWobi/fQhYuB
	BelzrrBLY1PmRwnhQ4PQp6sL/m5xyf24SbgTKCIRy5VDH2T+RKhoAAQ0aAb4Okex3QYBNOELeaR
	OxqCMmMGbMYLzghKgnvMSgNYa145NM+HnLPxmF/QE0Cro2rYI1AHlX3SSEreeF4GxeF2l5Rd87b
	hLZdln4ve3VcjypUSUOyMUGdmxMBbqtGNdj8QBOGeH/Nu+2n3jbxi5Qq14RNQuk4Wn7TvOqzkrv
	hUlenKNt/MLvTnOE+aMXYXg==
X-Received: by 2002:a17:902:ce12:b0:26b:da03:60db with SMTP id d9443c01a7336-290c9ca6b1cmr284456555ad.13.1761194392702;
        Wed, 22 Oct 2025 21:39:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLGS7oHblx0K/GM8zdAwh0guSmP+poBBmYBkoETI8Wbx/dhFtFCFQxbqiQiTc+fSuAC7854w==
X-Received: by 2002:a17:902:ce12:b0:26b:da03:60db with SMTP id d9443c01a7336-290c9ca6b1cmr284456345ad.13.1761194392223;
        Wed, 22 Oct 2025 21:39:52 -0700 (PDT)
Received: from [169.254.0.6] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4e0a3f0sm754187a12.20.2025.10.22.21.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 21:39:51 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 04:39:32 +0000
Subject: [PATCH 1/2] dt-bindings: interconnect: document the RPMh
 Network-On-Chip interconnect in Kaanapali SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251023-knp-interconnect-v1-1-df13182aceac@oss.qualcomm.com>
References: <20251023-knp-interconnect-v1-0-df13182aceac@oss.qualcomm.com>
In-Reply-To: <20251023-knp-interconnect-v1-0-df13182aceac@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: YURZCBjckdddm99-Pso4Mf3nuWDb7Zi0
X-Proofpoint-GUID: YURZCBjckdddm99-Pso4Mf3nuWDb7Zi0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfX22bDCp1pdQl0
 CLw8U/Fn/JXKPUtg5SPIOjV0gxBEAduzOjn+OVzTCIyR/3kEn4cHpjD7rs90TkC41lji01VmZsl
 SkHaNs5knxWvDRlDkShiEawWIWvNpkXKSIztS1FUO+EK3VVpBsq5fAHw5SGRqwuNIrkA16tEADG
 zcQ4gKHrWXoH9Y65BawvW00jNnYY34CkO0efHREzZkeoHcK68M8Gzg/YSMBnxy4Gyt6fWxI7Bgq
 eZylzgBkhxVE5tLEqj3hPlsrsjvJbKdnRCjgcVYCuArbZORMjrqJijmkKrEzU08qw2Ipiaj9noO
 l/KoLJxmiZiEb+Rh7VJIO25Yzz3THeeyKzNaDb/jGeWQp1lp9NB/EueSOBr4k/mGY1sxgrSPKoA
 Ss19akonDSVcDrQ8kIQLjgbqBQelaA==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f9b199 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=IFSB1yzq2gCOkJebH6QA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090

Document the RPMh Network-On-Chip Interconnect of the Kaanapali platform.

Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
---
 .../bindings/interconnect/qcom,kaanapali-rpmh.yaml | 126 +++++++++++++++++
 .../dt-bindings/interconnect/qcom,kaanapali-rpmh.h | 149 +++++++++++++++++++++
 2 files changed, 275 insertions(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,kaanapali-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,kaanapali-rpmh.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..574150cc4930a250f81c717b10a49dc7af349c1d
--- /dev/null
+++ b/Documentation/devicetree/bindings/interconnect/qcom,kaanapali-rpmh.yaml
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interconnect/qcom,kaanapali-rpmh.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm RPMh Network-On-Chip Interconnect on KAANAPALI
+
+maintainers:
+  - Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
+
+description: |
+  RPMh interconnect providers support system bandwidth requirements through
+  RPMh hardware accelerators known as Bus Clock Manager (BCM). The provider is
+  able to communicate with the BCM through the Resource State Coordinator (RSC)
+  associated with each execution environment. Provider nodes must point to at
+  least one RPMh device child node pertaining to their RSC and each provider
+  can map to multiple RPMh resources.
+
+  See also: include/dt-bindings/interconnect/qcom,kaanapali-rpmh.h
+
+properties:
+  compatible:
+    enum:
+      - qcom,kaanapali-aggre-noc
+      - qcom,kaanapali-clk-virt
+      - qcom,kaanapali-cnoc-main
+      - qcom,kaanapali-cnoc-cfg
+      - qcom,kaanapali-gem-noc
+      - qcom,kaanapali-lpass-ag-noc
+      - qcom,kaanapali-lpass-lpiaon-noc
+      - qcom,kaanapali-lpass-lpicx-noc
+      - qcom,kaanapali-mc-virt
+      - qcom,kaanapali-mmss-noc
+      - qcom,kaanapali-nsp-noc
+      - qcom,kaanapali-pcie-anoc
+      - qcom,kaanapali-system-noc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 3
+
+required:
+  - compatible
+
+allOf:
+  - $ref: qcom,rpmh-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,kaanapali-clk-virt
+              - qcom,kaanapali-mc-virt
+    then:
+      properties:
+        reg: false
+    else:
+      required:
+        - reg
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,kaanapali-pcie-anoc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: aggre-NOC PCIe AXI clock
+            - description: cfg-NOC PCIe a-NOC AHB clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,kaanapali-aggre-noc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: aggre UFS PHY AXI clock
+            - description: aggre USB3 PRIM AXI clock
+            - description: RPMH CC IPA clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,kaanapali-aggre-noc
+              - qcom,kaanapali-pcie-anoc
+    then:
+      required:
+        - clocks
+    else:
+      properties:
+        clocks: false
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,kaanapali-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    clk_virt: interconnect-0 {
+      compatible = "qcom,kaanapali-clk-virt";
+      #interconnect-cells = <2>;
+      qcom,bcm-voters = <&apps_bcm_voter>;
+    };
+
+    aggre_noc: interconnect@16e0000 {
+      compatible = "qcom,kaanapali-aggre-noc";
+      reg = <0x016e0000 0x42400>;
+      #interconnect-cells = <2>;
+      clocks = <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+               <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+               <&rpmhcc RPMH_IPA_CLK>;
+      qcom,bcm-voters = <&apps_bcm_voter>;
+    };
diff --git a/include/dt-bindings/interconnect/qcom,kaanapali-rpmh.h b/include/dt-bindings/interconnect/qcom,kaanapali-rpmh.h
new file mode 100644
index 0000000000000000000000000000000000000000..dde3f9abd67764421f54f8d222979727905a0a73
--- /dev/null
+++ b/include/dt-bindings/interconnect/qcom,kaanapali-rpmh.h
@@ -0,0 +1,149 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef __DT_BINDINGS_INTERCONNECT_QCOM_KAANAPALI_H
+#define __DT_BINDINGS_INTERCONNECT_QCOM_KAANAPALI_H
+
+#define MASTER_QSPI_0				0
+#define MASTER_CRYPTO				1
+#define MASTER_QUP_1				2
+#define MASTER_SDCC_4				3
+#define MASTER_UFS_MEM				4
+#define MASTER_USB3				5
+#define MASTER_QUP_2				6
+#define MASTER_QUP_3				7
+#define MASTER_QUP_4				8
+#define MASTER_IPA				9
+#define MASTER_SOCCP_PROC			10
+#define MASTER_SP				11
+#define MASTER_QDSS_ETR				12
+#define MASTER_QDSS_ETR_1			13
+#define MASTER_SDCC_2				14
+#define SLAVE_A1NOC_SNOC			15
+#define SLAVE_A2NOC_SNOC			16
+
+#define MASTER_QUP_CORE_0			0
+#define MASTER_QUP_CORE_1			1
+#define MASTER_QUP_CORE_2			2
+#define MASTER_QUP_CORE_3			3
+#define MASTER_QUP_CORE_4			4
+#define SLAVE_QUP_CORE_0			5
+#define SLAVE_QUP_CORE_1			6
+#define SLAVE_QUP_CORE_2			7
+#define SLAVE_QUP_CORE_3			8
+#define SLAVE_QUP_CORE_4			9
+
+#define MASTER_CNOC_CFG				0
+#define SLAVE_AHB2PHY_SOUTH			1
+#define SLAVE_AHB2PHY_NORTH			2
+#define SLAVE_CAMERA_CFG			3
+#define SLAVE_CLK_CTL				4
+#define SLAVE_CRYPTO_0_CFG			5
+#define SLAVE_DISPLAY_CFG			6
+#define SLAVE_EVA_CFG				7
+#define SLAVE_GFX3D_CFG				8
+#define SLAVE_I2C				9
+#define SLAVE_I3C_IBI0_CFG			10
+#define SLAVE_I3C_IBI1_CFG			11
+#define SLAVE_IMEM_CFG				12
+#define SLAVE_IPC_ROUTER_CFG			13
+#define SLAVE_CNOC_MSS				14
+#define SLAVE_PCIE_CFG				15
+#define SLAVE_PRNG				16
+#define SLAVE_QDSS_CFG				17
+#define SLAVE_QSPI_0				18
+#define SLAVE_QUP_1				19
+#define SLAVE_QUP_2				20
+#define SLAVE_QUP_3				21
+#define SLAVE_QUP_4				22
+#define SLAVE_SDCC_2				23
+#define SLAVE_SDCC_4				24
+#define SLAVE_SPSS_CFG				25
+#define SLAVE_TCSR				26
+#define SLAVE_TLMM				27
+#define SLAVE_UFS_MEM_CFG			28
+#define SLAVE_USB3				29
+#define SLAVE_VENUS_CFG				30
+#define SLAVE_VSENSE_CTRL_CFG			31
+#define SLAVE_CNOC_MNOC_CFG			32
+#define SLAVE_PCIE_ANOC_CFG			33
+#define SLAVE_QDSS_STM				34
+#define SLAVE_TCU				35
+
+#define MASTER_GEM_NOC_CNOC			0
+#define MASTER_GEM_NOC_PCIE_SNOC		1
+#define SLAVE_AOSS				2
+#define SLAVE_IPA_CFG				3
+#define SLAVE_IPC_ROUTER_FENCE			4
+#define SLAVE_SOCCP				5
+#define SLAVE_TME_CFG				6
+#define SLAVE_APPSS				7
+#define SLAVE_CNOC_CFG				8
+#define SLAVE_DDRSS_CFG				9
+#define SLAVE_BOOT_IMEM				10
+#define SLAVE_IMEM				11
+#define SLAVE_PCIE_0				12
+
+#define MASTER_GPU_TCU				0
+#define MASTER_SYS_TCU				1
+#define MASTER_APPSS_PROC			2
+#define MASTER_GFX3D				3
+#define MASTER_LPASS_GEM_NOC			4
+#define MASTER_MSS_PROC				5
+#define MASTER_MNOC_HF_MEM_NOC			6
+#define MASTER_MNOC_SF_MEM_NOC			7
+#define MASTER_COMPUTE_NOC			8
+#define MASTER_ANOC_PCIE_GEM_NOC		9
+#define MASTER_QPACE				10
+#define MASTER_SNOC_SF_MEM_NOC			11
+#define MASTER_WLAN_Q6				12
+#define MASTER_GIC				13
+#define SLAVE_GEM_NOC_CNOC			14
+#define SLAVE_LLCC				15
+#define SLAVE_MEM_NOC_PCIE_SNOC			16
+
+#define MASTER_LPIAON_NOC			0
+#define SLAVE_LPASS_GEM_NOC			1
+
+#define MASTER_LPASS_LPINOC			0
+#define SLAVE_LPIAON_NOC_LPASS_AG_NOC		1
+
+#define MASTER_LPASS_PROC			0
+#define SLAVE_LPICX_NOC_LPIAON_NOC		1
+
+#define MASTER_LLCC				0
+#define SLAVE_EBI1				1
+
+#define MASTER_CAMNOC_HF			0
+#define MASTER_CAMNOC_NRT_ICP_SF		1
+#define MASTER_CAMNOC_RT_CDM_SF			2
+#define MASTER_CAMNOC_SF			3
+#define MASTER_MDP				4
+#define MASTER_MDSS_DCP				5
+#define MASTER_CDSP_HCP				6
+#define MASTER_VIDEO_CV_PROC			7
+#define MASTER_VIDEO_EVA			8
+#define MASTER_VIDEO_MVP			9
+#define MASTER_VIDEO_V_PROC			10
+#define MASTER_CNOC_MNOC_CFG			11
+#define SLAVE_MNOC_HF_MEM_NOC			12
+#define SLAVE_MNOC_SF_MEM_NOC			13
+#define SLAVE_SERVICE_MNOC			14
+
+#define MASTER_CDSP_PROC			0
+#define SLAVE_CDSP_MEM_NOC			1
+
+#define MASTER_PCIE_ANOC_CFG			0
+#define MASTER_PCIE_0				1
+#define SLAVE_ANOC_PCIE_GEM_NOC			2
+#define SLAVE_SERVICE_PCIE_ANOC			3
+
+#define MASTER_A1NOC_SNOC			0
+#define MASTER_A2NOC_SNOC			1
+#define MASTER_APSS_NOC				2
+#define MASTER_CNOC_SNOC			3
+#define SLAVE_SNOC_GEM_NOC_SF			4
+
+#endif

-- 
2.43.0


