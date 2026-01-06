Return-Path: <devicetree+bounces-251882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9AACF7EE3
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 12:00:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF41B30C9E68
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 10:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B430232C31A;
	Tue,  6 Jan 2026 10:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I6HF5YrI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FTrjlpy1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1DD32B9AC
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 10:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767696870; cv=none; b=htghL6xCG69ahXDnz9BfXaPvIb1wLRHiXLx2Axge3aZ599SJfALD8+f2f7LdLbQ+Upp/omz/02tn6Crq52y1ZyN+OJczLwJj9HPFbIN6F6Z2RdIal0LDgcdVH2AphvKbn2meaanf31xNdktV2Xen9SbERXiYDH98IxOyPtXYZaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767696870; c=relaxed/simple;
	bh=ChSwLgMXBYfRLl5iNYXOyxGFwIfm6Ww5klpEKyxtFXw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Cv8cFcZvhlBWUWkQ5GYrabvR08gZMn+eNKZ27k2LJSlBNyrz58zD7tZwIOoWe+/8rscHs1nKBsfCFfmSWY9eJpNZoVU23j+hrT6pK5/AS+Rc7XOqFiKIOGH/pEGkUqjKTLN3KSX7GrcygslGZUA0k3ee3J4qbFzsw+fTRShGOFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I6HF5YrI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FTrjlpy1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QSs73272106
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 10:54:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=COr/MJqZagV
	MC+bxYO8mSr6+tsNCpFgwipMOHKn6q5Q=; b=I6HF5YrIHKk2maaaMPg0N49Fx3Z
	oRcEJeEBPxzS6YjqkGg9oJAK92IWgoPmvNwV81jzftVvjxuI5mmie6eL4z5O5FKh
	6oWTCgjMCrtriX+Un0dSFrhVhlqi25oUKTu1AtFWYz95xRB4hKhF690NY39jLpvm
	h+dJ0yzdgxw0SkYuH3Zg2vyt3R3z5U0mkwq26BbGL35BpXTleYZ9KXkU3noF2Gw2
	dZagPap0VRyq4kHYocDHg0yNUY8P8P3aCAaCiRGdmyTVWuZEf66D32qP+6eBmTpd
	jV7q1lmBY6HxtvymtNiLUYGRhRz9aV7+jvy5wCN1ID/l2DYqHxmV+KjTCHg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgfv030qf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:54:27 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b9c91b814cso2612342b3a.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 02:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767696867; x=1768301667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=COr/MJqZagVMC+bxYO8mSr6+tsNCpFgwipMOHKn6q5Q=;
        b=FTrjlpy1JKcEqcEwihvXDXaBbB4tNKaE9hdSgSvV2unBeNE0IoHw1p7DnCF9dfkcos
         tiZLUdMPvU23z+it+ujXUYueyM5X11cOCnQ2LldythuIFS3iIJcBQDJ1K7TVPfUt1UQl
         iga2skUF6L8w4oZILSoqdymOUA6EOEFZDVKonQpZn7QkJ36sqvqX/nJwM6BKS7h9fTcA
         4yL7IqN1m51Zqn3CrFiApRvICPg95kaI8MlXhtJ3WZCW5gU9exnJsCayB5yon/RhoVqu
         3eF5xLADmCMnO+HqX8Qs/Ho2ltpN1Rjqs1CC688MUaNaDUpxMvUvmGHGTd/Zjd70I0sU
         vIXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767696867; x=1768301667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=COr/MJqZagVMC+bxYO8mSr6+tsNCpFgwipMOHKn6q5Q=;
        b=wGHV3W5dywARaiYyHrB7PFnzr0l1o+5pFEpnyweuG7YbOGvOspEtcVHPqBRRiayETP
         VwsqHexX0R8g2+CFiRF7mLuVVlkHyZTmQCIfOA/WWgClhceffHcyKgayMmYgNfTqemWT
         VG+xarzlmaNCXTA1ALiXiAwSuyn65yIDdY0POw0uLoyPzZqMNCkvyfkEDeEm+SjiDSIk
         aK1TxaPXIQ1CRMbXwhR3an2W4tZVNFRuRpT9ckz6iXKztpaMdNzNryGdm0vXTt9FVCUH
         E7lKvXMhRBHZXoDAaMHcVxI61qA5ksPxbJXcj04z3DxvuHg1MjRF1Brpj8iyWBM+YxgR
         0pqA==
X-Forwarded-Encrypted: i=1; AJvYcCUD9ONKPrm6ycQ+RJUXOSMzY4/Ooituk6f8K5OmrhVAV0t+z9A7EkwAg51rhG/a4WFlFsdInCd35iAg@vger.kernel.org
X-Gm-Message-State: AOJu0YwDsDhCKyN3BqMPeXDdZRZERzWI7zXLnGA7M590w+Qain9XMIf1
	2Fq/h/8FJEVOIF24VDlKBDKU7J8v14ppHjOIN983Zud3noXoB6El4djEEZuv1oCQfJYEufNT3y4
	CxXDzEmBfYaDYy51eL+gY9hzhAwPDE9sc31HQ5GtmDUxdWUHXoox+W541RMu62IDFkVzvtYlS
X-Gm-Gg: AY/fxX7WorxK9nWCBvJZOVDrJkfxWWqOO+mQM1NSGFWgaREe85hIweIJLTGkbeDEiyH
	cH6CyN0GU6Rtw8/ZayjJ1c/AOEU2YN7XFLxeV5MxGef0Rm4g6gQes/ZFW87oxwQuD2rZw8gvbYd
	NadOcq2GTRGjOTKeRsvb02uf+jmRhHwK4h0guCYzoJy7uSqfPECxrdNFXd7NcexNcAxVvAfrz1x
	1hJPQDZzK/cagRFC2KrwbpAb5aKcaFu40+wBB4vlLE0qsneDVsWaMNl889fhm7N5DgsWg+6rZS5
	iJLlHQv7Cvh/dHiOxd7FnqjWYUouFVnvn7vp23g3xo1cevZUYNXTIURfkW18kdn2r/NCXLNgQEb
	uOTES83maJC/qnrfCSC3YfkHHeUSDS5BEfM+oopMqlbtaJlBQPneiWIFMjieGafMoqBYiAHwP0W
	cdZB+aPCpC9PKLCGgStPN2MbJ+fYX1HRyMZZQlntc=
X-Received: by 2002:a05:6a00:1c90:b0:7b7:c078:9f7b with SMTP id d2e1a72fcca58-81881735feemr2145572b3a.18.1767696867232;
        Tue, 06 Jan 2026 02:54:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZyQDIZJkq3l8819HSZ1iJrsKAC1ryaWLNSO/JatOlYphE+zj+w6/qVbNELkpdsmVGzAJPrg==
X-Received: by 2002:a05:6a00:1c90:b0:7b7:c078:9f7b with SMTP id d2e1a72fcca58-81881735feemr2145554b3a.18.1767696866755;
        Tue, 06 Jan 2026 02:54:26 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9b98sm1855121b3a.20.2026.01.06.02.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:54:26 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>,
        George Moussalem <george.moussalem@outlook.com>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v9 2/6] dt-bindings: remoteproc: qcom: document hexagon based WCSS secure PIL
Date: Tue,  6 Jan 2026 16:24:08 +0530
Message-Id: <20260106105412.3529898-3-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106105412.3529898-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260106105412.3529898-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=e9YLiKp/ c=1 sm=1 tr=0 ts=695ce9e4 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8
 a=OjzMc1mEqFcyLvt0PQQA:9 a=OpyuDcXvxspvyRM73sMx:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: dzQd8tdUjfTmyrEQyTVOhUrUad6vHOQv
X-Proofpoint-ORIG-GUID: dzQd8tdUjfTmyrEQyTVOhUrUad6vHOQv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA5MyBTYWx0ZWRfX6IyEzqb718vz
 SEIfpZiE/iP57zO53vVNsi3012QliXNcXHm+3NMte91g8slxhBOLcdsfcdThgCHRUyja2EQOjtT
 9fXti8iYMaMDWe7TtpgEco1jeDSYl4aDFPHHouwmAhBUhdkGw/lBNU1X9owxjZBykp4pPtUY+vp
 +KrbWOAGdGMWbsYUgyvIgF+WbbDm3h1vgdAo7L1HNN7izlLn04knRYjBu8OadvMKbjBKIdBvj7W
 CbGu44lfeQv2SZUQk5ywpYgp/b+3ukyxrKcH7CXweP12WVchNfXd3qZ5mzYwNZtnYZ6uAtxtu1u
 Vw/Ttz5UpViLpWlKAD8z5YfF/O0J2/Kg2sT3f9IZB2HMsp6PUE8UPJNEID8ExHKsh1JfA+JBOOg
 AgHLa7s1OwQtlJ07MXee7RKkCiR1i3MV7vI8JXeAAFgSqIjBxdrNouk2yztH9kUi/umufw/XNW+
 QlOhlSEx3ezauPjEbYQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060093

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

Add new binding document for hexagon based WCSS secure PIL remoteproc.
IPQ5018, IPQ5332 and IPQ9574 follow secure PIL remoteproc.

Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
[ Dropped ipq5424 support ]
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v9: Rename qcom,wcss-sec-pil.yaml -> qcom,ipq5018-wcss-sec-pil.yaml
    Fix 'clocks' and 'clock-names' definitions

v8: Dropped Krzysztof's 'Reviewed-by' as the bindings file has changed significantly
    Drop ipq5424 support
    Update example to ipq9574 instead of ipq5424
    Change 'mboxes' description
---
 .../remoteproc/qcom,ipq5018-wcss-sec-pil.yaml | 178 ++++++++++++++++++
 1 file changed, 178 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,ipq5018-wcss-sec-pil.yaml

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,ipq5018-wcss-sec-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,ipq5018-wcss-sec-pil.yaml
new file mode 100644
index 000000000000..a73edb447d26
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,ipq5018-wcss-sec-pil.yaml
@@ -0,0 +1,178 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/remoteproc/qcom,ipq5018-wcss-sec-pil.yaml#
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
+      - qcom,ipq5018-wcss-sec-pil
+      - qcom,ipq5332-wcss-sec-pil
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
+    minItems: 1
+    items:
+      - description: sleep clock
+      - description: AHB interconnect clock
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: sleep
+      - const: interconnect
+
+  mboxes:
+    items:
+      - description: TMECom mailbox driver
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
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,ipq5018-wcss-sec-pil
+    then:
+      properties:
+        clocks:
+          items:
+            - description: sleep clock
+            - description: AHB interconnect clock
+        clock-names:
+          items:
+            - const: sleep
+            - const: interconnect
+      required:
+        - clocks
+        - clock-names
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,ipq5332-wcss-sec-pil
+    then:
+      properties:
+        clocks:
+          items:
+            - description: sleep clock
+        clock-names:
+          items:
+            - const: sleep
+      required:
+        - clocks
+        - clock-names
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq9574-wcss-sec-pil
+    then:
+      properties:
+        clocks: false
+        clock-names: false
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    q6v5_wcss: remoteproc@cd00000 {
+        compatible = "qcom,ipq9574-wcss-sec-pil";
+        reg = <0x0cd00000 0x10000>;
+        firmware-name = "ath11k/IPQ9574/hw1.0/q6_fw.mbn";
+        interrupts-extended = <&intc GIC_SPI 325 IRQ_TYPE_EDGE_RISING>,
+                              <&smp2p_wcss_in 0 IRQ_TYPE_NONE>,
+                              <&smp2p_wcss_in 1 IRQ_TYPE_NONE>,
+                              <&smp2p_wcss_in 2 IRQ_TYPE_NONE>,
+                              <&smp2p_wcss_in 3 IRQ_TYPE_NONE>;
+        interrupt-names = "wdog",
+                          "fatal",
+                          "ready",
+                          "handover",
+                          "stop-ack";
+
+        qcom,smem-states = <&smp2p_wcss_out 1>,
+                           <&smp2p_wcss_out 0>;
+        qcom,smem-state-names = "stop",
+                                "shutdown";
+        memory-region = <&q6_region>;
+
+        glink-edge {
+            interrupts = <GIC_SPI 321 IRQ_TYPE_EDGE_RISING>;
+            label = "rtr";
+            qcom,remote-pid = <1>;
+            mboxes = <&apcs_glb 8>;
+        };
+    };
-- 
2.34.1


