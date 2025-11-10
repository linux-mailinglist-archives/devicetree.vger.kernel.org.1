Return-Path: <devicetree+bounces-236841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B661C481BF
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:51:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CADC3188DFCD
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 16:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26D2532ED4E;
	Mon, 10 Nov 2025 16:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mfb5RfcM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BoIYBQy+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A3831B100
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762792846; cv=none; b=ROjFtqkQ/wcwsIlBsLydCIidkzSZ+b1V9E1XNERekQwjBwPL/UnGAzlqBlULfql/pjk9SbR6o+SqFARgbWkuuBQVpZ/knlSuVmqYfg+U2HQKK2rgDrAMuxkmLgIPftGhzdinFJFxMT7gVAEPf0w7+HhDOBlKRrdM1+7zsCERyKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762792846; c=relaxed/simple;
	bh=NcxT59isJ8a73ABBo5632Wjovo4V8SjmsWcRhDa2gQw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VHt3qWOtLoZvT7e2z9SgnZ71zu3Si58vkCViSGr0EVZPam6ypC15ri0NR9lAwvKObE/i+QmLPl4WBK3b/djFR7GcCHww6vb1RjL1glcSgjYmHIy1CrcU2U0QvKVtJmbNHfss3+U8/vjLnjuuEK65+nXTiWqGGgveKCyqHE5a3YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mfb5RfcM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BoIYBQy+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AACk4Sv2408556
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:40:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NK80NgI1LQ+xDyFsHtTpc6wl2L9uxC1wWhpBghxroMY=; b=mfb5RfcMzuKHoEwN
	bE/7sAthi6igUtT7/JkWPEeev5XN9rHHFoloGCk0VSPlSTJG/dFXReEi9t/AFBwF
	rLZOEj5lM0LS5lQodxix27ElTFsUVSWdWpfmnn0RI2jvTQB1wyMIgul1RZmgYMNX
	9rP9bkQNkRJEz4VpaQgvOBKccWu5MbtL1J8lX2xtbaws10fA2Zng1C49+WajOKC3
	ZghEAo8v/AcssjoShvDRK9kH66nbQ+SZsP4d71kPVOoCbMlwdNpKrQC3jhjDbrRs
	M+y7S8EKKJQTlh7J1QFtJij2Nhtgxngc65a8UVrLyawJGF4EKvPz7jU8rxty20MU
	UvZ+hA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abatd9v1c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:40:43 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-343823be748so1919042a91.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762792843; x=1763397643; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NK80NgI1LQ+xDyFsHtTpc6wl2L9uxC1wWhpBghxroMY=;
        b=BoIYBQy+xeS4j/gLdjlch7JC4YKpDIGr+DajJE7xuWoT/hiNHWgmMZllC24jBjlvEq
         ym28J0c1QhTuPLptOb9LvADOrgZpog9VNJMyNJ5+cS3zsVLc6U+0NhsAV12LbX/a+akk
         r0Su+uIK2J5Jo/WdQWGYXa1LzkOz6/sZdALvLIrswCIANVYUV0TbSfJBxEsZCQDblAIY
         /LAftkwRPXR06uXf7CvlhS3vVKJ38B0fjzJwEN1b9D9H2JU3EVOfqYn5JLhbD74azjZt
         EE+vMXBtSjtijsKaS6szBcHZnVfCwkrw2zlYQkmx+tpJesopmmynlRICO4I/6nhckyxk
         rzPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762792843; x=1763397643;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NK80NgI1LQ+xDyFsHtTpc6wl2L9uxC1wWhpBghxroMY=;
        b=EQe38Wh68Uav/vZMLKQe0dv850Sf4NVW7zyGiUYK4L3NZPKmEIpDzTrWO812FAelfe
         qL4ybJg+0vbAWzNy+OjeKnVBrOWYWnDFU7T/4P0now0HOI7kth+XfXif18a62qAa6q/u
         mRoyyh41/mDxuRH3zVJaY30zz45mMN33MNzVJM1QHzxDg9EMd2rExWEejFPV2st4b6wR
         qRvgz+m3cYckvaHfR7Tu1LkZAlvm3EN3zfuW2OitiYovBp7Pwc2P/buGrYQhs9h3R73q
         /F5i5my3n9BorRNYvFTQmpNwFnri93n9ggl52h7LXAd5ZgmJaOJUwPTWDHpt+HEfeYwm
         A28w==
X-Forwarded-Encrypted: i=1; AJvYcCUGEAJi9JQ+r8Yl9SnkBIgjtqHUrZb8w4+lqG/UjyycnS3tfqR4f/RzMZsDnhZBJ1Qm/q3EvfFewwTb@vger.kernel.org
X-Gm-Message-State: AOJu0YzDZH6S56eLwpVgKTou8vSCSZEmpUuZuyVbXTI3Uv5YB2QxGtel
	ygdsFFLHKY8ljHFtneHvR42AskGYkBY9UHzry2K14yTJMDfd+z4xDQLDS+uzkCCBbZfEI1sFpIL
	oBb7edBYqVTctrpB2m2rGDR0BF9lBkltBuGPBBoF+Vxj4kLsacfON/2zfZQ6xk3UW1x+XpCQS
X-Gm-Gg: ASbGncsx/ALkudO+vsuvf/EUlBba7eulqtfAXk56rjTFg4Np44wBYsoHPz47I6NYe/2
	J4qpkTnx43dMSNjrPr+ChXDWsh4YAcz0PLs9DJQOmnGdDQwigC5UCZ61umA5X2yxibW8iaU39Bu
	+qVJL98TX6W7RPvr0K/2QkcXsd5nUbmzi8IdvMHEjZp1E21vGomyrCLYxCP7VTpiehMdBJM6/E0
	4q9kSu3uhflZoXioo9rA7FAHfuUQ43CS5vWsKnZwKSqn2BVQjqtsGd8OCBfhiOZBMqGjqjAePwB
	+z8QUOm1Im93dDqC645692OBZ8Ngv1l8ihstYBfY6P0pMyaeEK4Pk0r5wSF0Jz0EhZZAnPaqSBa
	NbuZxyLLUeFKqtNHk/t8lF8Q=
X-Received: by 2002:a17:90b:3bcb:b0:340:b152:efe7 with SMTP id 98e67ed59e1d1-3436cb91d57mr10342258a91.11.1762792842919;
        Mon, 10 Nov 2025 08:40:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKgiLlV4ge4N7aykjwSwNvV4o0Enwd4Uv2Fhb5/BsT0fXjzUdfmFl0uh16HkMMpYGhsNkY5A==
X-Received: by 2002:a17:90b:3bcb:b0:340:b152:efe7 with SMTP id 98e67ed59e1d1-3436cb91d57mr10342217a91.11.1762792842430;
        Mon, 10 Nov 2025 08:40:42 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3434c337b20sm11468922a91.13.2025.11.10.08.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 08:40:42 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 22:07:25 +0530
Subject: [PATCH v2 19/21] dt-bindings: display/msm/gmu: Add Adreno 840 GMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-kaana-gpu-support-v2-19-bef18acd5e94@oss.qualcomm.com>
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
In-Reply-To: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762792679; l=1792;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=NcxT59isJ8a73ABBo5632Wjovo4V8SjmsWcRhDa2gQw=;
 b=eQNZUxkw5igOzSHswIKdod1+5/8HKSYuY9+tGDZhsMU72Rcrco55Fm5uE0tPCMdIF2KWAnNZM
 /YOiz8V/KyiDqaG+09P3D1DWGc74RvvkXZCpIovZE2CAEjx+EVlVC6f
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: aWGFd2wihLRg9O_qtG5zUz1_uLAdIkyD
X-Authority-Analysis: v=2.4 cv=eZowvrEH c=1 sm=1 tr=0 ts=6912158b cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=e8idWDajkKX97RI96f4A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: aWGFd2wihLRg9O_qtG5zUz1_uLAdIkyD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDE0MCBTYWx0ZWRfXxg06VS0VIOl+
 M9Lg8g/7al23+9siK0OTYQ1lHe6hhcs3hWhxgk/rSnHJZB/XHWgYzqKBPUnCIMAAeQ8WE9PZfru
 nm+faRsYVge4gi/46Jon9yGZTSTmaZpm6E4+wS5mzl9XZlxu8Ogqyx376Y3x0PSK0igHyp6pVjL
 BbbkPduzG1fIBbRfehO8WLYXgceGAAX6B1O7wGjiuEGP+D7A6xUGZoRuRoEOCqoEHC8iEHfJT7V
 tVuzlABDqUKQmyH4SF+fZfIss5fVTSnJSTsKsZaaAsvU8MWJJP7yjhvjZlf4M4F8qddAAnW0i28
 uNeqX4dcT6o3l5JjtNnyiYtsxo2RqRd2I4gViNmx2YBTKLsOwX4eySlouSCYnIvvzBW8yGqlOL3
 ymqiCs5xu9sN7cGmxCPEqi2yQ8q+NQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_06,2025-11-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100140

Document Adreno 840 GMU in the dt-binding specification.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/gmu.yaml       | 30 +++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
index afc187935744..2ef8fd7e9f52 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
@@ -21,7 +21,7 @@ properties:
   compatible:
     oneOf:
       - items:
-          - pattern: '^qcom,adreno-gmu-[67][0-9][0-9]\.[0-9]$'
+          - pattern: '^qcom,adreno-gmu-[6-8][0-9][0-9]\.[0-9]$'
           - const: qcom,adreno-gmu
       - items:
           - pattern: '^qcom,adreno-gmu-x[1-9][0-9][0-9]\.[0-9]$'
@@ -299,6 +299,34 @@ allOf:
       required:
         - qcom,qmp
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,adreno-gmu-840.1
+    then:
+      properties:
+        reg:
+          items:
+            - description: Core GMU registers
+        reg-names:
+          items:
+            - const: gmu
+        clocks:
+          items:
+            - description: GPU AHB clock
+            - description: GMU clock
+            - description: GPU CX clock
+            - description: GPU MEMNOC clock
+            - description: GMU HUB clock
+        clock-names:
+          items:
+            - const: ahb
+            - const: gmu
+            - const: cxo
+            - const: memnoc
+            - const: hub
+
   - if:
       properties:
         compatible:

-- 
2.51.0


