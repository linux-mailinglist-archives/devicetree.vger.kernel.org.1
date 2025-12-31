Return-Path: <devicetree+bounces-250778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1B0CEBC67
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:20:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D2FD302F82D
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D68F73191D0;
	Wed, 31 Dec 2025 10:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gOhFVLaV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c3HS9VbR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687212FCC0E
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767176425; cv=none; b=jXcD6XWQVEDtwiKCgnbL8JXtXbbQ6Y32yK6N6mBKzQUqLLRV+7gYpm6DwAx9IwnCgHj45xiBMGydo6pMTa4LmnM98/LeFWmupQ15ydYFpDv9b9bjeLoXJqjVcRQQp/yMe83EHnvrSket7lY5q0KWESALVrJA03cf1DG1Nj8jMX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767176425; c=relaxed/simple;
	bh=+9ZaeYSITjqa9LaWH6LtiAlmb0JwMQ1G1kWe7jUvDrA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ILZ97EVTmDmIj9jmGbMNUAdl21bUiWq3n4asIqZyfKbQ0INEZwHkmyruixTyCoz9pm69a2I1NxeywZ8+6U0Cc0X0pwNEeEZBtL5rLpg+aEQM2UPcq7jFW304q1ppsOmsJrkRlyY4l3rVofCgNqKgZpI+Q6o/SfuhREeoKmelclg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gOhFVLaV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c3HS9VbR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV5Ct5x2017232
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:20:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=EBm+C9txCrc0JpQP/cSYDwUBJ05oXh+KTPs
	Ja3/CzN0=; b=gOhFVLaV01MCt51zqc1hSSQRV2Eya9gg3BUNQj3TDg5/j7JwRNE
	okza17le6Acn1QJfJXlp/1Kolz8+HK6qYCGMVL6TnGIPudC+L1rRAFONKlKbWP4g
	p3PRyxfz6Tvv9RyodjayzeGxFzkPOhR5XF93cnleq0b0/ioPlJpJeyban17L1eb2
	dz4iBwI5ZiZPsIT+jaO/xww5FAG+8G1ywN9Mo2n9VckP1vV97VUl3nA/Xgvm6LLj
	gvKnsEOG+pjeFXNq4sLf3imkCdowbQ8GCFEQmoL3UJoXZaZOskvJHyXbIaIbHb+7
	WzuuYA5OXg2ClDYUyCY836z29zlDl9EOlcQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcv4agnx5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:20:22 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c904a1168so23517327a91.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176422; x=1767781222; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EBm+C9txCrc0JpQP/cSYDwUBJ05oXh+KTPsJa3/CzN0=;
        b=c3HS9VbRhCFaFk1ZxK053hYdTcI2dtpTtJCrJY62hVeaufumo3kd/wL+ZiKiYvh73X
         uuceaSAwmdpziDrjlbz6Jg7e/jSCQvl2ccEcLu+nwxwNffH9gvIr0bxLXIWfSXJYykbm
         9zWBVyO9d3grTT6MGchTq0aDAxqG2DjSE5/6wI6yiE9NQYe/e6eHN3+5vQ9D024OhyNh
         5NbQjNI7j52oWa/qnjpN00GwP56XfZOiKRt+5PVZzISllhc38+rUTJymOZxDiR6XiD49
         y5ODK8SF3zIualbbEwvlQC+CYMocahGlgHnSDMcSalfWE7kARSueTfDthgsBJhQjLBJk
         cD4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176422; x=1767781222;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EBm+C9txCrc0JpQP/cSYDwUBJ05oXh+KTPsJa3/CzN0=;
        b=CbI98Nn/KCORTNxUPTSkwEL5r1yngvMB1ncyIewJ/hkPQ6whBuOHjKR/kY/L7RMX0u
         cn/NDSH+ZBGbeLWdhMfN44mY+u1I+C+56xUubClFqKgA6oDx2vB7TRb9toWdUVetKTSb
         RyH/rSW1XIsY0MfbBdD4LaNCRdzaDMPu100q5qXsgS7yAl9sfM4JDjowMEzVcQIi8tk5
         wTAKzyuvNRnb3Rgqy4b5NEndEpuAlg/oIh+1mNoLW3sNwZt3drHZAU/6EuHb6ulJd1OX
         4kgaZLFwXFj598Jg/Q/SZxBYzyKjCmgMgavJLXfmnenSKIRl33+JkSv1I1GAs+zxgJMH
         1rPw==
X-Forwarded-Encrypted: i=1; AJvYcCVRd6H0uktjAMgaWPZp6Rbg6nZ8oiFM2MMvN5/HYNQ+4jlnliXSdolHxadRZ3JD+WXLcxEVJ7Oq67TH@vger.kernel.org
X-Gm-Message-State: AOJu0YwenTC2bYNU/3LaAMMkfoQPocnPam5DHTm2+DNESxpyp35B/kof
	6Qtn5QSaZzU207z3N6PrDk2Ilnvxf1i5irKioBrkSfctIf5bxLFYnoYMzymo0do5/BUpRi3zDus
	7HHbGXSDBmO/3YGNrhgAXvRemtPkhvAKtWueLcSGuzCD2R4JKtYF0wffeEtRqPNjW
X-Gm-Gg: AY/fxX4Esf0Z/p10Is5KzPYQ+ye6gjLoAXkhONumIagKQi1Fre+sWldKLiKd7SWZrAc
	uDW35CfsBuNWIA84rOt/vqq5khMZ8hCTu8JNTRHdkMgQBBrsLGJB9G+HIjK9En6pbWZXr28p9sx
	c5nxDh9QvGQjCQvJRVdC9Uebou5iz6MuY+99456BaCgBNantSassWrDAxeh3beE3ntF0z55fQol
	3kPlrT+eg4UmDTZGjookDf4Kr49zkobZeMNzwCJ8JBQVXyGeNWn/0IlGtWySXn2wnFClWHNuioZ
	lljYNKq7ghOfQIGLTkjhNiXqzmXzXxs9Gryf8DUU4SBnteyD8oClkNMZqN2VBhsuff3y5HeZzOC
	mdehtxCfrZXDiQrRJA8UMxqWCo/nZ40TooE1OIXb+JykiPa+cjkDW
X-Received: by 2002:a17:90b:5843:b0:32e:528c:60ee with SMTP id 98e67ed59e1d1-34e921c3dc8mr30732601a91.24.1767176422163;
        Wed, 31 Dec 2025 02:20:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHBBK2KabkmuNb8Z7SZE+KAlG1z4dXeua00bYwsikaNo04m/NZt3iH73LymmMzPuFxfkb4ELg==
X-Received: by 2002:a17:90b:5843:b0:32e:528c:60ee with SMTP id 98e67ed59e1d1-34e921c3dc8mr30732574a91.24.1767176421701;
        Wed, 31 Dec 2025 02:20:21 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9223ae29sm32163920a91.16.2025.12.31.02.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:20:21 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V2 0/4] Add UFS support for x1e80100 SoC
Date: Wed, 31 Dec 2025 15:49:47 +0530
Message-Id: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ufs49k_iTTDosGGrko_VRV1kx3CBBJ5c
X-Authority-Analysis: v=2.4 cv=Ps6ergM3 c=1 sm=1 tr=0 ts=6954f8e6 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=IsWZ5-T0EzXF7LRbJecA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfXwlxpEME5OFyN
 uV4VgwA1PhDulFm0ZAPDtSG99Ve8hoRCDCjHKOvKT+23VBoaiA1Uvp10OGfkPsVcLGfJ1+k9jsi
 lc1X5tfutb1LMjuTJcDHyj8Mc3yqf8Y/fHUDvrGAP3fmyCvtFDAT5zuIYLpk066yKlqsnETlXSs
 y1vaxRIrIDm2sg2TXJ02wyzuGimG6W6CYDabxTwZLbtLUcyHW3LLpP7crPGe4Z7fuX7DSwlDHam
 qihz+BAOGbUaj6o9dVCa8Y1uc1jQrh5rcILb6Qo5tUaWAeSwAGLb1aDLsT4948PjDVMH1W7xTrD
 pcrDPNHmLpP5jAM2St+qP4FYMRRk7GgzOphPolckTMMfJx8aW9Yv8T9Aq3aoVitCZE99s9PRRUG
 Y58yYHMu+irUVxRF16pahb7Wu/epdxuECWPCevlN8Y16IyF/9T9doFGOL+hzYxLXrQ2fZbTKdq0
 HUsjArr31HqRFymkXRQ==
X-Proofpoint-GUID: ufs49k_iTTDosGGrko_VRV1kx3CBBJ5c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 impostorscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310090

Add UFSPHY, UFSHC compatible binding names and UFS devicetree
enablement changes for Qualcomm x1e80100 SoC.

Changes in V2:
- Update all dt-bindings commit messages to explain fallback
  to SM8550 [Krzysztof]
- Pad register addresses to 8-digit hex format [Konrad]
- Place one compatible string per line [Konrad]
- Replace chip codenames with numeric identifiers throughout [Konrad]
- Fix dt_binding_check error in UFSHC dt-bindings [Rob]

- This series is rebased on GCC bindings and driver changes:
  https://lore.kernel.org/lkml/20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com/

- This series address issues and gaps noticed on:
  https://lore.kernel.org/linux-devicetree/20250814005904.39173-2-harrison.vanderbyl@gmail.com/
  https://lore.kernel.org/linux-devicetree/p3mhtj2rp6y2ezuwpd2gu7dwx5cbckfu4s4pazcudi4j2wogtr@4yecb2bkeyms/   

- Link to V1:
  https://lore.kernel.org/linux-phy/20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com/

---
Pradeep P V K (4):
  dt-bindings: phy: Add QMP UFS PHY compatible for x1e80100
  scsi: ufs: qcom: dt-bindings: Document UFSHC compatible for x1e80100
  arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
  arm64: dts: qcom: hamoa-iot-evk: Enable UFS

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   4 +
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       |  38 +++---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
 arch/arm64/boot/dts/qcom/hamoa.dtsi           | 123 +++++++++++++++++-
 4 files changed, 165 insertions(+), 18 deletions(-)

-- 
2.34.1


