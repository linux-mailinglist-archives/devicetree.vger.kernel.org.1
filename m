Return-Path: <devicetree+bounces-128595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 521749E916C
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:05:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE6BC163CE2
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:05:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C7BC21D005;
	Mon,  9 Dec 2024 11:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LfjtlZSq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AAEC21CFE5
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 11:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733742169; cv=none; b=CPV5s4XWuWka0KMdWS2/Kf+gYZKyKhO8a2vPUjKbzI7z0pILKnt963iCnY4tp4Kx0N62cx53bkyU4zTN3NXFWUXItRNjsadRlz6f2kYVV8bfQMt/KKIO+S81SXd9uVRhfEX6BUTX4qs1angPRjjSeTkf6QUZna2yUy6lF/Mkv9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733742169; c=relaxed/simple;
	bh=ZnVV35Ysk2q6WdcSOD3vQho9WYZzqbjyCRsxVVNYQ0M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NGurP8JfYvwlgTENtvrmjoJ1geyBtnLy9jM6BOjuSX92ohU54AwHeO5itcMCJySITkeiaW0WPKYUHG8pFOwkTduIND84u2CFFGRK0rmG/RoKLn02OhKaXfferWVG3S5K7iUlJAQ8zcpivY1D+4KsWkr0vwNDltxB1GG1ue7YY6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LfjtlZSq; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5d3ce64e7e5so296003a12.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 03:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733742165; x=1734346965; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OQMcevWOxu50/RdSzVyc8fIM+ZHd3YW7Px4om1Us8a8=;
        b=LfjtlZSqPCzyWsfpzvOv9SyUyXXL9ggeKuqJ8wfVRUA30wk+fMf68MGjNmLxvKRFtg
         wX2gpX1wRx2cCFf4fTOUgQ+gIptHgQQhgP9z0qNndsGGTvWNTwKOnkxkNvjMRawvzl+l
         BvOVbJLhYJedJbsUZnCKP24BBKfKR2FUQTT/SZCIgHU6Og8uTP8tF9p2/4QE3V/QOUqo
         qU59oRT/G0Ys8A+5MrfZDEmu4QaEjzO6J19TqTjloMwGdklme92Un2jq+W/Sxfl7Oswy
         8jImtFO4mbAI6APxaExRqT6CBM/Uhir2xRRf2WGhJQfmtbRXEREGBwEiHQynuuf8ZL4S
         nRrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733742165; x=1734346965;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OQMcevWOxu50/RdSzVyc8fIM+ZHd3YW7Px4om1Us8a8=;
        b=QM2LMGlteW8jyGTO4pWrZe81EnRcA4OJRl0rXnEaY9HvJXodyBYAPeRLO2wTFmG+LC
         29+p1maELvSr1+j4obrrABYb1sNP3slTFtxI14daKwzCw6HDjRjGILYJOe3ej4Xhs3qg
         EU0+8UmfWcvSo0SXy4Fi9Rf4wssoZxs+WUJ+Rnm+1uNk7Stl9gh9H96D6ixxlYlad8nc
         HrRjm6B0tJgObqxl5zSTc56jYgUZMwCRuwt3vqhkucZe6InzYJ05nbuJx9gfwU2IFjMZ
         nnmNhLoyimP63NXWSVQrDQtRWNN63Nee84GcGtNf+6Z/1jMekhfz/KlyZospfuGu+Xn9
         yY3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXmSI3uB5bhxdlJfw5YzrmOYZguex1Ncaa04kYqRz7xC6KLEKplDUooPX2/ZUKpZhHdbuMELNNerdPk@vger.kernel.org
X-Gm-Message-State: AOJu0YxVDiYy9IMHsQxMVlH0j2jt92g2O4vJoghlovNITcQmLhd6Ku0x
	SQtrQ+A3POEw0GieBPy8zchbcn/mBpbp2wyzywOLw2H7MfyCZjwsfNW/TjVJ2u0=
X-Gm-Gg: ASbGncuwb0un+ndH2jIr/AB+zzWMDOMbk54MgtBrcAa7gpyiVTL/YxQf8wz/s57298f
	FfXN2JQEbYpy4BQ8HXD9CjAlFgWxvIKjw6Mw5jmAsiWQ28iEYOddm6GuDrZypuCeOPG1Sur2BqK
	VqG4xSQaR1c1DeUgV+05nduuv59XHmEvKoy8vmU6Gz6xbaSxfqLiUnRDO+efWzYClE55tCyjjdc
	KUUpcBmDmtB0IV8145kD0iaadYrH2aAU0oqMmoqwHDXOCVV+LUbTBnv6Z21pI6XUQ==
X-Google-Smtp-Source: AGHT+IFzCl8SKl1Lq4Uhq4Ox9VnzgZ1G0ah8E8zajoftd/Cw3MeQ/a6WmzekBUfNm80ihhxNwOtHBA==
X-Received: by 2002:a05:6402:2115:b0:5d0:214b:96b4 with SMTP id 4fb4d7f45d1cf-5d3be6bdefcmr3657286a12.1.1733742164742;
        Mon, 09 Dec 2024 03:02:44 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3dd4f641bsm3348818a12.51.2024.12.09.03.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 03:02:44 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 09 Dec 2024 12:02:14 +0100
Subject: [PATCH v2 09/19] arm64: dts: qcom: sm8550: Fix MPSS memory length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-dts-qcom-cdsp-mpss-base-address-v2-9-d85a3bd5cced@linaro.org>
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1331;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ZnVV35Ysk2q6WdcSOD3vQho9WYZzqbjyCRsxVVNYQ0M=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnVs44QloLVkk6HRDsj/yakFTUZNo1Z8Jt07bHX
 lqp32Lz/yGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1bOOAAKCRDBN2bmhouD
 113MD/982eUyfuK+5WgfBpaPMpgbQ0yJomYIy2FQv0auF4Wp4dCChOaSFLZVhoHHXA4nUcIsMKE
 maN7Bq1nHY1HSLxEI+/egUUM1LrAsQcOs8cXsfjpLOgvyR5RvjmOPX/4Gj+p29qBW0NJl3ghC82
 c6c1yWonXJ8Pm4CHwnQooZ+PHEptQhwGY6NoVCw+bBXU7OtUds5wMu1BWYr2bdC7Hd/XcBo/Zsd
 HddpB4lg0GftQ3ZYdTSKKgAhPZx9bgwMLHzVAC99QcipXfSl7B86va0Es4WqiqKCMKLblrLcC8L
 76sMwpSQ1dZK0aBTfxwX3zDyYcfCVKVSnJdrGrj3gtZA6lvXD7Tz50p/tmNcXHVXw79F4oI6eoE
 7i+UTA1wFjQ/SBW/bDlsJ/S6+Vo3848ecksta60i0odHNVshT+U5Lw3rAai0Qjj10twqLkwkFsi
 K2yf4ocBRolaw7S61nsJmrwYwYnvKEQmru4uqMSiD4kn7NUdYcJhHg25Qvn+6W2693jQSpryIWo
 ifqtmWFttDIHq7am2jh5aNw2AmN/tdKEKnk6POCvrNJZQnjCdvTo8Qg1spC//TqIthLWQiMIeEJ
 soABrZ8yRPRpyXxoGp3RRjRFelqdrED4j+jyiOMp4d0mron0yhj9T5HzdjtcMJloeKy6lzsh8GC
 67MWln3QVOnDLLg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in MPSS/Modem PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x4040 was
copied from older DTS, but it grew since then.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Fixes: d0c061e366ed ("arm64: dts: qcom: sm8550: add adsp, cdsp & mdss nodes")
Cc: stable@vger.kernel.org
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 541b88eb5f5300ef9e20220305ff638db9b2e46b..71ff15695d396a68720a785435e692d3bbb38888 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2314,7 +2314,7 @@ ipa: ipa@3f40000 {
 
 		remoteproc_mpss: remoteproc@4080000 {
 			compatible = "qcom,sm8550-mpss-pas";
-			reg = <0x0 0x04080000 0x0 0x4040>;
+			reg = <0x0 0x04080000 0x0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 264 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_modem_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


