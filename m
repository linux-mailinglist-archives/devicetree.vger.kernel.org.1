Return-Path: <devicetree+bounces-139949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66689A179BF
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:03:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6AD547A435C
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 802D91C07C8;
	Tue, 21 Jan 2025 09:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Luo/Nola"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1641BEF93
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 09:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737450174; cv=none; b=dCklUi1bBJ6aiCQwwqxI9Zs7wQntad164U21g4uTqycnzteuT1jeN0zBCJWFCn1P5K/rPsgEgXFkVnjOYGNct7IPyobaNNZa0RnejWXPAW+Bg5+CyR18f/lFkmKRCJvK9bCtzk4JAAz1crq9TgTNwYOxhyy7a1TtIoU6oi0kiDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737450174; c=relaxed/simple;
	bh=4MX3WIiTyRFr838Px7+DZXcQlpRlsCkB4IDrTmH1054=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tBIeMT6ee25rLLEjuBHClRHaPkmwNcKC7UygAYiwD/UunHbA0hz5/AjdtJy7b4sRSOy3bASGOfCr67GZ5JenK3pzrpDqq5Xwj9HgGPe1ygo8w2HD2RWUQUfxCYya/Xk1f/3JOWuT3W/P9NdP1EWD5AFyu4S+BaaqBn99oKoCkfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Luo/Nola; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50L8Yrsp013805
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 09:02:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PUDzEDrIIqvt29WRa29CLmrZweyoHml2gTWVhPqlN+M=; b=Luo/Nola9WSXA25T
	E2jGWjBCcwp72T9cRJwuylogCt9WU1u/q0hdgRcBQ+C6Ck6ErV25asWh0aAOnJxh
	ulWxBpXx/sS0tIGUfQqDOs/UQy1a1IXQ4YfTGQzb5icHqWxaGWFzVr3X7H3CC17/
	keKeifWRLLusEztCVeaSTGo8rEZ/CcrQ209cS1ZuaOf8sQxyeG+2+x1ICJlsk457
	YAoTmMdV1bq6NfqtY53RPHzSEjsiCgA2q8zV3pi53sTkB+0UenFXhxQWHB9xSBbc
	31LUuzaU0CP6tLGf3pBTGRTPqR05j4RzjLhTs/jOKXgXoTNPQ0xPDLvEk01lM757
	94wXTQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44a75e07rh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 09:02:50 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ef9b9981f1so15555236a91.3
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 01:02:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737450169; x=1738054969;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PUDzEDrIIqvt29WRa29CLmrZweyoHml2gTWVhPqlN+M=;
        b=flIxrWEMoHbypVs1n//ZokovF25aUWKxUz0Br7xXGkzxa5donMcK7QRtS3X3ti4itS
         iwtxcqlAnojxRKbf13k3IAj6lnMcCz9ufMBEAXF3Y5+hUAuMtuAr+3kS0AVsL9SdhTtR
         f287il1EUWL6OIxetARIXfzqvXdaQ9Y//TXzT5HfZTDo1d8sq022S2TPVutgTZocLLWo
         nBdeepQYAEuZiMdMw3kpyQ4l89PKdEHjBSJqRfP48ssR8HSrjWUOp4zVF5jgfejUqo3f
         FXLAGbxMOsaiG+8BUb0EiINBb1fKfpGSH7AL8W87NCYuoIZd+jZuNuotSasiBcbkfTzK
         /b0g==
X-Forwarded-Encrypted: i=1; AJvYcCWsCmYSkF5PzIqkHNmgJiR0v+q3VqEtoNQiuIScqJSYb16gGiuJW68YbcfQXq4loPZEok8rwxr17z5x@vger.kernel.org
X-Gm-Message-State: AOJu0Yze7WyNGN12CIY9OtRDzJyv3vICqKhvdM/CwAGU3hBzwwikexT6
	zXvFXe+eOmJkoiGlbCQ7IoXAhe2BKoLGG+WnbTOqrDttNrDszYx9W2qETf6jKeCpP4eyOy8Hmq9
	DmN09OTy8HvLu9YHVIO+G5ZNJvh6MiXIgZtljtIa9gyJ50r/GYR3uCU8zvx8A
X-Gm-Gg: ASbGncv1qnSbGSUsYHQslo1k/a1FtHrLowumIbIx5mAZmk/OB9WiZTWNbhuT6wc80wk
	TJ1Nd2ET5QAO4/EfdOdS3cYb4hVaJBkFT/buDGl+T8BjEwxTKHp5mwU9x0j4N7Mij2OvPlisELX
	67XQCkE+Sn5jqHHN0G0V/7sqDmFu5NS31nUQ8nebKe/hWVtZ1p8471KtXNIDKbL8zCcCKPMgH0G
	UzHMf1MW49aqtFk0LRnjnR/iYcvdxM0jm2dhpW5eOfJQs1bsQ/lJHQnBnjQycTZrqDDr0VqZmof
	tb7pU5W7F6zf3sPjX1lDvsmzLUCDIQ==
X-Received: by 2002:aa7:8884:0:b0:725:973f:9d53 with SMTP id d2e1a72fcca58-72dafb71bfdmr21885122b3a.15.1737450169021;
        Tue, 21 Jan 2025 01:02:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFKRjRYcNja2nyCgPRik9OOeBMQaTLE8ElxGEIVjphQdFLucJ98JDiideDFIysXKv2W6hx5pA==
X-Received: by 2002:aa7:8884:0:b0:725:973f:9d53 with SMTP id d2e1a72fcca58-72dafb71bfdmr21885077b3a.15.1737450168619;
        Tue, 21 Jan 2025 01:02:48 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dabaa6407sm8528378b3a.163.2025.01.21.01.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 01:02:48 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 21 Jan 2025 14:32:19 +0530
Subject: [PATCH v3 1/4] arm64: dts: qcom: sc7280: Increase config size to
 256MB for ECAM feature
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250121-enable_ecam-v3-1-cd84d3b2a7ba@oss.qualcomm.com>
References: <20250121-enable_ecam-v3-0-cd84d3b2a7ba@oss.qualcomm.com>
In-Reply-To: <20250121-enable_ecam-v3-0-cd84d3b2a7ba@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_vpernami@quicinc.com,
        quic_mrana@quicinc.com, mmareddy@quicinc.com,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737450158; l=1852;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=4MX3WIiTyRFr838Px7+DZXcQlpRlsCkB4IDrTmH1054=;
 b=eu7cotWTAlAWVpYfauThmLMtyC8BD6PFG3KpxZSPz/kc0iNUF4XJ4YJAkJm8bEYiLmXKWDjJN
 P3ggF+03UuXBjvLOdz7biJuGqpdaoo2kocMfDs9lV6rKhTRRbWl+6YU
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: jKMwbRmMRBz_FcXEVRR8_d9NGnocD6-r
X-Proofpoint-GUID: jKMwbRmMRBz_FcXEVRR8_d9NGnocD6-r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-21_04,2025-01-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1015 adultscore=0 mlxscore=0 impostorscore=0 mlxlogscore=695
 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501210074

PCIe ECAM(Enhanced Configuration Access Mechanism) feature requires
maximum of 256MB configuration space.

To enable this feature increase configuration space size to 256MB. If
the config space is increased, the BAR space needs to be truncated as
it resides in the same location. To avoid the bar space truncation move
config space, DBI, ELBI, iATU to upper PCIe region and use lower PCIe
region entirely for BAR region.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 55db1c83ef55..bece859aee31 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2201,10 +2201,10 @@ wifi: wifi@17a10040 {
 		pcie1: pcie@1c08000 {
 			compatible = "qcom,pcie-sc7280";
 			reg = <0 0x01c08000 0 0x3000>,
-			      <0 0x40000000 0 0xf1d>,
-			      <0 0x40000f20 0 0xa8>,
-			      <0 0x40001000 0 0x1000>,
-			      <0 0x40100000 0 0x100000>;
+			      <4 0x00000000 0 0xf1d>,
+			      <4 0x00000f20 0 0xa8>,
+			      <4 0x10000000 0 0x1000>,
+			      <4 0x00000000 0 0x10000000>;
 
 			reg-names = "parf", "dbi", "elbi", "atu", "config";
 			device_type = "pci";
@@ -2215,8 +2215,8 @@ pcie1: pcie@1c08000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
-				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x40000000 0x0 0x100000>,
+				 <0x02000000 0x0 0x40100000 0x0 0x40100000 0x0 0x1ff00000>;
 
 			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,

-- 
2.34.1


