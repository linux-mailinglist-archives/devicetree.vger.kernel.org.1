Return-Path: <devicetree+bounces-235031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C88C33FF6
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 06:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0D4414E2BFF
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 05:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA28626CE2D;
	Wed,  5 Nov 2025 05:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EwdU8bPp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gLGJfhs4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DC41F4615
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 05:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762321629; cv=none; b=dSuImSp9gDDwhWjotlb0jYFtE8Ewo1okMT4a9Sc27R6v9lY2UGODSuGk2TpZohbTCDTKjgV+YCXq/2/bi1L/WBTo9/XfV1/3RE6iH/lOwpx70uFs4ufy7odF5KkCtY14YcWlOyPcBkBxSJ3KFk3TEA4p6bEDs/pSiWcUK+M1OjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762321629; c=relaxed/simple;
	bh=8nQ5sw6au/GXcvKkhMPHNjA11MU04f/w4R2BKCtYs5g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=M6x9N3QSzCx0VmKFmk1yIEgHRtWBW4/xMl64oMxEd3swiPa0NydcsGsGSZADIp8CAaWp/5bFKaSEqOFaOKBTG/ij0dFHo+g0YKAVxePGpK6zbF3rtyJskf3unQU1CBobLgxKtXPHOf9y134jBUTRr6somAq+sdEE/mR0J+lTXcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EwdU8bPp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gLGJfhs4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A54YZTU4056175
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 05:47:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=QNbkeSHSadGd92B2YVOcrLu0e7BSImxzf++
	QWKYHrRE=; b=EwdU8bPpfsiiSF8XytJcBTYV3ZZ+L+8PQKKnKSBSjfjOjRIsd3w
	2EQHVbVbkXqBJ1WcTqjEV8OGPEgNU1zxN8zN9R6nCuziz+3izrYFizIB2youVrQV
	d24XZQ+lIFmZw+8qHW34iXspZDiRZKQfSG0PbWEn/SP2hZ7v5iBtCgM1I6tCgnMO
	lAOTwit+dAszpXYfzoL/3yXFhb//dGGgTReudt45wu+q927TuEaQZDOCQbc3i8Cn
	/yPURQwLR/76LM8+GN1k6XIBnBsPCaDBHFy9u8RNp4cUh+oSGEFjQQu/n2n0mmkq
	iRiDqIodDowhfc81e4LVQNMYuWiEk0IU0SA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7yp604j6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 05:47:06 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76e2ea9366aso6183519b3a.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 21:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762321626; x=1762926426; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QNbkeSHSadGd92B2YVOcrLu0e7BSImxzf++QWKYHrRE=;
        b=gLGJfhs4HI9uEf2oBp7i1qcV39Ligs2PAppN9fuJB4iabvDELPNw5jONhmdHNc46+z
         ySUEDLgaU1K9kezc3rbz/NSUaQkMaXhYFxLWaaHnZu+Ix1/73mlutoTVRNxP0CQUnVEr
         0woyPq/b0CVI+qgQ4CS4x/2qFZK41e6u77VbMtwr5X7ZlRgG/la60l4U43Bj2T9I6r7w
         4nQNXsAxM1fucJ054vV0HkHtdMaJH7gw/9n1KkTZ3TxA2sBivOpJMctF0L59lHrkmCcN
         DrzZOEhSVxBzipZNVMeqYg7KkYasMJrdwP3sY4A/BdE+qerMPmlDXTDHmQA/WlJbFIyD
         224w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762321626; x=1762926426;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QNbkeSHSadGd92B2YVOcrLu0e7BSImxzf++QWKYHrRE=;
        b=mTf0Y1WM2O2fC+U2ltHuuz6heRB6p00P/8BNwdfUHYb5mCnT6Gg1BIzNrHfxHALcFv
         hxO6/WFVxcpaBtwTk08SO+qQfH7ht9svJbm8PUswgImIJ6LKyjnMai8DDqZgx5XcalX8
         8d0wNTKgflzIud1Ki7F41fColxWIdFMM8PBjNXVRHEgkq53ygAL9+pGWlxY165iMQY05
         JY6AVzylGctVVFLMQZSTUZbioJOD/kh6WaVz8m40P/mObhgweDaqh4Ntrlh+/dwp+9Ng
         SgURYHtiEcpogdjXG+Oed74yvGe3K+wH6Wvd2LLZcAP3mc0DS1tRMyeSAu/qrNveNMlu
         UAoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGZCcTqgd8FUFlm6jtpHyZ6VgxbVw9oyB3U1lZsm0S+jtibmeF2v2wC1QeuZrFzQHFG668Tp6AG9FP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxql3h26JPhoPfMjxSbz14NjknXEKow7j34qKqB2ZPVi54rKxHr
	l3EG5GwsnjOhWijkTmlfI/Kxx+SsZA6WNj597FWYFXbtX9hnttolyz3NKfwOjVm9DpP2u7Qqx8i
	eyXCnecsugDVU2Kbv0vbsdWvEgYkTfmmDwtOrfPCUQ6r5Q5JJ+k4DlZw9dXqaCjHJ
X-Gm-Gg: ASbGnctZf3At3+KF4bGfoj/3oSZbvGUkUs1XkQd6k8enrN2VvHUvouj6jymcX/0Fs+H
	52HBohc//EzDbu3nIRfHJWdYgBF0TJcGD8byLZqV6vt+U0MpLczM3ElC/IdR/5P2PcsZGSmd1rF
	4QokXcpj7G/Si6qt+ZzTTNW5HbYXyR1UZeh8/NS+E63XlXEb0hJ6wYfohVD8hApIoQzf2fUqVj4
	f9xKMGFIzG3ejeIa2nNvuADwY4MSPH+TwnzZCP+cH5A+tJrCYJi6gwFjcHgVapYHtk4HOtc4Nhb
	DzCWYJyuF2ZCFFZmxyw7OBS5q61G1oGoNYxL1yGaQzS4QfnyZbZwHiX3o7vxNF73JMfpGdU3s5F
	NQSugkvJ/QqdVXS3IcPwJ5w==
X-Received: by 2002:a05:6a00:2d92:b0:77e:8130:fda with SMTP id d2e1a72fcca58-7ae1d15ca00mr2384087b3a.13.1762321625861;
        Tue, 04 Nov 2025 21:47:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG9adJ5eEPMWUOJsXqU6ZqN9gmTNY50VHdUrdL0y71kKiIzS5M/mDieGlRYKGM+p+efcyZ5JA==
X-Received: by 2002:a05:6a00:2d92:b0:77e:8130:fda with SMTP id d2e1a72fcca58-7ae1d15ca00mr2384052b3a.13.1762321625379;
        Tue, 04 Nov 2025 21:47:05 -0800 (PST)
Received: from cse-cd04-lnx.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7acd079276asm5001369b3a.0.2025.11.04.21.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 21:47:04 -0800 (PST)
From: Xueyao An <xueyao.an@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1] arm64: dts: qcom: HAMOA-IOT-SOM: Unreserve GPIOs blocking SPI11 access
Date: Wed,  5 Nov 2025 13:45:47 +0800
Message-ID: <20251105054548.2347569-1-xueyao.an@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: d7_HwMCk9dCzT3uN_2RFlIa6hsGyZsHY
X-Proofpoint-ORIG-GUID: d7_HwMCk9dCzT3uN_2RFlIa6hsGyZsHY
X-Authority-Analysis: v=2.4 cv=TsrrRTXh c=1 sm=1 tr=0 ts=690ae4da cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=uYweBXC_siuRksOLPw8A:9 a=zZCYzV9kfG8A:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDAzOSBTYWx0ZWRfX98XEIimOkCxY
 JDg1J+zIgCvRbCYc1Agfxx6zh8qzcBYMMHwLBkjLxn+TKd+kmuQFPH+tUF2fSrQeIcMuRqtO3fq
 8SZysAf6PS7SFhY2xeAATnwBoyqy8kigbohZh2N63vRwl/VkFSkobwFogJynyM96JSn75XRfwo1
 cai8GSmhkMrPGZVMMg0QVddnNRtdL2XVqBO1gAwswlMuX/WUv1aDZxYBpac9+yEBi22z8F35G4i
 AYer39WLqRm0aVYlM3wFrljLzpYrIvyO2Xd1+hFKzIq+oZBtZWPGmaS0CLgmA2qjZiFHsh0lc+3
 0dllmCc2SSu7bK8zhP3gcNN2enqJHaflrMXVwuAvbG4UU+GOjklyRRWyYr0XsXGkO5TfQEQuFk+
 1LGz9/isTzydnw/dgwVot5WEvXY5bA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_02,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1011 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050039

GPIOs 44-47 were previously reserved, preventing Linux from accessing
SPI11 (qupv1_se3). Since there is no TZ use case for these pins on Linux,
they can be safely unreserved. Removing them from the reserved list
resolves the SPI11 access issue for Linux.

Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
index 1aead50b8920..107ea8045f55 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
@@ -451,8 +451,7 @@ &remoteproc_cdsp {
 };
 
 &tlmm {
-	gpio-reserved-ranges = <34 2>, /* TPM LP & INT */
-			       <44 4>; /* SPI (TPM) */
+	gpio-reserved-ranges = <34 2>; /* TPM LP & INT */
 
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
-- 
2.43.0


