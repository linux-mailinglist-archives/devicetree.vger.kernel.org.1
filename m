Return-Path: <devicetree+bounces-232550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6588BC18DE7
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:10:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B82F34FE075
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59C9A314D16;
	Wed, 29 Oct 2025 08:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VQLajDd6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GXHaIGqn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2EE311C36
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761725154; cv=none; b=iQS4K3QU8f8p3MiOqECVAXZmXU+1xMjCRsDisYYQLLBfbMe/CANSutMKjVRUvp05Tz7ex66eD0GvWzs/tVQddR8B6qzNuGfvkcxggDRvlo1kcDbQFbljxPKwLbegH7pXaug0yT/uZeYNpgwi9/UOz4o+sIShguOCST8EisnL81I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761725154; c=relaxed/simple;
	bh=qG8Px462pi8D1xm7m847bRTx1J9HM3N/XH7QFhMPMJ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XNVg4Hiq5A4PuZVnEqzzHEyju+j4RwJfNfbP5NwvSGn2FKWWNLJoWu7iTEMsUVQ1r/IZy0WGZqz1uOZZiTiFkpGMpM5sTfeELYJyc0QPa71BEWfWKEMuWb0UTGQHPcs2FBzflm0ZuVbs6FpEJohK6jf5tIkLgynNmwZ+DN4+GeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VQLajDd6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GXHaIGqn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4utgh3764283
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MEzud6d+24miB+oycic8odzPE+LUagpIZeXTQc4w4LY=; b=VQLajDd6YDP7ttaI
	3eiIGqKEGT5OPCv+mJuoD4BD0FbUeWY0TOSsOmKO5YmCuAu9nOYido7G263+K98t
	eeu8903wWh02ID4629ZGfj9WE7WavikPEGfABzAt23sXhT0L6S0CdNsUG6q9C8to
	aNkMo41n7mZxWM1ehJ7vYu65xpMoNKA7P4hsxmOFwYoAG20PItPNaghdx1NxTXzW
	vy2wSNW8WRMTQKe29CbOTTqHvUV4ieozRet9kPGSgOulN/vfhMC6Lpcl/dn+93YV
	YRv9UntRYR0buybKWQyhPeQ+1b3nNZIcsEA+w4WcJqj2TToOFr6NYgBQiQXubEUM
	xF0M3A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a11q3a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:50 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2909daa65f2so8272775ad.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761725150; x=1762329950; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MEzud6d+24miB+oycic8odzPE+LUagpIZeXTQc4w4LY=;
        b=GXHaIGqnLvafSlpIs4iUbVn7NjM529gJYJcJXWpHscq1r52HufJz8Ryo97ep9Xnrp1
         86R5MImOk78E2n2cl4WpaLzqxTIdQDawpSrR6Fi5EhB+GuDwcVubetrA0+miHhrc3q+p
         E6ketDPVnapDGSqaGWos1YYlfknjvqUFRcFSUPjKxaNuhRq9jYeyOsnC0YokncjQLAXZ
         RpqVDsakHMPkvaWi13ICzGn6rDxyGELYPjq9UJTKmamQ5KHQRWnfoE9ValOMMQCilC6N
         u++nUc1ZPt54p/PH8MPQIm/e5reBIJCWeqwP37d2POwKkcZiEYWih5w/vDNh+A7KNU4d
         NnMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761725150; x=1762329950;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MEzud6d+24miB+oycic8odzPE+LUagpIZeXTQc4w4LY=;
        b=U3OZRP30Z3uJw9atKc3sEfSz1AVk75sJHbT4wwJ0P3VJbXbm/U3UwxqRqLaqSbiOza
         jpyQr0fCAG4sF/ioAHSC4ww52Vf95gtPIcxphQHHCGp1pd87B6Nac8u3ke/taz+YsiwY
         D1tIHlYYje1kNjirZA0UdtRSdQcHHSAEQ8jSXp9Zb9rVsJbYeod7QmArVqsjh/EBnoUs
         woHm7ZlG7KdLsTLIM6k7yLEhByaAD2c/4jWyKEcD8ILN7Wo9vuBbpaVMhgh7JwYnZ4tK
         XxZoqvrqavVbTsVJMC4uG36rRmyDleocGGTfsU0vv6xqusfDTtgfa+Gp3KS27zMdkzM5
         J41A==
X-Forwarded-Encrypted: i=1; AJvYcCWZkiujjUkwNlb5tCqoF4RjjUdWLvutA4SWQj6K30nmCTEurHAcd+dtEUxvkEpxgbaI18ouqkCtbUsp@vger.kernel.org
X-Gm-Message-State: AOJu0YyAZDMa5kzuBCttDJVdEckN5AFVSToJ+aSqzfOheTMAkv2HFDsf
	ifyFKB6XgCcK9Aipcu4oItAeb2e8W5DCxIIcLhtefGIk84gos2zMas/JXdWba7szO9VPNtkKRyP
	DGaEyaXPhACCKjAvhQZsZIWsJCUIRHKpCVACTMnI2l8ZMOA8aAQONz8g2TppunQ+9
X-Gm-Gg: ASbGncsDtYo34ZyZyKIBqc+CDaZvyvggOJ/hP9HmZY+sbNlQmrTl+LmGWwRii3ZOa5g
	1M0jup04it78gSs8+tnr8VY75wf3KPXx5E5RmPJdN3QbuWSYgb9EDPd1NB70FgRsLqRJ6bj5+S7
	pNMG4TekRO1s9px0PH9QtfpGmFozj8tcQz+yunXRNNodrPnFIh1OmRVRUYolRUbpB+MJqjkU2W2
	8MQ/bcy4AXh7/gp6jkivITXNY65Yudfrbw7XVeEyOtORUMWzXlFOB7UjuXjDWL+3/EVtfUMYXdW
	ZQeOQdHWzEPbNIPS2/iND5FwZ8P3QJCBXO3LvBFm5q4EqYu+VjCKYpSph/wSZ4VL87tklSrlOyo
	hhq8eT3JrCp34pIkUh/g5p9EB4yKRNJXO5Hd2upVDJPlGA9ce0A==
X-Received: by 2002:a17:903:38c7:b0:25d:510:622c with SMTP id d9443c01a7336-294dec55dedmr25087235ad.28.1761725149649;
        Wed, 29 Oct 2025 01:05:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1h9VyNYFKsW3SdER0jTE51bvlWsilQKQ7k2ZMC1Fu2p3IoJPMrmarrPnim2LRDDTu8v79fw==
X-Received: by 2002:a17:903:38c7:b0:25d:510:622c with SMTP id d9443c01a7336-294dec55dedmr25086725ad.28.1761725149019;
        Wed, 29 Oct 2025 01:05:49 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498f0be0esm141754705ad.96.2025.10.29.01.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:05:48 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 01:05:41 -0700
Subject: [PATCH v2 3/7] dt-bindings: remoteproc: qcom,pas: Document pas for
 SoCCP on Kaanapali and Glymur platforms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-knp-remoteproc-v2-3-6c81993b52ea@oss.qualcomm.com>
References: <20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com>
In-Reply-To: <20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761725143; l=8744;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=qG8Px462pi8D1xm7m847bRTx1J9HM3N/XH7QFhMPMJ8=;
 b=Pzm3RdAFAhrmpkuKTIL8LFd81hMBua1H2VkVyFflrZgXSQH3KE1b2YN7Z/1+FPaCvx/o5EfQC
 Payvy+FpWYwAsQKn/v8YgCfPa1Osib9aHSqd1/3mxB9gjUR80f0j3qr
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: tjFxCsuNy3pT51o8052QNhVFkDernHDq
X-Proofpoint-ORIG-GUID: tjFxCsuNy3pT51o8052QNhVFkDernHDq
X-Authority-Analysis: v=2.4 cv=A5dh/qWG c=1 sm=1 tr=0 ts=6901cade cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=nqtFTnZwU29f_90lC4EA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA1OCBTYWx0ZWRfXz8L2CLZ4W35K
 bARjXM0Hq3txPJwgIIcaRz6dlxVe9DLHDNZ5bizKp5a66jehU5pgp6m8ZfcJOuHm4W2R6zDPxDE
 x26aBBW70gzCs7xbBv+0/CRmDGbHSMzSZTgxzKr9oWgiyVqxpgQxZKxGwTVYk1DI1u6HNNucEGx
 FNkRqjhXwGFJ7405VkX5yyF7O4MXJe7ErFXQdlGBb0z3gE8XNmeVb3PyhrUZ6gvTnzgmRxn4D9d
 axOWNlkH8Akh/JHCG7fViL2T/jTPCCCnVyRrNF8YN2pOI4i52a98YZKYfRSd8FcAP38DiH1cqRw
 klobWnVCWLOCTMzZxBUe4HUgsPTDXY6EtyccsH9vv7lN41AgH/R/R2VMa7aq8feD1+QBMvy50KZ
 40dgclYdyuBMtog6JGxLYjfy+jhXXA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290058

Document the component used to boot SoCCP on Kaanapali SoC and add
compatible for Glymur SoCCP which could fallback to Kaanapali. Extend
the "qcom,smem-states" and "qcom,smem-state-names" properties and
add conditions for the "interrupts" and "interrupt-names" properties
in the pas-common.

Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../remoteproc/qcom,kaanapali-soccp-pas.yaml       | 134 +++++++++++++++++++++
 .../bindings/remoteproc/qcom,pas-common.yaml       |  83 +++++++++----
 2 files changed, 194 insertions(+), 23 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml
new file mode 100644
index 000000000000..6b53121eede1
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml
@@ -0,0 +1,134 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/remoteproc/qcom,kaanapali-soccp-pas.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Kaanapali SoCCP Peripheral Authentication Service
+
+maintainers:
+  - Jingyi Wang <jingyi.wang@oss.qualcomm.com>
+
+description:
+  The SoC Control Processor (SoCCP) is small RISC-V MCU that controls USB
+  Type-C, battery charging and various other functions on Qualcomm SoCs, somewhat
+  analogous to traditional PC Embedded Controllers. This document describes
+  the Peripheral Authentication Service loads and boots firmware for SoCCP.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-soccp-pas
+          - const: qcom,kaanapali-soccp-pas
+      - enum:
+          - qcom,kaanapali-soccp-pas
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: XO clock
+
+  clock-names:
+    items:
+      - const: xo
+
+  power-domains:
+    items:
+      - description: CX power domain
+      - description: MX power domain
+
+  power-domain-names:
+    items:
+      - const: cx
+      - const: mx
+
+  firmware-name:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    items:
+      - description: Firmware name of the Hexagon core
+      - description: Firmware name of the Hexagon Devicetree
+
+  memory-region:
+    items:
+      - description: Memory region for main Firmware authentication
+      - description: Memory region for Devicetree Firmware authentication
+
+required:
+  - compatible
+  - reg
+  - memory-region
+  - power-domains
+  - power-domain-names
+
+allOf:
+  - $ref: /schemas/remoteproc/qcom,pas-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/mailbox/qcom-ipcc.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    remoteproc@d00000 {
+        compatible = "qcom,kaanapali-soccp-pas";
+        reg = <0x00d00000 0x200000>;
+
+        clocks = <&rpmhcc RPMH_CXO_CLK>;
+        clock-names = "xo";
+
+        interrupts-extended = <&intc GIC_SPI 167 IRQ_TYPE_EDGE_RISING>,
+                              <&soccp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+                              <&soccp_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
+                              <&soccp_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
+                              <&soccp_smp2p_in 3 IRQ_TYPE_EDGE_RISING>,
+                              <&soccp_smp2p_in 9 IRQ_TYPE_EDGE_RISING>,
+                              <&soccp_smp2p_in 10 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names = "wdog",
+                          "fatal",
+                          "ready",
+                          "handover",
+                          "stop-ack",
+                          "pong",
+                          "wake-ack";
+
+        memory-region = <&soccp_mem>,
+                        <&soccp_dtb_mem_mem>;
+
+        firmware-name = "qcom/kaanapali/soccp.mbn",
+                        "qcom/kaanapali/soccp_dtb.mbn";
+
+        power-domains = <&rpmhpd RPMHPD_CX>,
+                        <&rpmhpd RPMHPD_MX>;
+        power-domain-names = "cx",
+                             "mx";
+
+        qcom,smem-states = <&soccp_smp2p_out 0>,
+                           <&soccp_smp2p_out 10>,
+                           <&soccp_smp2p_out 9>,
+                           <&soccp_smp2p_out 8>;
+        qcom,smem-state-names = "stop",
+                                "wakeup",
+                                "sleep",
+                                "ping";
+
+        glink-edge {
+            interrupts-extended = <&ipcc IPCC_MPROC_SOCCP
+                                         IPCC_MPROC_SIGNAL_GLINK_QMP
+                                         IRQ_TYPE_EDGE_RISING>;
+            mboxes = <&ipcc IPCC_MPROC_SOCCP
+                            IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+            label = "soccp";
+            qcom,remote-pid = <19>;
+
+            /* ... */
+        };
+    };
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
index 63a82e7a8bf8..f81d088c2bad 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
@@ -24,26 +24,6 @@ properties:
   interconnects:
     maxItems: 1
 
-  interrupts:
-    minItems: 5
-    items:
-      - description: Watchdog interrupt
-      - description: Fatal interrupt
-      - description: Ready interrupt
-      - description: Handover interrupt
-      - description: Stop acknowledge interrupt
-      - description: Shutdown acknowledge interrupt
-
-  interrupt-names:
-    minItems: 5
-    items:
-      - const: wdog
-      - const: fatal
-      - const: ready
-      - const: handover
-      - const: stop-ack
-      - const: shutdown-ack
-
   power-domains:
     minItems: 1
     maxItems: 3
@@ -55,13 +35,21 @@ properties:
   qcom,smem-states:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     description: States used by the AP to signal the Hexagon core
+    minItems: 1
     items:
-      - description: Stop the modem
+      - description: Stop the remoteproc
+      - description: Wake up the remoteproc
+      - description: Make the remoteproc sleep
+      - description: Ping the remoteproc
 
   qcom,smem-state-names:
     description: The names of the state bits used for SMP2P output
+    minItems: 1
     items:
       - const: stop
+      - const: wakeup
+      - const: sleep
+      - const: ping
 
   smd-edge:
     $ref: /schemas/remoteproc/qcom,smd-edge.yaml#
@@ -80,9 +68,58 @@ properties:
 required:
   - clocks
   - clock-names
-  - interrupts
-  - interrupt-names
   - qcom,smem-states
   - qcom,smem-state-names
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,kaanapali-soccp-pas
+    then:
+      properties:
+        interrupts:
+          items:
+            - description: Watchdog interrupt
+            - description: Fatal interrupt
+            - description: Ready interrupt
+            - description: Handover interrupt
+            - description: Stop acknowledge interrupt
+            - description: Pong interrupt
+            - description: Wake acknowledge interrupt
+
+        interrupt-names:
+          items:
+            - const: wdog
+            - const: fatal
+            - const: ready
+            - const: handover
+            - const: stop-ack
+            - const: pong
+            - const: wake-ack
+
+    else:
+      properties:
+        interrupts:
+          minItems: 5
+          items:
+            - description: Watchdog interrupt
+            - description: Fatal interrupt
+            - description: Ready interrupt
+            - description: Handover interrupt
+            - description: Stop acknowledge interrupt
+            - description: Shutdown acknowledge interrupt
+
+        interrupt-names:
+          minItems: 5
+          items:
+            - const: wdog
+            - const: fatal
+            - const: ready
+            - const: handover
+            - const: stop-ack
+            - const: shutdown-ack
+
 additionalProperties: true

-- 
2.25.1


