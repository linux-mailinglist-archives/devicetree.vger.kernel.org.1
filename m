Return-Path: <devicetree+bounces-101055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEEE97023D
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 14:52:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B183283710
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 12:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9131415D5CA;
	Sat,  7 Sep 2024 12:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z7Cun+N/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73D115B992
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 12:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725713494; cv=none; b=MpyGqzmbmJGMdcmGgwg6BLRG/cTArw6ujHrHHoTt7UYZMsvMkgE8hO/V8KTdH9WAnXZgQaYHVi8koixbmw2hOl+zEoznzkNzKf3X605ge/N1jckcfgJ8nnxgMwMjxIRbDRKcNbExjPI5op83MwFZyHMF1IumZnsSxMoM9Ms7vBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725713494; c=relaxed/simple;
	bh=Om2AhE/49Do7xLXq7286Q52iN2U3h4+EcOngsQ+aodU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Av28cD2OzYar1mgS9bvz/Mf5qMcZa2+904RCZBgEHkhZQ0PlynIxH0PZlbEWrwTpYEXBqv1hLxe6KJhNsqsb+V0iFx5MXzQ/AeY51GF3LvmLmCJtjvtBf1ex4WLmEMrzE8F8Fa497TBqR+D/7vNNhfy8QattLBG1+eoBKK1/QyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z7Cun+N/; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f75c56f16aso5692451fa.0
        for <devicetree@vger.kernel.org>; Sat, 07 Sep 2024 05:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725713491; x=1726318291; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7sWs0Yh5GOl19xy1ip0mx+la4ukXR/+lSq5N8TyxyHg=;
        b=z7Cun+N/vhAgrPA9E3dNohz1cVNYh3JKQgLJtn3NMSwvbaque2tuMMSEGUcUy6l4Ur
         s6kb0qzGaLdUxLlcDL7WRm88/Ct1GAhpeXux0TLsHs4LdZHoMBXaoBqPIKIsb3LYxgET
         tkt3CYG42alX0chPfOxD3akac9QIGlbwpTOonDusmaUgdWPEC50CjBTihAMNt2crktXl
         CElyHndaxFsDo3XASklHaHnvNQeP2QKFjVVQ/xiqHWh7cRvyLEWZxsay84ZPZQWVWSOy
         fGjo2ZkKrob8RfQ/Rs3jTatMpTuvYdaigYItd+nwwi6Gr2jUFU6jSbh1y+BYyWwpAJdZ
         Knjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725713491; x=1726318291;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7sWs0Yh5GOl19xy1ip0mx+la4ukXR/+lSq5N8TyxyHg=;
        b=Tn/MowYky7yjU79TbfkJuMVWL+bkjVFQefbakbLtjf4cnUPKCeyKidm6s+4mbv9n0x
         iA2oR8IOCQj0QNTbHFp8JFyhnKiyK33rBFf8ZgRjYa6tz455pdfwN3AscnWCCHOixFPu
         hqw3o8HJQ7bB5IqybuD1qjAUlpTsVy3u4Vb8u9nSH4yNvIGCGhEB013kfAsgUeTvj8ec
         7s+icsFSNb8b00xOiZvABiSemimIRvGEGu4zWiXHn0NB+3ADYCvTRyc72dZq1xPZF3Xx
         EWHQg+x1wqWqfU+Ya6iLdgKqt9KH0AsebZbF899KuBRMciwioei4tAtzAykHGKCSWHs/
         P/ZA==
X-Forwarded-Encrypted: i=1; AJvYcCVi4dMGg5gTWc7GPNI4wnrgihMJDxkrTRnPo8aYB323rzKKjae5op4gopIRcI1SCSRqMvAXmJja9N9e@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+7wvP0ba1Dmh8j0+RdtWjRXEO7IqEXMEdrvxeQQ7B+uCstQbT
	LtKfqM1tLPCM4A31egLQsw11dIy7paElm6nzfAlB0vLIck41Ah6PEzMQTiqF7gE=
X-Google-Smtp-Source: AGHT+IGhqpckvhWmOG6EkU6IpaNRuD3yiEYQhHIW7VWjV1wlz4lF/h38bNZ5W5o8L+nGAnp6CZNHFg==
X-Received: by 2002:a05:6512:3502:b0:52b:bf8e:ffea with SMTP id 2adb3069b0e04-536587fce54mr3016089e87.40.1725713490684;
        Sat, 07 Sep 2024 05:51:30 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5365f8cb76fsm143273e87.177.2024.09.07.05.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Sep 2024 05:51:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 07 Sep 2024 15:51:27 +0300
Subject: [PATCH 4/4] arm64: dts: qcom: qcm6490-rb3gen2: enable WiFi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240907-rb3g2-fixes-v1-4-eb9da98e9f80@linaro.org>
References: <20240907-rb3g2-fixes-v1-0-eb9da98e9f80@linaro.org>
In-Reply-To: <20240907-rb3g2-fixes-v1-0-eb9da98e9f80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Komal Bajaj <quic_kbajaj@quicinc.com>, 
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ath11k@lists.infradead.org, 
 Kalle Valo <kvalo@kernel.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=821;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Om2AhE/49Do7xLXq7286Q52iN2U3h4+EcOngsQ+aodU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBm3ExO0pHd0WKIcWTD7FOZykBxXIUyqiFeVUak+
 CufdfpCGtaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZtxMTgAKCRCLPIo+Aiko
 1T+qB/wMeJVn2ogUiKRQAvEC4RAi62kilDEcn4FSYr3YYKo70j0oT6VQC5P5VcMwNyzuhErRAso
 3NzNTD+RKZ791SQO/GiwMR8By8cT+7O4a2zQP4XmerfLuiD9a9dbk39eO5PmmvNhBXUzJIMCZuE
 /fOwB1ha+Uxm/7FqsINkm1seiZUajN6vrGZOfa9H0Ii9l+LB7cwuFZAo3LdkL5TQel7DzBiRSQa
 BwOipQTaAjqrCvnwZxe/fmxRmxV5iNYAKWrOxO+ccZHmlGeuS4DXHhY4jo5pApmPqq8uAsN2ptT
 eLOuthF6TLV6EgbN8ekSIpWOTcYaGMD/NRFVuBhSGl4Spw0q
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Enable WiFi device and specify the calibration variant name on the
RB3gen2 device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Cc: ath11k@lists.infradead.org
Cc: Kalle Valo <kvalo@kernel.org>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 00b755779608..41d800e09638 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -800,6 +800,9 @@ &ufs_mem_phy {
 
 &wifi {
 	memory-region = <&wlan_fw_mem>;
+	qcom,ath11k-calibration-variant = "Qualcomm_rb3gen2";
+
+	status = "okay";
 };
 
 /* PINCTRL - ADDITIONS TO NODES IN PARENT DEVICE TREE FILES */

-- 
2.39.2


