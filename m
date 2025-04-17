Return-Path: <devicetree+bounces-168043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E25FA913A1
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 08:13:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B55BA3AB669
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 06:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C0AA1F463D;
	Thu, 17 Apr 2025 06:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZobYbNbj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90671F416D
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744870382; cv=none; b=DKO7zLP2KEhymzKgtAQNE9Bw5oxYloeyoj4soIp1JATfXsgXkVvMcObfoFGFGWt8sYW4drAiWSq1ETLMIaYzzdRh/Gn8apmZ33664/l3sb8Hbm+Qfi/oM4YIEu+zMEtzXxA7pSgE50JXaM4XbXZFU4OEqHwET5CM50+6qgZAQ4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744870382; c=relaxed/simple;
	bh=1p1diytgG9lRxzOEmoiK1nlPCFvoZFd/BPcHAWFdEo4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=p1tg78WCdnwRdACyKAKVQ+y5u/IB/Oijov147xriO8toVMhFlNO8I9MtynpbcNiXVXF8Xod9APKCptuIBru3AvqiW6eUtymM4xKO/k0vNQHtD7gn8FlOxWfBdWJJcheJoffUxKpKee4GldqoB4TMkZ+6w6rrkxwOK/uU3KDriEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZobYbNbj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53H5l5hg009300
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:12:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=1IZRLfFjKDW
	92eRHhpflZgQvUdspCld+qX1R0YSFQOU=; b=ZobYbNbjBGFCEdIBngrfZr2ebVd
	hY2YgzVhLBhoax3kiCJ/NGskKH24y3lBfRJfW8Cf1JabBvY+7z49gl+Gjf4Ul6/j
	Dw1lb9OPSqNGuskd15Ur7ck+sntCBsapRE6heKxsCjIRTs5JdAsXouvNiTCLX9je
	rUkYFZMuCcdgvwwezumRZ75f0NBf77ZI1Eoxjnq03cjiRYuox1vUOJ6itOzQs6+H
	zVAiiNtjpSGlrKlDmxGf0pp48Opbi5Pslx8hO3E6GI6nYIGviOtlWdoxe5U6s7Aa
	9SlAbSDqM8xdB8NWcec3dbmD+mJ18+JvY+P6o7EPQBZkV0O43KuJk/dqOgA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4628rvb4aj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:12:58 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-22406ee0243so4084175ad.3
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 23:12:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744870378; x=1745475178;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1IZRLfFjKDW92eRHhpflZgQvUdspCld+qX1R0YSFQOU=;
        b=hstq8sSios0AeX3ypLN/BCfm9RjeWYEfZ+n4DnnohaioQipCk8WU71Dj3EEbDhuccr
         egutbtWwsEu1oAr8hNu5Pyv0HVnXS1gdSgCMfAI7Dd5elox9pq1zQCgdG9WrKEJfarPQ
         Irx/OYg7wKcgN4KyC2SvPgi77Lrbdv/s/CQm5p4L5mkeEHiHtQ5gJA4058d9nLJ7tGTP
         I9hoigTxS+dLAldu3hGpk7dHH5V57cus2Be+Wmz+lh6FwMy/SJn+OkCIHQrOP8spur6w
         m8hwhNUfuQ+Suf7MWW26O8U/dcVJQC+BE9ArLwa/njO3KAZsOy+urASn4cODmWJ3lv2s
         Worw==
X-Forwarded-Encrypted: i=1; AJvYcCWMOxz12eRkx9OxgBRczJAkIjrDLRHTetdnqzvEShHLDJfnziAhU8lXhAwIfxu99/H/Y4t8NcYXc3yt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6hSJctu6CFLDMUJCN+YF8OnRRRSYtNeGqjndWc9RVvh34xRXO
	ZUGAomiKELwLzPwuIDgXDBYHfLg6txgus+Y2W8ypNIsKKqmhH2XZXHQnrhp+T+Jsq1igFWcZgkl
	q9stoxGnBx8M1u9CobX0rSTCD8Ax8tuuiQCMrZj0swcEHvmZOjyLzJNFDQyTA
X-Gm-Gg: ASbGncuJ+dWKVfx2enEwq/3txONd8EUQsY+yauqLp13WGjxKE7iXu4ixa/4WZOcVBP9
	NhmRYJP9AGTsZ1lDNrSsa+n5TRK8vMq+xXJN+T0eHT5MUMW9CUwl3XgoC/WvLEcxnPdL/EuNGv6
	Qw2Gu2PAmv2iV7BWFIzqP5AMPvpO0NgiUd7BnPq2fZcLMcfiT/wBqYqHzgHCWyL+Rh99FU+Nnqx
	QBrBO3Akrxel6Ncs1yl+TW+bjigI4/WQttjOeGWXfm+2dAAp34Q1kj7md8pDpzUMAXUI6iJkFiO
	jHF20gBAtFftjxSKePOWTdjU/pqGQWB+8O/XzidABM3+GK2mkquaalSkwnLBfIEqtLbhDqfISB1
	kIcAxOP543czWW/FjupPy3WWel67cdXBPGSw=
X-Received: by 2002:a17:903:3c4e:b0:21f:768:cced with SMTP id d9443c01a7336-22c358c400emr68564125ad.8.1744870378185;
        Wed, 16 Apr 2025 23:12:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIJJkhcpG89NW5r+HC+CofmLa4rPO8CZtVpR9+Qd1WL32IVJWIUDpd6lvnc67aoJ3h3Oh8+w==
X-Received: by 2002:a17:903:3c4e:b0:21f:768:cced with SMTP id d9443c01a7336-22c358c400emr68563725ad.8.1744870377739;
        Wed, 16 Apr 2025 23:12:57 -0700 (PDT)
Received: from hu-gokulsri-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33fcee11sm25159725ad.191.2025.04.16.23.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 23:12:57 -0700 (PDT)
From: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com,
        gokul.sriram.p@oss.qualcomm.com
Subject: [PATCH V5 2/6] dt-bindings: remoteproc: qcom: document hexagon based WCSS secure PIL
Date: Thu, 17 Apr 2025 11:42:41 +0530
Message-Id: <20250417061245.497803-3-gokul.sriram.p@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: XCZbfdmLRTJ339GBuJak6RK9sxkJkj35
X-Authority-Analysis: v=2.4 cv=RbSQC0tv c=1 sm=1 tr=0 ts=68009beb cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=XR8D0OoHHMoA:10 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=KyOyj5vxXSmUoe1LuYMA:9 a=1OuFwYUASf3TG4hYMiVC:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: XCZbfdmLRTJ339GBuJak6RK9sxkJkj35
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-17_01,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 adultscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 mlxscore=0 lowpriorityscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504170046

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

Add new binding document for hexagon based WCSS secure PIL remoteproc.
IPQ5332, IPQ5424 and IPQ9574 follows secure PIL remoteproc.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
---
changes since v3:
	- fixed firmware extension from .mdt to .mbn
	- changed example to use IPQ5424 that uses mboxes for tmel mailbox.

 .../remoteproc/qcom,wcss-sec-pil.yaml         | 131 ++++++++++++++++++
 1 file changed, 131 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml
new file mode 100644
index 000000000000..f3680c61fa6c
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml
@@ -0,0 +1,131 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/remoteproc/qcom,wcss-sec-pil.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm WCSS Secure Peripheral Image Loader
+
+maintainers:
+  - Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
+
+description:
+  Wireless Connectivity Subsystem (WCSS) Secure Peripheral Image Loader loads
+  firmware and power up QDSP6 remoteproc on the Qualcomm IPQ series SoC.
+
+properties:
+  compatible:
+    enum:
+      - qcom,ipq5332-wcss-sec-pil
+      - qcom,ipq5424-wcss-sec-pil
+      - qcom,ipq9574-wcss-sec-pil
+
+  reg:
+    maxItems: 1
+
+  firmware-name:
+    maxItems: 1
+    description: Firmware name for the Hexagon core
+
+  interrupts:
+    items:
+      - description: Watchdog interrupt
+      - description: Fatal interrupt
+      - description: Ready interrupt
+      - description: Handover interrupt
+      - description: Stop acknowledge interrupt
+
+  interrupt-names:
+    items:
+      - const: wdog
+      - const: fatal
+      - const: ready
+      - const: handover
+      - const: stop-ack
+
+  clocks:
+    items:
+      - description: sleep clock
+
+  clock-names:
+    items:
+      - const: sleep
+
+  mboxes:
+    maxItems: 1
+    description: A phandle for the TMECom mailbox driver
+
+  qcom,smem-states:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: States used by the AP to signal the remote processor
+    items:
+      - description: Stop Q6
+      - description: Shutdown Q6
+
+  qcom,smem-state-names:
+    description:
+      Names of the states used by the AP to signal the remote processor
+    items:
+      - const: stop
+      - const: shutdown
+
+  memory-region:
+    items:
+      - description: Q6 reserved region
+
+  glink-edge:
+    $ref: /schemas/remoteproc/qcom,glink-edge.yaml#
+    description:
+      Qualcomm G-Link subnode which represents communication edge, channels
+      and devices related to the Modem.
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - firmware-name
+  - interrupts
+  - interrupt-names
+  - qcom,smem-states
+  - qcom,smem-state-names
+  - memory-region
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,ipq5424-gcc.h>
+    remoteproc@d100000 {
+      compatible = "qcom,ipq5424-wcss-sec-pil";
+      reg = <0x0d100000 0x4040>;
+      firmware-name = "ath12k/IPQ5424/hw1.0/q6_fw0.mbn";
+      interrupts-extended = <&intc GIC_SPI 508 IRQ_TYPE_EDGE_RISING>,
+                            <&wcss_smp2p_in 0 IRQ_TYPE_NONE>,
+                            <&wcss_smp2p_in 1 IRQ_TYPE_NONE>,
+                            <&wcss_smp2p_in 2 IRQ_TYPE_NONE>,
+                            <&wcss_smp2p_in 3 IRQ_TYPE_NONE>;
+      interrupt-names = "wdog",
+                        "fatal",
+                        "ready",
+                        "handover",
+                        "stop-ack";
+
+      clocks = <&gcc GCC_IM_SLEEP_CLK>;
+      clock-names = "sleep";
+
+      mboxes = <&tmel_qmp 0>;
+      qcom,smem-states = <&wcss_smp2p_out 1>,
+                         <&wcss_smp2p_out 0>;
+      qcom,smem-state-names = "stop",
+                              "shutdown";
+
+      memory-region = <&q6_region>;
+
+      glink-edge {
+        interrupts = <GIC_SPI 500 IRQ_TYPE_EDGE_RISING>;
+        label = "rtr";
+        qcom,remote-pid = <1>;
+        mboxes = <&apcs_glb 8>;
+      };
+    };
-- 
2.34.1


