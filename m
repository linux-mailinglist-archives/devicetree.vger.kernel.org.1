Return-Path: <devicetree+bounces-53341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAEB88BFAB
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 11:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A66F2E6B07
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 10:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1596481A5;
	Tue, 26 Mar 2024 10:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EO8BAolL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E734EEAF6
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 10:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711449389; cv=none; b=huKDGr4E6hiROTxSZGRw5dMJKrMDGRKxRICNEeseqVS4VqTkio1g3Qk8NTg2Mg8IQC7LLUcA/rQjHutJjscSeUafPWu4pakeM5pMI0KTrrBx+Gdgi3vgJLMUGKt3ECXsRDRUSd4pyBSdNbvJLrazIP7rj6jOCEWBRZAs7CQUqpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711449389; c=relaxed/simple;
	bh=PBa73x1wwQXSr1P6PnZ29H+R5VqrMGOD2B/9/u3cZTc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UJZlavpNsTutU/iCbyKV6AmSERKfjUFtFyLw2YdLZS+lMNLI7XOsJHRlej0ROxVCfNCQM8fKhQePrAmvNwKa/HM7wTET8jz9ZqVs91samxD25k9sfjlQhXIPykm1kgiqwG7yL5f6c3maBAVQtgN8LRl1Ooan/PCpE9anhv05n9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EO8BAolL; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4148f6188edso2556495e9.3
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 03:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711449386; x=1712054186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DAnt5lmsl2K0nUjwM4CQ0tHKixAt6mU13mvbj43RCEo=;
        b=EO8BAolLtHZG+evEHU1LjNaZABgg2qpum6e7IHn3k2n32dAtNEyn3V5dpA9B5fDqoU
         Xz+VNTWT76Hoeq+GACC+msdoo5SXTXqy4GJenmR1/yrQyS8fPaVblwI3+m64CIz/g0pa
         B/cMUQ1t/xA/LitKrZhEMX0T9f7hRekzcH9TQvv8OAdglxZ1SflUFnSlLAiVj6o5rPnH
         ldA34Xz64tUuWxHIMW7LOvUAj34AluEA8ahLH7L1sEKJfozyZkG8AawFbAYPuG9U7j7k
         OPptEQbKzthGeVgHBzuhtjITrZVmd0YpMGDcsZSUMIn+B6STQk3R5gkQdBj5glmJzyQ7
         KBkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711449386; x=1712054186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DAnt5lmsl2K0nUjwM4CQ0tHKixAt6mU13mvbj43RCEo=;
        b=KfiEDFgTafzJXYMMybZfdBiw3sv04rzU3HSgNOkBI0b7XRzE/tWR3RDyy97k5N6S61
         CBOvUk4tfKKMRVeO3ergL+sEIp/XGhzFD4GbP7043UCew25oAbNAS0TKeqxqm5bug8na
         F8Yq9GK4kb5++T+vqcH3aQAAjTER6uMWwvnqAFPzmrp7g4TIX7PO5Q+jT9aXcy3JVg/N
         4V7zKrhNWwI5Y3ZrEgOtvUVt1cTtD2lStryxeMTVcFDHP7GU2d7Q0XkUUDHLfUoVt9+J
         rq57wNKFOs7BF1DZpROOuFY9kGTP7WtyqYLFu8ssMF8vwfYRXTbKdjagNQeXcuiOmz/y
         66Pg==
X-Forwarded-Encrypted: i=1; AJvYcCWqAWb1PxIsJSompRD2Gltp5b+RuqGoXTf/mtEIOzUmYR8QfMWjTZZkAF5zDN87oJ/lvkUHK79Mv/uk5ZpjigrBP/PSgF8fhk1a1A==
X-Gm-Message-State: AOJu0YxNj9O5jogrLFQlYscAi+BzU1wI3Xrw2A40uQSTwS3yGEMocTbs
	Gjv3Lm90zvsc1c06cPH/1kmQzAsZqZ2VBfQkSRYanX6iX41jiE3LsI/5gDRIW3w=
X-Google-Smtp-Source: AGHT+IHkLp5ejLlaz88vMjjQ7QEsUY5+JZvNwptIjuzqF/7HWfnMzcqY9973ZnjEQ9Yu4jgC5BJpsQ==
X-Received: by 2002:a05:600c:1d08:b0:413:30dc:698a with SMTP id l8-20020a05600c1d0800b0041330dc698amr6705807wms.25.1711449386342;
        Tue, 26 Mar 2024 03:36:26 -0700 (PDT)
Received: from ta2.c.googlers.com.com (158.100.79.34.bc.googleusercontent.com. [34.79.100.158])
        by smtp.gmail.com with ESMTPSA id bn22-20020a056000061600b00341d2604a35sm3337954wrb.98.2024.03.26.03.36.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 03:36:25 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	willmcvicker@google.com,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 2/4] arm64: dts: exynos: gs101: order pinctrl-* props alphabetically
Date: Tue, 26 Mar 2024 10:36:18 +0000
Message-ID: <20240326103620.298298-3-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.396.g6e790dbe36-goog
In-Reply-To: <20240326103620.298298-1-tudor.ambarus@linaro.org>
References: <20240326103620.298298-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reverse pinctrl-* lines, first pinctrl-0 then pinctrl-names. Move the
pinctrl-* properties after clocks so that we keep alphabetic order and
align with the other similar definitions.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 0b0db735dc8e..cfb3ddc7f885 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -393,11 +393,11 @@ hsi2c_8: i2c@10970000 {
 				interrupts = <GIC_SPI 642 IRQ_TYPE_LEVEL_HIGH 0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				pinctrl-names = "default";
-				pinctrl-0 = <&hsi2c8_bus>;
 				clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_7>,
 					 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_7>;
 				clock-names = "hsi2c", "hsi2c_pclk";
+				pinctrl-0 = <&hsi2c8_bus>;
+				pinctrl-names = "default";
 				status = "disabled";
 			};
 		};
@@ -473,11 +473,11 @@ hsi2c_12: i2c@10d50000 {
 				interrupts = <GIC_SPI 655 IRQ_TYPE_LEVEL_HIGH 0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				pinctrl-0 = <&hsi2c12_bus>;
-				pinctrl-names = "default";
 				clocks = <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_5>,
 					 <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_5>;
 				clock-names = "hsi2c", "hsi2c_pclk";
+				pinctrl-0 = <&hsi2c12_bus>;
+				pinctrl-names = "default";
 				status = "disabled";
 			};
 		};
-- 
2.44.0.396.g6e790dbe36-goog


