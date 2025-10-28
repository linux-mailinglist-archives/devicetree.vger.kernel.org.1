Return-Path: <devicetree+bounces-232362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F74C16D71
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 22:00:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9936B4F374A
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 21:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 491A7350D63;
	Tue, 28 Oct 2025 21:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bOhALAsD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z/ZaxSTW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96CDC350A39
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761685212; cv=none; b=YD+7dPsF6pTaPYnTt99gnndQFYmApF1CS9S/mygCtvlAOuiIYkUl7DKP6vK4vXG8I69dre41YP5ZpKbRisY9sQChY8Rsq9HQ/X/ZnzovDBAUJeW/yf2w4aeubfu0H8CK7C5eFD35PXMHAc+K1MNZpggiYide9dIQr7/Yje43SIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761685212; c=relaxed/simple;
	bh=ngFuqL8e6vn7AeTmEciPRYus7VIaj3l4wQX40ezMA04=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oKWJZCm1fMXwCTeY1IyCF0MQIsMPvYkbcOzU9I+wlRyYQE2V2/Wg5tbUOolXvLjTNs7tBa9k7udjtFM6Mp+7P9gokOdbYc/nMmpOde1j5FbuWUp/04ZT2f+Xgz+yBEXIwrpa0XRbN5DZHl1FLNfr0YNEvasCiPhWhq8TN/iuWiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bOhALAsD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z/ZaxSTW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlNK72523760
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aOiNxLQmP8RoIKFStjGNuJ1SrPaHoJhdU4dMQ0leeQ8=; b=bOhALAsDQwhakDi9
	EZDpAj8U+U8ax2igbc3RGTyoxD4T0c046t0Trq+w/xWHraqQ0i0U9dMoHxLVYBou
	PSmUMUkjD8B3dY0N7fDQ9w31Bg0lYP2xXt3IIe+jSyew7u2SLAbQ/u6pCDwIHO+g
	pCgXSbYghX3vLbnBkuwbD0ty7ZJuK54G4e1K0kRJSIzYyY4c2I3xL8wEVS+jhX80
	ygSzdZqynnr2Z1g9k6vpPBRFvLiVhbiqfbFpriwDinAw8WvafwN0fp4PUfP0t2/M
	cWBJteWaBmQ9GfHR8BeVgLkKJnvea4CPFm8fk/rzv91ggEpnDQLtSB8bFBRsglVi
	DgTDjg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1r5tj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:08 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e892acc0b3so211529921cf.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 14:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761685208; x=1762290008; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aOiNxLQmP8RoIKFStjGNuJ1SrPaHoJhdU4dMQ0leeQ8=;
        b=Z/ZaxSTW2i54IHDl0YN7s9T+B0FoRYX4d71imw3ZzfHXYK/d/pJ/v4vFElXB4lI6UU
         U7NyRTfT8neUpjCSqWxdF2GySqsIXsJzxOTQ3WFIpUK8X3xcSMQM/eoJWlMn7FIuQpm/
         ZFAPH/78Gvxmq6JJKnV3YThwdpWoBR/Qz2BGEj7PGp2EsVTjhEXAIiIK3FKsj2E2j7T1
         qWMLaXs+nStxp8qr6eWvSx0IwK4rwSjyJKprbrt6ou0doy3b1KoFkzjnN49n+z6t4YMW
         Nlbyw//MHHreNZr3ZoGTeQ1mESZ8yghasb0BGRp7GcJgSCEX05OGpFvHhLS7L9xcKl9F
         xBBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761685208; x=1762290008;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aOiNxLQmP8RoIKFStjGNuJ1SrPaHoJhdU4dMQ0leeQ8=;
        b=ao61gra98D5QCDr+UbD/oLVNAiXZOgakHgYZX5ZTynwiGBNeY9Lz48dMpQNRqqJgEK
         fu45nW3+BiB15cOm24ZBdkiqp8PGlQ+lk9k6CAdpLie2Tqk+OjV8vmfXNvwg1khFAmhU
         JRSA8rPA9O21Fn8YKv0exOx/HhAV9nYPJUZ34T1LvSHa7w38bI5yZwTaHzyttZ5CKu3w
         9dXwhm3fJ6iuNvJt3K/N5M6m5anoo9K4qIANWme/oa5DJJLP4uWsHvtKmbbiQdW64OGt
         Lo5lzIw18iv13iqS/q38mG98nodn6fVCgyrN1/i3aVEMprhw96/+JCksM39UX5z01oEH
         bs1g==
X-Forwarded-Encrypted: i=1; AJvYcCUThu22V+bd51GvUYlt/G+Rs6odmkPY0vqXwK3NhrGvQCVIwiXELGG9Bl3voEd01FO591v8CDAY72DO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7aiU7RlxSDrCCxUIUfr0/U35TVkUNQvcIlY/XDYl7WTbY2C5i
	7a2Bnovh/TmmPP4ESwD+5WJ/XyCAHc+15qB6OBFEPuUrmlfueExLpiYE43xCE627s68Ot4s+P7f
	EjI4hLa6bGUnRqdYG+6yPTKPZjXm/sXfjbpTxkV+wp+zqkpcP9lwN0zIfIp3dxjTj
X-Gm-Gg: ASbGnctrLi/7IQNXUppwEmZtSRtouYudbO3LrhxM2LGHVzPQ/7yqjDAK9yRrQ4HrEQ1
	5qD/Y6Yib5TNvFMCtRa2AvtUDbTgsOZVQVc3bNicq9FXU+6iipVGCn2mmb+ZNLHgM9cWLt9kB8A
	RoD2hOlH4BuiF8dvvtNvxCZjIYgq5iDqs7GVCr3jNgdJuFMnZENKf38LzHwnQCusU6m+KBMg1lt
	Yf7nilCOidWLqHE4qOvHZxLT2gg2mRSZVCqv8y7XS1v1zO1ZYV85Wi3oxaLV9fWVCSfbKDOWos3
	CkOyPQF/mbPeiEnX/+Hy+xx8hiSUsDVPQGDBk/qtzoRhYdorjK0AOlFRGUPvUDvseZvLeVO9PGG
	1UAZQF/LcMYouSuHQHlt/QuMLRsHytDC03VULvO2he+gIM31Jk/i8oZrYQZql5RcIsWJphqDHrH
	b6pJEdWd6mc6YA
X-Received: by 2002:a05:622a:11c8:b0:4e8:9c45:de4b with SMTP id d75a77b69052e-4ed15c88d01mr10638401cf.44.1761685207736;
        Tue, 28 Oct 2025 14:00:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlnuhRA+a2bwubA2labJ4tMSfpNg2VOPqsfAoc82W5MiPjYfnN4MLZt+qYb2juROwA9rbEFA==
X-Received: by 2002:a05:622a:11c8:b0:4e8:9c45:de4b with SMTP id d75a77b69052e-4ed15c88d01mr10637891cf.44.1761685207269;
        Tue, 28 Oct 2025 14:00:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f861f5sm3283594e87.107.2025.10.28.14.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 14:00:06 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 23:00:00 +0200
Subject: [PATCH 1/7] arm64: dts: qcom: sdm670: create common zap-shader
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-dt-zap-shader-v1-1-7eccb823b986@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1352;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ngFuqL8e6vn7AeTmEciPRYus7VIaj3l4wQX40ezMA04=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpAS7StKy5BloAfwDT3vMyJtx0pNXwptmkf9FT6
 ZqABp785xGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaQEu0gAKCRCLPIo+Aiko
 1cTfB/9WEbl4yKd7GmpkNHWAo0vRfwuV/5D3e7GAwwsXoYEPJHfBLWWuxcGY+TzG7rB6zhG5pBc
 9kuTXLC7AkDG1rAO7vjZzi2jKXEjNa+xphnJB+6OnAzkGAxBFm2IDsLY54TBoA4UfG3J+9RmQEE
 cMRnT1//qL9+B3HpetBvAUjoqp1e4Mbb7G17vID73K4ibzPt35IxnCvmXRVO9SLtOxMvlLTwzfG
 3Aoxoo+sWYVG6vrvwLw2ECeI/yE6/EH+ChFgt8bslDgkqfaGpQ/1SKs/oyix+tGgnB7hz1yTOiD
 9DyW0vp2lH5Eyi9YPTCvbBoGxUitSGukfnLhuSkjFMnvkp1P
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: 7bcEuBIp-bAT1GGdXAJOueAzcR9PpwaN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE3NiBTYWx0ZWRfX4DA+fHbORVZk
 GYl5gcmmpkuh/0PXFwtPAHGE4xKEcK70e9cy+WUdtEV2zlqn/C0w3+tpeLuQ4JB6ZTApMpeKIvM
 rCxi1YO/5jZKCo9nAeehqNFzdb3N0uxAeh3kpyWDsrje1KPKAjfk0rytJOITVZZWqDl/8kN3fPm
 VC+H335SP+HF+6HAHvfJ4+qhO4RFgFCT7d/5eD6ZzcU6a3zHn9eC9ASLrBsdUOEB6cxiz28YcDo
 dKJ03TKuiu4p1w1ugfiZ18ZNbBZ9xv6BOc7QTSnkB3YdQ0OtPeGsydZ4iVBoxq4XKxZqX9evKEt
 3BDwrqZisOsH69sKVtmmmDtdUzOTQsTQpFO61Dat4PInL8cJfC98lzzEF9lXanmvFnAUcMVQ96g
 jNvOwB27gT6lib60dizFMRBOTWn7+g==
X-Proofpoint-ORIG-GUID: 7bcEuBIp-bAT1GGdXAJOueAzcR9PpwaN
X-Authority-Analysis: v=2.4 cv=UObQ3Sfy c=1 sm=1 tr=0 ts=69012ed8 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OJPj2qZnrzgMreAcce0A:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510280176

In order to reduce duplication, move common GPU memory configuration
from individual board files to sdm670.dtsi.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts | 1 -
 arch/arm64/boot/dts/qcom/sdm670.dtsi             | 4 ++++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
index d01422844fbfdec6b4944378a16d9458a4c00bba..760f21f19ca472d620ab1a0703de6e0d69237b55 100644
--- a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
+++ b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
@@ -406,7 +406,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sdm670/sargo/a615_zap.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index c3264a31bccf25fca9eae7fa7734ff43c9db410a..57a3ffedc432b08aa7d7918c9bd0f9714dbb3951 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -1382,6 +1382,10 @@ gpu: gpu@5000000 {
 
 			status = "disabled";
 
+			zap-shader {
+				memory-region = <&gpu_mem>;
+			};
+
 			gpu_opp_table: opp-table {
 				compatible = "operating-points-v2";
 

-- 
2.47.3


