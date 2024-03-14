Return-Path: <devicetree+bounces-50365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E7187B625
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 02:43:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4D681F2280A
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 01:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C6BB4A0F;
	Thu, 14 Mar 2024 01:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nWyH91IE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ECDC4439
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 01:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710380578; cv=none; b=n6QFn3B0b3RYMu5IB+0DET9h9O0koPH6WDsR8QgN+yeoTjioqoQodt0mHAObFp3yKyXRpyplrz/zULpdOXn7Yri3QPDb4PqADFKXTsdCfY/1Lql4S1zjndvgqDNC9OYUTRtHzHeT3nt+WZ0U36vCFk9vJ1I9/ZAaeXjlbR+/xfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710380578; c=relaxed/simple;
	bh=/9o8wupjT2lFvIVQz6ywcaPq/J3mTzdTMJ1bW3KmM/k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jvPnaH+6vP2flyT8ggFHRszlKBfJNyw1ShOtG7AhQOoj+s4feZsElcjyfKlyXQECrKKs+4uJDd8YDAtZVac+xd179jQgzC0Rb/TcdI1jsoJ76AYwL2gAMrar/ZQ4BCfPzqVeoL+GPUtQJ1DApn2KEPnB1jY4jn/a8uo9fzpreLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nWyH91IE; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-513b1e1724bso510469e87.1
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 18:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710380575; x=1710985375; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pr28EdwX1bs5qhBixWH7XvK1iMcKHzy7Xszob8QwMuY=;
        b=nWyH91IEm/gkRPr5MYJbZ7Znir4c1fJh7Ta7BIHHhH5aIwaN1nAV3MBxhfxk+h5ZSt
         /TuEj7DEGIEngiizIs/XINnjoAMy3Tpdbok+Ek/voVYS0EzQk66FdMdgLsm2mMD43+d8
         xY+ohO0B2s9EwawGX36PhSLvNYZriqf5NtbL4bkYXWGGnNino/2hUQZkPWO0dmFdHUme
         uFQPSaHleSh+EVBXbRZl7ad5urZXFrTuPviTujjZRb2ZCyhqZxobhSRBo9ptybH1oe2Y
         ily+kiNyXdoFv8l3ycSzrv624IdYkGKWsnbcsQUEgD2LeGfN0e2GCi8FFf0TpopCx8ZN
         Tdjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710380575; x=1710985375;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pr28EdwX1bs5qhBixWH7XvK1iMcKHzy7Xszob8QwMuY=;
        b=bBdvKk2PQLefrsg/bngSqdYuzLJeGczmQBzu5cDHUsR8s8DH4IjiTmx4r6o9rv3AHc
         oulphJJbBVL58S+GXITo1QzbFRZEoi4E6riBYWaVLP1n8nrRzG5RwyLfKTuUMmxEY67e
         99iJxVuLwej1+gfYPF86ZZTrz/CR9mm6zwLmw/KYyNVcBuWB7ixnIAPrft3SAwddbx2w
         hACLHuim0e2SvJYpMAFHU1Y/1zBYWIQZeC0nL6roG7vVbdOPWL1/W5hXJMllfZINWUsM
         fsGEqkP0Hhb8Sw5D6dCGFCu6tsK9kh7GM7OXPPli89p2UEeS7jdqZFPmh7uzuuVn6ria
         9DKA==
X-Forwarded-Encrypted: i=1; AJvYcCWPE8bBTB6fZGLdkRauBiPIAWY42E7CkaVfZhhD5DUtmXCEGx1zgkTnSmZSSUki4to2+AhQVdAh2B97W8tk3mXyKlYruUDCO+eRcw==
X-Gm-Message-State: AOJu0YyewBiHKqrIsNO07UBlQMn0ZomWwyXtcwxIZ7OQlwbBZ2vB4aLt
	NCq767YpzctqqELT+Uf4bDa+riL6pQZSnpOMtwcjSJyentx+PAnQNa+aSeszZ4w=
X-Google-Smtp-Source: AGHT+IGcTBHMI8oHUsiT+fZXBiRNdKrcPD4PPsQcNnRDNTflB8fcdAPSZ/IoAVPm6YeuwnWT7fad6Q==
X-Received: by 2002:a19:2d0b:0:b0:513:ca9f:3c7f with SMTP id k11-20020a192d0b000000b00513ca9f3c7fmr152918lfj.17.1710380574753;
        Wed, 13 Mar 2024 18:42:54 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u16-20020ac243d0000000b005131e4804f9sm66566lfl.190.2024.03.13.18.42.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 18:42:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/2] arm64: dts: qcom: msm8916: drop dtbTool compatibles
Date: Thu, 14 Mar 2024 03:42:47 +0200
Message-Id: <20240314-msm8916-drop-compats-v2-0-5a4b40f832d3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABdW8mUC/4WNQQqDMBBFryKz7hQnDRq78h7FxVSjDlQjE5EW8
 e5NvUCX78F/f4foVXyEe7aD+k2ihDmBuWTQjjwPHqVLDCY3NjeGcIqTq6jATsOCbZgWXiOWfZE
 7Zusq6yBNF/W9vM/so0k8SlyDfs6XjX72T3AjJCyJ246fZMubq18ys4Zr0AGa4zi+yutucLkAA
 AA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Stephan Gerhold <stephan@gerhold.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1368;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=/9o8wupjT2lFvIVQz6ywcaPq/J3mTzdTMJ1bW3KmM/k=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+qnMNnvFc0G9pHTL6ru0HYUu3d6L9ei7N6K1MiaebaC3
 Rl16as7GY1ZGBi5GGTFFFl8ClqmxmxKDvuwY2o9zCBWJpApDFycAjAR5skcDL37WvK3hmrOms95
 iHXyQYHHPTXrfok5cXTH/e2u2i/+i1l1heEHjrSASG/dhIhXbmqmFhaXryTZ3WFL3RLx8+PcNH+
 B0s68QraSPTdTL616LeZ2zm7tbB1b+cNlveVxRfvbD1mcjC6R3fRlsbt4t+FJgY2P589qerAq3N
 V7rZGazs0uO9PqSTpOOnI1M9+9UjOcf8jqIWPy7vdnGrLa6qKuRyfmfcu/n+2icPRi7Lm7zq/nM
 C9t3BrwrLrwhezVb1YOos+tP6zefMwg9bGgKvOXKXuYOgMjvq6M1TQJsq58szR++Q/H9GRlb+1k
 y7mMRWnOtskbVxV5aFx6nyDfm7qiSmFDynP3k0eZVKcAAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Only two boards ever has adopted the dtbTool-specific compatibles.
However the dtbTool should not be used anymore. It was required only for
the old, broken lk1st bootloader. All users of those boards should have
updated to use lk2nd instead. Otherwise several important features
(secondary CPU cores, WiFi, BT) will not work with the upstream kernel.

Drop these extra compatibles, merging these two boards into the common
bindings case for msm8916.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Drop the compatibles from bindings too (Krzysztof)
- Add cover letter, describing why everybody has switched to lk2nd.
- Link to v1: https://lore.kernel.org/r/20240221-msm8916-drop-compats-v1-1-71acdab14738@linaro.org

---
Dmitry Baryshkov (2):
      dt-bindings: arm: qcom: drop dtbTool-specific compatibles
      arm64: dts: qcom: msm8916: drop dtbTool-specific compatibles

 Documentation/devicetree/bindings/arm/qcom.yaml      | 12 ++----------
 arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts |  2 +-
 arch/arm64/boot/dts/qcom/msm8916-mtp.dts             |  2 +-
 3 files changed, 4 insertions(+), 12 deletions(-)
---
base-commit: 8ffc8b1bbd505e27e2c8439d326b6059c906c9dd
change-id: 20240221-msm8916-drop-compats-7f608aa48948

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


