Return-Path: <devicetree+bounces-220975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A42B9CA7B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:39:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D33A325314
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1172C234F;
	Wed, 24 Sep 2025 23:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="io47iIWU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD6B2BD5A8
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757117; cv=none; b=jS88hy+DUuyc/T6mNhUbm6/PLRrCnGKu+wxdm75cKGTScTHF5gopa4cXr/g7yw4nmtG2ZnlHTEd4/cIY/dhOwtp4wmLDT3X+pAxCSjgYxhJ6/e3s3SvvH9Tppkh9yJWKOdGeNZVs3CJ03/fZfzpzPbQDY5X3GsNeVJpA5ohA5p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757117; c=relaxed/simple;
	bh=R4a+xO6YzjGKd8+xDBkkEFUU0Buw6iW5iNLWRTb2GL4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oUlElCD6yfZfmSPgRNRLBuGS2KjKG8SKPy5WRyMopxrfKL2n3rvAWQYlT+ilG+PYBCTDopWw++rFJI0e2mNgR8+4BQ6qIGlwAEh1MQcTDa1g+iFLPuhm/zXILGC1FN+pY6OBjV+oDgQnKNTl42WLgj/ZxYqRH4ounJwwfy37mbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=io47iIWU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCu8kX024516
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m6EJyLoah95Eov6Jjxf32aSHBqBRimx6jvDy8Jf6Bk8=; b=io47iIWUbookm9jA
	D6JU4qBtEOB2Ko6ua09b2HQNoldSEuHnB6b/PXf7Bs+P5BVKuvpkV6+bSW8Ryz8h
	hqBdm7BU88WdJ5/vJteG+XywxkXym0A8xlvXy+PVrJoOTmePSD6AutIIPiaJr4Re
	qyGfol2pPQ6o9bcEoNS0NBepLdPgfGO3Fdus0vNSGgDFrpoZHO2DRN9sUNaBhLMT
	2atpI6wGF5KvUOWNsxMZS2FUNWJkapIzJQC3Zn1QY3fKlahux2vUZ6pUpuE/fhI4
	5hhF36NYdKdx6qQsvIRcL/bynZjC+cczSuS/gq5K4oN5t2D98s082MXQ6V5oHt7b
	8VzMkw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0d379-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:34 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77f2191717fso263347b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:38:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757114; x=1759361914;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m6EJyLoah95Eov6Jjxf32aSHBqBRimx6jvDy8Jf6Bk8=;
        b=rjHUK3Ver5bZ7bQZSg+r9U8BplWS4JaxS/XeUKXHza1ntGsg9cQ8QqcPtkVXwhtIse
         HW55GUnJPsldbiR9YCSaLCy/o5rYwTM0s14cMb1jgH129gUtGIyIojcJZlCpckNIpztk
         kAhwyy1VfeedK8fq9cLdX+HcBn61GhcX0aHFVB3kv2rEBtZw0KiCjBSSw1DyYPJGjjla
         wZGFGTr3+PguMu1wU6bRFPOq7wDBhR7iw7F2c28hPRwbQvMeeNWQChKlWMMeor+dVSEw
         uuw5DKSelvDCdrDhgpPfVSzGDT54F7QJqyWrmSw8RVcabMgkJB/2VPsCypN5s1YKihGB
         nUhg==
X-Forwarded-Encrypted: i=1; AJvYcCXdSvpcI/18UdJHMUcS1lFNqhQzS3EjpUaiQbvLDBTGk7HF9TiLv2yL6vOdyjryj87YVz8iTu6VYcb3@vger.kernel.org
X-Gm-Message-State: AOJu0YzAkPbbKfClmYy1Rs3hBXEpJ1q6nHgjVqBzoOdBgf4SyGwbupRW
	GufDVf1SGyLtg30LrTsLuemefV6LWLb9sVjNndIxNXw+t0aHCl4uIXGdSrw6WqeqKLYlcnV/mLe
	TgkSqk/qCpmAJp9M8HWOT4N5cO80P3EV+veohG0x9hmspoKzADgTXumy/2uCMMJpG
X-Gm-Gg: ASbGnct8hBOokCYn8QpY5dwywO/cq/32JyHA6YcRB1s8QU0sKi2TkaZQzM/Ay0eSYbr
	IZOIeoph78TQe3yh7VaCwAU2OkzlkYXyNJLJxkPP1u+KSoQqIDpnOzD4Hi9TtOxSyiCPClbWSQw
	gO8rcSXm/IpWFJrxm2nMRCodFRyqAFE49tgpW7Q4lu9FPu/RpN9Sx2dN/Z+TIabbgFi6a6eM6Nc
	3AnEUjd2Gly2lSCLMYOlNM3PjJkq2pJBuzotKb5Sj1behxV5vlpc+xpAIfYesXSsaAIy/FChnF5
	L1QY6kZP1pG403LxrwmpFm6XrXsxQDq5s2OqvWc/ASwD0v62jYmkCpMFgs8ECIfSHijujAo+CJP
	ShaPfMPao1QaT/0E=
X-Received: by 2002:a05:6a00:2d90:b0:77e:87ea:ecac with SMTP id d2e1a72fcca58-780fceb708bmr1759005b3a.24.1758757113676;
        Wed, 24 Sep 2025 16:38:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlduWD5j5O1dhgkaATz2ppoqEJZiU0V8pGBVFWj+WZPierk/jNzCpKicZ9eurz32EFTkgekw==
X-Received: by 2002:a05:6a00:2d90:b0:77e:87ea:ecac with SMTP id d2e1a72fcca58-780fceb708bmr1758971b3a.24.1758757113226;
        Wed, 24 Sep 2025 16:38:33 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c0709csm177056b3a.81.2025.09.24.16.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:38:32 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:38:27 -0700
Subject: [PATCH 1/3] dt-bindings: crypto: qcom,prng: Document kaanapali RNG
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-crypto-v1-1-49af17a231b7@oss.qualcomm.com>
References: <20250924-knp-crypto-v1-0-49af17a231b7@oss.qualcomm.com>
In-Reply-To: <20250924-knp-crypto-v1-0-49af17a231b7@oss.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757110; l=893;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=8JJMRPXwStM8oNf/K3bPstEsS8Hn9PWNKSZdyFsUQrY=;
 b=7ZtmwklUf3aLvtvgw3SS4Tvxs6sh6uvHucPTsyLs+6ggmonxS6D6kEI7Nn3EH/f5SXIdBiKVN
 mZelxeIg8oUD5vp1p6POExUGZyk+a+OI8fDDkp1D9powFEpnM02RF+i
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d480fa cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ou92kEv10uOBaGRFQZkA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: sJi33OrCosmUHf75iVdEdxjhzu8BPN-y
X-Proofpoint-ORIG-GUID: sJi33OrCosmUHf75iVdEdxjhzu8BPN-y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfXzJCLU2JW6cvh
 AlMA6yowNfIOes1o9qJvOPOXG9mKGHXqsjed9VvFF9Uyl4d5w1z5N91kxasyegi50swgtciL6jO
 ADE64u6fisCOFgcCs6YZKnXGaXL8CGMtFdWfROJMHyMdT/HjPThCe5k3rJxasVpTrMw2wlogwb9
 pAVmhqNTD+XA4UCeDxXR29h5Wh3jBTHNL6a1Yi6NvA/c14qs5N/3uX+0J041w6KnHXEIzgqR80a
 c59oMERvEItI0UUZrKIfggc/sr1UlFklTflgF0keZdyqej3CJnG9qgqq+CJKVt5MYWuW82Tl+bG
 oWSdB8plI3hRS7YwZnUiFsBlswvcb2CRcpQR2CjjvdhfmWLrp+9bfjnRm/IIoLWj/rTskrFc1Oj
 vf94z0bt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

From: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>

Document kaanapali compatible for the True Random Number Generator.

Signed-off-by: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
index ed7e16bd11d3..597441d94cf1 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
@@ -20,6 +20,7 @@ properties:
               - qcom,ipq5332-trng
               - qcom,ipq5424-trng
               - qcom,ipq9574-trng
+              - qcom,kaanapali-trng
               - qcom,qcs615-trng
               - qcom,qcs8300-trng
               - qcom,sa8255p-trng

-- 
2.25.1


