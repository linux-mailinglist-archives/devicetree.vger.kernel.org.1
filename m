Return-Path: <devicetree+bounces-236570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE8FC45711
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:50:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13232188FC98
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 08:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B4422FE057;
	Mon, 10 Nov 2025 08:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CFJ8W1a7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jwXl1nVH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D6C2FDC22
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762764637; cv=none; b=mdXFNfoQP1bP8lB3RLbl/Xb1MCxtruIFXEsZyEu949Ez6L08+VwpKDodkDM8h8B2S0Zdg4zZIIUa+ZZOXBZZJGqbZp1gjNZQCuJQwnI/S4efcsmEvQccxzErHHfyutNh/OM6ERiw2nvv2bx2rCSXq1Gpz7PKFeh9M6LAt9DZ/HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762764637; c=relaxed/simple;
	bh=+CyPHp2jOdO2VvDF9neutATNGZFt/Ej5MGAS+XUjkGg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SCNQhcYkj+zRXXSfCRMSHOWEF66m78IQEwHG4eNmmbl9boDVNHUHOiYSYXUlby42A3vEdws2U2PavBIc/BRhwdirPKXxv6dRpENW9BA45bYfHVwTbUoxvhbQimKkow9FhfYC4xkiuBroOWhXIyY2n3PNFSC+oPyu4N4oyI2pxN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CFJ8W1a7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jwXl1nVH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA7hfOm2861879
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:50:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=uhbs7Tn6ski
	4RnU4v3cJMobbOt/zkIYVDr76YeAoJNs=; b=CFJ8W1a7LGhxC7fK1yXonDNdVat
	YgPndNVCGCFmy4gV4TKw0Ii1xDxVkedqpEZGnh1/SJvq0Z/waMrV3tuzw62KYSsy
	T3o5vAokSG2hCQqmOdQGiS/QAagJGmP7gT/Ng6mn6gPWShjB4k+f++j0doyM4N5R
	IMX2uIBA5R7r0cnq2dSK4emOg9KIJo4v9iE+zpUNxZfu7iIeIEalfCVozOhGzro4
	zEj4KpM+h14vLPw7/kspNepGPRAN0fmDflrm7chPzhzZuuFnTZDPYBpHpRzCOE8o
	35NLt4izpLsrep2acQFe2OuJ4jTcceqSjRoxa9xAUuhX+SM5nWfGqOix7iQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abbwe05xx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:50:34 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297f89be57aso7521675ad.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 00:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762764634; x=1763369434; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uhbs7Tn6ski4RnU4v3cJMobbOt/zkIYVDr76YeAoJNs=;
        b=jwXl1nVH4UPPWxBJZ1gorEf1cxxawKSuxu0k2o40JT7gvajuE5WeFaZoRiClLevJWH
         Lev0NNRVV5ESSdcmRfTV7xW78uK+3zO1EWMQQsoMYpQIXkbdFnpm9n8rmzUYjtkYiEW1
         rUFNXbLyYV1jP1TVx+0FDfKejXHKFXc8oKZoo/ero3QGiuBih11KRyqagCV0m0s1pDuz
         TWHf7slTutc5iVUc38lkvrvtzNM7X4uEphFOOAKVDdnxBMK/LDQJwDevTttAdnQGdamM
         +/+zH9oUHkiqnJLbZhye0RyKsCuOCe4zBHwkQMQf90L3L+r/HJf41n5rJ1z00BWKln7d
         kBvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762764634; x=1763369434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uhbs7Tn6ski4RnU4v3cJMobbOt/zkIYVDr76YeAoJNs=;
        b=JpUEBxmpI6XWcWmVWpQDK+/Y9ZrW8etaeKz/LX2/aHR5TY1nGqAlXqKJ9S8fEprUZK
         vWJAhLv8XpEfhba5b3vrOoKn67zeX5r5dNPiQbAFjohqfChbeC48GL9cfEYz2N5OKVy9
         j3fx7U9ShoOJNlT8I0WTo+7k803Xf+z0gI9WFXR1uQxTC5i/+qtnPDKtXYdTFOnysVxV
         VYn0c4bF/NJrvABLqXiCTNB1MWOwz0RGrXK7sSmaiXdXcegR/TTZ5IF0yO2cVdeHGwBa
         stIm37yT7Tlp2P2yC386CtqWZndais3tmWzm90xVHBKUdTZqEui2ZUjFnpX8wRQaAOcK
         BJvA==
X-Forwarded-Encrypted: i=1; AJvYcCWn4P9SMd+snh0uHHSqmsUTTyQPGqKyw3xfhV+3zEbsF/n1PuEZyPhIvzNKG61wVQKtRU80OpaaGLpZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9i+iEal282YWQoM1Ae6rQfbbGw4WrqoXCcV0uxy46RRgxnwq7
	hg3uZ1rFUcqdPdPxEhKCv0tEkBgMantHtu2+wNfI2sG+46jwIZsR01iUSkBehIO3brBaq8rEZ2f
	mD3QPbiuQO8FfCPul4aY18sI3mAOnL4JFdmM6N240d97r0vnA+Z3LjS6KLEWxh50=
X-Gm-Gg: ASbGncsk+D0tr7+YEBmLO9pxvCmqpTiDLTGoefc5HYxJQJ45WUH18dDVf1rAc8r0w+8
	pvsCq3eYv9fAVSLE+Z0Ma1AATbd1Mb1tHZb6Kf5y/Jqvqmu7BuLNeWEbKUIR0gckAkY4BYi/YbK
	uYrdJgpLZ7gBmGXtU9LybqRlTn9ab+1UVq+TyqlLDxpK66bvpR1ncHP6F9KIKOUvHEpQWg8XcXi
	+Yu74cRbnF0P11UNBRZpUiIUpS68cXhlO3I08YMFvammAUsq+tJ4xerhUwri13y/LSbeDp/xK76
	hU/k6CmKS9HRIEfmUP6zLmstYnkcKcB+DuaHZk4W4f6sseepxeo3h65gVXJSmdH26uVZlHQmO6g
	h0qkd7aK75G/gFJ5nlgimB9bjaD6Eow==
X-Received: by 2002:a17:902:ea0c:b0:298:f0c:6d36 with SMTP id d9443c01a7336-2980f0c6f48mr23902505ad.5.1762764633813;
        Mon, 10 Nov 2025 00:50:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETf0mXadMDjoZhQQFsk1tltO4R9gYJeZwT9t9NnZeY6umr0uTId1kF8gfBv+Qc6hXryBn6PA==
X-Received: by 2002:a17:902:ea0c:b0:298:f0c:6d36 with SMTP id d9443c01a7336-2980f0c6f48mr23902285ad.5.1762764633341;
        Mon, 10 Nov 2025 00:50:33 -0800 (PST)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5f94fsm138691365ad.40.2025.11.10.00.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 00:50:32 -0800 (PST)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH V4 2/3] arm64: dts: qcom: sm8750-mtp: Add SDC2 node for sm8750 mtp board
Date: Mon, 10 Nov 2025 14:20:12 +0530
Message-Id: <20251110085013.802976-3-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251110085013.802976-1-sarthak.garg@oss.qualcomm.com>
References: <20251110085013.802976-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 5-qgClPBKuW4OJK40TP6NS8mwd4nqtU8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA3NyBTYWx0ZWRfX7fqMQbhxzmje
 vaZTC9ZfzJzTTO82Mm3ANQzzuKtEd7MJOf0pMlsEPwjPxkYiQn21zOc63pHC2L2UYaVWGzcwiIz
 B4fnryqfVuN9oUEy1CiHssm62sVixdZ35410E/v3GHUGy/3frW2RX1ddWwOIsoUbv9vKVtT8dgp
 M/80eUaqkB8v63N2NjwBDMER9Ds/RPle3XqnFGJaGpbd5lwCPTjyPXK438Tt920l3X0rCjCtrLd
 VsVu5SY3yUAul0V/bF82Y2uXFpRYcaVVbYKJ9nBE98fiY4UYey6z/QpVsggSGX3xLMFt+RV1Kd0
 7lyBlmNAR3xQm+raeDcUC6ntltJQO1fXKuLN3hXdUUvc2fbxT9UOJUhBYzXvfIaK7+R3z93RCsC
 J0Q2iUdYcC35xkxKA4EK1h+APF941A==
X-Authority-Analysis: v=2.4 cv=GbEaXAXL c=1 sm=1 tr=0 ts=6911a75a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=eFmxIRX1jiqOf_WZ5FQA:9
 a=1OuFwYUASf3TG4hYMiVC:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 5-qgClPBKuW4OJK40TP6NS8mwd4nqtU8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 phishscore=0 bulkscore=0
 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100077

Enable SD Card host controller for sm8750 mtp board.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 3bbb53b7c71f..3b87a1af3333 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1030,6 +1030,22 @@ &remoteproc_mpss {
 	status = "fail";
 };
 
+&sdhc_2 {
+	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
+
+	vmmc-supply = <&vreg_l9b_2p9>;
+	vqmmc-supply = <&vreg_l8b_1p8>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+};
+
 &swr0 {
 	status = "okay";
 
@@ -1163,6 +1179,13 @@ wlan_en: wlan-en-state {
 		drive-strength = <8>;
 		bias-pull-down;
 	};
+
+	sdc2_card_det_n: sd-card-det-n-state {
+		pins = "gpio55";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
 };
 
 &uart14 {
-- 
2.34.1


