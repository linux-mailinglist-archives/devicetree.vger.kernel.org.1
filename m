Return-Path: <devicetree+bounces-19315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA417FA619
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 17:20:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBF5C1C20CCD
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 16:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38C84364C3;
	Mon, 27 Nov 2023 16:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mky51Kq8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D1B3DD
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 08:20:12 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50baa3e5c00so2866291e87.1
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 08:20:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701102010; x=1701706810; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o7VqPtYpwoj+TW7Y8BWDK43UozTyH/qVC7KhQCmuFRM=;
        b=Mky51Kq8MRdApT6aAUPok70hZRlAm3e9oKN1Gr2h9qM1EiVQhyUQF0wKjt0L4l3qfI
         9MA+G83hqcUW1H6BEvqTzVHUxcnfcCYLL+jwEzzAyb1PZfooI77sBnwrUW904VQvnyFt
         z+4wTVk+vKXxCZiEvLwHilXIl21j9IlRp6GbmLptFQ/H0lPqn8sWmLMbWoU4ALUrjz0v
         EcbmqsYPSq9zAMbeXEEq7Eia5F3zmdt3wwemaT1mL80kv3cY4WDMeZl9GZ8eenTgDenu
         1bCEL/CHmoWbL+Afgsi2onVxjUx8JuCqp0o/wmRNNPL8dmbeL0CxHaaOTGOlWF0DQrLx
         q5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701102010; x=1701706810;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o7VqPtYpwoj+TW7Y8BWDK43UozTyH/qVC7KhQCmuFRM=;
        b=lIY0b7s33rLhROZIaHDSnzXgmaikmzpYTWNhU1fpVWUnMExJ100aMwPVbOxUlTaw06
         qt8sKT8CjiWkGob/Ovkf4cld++YtcBnTQW5ev3x7xhB67ZgiyP4Ovy7dvD0LBTI06kmq
         WyaB/Y3AiednhqA3+M5ms84D2ZOvgQR1tuofPMNg1brBf3TzLa3AJIwtLRQXV5DgYmBl
         ClTi9MRQj7FsaVS8VqBF3lX2fFPqg3VOaF68g4F86ndY5C+ANckP49uvsW1Exf9wsP2l
         SCVjx21kTq/Md3u4RTGYU5Dabh7ZI+T/xgz0N/zmQ2ZKyu9Ph1FIzVdsetfuRw4Rih9t
         4Rjw==
X-Gm-Message-State: AOJu0YzA102Jwz+95Cjw5VGiGVs8jrckoXQL+77LSFNnVjCa0SimP4Fj
	tWqHqq6HQ3cbb96r6OrhikFH2g==
X-Google-Smtp-Source: AGHT+IHmgRxGBQwnhbTyFCMdrlJjPEqWPP9SdrVlRVuS7yeIr7kA+AYZlSRHNy1rJX25Nv8IL8B7dg==
X-Received: by 2002:a05:6512:3196:b0:50b:aa13:a761 with SMTP id i22-20020a056512319600b0050baa13a761mr5779827lfe.46.1701102010662;
        Mon, 27 Nov 2023 08:20:10 -0800 (PST)
Received: from [10.167.154.1] (178235187180.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.180])
        by smtp.gmail.com with ESMTPSA id m12-20020a1709062acc00b009c3828fec06sm5734760eje.81.2023.11.27.08.20.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 08:20:10 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/6] SM8450 / SM8550 Adreno
Date: Mon, 27 Nov 2023 17:20:02 +0100
Message-Id: <20231127-topic-a7xx_dt-v1-0-a228b8122ebf@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALLBZGUC/x2NUQqDMBAFryL77UKTCoJXKaWsyVMXJEqiJSDev
 Us/Z2CYiwqyotDQXJTx1aJbMnBtQ2GRNIM1GpN/+Kdzvudj2zWw9LV+4sETgM51HjEKWTNKAY9
 ZUlisSue6mtwzJq3/yet93z/OMxPedAAAAA==
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701102008; l=1189;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=/aCt/tpWduoy987CggdzKos+vz6oIxXcKvTXjXKLxJ8=;
 b=/fFdW2I4PegFvbTzHnoeeKoejhyDoNRfMyRHqa4iYNbe/GxP/qCjLCCo4xiLaXyEVTacKmf9c
 nJik6l90SFTAynj16yrttBu/TokmhuJ4L2xau17nJBJgUOOGLFeHYzE
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Following the merging of related bindings, driver and mesa changes, enable
the GPU on both of these platforms.

P1 for Will/iommu, rest for qcom

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (6):
      dt-bindings: arm-smmu: Document SM8[45]50 GPU SMMU
      arm64: dts: qcom: sm8450: Add GPU nodes
      arm64: dts: qcom: sm8550: Add GPU nodes
      arm64: dts: qcom: sm8550-qrd: Enable the A740 GPU
      arm64: dts: qcom: sm8550-mtp: Enable the A740 GPU
      arm64: dts: qcom: sm8450-hdk: Enable the A730 GPU

 .../devicetree/bindings/iommu/arm,smmu.yaml        |  48 ++++-
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts            |   8 +
 arch/arm64/boot/dts/qcom/sm8450.dtsi               | 202 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts            |   8 +
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts            |   8 +
 arch/arm64/boot/dts/qcom/sm8550.dtsi               | 166 +++++++++++++++++
 6 files changed, 438 insertions(+), 2 deletions(-)
---
base-commit: 48bbaf8b793e0770798519f8ee1ea2908ff0943a
change-id: 20231127-topic-a7xx_dt-feee4142edda

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


