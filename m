Return-Path: <devicetree+bounces-101087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CC99703B5
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 20:48:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 38339B230D5
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 18:48:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D803D1667E1;
	Sat,  7 Sep 2024 18:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hl7C49sT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A963F16088F
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 18:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725734904; cv=none; b=qx6TBTV9FYgOiq91Gk6MjPp3TfWXfBe7K6vxasbvin670wyk0ZR5N0EhAG+YITU1Iz7F02Vf3px2msYkZI5jUoQ3xCOKx1Lb3/mrsxVh1mUGMvnb4LgPg3/Vkc8WwkgYgQ9xbL0rZRspT8O+U/VpRRxqpUsFGbJb04E+RutiPi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725734904; c=relaxed/simple;
	bh=G8XjAsr7l2bULeKDkj37t5ZchnBw4CW6FlfjTvSZkX0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C0PzxBGkWGetDzTelrwB/Av7d/yO5YAMYWoBujKRrwsx9WnW9YzTPaiCWizuPVlkpvulEqngzKL13U/g1uIgb6T9ZE7nDnfHVl4t9CQEA+WF0xusQ6WC7E2RNLzKVq4YsIaOIZSOoaiIe8+0sT7qaxLhh/b7p3YwUT72Pbt32ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hl7C49sT; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2f502086419so38319111fa.3
        for <devicetree@vger.kernel.org>; Sat, 07 Sep 2024 11:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725734901; x=1726339701; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jpkFdCDWxG+jHgwK52QzUzAkGgglAsm4AAFdePfcRFY=;
        b=Hl7C49sTshX8Iex8j0mXUJl0p1u+r7/xCnj8t/QjngPOo3my6XS27xxcJVzpuIRC8l
         X4kjJNs4Tg5vZ2wYy0hmSOWa0FBeK8NdT5vpV73VBFV+Iym5C81gIoCzlXd0m3pbX7kZ
         g4Cl5YIldaQx+RR/o10ma27uwmZGJPsb1uWBc6uj/JUb+iCsJH0mSSHTAk0++9UKukC+
         7hTFzSGaLiECC2M4iyU3kxrQpvExIz7RbmMFWqwEIpcGh7xpnnoR0PtiOGjofaZKLqsT
         HtH8ZqyQqndccbFjTyyghNVTkKuD58GGetH+sLQvfRthSsk6+UjYGfTsmfCXAmfUzO9r
         8y/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725734901; x=1726339701;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jpkFdCDWxG+jHgwK52QzUzAkGgglAsm4AAFdePfcRFY=;
        b=F+yMddatURhQX79nq3hM7aO7mWqWVDHdMsJblhazbsPrVcIRhfsvy7SyKP0oiCwg5Y
         3iKXJoKivPi4mv0iawsxv5qZ5kdgupFFNe5OxGcB/x05R0BCpffskr4fmvAE0XIum5Bo
         6UFFSn1EK8VhGodwC3j18w5V/YnFNxLYjDZfTQWHUBp+7baCtHzF15AhjAavtG5XSlCp
         SKuNp+r48ZBQclhlsReDU8KOjrMjmrIDo2o3dOxbSpFfEucf5MvlQalojLW5nOY3/rSC
         Pgw637us+InNNhyRyaqGA/61DvqipWDftpbUPXCL4vw4qtdcVj6cSoGdul6kNJM9UckL
         dksQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcOH2Y2GXmPVBHVBn6I3Wpp5WeOtKA0EHlQhR6Mq+nR0L010LI+uuQyPrElWTuiE1HJ4xrYibEbYP3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6xHGGXxwHxGdRKowpnze6pdwW0VTqv370WgOScU8IlGGyvrT0
	xz3dYJoGj+q/FRyOm4GXTvaygLVqimgXN86FcCT8vpOtR4Nsggg2rTBm4xjNhjM=
X-Google-Smtp-Source: AGHT+IEGc+rw8n897S3k/I+r66uqWMoCaEiaxiGscVL7WMTLCAC9tURU0h8WtjoSPAnSuDv8f4FDdg==
X-Received: by 2002:a2e:6111:0:b0:2f3:e2fd:7dcd with SMTP id 38308e7fff4ca-2f751ea7abdmr36668801fa.6.1725734900596;
        Sat, 07 Sep 2024 11:48:20 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f75c0b1af3sm2271861fa.129.2024.09.07.11.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Sep 2024 11:48:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 07 Sep 2024 21:48:13 +0300
Subject: [PATCH 2/7] arm64: dts: qcom: sdm630: enable GPU SMMU and GPUCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240907-sdm660-wifi-v1-2-e316055142f8@linaro.org>
References: <20240907-sdm660-wifi-v1-0-e316055142f8@linaro.org>
In-Reply-To: <20240907-sdm660-wifi-v1-0-e316055142f8@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: iommu@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1099;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=G8XjAsr7l2bULeKDkj37t5ZchnBw4CW6FlfjTvSZkX0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBm3J/xN40BsuEdXIGn7p9ScsoJtdiTQB8SViteB
 gBGFCIKcZuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZtyf8QAKCRCLPIo+Aiko
 1ZcRB/9PjGkhtUodJVh3czV+ADqc3yYyhY69r+wl7qdHHU3JzuspOjFVoU7ZuoqO/THcsYrx6wh
 LmYqzCA+xmVgYwm4sp07bWG0O/4lMNAv/3BR6OdEHyfP82lLpx+ZRsb2ivv8ccP9rOMYaQWe1G3
 F7ay5oXlt3EUu5Nexny42eGZI8QY4Zq1ojF6hIcbwAZbrHXQcIwpkR9G78ACDBjodJIKCBrxWTR
 eDgg+hxpGLLGDqvotRO5ud5gXAlZiU0EstTkAygeVPGOOC2TqSTfXGMXNtcnVrSHx6ltk2oZmFq
 maTpaJaHMZmCeRXNHNAhZlTM9sgMK7AvwdhJx2gZlUV2akfY
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Now as the arm-smmu-qcom driver gained workarounds for the Adreno SMMU,
it becomes possible to safely enable GPU on the devices. Enable GPU SMMU
and GPU clock controller. GPU should be enabled for target devices that
have ZAP shader blob.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index c8da5cb8d04e..40ad99d75738 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1186,8 +1186,6 @@ kgsl_smmu: iommu@5040000 {
 				<GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
 				<GIC_SPI 349 IRQ_TYPE_LEVEL_HIGH>,
 				<GIC_SPI 350 IRQ_TYPE_LEVEL_HIGH>;
-
-			status = "disabled";
 		};
 
 		gpucc: clock-controller@5065000 {
@@ -1203,7 +1201,6 @@ gpucc: clock-controller@5065000 {
 			clock-names = "xo",
 				      "gcc_gpu_gpll0_clk",
 				      "gcc_gpu_gpll0_div_clk";
-			status = "disabled";
 		};
 
 		lpass_smmu: iommu@5100000 {

-- 
2.39.2


