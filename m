Return-Path: <devicetree+bounces-64330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 988018B8E03
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 18:21:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 488F728255E
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:21:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21DA0131E25;
	Wed,  1 May 2024 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xQLaRh0R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AFA13174B
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 16:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714580393; cv=none; b=Av4IrF5se1cLz7p5TWbhOltTNElfnR2norSgQVTV092UdBtbuEfvTnmK2iCtFJvPBv6gDAQIxQVOCEj8F+9BWEQDmOoTKoHJ/QTg8IgJGGBBnF5tP9FoytiJw8YDghLeFQJiU8Qa9i/Ym1VD3/ITgvp9kpGFiGSZcApRZcbGkNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714580393; c=relaxed/simple;
	bh=0+KzZGJu1d5OGxNXPG6e3n4G8A0DMlgKu2iIRaXSmrw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tUCPzLhH6cZYzZdqJcphMm3HBt+nctgkHuMezLgf7+68hYcvpwNIe5XmCA5Uw66dosy/tAyMMaTOMGVN5+VkXLkFZ3UM559lg5KVzYu4JfFHeQ2ndY2wqd7MW0K/EPYYQKayTWUIp/hlRqm4kp1ohiTHC81W4KBkB+ab96OqREo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xQLaRh0R; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-516d4d80d00so8850815e87.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 09:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580390; x=1715185190; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SdE0TiTMN/48xeZ+pHH+oPuFReIZ69nKUJdRgCnFUAI=;
        b=xQLaRh0RJcA7LYAZy58T/EF0aV+2nZkPHo29GYBoSGWLo6MqRw3UOqny+LfmDdB8AW
         +a/YPqDjERe0MmXwIPGI9eRHApYwK5YD6WLRphh5e0GEyStNmDT+DV1KRQIjahJW4Z1Y
         3Ews0QtPAvt1cOaE+UrNujiCMvsIgWMpnAqu1CXf7HVHAWRBLDnZlj4vUxrCqtZ/P97Y
         GJVffVp5chvW+Rfh+C3bUjWr4R0F4tnngaBtS7W9U0sWtcHeVJJmKtRaJ/lDluUN/UdZ
         vVInYCEhcPSmUjc167axIdCGMEtdVHnAh2BFWdiNMIP3uFI0oqOrDTwtgmt2geT59vGe
         WAQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580390; x=1715185190;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SdE0TiTMN/48xeZ+pHH+oPuFReIZ69nKUJdRgCnFUAI=;
        b=lQjdOp0G20K9mEQbjucYvhxUzzlMgDoIT4YyqLRcw4EvroNNQRssLb+cXgBspnKwEE
         n3A8MPpwY9ClP8PDpEf6qXASiS1xFNNWGBNZnzRRwQQ5uwc3R5Qxcn1y9ciog1l0dLdi
         VbQh8Gu9p6spxgVvvTnKOj1u4MPAE/vxFXJSvlQ4DPVRSdScMCiKwX+SwdKBQwIyYe5z
         aFNYGBjdKNeydMoKPqbn99+o8yL2wptF/idwMKKMCet0KJDjdQ92ilQCYbAt4raj3uIr
         vbCvk3WNIYoSzGEb9v92hpwqYJ+w3TRG/Ir6F0jZZ6dY8UmGpepvAZFIxPy38V6SfM47
         z8rQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLvhzEhwJZSZDpDddmuEQhKYuJ00NSae2SoINLkiObkI3e2emaHIFyL/52dyHxImlion1t03PtWcc97nlvvokwUkmlpNk0CJ6ETw==
X-Gm-Message-State: AOJu0YylHvPpTnQdg0AEDvFwedf89LheKQMWa4IoBqkJqv9Z59+c5kVj
	u7p+mIrsXWsyOQmKG8QK3Gr/SUAgYD9nsBCFlO5kcC6UDfgx4tMBgU8kQ0hJ3eU=
X-Google-Smtp-Source: AGHT+IEzH1r+KAKKI0+V0TSv0eZBFtF+pUKpqOpQ2nnjVvVXz1kUbLHYfMDVODAGrvd6no8Kxp4S4Q==
X-Received: by 2002:a05:6512:717:b0:51c:1fb4:2327 with SMTP id b23-20020a056512071700b0051c1fb42327mr1723969lfs.24.1714580389720;
        Wed, 01 May 2024 09:19:49 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:34 +0300
Subject: [PATCH 08/13] arm64: dts: qcom: sm6350: add power-domain to UFS
 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240501-qcom-phy-fixes-v1-8-f1fd15c33fb3@linaro.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 David Wronek <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>, 
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>, 
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=767;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=0+KzZGJu1d5OGxNXPG6e3n4G8A0DMlgKu2iIRaXSmrw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuZG9KMaWwMEuMGJ6kOQpZ9m+V4z8y3kNlwO
 mGlES+81UKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmQAKCRCLPIo+Aiko
 1c+zB/40c/bo//8AFR25A6n7dxcgpQLMeBuOuILTaGaPo7ScL2YXqhYwmyqoNCs1rq4Nrk4dW/z
 OhFRMF2bv5IWrbF536sObeUhNiot4h7LzixMbpsg1+bsd1qWs4VP6RfMoT/ov6T4EMS0r7gBKpu
 VmwZncz3OagI0BbtBgOGsRalVmVafEAHUNbgWMN9H9Stq9mUOJpQQftFZr09JRtOs9aV3u2iU01
 U3Grhdtw6P/ULCrdlcIRvGJlKK0+1d7uIlR8RmcRAuNMxhkCl++OdtT0tK7LbrRgamVCD12YwTN
 Stbr+SbA+u3OE0Wy0gBFYWjHRZiG5Ul91RZOwgVjpq1rb2R5
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
corresponding power-domain the the PHY node.

Fixes: 5a814af5fc22 ("arm64: dts: qcom: sm6350: Add UFS nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 84ff20a96c83..acf0b0f73af9 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1197,6 +1197,8 @@ ufs_mem_phy: phy@1d87000 {
 				      "ref_aux",
 				      "qref";
 
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 

-- 
2.39.2


