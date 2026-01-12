Return-Path: <devicetree+bounces-253855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 27884D120C7
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:53:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E78053129A0B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3372E34B19F;
	Mon, 12 Jan 2026 10:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WRnwlfqa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZXXtvE3z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B9A34B435
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214903; cv=none; b=NExDZtylwOLn2qfnEL19m8ZkPErEjpUkwkkoCvtcGwJAoNGq0AKQoZAYrtnm2DYGmaVP3jVdiYASznIl/OpNa+Oseg/sEgkrbh3qetX2ZgVfEk+pkkNyNUre7xQN96QX0ay7YXb7ROWQGvOQH74zvmdGRBs3p/aRKxcSkc5D4XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214903; c=relaxed/simple;
	bh=fLcHXdKV5/hDu2wr6i98ZasPwufFwNkdfF36wyuIx94=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=W6IoA0CNFUJ2Hz8zYGmQNxJJsPRiL8sB/hTUXTo+Wx+Gd6DaN+XNroAKWLrruHT+8Xj0xPPgmhqfZq++EbMsR/ctI/6R/xwAyYQsLLpI3CbdzQJ2UzslS+PW7v4+Y9iQ622gTXkfN8on0dYwYIW9EJf+pi92WgylR5cEyvPTdKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WRnwlfqa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZXXtvE3z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C83jI23310523
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:48:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=cbpTgWXazdO
	AfAdL49uExcjxZu696DCuIHbDLPHFMMY=; b=WRnwlfqasDUl0BLuMVm86b2XjPM
	6kaRplcT105sFvfBokd0frHN5PrW/gmMukvVg8EFsXXAeOZpleYtC/y7R9MYBWYZ
	q7/HAZKAnDHGCtdcJrwsi0tit36M7yHwcKzoQjZPARpKvR29KOaep9Y6jN8l9wuA
	YgD1Tu9VRj6/Own1Ay2GVU7UR4ZB9+6yH6zXha72GABBQu7G+g25E/ofkZUMMWA5
	YiwBf5Dlq/dDQ4Uu894P7Uay2RAHw0Z21pTIBZKn+SeWhem0timiT5v+8j2y3281
	1n1yUa8rhypge0JBRyLZXE9G50tOCBjfObovfCrvNGCo+XBEZnMU4fdZ4YQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkntum1wr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:48:19 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81efa628efbso1500486b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768214899; x=1768819699; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cbpTgWXazdOAfAdL49uExcjxZu696DCuIHbDLPHFMMY=;
        b=ZXXtvE3zrS6Kg7UwhSnP2ksq8NANei+4UCEKTSRmZ51yZFcqNsYh5YUENbTBhBdUpx
         XEdPEhb+667o2LQUg/b9Z1SWgbTa+Opr7Pkg492vmqOsAowdA2qpyaqAL0FgMuz6fPEz
         0WDrICKfF+siEJr+55aJ/beBdmvnd9hWo8ngx4R6pJj6Hq5YZTNcQ/IXhX3wP44zhptq
         ClWm9vwlTl/1IYSEz/8mc4806GnAV2nuCWUXM3hKOpRh5KtZ0Qs/F68/iLiLiWXiWRk8
         oWt5U6c5sglqK3ssPQd/wnRgU0G+kp9v6U4rB0jNb6XbMm/zrriIeuAYXWlS7VxfUtCU
         2wzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768214899; x=1768819699;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cbpTgWXazdOAfAdL49uExcjxZu696DCuIHbDLPHFMMY=;
        b=O57NGsjo17F9UlDO6SaiiaPay6mojPAiAgoOkrIQRbrtqgcFU0KKyCDH7uNuz/8RXq
         86JVO83Rm+cgu3P2Ph7cKuvsEinmJkz36D2dYK9kcuXOhI6tx56OlLiKXcWdWKJESTlb
         nBdWuRLWX3wxFYgdoieYCQMwYoJq6TlWs04/XCPvRtfz0vVw9WtSpCiJw+RcapFYKLwJ
         5nS/f5/62Mz9z5HNklQwJ85OnuwfoF3hTkfHVlKQSSGw2+NCSsI91Sori62qQaXFDDwc
         4/8xqp/QRX8V4fuJVG/NL1/hukdEiFTBP65wE1NwJGTJ4PNCAANt1XnGF//hz+ZuRqbB
         m2RA==
X-Forwarded-Encrypted: i=1; AJvYcCWWAnczDtqeUYCRqPT084TFi7E+QJ5CHkUw1C2X+eOAoYkJtps7qxnlhW0dRX5Q4rvQVLMGJDZmBhAJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5NcF/LW4CM7bR4iaGBnBXl3bkPsQsnus6PDv+f181M3hoCLGa
	gWb6IUXAHL3CaS1n3PY/xnszBuzg9EHW8ZTrPSdXDAWj4bBgKmdQ04Hd06ZZJh2r7OVbiYLZW9L
	aWnu13GeDgDYVYl4lqcHcNfiYkpB+sbGkaGH4tUh3sAyA1ZOzqpJHMt/SzOsAUGJn
X-Gm-Gg: AY/fxX6EFOcRHA3YdfTVUr0pUE6qqrNP+cFQSBriIixJaKb8jXly8TMZDXFz3HFT7Wv
	ihkxwOsIJb3WL3RXMhqCNZIZcnlKkiihEDTwmGC2VGOwgfPovMTLNd9V11EsHKuajk+adwyw0Sn
	xSh7/rC8SVZW8TEQqg8kzcQzCLRSua/6qpXTnd2bUAzn4UFXVoQmp7eEJpm8QhbqLO3fZzLT7C/
	rQaC0xrsTd8JLJrYemLLUTS8VfoKSI50S88jXVryZg7YKgpVzMTwNip2hMrkkpYz+9M5md8ne2a
	g88G22OS7qwkSbe2y0LVaIpsi5E99BvXZ1A4TrQamCSEGKxioOFPgnBSRSVt9HvpCJE8gPHvX9v
	p3mbyEKGUO4ihxsjbzzMiXRPXRptxz0zpMd6Jy4hvUB0=
X-Received: by 2002:a05:6a00:1d8e:b0:81f:45a9:1a58 with SMTP id d2e1a72fcca58-81f45a91edbmr4163612b3a.23.1768214898962;
        Mon, 12 Jan 2026 02:48:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEJ3W1mhtnP81TT7rA8CaAxZF5ThR6whPQLnhdPJ6U4K+wELKglf5ayQHvoRKYCyXBHXXqZbA==
X-Received: by 2002:a05:6a00:1d8e:b0:81f:45a9:1a58 with SMTP id d2e1a72fcca58-81f45a91edbmr4163585b3a.23.1768214898405;
        Mon, 12 Jan 2026 02:48:18 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9b8dsm17288681b3a.22.2026.01.12.02.48.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 02:48:18 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Nikunj Kela <quic_nkela@quicinc.com>
Subject: [PATCH v3 07/12] dt-bindings: i2c: Describe SA8255p
Date: Mon, 12 Jan 2026 16:17:17 +0530
Message-Id: <20260112104722.591521-8-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4NSBTYWx0ZWRfXz7kSJXTx1Ax8
 O6RaM93m/QnjYWsvn+gfkXtrFVVm6OW1zPNFtkh9Jcx/PleCXkDysh34+p+XR1wwZExUts1LlGB
 sK1roUN2yKgP5nqW5JCZAGVj2EYzppSaYNB6Np48GP7xlwFl9XhIR60sPgiDBkOuMCjzEaH6YmC
 BhkUFMYs+WEwwMF+t6URnqHrcjkmMnVFQRugGRLC/2bf80VT1j+764pWJsyhrXOvmwIOPNw9YTu
 7SxgIt5zP5RLCHKJihe2OBK50VeO2swJkDsw3W/g4G43pDjk+1qK/y/qLvt1AeAAJkeKz4RmZSj
 r9DLoO2+Nps4ykIXYS0p7uG0cw31IhySiV0hm+LKYxpXkRt+R2lcIyAmx23/OLnWlUHbwCnqoNe
 cpu4fLJhhoXqJTg9nkdFNb+lQF/WYZ+1aFOvmOXG4DKePpTfYDilkSduejfS9XuXX+Xg8/Ui1g7
 2/1uNQ4mLTfqnDQOdUg==
X-Authority-Analysis: v=2.4 cv=R6AO2NRX c=1 sm=1 tr=0 ts=6964d173 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=apMzWF-kzHp83YoYYzAA:9
 a=2VI0MkxyNR6bbpdq8BZq:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: nwNP8qNHsXnKSvU7KvDUSw07Tyd7VoWi
X-Proofpoint-GUID: nwNP8qNHsXnKSvU7KvDUSw07Tyd7VoWi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120085

Add DT bindings for the QUP GENI I2C controller on sa8255p platforms.

SA8255p platform abstracts resources such as clocks, interconnect and
GPIO pins configuration in Firmware. SCMI power and perf protocol
are utilized to request resource configurations.

SA8255p platform does not require the Serial Engine (SE) common properties
as the SE firmware is loaded and managed by the TrustZone (TZ) secure
environment.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Co-developed-by: Nikunj Kela <quic_nkela@quicinc.com>
Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v2->v3:
- Added Reviewed-by tag

v1->v2:
Krzysztof:
- Added dma properties in example node
- Removed minItems from power-domains property
- Added in commit text about common property
---
 .../bindings/i2c/qcom,sa8255p-geni-i2c.yaml   | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml b/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml
new file mode 100644
index 000000000000..a61e40b5cbc1
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/qcom,sa8255p-geni-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SA8255p QUP GENI I2C Controller
+
+maintainers:
+  - Praveen Talari <praveen.talari@oss.qualcomm.com>
+
+properties:
+  compatible:
+    const: qcom,sa8255p-geni-i2c
+
+  reg:
+    maxItems: 1
+
+  dmas:
+    maxItems: 2
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 2
+
+  power-domain-names:
+    items:
+      - const: power
+      - const: perf
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - power-domains
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/dma/qcom-gpi.h>
+
+    i2c@a90000 {
+        compatible = "qcom,sa8255p-geni-i2c";
+        reg = <0xa90000 0x4000>;
+        interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
+        dmas = <&gpi_dma0 0 0 QCOM_GPI_I2C>,
+               <&gpi_dma0 1 0 QCOM_GPI_I2C>;
+        dma-names = "tx", "rx";
+        power-domains = <&scmi0_pd 0>, <&scmi0_dvfs 0>;
+        power-domain-names = "power", "perf";
+    };
+...
-- 
2.34.1


