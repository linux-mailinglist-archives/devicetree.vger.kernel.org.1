Return-Path: <devicetree+bounces-232554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D898C18E6E
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:14:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 546A0188FBAC
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A5483195E3;
	Wed, 29 Oct 2025 08:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C89gTu6R";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OhHDVnkR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80823112C9
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761725159; cv=none; b=rTj48MsC73MpYzHmSKpHgR5iwbyXfYmQonbCvAViT3a2lqDr//Hd8b/BhiLPXoj9i7GvYD7RAnCq6q1b0nOZnF21+2esgnmMoCmL/mEnihMn5647JfsjWjn8Xoqs6Osce42k7D+a4bNVBPYuy/MrWAp8diLv0tPVEUr7JQYcG/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761725159; c=relaxed/simple;
	bh=lHEUneC8ZRFILfNpU6bdJg56I1ugvFyyWle4SHV6vRg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lcBPrchZe7WCWq3Gwm2oqqPT0mY7kqkltPC+sgGMxUQxkmsOL56gJkPwWeB5uC45LTghWyd1DqOclRAms0CLjP+LQeTBrVZx9zSmy4WjlS8V86AE4zVVTJZyOKd/j+SAhJZiO1lGgkQ2Ku29nxh2XyDdjywh6a07BY3Rh/FvEUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C89gTu6R; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OhHDVnkR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4v4RK3677834
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ofFGdSp31WO2sezoGGdCs4u+anOTrI9jfL6DeUVdYjk=; b=C89gTu6RsSLWPS77
	0rupFkGUaZID0MJ04Ex9X06Pfbl1DliJyHpXRJWM1+41ymoCEIxvkE36ABhpL22J
	Yuw7PhJg3RTqeki4qddbP40XpAZdmYqXX3lwuscIVJvwAqptpgEiNdCX5XAdHUvM
	Oirg1ARVEklCqvEDiamT/HZkpi2vneP1Qq8sAYagYQ+NaCw0CNbXlM8V6J+isc+n
	+bQzHR+Mz9nJ7fFScB03cPL4HaHBV2N2i5ffXE9hwSHQCKI3+G7QegEdmrqrdFK9
	oRz/hY4Uirhh+Pyb3Y4HD2vJAaDLR/7v+cCLDs2ehpTxWcC8iOI++KlVVTt48+f8
	BkuuQw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1hph0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:55 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b6cf40b2c2bso12066341a12.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761725155; x=1762329955; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ofFGdSp31WO2sezoGGdCs4u+anOTrI9jfL6DeUVdYjk=;
        b=OhHDVnkRSI3XCryVQxShTKuj8DWKeZmZC6/wY5Azwlg9mahsBZLot4LDFKIvgQx4gP
         P+TdgKpWL+7vyT1l0THDs0GG4XrN5IUKZxOVp/pNN+N9WzEFtPHQ/fE8gCeAX4Be0uM/
         kJ1irPR+Qx7uvF4EoPYM7hVrkCMpfMFml7gdytP0tD5YkxevQighbWgSrq/qNGEMU9o0
         PTe7jmzhryBUBrEZW9lBgGfoK51YkxZ1gXpJva71xhOmlf6K4bPE19IyiVIg5rCku0d0
         f7mW9Tg5p+S4x3StY0o4Zl2KYER9BMS6LgxRMCtbkn7HdalXQhoIqS/HEmClcpdnnWr/
         PMpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761725155; x=1762329955;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ofFGdSp31WO2sezoGGdCs4u+anOTrI9jfL6DeUVdYjk=;
        b=w36pSafuwRdubxXF17BKqX+xCgiRzxGwjBYzGNr+XJh+DXQ5rNbC7ojIVy3XMynSom
         2ool+seMlv2F9/SlmdyTHvhEu1G9AJq/aGj9JEV7zrI3/ctz7DhfpFJlAkoQOUdVXWjn
         lYCr9y7GSj05h1dWaEmVD3trQ38nNm/GEdih6X7KLYngC6pYOXGP5y7cXJEId8Wz96Ld
         HdgVm/rxM9uU7xj8UjMpbP06Y1STPPA03nQ0bGhUl+zNLGEhQfbdEaxwEHDP2ENNaNyN
         9P5quCwhFGZXcpxUmoo7sY29RJWLAZStY40ub38ipG3vLc12lZoO+AujKRQ3b55yL6GI
         blTg==
X-Forwarded-Encrypted: i=1; AJvYcCWefWiIkc2tZ4UdXuVjYf/SjVOdFpROKiSD4eMlvSU49q2nRI0EvIlHHUcWoUdq9ZMinTxAsVTyDf1N@vger.kernel.org
X-Gm-Message-State: AOJu0YzfRdW8l3GjNxUUGbAc/cTc40d2qc1hllaj9NEt7/+UFXKoGqls
	J8CAU5gyEUfokmKbDo39Wpx947f7nHYTmfAZPAI2hvHQ2VuvVkG6EWEsXqLWWNMOf6M6eleKM8r
	jvceuut0V+ab9/mlBrG74GiqZ91eslvrqslGy/pjLdmI1WDXcAtD6rr9MjvuN3eOT
X-Gm-Gg: ASbGncuZ1Gt69zqCilgT8LeqQFOofpYKTyfGapXuEdNuKmTDVYbNexUTtNukJYmh4vq
	Y3VjGyXerhoHs4W0/ujuBt5U9YMpKxP+UtmiVa5HVziDePrFXOxdaFuDPQ1+YrUb3rzH1VUBQe5
	VVkcusfmLUgHXFr5aanRoVNe3JcM4rsAnVuFAqMwg4TJJ/vhtIptjs0aFWiNmg/mKDaGrOabPE/
	DPTKS1C0chBakKSFuyF16TcwxQ5WL/b+zLnDvvXWxRK53HpSHwpRVZ/PY8PHrlYo457WBEBEn6g
	bkWlDNZLYOJqVAWNVZ5WOjNGgobWaSFR1guFv+iKm+VzH+DInPV7NT6/JRE1dxmUoAsCtA+vs7+
	LmyOOm/E03Fq0+pLVgJwEq+YiYyxXe+TKqk1obFS/FH4LiiNhSQ==
X-Received: by 2002:a17:903:f76:b0:272:f9c3:31f7 with SMTP id d9443c01a7336-294def30ed5mr17205325ad.50.1761725154749;
        Wed, 29 Oct 2025 01:05:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0sQ6XdTFb2LBlKCQ/zHj45O0tHgxtuQUKM32YYiyj+0jGQytHyGDZXzy58NbJ4DNT3kWVWQ==
X-Received: by 2002:a17:903:f76:b0:272:f9c3:31f7 with SMTP id d9443c01a7336-294def30ed5mr17204935ad.50.1761725154150;
        Wed, 29 Oct 2025 01:05:54 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498f0be0esm141754705ad.96.2025.10.29.01.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:05:53 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 01:05:45 -0700
Subject: [PATCH v2 7/7] dt-bindings: remoteproc: qcom,sm8550-pas: Document
 Glymur CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-knp-remoteproc-v2-7-6c81993b52ea@oss.qualcomm.com>
References: <20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com>
In-Reply-To: <20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761725143; l=1548;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=eYKPFpa37xMNWR6oEwup8N8ConVWUukUmzw5FoOa2kE=;
 b=AvoX10IlqCOMl7HP84G4AyH1pNYxj9zO1ddYq4rGSLndb0DlsH6L5kcMxVv8CeSO8/DprCGRy
 IZnVfnKBgdKAQ995OIdqn8MPVmj2ZBqsHEggTNOuDQ+NnZB2chDwwAD
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=Nu/cssdJ c=1 sm=1 tr=0 ts=6901cae3 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3YzqomBvCdNxOiMskVAA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: 8Ux-0GHd-U96hXqcVd0gugjUnPRPYtwk
X-Proofpoint-ORIG-GUID: 8Ux-0GHd-U96hXqcVd0gugjUnPRPYtwk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA1OCBTYWx0ZWRfXwVzTNuQwxX+P
 lBEJkHFHw8/N0TfZoPK2cyFV1Q7/S3veLk9TNKiiUHESwMx+MGlKC3BnTW73/0Gt3X5aLbA4arb
 WMqaIHAyqNnpMSmJqrgZyfGUyu9yTggkM8YjDeKFBQr+YymLBQ94eH4awscVbKPBk6IXO7IRMhG
 +2BKF0WwufB86OjmWkBsmzi0XtMyJLkJ3NBxMdx4S2mfePARTZUo0i89go7toozSebeqIZIsoB/
 BrvB6aLbIipETk8Dymoq+sa1g7zYL31HBghRshwCcaq4ld1TSPrcYx22liPBm5Dju6dAzxvdQIo
 ByykSZtj//LZxoTRjPAcq6gCMlKdbRBsEwe/GrhFRpWvoWS2XcS56lc/GgGEC3UXQrKdmB/Lx6N
 5dSmhj2gYqX6BGk6O7Bfapre2VnfxQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290058

From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

Document compatible for Qualcomm Glymur SoC CDSP which is fully compatible
with Kaanapali CDSP. Also with the Linux Host running on EL2, the
remoteprocs need to be hypervisor independent, the iommu property is
mandatory to ensure proper functionality.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 8cb839ba1058..117150cebffa 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -38,6 +38,7 @@ properties:
           - const: qcom,sm8650-cdsp-pas
       - items:
           - enum:
+              - qcom,glymur-cdsp-pas
               - qcom,kaanapali-cdsp-pas
           - const: qcom,sm8550-cdsp-pas
 
@@ -103,6 +104,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-adsp-pas
+              - qcom,glymur-cdsp-pas
               - qcom,kaanapali-adsp-pas
               - qcom,kaanapali-cdsp-pas
               - qcom,sm8750-adsp-pas
@@ -255,6 +257,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-adsp-pas
+              - qcom,glymur-cdsp-pas
     then:
       properties:
         iommus:

-- 
2.25.1


