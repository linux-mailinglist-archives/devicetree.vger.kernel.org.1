Return-Path: <devicetree+bounces-130840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 129D59F1009
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:59:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2D99162C01
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:59:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 745881F4739;
	Fri, 13 Dec 2024 14:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CD3v4DTy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801AD1F4703
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101701; cv=none; b=dBScs0yu+9cn0foZylelQrkqkgsaw3PESxGMwT+hfR/GDIGBJ/Du+JT4YzGY7e9jjUd7O50eTbHBLc9Kk5s/q0YwwPHXfSMgaRzx0uK423s6zxhGg7HRDqXiI2UzDaAUMXiPl1caVGzkNblTEwIEkWpLXuQW+jNWJHDWL8eQbNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101701; c=relaxed/simple;
	bh=OVs1pW8HXYviRDdBDJSdTxkf1pHhAXwfKakDLCDnDNo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bcSIYUmg0bQUHw8xfKXjeuK/7AkzHtYZAPBiv7W5x3tHOw7f3B3BeORtihTxilsS3+fyRg671XzBbrpf98miKy/XIWCfeYOxTxctnVQuI0gXNPaWdysc6S6npWtfY4+lFa/qGqDmqDbJFRNxgdkpHLL9ogdA6Gbrjc0bwY7eFy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CD3v4DTy; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43620a5f81bso1494165e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734101698; x=1734706498; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=96fv6yQ6ADzYBHITZDeQe5lcsb7Ca6WUimdGVSH7r0w=;
        b=CD3v4DTyxL+goYQvwmZ3HRsPaT3HqAJUjq8bQHxURjMP5XSQCSEeMA7T5vid8lghBF
         GeGQLhwJnDtU6dAb1GCbWb72fi6DKy+qDDXV3lRgOFC7+xZoc3QRzpYHNG8KvunzoNHh
         MZ5rqBuA8MzXGN2mZm1QE3i/7sdPA0LCNsg2/1WFd9wqWAufStdMBK3lsGVK3RJk4gbK
         AuzUPWs9hHWrVjZLvdZxgD+zUaSAPG1DjxCVXXcmiHgxR18Jqb0m4BoymdP5GGhW/O/y
         oHDnmp1QMcYnExrcQyu4tLPBrypO5Yi2NDoZnsImOdtmBhAYpzs1dAu9d0Gz2hOSeNkz
         IW7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101698; x=1734706498;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=96fv6yQ6ADzYBHITZDeQe5lcsb7Ca6WUimdGVSH7r0w=;
        b=GmViwZqkmz0uCHwsMVKOO0aTwRKE61PpgUbJJo38abL0DpYQaPipBzLDK78p2nV3ar
         bfL0LxBAm+pLumT7MUVTY2Vq+OhA7vWl3YhQh3+cpCT4D1Fg21qi5DhIgisnZuNVVyrO
         rrpsLWqu5BIm2z0ob/b6lIpJyiK6GfckkYs9ZYRBfsu4lnSKYE1Ld8B7Q2JN9QH4l/Jr
         E5kzrLhsp1zaecC2VzLabs6zENcSiHcxmdIV3VT3Zb0SxWb/4+NqJy9SsEVjcIew855E
         KmsadACZ7XPQKyyilW2ZTsKexQ8jH9GN9A3b2yw65aa7VDyXQj4SP1HA/PAYAKKdGFCY
         nAaA==
X-Forwarded-Encrypted: i=1; AJvYcCX2Uu016xeZf26jlrOXBHf1xMolSvlU0golMMCUMpS+7icd5ryxTcETm3iMIC0pBGzmvKbHwuu6RQCl@vger.kernel.org
X-Gm-Message-State: AOJu0YzN59IVxU5q1963+Iez2DnlDScBCuyVz20IxsaTElLWypc6BsMd
	Jl2Rv6YuNK2S1H0uwG43KLTmouZnC/w26hYJufNEY5cmganTNb8XUwS/Rgnief4=
X-Gm-Gg: ASbGncuvaLZrQhuUpEojbpZwtl5s1ytDwtpTCLcNIrW6NJnur47ekq0tTwsFxuOHvCY
	hnTP0DzalsjDnHlmkEOEUOD8aEmjqZmB5A73Zsu4dAO6C/03E9Mus/hyCqpdCV0HzBA70JNjOb3
	wvclW4LrnFPnkuD+3wPfcdnBlNZtz6Nx9mY7Ql8qZbo+bHzTdLF18erR6gxTkADUo4Tu45l0jnz
	kvpfgNiN6xAlRI8+fnypG7ubCuoA9ZYkWTSnCnpj4xAjCDIR3OMsLxOlJ2pYPCqYGgKhnSw
X-Google-Smtp-Source: AGHT+IG2xPKsjM9w1WZmh/gAbRxyawsIo/UGV1fOk7SQlhsXr4gjTxar9Jpmd4FGI/fiJj9PGZGJQQ==
X-Received: by 2002:a05:600c:3b02:b0:434:fecf:cb2f with SMTP id 5b1f17b1804b1-4362aa8faa0mr9500045e9.5.1734101697946;
        Fri, 13 Dec 2024 06:54:57 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42c8sm51547305e9.29.2024.12.13.06.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 06:54:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 13 Dec 2024 15:54:11 +0100
Subject: [PATCH v3 22/23] arm64: dts: qcom: sm6115: Fix CDSP memory length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dts-qcom-cdsp-mpss-base-address-v3-22-2e0036fccd8d@linaro.org>
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
In-Reply-To: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1308;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=OVs1pW8HXYviRDdBDJSdTxkf1pHhAXwfKakDLCDnDNo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnXEqau2irMTS4H3C/8tmYk+b2vABvHbxCkkr0I
 wrBfzAkoraJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1xKmgAKCRDBN2bmhouD
 15uCD/9jLqFnQW1IHAyGy1GrL3aIR7QN4HnGWqB5NrChFTQauWdsDtSa/C0I1uw7dV1vhsGIZOB
 3M5ae49HWx+EkARS15/6RE7WPVtQ52G7px5zaXVu7eeRF+DYxRgBz0ngI66YXZaZxXKYEwaM60E
 k6EAhGHQUXtwJgW87najc5VWZWWV8G3DzQKa7FqeB+Cs64pHUd7RXncIcgSFGZH72KVVdDFYESs
 rLl6fy4v0csCXYE6y7CFu/8UWbGLLbRdD5DT+VUK/AmAhMzwEr9qSmHQozJe8sWLLjR7p00zMwr
 aVwIu/Hs6MPJQPtyPwtjbRy8K0IHNiu+lYJYZvwJIHtlDBrbBjSaoj4ZRi7Tw3VqkvP8yeo7yES
 gMfluXhfXJ6+qkChZmf0LfsUx3u9srqv6ztBd3UKn2sgdLKvYtjmGEDckUZm2X/4KKmXc4iJQ4D
 7S+uSXK6uKkb4sBa7o8ndi0GpPirOLz3yLgCN4XjFEwGfFw+q9kd693Epk7dqA+zgnZiwtcuQAY
 VgZLjEVGBbFK73eGKRgikhxWooVDyKuj9CAPJuQMIr5pAQSpaS6t9Rtv+6sr8WHu7LERkkpbzdj
 ymKX6p9wmLdxhOV7tEFweAf2A+X79p1gVJwpiC5p0Xbw2vOauMf1zAPylZE/mpbU8Pd7MmX+Nbk
 BHBuY87j985sx/A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in MPSS/Modem PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB) which has a length of 0x4040.  Value of 0x100000 covers
entire Touring/CDSP memory block seems to big here.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Cc: stable@vger.kernel.org
Fixes: 96ce9227fdbc ("arm64: dts: qcom: sm6115: Add remoteproc nodes")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v3:
New patch
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index e5ebe7c7e87fcb3ab87284a2ec8fe88567f6cd70..5af2c7a3f6ff67c216f1c817a3d5f54e10b65450 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -2744,7 +2744,7 @@ compute-cb@7 {
 
 		remoteproc_cdsp: remoteproc@b300000 {
 			compatible = "qcom,sm6115-cdsp-pas";
-			reg = <0x0 0x0b300000 0x0 0x100000>;
+			reg = <0x0 0x0b300000 0x0 0x4040>;
 
 			interrupts-extended = <&intc GIC_SPI 265 IRQ_TYPE_EDGE_RISING>,
 					      <&cdsp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


