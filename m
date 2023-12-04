Return-Path: <devicetree+bounces-21332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A02D3803379
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 13:55:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A2E81F210E5
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 12:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015532421B;
	Mon,  4 Dec 2023 12:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Euj0vyih"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E51B8F3
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 04:55:36 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a00191363c1so611392166b.0
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 04:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701694535; x=1702299335; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L2hsBw2f4zAGauIZbOvreuYSNpIWy0p3UiF+fZb/E10=;
        b=Euj0vyih7AVGjpIBXcmmNBvr/29gFIjKjVXLujlB9qUcwFmIyAJabmbuoZki29QxLu
         gOW1zr+K4bBXjYunWrsS8rSmKhE24hka26hklm0VCI3UvuVKAiyu4JlLJQ42j/tcNDn3
         IrTsKm6xTRqM8rsaooQ9lltrIHL8Xu4ucl5UIslz8tw3LRpTy+UqpI5myaojzHiG753U
         BalnrZM1ldVLuquNqvqcfSHpRHPkDm5Cb66dQGm2019rLmNacwjs0oxBsurkLpQDcp38
         pGu+uofvUrmiZFbjX+GeXSu1EDwpXcWaqCK5xOEeDZvGn6bBZa5Z48BD6qeLUYfrzevJ
         yF4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701694535; x=1702299335;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L2hsBw2f4zAGauIZbOvreuYSNpIWy0p3UiF+fZb/E10=;
        b=M5drTQTjcUD/ftYxFl9u5QcHolqLbQcoJXLY6gWpBt2rclaJQRcHpQaPLnMr+IJYqu
         B69rNnSdutHDk4idnlLuTj+cgQnh2BiBzbEzb55laWXB6Fvcs2/3s9+DLv5frBZYKGYu
         bODPUgExceBTrAM1ur3zkrHJdzqIv74/rwxsf4td6z5V6q5tVGusvyq77oWXT3W2RGcc
         AVJBZeI8zZTm+YSCDETJjV+qhF1bEKtA75+1/Ax496zmpEoZWc6hQSQAW801143P6rtc
         JsAonEnBKf18bwEHJ7QEcjrYh+0RDZLM7LRp/hKhEvGm4v5xuyo8k+EnHJTR80/k6rvs
         n5cg==
X-Gm-Message-State: AOJu0YxP1ojhY68iSGlljYZV9i5GCo9db5x6fSOv2UpaSv9udI+3Y4nN
	mkNRzxnIvhG3rQM83nnCLB0ZkQ==
X-Google-Smtp-Source: AGHT+IGrvcribSjcrW0uB3jSUhS+pnkpk+Fcqij3kL8dj7I1z74eqTqBVKOeNtEWtKSkDbuBhrI2dA==
X-Received: by 2002:a17:906:6015:b0:a19:d40a:d22a with SMTP id o21-20020a170906601500b00a19d40ad22amr1483993ejj.246.1701694535368;
        Mon, 04 Dec 2023 04:55:35 -0800 (PST)
Received: from [10.167.154.1] (178235179097.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.97])
        by smtp.gmail.com with ESMTPSA id ay22-20020a170906d29600b009efe6fdf615sm5241373ejb.150.2023.12.04.04.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 04:55:34 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v2 0/6] SM8450 / SM8550 Adreno
Date: Mon, 04 Dec 2023 13:55:19 +0100
Message-Id: <20231127-topic-a7xx_dt-v2-0-2a437588e563@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADfMbWUC/3WNQQqDMBBFryKz7hQzFZSueo8iJTGjDkgiEysW8
 e5N3Xf5Hvz/dkiswgnuxQ7KqySJIQNdCuhGGwZG8ZmBSroZQzUucZYObb1tL79gz8yVqYi9t5A
 3ziZGpzZ0Y16F9zRlOSv3sp2RZ5t5lLRE/ZzN1fzsv/vVYImWqHGNIWLXPyYJVuM16gDtcRxf+
 JmW98AAAAA=
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
 linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701694533; l=1382;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=G2AGr7+EfmpDgrZgtA9axRHuip8IvIHibzVfFKlzR2Q=;
 b=8v7uPUgPccph1d0xbsOc11lWkToE8gvXhqB3LqrVRQCp0HSjVz9i/VveJmoux/2n5cxHGrMMs
 s5uly2frnAaAdtE8+UBQUA3JLO5N7k9Skk9Fs2qW0LJ6mO+dcvZkAu4
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Following the merging of related bindings, driver and mesa changes, enable
the GPU on both of these platforms.

P1 for Will/iommu, rest for qcom

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v2:
- Sort nodes better in 8550dtsi
- Fix the 8550 GPU chip ID
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20231127-topic-a7xx_dt-v1-0-a228b8122ebf@linaro.org

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
base-commit: 629a3b49f3f957e975253c54846090b8d5ed2e9b
change-id: 20231127-topic-a7xx_dt-feee4142edda

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


