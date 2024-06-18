Return-Path: <devicetree+bounces-77260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3D390DDB0
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 22:47:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44B571C2318C
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 20:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 387801891BA;
	Tue, 18 Jun 2024 20:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fwD1UANX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DF11849CB
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 20:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718743534; cv=none; b=lE/sc4kL1qlkJWQggWck3xl1nIH0PN1GMi+Ld4cD8AKypfZecIpqSAG3JI2Ye+BAiKdw/psVuZnVbCW5jsku0PHldXclUkSrf9ou54Meq0lKZaXQvcecPw27LzdSsIp5PwKgx7Vv2HPfFILeQNnfvx7IcOlMmK8JRNBogFD4Nys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718743534; c=relaxed/simple;
	bh=OTr12Bi8/NXL7P/8SsOisfRk21WzJPQ5t6rWot8jDSk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FmcgWsMsLh4nZzp1kgyZCOxGiidaOuTDFxQj+f95Ew9cijPzcfKRom/7BajZhXZEFYtW2EtPc4gPxQ4kBHolp0vKWq0S8DnPq3XqV7uaTsX0ZU2dvKMx9q1X+V2FpQTg4yQFprTT1plsrzhdzqq+DndH579XzQLc7iJcDmrrcqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fwD1UANX; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-70089223245so70989a34.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718743530; x=1719348330; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=An62MJeGUMiGGgvWvJTRH6LH32AiZhil1QbTJRqvu4k=;
        b=fwD1UANXPhuQFNeXn3tyjKPmjRgb0RzjMolQ5d+F8KZyOdw1ybhQ7kbI28aoLCxeUk
         se5th8eZJ/O9caG/Z5Rvt/Bv32NwRX3cg/QNEiV6gsHJvEm2n6yP13eFGYFoyiHaYtFH
         Cwx/he5GGrhUQ6qTez3iPi9xBh00e8smX0UTEPqmJeNSySSWFECVX8BXIjcdovHfEcAE
         YwUDDYZopGHj//69Qdjy8B8o2yH79W8/SGuhDWfC9xFCPEdB5D5/P+Y5VHyL4eK5+Jzp
         d0zwSwXHpAvjRpHbg93M94OmDdkR1SzLupirHUVnCS/thwvaWaJbMdwjiRmOfFDZKbVx
         VGfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718743530; x=1719348330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=An62MJeGUMiGGgvWvJTRH6LH32AiZhil1QbTJRqvu4k=;
        b=a/PKu6njiZxLC12K5MU9dAOaqCKMPrBjsU+g7X84hethDIn93IlFIE6560HBW0zuWk
         FxPmrlNFI4Gs20SYZIchbEidR/GZqmTeU94kjHZkf8lJHlb2M8lFWjZnUjPLVjdtnlOB
         k1wgrJPEFFIXwINTVLBFe+cF3BzmIyKnINfnwvK2CpUxHS+SUMQNx3VxQ96kMIE97a+x
         f7KguSzydl0zKAAhqYcFQkM24mcj76GvB+8qJXPwEn9gDuvZR+wNNw1Z0VY4S5u+tomF
         Bucpz4VzJK8hvgDAU9gfopyYLTtzlDj9k2L2uzjBkg8ljtjcuCYfl0qAmlOV4WCjRjkp
         tGHw==
X-Forwarded-Encrypted: i=1; AJvYcCXPt7VxPP2F+lAUL+ZO7CRWYHCNtkTkjuGOhkXuJNVUw3xc97YA7qPXDxPj1Q7ko9EAdL6H+8fX7cdx7ASFP9sqxjAmvEo/yrCAew==
X-Gm-Message-State: AOJu0Yy/PHECoK+cNzSxeRothxl/IaSFrWZvef25eMZHw+tYWsSk4g+P
	9R8AQWwTYgSsZQKZgyppbCjpU92c5eTL4ZXOhFKYzfK5teVENn6tjSfj3OOTZ6I=
X-Google-Smtp-Source: AGHT+IF/wZnyEwlmp014WzzyEzK86air2V/fRVppB5R1D3+8KBOP7B7VGADdvbG4uR9hRt+kJZiG5w==
X-Received: by 2002:a9d:7d05:0:b0:6f9:72ca:fdcb with SMTP id 46e09a7af769-70075a7530bmr843183a34.36.1718743530058;
        Tue, 18 Jun 2024 13:45:30 -0700 (PDT)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-6fb5b1e3adesm1931562a34.36.2024.06.18.13.45.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 13:45:29 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/7] arm64: dts: exynos850: Enable TRNG
Date: Tue, 18 Jun 2024 15:45:23 -0500
Message-Id: <20240618204523.9563-8-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240618204523.9563-1-semen.protsenko@linaro.org>
References: <20240618204523.9563-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add True Random Number Generator (TRNG) node to Exynos850 SoC dtsi.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
  - (no changes)

 arch/arm64/boot/dts/exynos/exynos850.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
index 0706c8534ceb..f1c8b4613cbc 100644
--- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
@@ -416,6 +416,14 @@ pinctrl_core: pinctrl@12070000 {
 			interrupts = <GIC_SPI 451 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		trng: rng@12081400 {
+			compatible = "samsung,exynos850-trng";
+			reg = <0x12081400 0x100>;
+			clocks = <&cmu_core CLK_GOUT_SSS_ACLK>,
+				 <&cmu_core CLK_GOUT_SSS_PCLK>;
+			clock-names = "secss", "pclk";
+		};
+
 		pinctrl_hsi: pinctrl@13430000 {
 			compatible = "samsung,exynos850-pinctrl";
 			reg = <0x13430000 0x1000>;
-- 
2.39.2


