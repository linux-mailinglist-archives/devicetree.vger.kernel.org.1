Return-Path: <devicetree+bounces-241904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AF13EC842D8
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:16:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 353EA34DEEC
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94D412652A4;
	Tue, 25 Nov 2025 09:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="layhFR0Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ISdnBUBi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1641D254AFF
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764062203; cv=none; b=ODHZH/2JDEovHZXMykkyId2Gd2730qdTl/8VVznc1vLnOhQQaJCuZeaRLpot7SzQVGrjeF9HyEMZxyEUA221qSiBO9aTOkJSwmbK+vh4AqeN+TXiUY7IOvLfHx97RGAW4UL8Eqeo5StBuT7s7lMiLPIjY2RwDcUFRNV0cLC7mfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764062203; c=relaxed/simple;
	bh=yAilSHIXR2HR1pGhig0lKmjkMCOIMK2FNUAesO/IS9M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r6OsiC02a7V7OGceo2fwolc6R62dH/CWr49NPaqOrQUgr5BIxyNVJawMV39+gLUQ/0uOp5pBRdgbNk4tT3LZ3UUtrok+TH0SIL7+Je6gtW4G5EtDM+Qtlb4b0XhnAszmeQ3smRhkSFXqHnYMyQaD00IRG9ANpbmqpKKlGLYHcvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=layhFR0Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ISdnBUBi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AP2gnra1699586
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	93W74ueWuFz9Nk5HtoqIioLdWflTDEA6quZ138FzovQ=; b=layhFR0Qq5C40v60
	htsB0VnIcNZrtQhHVi0EbFIUAkPRewigCX9PRxiEWIzKJberFZFwYDtzxzicNyBn
	79Qiir1Az79Uml82DtOhpf7FyH4gdI0GBl5zSE8233oD9bTk1jUWCsPjBRn8Lp4N
	pfcSiouXE05LXTlq071IrgOeicJmSTBz12dZ0352jI2i9yuLN3yjTyiRaPaSx9+h
	kuBuX8zvg8oWJE1xuZtoK/9fZ+7s/HNE8hmrF3bf0O1vCNUDtsSj7+yFTy6KGX16
	mMTxwA++7vKfzbdqTcI4y52Bq8UA6y6of+6WLDRja5FgNaXoQ8Vq/j1tF9ekWCi+
	Fp4DGg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amp56bg6c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:41 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b4933bc4aeso4672888b3a.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 01:16:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764062200; x=1764667000; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=93W74ueWuFz9Nk5HtoqIioLdWflTDEA6quZ138FzovQ=;
        b=ISdnBUBieFTDmzEpoNX2Q4vF7Kuwo0n4PAXa2V4wwz5Mp5IfHqnYbj2dC6MgU3/mLW
         gmJZbXqnB/tuwlbHcDfxFXcD6VOftM5Y2yNXjSMTUnfMc68VDkydODQz5mG2iNLasilI
         HHuNCLsaam6z1AYohHdpzKGAWwG1j3HWhgvjEl42M5FNmGRgx/XNgDnkZkCZLKmVDYpL
         iHXi2EaAuwsS0MqGSY1K1QJi3wGjYZjMmKyIKzsm2qkYwOLYaXMznKeuCzshWATw0fVG
         qsj5Q8FN8kzrcvG/8eoktj5kePn9wnxf8F0xcWEoZK34CbtKjUr7qlESxQzvQmgEP1hn
         NB8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764062200; x=1764667000;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=93W74ueWuFz9Nk5HtoqIioLdWflTDEA6quZ138FzovQ=;
        b=RSaT5kj1r39pcuvoACRqtn0Win4FvusToRSWU8ulFl7R5GhvTjX294XwPAY/YtNdyu
         6eStwd07IGviX8CZ5yNub8vZ4rXXPdKDW+Bzg5a7il0selO5wSjBBi6wk8XPH2DRpVlv
         RKdxvcJmkeNU0HV5cJHSC2jJJH2MFlLXRdKv0sxkRlS1QtupDmDzVCoLcaIh8xsorqmk
         zqx76xicLyuuWko0Nn7yLop/8w6l0sDc78wefn3301l5rlvMYQvwtkNJqPvgBsRUgReO
         pAUP97hCc4n6eL5tGzRQQql8PNbbMB5mYN+8KygGAJ4AYAsRVhIFgyXbZN/c3g3i2Urt
         K/4g==
X-Forwarded-Encrypted: i=1; AJvYcCXGUeN+PxmWs00hTu2QtFaFP8n7cNdfEHB7HZ4IOK29cnL9KTF9qAjqa1byekbeQ7tF/fc75QA6iB6u@vger.kernel.org
X-Gm-Message-State: AOJu0YxrafbueJYpIBdBvpiXMKDdzuA9o4uwR6kfFn3Yps2mxcYO2dhO
	mg6O6QFWS3AaRets1VabUTmwwbyjbdb+sw7GKgXNEsUA8mPu3wLH/U2DM8GjsuqOZvYtOXd2osq
	REB5i9HMzP4KkaUSYUppW4fRSqq/iKw5MKgANpJ0BPHpXTQ4BUUZWO1H5r1m+zyuw64JgokHB
X-Gm-Gg: ASbGncu66Yf3OjURtL50FD6OHKa1tPS5oQcsczgxrUqJmHueEP7CJcVGL/aOx4mzwmj
	nqUTVU5uURcJRmr/DO4cY6o1elUhqGqI7sl9bVKhuWl1wnkD5YKpOHiG8aDRbLOZwgXnj3DBPf0
	wgAX4yth3YWunhy8DDLUfJDtkDbOa5bDV65VXqSop9/r90Ojrlh4F5/5fsLinVkxQiWG/YWUsDi
	8uxaY3/k20w0M9WKh5MfbimbqGC6662LmmQhFpTcovfTZtCZ3aeVNkXJmocaD5OcaoQmptbh7Ar
	KxR50SfbA22a/AhvoNWciGgxfeluEkdSrwXUEToPnreN0OwnkMtuBOm0goLkkV1qRjEQegGWmZY
	W1K4BDQg9CxMl7AqZ1A8TVkDLN7Ei7uzpku0reyI0X9DsNLVcUzstjLfNnjvSiA3PdjEWkjThJM
	JDEIbKzvj9IQbJ3sG9LSYnOrBP80pHew==
X-Received: by 2002:a05:6a20:430e:b0:35d:2172:5ffb with SMTP id adf61e73a8af0-3637e0b9b1bmr2200742637.47.1764062200245;
        Tue, 25 Nov 2025 01:16:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcPYYXarriaqhHTTPF24jlOm9quQRhrpczBssZcAAbMDXMUFIqQrptWvbGw6Ax8zElLMmOQQ==
X-Received: by 2002:a05:6a20:430e:b0:35d:2172:5ffb with SMTP id adf61e73a8af0-3637e0b9b1bmr2200718637.47.1764062199775;
        Tue, 25 Nov 2025 01:16:39 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3ecf7c29asm17288851b3a.9.2025.11.25.01.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 01:16:39 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 14:46:22 +0530
Subject: [PATCH v2 1/3] dt-bindings: cache: qcom,llcc: Document Glymur LLCC
 block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-glymur_llcc_enablement-v2-1-75a10be51d74@oss.qualcomm.com>
References: <20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com>
In-Reply-To: <20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764062193; l=2859;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=yAilSHIXR2HR1pGhig0lKmjkMCOIMK2FNUAesO/IS9M=;
 b=7dat5upaXBUvhLlNO9AYL4eUCoIp/0KakF2Wi6COVsBZ+gHy3bYXAyCbj20smsEt170h9WBt7
 Cce3dyTSfg1Dejs48VIKjd+GY3UGXfDiNrbvU6i56uCZbF3ZTK9SbP9
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-GUID: DYFQCaVIuuay7sO4M0q6VtuWVy80BN1M
X-Proofpoint-ORIG-GUID: DYFQCaVIuuay7sO4M0q6VtuWVy80BN1M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDA3NSBTYWx0ZWRfX1kOvg0ndvfLO
 gj/Um9aaDg96JXBOnzcDEOcn2Ck67I7GkkAVaSh4LBTjUIKxNrMN4zHKnKs7y/x8e0/+KHPb9I6
 GpwOLQy3vxSjc7DSPwaiKZnZtT+g4khUU/SUX8D3mXChTTA5eWpd02h5orOdbP4r9qPH6bzsk1m
 yrqiSh+p0b/3iWjxP+Oba3KAqAErN580nKv8hi+2xXNPQx8tqTUUtWYgHCz8BvE9u6vmWnroc6G
 boEZ2xJjTscP2k7936Knxb556DlKHb+MwkFFJaAt4mHFeBkRloTFZGoNkKDxMtvTCvkeJr/tmuQ
 pdePdMw/H/G2gYoRXLxEK48bXbrHeyW8skhfDw5PbpL2AXwXSTzqDmdQ3NY11WzeSdDv8rZE/UQ
 gL6aoq32ociCrBkqzJShOR0K5ZSSuQ==
X-Authority-Analysis: v=2.4 cv=dPWrWeZb c=1 sm=1 tr=0 ts=692573f9 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PUoVtFHm2Id53UaNtWkA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 phishscore=0 malwarescore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511250075

Document the Last Level Cache Controller on Glymur SoC
Glymur LLCC has 12 base register regions and an additional AND, OR
broadcast region, total 14 register regions
Increase maxItems for reg and reg-names to allow 14 entries for Glymur

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 .../devicetree/bindings/cache/qcom,llcc.yaml       | 47 +++++++++++++++++++++-
 1 file changed, 45 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
index a620a2ff5c56..4e99c405aea3 100644
--- a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
@@ -20,6 +20,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,glymur-llcc
       - qcom,ipq5424-llcc
       - qcom,kaanapali-llcc
       - qcom,qcs615-llcc
@@ -46,11 +47,11 @@ properties:
 
   reg:
     minItems: 1
-    maxItems: 10
+    maxItems: 14
 
   reg-names:
     minItems: 1
-    maxItems: 10
+    maxItems: 14
 
   interrupts:
     maxItems: 1
@@ -84,6 +85,48 @@ allOf:
           items:
             - const: llcc0_base
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-llcc
+    then:
+      properties:
+        reg:
+          items:
+            - description: LLCC0 base register region
+            - description: LLCC1 base register region
+            - description: LLCC2 base register region
+            - description: LLCC3 base register region
+            - description: LLCC4 base register region
+            - description: LLCC5 base register region
+            - description: LLCC6 base register region
+            - description: LLCC7 base register region
+            - description: LLCC8 base register region
+            - description: LLCC9 base register region
+            - description: LLCC10 base register region
+            - description: LLCC11 base register region
+            - description: LLCC broadcast base register region
+            - description: LLCC broadcast AND register region
+        reg-names:
+          items:
+            - const: llcc0_base
+            - const: llcc1_base
+            - const: llcc2_base
+            - const: llcc3_base
+            - const: llcc4_base
+            - const: llcc5_base
+            - const: llcc6_base
+            - const: llcc7_base
+            - const: llcc7_base
+            - const: llcc8_base
+            - const: llcc9_base
+            - const: llcc10_base
+            - const: llcc11_base
+            - const: llcc_broadcast_base
+            - const: llcc_broadcast_and_base
+
   - if:
       properties:
         compatible:

-- 
2.34.1


