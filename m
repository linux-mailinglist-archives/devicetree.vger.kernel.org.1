Return-Path: <devicetree+bounces-246958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE6DCC1EB2
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:14:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 769EB3007C56
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 10:14:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3D4832C925;
	Tue, 16 Dec 2025 10:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MNj1gyKg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IjN89lMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E8556B81
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 10:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765880075; cv=none; b=sETiF6o0hCp6igRMSnvHXpZmJGoEqDY/xOfZjAy46dYgGSW4joNsfmiGcHqsYA6KNzgIPt8+uJ6WFX8DGq77l8ecNaWJYRJYfPFWG3vi3Pi8umyo+3H0IOgk/+eai4zW8JImS93orB9V6NXZbDE3aThfBSxjkjonPvKQw6KmwdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765880075; c=relaxed/simple;
	bh=XsZfy1Uv9Ew5Wwh/j4HicfPamFgKCdq7qilQ8+KM+xQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=UKe1qPtXfrBCqfp+ZFddNArvvmIz5r0Jv9DFeL89mP2IH9GhLWAscK6JL8mBjkXvmZEIkN0XSSKwuTrYNZHm4zVL4pjHJqCQfu8b8StRBgCaGXhcz2zqZTFl525Q5XkODX43Z6wal947ojTVfZMkPO15uWnQdwGI22qIa28jzos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MNj1gyKg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IjN89lMu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG8OfPA1826017
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 10:14:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=7iNGoML8Fpv/XEWOlWryme
	WxqffcaN1C652hbP+47oQ=; b=MNj1gyKgbDvyHw0RQ+z0rU2WX3HF/aQivcUrPC
	lqWU2oqqEjEMl8rRxNhY4DzOFh7IvQjwfsctBvIue7xRTCSc+9JTn2IhuvG+Tpe3
	HX4WrAnPKG5khTSuQW1iNjtXCAEjzOXsqu3wQ05IOgMl2WmfmsVI8XNKn3oO7wbh
	UUAe/N69DZIYxD81dyLfd3ANTdAV9jT/gX9iafi3B5v1naplYXFC0uIRA5koLtrh
	uBlIT/LaLqfo0FGHtMJfkjVVkTbUe7jT/vKTlwKhTZNJEFDf77yWNPVdGnVRG3/L
	z7gZY2h8/ICSt3xeikUbenCyhOUf+HnkS+aM/78FTD9bfAxg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2p4f3cks-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 10:14:32 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0e952f153so63409895ad.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 02:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765880072; x=1766484872; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7iNGoML8Fpv/XEWOlWrymeWxqffcaN1C652hbP+47oQ=;
        b=IjN89lMu17jRTmj0h5yc0llXDSlUfxuYaamz6gA1/oQnWu3wDlyKFTbDjphkfD+9JL
         RYySUGTWQbM6ZMQiHNdC8cuQzGFtZPCP5sRBr0fXBzbzFxazHFbdPKNZQUlZPDpFOnfb
         GxJEq5Xo8NKBi4TWQkndF3RNzd4uKLCnmalrWKZ5R+iSTLTAniSZWGlqZ7qFfxFAfrUy
         Cfeib5ULWU1KuIscSooAcfhfP/uvo7+l2AoqyEJpEsAaFV4WCWqBcgN6EMq0RD4ZxDpm
         www4u3kSzrEINDaFOJFvGNaT3ZH2LLsdDPRK4pQlGL1IHWwyXPmzfXfnbe272amK/W91
         565A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765880072; x=1766484872;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7iNGoML8Fpv/XEWOlWrymeWxqffcaN1C652hbP+47oQ=;
        b=boQMyXVbYQa15iPdyJ4CNvb5NQbG/bqwyv8kcnQdY3Y4mdOUzloUbOiG9JJRwUz/Bd
         xhBuc1NbYlg9obEzxbBmCehwUKbPyhzdULfOAPLPiciKTdgIIBnDy1He+/X6tHHbO6u5
         gHLmRHBJwbXXRiHgJMC4qRybZaZety9ud9RQ8EScDCy7LOJo6wOJQ9Z6/AzHWcO3f+CR
         duhiaw8lE3cNKq9ha3SAZTsmYrK5wOFK0+I6K8yl3tmvq7QVcYh92XSBQYA1yAxJjmRV
         IUKo1rbiyikuPd8vB9wxawYH4+l3hjaNzzhSF28owbZRlJqLDF22lljrTMy4wiun/0ee
         v97w==
X-Forwarded-Encrypted: i=1; AJvYcCVEz6qVss7QmPQFSqDZZ5jIzJ+WqJ3aoGfjlaRqsyaayH/RANu+AzjJicpDIcm75MMA7cU6JHHXrlLx@vger.kernel.org
X-Gm-Message-State: AOJu0YwvRcUc4XhpCuIHjmc5wP5yiqA1LdORjjk/sdSyZzobolthOIXN
	TPlmtWW3s09MAFM4hGBL++fkOseKjc3uuk5HPaFNCQOybfADtkTrgJddL6UdRLWwvLumLAsFpl0
	kBXPZd+4oqW86ND6ijNmagemX0Vjsu1A/FRdmQI15m+8LwbajqzNH9cfwq1dB0Lui
X-Gm-Gg: AY/fxX7BXjxGPXUmpF/OVyZwnj6fwgjfu8xfTJubDQCYiRO47mLRr7T6OI8HiByXAML
	DD6M0ID4YeNlnGIS7qBLGkaIIUAPW4zn96Qq5X2FfkaODtYQU65ix05Zpt9ZVXy5PazzdHSkBTx
	jXoGw3Bt2pvgTRgnwWBSdhzuEPj5JMaUkj/Cuh5zSXjIa7tu3oBohT92Alp/2DlD4eQmSS+bgwK
	1v3b0naezRRF/XBPTtEUW/P51qGply15YmmaS41/P6yVB9oINVEXS3x2LxhyLoob3j5z4gZ9X5Z
	6QjpmIgLKHL9VblpDvGwgi46K1vI8npWL/cIh2cNvhXKxNp0REWVyGIrbE16j0i4GtdqLMUfYyT
	TDAu0GU1VeeSDp0QqltZK4ZQqmyPo+7std3PoDPVXa6U7
X-Received: by 2002:a17:902:cf0b:b0:2a0:c5a6:c8df with SMTP id d9443c01a7336-2a0c5a6cccbmr92917415ad.21.1765880072081;
        Tue, 16 Dec 2025 02:14:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHZZcGRX+LpRhtb/h8UWjc/FtJghqct5dzWl2AchZoWzIfbCp4t3I8sQRRGynLXd2T9nsm23g==
X-Received: by 2002:a17:902:cf0b:b0:2a0:c5a6:c8df with SMTP id d9443c01a7336-2a0c5a6cccbmr92917085ad.21.1765880071555;
        Tue, 16 Dec 2025 02:14:31 -0800 (PST)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29efd74f5e1sm146128675ad.16.2025.12.16.02.14.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 02:14:31 -0800 (PST)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 15:44:12 +0530
Subject: [PATCH v3] dt-bindings: mfd: qcom,spmi-pmic: Document PMICs
 present on Glymur and Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-knp-pmic-mfd-v3-1-9d0cd62676d9@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPMwQWkC/23OSw7CIBCA4as0rKUp9EVdeQ/jgk7BThSooETT9
 O7SLnShm0n+SebLzCQojyqQfTYTryIGdDZFucsIjNKeFcUhNeEFrxlnNb3YiU4GgRo9UF6DbkE
 KqdqSpJPJK43PjTueUo8Y7s6/Nj2ydbtBRcerL9SjHdCeaWSU0b4DUJXoRdUUBxdCfnvIKzhj8
 jTIakb+cX4fijwZTHWMlQIaDc0fY1mWNwQGQVj3AAAA
X-Change-ID: 20251215-knp-pmic-mfd-25cf7ca8ae73
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        jingyi.wang@oss.qualcomm.com,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765880068; l=1917;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=XsZfy1Uv9Ew5Wwh/j4HicfPamFgKCdq7qilQ8+KM+xQ=;
 b=y+1BoeKLmFevxxH3NJtYW0VAE6u3HMUY+7NONOesr9kAYXTgRgIHI3lu75UINH2NGsDCxHv4K
 blaBwt3Ug5mBGAvuRZwCTQKUs56H1XaOmsJXrxBi9VeSMbEF5ACB5X6
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Proofpoint-GUID: B3rzU3OnwVBnmeQZhCMrHMd6_8a96-b8
X-Authority-Analysis: v=2.4 cv=OK8qHCaB c=1 sm=1 tr=0 ts=69413109 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=W7eFkxDxjKS2FEf5w54A:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: B3rzU3OnwVBnmeQZhCMrHMd6_8a96-b8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA4NiBTYWx0ZWRfXwDb616nO6ma9
 0M5T8l0ISHwGXft8lYHWkSfOSDPW7JA/eotwre12Xh2dMEqJfVUgtv3RxadpC0STCWdJYG0MSGK
 HXF+2cI3YkPwvCY5FCdkqIJW1nD2vqUDNiIRwNnZaGoxJJ5haAXGkuoiWLppcsPxpPTuNMxhEvj
 CE6T9i/9phlrh+Uzokq8/mRPi0ImqRneul2IO+F48UXKkWhXS8kj6rgEODeAcumfZxmDrX3yt8e
 OlGCy2x8mcdjmlT1lFJ61qWTDBIQFJexjvv22irdgrT+0kDEZDBeOLUvPqoPvee3At0XsS+Ndnk
 XgmUa/TntX/4CIyyDDaNJ+MbYqXBVpm+xSFIwDosFoNZe8tilbBFDX6GsPS6XuMPqbGt9oNmCVi
 IVQs6UmAwHOfEoEShp5agxJoGBUGTg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512160086

Document compatibles for the pmcx0102, pmh0101, pmh0104, pmh0110, pmk8850
and smb2370 SPMI PMICs.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
Changes in v3:
- Added compatible strings for Glymur PMICs also.
- Link to v2: https://lore.kernel.org/r/20251215-knp-pmic-mfd-v2-1-1e91138c6fc6@oss.qualcomm.com

Changes in v2:
- Rebased patch to Linux 6.19-rc1 base.
- Link to v1: https://lore.kernel.org/r/20250924-knp-pmic-binding-v1-1-b9cce48b8460@oss.qualcomm.com
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 65c80e3b4500..e5931d18d998 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -77,8 +77,12 @@ properties:
           - qcom,pmc8180
           - qcom,pmc8180c
           - qcom,pmc8380
+          - qcom,pmcx0102
           - qcom,pmd8028
           - qcom,pmd9635
+          - qcom,pmh0101
+          - qcom,pmh0104
+          - qcom,pmh0110
           - qcom,pmi632
           - qcom,pmi8950
           - qcom,pmi8962
@@ -89,6 +93,7 @@ properties:
           - qcom,pmk8002
           - qcom,pmk8350
           - qcom,pmk8550
+          - qcom,pmk8850
           - qcom,pmm8155au
           - qcom,pmm8654au
           - qcom,pmp8074
@@ -101,6 +106,7 @@ properties:
           - qcom,pmx75
           - qcom,smb2351
           - qcom,smb2360
+          - qcom,smb2370
       - const: qcom,spmi-pmic
 
   reg:

---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20251215-knp-pmic-mfd-25cf7ca8ae73

Best regards,
-- 
Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>


