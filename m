Return-Path: <devicetree+bounces-171011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B005A9CFEA
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:48:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 270627ABEFE
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:46:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31FCF2163B6;
	Fri, 25 Apr 2025 17:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V+Bqg/Rc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A05932165E9
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745603239; cv=none; b=tPaIBecZTNC4LQe1yKjT5fonTl8xfVvLSWsH0eX9r57dAklpkj3IhYjWk0U3bK2S9vQE6tAvGj8xRtFpSUsHa5Amn5EluKuk7n2VHHs7meXHC4ZM2wyVAqWzz9fn0VZ3rIGXAY6cETzZ1BPFOdu8F4w9Zwez72qnF5eFCNVtYZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745603239; c=relaxed/simple;
	bh=j8aNBL78dlGDp6ubghqzb5EpCs19vQB7AjDT5wAScrc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cnWb/yZ78nV5tK6rscachzaZIAjWQWivRDQmkbhzMJycOkygFvxDyTgAMihirdfeS4ECEEdttlp+BlGSrVAgdbHCMPJKLVRHH5P/eQuLK3Zl1ErcTA6zEaw1d3dE5OYx02NJisaiYiosBOct3tlI7A1IAaEdTsxb09Gyuw9qFmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V+Bqg/Rc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJq08004638
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BjF/ocdHV2gAOAgtlX9D3SCyO40KdLlspPA9rA2BnyA=; b=V+Bqg/RcdzT6KK3c
	cQIkvHWyFd1pkKlywurOaW5Gq1aQBf6cVxTCqBl+1M5kn2Aq8PwrUzQk2LaIrT+o
	bF7zlUe/WuN9vewYuvt/ZYAiYLjL3KuLaXq5eaUqxR+os53ALVovZjTOKQhg69jI
	QuKCcRm0ex9yQoSstYEBx8ZyuRP6x/0N8vjLHBG0TkMxzpU8KGe5OKK2v/TopVAZ
	eLOuw154spYTmsesDJ/PT9J9SsVXWycJK4fOWiM96JecChL2IwkShS1OgcAcUh2H
	LMSNPB+sPaXK4K/PDTl64NpoRIFJEaBoeZCa0DLczYw1oD2h63PwA2e/T3sEKXNP
	9UXJvQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh09w5y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:15 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c544d2c34fso363512985a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:47:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745603234; x=1746208034;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BjF/ocdHV2gAOAgtlX9D3SCyO40KdLlspPA9rA2BnyA=;
        b=qajpNu34LUFwarEYhdwTzBB9EAESkEXl14lMgVc1r4zOwJ2Twuj4IseVL4msSM97dU
         zyEPs7E6ZPemhPaJgVuwCCi23CPz9V/n3348GuSqR0at8pcH8hbCPVXr9CE6A3nKzZLb
         9zNKJJcbTVPfvtUkG7U8PIuQ3+lbinbvbGkgvjzkrXcuBmGxc2OB6FHkdfTd6mBcIO25
         vNvDZo2a1LJSMqH4sW3Qhl7NlAoh9IDKRLRjO3FqLFUTUL4niuyMN5dpQKdcHszH5Pkz
         3XP18SQUhsB7p0ShkT3J2bF7VVfYXkhbZJ+Lqc3tX8zJK+zDTxbXJ74sXd2Z8i5pphIf
         9xNA==
X-Forwarded-Encrypted: i=1; AJvYcCWqn0/m+U6sz0OaOtLpzNi2wteEbAgCBhFAPg98HwlQRtuEfvXAwzeTG4RKAzaf7n4lpDv5pLwQLl8C@vger.kernel.org
X-Gm-Message-State: AOJu0Yy45B6w6gOtQGfGRuGLpupYvoF4zXTY4p4NZfUCpBR8kCI5GbAo
	jHZLbXRvte6Z0/fu6AfM3IwjgmPqqbQrGQwU8x9EaIXmrLNrbo2t7NRyqwO/PzzH5PQzZoskUwP
	GEbDP+A1Sd6KJ4skiIXkZcw47J6zrjYAECMxetFO525icC1C7P5UrtKnNzqQj
X-Gm-Gg: ASbGnctwaA20bqGCxy4kCP4rScRtf0Mm8VXAcaX7z9Yfe8FYdhgG94IbknD1MLTgiCJ
	Ea8aKMXKO4RspEz8yPMrsbVND6bq+dRaGe2WKrE3BlvKAs137Ng7iXW7GCR+/pMaaMADS730kBq
	7KGozEXkEvE/chOV7hEJ6n1SfrXbjSXDrKaaCY6n9haGCYqKNb+dp1Sxnjx9GPqtUXdHlWLgSFF
	7EPXWfTN98/mugpeUdkcJnUxymOxBW/6SjhvBrzjkwE0oM21DQBaYlsBjkcq2RMDSmJnSz1238Y
	Yf+WOMNPyGNjbBDSsI+4muKGhyVBfvMzAzqS1nWMKjQI8GWjzdBu7fBo+jaJs1bJJeZjRz3OH8d
	PsD1L5vLnyKoElZBQZGosQO1P
X-Received: by 2002:a05:620a:1a0e:b0:7c7:b5cd:51a1 with SMTP id af79cd13be357-7c966863fbbmr83346285a.6.1745603234495;
        Fri, 25 Apr 2025 10:47:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSC+mrQTmJAdkiOE3OXc2MIEiYkLXFJcskPVPXwApFb7peHxl1WSu9sWzzLaO/eLY6YEKXsA==
X-Received: by 2002:a05:620a:1a0e:b0:7c7:b5cd:51a1 with SMTP id af79cd13be357-7c966863fbbmr83341585a.6.1745603233997;
        Fri, 25 Apr 2025 10:47:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3bd4asm673193e87.84.2025.04.25.10.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:47:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 20:47:03 +0300
Subject: [PATCH v3 03/11] dt-bindings: mfd: syscon: add
 qcom,apq8064-sps-sic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fix-nexus-4-v3-3-da4e39e86d41@oss.qualcomm.com>
References: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
In-Reply-To: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1205;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=j8aNBL78dlGDp6ubghqzb5EpCs19vQB7AjDT5wAScrc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoC8qa8ztCVKYupyqz1bBx2SuD7HM3caM8S/mFF
 uCH0M57RpiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAvKmgAKCRCLPIo+Aiko
 1co5CACoMpRjnOWlxUFIB8QW1xMsYlnZVHnVraKNEOF0xjhWGcflfIJyz7mCkSMMlavmMOoSkJe
 yyw4PQ776bnlSBEoaSGfg0znia2ydQGfobv64XjpoBUinXAV4ls0Cf2z2vjOFpZ4rXU23pgEgz5
 w+czwzZyUOUs+eiyeaUlGR8Oi4UvPkEZXW5BR1mpse2zoGgmJ9NIZU0FycvbWmxiL7jX07cPkpP
 LUrMZ7toWp17izg4e7giy21X2M9YsiVnD/sNyEwKdEn9+Ibd5gsDGND7ZC6FShE6wxFI7C5QGLt
 qU4S31Y1M1/mQUCDWKRMjBiJ7HFJv8SJljn5Kt9fABNdhq//
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyNSBTYWx0ZWRfX8MQbMFS7KIGb Zt9UulwtZnhYz+EYaHbH8Zic8I2+jTeTtZUnL9etvWzHNEmVjK06siEt20TZECzB7lrjqZcPZUR 7Wv/paXwsVjRR2XW+ryk1mytPNuDsDGUHem2c/V4g6N1Qlxv/DZlvxPXXmMC6c8nsmMSuVtQXGF
 4STHIGt/OkWv7eANb54Myo5NU2oFlSQ27BuaGS5iuQr3MOYIHwVYSQEUSTzCxTosNI/SaYK47xM qrSJ/lNSBPpEE4stYwbtmBln3kDQfJlY6h/YNwGotRgSr5FXFTRCGXUlZTw8GLkYvVzxID5BQlP vnGxxlnyUm0FOCXC3eNx2+HAc5wnVIOogPpWtt/6LEUDWqKO37ZP/2Qc05fQig7bfQatCRh3eDa
 RzPWKqYd596YgjRuVDlt1KHHOgSdK9kyDdN+EHYMkoXK0l4Udd8NtFNsGbQixwqU8SDQ/QiY
X-Proofpoint-GUID: B-K3KLGI_ztDMqrwzjBxRhsVYjnGR0JC
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=680bcaa3 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Gjla_oY5Z_Fy-GYXBTcA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: B-K3KLGI_ztDMqrwzjBxRhsVYjnGR0JC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=724 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250125

Add compat for Smart Peripheral System (SPS) Interrupt Controller (SIC)
present on Qualcomm APQ8064 SoC.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 0004878dd0da7e9c84675afcfad7a246c561eee4..b600edbeb56a5d1a95e3bd23daba677fd1437356 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -99,6 +99,7 @@ select:
           - nuvoton,ma35d1-sys
           - nuvoton,wpcm450-shm
           - qcom,apq8064-mmss-sfpb
+          - qcom,apq8064-sps-sic
           - rockchip,px30-qos
           - rockchip,rk3036-qos
           - rockchip,rk3066-qos
@@ -203,6 +204,7 @@ properties:
           - nuvoton,ma35d1-sys
           - nuvoton,wpcm450-shm
           - qcom,apq8064-mmss-sfpb
+          - qcom,apq8064-sps-sic
           - rockchip,px30-qos
           - rockchip,rk3036-qos
           - rockchip,rk3066-qos

-- 
2.39.5


