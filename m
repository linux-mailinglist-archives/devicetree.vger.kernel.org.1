Return-Path: <devicetree+bounces-165105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEEFA835C6
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 03:34:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F144E8A3E7B
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 01:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6964E1C700D;
	Thu, 10 Apr 2025 01:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MujjNCly"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5D6194C96
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744248838; cv=none; b=BuoDumuSVr4EXk/kUavT+gquB/w7D8U0+v2zPZ1GmxHE/GaYaDvFkTNe3vpa4klReYsLCA0Gvu1Ze4IZ6eFF8DKdZ5fLl+OeU1vD3VrVFY9Z0hFU6eBwIdCHvrQI9wPVTtISbaBNbt3szaqhOGDxGZmMglJ3SourOGrZioNy//k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744248838; c=relaxed/simple;
	bh=PrUMNo5SPEzfWWLHwfsN4d17GRbjcu9M1TZEgNW9Wvw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=X15mMzpHtAaT4KVRfE3o4jvxbRj9ZOKF3tWahmEazog9qmS0zdyhQrcyTchGg0gELgBjdQRRAsxaVfIq0sI5Ol9f3alUiJB6ehHhZziKtUiaNDRyTKitemv9B1hUPaT+UU5N0TVCVnWHvJp21HjkHYZx9VyHm8cRZLDgTsJa8gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MujjNCly; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539H8Flx026650
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:33:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Q5C8avXIxcx
	6eZTU/R7g1j6DX3AayD2O7YvtYRznlQ4=; b=MujjNClyaI06HBsPxeKNYGbeSll
	rq9Bz9OOS8XGeaWhIDYUqMAtR9YPCPsqG2HSKlv1YFChTU6+xx/u5eL1TCit9Ecl
	4hyoo0qNfv78fXQVbqEI5sLurarUPTmWVqmFj8AqoKtXmjbMwGizIDCxLf+nGvf0
	xtk4+OqAtT55MGoggMnm3xSocUOIyhbv54XMQ8vdkR1wDppKNi4y54Y+zJ0KrI5e
	nLxv8KIvs5tqqnHim5U4lOehFREFqIe7POTEvxJmh5Q07TpY0dU6duG7JuIVXkOi
	PaTgDJI10crIWnMa2XhzpnN12ixwqwsPwuI5FDNhhxJkgP/igia3UxSzLMg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twdgnaks-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:33:55 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-229668c8659so2144915ad.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 18:33:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744248834; x=1744853634;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q5C8avXIxcx6eZTU/R7g1j6DX3AayD2O7YvtYRznlQ4=;
        b=bmFfVQ6RMDzvHSnks3XbnuZdSRIZtb68njXbQVzBL7rjZk2u3Xrb1F3c39BAroE58R
         eXKxQ11t7DGeWCJeecCOfRdsqc1hrbbYtMh/H4egO4WOwgy5Jjxp4X/cdw56OQLDKcYt
         yXOW/90jUXeDuwFjD8QxgUE2RWNdzYFD88tNnqMCj00iD570hhiH35/RPg8K/D8bwz4r
         de9x33mc1o/EH8zIDaxplKYBXk8b42o8yW1yy6iduwBu9Z/OJAosdrFgydWGnvkc2VyJ
         1VR6Tpmh4Cel5H8WFKkhH4hH94RihSLcTxCn30Ng2BZ8r4wfWog9m+yrl7+vAqMnphCY
         b/8w==
X-Forwarded-Encrypted: i=1; AJvYcCWPv2YE6NxOXzUWzgk4fznGbDrUn0Fm+CyZBXtmYHmqEIjZuhcGCAFqcBDHNNcHW1orB3FAgRQN63eu@vger.kernel.org
X-Gm-Message-State: AOJu0YxrbVRm8E7fwrCke0gkg296YTXkGY6jS71x/EKcpw+ZmKoe/OBb
	IJvNwMJF5HCm73y/vbkQH144ARGP4fbDB4njxoGNCGKDZbSgt14Ip2eaoI6hsyoUXjTsVzV1sYk
	GgHffRtPkz4cOTWVSKaG4oMUabqPnfI4ZPfqfdfbVUwKxqAwk6vXM5K85WJ4k
X-Gm-Gg: ASbGnctMvKgifshRWUW9gW8zU9XfSIxgHGmONGfsdCQOue3p7wf2lprl+ncuvWl0gAT
	dK3SGtrcGMFnbdUK4sdfMaRBwEEhq9re9gg6lVXikvoQKv5WRCh6fs4zSfcAXEEf3GMCCHOxwhs
	bI4T57OEnB/MQfdxaW1xDNSu1R8IPen9cntEvak8gUK0ujj2zj/xZi1MP6/fMelllvcfBNNVIr2
	ezXLuNdCWbBfO+N7Pq5IUeTcWXxlESCuX512EKnM0AKN6akd2cGZlPa2oTr0z2T6dWeDgmEb8C1
	ZLFbNDkAxMYv8wBD6qLWfBJ7vc7ZUqbPVcNPjueY0RgHIaEQCBO2Yz1vhIUrunDDXLf6kmc=
X-Received: by 2002:a17:902:f650:b0:224:10a2:cae1 with SMTP id d9443c01a7336-22be0388945mr5828995ad.37.1744248833687;
        Wed, 09 Apr 2025 18:33:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuGLiA2GpR0NJuAdO+G8PI7iF8HwBXSjne50t51n8f56D/aAMKowziVlwmYW3huuRGfdtbHg==
X-Received: by 2002:a17:902:f650:b0:224:10a2:cae1 with SMTP id d9443c01a7336-22be0388945mr5828615ad.37.1744248833241;
        Wed, 09 Apr 2025 18:33:53 -0700 (PDT)
Received: from jiegan-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7ccb596sm18801815ad.220.2025.04.09.18.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 18:33:50 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 2/5] dt-bindings: arm: Add an interrupt property for Coresight CTCU
Date: Thu, 10 Apr 2025 09:33:27 +0800
Message-Id: <20250410013330.3609482-3-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250410013330.3609482-1-jie.gan@oss.qualcomm.com>
References: <20250410013330.3609482-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=PJgP+eqC c=1 sm=1 tr=0 ts=67f72003 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=gSyxy6DGYGa4b6s9XCEA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: UAzGC2sGn4qzDGLuYWmt7wZJ4x7Szvvn
X-Proofpoint-GUID: UAzGC2sGn4qzDGLuYWmt7wZJ4x7Szvvn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100010

Add an interrupt property to CTCU device. The interrupt will be triggered
when the data size in the ETR buffer exceeds the threshlod of the
BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL register
of CTCU device will enable the interrupt.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../bindings/arm/qcom,coresight-ctcu.yaml       | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index 843b52eaf872..ea05ad8f3dd3 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -39,6 +39,16 @@ properties:
     items:
       - const: apb
 
+  interrupts:
+    items:
+      - description: Byte cntr interrupt for etr0
+      - description: Byte cntr interrupt for etr1
+
+  interrupt-names:
+    items:
+      - const: etr0
+      - const: etr1
+
   in-ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -56,6 +66,8 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     ctcu@1001000 {
         compatible = "qcom,sa8775p-ctcu";
         reg = <0x1001000 0x1000>;
@@ -63,6 +75,11 @@ examples:
         clocks = <&aoss_qmp>;
         clock-names = "apb";
 
+        interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names = "etr0",
+                          "etr1";
+
         in-ports {
             #address-cells = <1>;
             #size-cells = <0>;
-- 
2.34.1


