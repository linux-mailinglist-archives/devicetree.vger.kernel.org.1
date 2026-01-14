Return-Path: <devicetree+bounces-255221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCADD214D5
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:18:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9623B306579A
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:18:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58AF5361DBE;
	Wed, 14 Jan 2026 21:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TPfO69Dq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Nqa+QD3K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA81035EDC6
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768425487; cv=none; b=DeU+OkFzJ73xtO9uozusoZEXDWVK4hoKu059w7C36URoPbJYctPJHFHmszkQnEKCDemq/3zuGJ4zyu6VAMT+uKMn9ZUCB6wQy4xgzbXAbs5uCCTnmX/VxTi1kXmbYMNYh1EtyrxNNvB88bJ9IKkGcEVd/GgfYn6dRPsf+3EkrlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768425487; c=relaxed/simple;
	bh=mfWDFTtI7sOSzZDA/cYKPw2CbD6I6AAINmqyN12imAk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NLVbU6dNRz5/1n9ZMUWYwCFD4dJi4k/zxQOxGoVal5OX/EtYvtw9Mk/p06ROMlRudlnxAAVyZxs1SP6q05xhBTG/tq5wnRYOc0FTjRv7wAuy5s+dzoOs0wLBahUcf7nqwcXedCKZmFgX3NNxGcoLMTIYFcjLtJbUW3vKWlk9EKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TPfO69Dq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Nqa+QD3K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EIUx2J3280116
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:18:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DI6DC3zMUoG
	5LSvyEo1omeMMHH9suCgrXGLM485X7gU=; b=TPfO69DqhWTcqTOK1KxBJD+egA+
	35/rOpjLdhNu4WQGzdGmxdzam8n0qElOzv3rO7b2+HeaviGT+h8xVK0jjwsumBp1
	FDkTIeiO+t+D75JOZyvIih8wtNqT6/wcmCf1pabLFsv62aNZ3Rq9elwI3WE7OeWx
	dksGvRsKnNaElCbDumPwCsDPUiR+gclbLQFgV1uEpDCBZt6sLjuqmBfHSUs17+/W
	CQeKXFslrhSqXUf8pNwecwIlWB55mEbRx9BReWyKTjACe8oc+9q3/1W8kmtIZ4Oc
	RbTt35W9RDPL+ohwEXj019ga+m+PVRFN0nQqO/KM3TBf/4900OYkF9sIJpQ==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp9x8t136-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:18:04 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-123308e5e6aso308947c88.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768425484; x=1769030284; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DI6DC3zMUoG5LSvyEo1omeMMHH9suCgrXGLM485X7gU=;
        b=Nqa+QD3KOziy3fs+zWq8W7308+xBjmZehgQKxTeFDZscvkkdhYt5Q4WQ6JKVHeHmhI
         TqGwAVSCGZENsTFhDwY8YQU+epoUHOpJSQrqDW2jRjIqltjRc8xx+OCHo1aIGb4LSrmH
         p4Lg0EvV+uD/DeXS2gDMYnAa2IXrjlmMoMCwZ4qqpBk4QKv/KvfC+mrdQaoA8s3WrDWT
         XMUBZkpS2m0EgGt8dx7Utm5ExaqH71806PS1ggzizo4/5x/mlzuBrQDR0QhfbQ4pdhf7
         rMDh/iHB8JvepvbsMz6ecmeYXsQT7tDlCWCXznhl6n1kFDAvPxUPFKXSpbnjEwy7q/4z
         jjug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768425484; x=1769030284;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DI6DC3zMUoG5LSvyEo1omeMMHH9suCgrXGLM485X7gU=;
        b=u3vQFoR10e49y6gIuy0lsKI5J7MJQigT2WJOnbZ9d+fOGwN8OBHPQLARdnoPHjKbk8
         5X9PabTzaFYw81i8nY2Ykm/D/KshJ427Y7taaf0nXr52WWwTorGcqi+d+vcsUjgjrvgl
         JNk9GPzeLxR225JQiNAVsBQB0jbCBEuZ8tnkuCPQnw3j1tXGCzQuLlVafUQ8j097aiNp
         RdIn2YaoVtK+d4XaBn3KEIP4z/OtxyPT5nTGgiSdsOH8y+YCSNIJ3D7d4R6FNyJZl0tv
         aT/NDgowvrnI9hgGwZu9JgOuF2Q+dplJVWNUpLlqnfNsiTD2ZCbnYPi1GfGG1JlUE2+2
         a9Bg==
X-Forwarded-Encrypted: i=1; AJvYcCXqRT8d0JW/3XkhzURs8F0+cIoFvPvUeHv5QBAEGPTcJ5ygainK9wN4ojF8Hn9B5KCWBuEtZ+5tB2C7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx25wkBnTXKoHyq1cLcUtf+nXi594iPgwEv0LqOt66kw4Ka3Hav
	wfUrW1Gy1utMNB2a645ye7SpUH9sQGUHRDEoCcWMx+265foCX8rBeRQft3pn9yy/8F8dXDhVFbn
	Bg8VGozyqbcpe0ma5LwLZXim178B/46q/DmjwFYaCCzstynrPrfIse18DEc04exoT
X-Gm-Gg: AY/fxX7yEP7MHkbwK7JUt6l0pvC+HZtyd9HRMasXcQNodhqTPMuVxSMnkvh/DJvXwTJ
	3sVjS2B8roC9MjSMO7j55/WPSrtYRWay3MXB1RGnJdp3ecQ3y2FXo/FoPVwA3Q03FXxIIaSCv8R
	VUOIKnEvU6q89Uu8PpyiylUYDDqBSnFFm4kdyukGvwW7Mn1Bk7SWwtGOsXeMqNAS8SWjvy4zAY8
	APjxdlOGsV+G/l2/E5RMLoUNQBAhYxLQwY1bBB/n0zCZZfaxqpMmrmJ/LRMhoqb/qmHimFA88no
	YXCQavZn5Snoo0yMvvowOLV+KklSAZYhv7KuIVsK1XExPNjLT24FadjsgQH7cP34So1Fj8GNQVQ
	pxHblp46cBxynkf7NxfRu8ZlUx5U6sJG19obtMpS1Ao6NilNHnGUTHm4RIYWxro62J+oCVrzW
X-Received: by 2002:a05:7022:3b0d:b0:123:2d38:928d with SMTP id a92af1059eb24-12336a7c179mr4753096c88.36.1768425483781;
        Wed, 14 Jan 2026 13:18:03 -0800 (PST)
X-Received: by 2002:a05:7022:3b0d:b0:123:2d38:928d with SMTP id a92af1059eb24-12336a7c179mr4753079c88.36.1768425483104;
        Wed, 14 Jan 2026 13:18:03 -0800 (PST)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f243421esm32167118c88.2.2026.01.14.13.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 13:18:02 -0800 (PST)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [PATCH v4 2/4] dt-bindings: soc: qcom: qcom,pmic-glink: Add Kaanapali and Glymur compatibles
Date: Wed, 14 Jan 2026 13:17:57 -0800
Message-Id: <20260114211759.2740309-3-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260114211759.2740309-1-anjelique.melendez@oss.qualcomm.com>
References: <20260114211759.2740309-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 3qt4cKqE0Ipf2FR664rAlC8k4n8ocCXU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDE3NCBTYWx0ZWRfX5NUUQkCb3rK4
 SMV3a7eBujp5749SS63YiuGY/ixVDxXQmcC0fifUNLvUYvw/EiUW7sW9DTQbkMYfHli7kwouFcJ
 Hz5Xq6fnvSoVyUHgTpVI+Ix3wnUly5FBjRsxzUtoCGBF0mNgtYxRYQIeN7WdMnfLmI6w3FcV/kp
 +BE6jyRov259bF3p6yA7RJXTHVMGm2+L/lNkaRfP1HlmlqgpffpIKRTG9FRmvkZEe0T0V2S0Vy0
 5jZ8/xhYZlQkioSLlG7mN3XwAkKOpk24sIM0QyDZ2vG7pcbAZxjvidKVYXbimTRokfb3BCdRayU
 sddCL+5D6jw74ZPq5aPFvc0M/3gh2Cie0sNsxuHtmqEF39GJqHOH765ontqoYwqVJnmXLHd8iJt
 pyLnbx5ppAQs/dsoFhwDGAu5QUD9dBDN/TkAloaDiRbiqvLJuFU6U5hm51fqyXWAXsFIICNw05/
 Eh6mMRJz7bzbWtoqaaA==
X-Authority-Analysis: v=2.4 cv=HY4ZjyE8 c=1 sm=1 tr=0 ts=6968080c cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=3V0dzxXrMXP2z2Vy7boA:9 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-ORIG-GUID: 3qt4cKqE0Ipf2FR664rAlC8k4n8ocCXU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_06,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140174

Document the Kaanpali compatible string to have fallback on SM8550.
Document the Glymur compatible string to have fallback on X1E80100.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 .../devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml       | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
index 012c5661115d..13503ae79a8d 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -38,12 +38,18 @@ properties:
           - const: qcom,pmic-glink
       - items:
           - enum:
+              - qcom,kaanapali-pmic-glink
               - qcom,milos-pmic-glink
               - qcom,sm8650-pmic-glink
               - qcom,sm8750-pmic-glink
               - qcom,x1e80100-pmic-glink
           - const: qcom,sm8550-pmic-glink
           - const: qcom,pmic-glink
+      - items:
+          - enum:
+              - qcom,glymur-pmic-glink
+          - const: qcom,x1e80100-pmic-glink
+          - const: qcom,pmic-glink
 
   '#address-cells':
     const: 1
-- 
2.34.1


