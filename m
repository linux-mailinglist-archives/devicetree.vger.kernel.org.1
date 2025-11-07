Return-Path: <devicetree+bounces-236140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E397C40608
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 15:32:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3E5B189450B
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 14:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B36329E4F;
	Fri,  7 Nov 2025 14:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xq/Y91pH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YKcHvrmW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9343112C4
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 14:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762525957; cv=none; b=dhP/DZPX5BOkHVJd40GgZNQLjwfeweNKy5JCwZad8KhuCYNuierglavUlWtpRMx+8VsVSK7uXQoZk5u6VPeCQ4RuLOQSztos8W0wgSyIu2fKs06mCMVTRnOZAoJOXmt/7kuIO5tzAzcqfCwL722GHDmBsvJxt2NTlPRl5IwapvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762525957; c=relaxed/simple;
	bh=osQ5V3k9MyVWMr3c0R3flOz7cjip8jS0q6rHio3zx6Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=O7ggSBUeeICFJWgpkVD32lxSA+FZnVF2Sib3BQz8UFOCLtg3OHNaAz4w0vQSzaZYCnDIC62XntzCAECa0MN5+/qR11Ytyzg94CNWOqkt1gA8MoBrDD6xRnWjTRrV8cIAT8b+0LoYNZZNp7UBZe7ZAtHhlpGDbtNryadncvuWqPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xq/Y91pH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YKcHvrmW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A79A32S1710421
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 14:32:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=XLfDB2h4cT1/AoMhwltC2v
	4M/bE/q/WuRsSYyya74tA=; b=Xq/Y91pHOkDe3gVj+wtM7D8qZ5p2BK8nVFB11S
	U4PZurBFRGQPoqvRLPbUWdcYlLAkUGcHdUI1rucccOLI9yMTugN/PHaZ3HEWBj/5
	juTEoGhDpLM0L93tFGVe2HdcNKImfrz4mkkXL6b5vxg/BtoDvgRsKsVDzxlMcGQi
	g5baHXYQRYWC64+Wc7OBnUU82Q5tVo0E5Dfv6Sj8sLNKbhXXOqGqJgZNs8NDU9vh
	B7RfTZlXA++cwD228QmF37aIiv9EUzl7ZX8HFvOklHGdSrGsL6ZPZXNz1PA4SEF5
	qV4FzQ3qy67Jt1vJD/El0ibaue+g8bZn7d9aLGFX9kn7lEbw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a96ue245f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 14:32:33 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b0e73b0eadso1817277b3a.3
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 06:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762525952; x=1763130752; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XLfDB2h4cT1/AoMhwltC2v4M/bE/q/WuRsSYyya74tA=;
        b=YKcHvrmWENRRWDWzZE1CL0uOyY8kIspJgvLQYDta2uFG2fKes9Ga6fQXOmRlVNbLrK
         dv6ELQ8XisRBc/NDJ+fhvs22mg9L95AAIqDdZUqM79ind85ur385DBj9fYsbMik6s7wj
         axwvUj+cGS5eBq63zu0zXlcniSm3JKJeG1vOZDyJZENkuY0UeBqaeMc39rLe1hQt81ES
         PuBq0IyagxxL2jeSGyijstB0RW7Q3N5jFGXmFf7GsGUyYlYTh325E1W4y2qscv9vI4Jo
         YYahuE2+qVH3Ds5A2QWcDqp/fXxIeOIjtUI7POg1LZpI+Cpsd7qqKwGM8BGalHg2K4DY
         sCxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762525952; x=1763130752;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XLfDB2h4cT1/AoMhwltC2v4M/bE/q/WuRsSYyya74tA=;
        b=t+En1gUImbaNNgx4xC2hrnThTMU41So85/5VJOAqh33NeB6q/TDeTZzD+0I4hb97L1
         nNB71ic59CoLvP/0djmWteX1L2hppUO619n/7wmMZnyHlItqDGv1XQ+6ofPVTnRwiwY3
         v7aPT1NZBp+DoQY81v1u0wUbJGFfx79C1whWvo9m3K4RJKs0eBbugkvfgfLu1/XAul4g
         +WhBnVXD2AxRrIL4xy+06EUi+QMQBms3yDm6c+RGDhRO+yTZ5Z82MJQfAIzi5maWOhJA
         qkWPQXQ2D9JcwV1BgAmnSi1UvqE1EliAhyF6qeKLagS582KTdAOJAnVsvbvsrOnjn3mJ
         eBeA==
X-Forwarded-Encrypted: i=1; AJvYcCVgJ9xis3Fyqpas8ec4u6+H0B3yMew4VqnP0nTGPQuHUDrKSge7OcYaBwd4R/6YDwFIdh2lR+xLdx4u@vger.kernel.org
X-Gm-Message-State: AOJu0YzsYTsOStb2nsVLQ9B3qO1/EHPPWk9m/xBPXwTwmxLbrcZf+fd9
	uPizYIkkaZOwTTKX/QAyn1AJ20FSomcVhhdz5BsBmIjvtPwQ35XNkMpDxSVbC4ey0iBM22we7Mc
	fPz3PpazRPr+W7V3w8DeKYde4LN5KpRxPJXhZZHUjrggcgKBvL1JrIrFlJKddq45x
X-Gm-Gg: ASbGnct/9ZqD4CMx8tVvERAnexVb8bPbc8EX6TnmRlNq61RBHPlr0Wr079WlsplnChh
	sBHt72p74nICCJvbL5svBcF2OrE0KBZOUerwnhGDZQJ3aw4ft6dMlht4eFKSRFi+hpkVpOGIUuw
	T2AH4QdlBy0T+T0eKxfFM3pCnWdIO7A0Uu5/gZDVDW+GOZbP5svkjgV61C1mX1c/F/2lQl7/sTh
	o8RfT65GVbtLivH1Z1b94SZxb6CpXzV/zqmr1sXZwp7Y/kI3GqKQBiRrsDjhv+CmcmTakd25SZ0
	p/budvlGF7pUKQAmMIB4bIhuuZnVPUUd+iXqn1w10KDca2XpsGBj7IfRNv2ZVNAvwwBBAEl1G+m
	qQmrsjGQwe2xPCo1c
X-Received: by 2002:a05:6a00:1ad4:b0:7ac:1444:6777 with SMTP id d2e1a72fcca58-7b0bbb0a75fmr5181185b3a.12.1762525952095;
        Fri, 07 Nov 2025 06:32:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZn7uIdGkx9mTVEde7MvoGMrw/d84Tr5ktpoqQ4mIBh2q0sjsRszANe5El3zmwLHlM/tvagg==
X-Received: by 2002:a05:6a00:1ad4:b0:7ac:1444:6777 with SMTP id d2e1a72fcca58-7b0bbb0a75fmr5181132b3a.12.1762525951610;
        Fri, 07 Nov 2025 06:32:31 -0800 (PST)
Received: from hu-afaisal-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0c953de38sm3240824b3a.9.2025.11.07.06.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 06:32:31 -0800 (PST)
From: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
Date: Fri, 07 Nov 2025 20:02:25 +0530
Subject: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Enable TPM (ST33) on
 SPI11
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v1-1-8ba83b58fca7@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPgCDmkC/x3NSwrCMBRG4a2UjP2haawtbkUcxOTWXjQPc0MRS
 vducPhNztmVUGESde12VWhj4RQb9KlTbrXxSWDfrIZ+GLXuJ9gSLmf4Kvi4FLDakCw4VdD2AkX
 7eBOkGoOaA1KEZNYabjaj8dNC80CqtXOhhb//7+1+HD9jf+l+hwAAAA==
X-Change-ID: 20251107-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-c8353d7fe82e
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762525948; l=1166;
 i=khalid.ansari@oss.qualcomm.com; s=20251105; h=from:subject:message-id;
 bh=osQ5V3k9MyVWMr3c0R3flOz7cjip8jS0q6rHio3zx6Q=;
 b=fHRue2pwlGzCS6aDIwUia1Q8cmUilp9BgnjInkTqE5OWk+w44CntiQ+E/Au+QKuibM3/h4BH4
 gXdc/ySbUUlBKxtrm5hUkRGJeNLEe70cY/tcF7rdhPu0xoad++TvG4U
X-Developer-Key: i=khalid.ansari@oss.qualcomm.com; a=ed25519;
 pk=eBXrIUgTWV0cgG+GsNeZPPgvj1Tm6g9L2sfcoxMGrKo=
X-Authority-Analysis: v=2.4 cv=fYKgCkQF c=1 sm=1 tr=0 ts=690e0301 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=0o05X4pXTjTZH81ee54A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 3KB3SS_v8i-iCfQXrPVBO3Bkn1ji7z1i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDExOSBTYWx0ZWRfX4rs6qx5M72h1
 06kM/u60zASAu7sQaGRmwhcSgE2yoDbcEh7F3uXvlguPpAJnbxzyyRubkp/z+5dNjX89feNCWk/
 aEQVxVazUX8RVM4ZwD0Eihw1npK1GKFVBDOGpY6nxurnGCB55uw9sCXNP03OxI7sxevscwXMuru
 9kLqJmJLn2Iw291UjEjR3kUT5CZ5zJkBzPFtuuOzjwPWszWqKZEoLNuLNdU7DwW1tLdvFnXIorN
 j1r/MVGRQ+O7XdG4YFAymPVnDtaOvMKA4vNlr48sgCCdNE9GZX5D/0YpJX1Aem5n2VJg45Xh2gf
 KcjciB0YP6PgXv6+D4FeAwajVHTaypipDwDw0cVQjTf8lJLakXoXzkmCku9fudm93fTRHXDq8VA
 5Svt4w1JMVAu10FtssYNOpEl6+lS1w==
X-Proofpoint-GUID: 3KB3SS_v8i-iCfQXrPVBO3Bkn1ji7z1i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 clxscore=1011 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511070119

Enable ST33HTPM TPM over SPI11 on the Hamoa IoT EVK by adding the
required SPI and TPM nodes.

Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
---
Testing:
- TPM detected via tpm_tis_spi
- Verified functionality using tpm2-tools (e.g. tpm2_getrandom, tpm2_rsadecrypt)

Thanks for reviewing.
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 36dd6599402b..08465f761e88 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -917,6 +917,16 @@ &smb2360_2_eusb2_repeater {
 	vdd3-supply = <&vreg_l8b_3p0>;
 };
 
+&spi11 {
+	status = "okay";
+
+	tpm@0 {
+		compatible = "st,st33htpm-spi";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+	};
+};
+
 &swr0 {
 	status = "okay";
 

---
base-commit: 9c0826a5d9aa4d52206dd89976858457a2a8a7ed
change-id: 20251107-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-c8353d7fe82e

Best regards,
-- 
Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>


