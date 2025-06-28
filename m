Return-Path: <devicetree+bounces-190630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E46BAEC44B
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 05:02:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C8CF4A1354
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 03:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B16921A94F;
	Sat, 28 Jun 2025 03:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hnuOdl8P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8D21F1315
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 03:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751079764; cv=none; b=ChW5BuidI6RKXuM8tO/GAEKprcVo4sr1ecnZuSRMoJ4s3w4TY0yM8UkVNVmY9SiMvZBYJw8XE5nKgePTw2H3zdN9m8aQuWzpuGRFY7ckwXari9ePBwUUouKamOvUtYdCkjqU/711RtMoQQ+JuEr5aZXWDSMyPFWOoutdcNQ8hjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751079764; c=relaxed/simple;
	bh=9YGIHaPZZVo6xs/Nujkqpj0XLB0+skv7YqMwQaw0Vhk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aJ5+gvWYB0PVTFGYiQKIgViOuZILJIqZbSVp5ZTieRx1A72hAIA9uGwlHcfkq7cpCUKVu16q/tSkx5CfOeA7Kia5ACK2EIqtfLc+hhh8NQT1emXpgQ5f5JQO22qa+5kpLppbZEzzwVxEXGECLji7jmPVptmKJCWH4uNRHqDMn+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hnuOdl8P; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55S2vBBl023656
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 03:02:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pn8lRprkqEuCtVcvMr9gW99dcctgojrtSe4TTaHQ1lI=; b=hnuOdl8PyC/YIDJp
	X68NVOQ312PUDICEvpyATg3ejvJz60foBVljFVZmBQYrZzUh5sjeqFLnlefVmvFq
	jkApPpDz2nCHT1NJ+WQRhg3rtzoBAVvml4Gh1QyBYECAQ0uyMh4ebVW9cpimTXm7
	xjsjKU65ZBBAF1QzjWg6RzvpG2ggcCuweSnaOw+PfEcShLBJoLhRgSXEQuqc5e5K
	jC+OtcV9gk/DqLlrr36y/5SIuGpahVYRNrTOyLQ5zeUcn32NI9e8fuKoebH/Ic8o
	8HYiT2cwTGi1ek8VtoOVjafFHeRQxrupJo1fqyGqH+pAaqGgczkknmLXE5IfEsxk
	6LiSdA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa51rtu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 03:02:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d38c5c3130so67316385a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 20:02:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751079760; x=1751684560;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pn8lRprkqEuCtVcvMr9gW99dcctgojrtSe4TTaHQ1lI=;
        b=cAFi4WGmoIN0dAuZO2xsBa4NTrKDmCQKwM7EOTNubO4g0cASSCe9r9aenhAwFXQRyf
         AIvMZmrpFLtasnKaFPh+BdPVzr9lkNugt2qEX/NIXrjH/nFh9c1eq+H9KXgNAh850NQ2
         djFK6CNzCqX6WjtfbVjkNt+dSDDUxADwDlgujDGT2gpIf/5hn6uxXH+TdsACK0WcsQre
         DQ6/EsS51+ifRG56K8zUQ2wERADFqFhRihOda54i240I0Vr6pYby49CDvzsd3FpTEHU0
         ZTZAM6Qa5IIO6VRGU4/baWkd/RCdvVne6vfCcrDaEwjbrYG/hdHiMgKHpuN5Vnqajf+P
         QfcA==
X-Forwarded-Encrypted: i=1; AJvYcCX2m/iZxJBVfv4j17SN1yGjsL4SG19fK+p2atNDnElBWQYAwclVkyWFoAgapw6hnaRLgHQQMNqYY5iJ@vger.kernel.org
X-Gm-Message-State: AOJu0YybaGUUoCPBmY1zGBUncm0jtL/VwLzdagQ2kLzBbOnLhZqm/0Tr
	zHV6ArMTZ8z6tF4FdN3P02ZkYrmCANlrig7wXvrdkfwci4nLC70slsURGA+Q6PD5yawP8HoI/Zf
	H5ReEnJckJEjFYjwNsRuR9dK218COo7QwP2GOXTgfAl/WM2Jb7ZnxGi5eqLBiH+3t
X-Gm-Gg: ASbGnctBjwUAD+2sA/ERNgxVNDzTuG8H/plgtUo5xzJgtdZSqOEMMVNlNOrJSZFpqHD
	RnlJzYjHsTHh4ShDJvOBW55MsYZzWhJETE6aqAqRmoJ8zjMKgWfzhRDjkZMiHAy8zqlIrJ0IJSr
	rJKtfQ745vB9m6wAYLn4Pl1ekdkazS+n6cTFN88waEW4DMKmPSoCxs28tjAxIqtbvAfRmUaBbl6
	fA5uwt4J72cUG9G1fHMWBdlRu1Ee0Mqpl7M4mZQACb1rMXn6A7GDWo4UzT3Mlf72A/hKz92y4ay
	TEALJKlvFVM90fv3Q5FCK7tsWQXXIUsebuuJwb9bJHJImkkeTng8+SVwoDINtDl7iTObswimCet
	xGWFVhM5Ji7dbFzZA0KEAQO1F05rU9LXxJ2o=
X-Received: by 2002:a05:620a:857:b0:7d3:f63c:7ee0 with SMTP id af79cd13be357-7d443994e32mr745062085a.27.1751079760538;
        Fri, 27 Jun 2025 20:02:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGB6sLiLugweO26s+56NBhBPiiwhHw8p8mHSNpYn0MXz3xXHY1sPymiLX/dVkwjFIvSygbaNQ==
X-Received: by 2002:a05:620a:857:b0:7d3:f63c:7ee0 with SMTP id af79cd13be357-7d443994e32mr745058085a.27.1751079760122;
        Fri, 27 Jun 2025 20:02:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2cec36sm652162e87.180.2025.06.27.20.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 20:02:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 28 Jun 2025 06:02:35 +0300
Subject: [PATCH 1/3] dt-bindings: display/msm/gpu: account for 7xx GPUs in
 clocks conditions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250628-rework-msm-gpu-schema-v1-1-89f818c51b6a@oss.qualcomm.com>
References: <20250628-rework-msm-gpu-schema-v1-0-89f818c51b6a@oss.qualcomm.com>
In-Reply-To: <20250628-rework-msm-gpu-schema-v1-0-89f818c51b6a@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1390;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=9YGIHaPZZVo6xs/Nujkqpj0XLB0+skv7YqMwQaw0Vhk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoX1tM3ZQjq4fHNRB4zWahpGOQAMg5wqPQjtru0
 jA5BsH+jqGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaF9bTAAKCRCLPIo+Aiko
 1fraB/0ZgBnsS9r93leQrl17L1FgdnbkPwM6M4aMOHWDeMy62TP2r4PIX2Bz6oUb7DsbvzSkIvD
 5DBQ6e+uEoJ/5xfFhapiM7DO4/mXWypigKZxqk8ZUxu/bEgzCyNGryBDMuiyCASKd77Y5qmCZfq
 FRh3t95lu9UQR5xb3uL/pt/v/fuys3dMw2okqnYCa5w6yQmaPBN6wTRDwoqe9kNZTiqkaVByF2M
 SxaOCNCmEeVbvGKwTtsSze05O/DuL9mlGtu+Jm8rN3C4W+WbJaoh1p9mJSHlcp1v9omtZ29y25o
 jNJjxvsfFdS+8BRvmk8/E2mSw8XWisiLxMAG8/P2i9qseZyb
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685f5b51 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=_Kd42T_lrbdN2LGistIA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: zdKS1j7xFlgxVjoC1CdP5oFiQdOF393l
X-Proofpoint-ORIG-GUID: zdKS1j7xFlgxVjoC1CdP5oFiQdOF393l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI4MDAyMyBTYWx0ZWRfXx+OUopP4QqEA
 +ffDvPiAr0i011TTIQ4nfIy9acrRCWhoBu70K2I+OzLuCBVdSikbcDGR2SIpjpnjv+grdJO0W6Q
 hGgjyXJmA4yV2EME+QVgroNld09BoIwxqZrLQ6ZZnxfVV0kT10x1yicPx4gSIQ7yk6hr49KPiKK
 U5nHmNIyCjV2QsoAP+Hs13X5sJb56h99QcM92ZFuTKRdx0gw3vx5eCxsnGMZVUYoPgCsV7mIZ1Y
 6eiH1HiXXkidZzYruT0xjsZTjSEQr7UK+JyTsx2tXJnC6kCXyjsEg1t4N/NrUF8P4AFTl7l/cpB
 T9HhIjY+4G5IqDcyyaalpzG4Og632D7iQVQOPe+VYxcJTlg7dqglyvonsuy4W39bAZNfYx1hikt
 YstTJbx2DbskKVlW0jZPM1V1Xpop1dn4mQres4dGE/qBeszT5/Eg6GYgCjf3qGvGB0VUYeCI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=942
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506280023

Handle two cases for Adreno 7xx:
- Adreno 702 follows A610 and A619 example and has clocks in the GPU
  node.
- Newer 7xx GPUs use a different pattern for the compatibles and did not
  match currently.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/gpu.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 6ddc72fd85b04537ea270754a897b4e7eb269641..97254f90926030c4a4f72ae5e963af1845f0dbbd 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -187,6 +187,7 @@ allOf:
             enum:
               - qcom,adreno-610.0
               - qcom,adreno-619.1
+              - qcom,adreno-07000200
     then:
       properties:
         clocks:
@@ -222,7 +223,9 @@ allOf:
         properties:
           compatible:
             contains:
-              pattern: '^qcom,adreno-[67][0-9][0-9]\.[0-9]+$'
+              oneOf:
+                - pattern: '^qcom,adreno-[67][0-9][0-9]\.[0-9]+$'
+                - pattern: '^qcom,adreno-[0-9a-f]{8}$'
 
       then: # Starting with A6xx, the clocks are usually defined in the GMU node
         properties:

-- 
2.39.5


