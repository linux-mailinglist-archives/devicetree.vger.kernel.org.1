Return-Path: <devicetree+bounces-195880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E58B03720
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 08:32:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 989521893552
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 06:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EFCC22B8B5;
	Mon, 14 Jul 2025 06:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="REri1KZs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9B322CBC6
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752474696; cv=none; b=uvsVbRmIqYia5r+FHtLZKWa94eTFvig8U9oB/FQrCBmI/cwHHkRAeKQpn/Gp+D4fJEvBdTuROe7VZ87HU+MmHu7KlzYnVbhhTT3BLtEMBLNTgj+dM3KCakAmeDchfMjiGdMfuGAkSTHJZXD74NQ3yCmLy9ulBrMR/mbdOpWstTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752474696; c=relaxed/simple;
	bh=/g0/ZP4wHtHkgn87d1qyuSHaHZRS6iAOtiw3E5bQBKQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=csZ8pRRNr1vRV4OEYOtbBhjAX1gOicYyOz9eECeyf9qjIq2qx57ZggIHa2ytnTZ0GluqO+lCCJ8R5G71hTQiyFVyg+mcqUv/k0oQlwFuoCabaYIpI66RWBgZCIt33Ho5dwnWBalMQKgWYdXh+SG9Tp6r0WGlyzWN5snh4Dlfg4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=REri1KZs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DKZPGY026465
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=0SmpNFp+B8v
	w9+MbCCEs5ee5DB9AM9lfQmDfPKr7t7U=; b=REri1KZsMJ77DhE/mzGNl/yqghY
	bjAKQfWVNbtNMhWurijssJEFIglssVxjxE3c8Q76RmtNonXb6LTvKOM6lf9s9/nR
	tIr+WY17CuXYD+O7xxrcxXTVJ26wmf89Y83+DWWuKzI3Y0q6ah4WMXJk1xwenBz+
	kJLTlRkjl/hGVOabI6ydRY+p5oXgPppFeE0dNec7pd1fv158lliauDtfCNDv20q+
	zfldsXS62AYhpxyWe5vRUoBJaknT8diMtw61vp8RMAyI/BQ7+L43sciQznpjw1Tb
	JoH/gl58l1dd2v5VI+NioXMu7FtmiQoftZyb1F60+isdFNvFxltvU6qr0+A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufut3euu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:33 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-23638e1605dso30647285ad.0
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 23:31:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752474692; x=1753079492;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0SmpNFp+B8vw9+MbCCEs5ee5DB9AM9lfQmDfPKr7t7U=;
        b=hv0+ty7GI4YcUwYFWDcOSXVw4iOMOh5uHTJLQthMPkYcCYE28XHGJzVxkhjYI5oN5i
         wEdBvJU3umwcpfQtsrW4u6dFs46VG2NM76xqmAWrsT64qh4mKAyQJmo60OHiyMjlZniE
         pgkqMl8KHfEUiWCJ0n8LrlSgLrkDEVtfJzFXcxg5hvh7MfOslV7ZciIgtsbJfAVnWrej
         WYoOX2O02ErI6f4I/2pGeHG21s7JKXiEJ25lFyjtsOJnaQaY9D+oTHK6iUpNUk+JIsE9
         Nzt+ninPowSdKlBxeoboNYjbWu3NmDjRS7aQUojowGE4sIcF3bv0VWDy5OZ793AbZtvP
         QULg==
X-Forwarded-Encrypted: i=1; AJvYcCVL3FmZInydyI4Px72hK2qJBbVdac4rFzunl8KiB40UoPxA6r51B+K/I/z5dLQfIvhM/p9ghCDOWnoI@vger.kernel.org
X-Gm-Message-State: AOJu0YzFXR+GjbK0iS5PxCiGmaeC4E4ussFt7BROVqGjZ/qQ/SatkvRs
	WH+WsGdcMB5WbKAjjZAJK+qNuDM0NYM5I/44JfKlEpbZ+CvZN2C2FtOlV7ssE1KPGfZQVP+Qbyk
	08PvKLl7o/X/geA1Wm7TNKZ/B5xCwFt/PFO7CUcOwb6zkvOrsX6kRWBHQTkfvziy0
X-Gm-Gg: ASbGncuZzlQyqdMk9gsSQbUJ2dwkiKaKqr096mv5YQoyn/MtoD0elgPctcG1Whp4tHM
	fa/C7mrDVssHIwQLwpKUjfHfrU68k+sT59F9hJIhoz7NWH3Q/a807t04KlRfMisyi0Bw/MNtvvk
	IJugUhzkCkW170vaU5sxDd75Pq/mNtKOMn8myrweYX4mxwmwiwNTNt/V3UjeAnRCpDBYv/MkIvX
	Gft1DRARQNAv40zkM2bNdFw14in7Xtx9/pw5km58zyNwhS1+LlhEJn+lBMYs1VJatTDsoMyPyJy
	Ji1Itda1NUGrt0bDpNrahs5QiRWSyhy7ZRvH3Xty0idzR63uspPD2h5IAg38Waum4+UbqCG8RqM
	Nt0swmy3KgjOtgZfBZv7p
X-Received: by 2002:a17:903:28c7:b0:23d:fa76:5c3b with SMTP id d9443c01a7336-23dfa765e5emr90913325ad.22.1752474692473;
        Sun, 13 Jul 2025 23:31:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOmP5t3fkfcxu3Np53dQRkDyb6/8A/C4Ok4Vy8jn2surWzItc8MyMms0KNLD48BFqUzDnsfQ==
X-Received: by 2002:a17:903:28c7:b0:23d:fa76:5c3b with SMTP id d9443c01a7336-23dfa765e5emr90912915ad.22.1752474692018;
        Sun, 13 Jul 2025 23:31:32 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4334005sm86138255ad.158.2025.07.13.23.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 23:31:31 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>,
        Jie Gan <quic_jiegan@quicinc.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 RESEND 03/10] dt-bindings: arm: add an interrupt property for Coresight CTCU
Date: Mon, 14 Jul 2025 14:31:02 +0800
Message-Id: <20250714063109.591-4-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
References: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=e7gGSbp/ c=1 sm=1 tr=0 ts=6874a445 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=gSyxy6DGYGa4b6s9XCEA:9
 a=uG9DUKGECoFWVXl0Dc02:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: uuNWdi7kFUpTr45tj1bP2hnEch6O9gLY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDAzNyBTYWx0ZWRfXxTGhkzypRuz/
 uLm0bzP95bHUgpMwY3LOjlFDd6D8SNMn50r+fEAirLvL1Eq/ciijyA/vVkjbOWkOxbNB//BDxu5
 sTddooKZ4ovDwkHIw39rBNNr4u90KKvLpeoLRvfk84CgqR+x8FiITz917EWcwJtxI5Vp/1DGgEO
 317z426kueIhKQ939rmgncrUru2nxAGxrnpdeolIjGvt4RKesCQTm+EgmtToUiYUiNiAFHjAdb7
 L6Zqt53TLwcwRa/+EZnaJceHXuc8XIa9dEyq9LUHdR8IfaLrF6NCB6ggKyJpPg8ajfsrfUj3ycR
 oyPyfuQZSAeVcMrhQMnpM7XYF+FB13uLO8wyeW9tLSN85UUwNixiCew8ifRjWqySORGUTswSHEX
 3Hd1KhvIswCTJ/xCnxEcZbh6SkvRAim7cqC7inS6Qvk77/tDB5yoU5aXuLoSKU1GvzzFImD8
X-Proofpoint-ORIG-GUID: uuNWdi7kFUpTr45tj1bP2hnEch6O9gLY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 malwarescore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140037

Add an interrupt property to CTCU device. The interrupt will be triggered
when the data size in the ETR buffer exceeds the threshold of the
BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL register
of CTCU device will enable the interrupt.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


