Return-Path: <devicetree+bounces-197751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 292FCB0A833
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 18:13:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB0FA5A2F6F
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 16:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193622E613B;
	Fri, 18 Jul 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HddTm0sh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE222E6139
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752855233; cv=none; b=PWXffknQCUFdNoC+HF0lEwnuj8E+MYRPRwT5oU9bzG9mpZWArs3dYLtgLNbROQXzWX1F1Jiw1aJjSuzw46ac75JUG5sSLXq7Sal2ngqSceZXIb2de83AOaOOG9O49D9Uoo03tRHzR1ZNL5GWteRTz1bPLjvpcFbKJ5A4MwpGzvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752855233; c=relaxed/simple;
	bh=qbZsoJ4WpXYeEtPSlbOZ2i4uthnkxzqWJFYyR6RgjZk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kMKDmgnbsv21tm/3s3anNcnmfwesXc+vfycze5nCM4fe0DM7mxLjmYIUmg+53NX2tv2GknML/J+Kd1sDwkzvvtl6nnTwIytlEXpBxxlYPJjKIcMktwaqhZbFj1E4h7QUGEMEgyjLxeIyzSDj0dpgTpcE/jqLyuqjzy+yc37I4fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HddTm0sh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IG9F5E020662
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x3jBTC4AynQ+yZKDFlQILcBO8zD5iMJ+Pqbi43VQy84=; b=HddTm0shYPQdh07y
	H1wHzpgPVDXBKe268xQ1R3/d2mQoUi+p78iYcBinNl7bdD1w7V0OAaZ+Lo+6PmLz
	rJpo3F0OSEEQVpHeGjAGNbJZPScHfSZQncRzbrfYj/bOW+5fvvggfhzB9+G3EgVy
	HO30MvyE+TumG19ORBp1OzdWGXyWyvgPL3iaX63W1b20QSWWMF8XH3r9tQZqfeR1
	8Gm56P1YcNuMreHMsPpbNzCtpfKiDfQxR+vM+NQdmJHcL9iPocSfADv6gBqgOdqr
	u8fk47Gm6pC4zvhmcrJdCMA3lWYlJFHfP81fghCj8+aHLBBeZWbesI4ICKxxAX65
	vbXqWA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dpq9y9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d413a10b4cso306048685a.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:13:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752855229; x=1753460029;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x3jBTC4AynQ+yZKDFlQILcBO8zD5iMJ+Pqbi43VQy84=;
        b=DkG74DLGE6voPxBI3Hu/Df2Selds4BLX7h3BmTi4vcnZc66mRLg0C5OAE9AcpIOl+l
         n9dkFGGfSvflGWDYWpjso/D9CJopO9UrmGTH4l+ojZej03Is9ye7mE3ihDwA+TCA0RFz
         Fd+Fw0jV0SO6esF5jvvTlkvsjYrUoD7aQ4OqHt+akwMzb3WIx12Sy+JlN3C/87qIgDqb
         D/3/TuAV0OiiFpjAJ/1Yn5upf3Ynb8JVc/j3U5b0oE1DyeaFWK+1O89RWZPkaX+qdu6n
         BlN8m3brtVXtDBV7sxGwlbIsxrZhFoMnleIHwJ9ei5vQk87B+D3JHIuX76ATizt2ZNyu
         e1BA==
X-Forwarded-Encrypted: i=1; AJvYcCVZzgccrdmsrotcqzD74IFwGBYxunpgI+FhcslVlJmGNILdLDU8rSVZmYiHpOCj66TvVIqeq8yN8ueE@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1SgQ9HRaUdbLhpUQUOCXNTr6ft9Kg/3XKdmi6Ah+W6tG+9ZSF
	wZdQ5tme3choCvvjvd51wf5JBchJCfnyDk35R+p73H2mRY1oa5MRviyyUfvA3fVRSg30prTfjSB
	07NFSvifvBS8OZxRFpnaHngtpLkUF4h/ILGqaFeRmJNFr6GelPLQAYnBT0Niy1kyp
X-Gm-Gg: ASbGncuqxy8u9bpOphmOKFA8kHRD1uNeJteFhsA637pWbp3FP7LmbllcR0BAmkCSa2s
	d+A4gc2JmhuT3fFeSJL+VWaFx5bDzpxYN66XiIx+fbKRHIMrM48nNRZp/wiySnfFQTWX3F9axDl
	QlKzhP5Xku1OcYKldgGZ1y6cUuhtnnIq3+mcue2t0AGJP7xJsDuMoO2jIzO8d4TqbCWZgmKedkZ
	2XTfR9Gd7Ec9EoJ1xSYAuCqzpf5gnP1RAXCKzw+b/DAZqyRnl+Q7428drbDUGQlYqXDbwiT5n/V
	j/LQFt4i1Lx9bzwxP7H7t8X4Wojq6cTiAD7aUYuwf9meJeh1r1HqyMdAzENc3MvoADCNlpA1L5a
	ox7F3zlC0E9uqTsAKjKkmqffhBrm1a58xOsoQN3HRtlsNrfWbEqV2
X-Received: by 2002:a05:620a:3d12:b0:7e3:4413:e491 with SMTP id af79cd13be357-7e34413e869mr1399587785a.61.1752855229242;
        Fri, 18 Jul 2025 09:13:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1122fPka/53dNADi6RlnmEas+Pvvg3ROQ+ycEnr8z5NvdDUj9fS6sYKgHvTRJw+APk0QlKw==
X-Received: by 2002:a05:620a:3d12:b0:7e3:4413:e491 with SMTP id af79cd13be357-7e34413e869mr1399583185a.61.1752855228615;
        Fri, 18 Jul 2025 09:13:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91c1ab7sm2388131fa.50.2025.07.18.09.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 09:13:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 19:13:40 +0300
Subject: [PATCH 2/8] dt-bindings: power: qcom-rpmpd: sort out entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250718-rework-rpmhpd-rpmpd-v1-2-eedca108e540@oss.qualcomm.com>
References: <20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com>
In-Reply-To: <20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2336;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=qbZsoJ4WpXYeEtPSlbOZ2i4uthnkxzqWJFYyR6RgjZk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoenK3i/jyVE0ZIoibzrTm/1+blpzp8ZkkyxXI2
 lmruymnYleJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHpytwAKCRCLPIo+Aiko
 1dOnB/0XkwyWN4V3SDZec6oX7fdy2JHxJX5yUxi76qD0OcjvKJWJJvITSPq2Q7t+y+MeO8LA9sg
 hn5CMYqiaTBJXjMuheKlOa+HWpcSULkC+kShj+tJvNoY4VT7wJyErAeDgQhnaLLiugCLMzLccNC
 6dNJYkdLUK+ec9H6iCPZwzQrZcP3fW3PwA4xWyW9CFdLyS8apwtEr86mOwWawdNrcSrU0wOG/Za
 n1YI4j2c/kG58xlATqK1bUDrkH5RpqTFWdR6OdgY274q+ufGHNQjuztmRJ/HahZOx8A/JDxCzF1
 vp9pEVyK11RiuKRQ90xAr6DFdxwAT6r/0mmTae4wrpDLtO0s
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEyNiBTYWx0ZWRfX/rW/RRR7mfAv
 I/jSGZYdkNW1RVgJhgT+8ggmbxKU1jcoW0RbBGbWAN0OSDzEd4bg1c4GzEHZvpGKR8lJu7itPJW
 CyaLMy1lVabFPCLL7be2v+0gJErUllss96d7oDEHahd3xxc1N+ra21sR/2zirtvKdj8tRc1sQxe
 oSWW8/E1+iCktK1Qyfsg9CyO4guol+BRn8TIMbQBntLL844ce04eJgxhBOVWJILWCKju7gPxW7a
 TL7hYmKcc0AMmFZGug4VZCozW1jzI0lqdslWM3YwP7aIg4QOPBxi05Fg07y35yDpyTWHz8d1k7a
 +wbXkRxMk64Sg5jpPEioG2hIhgNHVvLW5f2zZ1jzer/RoIK7mRh5AqzsYqCtwAtE4W3HjwYmd2W
 0nwH3qnEr/TgdeodaITdsdU4Wgmcr1WP85fNf0z1OfpM1Ks184Y/7JwpX4+5ijOZcZgU2jwd
X-Proofpoint-GUID: 57fVD0fnHPxOnVABcLRGPyRbIxWYIcB3
X-Proofpoint-ORIG-GUID: 57fVD0fnHPxOnVABcLRGPyRbIxWYIcB3
X-Authority-Analysis: v=2.4 cv=Y+r4sgeN c=1 sm=1 tr=0 ts=687a72be cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=lzX941RX6UCYqbaESYMA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=703 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180126

After removing RPMh PD indices, it becomes obvious that several entries
don't follow the alphabetic sorting order. Move them in order to keep
the file sorted.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 include/dt-bindings/power/qcom-rpmpd.h | 42 +++++++++++++++++-----------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings/power/qcom-rpmpd.h
index d303b3b37f18e0ff63929f3fe197151c5a3d3364..65f7d5ecc3521cfbc45d6158bd6143ea09f47302 100644
--- a/include/dt-bindings/power/qcom-rpmpd.h
+++ b/include/dt-bindings/power/qcom-rpmpd.h
@@ -6,18 +6,6 @@
 
 #include <dt-bindings/power/qcom,rpmhpd.h>
 
-/* SM6375 Power Domain Indexes */
-#define SM6375_VDDCX		0
-#define SM6375_VDDCX_AO	1
-#define SM6375_VDDCX_VFL	2
-#define SM6375_VDDMX		3
-#define SM6375_VDDMX_AO	4
-#define SM6375_VDDMX_VFL	5
-#define SM6375_VDDGX		6
-#define SM6375_VDDGX_AO	7
-#define SM6375_VDD_LPI_CX	8
-#define SM6375_VDD_LPI_MX	9
-
 /* MDM9607 Power Domains */
 #define MDM9607_VDDCX		0
 #define MDM9607_VDDCX_AO	1
@@ -130,6 +118,16 @@
 #define MSM8998_SSCMX		8
 #define MSM8998_SSCMX_VFL	9
 
+/* QCM2290 Power Domains */
+#define QCM2290_VDDCX		0
+#define QCM2290_VDDCX_AO	1
+#define QCM2290_VDDCX_VFL	2
+#define QCM2290_VDDMX		3
+#define QCM2290_VDDMX_AO	4
+#define QCM2290_VDDMX_VFL	5
+#define QCM2290_VDD_LPI_CX	6
+#define QCM2290_VDD_LPI_MX	7
+
 /* QCS404 Power Domains */
 #define QCS404_VDDMX		0
 #define QCS404_VDDMX_AO		1
@@ -169,15 +167,17 @@
 #define SM6125_VDDMX_AO		4
 #define SM6125_VDDMX_VFL	5
 
-/* QCM2290 Power Domains */
-#define QCM2290_VDDCX		0
-#define QCM2290_VDDCX_AO	1
-#define QCM2290_VDDCX_VFL	2
-#define QCM2290_VDDMX		3
-#define QCM2290_VDDMX_AO	4
-#define QCM2290_VDDMX_VFL	5
-#define QCM2290_VDD_LPI_CX	6
-#define QCM2290_VDD_LPI_MX	7
+/* SM6375 Power Domain Indexes */
+#define SM6375_VDDCX		0
+#define SM6375_VDDCX_AO	1
+#define SM6375_VDDCX_VFL	2
+#define SM6375_VDDMX		3
+#define SM6375_VDDMX_AO	4
+#define SM6375_VDDMX_VFL	5
+#define SM6375_VDDGX		6
+#define SM6375_VDDGX_AO	7
+#define SM6375_VDD_LPI_CX	8
+#define SM6375_VDD_LPI_MX	9
 
 /* RPM SMD Power Domain performance levels */
 #define RPM_SMD_LEVEL_RETENTION       16

-- 
2.39.5


