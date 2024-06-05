Return-Path: <devicetree+bounces-72832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4F78FD1FE
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 17:46:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D8B51F245FB
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 15:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F19AB14C582;
	Wed,  5 Jun 2024 15:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mcwmId/s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E712837A
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 15:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717602371; cv=none; b=DMCAwUvXjsY/J08qDA5pSe6tL1TUgEZKryfDdV4fSVkd8eXy3pvM6F+/uWo1anynYIZnZB8l3MOZK4jjOy7Cq+1+TFTJAOFwxSSDYR7h3p18fQke7qVWMStfKJSQdr71WiSlP9f2iNgToyb7GLvkueMkl32wcLi8hEJk/f+1DXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717602371; c=relaxed/simple;
	bh=rGN3r4WEOwjURMC7okauif1dbYoCUx19KLivnKcncgQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=c8VQL1BkS4hINPHKn48Lfms5foRjsT5xiYO9jM68AUO3YiDYwyyMQvhdUMiGGNEUYbdsBLXf1r1AjNzuHT7sybabsH0XGnGgatYuCysCd7epY3QC4PyurF+0t5b1+F27oW0+H7BWPkJjcVu45onGuyCpLL6n0hxXhdVzyjDG+P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mcwmId/s; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-35e0f4e1821so4801192f8f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 08:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717602368; x=1718207168; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A9rBCfBezDeI8/lC2JFYqfnoXfJQKZRJOb2ugt/ZxY4=;
        b=mcwmId/sRZpyUP9TZbHDgEA6NbfH1+p5NB8a9U+7UHY9diwig/lkz2EPm4oyhHia1H
         5iPW7jIDpv3yTaLc02kh0AcVNN5ZO+taBbGGeU5da+b16wCpuAtXHIBUPpvyFPApARq4
         g7ixf4vaBU2j+kJoujgicWwQasyTXqiFLG9CfRkL7MgWAqVYjVfRSx8pq9f4gnQASHgF
         pxDqwdvTP99uXBm7sCaXOnylOCpbT5j0rdAjPvcbfFsjk03QQXQweVJQLpfY0QIMYcO9
         Tm0MtVn0pfPGDZIyIpoAyyGDgJ4BD1TlCloygM/MKqCbBEa0CqcBm8e96IDE93kSWWI3
         NGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717602368; x=1718207168;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A9rBCfBezDeI8/lC2JFYqfnoXfJQKZRJOb2ugt/ZxY4=;
        b=vw4twtvcteeRzvJramVEC0hxiPJlL4A0XV5c30QO1tqby+2QNvqFchI3j7gUk4ryLp
         uor7Q1crMFsO29va1KfB6A6GPFXhk1+ok6ZGihEJywTn7H6nJeV6yHV5GgMP/IDpio2f
         WJ037FRH7+Ihvi28z0oI88VvT2TjXcoc0DvjANdFiRr9w6DjctzUMNdvFILCk745Y9+h
         AWtqic1o16zmcYLDRjqNN7qZLXoruKkdDxqf21digCh8p7ooiDihnAQHfOy8RtgyZuDk
         3XK1rS+E6DD71R6VddN+1eZ19WPdEyhn+Ub0mfDwiql+ZbKXEuTMN+AC0bH4FLjZcyMO
         sdbA==
X-Forwarded-Encrypted: i=1; AJvYcCVgfYlg11JaSPu53X7Qk73tNpRAaXu20ypAciKrf2vxUcQonNtKSQmmE7FBA9xl60c14V5m5O8+foZr7viJOyrd+DHlztN8eKw5sQ==
X-Gm-Message-State: AOJu0YxfKaIlH2MuW2spdApf67iTuLnKjpZ9bD6EIlYObwBCglVE4Dzi
	Q36AL8DgruvcvUFVgslMMoh1T2Ih+b8gSFxvCYbAit02kcrHdM80jEzg81gcIjWegDJGXXoHfJW
	JHmE=
X-Google-Smtp-Source: AGHT+IFf/VMwsZzJQun9mFkZhrd1Q/wkG7tQGe8G9jlXLLJdVl1MFqLMciBRZUNmGARwsbCrFxikEQ==
X-Received: by 2002:a05:6000:114a:b0:357:393d:5006 with SMTP id ffacd0b85a97d-35e8406866emr2329535f8f.7.1717602367955;
        Wed, 05 Jun 2024 08:46:07 -0700 (PDT)
Received: from krzk-bin.. ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04ca981sm14868452f8f.33.2024.06.05.08.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 08:46:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: use defines for interrupts
Date: Wed,  5 Jun 2024 17:46:05 +0200
Message-ID: <20240605154605.149051-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace hard-coded interrupt parts (GIC, flags) with standard defines
for readability.  No changes in resulting DTBs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8994.dtsi | 8 ++++----
 arch/arm64/boot/dts/qcom/qcs404.dtsi  | 8 ++++----
 arch/arm64/boot/dts/qcom/sdm630.dtsi  | 8 ++++----
 arch/arm64/boot/dts/qcom/sm6125.dtsi  | 8 ++++----
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8994.dtsi b/arch/arm64/boot/dts/qcom/msm8994.dtsi
index 9949d2cd23d8..917fa246857d 100644
--- a/arch/arm64/boot/dts/qcom/msm8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994.dtsi
@@ -1093,10 +1093,10 @@ gmu_sram: gmu-sram@0 {
 
 	timer: timer {
 		compatible = "arm,armv8-timer";
-		interrupts = <GIC_PPI 2 0xff08>,
-			     <GIC_PPI 3 0xff08>,
-			     <GIC_PPI 4 0xff08>,
-			     <GIC_PPI 1 0xff08>;
+		interrupts = <GIC_PPI 2 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 4 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 
 	vph_pwr: vph-pwr-regulator {
diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index d591c83e4bac..26a0940d42ec 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -1531,10 +1531,10 @@ pcie@0 {
 
 	timer {
 		compatible = "arm,armv8-timer";
-		interrupts = <GIC_PPI 2 0xff08>,
-			     <GIC_PPI 3 0xff08>,
-			     <GIC_PPI 4 0xff08>,
-			     <GIC_PPI 1 0xff08>;
+		interrupts = <GIC_PPI 2 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 4 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 
 	smp2p-adsp {
diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index f5921b80ef94..f202c1f3c89c 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -2601,10 +2601,10 @@ gpu_alert0: trip-point0 {
 
 	timer {
 		compatible = "arm,armv8-timer";
-		interrupts = <GIC_PPI 1 0xf08>,
-				 <GIC_PPI 2 0xf08>,
-				 <GIC_PPI 3 0xf08>,
-				 <GIC_PPI 0 0xf08>;
+		interrupts = <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 2 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 0 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 98ab08356088..777c380c2fa0 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -1588,10 +1588,10 @@ intc: interrupt-controller@f200000 {
 
 	timer {
 		compatible = "arm,armv8-timer";
-		interrupts = <GIC_PPI 1 0xf08
-			      GIC_PPI 2 0xf08
-			      GIC_PPI 3 0xf08
-			      GIC_PPI 0 0xf08>;
+		interrupts = <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 2 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 0 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
 		clock-frequency = <19200000>;
 	};
 };
-- 
2.43.0


