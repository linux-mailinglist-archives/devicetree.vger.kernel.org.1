Return-Path: <devicetree+bounces-232363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 068FEC16D7A
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 22:00:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D4BAF4F2A73
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 21:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C027350D7A;
	Tue, 28 Oct 2025 21:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z2yBx+Q7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GJmqdRHS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DC6291C19
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761685213; cv=none; b=oMvazyfQnIASe5/7ei/K0icjz7tAZ+XHRvIteHrjY8m3quM4N74y6zAEfsv59JFTJ3bER8TAng96BBB6uZ7ixpyjK8vYTvbES1eI2iKoOmIRqdU2nIIMvgsUWDhQUAWHNtpRxutjxxizkTKzfUoBBjAY7x9Q66jGrGSanu33/Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761685213; c=relaxed/simple;
	bh=3J4fuWFWNFHF+/rRsGFk3aPO2J9M1d/P9hBhGCblRCo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FV+NmnDxAbD+R6UzlzbCk2VWoksl/52lwu46b1GVynaSW8kqZ4KGAfTgS1BPtLjewNmtlxP0+yfNCEaW1Q7uGkkIVmMQGACax8jEmmywsryACahu4UtQR38Qpw3u8wvNG8+8PWJvo/lTvTDUobFHdLQ7Z9DnZsXKzX5Im1Mt7JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z2yBx+Q7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GJmqdRHS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlMLt2539303
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X/ZmLcOwVTgqaHSdIV+9fQF703khVD2MDhcprQ9yZUE=; b=Z2yBx+Q7wRguamtw
	tLSEDlVaJ4Nn3RiQa+nu+M9884n9V2y8elw8LvBoDdWMc7rTAs6R5xMxFT44jCJ6
	DBScgdSdseea90U1+DgkZnoIC/wXDSQbYLN6bkzSy/CxjD9llhGALK0dTrbIj1dg
	eAuuT16LY6kKNT5jX5bv5NiV7V4BWrdSzvLS0SALvDHn3PmV/DhS3XWVwra0xh0n
	YvSx0l8pcmW0UT2o/CIYpB6NEdnGXGS11Ct8CLbjms6Xy0/Zng2Pz5vJwNlM0DY/
	jodQGv83YuTIuWIY/kmhnm2sVUUAdtDUFdTbeoSKGvhnNjyoHYBGNaer/sIUunOl
	fWJZQw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1g5bu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:09 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e88947a773so327645431cf.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 14:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761685209; x=1762290009; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X/ZmLcOwVTgqaHSdIV+9fQF703khVD2MDhcprQ9yZUE=;
        b=GJmqdRHSL1iGq4MqWyZKgDAOrpQPrUO0utBZ0KVqWyDAeDtFWKMuqvYd4YIcOsEIG5
         BGv9S1S3jVEyzcYPF/ckmf2Rs3ggzlSdSBFZwFTcytOdTSrJNrIdLvma6SNV5YOlnm3N
         QAnJn7Komzti9rfAUwVyyPZPchSUXGdRhgceMs5aJNLk4/fFS/Xsu7qSm7hocYpbi68g
         8EuRznnzZ5iu6BXvjAl05f4IrjZ6S5bcZYmkG0UXsKu459o7AYpKAPGZuufe1H7RCpzw
         r1NbuIwahA6S2unD1oNZHgv7qxshPf7W9GmasdGh2fq0uZS/vN4Z39zFBUNJXDlmXCyL
         vL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761685209; x=1762290009;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X/ZmLcOwVTgqaHSdIV+9fQF703khVD2MDhcprQ9yZUE=;
        b=XOhCeTUOb3Wq4AZcY6hiGYn3OLHHnl68tvYTqwobPgLgClmGbxs2myMVRwzwzhDkXZ
         DeBE//R8zvTmXxVZyxkVm9BfxUGtv9kkkPBlWRJ+8LCCquYvi55DqRoJJMgc7q7iNfVx
         FFZP9qgeBKrnZt5FbeQBLhaSD9M+2T9Ko/eGy0Lm5t97JYjce2pFmEHc6V0kboCBWqOb
         WXqKY06g68jhEfYxONNZ6D/e6p9ge6MQaTPhRxcMnc6pPPKRAdvaATbceu0cRL9N4iGz
         kN40Ha5APIRiYwhqOoUy4qlx7vJvJnv9sdXKn9p1VdUfOidTAIgVDqyJ2bbf7Fm0RBw5
         XVNA==
X-Forwarded-Encrypted: i=1; AJvYcCXxJn5SZn4qhQDb4NB/Iv7bpSt2MOqGCLzuWJRTDF7ClLK4zb+3TS34IsCo88jOKU0e2S4BG13bkoox@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0ffSjK5KJ/RfPNRkMuCYaZT/C9M8cGQtz/VEHxWhDdEjPoqAc
	VpettMlrSBAAmmXc94PAiwH7MbwT/+lvFVvf/S47l1Z2EP5hpkFgyfHZ80+4FVGeITyv92mc//2
	M09qZQdAzT2t4Q7SoUdOfG6FZ8dB4vX9CKMHaKRSid9jH+u7eJPjgVngC9gfiuYRd
X-Gm-Gg: ASbGnctFgmn7u0/qxLIQ13GJ9xh3Bz2IlokyZI6/OG/R9HYDhfeXOmqxiRzjNiTq9XP
	YOrvt8qeN1USrfJ58/A1dpHfbErnCmlbDDmRnjnILnKFANeRqNjdekKUJPh1OSXXqug+8pW7Am5
	ekrxEWxy3G21luhpkmuh4QGNYbdKOpZtrD+jq1onYKUobE9dyratB7fsx6aLXJj3LhSqdkB5J0v
	NQSzjPE8XDCf2JOGYa0CyUj2VtxvglT/+Cvoqq1XveUbY+cHmtzE5/hHaK7FjsU8E68g/i8UTje
	Mb6fccQ+SsAXRLBwdNr2JKnAcZMr96kcbRdJpCc/lst6NW4HAfwXeTaSQP98FEKPeTeESazZ5Zd
	QRyudrMWxUNjkCo1tMCV+jgAvGOFjKUm93u8p0tgKYQ8tmltcP5FBntM+edr6ichRcAirhbi5TZ
	CGRuGDd/onYjMS
X-Received: by 2002:ac8:7c4e:0:b0:4ec:f153:3562 with SMTP id d75a77b69052e-4ed15c25099mr8921911cf.59.1761685208838;
        Tue, 28 Oct 2025 14:00:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMgeUM17c43Y/LSCQhwCKsld4n6+veGLuBUG+V9ycQJnaLhlctI2mmo8Lbs8gVqJ341PGRaw==
X-Received: by 2002:ac8:7c4e:0:b0:4ec:f153:3562 with SMTP id d75a77b69052e-4ed15c25099mr8921401cf.59.1761685208279;
        Tue, 28 Oct 2025 14:00:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f861f5sm3283594e87.107.2025.10.28.14.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 14:00:07 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 23:00:01 +0200
Subject: [PATCH 2/7] arm64: dts: qcom: sdm845: create common zap-shader
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-dt-zap-shader-v1-2-7eccb823b986@oss.qualcomm.com>
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
In-Reply-To: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7067;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=3J4fuWFWNFHF+/rRsGFk3aPO2J9M1d/P9hBhGCblRCo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpAS7Tl8ITmL35JNCMCtV6n4AFSMLyfrI2M7nro
 OHEUVN9sSCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaQEu0wAKCRCLPIo+Aiko
 1a0SB/40PMJmUG68LWQzfUD/Vz0jZg50JoQE5QYYEidxNPNiVxwjfQ+7GAjOdu5qj6FduR1L4i7
 +LKxsBCJ00JTTPM+s2ZPAZBtSq93yTSmkGinT24m+vySDSMnOOtT8nWvHILDH7ShMR/K54ZJmeg
 mlzfuBjmCeh70372FcgmEYZdShCDGdvXMrhwe6y2XffHOdr52GMMCYM8kkQTFzTziazNtJDpaE7
 5xNzR5d05sPK77r54JJLLuVfZmRNx1fn1VGKP6+nd6v9ZgHe+YyZk5TtSA8HmOptzhIRRcQnZAA
 z52k31JYI1PYjB8oY/ugO7f9Q0ZIbo7/JTUgKzyKECw4KAQ9
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=Nu/cssdJ c=1 sm=1 tr=0 ts=69012ed9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=YgUc9-wyc0V7V68UJQQA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: e2eSSOQfbSmZ3BGK43GEjXHMLTGl7Vlc
X-Proofpoint-ORIG-GUID: e2eSSOQfbSmZ3BGK43GEjXHMLTGl7Vlc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE3NiBTYWx0ZWRfXzqTEc/KIn7W3
 PKN7BIWc+hkxiDbMC3fp/m4OKc7vV2WHNKOBF3yVjfp2tfVsJHZRwbOsoJX7XBxE08NSbDhfItY
 xiYoWif+IU4tKZYef2Dp/mX4rBI3q+IjziGF/t9F4536pKDnCd7lf1hRPmJkVJU0tRfipfyBu+O
 yF7CVrMVokCmHny+euym4JQ51FH74Xa8b9FgNJgBOEa4XkDLfnrPr8yq6k7kcn+hgjqJzUfdfl/
 XVi4DnVG6liFssU3tfZgl40PhWKfHdWo5pezM5qCgajYtxAiZU3f+w9hueD0mW9de0+qNOXPH9m
 +TS1s6uUwu92afbmXHiIiLXKLYI12nZMxoF2Tt2N81ajUZSYISFe9uUR6aKXUuUCWHcr8JyafHq
 5PMQbEllmc/LkaixPZmiZYCvEorcdA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510280176

In order to reduce duplication, move common GPU memory configuration
from individual board files to sdm845.dtsi.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts                   | 1 -
 arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi               | 4 ----
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts                      | 1 -
 arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi          | 1 -
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts      | 1 -
 arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts            | 1 -
 arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi        | 1 -
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi | 1 -
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts           | 1 -
 arch/arm64/boot/dts/qcom/sdm845.dtsi                         | 4 ++++
 arch/arm64/boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts   | 1 -
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts         | 1 -
 12 files changed, 4 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 8abf3e909502f3c3b82c0ca3d7509fdaf23d882c..662722adf20b7d1b6a44a28ba3bbf6b3e373cd0d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -456,7 +456,6 @@ &gpi_dma1 {
 &gpu {
 	status = "okay";
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sdm845/a630_zap.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
index 83b98bad19dd2824650378da7ad02e6f41a68d9f..0ee2f4b99fbdb6bd8019187dbfab5f9977c8973f 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
@@ -456,10 +456,6 @@ &gcc {
 
 &gpu {
 	status = "okay";
-
-	zap-shader {
-		memory-region = <&gpu_mem>;
-	};
 };
 
 &ipa {
diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index 63d2993536ade229a84da16e811e8bc83c46bd15..971bdb9c3693bfafab820a5242a82874340b6c4f 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -418,7 +418,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sdm845/a630_zap.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
index eb708ebdb0202c7e453bd01124166dd050de8d28..3fe71adf1dbb0f05fc4aa0d0bf4d0c6bf14af6e4 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
@@ -341,7 +341,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sdm845/oneplus6/a630_zap.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index 493c69e9917461600b2400b6dde78443342139c8..45e9dda007cec2500bf5b6990e7d8b1ba56a67c6 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -253,7 +253,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sdm845/starqltechn/a630_zap.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
index f0ae0159f32a05edc376007d1d792e70a51a0db5..238471267e1feace68487aa25f97748704ebb18c 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
@@ -425,7 +425,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sdm845/axolotl/a630_zap.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi b/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi
index f3f4c0900572a85ec173539f09074ae9c1025591..f3ff0b3352bcf7c3eccf7ebe615cd2e40cee7847 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi
@@ -428,7 +428,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sdm845/Sony/tama/a630_zap.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
index 7480c8d7ac5b7f84a742dc6c77943c547c49fafb..5b30ace99579d014d762865377d5e9fdd5bab371 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
@@ -248,7 +248,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sdm845/beryllium/a630_zap.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
index 1c50a0563bc4728e67fa2dca76bdb6a503ebf102..26f0900513169368ecfb65b01eedcaf1050e3f53 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
@@ -394,7 +394,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sdm845/polaris/a630_zap.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 1c3a7371a2d371f78e13a5b0bc400f79c62d210b..8c90f652afff25a0860ae993e713f94dc9b39f00 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4902,6 +4902,10 @@ gpu: gpu@5000000 {
 
 			status = "disabled";
 
+			zap-shader {
+				memory-region = <&gpu_mem>;
+			};
+
 			gpu_opp_table: opp-table {
 				compatible = "operating-points-v2";
 
diff --git a/arch/arm64/boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts b/arch/arm64/boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts
index 117cc0133363bfb6ab1118312ab6be7f797a203b..57afb35770058b84c592db9f20e82ebb7c4f8374 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts
@@ -490,7 +490,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sdm850/HUAWEI/AL09/qcdxkmsuc850.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index 90efbb7e3799b9aa75ac4df84fe0006d470ae131..35121cbcd37b08029d3e1a12b99fca44f3e4846d 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -358,7 +358,6 @@ &gcc {
 &gpu {
 	status = "okay";
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sdm850/LENOVO/81JL/qcdxkmsuc850.mbn";
 	};
 };

-- 
2.47.3


