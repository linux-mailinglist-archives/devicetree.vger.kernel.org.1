Return-Path: <devicetree+bounces-243901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D53E7C9E3E3
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 09:37:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69CD93A692D
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 08:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2D7E2D4B5F;
	Wed,  3 Dec 2025 08:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mfftMb4A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XSNj6GQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B74086347
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 08:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764751013; cv=none; b=j3xhVISUHi4vhxceUNlFTiYMQDm0u1O/9sNg/FMPB9OsQEU7Xk1Oi7JInhadkrdi80WVD2rW74Y2jbZcpeKOxQJHJXTfVJnV/uZahbo2qbcmljXUsIF9uC/FlanMIhQFJFMBySMobVT8UJQ7Xp0pqDKaG1Zvsvt3vGT4BXOFU6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764751013; c=relaxed/simple;
	bh=wKu7do/16/FTGAiJYuD5Kg6BcEKBMLj4Fk3qrG7bFU0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rCfp3V+hn4dJLgacZbRUG6gXj+6+e144Z7cvjj0bb6f4zeOPjlAOPuW/DFANs870brNwQR1z011SEc2Kl80EiMeiynNLg/jc/qIKVHf68jjftkP4qzaFlWhkQGL+deDNBLyyWWB3cSHqLYr5xLeIQ8rCuosrJPWvFNqTo/yAvI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mfftMb4A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XSNj6GQF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B33os883191674
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 08:36:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2EFsXlxqAEO
	zRFKhrA8JZa6NI/XeJNBCRnKuMw7IHvw=; b=mfftMb4AR2L4cKa0zWv8gUjYazF
	s700UBsHEvN02qu49hL0p4lNYzKIFIMQhm1mwu8fbZG5KtHZoaI65IyXe9bl9YwF
	yVf0IVZ9fnLdahY2u5mmwZyNSw148S3CPLMjl2kZ/k53EQ4D1iLcLj5B8uIvj3ao
	ZO86jGd5o3hYaDLKl/JOpk/sSapU+YxVceAvqLYbjMSRcM3Qv0ntIAlTyFoKe+xv
	TmlNcnrCKbzFC+SoaR40Ji9ATdwWEf8gdShnYhsuxbp2S8KsyBDQHo82vzSu1FG9
	XCyRurX4tV85lE97uUNTvpsRSDAECbhD2c7/JU6tK8G4qQgkBYMc3gILwtw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at3qjjhfv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 08:36:51 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2956f09f382so4829585ad.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 00:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764751011; x=1765355811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2EFsXlxqAEOzRFKhrA8JZa6NI/XeJNBCRnKuMw7IHvw=;
        b=XSNj6GQFSek5BNiIAvnYfIK34ZAWlWqPx77PjPtlwHIcqnEfxdOdHB/RGfKVJutzrZ
         mkjjs2qALawM0uxkk4eunrIn5sgAQBTvgJeFlvxLIMxPOuFCaru+M8pMZheVxmBD/LUP
         wBzY9fWAeZHE2ZKqVrwy3r14DjoyvCRK8nEjSLt4Y4YOhVJAwZe+11QMf5DHZl+IwhQh
         7QSGGpICtelKdTtAw5E7cW7wBSKP+/WimnmSHMEPT90hjhh4O4TaoA4W0+TtCfqvgjD+
         Ige+w0a3Wi+ywtS2hoR/1+6q4aiUFUlqnRy5G8JK0qOYrgFSLtZmPOBbcjXBDxgVVQ3Z
         a4XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764751011; x=1765355811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2EFsXlxqAEOzRFKhrA8JZa6NI/XeJNBCRnKuMw7IHvw=;
        b=BF8lpfLhQqnJxqORDinm4tCb1PRPrNP3IQ7p+Jta3XktaG3i0lAAmSpGgiORWOHZgV
         Yr48mXNAhJnKMPPQ0fFIFUgSP7V58nEeBHte8FiwDyry/ir5tVRGvM5Fr5s8TwqaKvTo
         FRb1Z2CjSxkRgO80YeiWgFMNWjaXzLbwXcWuR1wFWI6bsTHbn6PL1ABAQMZDqN3dDIaL
         hd+2I2VefRRsh/rUhb7+AJFMn3b9ZN4WsE8eKJYDhgExqkNm7QnvZNish1rM39elJbnT
         fKekZPNrGj/6EBNAa0gxuUfDip8NJyIy3ZZ5g2jONCTWe70FpbxxVaWlsaSfvJxMTZOH
         dz8g==
X-Forwarded-Encrypted: i=1; AJvYcCUvWM56KRAlYsaFcv0wfN6/SfzlbqrcZXnt3/yYDEXfx+gL6KTOlSaoGGCzf6kh8KaYNxnh+FEJv6oR@vger.kernel.org
X-Gm-Message-State: AOJu0YyDLFtpPb1Wx5jRjeGSWDf/fDvzXdtti5LbZk/32kXKbhUzA34E
	XHQMiyth+2p+XAvzOT8+hUOnECkRGjj1Ef4iGDSSTmh1GjIfMWAqubRqBAzWQQlUnNpUMrJvoap
	3J3nq8MG/o4ZBJsnEgJ81MPvpWkn7TXZhnvuMX+e8VyXEAmC6qK10K1AWj7kkkAZ4
X-Gm-Gg: ASbGncuMjNWfHffuhY5dNEJLCKKPU9dv5KWxfp9eL0lGVqtARLXWkRET5d6L/fSFhve
	mCczeZKhjj1VvXBKsfkmcr3XigDUKRpTGjmzCW2LXUoicB8tyUdfA8U9LKXO2sbB0BeCoW9YAVH
	BGN08UgWUr4cDbAnimR9Axja1Kb6I/Mzq9RBfq389hVFx402tzqepP2U6wQ4CYXBL84UYc5bLFp
	CMtnkUpgIYijX4v/E+ghhSRVHU3cW5Juw7wCLlV0dcgmbB9CqVmu0IWxdEtpsoXB75GOXmlYTJh
	keKKO1yDMLUD+thOoQtEcFdFlULAX6pqxPKREwW4GOu5UL0x3MLSg1lkWNFvzSwklmcN9pMhrOR
	gxRaazh7yfE3ghIQqrw5k+9B0Wij9vJs/hsbW6fRVuQPZk3Y=
X-Received: by 2002:a17:902:f683:b0:297:e1da:6fd6 with SMTP id d9443c01a7336-29d5a4aa753mr68233195ad.8.1764751010998;
        Wed, 03 Dec 2025 00:36:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE9OwI3p2D4ZnJgtRbXnVvtY9dCf3GI7+PTZnV9WfMVvJs8dUV+jaL+sM1GikJSL7PgiIv8Ng==
X-Received: by 2002:a17:902:f683:b0:297:e1da:6fd6 with SMTP id d9443c01a7336-29d5a4aa753mr68232885ad.8.1764751010510;
        Wed, 03 Dec 2025 00:36:50 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce41785bsm175707985ad.20.2025.12.03.00.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 00:36:50 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add squelch param update
Date: Wed,  3 Dec 2025 14:06:27 +0530
Message-Id: <20251203083629.2395451-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
References: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA2NyBTYWx0ZWRfXzRadSICeRIw0
 7cs6YOwc5ORgn7L81wbBK2twA6knCT3bNA4bqvVCQl/jFvJMDnbvtccCK4i5bZ+dBIv4LW1x+2V
 GKb5I1gMQU9c0iCH+0Vvc7dHYhOMtirTPPEizLy7T3X6MsOdXgM45rXml5JK0wB2ioWsk9mcxSq
 utyiX+hM9yPIOSAPPXlZsrvoXmaIIUOzzCBVl03PRFew/A1xdRXFFO9/b1CJMDxozFMC29frgMw
 njUndV3FdnaBM0h1WA1DJenlHWWaPu7x4DXrBJtgwA1QQa/AP95FMUwYKSc1WwrvHQbukKx77hV
 ZykAxTY+fjcjWQqwEjOh5ezYjjV6n1EwGRHbk0JjeqpcJWK5NycouWk4ruRRXtBm4qzfU9BsEDV
 l92/M/XVRtR7L7DBUld9Z6kCGPBMlA==
X-Proofpoint-ORIG-GUID: 39GxvwbEXgYRYt3VNJ3xz1K0XGrHxNpu
X-Authority-Analysis: v=2.4 cv=QohTHFyd c=1 sm=1 tr=0 ts=692ff6a3 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=rf2X_MbSOQWHk9B6mvwA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 39GxvwbEXgYRYt3VNJ3xz1K0XGrHxNpu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030067

Add squelch detect parameter update for synopsys eusb2 repeater.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml  | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..8a9251ba3b54 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -59,6 +59,13 @@ properties:
     minimum: 0
     maximum: 7
 
+  qcom,squelch-detector-bp:
+    description:
+      This adjusts the voltage level for the threshold used to detect valid
+      high-speed data.
+    minimum: -6000
+    maximum: 1000
+
 required:
   - compatible
   - reg
-- 
2.34.1


