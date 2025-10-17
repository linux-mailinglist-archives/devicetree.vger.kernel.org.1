Return-Path: <devicetree+bounces-228166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AD42CBE9263
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 16:18:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1D8D9508273
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 14:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6E01332ECA;
	Fri, 17 Oct 2025 14:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ksVIdIX+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB78330323
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760710635; cv=none; b=ipSfUDM9e9AKJYFC3tdwwUHsWiJtpVDdOiBEAgjoHX7FKvsFVthPqzYTgjfwQDAwSSTMxi4l0vf/yEaf0VIHQ2BCJ11vg3GXmF/MWElRUGOCN/qpwKqpmzPXFilG1+vC6te0H6IO6tTBrpBMCxLYcWDPPjmKvPIQl18OS8Nck1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760710635; c=relaxed/simple;
	bh=72jcWFIJd6Qv/5MnF332OCgW8Ho4jjpJCX56AAe3DfA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rAHTpU9+BBWlcXwQVu57mZ3s5KO71QJNjWSrgb3fyu4ReyNZHvPK8xAadHv7ISlUGfCMOfo/t8w/iEzOrXhxixkSjs7v7wQEwNmA1zpMdQOnEy4JEBCUHHWbLx7wBo/YhLOxzbxNCYBfGx7K86sSvjHiNSKk5rDwV7P7Z2BDfdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ksVIdIX+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59H87S2c006554
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:17:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b9PFflkAtVJRpfpE3Yzpa+7mIsDW3V2ORmjF0IuhOA4=; b=ksVIdIX+SGUUSq7V
	nuP4z6jDMSPeAJILfl6u8bHKlATBRunEQDAX9ajgFNRkBiChjPAWgYKYP42wX4Ys
	+mPsQkTvlMyF3ZR1QvopT43qp31egOx9VfjzK64epAoF88kQ0IUNp51rw/sXa1k3
	2jgmB9M1Vi3DXgSPKs2VY/rIiMpcYE78p6Vgw0DzXAwQ+YuUZVmxocsISE0wCCld
	wfVIHLwmoynEzasIa4lnN+RigWpM0VcquSJqRXhaVgt5xlgUJm9XldkI4HT1BCbh
	pvWyajUQH9mIb1J6TpoRF3vnsUy3SERPKOTjkIzD+NR1kAbjI0c/tokHdpo98qDG
	xdRo0A==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff14eud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:17:13 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e2e60221fso3642736b3a.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 07:17:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760710632; x=1761315432;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b9PFflkAtVJRpfpE3Yzpa+7mIsDW3V2ORmjF0IuhOA4=;
        b=QawQOGYy/kOptJXjy+v7kUHFM916pD/f9VG3993KrRKyAhcYlAW2g0TpDslEPtdU/9
         jnRbMRFXgG507NjwY1ldECND7QzTzNgBiwCEoufNxIXOIyTXWiW+HPIbFIJMPWPj6myc
         1c5XyyICvCGBaOhyMRhkeG2WwIfqMCRFKrdrxqnlkT/tQ3b/1Au3edyf8vUkMlHwgrow
         WyzPhSOtZHc4/nXndfioQu6rx4W1s+YqsqnXRPpDuKQdooiASfdpVmKE2nOAT9KmtKMS
         HllexXqOPulxhmoNNU6d9EhWDSlpTBc9Ueu6lGRpuAGrOMHmiW+BWLiESdHLQbXfaLQW
         BO+g==
X-Forwarded-Encrypted: i=1; AJvYcCXD+92cLYRRvKh2fgim1ISp4iCcfCIzkwjiZ2cA38plviN2phOm0ZZclA8KmrE3x1xzeKpIVxYDSBso@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd930ANyuEukyWMc3uL+dx5fQFR2JbPumij/jX9tq1ExQlXgio
	kzAhYvMNS2d9zKrUwkXf7hPRHf4XWQFAQ8nav5zTZzhWru7zpPl2jDg8auVqYA+bOzGN7rLOztB
	RYNeFtaVCj8VGLB9V36oBiF9VTXSFsGmZVEld7wNWF0QxAFeyTNebSf3Vb/M6hoIP
X-Gm-Gg: ASbGnctf3VKQscG9stojil95hP4F7ChV2vDJ+6Nkgw9sEP25Gh7E1g6TBPkyEpW7ee/
	mU3zGEXCYeGUVdA2mB5N62EgpVFuevidRW56AavwEggfiFt9/eEwn+JjylpDjsn8x3ZShS7oiIp
	h6H76gW9fNr5pgHvWZEemdnkqBjshox8SvLWbXVpLfKBLfcANsJkpRZ8+woSP7C2Th6/ipAHeza
	7Qy6dd9xNCIcoqB01/WvdZCDMDD8OyALwhPlhNEHy25N6lLa4FVmej7rdQhOqJSxsQd+wCaUX60
	TYSI9iPdmsaKaNZRfwkSak++Efd95g1X4ljSEU3Q/HxbN03fRWuO2fkhKFTpm5OxfLPfsz9iRoW
	CZJoZVGjcP2RQ7cYnrsA6j2z6BZz7MDHlIg==
X-Received: by 2002:a05:6a00:2308:b0:792:52ab:d9fe with SMTP id d2e1a72fcca58-7a220440d9fmr4704424b3a.0.1760710632133;
        Fri, 17 Oct 2025 07:17:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjZRj5ZyQFOhYmQRHuqsCpIa44cpaXsfGnaIpdn6/nIeJLyWuvEPAPc2/DAAHinIIkU95Bcg==
X-Received: by 2002:a05:6a00:2308:b0:792:52ab:d9fe with SMTP id d2e1a72fcca58-7a220440d9fmr4704371b3a.0.1760710631533;
        Fri, 17 Oct 2025 07:17:11 -0700 (PDT)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0966d7sm25895826b3a.40.2025.10.17.07.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 07:17:10 -0700 (PDT)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 19:46:22 +0530
Subject: [PATCH v2 1/8] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-knp_video-v2-1-f568ce1a4be3@oss.qualcomm.com>
References: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
In-Reply-To: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760710621; l=8066;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=72jcWFIJd6Qv/5MnF332OCgW8Ho4jjpJCX56AAe3DfA=;
 b=fvZ+lCuHo9++0WCLHV0KchY9s9Iz58ORtsoSp1H3UaLox0IHXAN/URpics1VqI01vpi/M2xeW
 Bcw5Hzrjur4D6Ryd3Ws1QMcNAC6lgVhjbjp/l43tRCIh5wzE66ICutw
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX+wF542SrBiG2
 eBIdJAsrgeEwWtP8BxZnoytjp6x5d2wKTJ4B86mTE3bWqoUN/DNid9qDzYD6BuvNko+KvBuSZYD
 bIzmaFsDxiioVdND3niMP3CpNSfM2kALRZfACl7mxQn+uS7IhshkTLq8P3srultzFiW1hG4Q5Cg
 O60l1ORbAQ9IzjiVaXH2QmMlYDyfs73GkP4zyb41h02Yi3zBXBGYdQoSIft/rjctR4UHwsBCD60
 U5fTJoiyUnhBxnJkZebSliDkObPm5qciCMHgKHYqk6kfGR0m5Lp2fLU9msCnQ0fc6vvEIm8X1aV
 ymHlXpTtni/iAR5SoSrj/LXNuz+hdQWbcRl1Xw3dw==
X-Proofpoint-GUID: yb36nw8TrIrM3aQ7e8ubGS8sG-GJm4ry
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68f24fe9 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=PIz1-sESaiOoqeWa7OYA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: yb36nw8TrIrM3aQ7e8ubGS8sG-GJm4ry
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

Kaanapali SOC brings in the new generation of video IP i.e iris4. When
compared to previous generation, iris3x, it has,
- separate power domains for stream and pixel processing hardware blocks
  (bse and vpp).
- additional power domain for apv codec.
- power domains for individual pipes (VPPx).
- different clocks and reset lines.

Iommus include all the different stream-ids which can be possibly
generated by vpu4 video hardware in both secure and non secure execution
mode.
The vpu have reserved iova, i.e some portion of the addressable range is
reserved for IO registers. Iris_resv would describe the acceptable
address range.

Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 .../bindings/media/qcom,kaanapali-iris.yaml        | 231 +++++++++++++++++++++
 1 file changed, 231 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,kaanapali-iris.yaml b/Documentation/devicetree/bindings/media/qcom,kaanapali-iris.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..39e9ac9dad2212e5ae8dc3d45e764418fe7d358d
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,kaanapali-iris.yaml
@@ -0,0 +1,231 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,kaanapali-iris.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Kaanapali Iris video encoder and decoder
+
+maintainers:
+  - Vikash Garodia <vikash.garodia@oss.qualcomm.com>
+  - Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
+
+description:
+  The iris video processing unit is a video encode and decode accelerator
+  present on Qualcomm Kaanapali SoC.
+
+properties:
+  compatible:
+    const: qcom,kaanapali-iris
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 10
+
+  clock-names:
+    items:
+      - const: iface
+      - const: core
+      - const: vcodec0_core
+      - const: iface1
+      - const: core_freerun
+      - const: vcodec0_core_freerun
+      - const: vcodec_bse
+      - const: vcodec_vpp0
+      - const: vcodec_vpp1
+      - const: vcodec_apv
+
+  dma-coherent: true
+
+  firmware-name:
+    maxItems: 1
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: cpu-cfg
+      - const: video-mem
+
+  interrupts:
+    maxItems: 1
+
+  iommus:
+    minItems: 3
+    maxItems: 8
+
+  memory-region:
+    minItems: 1
+    maxItems: 2
+
+  operating-points-v2: true
+  opp-table:
+    type: object
+
+  power-domains:
+    maxItems: 7
+
+  power-domain-names:
+    items:
+      - const: venus
+      - const: vcodec0
+      - const: mxc
+      - const: mmcx
+      - const: vpp0
+      - const: vpp1
+      - const: apv
+
+  resets:
+    maxItems: 4
+
+  reset-names:
+    items:
+      - const: bus0
+      - const: bus1
+      - const: core_freerun_reset
+      - const: vcodec0_core_freerun_reset
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - dma-coherent
+  - interconnects
+  - interconnect-names
+  - interrupts
+  - iommus
+  - power-domains
+  - power-domain-names
+  - resets
+  - reset-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    video-codec@2000000 {
+        compatible = "qcom,kaanapali-iris";
+        reg = <0x02000000 0xf0000>;
+
+        clocks = <&gcc_video_axi0_clk>,
+                 <&video_cc_mvs0c_clk>,
+                 <&video_cc_mvs0_clk>,
+                 <&gcc_video_axi1_clk>,
+                 <&video_cc_mvs0c_freerun_clk>,
+                 <&video_cc_mvs0_freerun_clk>,
+                 <&video_cc_mvs0b_clk>,
+                 <&video_cc_mvs0_vpp0_clk>,
+                 <&video_cc_mvs0_vpp1_clk>,
+                 <&video_cc_mvs0a_clk>;
+        clock-names = "iface",
+                      "core",
+                      "vcodec0_core",
+                      "iface1",
+                      "core_freerun",
+                      "vcodec0_core_freerun",
+                      "vcodec_bse",
+                      "vcodec_vpp0",
+                      "vcodec_vpp1",
+                      "vcodec_apv";
+
+        dma-coherent;
+
+        interconnects = <&gem_noc_master_appss_proc &config_noc_slave_venus_cfg>,
+                        <&mmss_noc_master_video_mvp &mc_virt_slave_ebi1>;
+        interconnect-names = "cpu-cfg",
+                             "video-mem";
+
+        interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+        iommus = <&apps_smmu 0x1940 0x0>,
+                 <&apps_smmu 0x1944 0x0>,
+                 <&apps_smmu 0x1a20 0x0>,
+                 <&apps_smmu 0x1943 0x0>;
+
+        operating-points-v2 = <&iris_opp_table>;
+
+        memory-region = <&video_mem>, <&iris_resv>;
+
+        power-domains = <&video_cc_mvs0c_gdsc>,
+                        <&video_cc_mvs0_gdsc>,
+                        <&rpmhpd RPMHPD_MXC>,
+                        <&rpmhpd RPMHPD_MMCX>,
+                        <&video_cc_mvs0_vpp0_gdsc>,
+                        <&video_cc_mvs0_vpp1_gdsc>,
+                        <&video_cc_mvs0a_gdsc>;
+        power-domain-names = "venus",
+                             "vcodec0",
+                             "mxc",
+                             "mmcx",
+                             "vpp0",
+                             "vpp1",
+                             "apv";
+
+        resets = <&gcc_video_axi0_clk_ares>,
+                 <&gcc_video_axi1_clk_ares>,
+                 <&video_cc_mvs0c_freerun_clk_ares>,
+                 <&video_cc_mvs0_freerun_clk_ares>;
+        reset-names = "bus0",
+                      "bus1",
+                      "core_freerun_reset",
+                      "vcodec0_core_freerun_reset";
+
+        iris_opp_table: opp-table {
+            compatible = "operating-points-v2";
+
+            opp-240000000 {
+                opp-hz = /bits/ 64 <240000000 240000000 240000000 360000000>;
+                required-opps = <&rpmhpd_opp_low_svs_d1>,
+                                <&rpmhpd_opp_low_svs_d1>;
+            };
+
+            opp-338000000 {
+                opp-hz = /bits/ 64 <338000000 338000000 338000000 507000000>;
+                required-opps = <&rpmhpd_opp_low_svs>,
+                                <&rpmhpd_opp_low_svs>;
+            };
+
+            opp-420000000 {
+                opp-hz = /bits/ 64 <420000000 420000000 420000000 630000000>;
+                required-opps = <&rpmhpd_opp_svs>,
+                                <&rpmhpd_opp_svs>;
+            };
+
+            opp-444000000 {
+                opp-hz = /bits/ 64 <444000000 444000000 444000000 666000000>;
+                required-opps = <&rpmhpd_opp_svs_l1>,
+                                <&rpmhpd_opp_svs_l1>;
+            };
+
+            opp-533000000 {
+                opp-hz = /bits/ 64 <533000000 533000000 533000000 800000000>;
+                required-opps = <&rpmhpd_opp_nom>,
+                                <&rpmhpd_opp_nom>;
+            };
+
+            opp-630000000 {
+                opp-hz = /bits/ 64 <630000000 630000000 630000000 1104000000>;
+                required-opps = <&rpmhpd_opp_turbo>,
+                                <&rpmhpd_opp_turbo>;
+            };
+
+            opp-800000000 {
+                opp-hz = /bits/ 64 <800000000 630000000 630000000 1260000000>;
+                required-opps = <&rpmhpd_opp_turbo_l0>,
+                                <&rpmhpd_opp_turbo_l0>;
+            };
+
+            opp-1000000000 {
+                opp-hz = /bits/ 64 <1000000000 630000000 850000000 1260000000>;
+                required-opps = <&rpmhpd_opp_turbo_l1>,
+                                <&rpmhpd_opp_turbo_l1>;
+            };
+        };
+    };

-- 
2.34.1


