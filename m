Return-Path: <devicetree+bounces-129074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A1E9EA9D4
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 08:43:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D21E2856C1
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 07:43:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F0622F3BE;
	Tue, 10 Dec 2024 07:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="GUyvy8CH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0C122F3AA;
	Tue, 10 Dec 2024 07:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733816564; cv=none; b=RbCNfWRe/CVOdcGBUL1VEkk372iKWPDPhyjgP6kVMqQk10FuLABHCAqb5ayTNtnqt/xQkljoA2H97oW/hz4QhbblWHxh8afoC0qBzIFM+PtNadL0+7J9qzUVbdNpFOpMuly5RDwfTkKKhM8rDD313021PyWmLLRXaBTy/qJhaEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733816564; c=relaxed/simple;
	bh=8NtJNMy57nu4ppcAwC/Li/0HIgkJuNQSFwUT23ibD3c=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gVDnFhQ5rtHjNY3zwHWRZIAC4BU7DpHpkjRHVgxShDwMX1QGQNzssgagkAFGsSW/JErDF8PS6J4oRUMB93EfytUz7ZFadWr22EnTljEIhyxTjgxG7ngg6xN8sn+ToOsr/tfhmVNdeTmXOn7sLyaYDtJ9T0LlFeSS4ybWb2qyF/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=GUyvy8CH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BA3oo3A014601;
	Tue, 10 Dec 2024 07:42:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O2beU6xLYbw6uBhM4FZjn9zdy6MEj8EtL0qikwxkY10=; b=GUyvy8CHuSMncO3t
	5YHnK3KokpCNtigzXIofQ3Ns+w5VHR7ErpR8EIxbDMEReHhakyZbpUTKmocSrcGa
	khQNzmp+fRwzchyiXw7RYcr4QV5mIe0SRuvWN/lvZcvzEe2XWmfBMH17aIF61W30
	J8gS3Z5zgGzsWQxjvWLHUrkYTHm2OwTDia7XW4yuUNDnD4L6LGTq37sUhDXDF6Ys
	540PA3phxqaynqiqyBOMdiZU32muaQval5SqI9Ior4qaMpCsfSqxMYG4fUwsVQ1T
	R8B52Oo+58WzK/kC2jnGT2aINb4Z8I5vv2GKwactZuTNF77R7KoOEiV5hu/b+XML
	BBwCcA==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ee3n8gk8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 10 Dec 2024 07:42:37 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BA7gaj5004295
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 10 Dec 2024 07:42:36 GMT
Received: from hu-rajkbhag-blr.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 9 Dec 2024 23:42:33 -0800
From: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
To: <ath12k@lists.infradead.org>
CC: <linux-wireless@vger.kernel.org>, Kalle Valo <kvalo@kernel.org>,
        "Rob
 Herring" <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "Conor
 Dooley" <conor+dt@kernel.org>,
        Jeff Johnson <jjohnson@kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>,
        "Raj Kumar
 Bhagat" <quic_rajkbhag@quicinc.com>
Subject: [PATCH v4 01/13] dt-bindings: net: wireless: describe the ath12k AHB module
Date: Tue, 10 Dec 2024 13:11:47 +0530
Message-ID: <20241210074159.2637933-2-quic_rajkbhag@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241210074159.2637933-1-quic_rajkbhag@quicinc.com>
References: <20241210074159.2637933-1-quic_rajkbhag@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: pmgm9wrKifvKRUuVYlAdp63VOXAL3fV9
X-Proofpoint-ORIG-GUID: pmgm9wrKifvKRUuVYlAdp63VOXAL3fV9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 malwarescore=0 spamscore=0 priorityscore=1501 mlxscore=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 clxscore=1015 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412100057

Add device-tree bindings for the ATH12K AHB module found in the IPQ5332
device.

Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
---
 .../net/wireless/qcom,ath12k-ahb.yaml         | 301 ++++++++++++++++++
 1 file changed, 301 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/wireless/qcom,ath12k-ahb.yaml

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-ahb.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-ahb.yaml
new file mode 100644
index 000000000000..314a73cebb11
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-ahb.yaml
@@ -0,0 +1,301 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/wireless/qcom,ath12k-ahb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies ath12k wireless devices (AHB)
+
+maintainers:
+  - Kalle Valo <kvalo@kernel.org>
+  - Jeff Johnson <jjohnson@kernel.org>
+
+description:
+  Qualcomm Technologies IEEE 802.11be AHB devices.
+
+properties:
+  compatible:
+    enum:
+      - qcom,ipq5332-wifi
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: XO clock used for copy engine
+
+  clock-names:
+    items:
+      - const: xo
+
+  interrupts:
+    items:
+      - description: Ready interrupt
+      - description: Spawn acknowledge interrupt
+      - description: Stop acknowledge interrupt
+      - description: misc-pulse1 interrupt events
+      - description: misc-latch interrupt events
+      - description: sw exception interrupt events
+      - description: interrupt event for ring CE0
+      - description: interrupt event for ring CE1
+      - description: interrupt event for ring CE2
+      - description: interrupt event for ring CE3
+      - description: interrupt event for ring CE4
+      - description: interrupt event for ring CE5
+      - description: interrupt event for ring CE6
+      - description: interrupt event for ring CE7
+      - description: interrupt event for ring CE8
+      - description: interrupt event for ring CE9
+      - description: interrupt event for ring CE10
+      - description: interrupt event for ring CE11
+      - description: interrupt event for ring host2wbm-desc-feed
+      - description: interrupt event for ring host2reo-re-injection
+      - description: interrupt event for ring host2reo-command
+      - description: interrupt event for ring host2rxdma-monitor-ring1
+      - description: interrupt event for ring reo2ost-exception
+      - description: interrupt event for ring wbm2host-rx-release
+      - description: interrupt event for ring reo2host-status
+      - description: interrupt event for ring reo2host-destination-ring4
+      - description: interrupt event for ring reo2host-destination-ring3
+      - description: interrupt event for ring reo2host-destination-ring2
+      - description: interrupt event for ring reo2host-destination-ring1
+      - description: interrupt event for ring rxdma2host-monitor-destination-mac3
+      - description: interrupt event for ring rxdma2host-monitor-destination-mac2
+      - description: interrupt event for ring rxdma2host-monitor-destination-mac1
+      - description: interrupt event for ring host2rxdma-host-buf-ring-mac3
+      - description: interrupt event for ring host2rxdma-host-buf-ring-mac2
+      - description: interrupt event for ring host2rxdma-host-buf-ring-mac1
+      - description: interrupt event for ring host2tcl-input-ring4
+      - description: interrupt event for ring host2tcl-input-ring3
+      - description: interrupt event for ring host2tcl-input-ring2
+      - description: interrupt event for ring host2tcl-input-ring1
+      - description: interrupt event for ring wbm2host-tx-completions-ring4
+      - description: interrupt event for ring wbm2host-tx-completions-ring3
+      - description: interrupt event for ring wbm2host-tx-completions-ring2
+      - description: interrupt event for ring wbm2host-tx-completions-ring1
+      - description: interrupt event for ring host2tx-monitor-ring1
+      - description: interrupt event for ring txmon2host-monitor-destination-mac3
+      - description: interrupt event for ring txmon2host-monitor-destination-mac2
+      - description: interrupt event for ring txmon2host-monitor-destination-mac1
+      - description: interrupt event for umac_reset
+
+  interrupt-names:
+    items:
+      - const: ready
+      - const: spawn
+      - const: stop-ack
+      - const: misc-pulse1
+      - const: misc-latch
+      - const: sw-exception
+      - const: ce0
+      - const: ce1
+      - const: ce2
+      - const: ce3
+      - const: ce4
+      - const: ce5
+      - const: ce6
+      - const: ce7
+      - const: ce8
+      - const: ce9
+      - const: ce10
+      - const: ce11
+      - const: host2wbm-desc-feed
+      - const: host2reo-re-injection
+      - const: host2reo-command
+      - const: host2rxdma-monitor-ring1
+      - const: reo2ost-exception
+      - const: wbm2host-rx-release
+      - const: reo2host-status
+      - const: reo2host-destination-ring4
+      - const: reo2host-destination-ring3
+      - const: reo2host-destination-ring2
+      - const: reo2host-destination-ring1
+      - const: rxdma2host-monitor-destination-mac3
+      - const: rxdma2host-monitor-destination-mac2
+      - const: rxdma2host-monitor-destination-mac1
+      - const: host2rxdma-host-buf-ring-mac3
+      - const: host2rxdma-host-buf-ring-mac2
+      - const: host2rxdma-host-buf-ring-mac1
+      - const: host2tcl-input-ring4
+      - const: host2tcl-input-ring3
+      - const: host2tcl-input-ring2
+      - const: host2tcl-input-ring1
+      - const: wbm2host-tx-completions-ring4
+      - const: wbm2host-tx-completions-ring3
+      - const: wbm2host-tx-completions-ring2
+      - const: wbm2host-tx-completions-ring1
+      - const: host2tx-monitor-ring1
+      - const: txmon2host-monitor-destination-mac3
+      - const: txmon2host-monitor-destination-mac2
+      - const: txmon2host-monitor-destination-mac1
+      - const: umac_reset
+
+  memory-region:
+    minItems: 1
+    maxItems: 2
+    description:
+      phandle to a node describing reserved memory (System RAM memory)
+      used by ath12k firmware (see bindings/reserved-memory/reserved-memory.txt)
+
+  qcom,ath12k-calibration-variant:
+    $ref: /schemas/types.yaml#/definitions/string
+    description:
+      String to uniquely identify variant of the calibration data for designs
+      with colliding bus and device ids
+
+  qcom,rproc:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the Qualcomm Hexagon DSP(q6 remote processor), which is utilized
+      for offloading WiFi processing tasks, this q6 remote processor operates in
+      conjunction with WiFi.
+
+  qcom,smem-states:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: States used by the AP to signal the remote processor
+    items:
+      - description: Shutdown WCSS pd
+      - description: Stop WCSS pd
+      - description: Spawn WCSS pd
+
+  qcom,smem-state-names:
+    description:
+      Names of the states used by the AP to signal the remote processor
+    items:
+      - const: shutdown
+      - const: stop
+      - const: spawn
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - memory-region
+  - qcom,rproc
+  - qcom,smem-states
+  - qcom,smem-state-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
+
+    wifi0: wifi@c0000000 {
+        compatible = "qcom,ipq5332-wifi";
+        reg = <0xc000000 0x1000000>;
+        clocks = <&gcc GCC_XO_CLK>;
+        clock-names = "xo";
+        interrupts-extended = <&wcss_smp2p_in 9 IRQ_TYPE_NONE>,
+                              <&wcss_smp2p_in 12 IRQ_TYPE_NONE>,
+                              <&wcss_smp2p_in 11 IRQ_TYPE_NONE>,
+                              <&intc GIC_SPI 559 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 560 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 561 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 422 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 423 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 424 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 425 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 426 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 427 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 428 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 429 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 430 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 432 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 433 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 491 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 495 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 493 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 544 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 497 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 454 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 453 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 452 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 451 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 488 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 488 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 484 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 554 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 554 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 549 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 507 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 500 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 499 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 498 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 450 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 449 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 447 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 543 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 486 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 486 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 482 IRQ_TYPE_EDGE_RISING>,
+                              <&intc GIC_SPI 419 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names = "ready",
+                          "spawn",
+                          "stop-ack",
+                          "misc-pulse1",
+                          "misc-latch",
+                          "sw-exception",
+                          "ce0",
+                          "ce1",
+                          "ce2",
+                          "ce3",
+                          "ce4",
+                          "ce5",
+                          "ce6",
+                          "ce7",
+                          "ce8",
+                          "ce9",
+                          "ce10",
+                          "ce11",
+                          "host2wbm-desc-feed",
+                          "host2reo-re-injection",
+                          "host2reo-command",
+                          "host2rxdma-monitor-ring1",
+                          "reo2ost-exception",
+                          "wbm2host-rx-release",
+                          "reo2host-status",
+                          "reo2host-destination-ring4",
+                          "reo2host-destination-ring3",
+                          "reo2host-destination-ring2",
+                          "reo2host-destination-ring1",
+                          "rxdma2host-monitor-destination-mac3",
+                          "rxdma2host-monitor-destination-mac2",
+                          "rxdma2host-monitor-destination-mac1",
+                          "host2rxdma-host-buf-ring-mac3",
+                          "host2rxdma-host-buf-ring-mac2",
+                          "host2rxdma-host-buf-ring-mac1",
+                          "host2tcl-input-ring4",
+                          "host2tcl-input-ring3",
+                          "host2tcl-input-ring2",
+                          "host2tcl-input-ring1",
+                          "wbm2host-tx-completions-ring4",
+                          "wbm2host-tx-completions-ring3",
+                          "wbm2host-tx-completions-ring2",
+                          "wbm2host-tx-completions-ring1",
+                          "host2tx-monitor-ring1",
+                          "txmon2host-monitor-destination-mac3",
+                          "txmon2host-monitor-destination-mac2",
+                          "txmon2host-monitor-destination-mac1",
+                          "umac_reset";
+
+        memory-region = <&q6_region>;
+        qcom,ath12k-calibration-variant = "RDP441_1";
+        qcom,rproc = <&q6v5_wcss>;
+        qcom,smem-states = <&wcss_smp2p_out 8>,
+                           <&wcss_smp2p_out 9>,
+                           <&wcss_smp2p_out 10>;
+        qcom,smem-state-names = "shutdown",
+                                "stop",
+                                "spawn";
+    };
-- 
2.34.1


