Return-Path: <devicetree+bounces-230044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA7CBFF30A
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 06:58:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05A3E3A94A8
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A196F25FA10;
	Thu, 23 Oct 2025 04:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VqlljeAx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFB1254AE4
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761195475; cv=none; b=iUSe8yPIkgTgGct/4rQSLQvfl+rYnpwT5K2tfvq3OFjO/1z4wQGKNSRWgzYbkX37v01Kloucbs96bpvYJ5/fEpXZLSNlZgjpdfXv3/A9J0roY0Cm5Hzii33nTYI+cX34w7VM0Ub1yMkMnd1CJ4iHQ+tcShnmcigSAcIoFg5msuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761195475; c=relaxed/simple;
	bh=nP3MmgM3OO/owQxwBNTpJAqNRSLheBdloe3A2buJFiE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LbLzF6NHEiDW+PYra9+iaq4bUaftzjd2iHx39Fpn3ynMP3F/DmRGetuk5t8bmd3pPHaY8NQyyLVKIRFEayTV5OsAiu2os4ku1YP4pOgdzBPHlysb+T4VAqqr54HTVyUweHK+enYqfJ2FfoQTNI6FkbKxTy0qxL7V0sYhHM/nvs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VqlljeAx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MIenaM005711
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:57:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eP3LilVKt+lFbxAHwFZtoyMgNlR79PwYtVYBu29OAPk=; b=VqlljeAxZ9/ZLdqY
	ul/IJSz9CO4Uqc9PWrO6LfTJEXWH8XIevDs8Ap03pxFaQ/0h4X3at2Q11HAxVCQ4
	NbzZVY28AlM2aoUnHgn0LGx4Kh2ZMecd1tztRUHtkdiSpj1zQUFtgHjD21dat0Ua
	8QyusXlkD7f98stBui3vJBsD3PiDAcO7dwMVcGi/a4sjiEabqfsJz670O5EZcSmW
	5+YCPbyqZBC5Y3mZh4oHmlLYAt/1fZS5JeR066m4UkJZ88Kny+y8aOeFBjIGJwcn
	L7KwCSUtGlNdK0WGztRqJukBPKuVxj+z/+qZgOJLh4lAruoMWLxUusQWsHdtvfSI
	MKxvwg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27j6ynv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:57:52 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2930e2e8e7fso3329315ad.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 21:57:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761195471; x=1761800271;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eP3LilVKt+lFbxAHwFZtoyMgNlR79PwYtVYBu29OAPk=;
        b=mmg+pQKc7noNPi9kP3Cq0MDxdSP/Zmdfh90BviwzHvKlF00YpvkWE2gzd+pHc0opYu
         l8sOf1l93tyC3Monaw9vXgOnSCXo0eg2scQlNmP/UmdgCugwzYZYV/0EzwCPXk2iu6Cs
         0JeXwcwrHyPdhSyiWfZ+3TrGua4OqIIFjYFBbq6xxrBb4VIyk8JKeTIB/P98/FlHlDWP
         xjVjDqkiDTdN/kcNg0NxSnWKYYUpBpEKxZIsnTKnWhFHcKjhRaHdD5cyGrwStfIZ9ZtC
         OfM3q0/nrhJjwU4cI1d4YZ+laDC/c0i2IO0Jkx+M9toIiuitd86y+neRSdczswU2z1W4
         6Pjw==
X-Forwarded-Encrypted: i=1; AJvYcCWlVFR+G083CvA6SBfrjV7xuMJ390kKdNdRvU+q11ak3D1GA9L47DqoNL0aIcSSLJwnJfyc/rvoF2AL@vger.kernel.org
X-Gm-Message-State: AOJu0Yxvin0YfASHS1LtorsxG9Uru2/5GHKLtLa21TB1ouVk6CVqclHU
	flOUA7OZp/jm5tBOiuGHMjdKYn9MTTQZYxwMDeyE5v+HyrEIdwwXDwpN0cTFL1mvykpb4H4tfvJ
	Wn7dF679dS/aznKgupz8GqAMYSJS5E5vemvnnbvurPmdN7tcCaxcp5sGtwb0V33po
X-Gm-Gg: ASbGncs84RbW6FSOialeavt4Z7C1/cA3M1JZ1t2xUdsEQOWWx2P53CLcE+2N5yPqDta
	jukMqbdkrDocw/v258bnuKC7wCNug1ixANSHNR7xhIdVMwSNJLnEMWoFfanB9bOrAjxRw1jlne/
	7P4l+ZYvXPJoP9g0IGvEunsOHkFxBSoKJ2ifkWzDTRuygo5PNRv0LCI94oqjYfzB4N654bLqikT
	9IOWEmn8gOxZiIjkl4eS3B8mzFBNU+TKD2o27f8dERaqX29XBoN4vMzv78ZovGAEmYeRq8BcSSO
	Vs6J634ciB3JZX0xPBK2gZoEW8qzBTjYPAtdfDx6Bs42a8DnjEjhX4T4QR0EAPnp+k3nGaLNfNo
	ARIiKH8MgCede5Ql0uWUf1zKaqKSlh+jgxPdkCiHvXeZNv4gEZg==
X-Received: by 2002:a17:902:e5cc:b0:267:95ad:8cb8 with SMTP id d9443c01a7336-290cb079f2dmr335533465ad.44.1761195471575;
        Wed, 22 Oct 2025 21:57:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+qpSBs+V8iCRJV2Qk2k/Fcf8PfbvACLZjNtJduMEIfCiFUZfla2Qz8/Nn5Aq+sQw8fr1wFQ==
X-Received: by 2002:a17:902:e5cc:b0:267:95ad:8cb8 with SMTP id d9443c01a7336-290cb079f2dmr335533135ad.44.1761195471072;
        Wed, 22 Oct 2025 21:57:51 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4bb86cbsm814289a12.7.2025.10.22.21.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 21:57:50 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 21:57:36 -0700
Subject: [PATCH v2 1/2] dt-bindings: arm: qcom,ids: Add SoC ID for SM8850
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251022-knp-socid-v2-1-d147eadd09ee@oss.qualcomm.com>
References: <20251022-knp-socid-v2-0-d147eadd09ee@oss.qualcomm.com>
In-Reply-To: <20251022-knp-socid-v2-0-d147eadd09ee@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761195468; l=696;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=nP3MmgM3OO/owQxwBNTpJAqNRSLheBdloe3A2buJFiE=;
 b=aOQgNkbU+JOoRlizxASsWjq+JPXFnkbM+kN4iMrgdpoa65lEsGUtqKm+f9Ngn3FnMaEKnEHTJ
 2lz1XEza6ajCGR0tmL6lULyKTEFU0WtDaOlsbiOn/8AaOW4wd3ckHo1
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX67wQfHxqU60p
 WTXf4PRg//WYRwkSsJnnbP1vG7duHjdGDOtQayI/Gb8bvY7EqW+kJba8GZ7+kDhzdvmg/6d3ic4
 V3JRu1pnkuC/w1Z4W6r7uVjR6ZURFZc6g6sv7Z2V1FVYWpB9KO6g2SjBXrGvNyrdKcY/djY5NmX
 XrfOskfBsIGoFQVH+cpiStsGzCSLdC9nGvD7PW/oD69KpB/nsGjtQLIBZuORHK7Knz8eQJ7QpVW
 EOwMDKGcuaAiIauuKT69QdYaBAjlbroBFgGx8Sj+JNoFyn4+ayVWo0pmT8pMG+AokqcWnOvwnqh
 PDFghiyTPGdJDQKBiBYxIKjdSNmkP8MyLvu8PS6F6/RiR21Kt+MhMQR7ev8ncxRc9v9KzxQsUJY
 Bt/OWnqb425yu6yWZR2PXV1b89NBMg==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68f9b5d0 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-GldTGkhEULYXnHVInEA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: V0J9Ft2a3P1oaEnBlbmPSMlNF-lQOtv7
X-Proofpoint-ORIG-GUID: V0J9Ft2a3P1oaEnBlbmPSMlNF-lQOtv7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

Add the ID for the Qualcomm SM8850 SoC which represents the Kaanapali
platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 include/dt-bindings/arm/qcom,ids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
index cb8ce53146f0..19598ed4679e 100644
--- a/include/dt-bindings/arm/qcom,ids.h
+++ b/include/dt-bindings/arm/qcom,ids.h
@@ -286,6 +286,7 @@
 #define QCOM_ID_IPQ5424			651
 #define QCOM_ID_QCM6690			657
 #define QCOM_ID_QCS6690			658
+#define QCOM_ID_SM8850			660
 #define QCOM_ID_IPQ5404			671
 #define QCOM_ID_QCS9100			667
 #define QCOM_ID_QCS8300			674

-- 
2.25.1


