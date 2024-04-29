Return-Path: <devicetree+bounces-63728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1438B6325
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 22:05:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94E991F21704
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 20:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 689FE143C53;
	Mon, 29 Apr 2024 20:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CpdCVPYE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC9151411D0
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 20:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714421087; cv=none; b=Essykt5Ce5nCfUgeGh/8v3MI/EJx/LzUxbSEm6RP7WsOXzrstZhp5mt6GRXTN2N44fwU1/wu6grsZpR5pic/FeCH5nw7Ms7WohrwjCgVZ6q6Xc6NKHi4dcZ6IS9qrZMhPboIxQ8re1ISQ+b+cBTzk/o4nr6YP/BTqHsfu3edhSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714421087; c=relaxed/simple;
	bh=6EPfWTqm/lFaZs1kyJ73zKT+bkJLAEfvahvw8Cv8KkU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d+igwgXjuc3ZCNCvk1D3cZ0I65MDIJwGnCbFj821V7ZT6QYy9C1zBvBAUrY4pfJkjAojJGVP0K2t6wUTRdg2Dz515c58kfOzQ6e9mB6GQhO9icn39FMJ19DFBuY5QNpQ51TPdRiFi/2QSVFwtV+1BBTOQdOnuaHOiHQkMnyJ9fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CpdCVPYE; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-51abd9fcbf6so8166339e87.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714421083; x=1715025883; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F8gW4wGr4HSLlzWyo25Ekg/cBo+LkQV9cqhppDRnOws=;
        b=CpdCVPYE/frxUrSfNZ3TZH94Snlxm9d500/Tw9mo7gLI4Oi3nCIPy32F1A0Mb7rdmO
         zLAhGIzjkKHXJ2bWMHe0z/WFIcf6xGuSoPOSMcLJ9uQvHBdXlXMT6CwBiBpIHsFhyB0c
         Pj6N0QMIwhbsx4Rg1pHJml34k6pZ7lEtbyxqR73D21qoNs05JUENpWB7W4ZPAoji1KHH
         R2DPCQdzwg+61Fsgqq2nC7Xp7w4ADgctAiNYEq8azZQUYIpJEg7D4uvhzDfZBF9t5Hwc
         6eFzZs8u1wcaNcWqbnyIpK2Yh14z+N7aNC5db+2EJRw0qW518WA5NE2B6bLzQVA2BM8D
         w25w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714421083; x=1715025883;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F8gW4wGr4HSLlzWyo25Ekg/cBo+LkQV9cqhppDRnOws=;
        b=tIZsybH8H9KikVJyS5WYBEP8FlG8KLRjsBIzyPF/6IbSpGT/6xRKBlBgCaCGuAipi4
         bQC4Jpzc3wGyI4b4Y7qJ09qbP8MQT9HrTS0o7C758KGJfUyQicZA8TP1ypNUjzR3eQll
         dtnLIBQsxgIV4bZU/ku1+6NFYk7H9mua312MWzqA2cGbo09kjNBinieZ5fH+5Ljewabg
         Vs6ww4Z+eTdyiBEkY7FpAjnWQXtHBfbVnCLnmSRpQ4wtxWAnaGSq65qeu4/JmaX/PZm1
         mO2IxOm3I1jnIRf0eK7E2MAxXCQc2PYIF/NHXEMImA+4DMGgsswe9NpotO7GuJXhoPbw
         R+nw==
X-Forwarded-Encrypted: i=1; AJvYcCUQYvm4m5hS5KJknZG590INZGHYO0IiKq8kdUHPZCB47yNOJ497aGp8McsKt19WL6ydmrgroLkO4FLJr48X1Qi+owUlReDuXfS13g==
X-Gm-Message-State: AOJu0YwE/EaSWdme3cYOeVCXYTRfE//I46hL2EcoBlrJAXdy7w4xnYCG
	sVLWUY60CzO3jxfGPePpEjs2OTvrY3G1eo2R/PUt830HxHLSNF/y1E7tY+JPlhs=
X-Google-Smtp-Source: AGHT+IHGis5wF8t1ESX8RAjQs/EY1YGbXFP/Qh8xO6fNNNxeWUWMjywlketexpvy9RfUj+AypoUtcQ==
X-Received: by 2002:a05:6512:20ce:b0:51c:71cf:efc9 with SMTP id u14-20020a05651220ce00b0051c71cfefc9mr8666331lfr.49.1714421082734;
        Mon, 29 Apr 2024 13:04:42 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id ld4-20020a170906f94400b00a5906d14c31sm1140887ejb.64.2024.04.29.13.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 13:04:42 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 29 Apr 2024 21:04:40 +0100
Subject: [PATCH 3/4] arm64: dts: exynos: gs101: specify bus clock for
 pinctrl_hsi2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240429-samsung-pinctrl-busclock-dts-v1-3-5e935179f3ca@linaro.org>
References: <20240429-samsung-pinctrl-busclock-dts-v1-0-5e935179f3ca@linaro.org>
In-Reply-To: <20240429-samsung-pinctrl-busclock-dts-v1-0-5e935179f3ca@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

This bus clock is needed for pinctrl register access to work. Add it.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 8d4216cbab2e..f8fcbbb06e7b 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1327,6 +1327,8 @@ cmu_hsi2: clock-controller@14400000 {
 		pinctrl_hsi2: pinctrl@14440000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x14440000 0x00001000>;
+			clocks = <&cmu_hsi2 CLK_GOUT_HSI2_GPIO_HSI2_PCLK>;
+			clock-names = "pclk";
 			interrupts = <GIC_SPI 503 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 

-- 
2.44.0.769.g3c40516874-goog


