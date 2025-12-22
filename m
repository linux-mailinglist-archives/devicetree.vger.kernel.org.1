Return-Path: <devicetree+bounces-248776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8CACD5A19
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:39:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB46A307107D
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:36:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72443328E0;
	Mon, 22 Dec 2025 10:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XgW6FwEs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZdycAWuM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028DB331A6E
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766399092; cv=none; b=Qkb2DVJs0AJV8T3bEHTRxDmqWQgJebHUHrX9mhF5sitddS1oTVJuTVw/yBrIVzV3NGaLmtKMvOVA48Lc/l3HR/9lekEjFsMksD9wvABaZgVOzLewSTe4AmPVB4MdYk7CuggQAd/hG3E7E+X9hnMxL56gfH+xaLzbqUT+QQJS0nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766399092; c=relaxed/simple;
	bh=5mkZrK48bkfBXNoyU6qpyaVxjuVG/ZjDDQoKoI+sVuo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=czS77ROITJsu2Pvvd6vmkGaqfx2S+yA1pv6AHYJiEpptm7tPspsrVTDKc9/NfWLvl2KoCL17M74PXMBRcrsXMBuc0/Y/GLV+tMXKGxGJEYyufxSX3H7oiPQ6ZZ625b3ls4K2Xyn95FE3urf6ZVrhXxyPS23yEILHagzl5q2usnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XgW6FwEs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZdycAWuM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM7g4Ka3898705
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=aVNtrFxp3WV
	AfrOVfxrAS+r2RVAHqQASd22j1whCdTM=; b=XgW6FwEs9stFIfhaWEQW9tmLbqT
	0DPxgcy/iNidrCSBNm9cp3uRapQ3BSQLS0PWHUF7W+qwC0YgIUyKsWcGLwlYfgcp
	o9OfBqafnhQbCiUbRRvWZJVCox6sOVBPVqksNLUpp49113m0tyDuipJ52iEfl9+g
	Dzv7/rMt8oz/YhndAko8C4cGRju8o2zSPseQsccU7WxYFHDYKuvANR6IwGhFRfIe
	IsOi8vsJmqjSqUf8OitaoipJrA5fTeqGNKjGSi7H7JiYFZQ0MWwBolXv9el3WUXl
	uPtm1lXLH/ONMuI7agoF/sjN0RnUs9CqZaVgE+vo2U0li8iP3g3cfKo+HYQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mvfmmx3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:49 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed79dd4a47so80622091cf.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766399089; x=1767003889; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aVNtrFxp3WVAfrOVfxrAS+r2RVAHqQASd22j1whCdTM=;
        b=ZdycAWuMTcplQte75u3b9JMfFykpnNVykrYCFyLarVBLN5EgM0MB+0JNyjN3WqO/yP
         KNEaZOYhdHmu61SDO7pzO7mdQVGRkirWbtz28UL5OriOObl+3cMUwqBTV+AAEUXFDrEC
         f+0aD5kQRw9gvDlC/vitpVNfcJ517pBQot9dYHo7E1vf7YMtUHs1/SBOsXeakmZ30IRR
         rMejL42oz30NtZhJzp2PkR+GPw+EzxKPjf1zKEYN8aXp8oZy/J5EqqrJnK1jOrILmfbx
         zCX0ucELfK69rXEhCjVtWWc/ZhtJXi+uAbGOYDtChn9Fw3gHZJoS6l9x4/r3gJMtJhb1
         iFRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766399089; x=1767003889;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aVNtrFxp3WVAfrOVfxrAS+r2RVAHqQASd22j1whCdTM=;
        b=slHbzOI/E5MHOWmPiZy5xnL2lUKE5ZtDP14GtelqNpxl3v7LR1s2esS3TrC/Uv8KQF
         EYIhrhyL0trRju2ih1WQCOkSMq4O+G3jPUntxBD6c63eh67A1vxG/X4gfo9AiJW9z+pe
         EHQ/i/5FSWRJ8BuPfFp2PqRIddDhun9Jsp4hH0Ugfu21+chqWu29fN3Hh92ieCCfQlpm
         H89NIgw8+/0WWA5a+DWVz00oCWRt0XcEE4fQaroq5RI9ou+gQqMG5fqhMj9PsFiLlPzg
         6VIehV1Lv7Oi0xvEQQyRQeO1U+HEeJKQ/cmu91C3to7Fn9VrLfCG0XUNPUYWTk9ZGGkg
         EMCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsep3LORqRg+DiRp+dbOXb1TL2k78YV7VySd37kE2kehJhkohTlRdrjKX+KVMCV1vDSUkMsQWBx9oT@vger.kernel.org
X-Gm-Message-State: AOJu0YxbIOHlRw3aK+q7RIOpCUPLcmci7APHGb25m1hGe5ZSxxjXQ9Ms
	uWnpdNEIN3JqglF7pwrbkUbTQmCh0DaC1m9D3SF40KlIy4O02lifsBUSfxnm0ji2E6AixEwiuEh
	NmW+kIDZeBjGOumTp9XyySx6w9VUu0gDIU9RU1/qvXXjqbNnj6MBi9noD+t6vqVZC
X-Gm-Gg: AY/fxX7S1XjNbv9tt+Vbot9uYLf49gQLCuwukhR9UGPowTRIjFSb9CPDI4qG7FATIUP
	g4DJEHr+INW1tqLIv7B+nTSLC5ncuKuEYD5VQoLegpbno5fxaEvbttgr/rC9nIUdjYsaA7nFdgG
	ytXU4ePiIOSjqa8fCAGChnvJunL+fui9iUJwbez30jEsCvAQO8NNTCF4q9dayrYiXJL7iCpFIYf
	Qe8LcWwq0kaHloLViKxiU2W6f8xed9o9Ku8Z+DJs+1QZOwCix/S/acHGe8nRne2AB5kx2y2cd7A
	8VSSFEqizKHuHaUBlXDGFvskuRVOeRaosOYX5lLtP77i52FJyNYhmsZZbk5mpIY8TMexbgcI8hA
	vhZsKwbCLcbeu9H0FMIG6iiE7UniMf9j8vZgeRmy/4qxZSpW0Ht3XWP+6LlHkEdj6yb4=
X-Received: by 2002:ac8:5a8a:0:b0:4ed:b978:91db with SMTP id d75a77b69052e-4f4abdc92bcmr148819751cf.77.1766399089189;
        Mon, 22 Dec 2025 02:24:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFKFZeWDBbuuLLq+6wzegWigUnd6UNojbEeYUogiI/tjHMskSa6YzHwD0NpoP913zwElRfe9w==
X-Received: by 2002:ac8:5a8a:0:b0:4ed:b978:91db with SMTP id d75a77b69052e-4f4abdc92bcmr148819331cf.77.1766399088638;
        Mon, 22 Dec 2025 02:24:48 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac66a1aasm72500001cf.33.2025.12.22.02.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 02:24:48 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH v4 04/11] dt-bindings: display/msm: qcom,kaanapali-mdss: Add Kaanapali
Date: Mon, 22 Dec 2025 18:23:53 +0800
Message-Id: <20251222102400.1109-5-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=H8rWAuYi c=1 sm=1 tr=0 ts=69491c71 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=ttgK4pBlxCW4zpXUERAA:9
 a=a_PwQJl-kcHnX1M80qC6:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: 1Gb15kAbpa7wCxF_sbFhCaxN7ZYaln-c
X-Proofpoint-GUID: 1Gb15kAbpa7wCxF_sbFhCaxN7ZYaln-c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5NCBTYWx0ZWRfX60Cs/Cd2AGZM
 A/uo4wSo6I6ZLpJ+VRKeNaIAGzayPjHlfn7q3KN1sSfwebHDXQPT9zA53mkMxqopBqAlMiV0EvX
 YtPz1L1K/HjT8x9jeN0V8KKu0xwUOd/JMXNfix+OnKB+6Fqkq/PzP9MERSONsiQzTcHR1SN6iJq
 WDfJGYwxF1WAWGhKke7ZTwHObd6G4V2HqGkUWxhmrSqqmWXssckXdzmM+vgOo+wcEZGHm+jSW4M
 qOF5h61Qa1g6EDaJ3ZMfXzYOoLqfLvmgnGEhWtSK8FhMSpRiTrnua66jyYN99zlizHuI5OiciJ9
 fvM4mcxU0N3OwaAMzpNIwrj4e01dgNPICtObgH30KT81xQXEwfuGxjLUVbwyCn6aUNHNHmfeHql
 qZyzwThVLYFOxgPurqWqakRWbjkI/Cey+Tj1vB5YU2Zy6Bx7YauVHnaOFdW70LECDnyjF77nAqw
 kULhOD1acsCVnoou3uA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220094

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Kaanapali introduces DPU 13.0.0 and DSI 2.10. Compared to SM8750,
Kaanapali has significant register changes, making it incompatible
with SM8750. So add MDSS/MDP display subsystem for Qualcomm Kaanapali.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 .../display/msm/qcom,kaanapali-mdss.yaml      | 297 ++++++++++++++++++
 1 file changed, 297 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
new file mode 100644
index 000000000000..9f935defd6b1
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
@@ -0,0 +1,297 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/msm/qcom,kaanapali-mdss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Kaanapali Display MDSS
+
+maintainers:
+  - Yongxing Mou <yongxing.mou@oss.qualcomm.com>
+  - Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
+
+description:
+  Kaanapali MSM Mobile Display Subsystem(MDSS), which encapsulates sub-blocks
+  like DPU display controller, DSI and DP interfaces etc.
+
+$ref: /schemas/display/msm/mdss-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,kaanapali-mdss
+
+  clocks:
+    items:
+      - description: Display AHB
+      - description: Display hf AXI
+      - description: Display core
+      - description: Display AHB SWI
+
+  iommus:
+    maxItems: 1
+
+  interconnects:
+    items:
+      - description: Interconnect path from mdp0 port to the data bus
+      - description: Interconnect path from CPU to the reg bus
+
+  interconnect-names:
+    items:
+      - const: mdp0-mem
+      - const: cpu-cfg
+
+patternProperties:
+  "^display-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        const: qcom,kaanapali-dpu
+
+  "^dsi@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        contains:
+          const: qcom,kaanapali-dsi-ctrl
+
+  "^phy@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        const: qcom,kaanapali-dsi-phy-3nm
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/phy/phy-qcom-qmp.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    display-subsystem@9800000 {
+        compatible = "qcom,kaanapali-mdss";
+        reg = <0x09800000 0x1000>;
+        reg-names = "mdss";
+
+        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+
+        clocks = <&disp_cc_mdss_ahb_clk>,
+                 <&gcc_disp_hf_axi_clk>,
+                 <&disp_cc_mdss_mdp_clk>,
+                 <&disp_cc_mdss_ahb_swi_clk>;
+        resets = <&disp_cc_mdss_core_bcr>;
+
+        power-domains = <&mdss_gdsc>;
+
+        iommus = <&apps_smmu 0x800 0x2>;
+
+        interrupt-controller;
+        #interrupt-cells = <1>;
+
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        display-controller@9801000 {
+            compatible = "qcom,kaanapali-dpu";
+            reg = <0x09801000 0x1c8000>,
+                  <0x09b16000 0x3000>;
+            reg-names = "mdp",
+                        "vbif";
+
+            interrupts-extended = <&mdss 0>;
+
+            clocks = <&gcc_disp_hf_axi_clk>,
+                     <&disp_cc_mdss_ahb_clk>,
+                     <&disp_cc_mdss_mdp_lut_clk>,
+                     <&disp_cc_mdss_mdp_clk>,
+                     <&disp_cc_mdss_vsync_clk>;
+            clock-names = "nrt_bus",
+                          "iface",
+                          "lut",
+                          "core",
+                          "vsync";
+
+            assigned-clocks = <&disp_cc_mdss_vsync_clk>;
+            assigned-clock-rates = <19200000>;
+
+            operating-points-v2 = <&mdp_opp_table>;
+
+            power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    dpu_intf1_out: endpoint {
+                        remote-endpoint = <&mdss_dsi0_in>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    dpu_intf2_out: endpoint {
+                        remote-endpoint = <&mdss_dsi1_in>;
+                    };
+                };
+            };
+
+            mdp_opp_table: opp-table {
+                compatible = "operating-points-v2";
+
+                opp-156000000 {
+                    opp-hz = /bits/ 64 <156000000>;
+                    required-opps = <&rpmhpd_opp_low_svs_d1>;
+                };
+
+                opp-207000000 {
+                    opp-hz = /bits/ 64 <207000000>;
+                    required-opps = <&rpmhpd_opp_low_svs>;
+                };
+
+                opp-337000000 {
+                    opp-hz = /bits/ 64 <337000000>;
+                    required-opps = <&rpmhpd_opp_svs>;
+                };
+
+                opp-417000000 {
+                    opp-hz = /bits/ 64 <417000000>;
+                    required-opps = <&rpmhpd_opp_svs_l1>;
+                };
+
+                opp-532000000 {
+                    opp-hz = /bits/ 64 <532000000>;
+                    required-opps = <&rpmhpd_opp_nom>;
+                };
+
+                opp-600000000 {
+                    opp-hz = /bits/ 64 <600000000>;
+                    required-opps = <&rpmhpd_opp_nom_l1>;
+                };
+
+                opp-650000000 {
+                    opp-hz = /bits/ 64 <650000000>;
+                    required-opps = <&rpmhpd_opp_turbo>;
+                };
+            };
+        };
+
+        dsi@9ac0000 {
+            compatible = "qcom,kaanapali-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+            reg = <0x09ac0000 0x1000>;
+            reg-names = "dsi_ctrl";
+
+            interrupts-extended = <&mdss 4>;
+
+            clocks = <&disp_cc_mdss_byte0_clk>,
+                     <&disp_cc_mdss_byte0_intf_clk>,
+                     <&disp_cc_mdss_pclk0_clk>,
+                     <&disp_cc_mdss_esc0_clk>,
+                     <&disp_cc_mdss_ahb_clk>,
+                     <&gcc_disp_hf_axi_clk>,
+                     <&mdss_dsi0_phy 1>,
+                     <&mdss_dsi0_phy 0>,
+                     <&disp_cc_esync0_clk>,
+                     <&disp_cc_osc_clk>,
+                     <&disp_cc_mdss_byte0_clk_src>,
+                     <&disp_cc_mdss_pclk0_clk_src>;
+            clock-names = "byte",
+                          "byte_intf",
+                          "pixel",
+                          "core",
+                          "iface",
+                          "bus",
+                          "dsi_pll_pixel",
+                          "dsi_pll_byte",
+                          "esync",
+                          "osc",
+                          "byte_src",
+                          "pixel_src";
+
+            operating-points-v2 = <&mdss_dsi_opp_table>;
+
+            power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+            phys = <&mdss_dsi0_phy>;
+            phy-names = "dsi";
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    mdss_dsi0_in: endpoint {
+                        remote-endpoint = <&dpu_intf1_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    mdss_dsi0_out: endpoint {
+                        remote-endpoint = <&panel0_in>;
+                        data-lanes = <0 1 2 3>;
+                    };
+                };
+            };
+
+            mdss_dsi_opp_table: opp-table {
+                compatible = "operating-points-v2";
+
+                opp-187500000 {
+                    opp-hz = /bits/ 64 <187500000>;
+                    required-opps = <&rpmhpd_opp_low_svs_d1>;
+                };
+
+                opp-250000000 {
+                    opp-hz = /bits/ 64 <250000000>;
+                    required-opps = <&rpmhpd_opp_low_svs>;
+                };
+
+                opp-312500000 {
+                    opp-hz = /bits/ 64 <312500000>;
+                    required-opps = <&rpmhpd_opp_svs>;
+                };
+
+                opp-358000000 {
+                    opp-hz = /bits/ 64 <358000000>;
+                    required-opps = <&rpmhpd_opp_svs_l1>;
+                };
+            };
+        };
+
+        mdss_dsi0_phy: phy@9ac1000 {
+            compatible = "qcom,kaanapali-dsi-phy-3nm";
+            reg = <0x09ac1000 0x1cc>,
+                  <0x09ac1200 0x80>,
+                  <0x09ac1500 0x400>;
+            reg-names = "dsi_phy",
+                        "dsi_phy_lane",
+                        "dsi_pll";
+
+            clocks = <&disp_cc_mdss_ahb_clk>,
+                     <&rpmhcc RPMH_CXO_CLK>;
+            clock-names = "iface",
+                          "ref";
+
+            #clock-cells = <1>;
+            #phy-cells = <0>;
+        };
+    };
-- 
2.34.1


