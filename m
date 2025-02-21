Return-Path: <devicetree+bounces-149475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2F5A3F9C7
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:59:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA86D865415
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B097A211485;
	Fri, 21 Feb 2025 15:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XNu0+A0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B351E282D
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740153136; cv=none; b=qlchaiGmKLqhcgnuEAdHK4H7PXmT5IYD8w0mILph1gy5Jy6Lm86t60GeAqZ3KFC/9g4c5mRGCMbNC60l07HnTChDu+mphgyNQ2/sPtPs1JqZmUDjJc/l3m/5ME98t0OTCGVbELT2Uwd3kUiIKfYga0231GXI7Nh2/qBeyW7L3Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740153136; c=relaxed/simple;
	bh=r63bMyziS5VAUoRIbBTBNVf6CyjstQjiNuFZTwV1jAY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hAYrnd7mheOzxX5E0YmhdoPc8AZchI+TrhyWAT88q+SP4WAXJ9ZfsodbCMhCddtL0he4mU5+DxrokgG204TrKKKMQXB/sq6KPTbIdv8EWSvTl8pQKGCQSb93nGWH33BaP8CO8Vr4fZ29ko6/r0XSyXJlX+Wxm75DQkoJAG1t/6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XNu0+A0a; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5452c2805bcso2541498e87.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740153133; x=1740757933; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=md2U+XG4zVBPU+kJo14bBfe09ZT4A11xAQxscpC41RA=;
        b=XNu0+A0aSSTO2CUQQxhsdW5svifJc8etTCYKOVqyFo2LTPgqaEbVLrqrHsCBeiQTkF
         QiGn/tSvACRh/NTJh+L2Vb1Ra+E+FsjcQcpCS9CikJym712DgjilxwuzwusYrVHzXC3s
         6KenJEJVdKccxU61qhWvU/Ue7I1NVNZE3LVVSkw5/qU0NiYi7Ma8ouTItWLBl8ngXwox
         gneoB6o5xJFuHthlncA9dMLHAxZndEPXpCQiFmtBZTDBRP3xf5bCgGdffcas/acGU4U+
         qQ+1Q3oOQs2eQGLOg/whR3/pfLWO/dRmXwDOL2Pk1dzoRUs9/E0lZ3xYKyhQ2TMbkCYv
         b3pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740153133; x=1740757933;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=md2U+XG4zVBPU+kJo14bBfe09ZT4A11xAQxscpC41RA=;
        b=VaEuN316lRRlUKqbQFrLUHnidq9AMtzZWhmZR2UaYWOkcciWIqRhmvHQLcTWTVc9dT
         oNjvKNKHXIuUUFgrxeMGuYK22nnvQq8YdX8oNEfZH1t2BU/LWAF6sMWWjvRRDCFh/3R1
         r0Nej9xjhybSnVknrBXLAiHv4Fv25OqtK4BYh6Jp930UPZJqFy06rdbeTJ+Z+EfhH17d
         AybSiZuuHCwPzUraimjVHOK5ssi/kNVJIEIzWlJqiJt6SOrV1vfG4Y3o6KYoOPFOwvGB
         MqPH5NHY7XzihTQ+CAc8xGVgvLfNb4gh9luHo75Nns8CfJHyLV61gGqGYu/8FGDKhsmn
         t3uQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBDoDmyNi+2gKq14RZ97WgUNafCNasg2jdBK2uITWoZjQlpsxRb8XYuOeDrjsoBE/wtHOGFpTEwEEy@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ+Q/tWUxaDYT25jI0sgZntRSqfDmFidB5CLVu6bINkJmm6VfS
	tpdrFcZLJX5iIakUgYJu5hPDnvv9v8aJVSEC0idDuaWX42iU80KZxXFjDhUJ/O0=
X-Gm-Gg: ASbGncs5WyNdH2EocscM+zqkuQoymglxznbTmYHdJr03mxbixaJiz+wz2HcqDvKGHw7
	lBLC7nZdHrnr0vjtCyBzhSF0O/atUUgIuUKsDXXQjDeCHcbFFT7fxRVtICJAWSttez9S3KNPvWR
	3GyA1QK5TnzGoSyhnd1jzT6J1FY+VAud/izrwD7C043Q+PXPYx+ztvaoPiy1K9+yaFO+kphE8iB
	3nYw+lBmCTfbEZl21UjAnYGYga4qc511GfT+cBuwgIQXU/SzpuH8bQSUxba2w5Kxo0lb1hfmkT1
	G+J43clinaRt062c4lsfaEXSzP8ibA78PJ6Lj9ATsxPd9UqgbX9l+b0+6DRLgnTDgHP4GA==
X-Google-Smtp-Source: AGHT+IGbMcerfbwYgeYw6YLssCNVTGm0A7e8f1N/RMimd9WBVnYYr2qhKyh+qBmIMoNFdbv0docIBg==
X-Received: by 2002:a05:6512:ba5:b0:543:9a61:a2e5 with SMTP id 2adb3069b0e04-54838ef78cemr1638320e87.23.1740153131920;
        Fri, 21 Feb 2025 07:52:11 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54816a55851sm287643e87.27.2025.02.21.07.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:52:10 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 21 Feb 2025 17:52:04 +0200
Subject: [PATCH v3 6/8] PCI: dwc: pcie-qcom-ep: enable EP support for
 SAR2130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-sar2130p-pci-v3-6-61a0fdfb75b4@linaro.org>
References: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
In-Reply-To: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mrinmay Sarkar <quic_msarkar@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=992;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=r63bMyziS5VAUoRIbBTBNVf6CyjstQjiNuFZTwV1jAY=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnuKEiMghTZnHdd+xhyWX15/p0yt7X2L/g3fJVA
 V474rUbS7qJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ7ihIgAKCRAU23LtvoBl
 uIedEACmYKkrGylvmir9udVstpPuKUV6LsfVVylxsAMVdyVj2j4C75HKY5dilcPrULL2IuHR/TO
 hvBxPXwExZ2hAvCSw9IaHCsOGScC4PqHdSYyhRIJn3/qkoRw6HI4qm6TyrLOFLYj7iVAxPUL9c+
 jSqTvqDMHskwYt0fhvzMi7aRPFaT0UJWw9fBEZq9oUczMq0lv7sx92Ut6MukjNqmxjHhOiRBzu4
 uVWMW9TI457V8tqTxz64/PTMpZnECv8oz734AEcAnrfpuSf5yqhEfwWclz6z2IhV0p7yCmoawEm
 h+aBT/ouSAx3FXgOcUaWkCHuVjKI/Bk5auAPcjvCqfKyzRlBsqrnkifoqkLNGDf4mMNcLjEeYO0
 Iwj72vp6yWKBz84VzmmvoWYkmcfjW3lxy3JNSgGpqs28bhL7JcNkeSrrdbLYryyAM2CUhq75FtV
 6PPPqVcv0pwz/XiC5mAX3BP3LXgB8tt1Dhwqf8ico9vtIacs+teN0SCJyoPvMMd6lRhM91V7XD4
 3FvqVdgJxhmrQAQGdwnJlVlaaxDxmPwgGiqM7++XoYaWS/1Bo9jZM/BiRrusMLeFEqgvOWmPsEv
 HHGIysIJTlwbnTBYJ9xQXrjtfGQ/COARIc8Eogn/cem2UVYSEgEAkWALxzcnVPbLQM+PdbTp/i0
 y2F1AHp83SBR4BA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Enable PCIe endpoint support for the Qualcomm SAR2130P platform. It is
impossible to use fallback compatible to any other platform since
SAR2130P uses slightly different set of clocks.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index c08f64d7a825fa5da22976c8020f96ee5faa5462..dec5675c7c9d52b77f084ae139845b488fa02d2c 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -933,6 +933,7 @@ static const struct of_device_id qcom_pcie_ep_match[] = {
 	{ .compatible = "qcom,sa8775p-pcie-ep", .data = &cfg_1_34_0},
 	{ .compatible = "qcom,sdx55-pcie-ep", },
 	{ .compatible = "qcom,sm8450-pcie-ep", },
+	{ .compatible = "qcom,sar2130p-pcie-ep", },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_pcie_ep_match);

-- 
2.39.5


