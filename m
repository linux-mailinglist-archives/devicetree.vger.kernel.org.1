Return-Path: <devicetree+bounces-158567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C5AA674E2
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 14:22:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADCA37ACB10
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41CCA20DD4B;
	Tue, 18 Mar 2025 13:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l8DnY8Qj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD94E20D50C
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742304127; cv=none; b=pjIM3khU2TBfZhDoe3HVjWj5QcfZ83SaWIbAXdDIHz7WY0M+vL9Mk3BScbq0zZEL2N/wiIlKYA9ZAyRZ54TKLwWCrxjt2/3FzgxpKnlJDyRB88mRypbQl4PYlNd2gJ/X+pGRHiajPDziNxPa7nvLoZg18KL6QvUc6LWjiJHpImU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742304127; c=relaxed/simple;
	bh=vnLn5IBvIwlEl10it5qDKQb93nGa5jYtIoo2fd9uI58=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OtXySOvTe3CPHw6K2BidlrRHo0HEXdQhzErQOAEWLalVVuJ4jboBB/fRP2qZBm+wAk3KzC9oXnlpNsKOOALPuaVuSl2SonpYcjVFEVn5l/2zsTfMFJFnunu6fmmtha95Z5u0dQEFZLvaRdCkLTdudHTHqfIMSR/9IJSILi1oyCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l8DnY8Qj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IAVfwK027198
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hJYkUWNjRf2lHN3v+SqJGHc1Rc5rAnNwgun/cf+0UPw=; b=l8DnY8QjMamH/A7a
	ZR4YCcEwXfOu8vgCL6lyqv8+oV/adaiRcmNYiDhoWZWekqywKmoCMisbmaDtjtlM
	B8wodh+sCKx+jn9LwrX3DpFb1k6NeUdJdaHkFerFIxTH1RNCXmpTNy9WNJnj5Cpl
	ofr4tVanHkGLv5+RKy2a4QP69Ztlzzmk8njk3uOLeqAPWah0NPXmoiNtftBKhsH3
	IQTpk0vh3iEM1oe8BDUhFTwXa+RBN40NK5pdM0F4gEU1divoKzknvm1z1IgJShfy
	0iuPEhk7hOm10+fkhe81MRVscpkseAUJ2GSqZoNNHB8HypevmvD/0foDQKJn6oHC
	hBMH3Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exwtj1fa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:05 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47689dc0f6dso106646581cf.3
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 06:22:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742304123; x=1742908923;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hJYkUWNjRf2lHN3v+SqJGHc1Rc5rAnNwgun/cf+0UPw=;
        b=jm9/OZD/SL2uPmp6QglDOWNiUx4gRCSzSrZV7tAjPux4y2XoJaaTQCbahdKW5jUrA1
         3Xbr2/EY5MHcDBEnm4zqaTpx3EZ79eyuGIf8LZZ5Yft8X3/IFdstmdTgdC/vyBRhuSI9
         USZEDFiY5xbNT1nfk4fYFmptGoJre1x7mUpUiUdCyU60vwUhivlhWSdPbnXm+z1K6Gfq
         3uq7Vz7xkO/vTFGjQuEOaDTB5oxHwJSeJ/N+jXPjR3Y+QC5HM19orAkLp3sRTY9jdp6u
         vf7GOk5kA4YDsgFJdusZWbJdUYJiJXkYJaGylm32lUd4bWynvN8OtT40H2KpQk28pUcb
         qusg==
X-Forwarded-Encrypted: i=1; AJvYcCUbuEJB36MXMoDIZWvZcl8pWdurDNwEVOpU/T1Ia+ejO0ogBGjUd9yVtZuuh08YpRe5IkLpeMf2z5BQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwtKuayjJp03KdqwFtVpKJr0bkboEVXjkLBWQQn8PTMFRJ27HKI
	plovxeSE2Huux8AHOdmoPy45Pu3GqO75xkl0ffNmdaCdJ3iiDPtyctIDY1g/YNkAm+SPpSLZLdb
	nzKafPrsCS2quxWAKY10quwXDAkrZ0FeBEQQDdL2FMeAJ+Ju67/KBtAjDfatjzB2J557HLPu4HQ
	==
X-Gm-Gg: ASbGnct8sG6J29LEhygDvrv1umqMPXm1A0pIxh0nl5lm6anq04QdJwfT+M1DjiZuDkS
	nB+VLzoKnBnZvN3rntB0jaHUBkjdlykunRsmBsE5EWCKKujJgJY05XlTRm1nAJmVG+AmOFvQhAN
	uxvNtnCA1d11v8Njo26l6xH6zqonQF3WJFpjWRhY8zn9bh2PdnGzJbswNA9SlrG63p0YYImCL5h
	LglTxe4Z2haZwyWAO57NDqZnwi1x+niHqVVNGUvVffZ8TyRR3dcD+pvhr/2/n9e0rBmIydpwcC5
	hvV85xepPNNXNovETZEoB7VgEbbOzdq+F6zDvhbOoAax40Ylcxr0YJ0rbpzOLj1ZRPggGm27UWr
	IaGCdqENzWmk7GHM/lhV4hUQ8fh75
X-Received: by 2002:a05:622a:47cb:b0:474:fc9b:d2a7 with SMTP id d75a77b69052e-476c8133b81mr220273651cf.6.1742304123365;
        Tue, 18 Mar 2025 06:22:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuJjxkEkxA8YscofES5fAkHCi2UaKSLt9P/+qAvQZP4SC+n2yCqtqbSZ7p5iFpKiAenmtJkA==
X-Received: by 2002:a05:622a:47cb:b0:474:fc9b:d2a7 with SMTP id d75a77b69052e-476c8133b81mr220273401cf.6.1742304123036;
        Tue, 18 Mar 2025 06:22:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a79c4sm1664831e87.226.2025.03.18.06.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 06:22:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 15:21:55 +0200
Subject: [PATCH v2 02/10] dt-bindings: soc: qcom: qcom,rpm: add missing
 clock/-names properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-fix-nexus-4-v2-2-bcedd1406790@oss.qualcomm.com>
References: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
In-Reply-To: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=995;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=vnLn5IBvIwlEl10it5qDKQb93nGa5jYtIoo2fd9uI58=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2XN0wq2uVR8NFiSnsCPte+zdnqNwfwNEJwiFt
 TzD1vCua5KJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9lzdAAKCRCLPIo+Aiko
 1VZCCACRel74Ze8Ri0AQEaQbxA+kwaLhzmoIWbaj8eSRfGEhssdcI8Q97HHQ1FpY7hszLgiPent
 YsHwEykVKF3suWlC2rf1yoq++iyVHPmru0gdq3kaSvzIN4cv4Qaf1jIVD4NBJPAonrCo7hJPZ5C
 5R+Eb+zxt5wuzsozs7hhvGsLYr9BA8fKSLEigE/AKUFsuEmhFLp42QGcm6K9RuLB+KrmpG70zor
 3Ic5SdGQ9I9ZrlkHlo6HWrokR7ZJWB0cqXDhHOm+1BGsS8hZLJY6iLVqnxsHY5WMHBfzJHwPtGD
 RDyqyzTb7eWl+0wbG2bq8e1HLxnD1C+Uw4Zjyz9EljAkbxVu
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: 7-UK56NhZazCuE7S3xFqVB7Na0SgA__j
X-Proofpoint-ORIG-GUID: 7-UK56NhZazCuE7S3xFqVB7Na0SgA__j
X-Authority-Analysis: v=2.4 cv=UoJjN/wB c=1 sm=1 tr=0 ts=67d9737d cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=TCbcYKr47qonvmNniLkA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=944
 phishscore=0 adultscore=0 clxscore=1015 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180099

Qualcomm MSM8660 and IPQ0864 platforms use additional clock for the RPM
device. Document it in the schema.

Fixes: aa0c4b815045 ("mfd: devicetree: bindings: Add Qualcomm RPM DT binding")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
index 10956240df0856a4241d6032d3aff7d447af9ce6..3e8d99cb4dc368ab6b31e3e60eb5f7e082cd312d 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
@@ -36,6 +36,13 @@ properties:
       - const: err
       - const: wakeup
 
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: ram
+
   qcom,ipc:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     items:

-- 
2.39.5


