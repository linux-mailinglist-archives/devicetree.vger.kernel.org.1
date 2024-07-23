Return-Path: <devicetree+bounces-87664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8977093A46C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 18:33:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 955531C22395
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 16:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2498015820C;
	Tue, 23 Jul 2024 16:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TqdYegSz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8183B157469
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 16:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721752395; cv=none; b=C59oUQBV6bJ0l/SrspwsEkSd6al4Xp5U8A2AxzFuuS1305ml/3AUxTzkm6ZYN4SwpxQw3FjTGux3xKlza5IVwc4es3kzrs8ZVMW8yoxRauD9SaNvgYWsjKJU9q30KG9V+LwYPA+SYKEmfPNOCNtY6NigOg7wJnRYBJ3w2r61Iug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721752395; c=relaxed/simple;
	bh=p+vDVT3sVxbC5O6pG5Jqdi2C8YJpba39Vmv1jbtymgs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lbG7JZ2sbRF2nDswtrYC9DXQ2ggrYyfbymSCK2LVS3trZVo/R1SOxRnA79ucEfXD1Om2S5+zPYWB5iLYT+LUjeEyVViRD+5qyJ76yZiyMEbtHXIj11FNK3X0SnXuDRXNWFxUOzXUC730L+bEXoGtqOkjCHCUp5ov4pGOIFtDB6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TqdYegSz; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-260f94067bcso3279329fac.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 09:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721752392; x=1722357192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PdY3KgxTtiJXPxjyXybVLM1uY/tucI7CySN4GBUoBCg=;
        b=TqdYegSzbYbk88OUdBArdqqpctG+narpZzuLXm5J/n8Qa0+e/lAi/D4OWW6apBXEww
         zIGLvlcKWmmMHmQMUUj5yrv5IGGi6yJDPhkNtwf53mXxbsHI0htiY9ObkrLhdvADB8bV
         7VtyqlyNIiokkdocZrZsxVJ0R7an7hXIEqehoSeTnw4GPIg+aOAXl1Aki6e1IcUP7BNp
         9vGkXysmMPZzSJaryQe20ZSpnmXfi8K6MZSxzzh2ABR8vmGNYRwbXB0jrG6jYCJXpRMw
         APzrKIOdtMtQeggdXKEhXo422ShrTGFjUSkAvcHGp27nM0bwGRc84Cj8zC3G8R2RrbcZ
         BI3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721752392; x=1722357192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PdY3KgxTtiJXPxjyXybVLM1uY/tucI7CySN4GBUoBCg=;
        b=bgQ1n4cImOwELvYfErfqa5VsgO5SVKQ0YuuRjrEYrcFhPCCynM4KXkL4yuVPTFFM66
         TJzKJUwMg9z8Q8d2sL9COTQ8gCN2GX1oHCE8thS35wlTEenA1A1BJlePNAHN6GWak9BY
         k+Ds/RgoozA0wjdFsOp7jnpvjon7uMwjAtW7sNKjjAdKzLJIbw4WEaob4hFwNFkSilGa
         0BzBNjNBVXgxla2afX4kpuYNO8RdiOjOA+0quqzwm8oJ3Ka8+CkDv4GY/QQYCWayPsH4
         YcPOlkW08cnDEPwZB4uP5HpDJ57UdoK8bAqe2qW5GHgd01ck33L697f95jR07ZAMYCRM
         SAzg==
X-Forwarded-Encrypted: i=1; AJvYcCU2UD9/UsYW3SPe58mBS9FSVEs1njHG57xLd7am8+MjhzAluwntmEYzCZATHfleq43n2tP06kHxy4rTqQf0T6d/mzUiMy8YbuGFpg==
X-Gm-Message-State: AOJu0YzAu4+ltXpNUKWhDlyx8cZjMl38i4VapDF5hMuk9m8j3Upb1eXo
	/qD5yr6pNADFuDUkB4bSFzGC2n9/n4flyrcQ2l31WB0MTxLvo+hob0wkzCWMhBU=
X-Google-Smtp-Source: AGHT+IEPaVMzHCT8IN1kBlhYBPMyRD/ur/7HPDJtgHd3pnd2Iz+exktN3oy/a1T2KPvG2IeXeQZ6zg==
X-Received: by 2002:a05:6870:4205:b0:261:f30:fda3 with SMTP id 586e51a60fabf-2638df3318amr10459852fac.21.1721752392424;
        Tue, 23 Jul 2024 09:33:12 -0700 (PDT)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2610c7ce708sm2199570fac.25.2024.07.23.09.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 09:33:12 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Mateusz Majewski <m.majewski2@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] clk: samsung: exynos850: Add TMU clock
Date: Tue, 23 Jul 2024 11:33:11 -0500
Message-Id: <20240723163311.28654-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723163311.28654-1-semen.protsenko@linaro.org>
References: <20240723163311.28654-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add TMU PCLK clock in CMU_PERI unit. It acts simultaneously as an
interface clock (to access TMU registers) and an operating clock which
makes TMU IP-core functional.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/clk/samsung/clk-exynos850.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-exynos850.c b/drivers/clk/samsung/clk-exynos850.c
index 6215471c4ac6..e00e213b1201 100644
--- a/drivers/clk/samsung/clk-exynos850.c
+++ b/drivers/clk/samsung/clk-exynos850.c
@@ -28,7 +28,7 @@
 #define CLKS_NR_HSI			(CLK_GOUT_HSI_CMU_HSI_PCLK + 1)
 #define CLKS_NR_IS			(CLK_GOUT_IS_SYSREG_PCLK + 1)
 #define CLKS_NR_MFCMSCL			(CLK_GOUT_MFCMSCL_SYSREG_PCLK + 1)
-#define CLKS_NR_PERI			(CLK_GOUT_WDT1_PCLK + 1)
+#define CLKS_NR_PERI			(CLK_GOUT_BUSIF_TMU_PCLK + 1)
 #define CLKS_NR_CORE			(CLK_GOUT_SPDMA_CORE_ACLK + 1)
 #define CLKS_NR_DPU			(CLK_GOUT_DPU_SYSREG_PCLK + 1)
 
@@ -1921,6 +1921,7 @@ static const struct samsung_cmu_info mfcmscl_cmu_info __initconst = {
 #define CLK_CON_GAT_GATE_CLK_PERI_HSI2C_0	0x200c
 #define CLK_CON_GAT_GATE_CLK_PERI_HSI2C_1	0x2010
 #define CLK_CON_GAT_GATE_CLK_PERI_HSI2C_2	0x2014
+#define CLK_CON_GAT_GOUT_PERI_BUSIF_TMU_PCLK	0x2018
 #define CLK_CON_GAT_GOUT_PERI_GPIO_PERI_PCLK	0x2020
 #define CLK_CON_GAT_GOUT_PERI_HSI2C_0_IPCLK	0x2024
 #define CLK_CON_GAT_GOUT_PERI_HSI2C_0_PCLK	0x2028
@@ -1957,6 +1958,7 @@ static const unsigned long peri_clk_regs[] __initconst = {
 	CLK_CON_GAT_GATE_CLK_PERI_HSI2C_0,
 	CLK_CON_GAT_GATE_CLK_PERI_HSI2C_1,
 	CLK_CON_GAT_GATE_CLK_PERI_HSI2C_2,
+	CLK_CON_GAT_GOUT_PERI_BUSIF_TMU_PCLK,
 	CLK_CON_GAT_GOUT_PERI_GPIO_PERI_PCLK,
 	CLK_CON_GAT_GOUT_PERI_HSI2C_0_IPCLK,
 	CLK_CON_GAT_GOUT_PERI_HSI2C_0_PCLK,
@@ -2068,6 +2070,9 @@ static const struct samsung_gate_clock peri_gate_clks[] __initconst = {
 	GATE(CLK_GOUT_GPIO_PERI_PCLK, "gout_gpio_peri_pclk",
 	     "mout_peri_bus_user",
 	     CLK_CON_GAT_GOUT_PERI_GPIO_PERI_PCLK, 21, CLK_IGNORE_UNUSED, 0),
+	GATE(CLK_GOUT_BUSIF_TMU_PCLK, "gout_busif_tmu_pclk",
+	     "mout_peri_bus_user",
+	     CLK_CON_GAT_GOUT_PERI_BUSIF_TMU_PCLK, 21, 0, 0),
 };
 
 static const struct samsung_cmu_info peri_cmu_info __initconst = {
-- 
2.39.2


