Return-Path: <devicetree+bounces-250780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80248CEBC79
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:21:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F8A2302EF7C
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21A5331B122;
	Wed, 31 Dec 2025 10:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FnPRuUIT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KMmpwrXG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4B82E764D
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767176456; cv=none; b=WhRhzh98voBDoTqKyk6VjyKxR05wkXGIv8S/PYrpnU0V8jQZQwGAQijE9N41tyIxS41RN/Lv59Fy6ulO68osDaQH56oGodTMjvuqo5I8xXWg0QhinNQ7eDRDNwl63D4zA8I9GQx6yw2rJia4FA1bbzyucCeasgK+/H9Vf5ieb90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767176456; c=relaxed/simple;
	bh=8WR566cU73AzIVvj5nUGmGy2ZK2KG3l1HWVhlpXkS+Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bTspb8eehgvQNPtu0bK9tvGkZla/qeOiSo4zg9mWwZ/H+lqCKwcnnkw7fsmdb3k3Nx+ooP6ebcDZalNVTFwHFVaH8gAYXyfGGeJvoDDUoGo+OdnVdq4bnhslEXgv0oII2bESrrDhOXpBM+ZA4Ifn3JkOMA3pBxemUBtn+yFEbMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FnPRuUIT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KMmpwrXG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV40pVg715897
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:20:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xx9aZG8wIa1
	01V/TwxOXidAinRDzq5VmWS/ZoJSBsZg=; b=FnPRuUIT/sj0BxH8oV68peQye6Q
	qQ4NzHhlo4/E3pzlChIrGn7LZiYvAMDNHholCmLDyEsMtroP+6TvrsKoZaIf4NV6
	rHf8sLhWGLikqoARANR2873ZQ+OmdhplGXU/I7rJqm+igzg83Rntd6I6DH04X+vG
	x1dLwtfs3JQrNsOk7l0E1yAAY82sAtcle2xzgZt/Y1tUuU/7S3QJq7Tw2slHoY+a
	xtJjzHqZFnYbELrTgIE9NnthgtEPmiApgBLW7btJeTm27Jq7M11+4sdLjY136bg5
	G221Uo0WKDQVAeHFG9NgCSBdT96EJ2gPqkmlTPgzNZdq63XC0RZqiF+3rrg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcf5yt84t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:20:53 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c5d6193daso21067791a91.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176452; x=1767781252; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xx9aZG8wIa101V/TwxOXidAinRDzq5VmWS/ZoJSBsZg=;
        b=KMmpwrXGFwZqobLbDH67UDrFzFliwXGZHbyRRPGuwMxUCtK/EOoLLkZwHk1p6p+ULk
         fRKcImELatoEuHT4OXeZoMTIjqD0EBIHEkGmqu/kAS4SJIByDCrwx13LXs5zFFkoRz14
         yWf+PTG4tiwBIP2SfHrHc8hTm1TSAB4lFLFVslKJdrJ7i4AooHT3bBrGi7OFoStD5MvC
         aRGpJjYGG9XIuRNSAC4ikoA9KIvY6qfIM2JjNXoYuJ5Boj9FXi2+q9RK1rPqFZ6oYICK
         SuI2QgGXV+0QT3GPvx+j9ZEeIfdVqzy1noO8BAXupfST4vpPt1ITV1lOGHiBl13i1os+
         0UhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176452; x=1767781252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xx9aZG8wIa101V/TwxOXidAinRDzq5VmWS/ZoJSBsZg=;
        b=ETxFZtuU1UppTf1DZSwuiYQ98EgFlmQW0jk7ubz9/kCU5LXTXUwUksfLxLYBTb+QQB
         lM27cfvkFs+saMd9y3Zt+hEwwj8pnqtt0EuVHJhxAEAs/86a9Bss+V8GkYaGZ8Lh5IIk
         KKdJynHO6w4AtzzdaHAmCwOf56g2Z83tMB5/f0zYI4m+oDhNhJLSNI98KRt/M2xJm/5W
         m6cfgT7Sa2iXcwDk0XyAGvoTWIMwmf6MzIb9WKBwoZHBWodUBcuTTbp60Qgd7e9K+MCq
         7n9cjNjf3CQmzh7kSJMfMsA86N+3YST1valT4iTK78cIshWJt8HYD1udmviDdK44wSMJ
         UImA==
X-Forwarded-Encrypted: i=1; AJvYcCVnNYbrBT5KDgoFLTUm/xqu6yvTbBMnu9ruBX/vMYNIT8eW0uusq9HRtp6VacGe2Ws2fjfPzSVGKQ8N@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3NQ/nfmIrJdAs1+FARuj9bNrlZDE0/Ggl/Naf6hdKrp6TUyZv
	GyHJvd0YAfQA1VgJ+mPbSE+ugHLzsYug+iivfqLiA1guZkBfBJJ7kOEFtNpg0WMaYFcCvXH4FrB
	KiGBq+Xum712T/pfPew802Babrnjlshf/tjATYYIynGJBARp0/l5rEjUdvAKMO0PD
X-Gm-Gg: AY/fxX71s9679r4IP6EMfGWSrjYewFlCQgBjRcw8HJQHQhoFvwI00F+23fH4d3GfBFJ
	ieW0uPC8wb09lzUq4gP6Dcllp4MnBVrXNYQvJBv+/IrWOJHuZH78YGrEs5ihlz0C4fhd0PiN/ee
	H4uDCk2gjcMGIhYdJNCKLkbPPjQkLHOnm7ro6KS1rU2Wo1iRp3gLwvxIIZ86uh/jHcfFoqY6qbh
	jduLedE4nVUTEc5Jcufkz0HBeB/Zmf/5eDBq2v5255/kxt9z3O02x9XVOC8vA51SYEM9F0v1ADC
	3jLMPbsd1CKiHYcEjZCC7prfyoYYzwR9XxY8jEKK+YN8HWRUBBiF9rg53MLRGLxBxALM9Epuyzr
	23DDS5A9VC5CFPj6r8OdzmiWD7Q1oO+lsZz+Y+wtOxnaUpSnQdZ5R
X-Received: by 2002:a05:6a20:e210:b0:352:d5b:c427 with SMTP id adf61e73a8af0-376a81dc79fmr31125207637.3.1767176452316;
        Wed, 31 Dec 2025 02:20:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6ef1qNkB4ZGwXjGOPHg2/nLF6kCSrBmPw7ORZ3kLabBKQWgsNm0Fbe+7WBYD7Up5GwaiDpQ==
X-Received: by 2002:a05:6a20:e210:b0:352:d5b:c427 with SMTP id adf61e73a8af0-376a81dc79fmr31125178637.3.1767176451804;
        Wed, 31 Dec 2025 02:20:51 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9223ae29sm32163920a91.16.2025.12.31.02.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:20:49 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V2 2/4] scsi: ufs: qcom: dt-bindings: Document UFSHC compatible for x1e80100
Date: Wed, 31 Dec 2025 15:49:49 +0530
Message-Id: <20251231101951.1026163-3-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfX0NtlMvV2gOtQ
 j//YBovMbfdjIg7w39ivXSPZYpB80jDIMv845rOW+eStinUwsWyqshKnufE+aqg1pmMfI/Qmyzr
 MvmeWcX+pcTXOMB9AokAd8yPGctqbGPtSOoUlv4C8UJBTX+GTzd8h1pEFjgfea7+cuSkhNrPh4r
 QmjhcM4dHu/A/k8kVjAFEDr46MNZh5UjWonNwlUDFLg+Rr0Fv5JHBCO+nsYf5GIfCZCQtlfLT6f
 K3o3hIkbvou2j9AlvTPaFXKGsDvepV8/EKXHlX2W1KIrg02vmvvWFwkIDaWWIT/X8KGjscVN9QX
 2ASHOqJbnMprf3e5TAJaCnZ1HCInviSqS+R77nE5wl8KeVoxmXfR85+k/cBHhhdk7dgi+IfWw90
 styRCZf+mgIHj3KcD7jeaFJrYG+hTQwDNbBVUffho0TOJpIXzovH8z4AsBAbfEJ3XlorDmxsDaB
 ajzqyAKZeaEF3PRaqYA==
X-Proofpoint-ORIG-GUID: Ap8lYpASJQ9aaWKkEF3iEdkniCfCkSaH
X-Authority-Analysis: v=2.4 cv=KvNAGGWN c=1 sm=1 tr=0 ts=6954f905 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=y5OUiIJSVdG28iL48i8A:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: Ap8lYpASJQ9aaWKkEF3iEdkniCfCkSaH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310090

Add the UFS Host Controller (UFSHC) compatible for Qualcomm x1e80100
SoC.  Use SM8550 as a fallback since x1e80100 shares compatibility
with SM8550 UFSHC, enabling reuse of existing support.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 38 +++++++++++--------
 1 file changed, 23 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..0f6ea7ca06c8 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -26,26 +26,34 @@ select:
           - qcom,sm8350-ufshc
           - qcom,sm8450-ufshc
           - qcom,sm8550-ufshc
+          - qcom,x1e80100-ufshc
   required:
     - compatible
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,msm8998-ufshc
-          - qcom,qcs8300-ufshc
-          - qcom,sa8775p-ufshc
-          - qcom,sc7180-ufshc
-          - qcom,sc7280-ufshc
-          - qcom,sc8180x-ufshc
-          - qcom,sc8280xp-ufshc
-          - qcom,sm8250-ufshc
-          - qcom,sm8350-ufshc
-          - qcom,sm8450-ufshc
-          - qcom,sm8550-ufshc
-      - const: qcom,ufshc
-      - const: jedec,ufs-2.0
+    oneOf:
+      - items:
+          - enum:
+              - qcom,x1e80100-ufshc
+          - const: qcom,sm8550-ufshc
+          - const: qcom,ufshc
+          - const: jedec,ufs-2.0
+      - items:
+          - enum:
+              - qcom,msm8998-ufshc
+              - qcom,qcs8300-ufshc
+              - qcom,sa8775p-ufshc
+              - qcom,sc7180-ufshc
+              - qcom,sc7280-ufshc
+              - qcom,sc8180x-ufshc
+              - qcom,sc8280xp-ufshc
+              - qcom,sm8250-ufshc
+              - qcom,sm8350-ufshc
+              - qcom,sm8450-ufshc
+              - qcom,sm8550-ufshc
+          - const: qcom,ufshc
+          - const: jedec,ufs-2.0
 
   reg:
     maxItems: 1
-- 
2.34.1


