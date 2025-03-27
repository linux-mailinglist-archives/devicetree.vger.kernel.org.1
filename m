Return-Path: <devicetree+bounces-161108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAD0A728DC
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 03:50:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 549F61896656
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 02:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D217F1ADC86;
	Thu, 27 Mar 2025 02:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kA07C0iw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4952A1AAA32
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 02:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743043798; cv=none; b=tC9KwD6KPv4PfmU34t28nR67n5R1OgheBkjRr8Vuf1+Oiney5BPQXMT6iv3US/RO03wLeKryJyBP4WpEzm0ABLtXosygDQxyV7Fq0UgZ7jlxeU9glfPQjV3V2blKDIBVCZlOMjdp+l8PMGlsMpG0QDt/Su6dhkyzmQeHneJjSlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743043798; c=relaxed/simple;
	bh=Q54O5th54Yr683QpriCePZEsUmE8QEGP6/Tb0ZslXTw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=j/wQ92qUVy/2F30jTi1cZn43RTr+Dtt7thFkFBXyLYGb9vKMZwfv7LdyevXBN8n2hx9FCKL3JitfjgZdr0kR8zKx16ojdJUbhZ+ylrIa8/cAJ4gESAEACB7zSFCYvYUngrkSwhAhiDRWJmxHr6+LT4XxrxosJdfBj2yeiB1+Of8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kA07C0iw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QKIX2B025450
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 02:49:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=H8iGPFMmyVn
	6gQMq0G1OkkASBSaasB5q9GB5dI1pqRk=; b=kA07C0iw3juVIv5Iw+h72etKYA8
	7PqCWIn245QBdd8az7NTzpb/gdcDSL4z/li/1P7Sv8bt20PR1Wqe4DPYlYH4IPdC
	9Pc9gPBbiwVecl/ZXHimnN/lyfkD8qxYR0B8pZ75tQeMYKHMcc0jOHQxMvxlf0J9
	f+p4rmQDGaUSvqNFuOOKSmgzDpMD4w6D9zd6xuc1Hser7nqTFq5U9KGzlM/rGjnT
	vhiyfk0O9ZPb3LC2yxLDNB7SCa+qFDN6cybJ6EvknyNFnxonuA1a0b7L7G4uDxev
	SL0dnNRBui59EE8BiD4tznIl8gsNI/xcnCZtIBkrmtgCxqby+i4qogqDr2w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mffcjg0a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 02:49:56 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-224347aef79so14484325ad.2
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 19:49:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743043795; x=1743648595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H8iGPFMmyVn6gQMq0G1OkkASBSaasB5q9GB5dI1pqRk=;
        b=XHYmUUz4JerRFiZ6tXGz654rCffcTVdbbFdWcmVEmWS4spl/kFSJUZnso8qQ9FcUF2
         eDCfAy7wnJp8XDs4Z7W0WATZLA20SM7ozaW3ttjHij88R+CGnprStE39YWZ4PR620h+q
         xosTTsF/zMpUJbaAfPD3YLiftGjNvvIPo+t68R5HKeb5FACbR1TQqQ2l62KFIurQ73/H
         dNKInwmRrNPQPUJBBeWywrxKmvGR47z8mOBCnQeoCUdNBiVQvMjCyCMQjP5ImmkqNGcl
         AIcmjxXo5x9wg0hhq8reoovC2GV7QzP3iMqwVqhdsG7Lh0YwMOjQ4p8pVvDgisve6pTF
         QnGA==
X-Forwarded-Encrypted: i=1; AJvYcCV5EnRdXLzvKbYhMQ2vtdEMSAdCBlYCxsEASsqf+ojlsgRjvO70T+1bBO63YcQqzKAXkpykP9i0BibN@vger.kernel.org
X-Gm-Message-State: AOJu0YzOhUgt/0V7Vlp6QMCpwySr8Wv+Q0oU7h2MG3Ypkf5oHkNq+zux
	y4ST2vgfI/EHXDwoPU+F8UZO0DCN0Z1oK4UefCABX92RkSJ0TrklJJosCDogBO+1iOeFOXbst9V
	w8mOYiiOcAHdM4oftisVVZRpoc+yUrNa/LytEGUvrHP0dkgQP7dLSH1vA6rSG
X-Gm-Gg: ASbGncvJD7oEYYMZDlxDxqdURCzGVaOUvc8AxvWvYjzvCfnktQYtwjfHULoa+/4ilGp
	T2lYm4K9XrdaPweijKHBuzlLNHJe9NlFWFa51NkMczwn0fJDta/aa9riUuzMX3v1z02NnzZrYcr
	Ullk+BoHiEHW5HWT/M3nYo29S8bkLvuOxOnVW7xBmSJq0auo//fhV8sxYMvWAYPg2PEBa/scH8V
	SnVEaFQcdSa88NXWkolFyzhMug7heGr8pATYmjvLL/E00diY81rbhGJ1cs8sXF7G6oAZ3Dfq1Yb
	4CUx15OdjgqnVgW6SrH0Fbioc8jQ22Bgrg9R9lL3qC5Nb76gD/D+qmjB6A91raUKLPBYnqBc3lo
	=
X-Received: by 2002:a05:6a00:ac4:b0:736:52d7:daca with SMTP id d2e1a72fcca58-739610a5b56mr2766924b3a.18.1743043794655;
        Wed, 26 Mar 2025 19:49:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhadWVzXuXudN7ZI3JoVA9KX4BVxT9zfAo12+PNeyFUGmjuLt8mHIeoFIhjG6qR8qbF/v+iQ==
X-Received: by 2002:a05:6a00:ac4:b0:736:52d7:daca with SMTP id d2e1a72fcca58-739610a5b56mr2766905b3a.18.1743043794299;
        Wed, 26 Mar 2025 19:49:54 -0700 (PDT)
Received: from jiegan-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7390615874csm13511878b3a.143.2025.03.26.19.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 19:49:53 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: arm: add CTCU device for QCS8300
Date: Thu, 27 Mar 2025 10:49:42 +0800
Message-Id: <20250327024943.3502313-2-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250327024943.3502313-1-jie.gan@oss.qualcomm.com>
References: <20250327024943.3502313-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=CdgI5Krl c=1 sm=1 tr=0 ts=67e4bcd4 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=kgaVu5s5ZSICvDejui0A:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: TO23TYYpFPkbwURYfzCAhmopU9zsqMMU
X-Proofpoint-ORIG-GUID: TO23TYYpFPkbwURYfzCAhmopU9zsqMMU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_09,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 spamscore=0 mlxlogscore=999 lowpriorityscore=0 suspectscore=0 phishscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270017

The CTCU device for QCS8300 shares the same configurations as SA8775p. Add
a fallback to enable the CTCU for QCS8300 to utilize the compitable of the
SA8775p.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../devicetree/bindings/arm/qcom,coresight-ctcu.yaml     | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index 843b52eaf872..7f3aa503da53 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -26,8 +26,13 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,sa8775p-ctcu
+    oneOf:
+      - items:
+          - enum:
+              - qcom,qcs8300-ctcu
+          - const: qcom,sa8775p-ctcu
+      - enum:
+          - qcom,sa8775p-ctcu
 
   reg:
     maxItems: 1
-- 
2.34.1


