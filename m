Return-Path: <devicetree+bounces-220929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AB6B9C81F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:20:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A5621BC0E70
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526B72C326D;
	Wed, 24 Sep 2025 23:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HhxaWlPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13952C028B
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755889; cv=none; b=jHOQvWrgWt6sk7NybzmzIrd4b/KUXS2W6K4tuHGXjjoGh/453WJ3qf73oqC8TPeQxASf2ktK7cMpzX3UaKj4f7QIUN5mcbWNYQwgU+AkE0SbGpqX7MCWi01W2ddWbvTgqKZbor/3YQY0bjzf1QrNvkxzzZrPiK0+C5T3XJarySo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755889; c=relaxed/simple;
	bh=kyjRNC+4QFZXsAkWIG/lpnFNbLXZy7kZKz+PYFfTV8E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TKs9GIc9vCrUh1yxVZZv57PtyNGj3WvqZxCleQaPhZpafuH7b8xW4/vBAGPvJeukai8tWz0TPXH8GXiHhRDV8nON6cJNLSnGyxEhGqC4OfaLs3RgJH3VOjgtluMn520fDIj1hSFx+nK+yNOgBjRlQu4B8ggtbyoMjx9+hYw0Ajk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HhxaWlPg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OClqGf025248
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5RPuIRFwOuvbIw6dAzYcNGhI9caskedBAXe1e6dXYJ8=; b=HhxaWlPgpT43z/+z
	pB2LBOAb6+bUF8rylsG5jYdctRryuYmuKjCaURdvt4KsKw7hsKk1of+OavF4dXY5
	sOaz55fQbSwMVsR3vXdWJVYqEGDCB+ZOX99WsYGWPrv8VHoAWywK6fREXpObZSKg
	10+HYkmtrT1aRWQJRFNOvOKmex/1QhXJHeuWXlncFs3jTlLBwQ+xTuF8qsliqpEJ
	6wfvHnaZBkTVSxK8i6GtyVzjjZR2GWu3vqkk7myb9YFbp5qwK/dLC2jH2PT4THZb
	K6pvqo7TKlka7SPrNxoB2Jm7CTc9e8xNYrx1K2D0kdMejGVDvg6JjtzVR6jeWHXg
	VKfZkg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv161f4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:06 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244581ce13aso5379785ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:18:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758755885; x=1759360685;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5RPuIRFwOuvbIw6dAzYcNGhI9caskedBAXe1e6dXYJ8=;
        b=DjhCNy1tRf1vcfox5kzI6JdiZwzakI9tnhcA2FI8a9J4ji/L/DdFOl4sQW1GGQTZbq
         LXlMtnFrylLF9SnbM8EYDby2LG9Dz3r8u2eVzw/GPGdevJNxroKzlDh6hZk6EEIehtg9
         ArnXkQAIes+Jt4x8Smv0WGGJ38pt9BZ9StI6xRDNJlEXwCR4dnKi8DbTE6v9bxb1Ew37
         hkg0fHs3ZQS6LJChrnJLQK0otSe3b978HfGLJFhr2Jpr5lYSPRofKYUQAeuxyowGzqT7
         d5/6aZd0Q8F3GeUArjb9EoyIeMT0ElN9hC6Hm0qZPYKs87EAmMGNy2wVD3280qs/rL55
         vdvA==
X-Forwarded-Encrypted: i=1; AJvYcCXFCMXpnex7mxGoCLlIoQSLc67Qqvem0pzB1PGpjvy5aZzC2bTyjKHnYPCL0FepVKhdbRBMbMXw1s/Y@vger.kernel.org
X-Gm-Message-State: AOJu0YwHj6tOVSIEqUhlWKlBsOWDOCgyNeFU9Ws05pbnqhuzEY2CjEKg
	hYsxAviXn99Te9uwqFHakatsJEtBNFqHW9zSZCyYTxvAe9fCT/vl39PjjZkJo7wpHX0TKGbkCO6
	c3uM1F9Ff1edlW+J3qPlawf9ZEbwfrc23s17FPpN7C+T3mUu+/qxe7NB9RyjNRNyU
X-Gm-Gg: ASbGncviv3qQLgXpu8oVihktFWtGN88KwjAKwdfajOvrn/UgSYWs+Qg00dBuCUktZCx
	B6AbtSF5v6HyMKomzy7XT5TfCAybce5Q9xR2dvJYQHe7oZn8ZVkUO3hl1FMKWG/GDHwzXpxe5I/
	PoH2x4ISVpi8NGUG84O+G9FfeI9IEDLFAJfjvRUTJ9kICH60ArBFZe28B8pObcQv7jFduH5V055
	hZMtyYZ/4mhchET0DeFnXmNxRM04g+RKb/wiZJP71Fj09VF0/4KiqJ0rHlzaqaRe1mtTcse8Ga0
	ebGT4aPv4SDIrICffPtN1KSX2ZVg2Sq+NrAYDvCKh/tOrzYgEFiH7j2Vg3kybTbWE8CnupNdECs
	NUBaqQSbJVBEdeEo=
X-Received: by 2002:a17:903:1cd:b0:26a:23c7:68da with SMTP id d9443c01a7336-27ed49e70e5mr15861805ad.25.1758755885315;
        Wed, 24 Sep 2025 16:18:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEb2g9nB8TyyjQlnm+SE/pRKN3CPIDLQk1Kr1voneYm5CFJO+CITrFt9uAetd0cC7Mbqm1pxA==
X-Received: by 2002:a17:903:1cd:b0:26a:23c7:68da with SMTP id d9443c01a7336-27ed49e70e5mr15861575ad.25.1758755884925;
        Wed, 24 Sep 2025 16:18:04 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cda43sm4321385ad.25.2025.09.24.16.18.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:18:04 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:17:46 -0700
Subject: [PATCH 1/2] dt-bindings: arm: qcom,ids: add SoC ID for SM8850
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-socid-v1-1-fad059c60e71@oss.qualcomm.com>
References: <20250924-knp-socid-v1-0-fad059c60e71@oss.qualcomm.com>
In-Reply-To: <20250924-knp-socid-v1-0-fad059c60e71@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758755882; l=655;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=kyjRNC+4QFZXsAkWIG/lpnFNbLXZy7kZKz+PYFfTV8E=;
 b=JoDFbxHcNEziskqBRxVQmFT3ZzJqLdKTCVd2Y6JfT6TTMCcm3Fj8628kv070ccUabXzW2kfqx
 BixwcC8YfBxCd/ZhQV3EjLhWiEHzFL721ikWz6zrPhyQX58mWgzVBPi
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: BTNl60GVblTElA4QgAsX_YvM4uC-FY_1
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d47c2e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=-GldTGkhEULYXnHVInEA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX6QGS0fklZfLQ
 /REjZWyz2l6WufJxgAcglGwmAJM6S56t3oRzCAwgNRqAsQUvK0Hse3cX0YZsGDEqVMUIeflIQLb
 XTjVpUo/1YNDo7RIROsQWzJHKA2i8fz1NC/YBj3vnNVR9GHDLgdrwhXLYSNyFrxd3Ri58V5yOMD
 7OrOQhmhPXDpiUjCI26kQzi2EIhDzHtAhFGQK+C4mi/CTooRlps/yGFrQcyfqeX/KEPRhFzC1hY
 9OQ8v3lFRKpNYcDqoJHZJYD/xPyLiN4k1u372R57cWavKSy/Q7jpMsk3i9/FDmUmwxvogDVJW65
 +pAY62ACkAL2EsYMJxLSaYUeybuc1aiSWAgxls2ttNR8IdFU9OvF0+2HVHjkmASBP29EsLgnUCA
 seIpnhGk
X-Proofpoint-ORIG-GUID: BTNl60GVblTElA4QgAsX_YvM4uC-FY_1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

Add the ID for the Qualcomm SM8850 SoC.

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


