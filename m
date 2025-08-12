Return-Path: <devicetree+bounces-203629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4EAB221A7
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:48:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 504F81B63A2D
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B67392E5B38;
	Tue, 12 Aug 2025 08:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IN8uN/Dt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B1D2E5B29
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754987895; cv=none; b=i+fSqylYnId83fNyJ8UCu1CZQFe4DIUlr/OWAMonzGjyY4BG9U6mG2vI9TjUsVHwuAwCgZMLre7J6D+RYqNms30zt6xmPJBw+YPMXRGi3CHD9Npn6Nda1U7382ib7Ot/qS7DuYdTdAxRBrKTiZZwoMMP7sfq6V1gRuCKJy1Fxs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754987895; c=relaxed/simple;
	bh=/g0/ZP4wHtHkgn87d1qyuSHaHZRS6iAOtiw3E5bQBKQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dN4xBmDcKeNIyT5zz3iXmA+ztjESVXTb1HViuLarIf8Ri6Iu5jwAb92F8XU0EZEg2RQBjT9palYuyEJS7vcXC3gHLqW5jcKGPBMEc8eAZdCiJZeHJ9+Om/tBdsa2tr1z7ii2JFRTEn3xNxbAsRaC7L/khGec7rDuYrL5huUX58M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IN8uN/Dt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5acm4021421
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:38:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=0SmpNFp+B8v
	w9+MbCCEs5ee5DB9AM9lfQmDfPKr7t7U=; b=IN8uN/DtQg/dumPK03u2KI7sh2W
	MDnlx8MgYFxExuf6GYBInpzJaU2cNtvwytNgVdcwgrE2QMrm3m2AeLm66R8g9YyE
	ANAwosSIErq20mnpnYjKB0uGBI8sPtIxEw8lh6Vxfj+c3Ile7sGrAFHPkOjukhqn
	IeOMhcNWPVKGuDil8jqGmKd9xtdcz4IzVP0Mb89ImdGnK4L1C2jPoZ2JVHRio3xG
	daxFPfFxfzKbC/jQ3GmsfiHpUZ5kxLIBwNEcl3PkJM/zmhrknBPAUYcq8KgPubwl
	5xS/Q7HxYv32s4EDFH+IlC5OddYsIBAaHCP05lJW+K/zbUL77e+vfTJLqcw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fm3vja97-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:38:13 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-23ffd934201so41859645ad.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 01:38:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754987892; x=1755592692;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0SmpNFp+B8vw9+MbCCEs5ee5DB9AM9lfQmDfPKr7t7U=;
        b=nSdYg47HQ8N+FP6vOjPI4V7bOJL6Bern0cLcH6O1T/hZXhImkPXr1F182ZailLl7+0
         fy29WK3xHUxnr4kmJGNVarxzsKjYMIVOoqPVU6Q5Bj34Rf8c/mHz9riw3bs+VUAsIHGe
         IdHfIF61/fO15twYJJ9YSDgJzgC1UEu2wbZV6M0O5mFJz/q5whqpOhdQEvH5aOsNzSSy
         uWeEp31J30f8bijURN7Wde4ikuA2WL6gNiIlYnjYCKY7CPgjJ/nLF+x8WRhpMQNVzFo3
         uZKIoEK7eJ1iCKTdaOeaKVwpUALxx4BdkitVIyNNSKCjsHqSln5CswshaUAsFgH4iJZl
         tXEA==
X-Forwarded-Encrypted: i=1; AJvYcCXaBQnWSf0ADNUUSxaNN2QzA2jLIP0Xbi7QwuhxeayRSnheybP8q7LKAWeKZU9TnhieFij70BZTsjt1@vger.kernel.org
X-Gm-Message-State: AOJu0YzRsE7Wz5CDBoRp7jwQwdoKyD3taC89Tiy0Iz71dVt/lLko3XkC
	Q8qxYFlpJ4gqbxWE+Z6z0FfVZxsljsfhbQm6dNuu0aHpUxmLnKPh6iAD4utPhQatKtfQIVPm3yI
	ClcALHyITre+o460jwuTUqmZl1d+6ydGO7Jk+wYlWaHWgdq1/XCSJ5KHMqmCt6qxe
X-Gm-Gg: ASbGncuhIqYQW49Zvi4ytl/VB7ZExUghsuo9iijaLIzriGqVGeneysn3pmOCOoJUPU9
	fOZ3RJcSrAX0M3tayl+WN+3YdhwFlGq7jVG9N+FoMZOS5HUnP2ZqqVNDNUbqoSI6F7qmv3qMK76
	WD3seeOmBzaaxCMNXNKax7DTO+wAFTGEJfMgXwm1v606vUYV8hpxp5+YieMDFyNFaxk99C5vYrP
	2QLJjc0sj4dJOmJHuVoVRN8dmkEcr2wB05MIBT/h/6salQc7WfBR1I70VdUrMctyr9LIOX28gCB
	4htFuCL3nBcvRsG7uFk0pntSJsCXPtkMPmXiOlwFC8UZalpJDF9xu+8kL5pWsEy/rB9vh7E+0mX
	6AG7+zDth/morwjyi1hU=
X-Received: by 2002:a17:903:1249:b0:240:3db8:9adc with SMTP id d9443c01a7336-242c1ffb202mr221272695ad.4.1754987892031;
        Tue, 12 Aug 2025 01:38:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGsrejQyQPUM/qvKCFw2RaISG2UWmCC1pkXJPCzFHH/tzSURwaSjJEvjHXBGqe+x2dQbAv5zA==
X-Received: by 2002:a17:903:1249:b0:240:3db8:9adc with SMTP id d9443c01a7336-242c1ffb202mr221272155ad.4.1754987891561;
        Tue, 12 Aug 2025 01:38:11 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-243086849b3sm1915345ad.175.2025.08.12.01.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 01:38:11 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>,
        Jie Gan <quic_jiegan@quicinc.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 6/9] dt-bindings: arm: add an interrupt property for Coresight CTCU
Date: Tue, 12 Aug 2025 16:37:28 +0800
Message-Id: <20250812083731.549-7-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250812083731.549-1-jie.gan@oss.qualcomm.com>
References: <20250812083731.549-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDEwNyBTYWx0ZWRfX8upOdVByzMBl
 rZsj4BTmtMrMxyvYjKNkxtltkPxO07jVUbwl5F4iQOI5+zKuBiACUlvP8qjAcgKBSkITFrX0ZLS
 QwZgJV3EtJFJBMEtbwjdO7xTObqpAMds2DDBJCpCl9iRNq68qOqEC8Rn3lrv6E+MPgWDRBP0WoR
 AyJMhU05bZJZFe+t/t4oZVVFttBy2r0jlkMEULX5lIu7AMfoACy2bEVIp98x9ue8/3LVvljcD5t
 m0CfU5IXFXiULk26v1dkJJW00qYrkgC7vWa9icsDuKeYI2EcWiLOqlrr6wuYV2L56QfbcH9nfvJ
 RxMKuhi3UNIjWrimZyUHr2RIRTYb/RrGaDn3s7wAq+U3cbU82VO+g5LCmkG/LIXCLzUq28rKpS5
 r9Ezh7sP
X-Proofpoint-GUID: TTNgk7eQ_1OZPLC8B6h5zHrmt-NN19IM
X-Authority-Analysis: v=2.4 cv=A+1sP7WG c=1 sm=1 tr=0 ts=689afd75 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=gSyxy6DGYGa4b6s9XCEA:9
 a=uG9DUKGECoFWVXl0Dc02:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: TTNgk7eQ_1OZPLC8B6h5zHrmt-NN19IM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110107

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


