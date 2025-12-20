Return-Path: <devicetree+bounces-248441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9CBCD2B7B
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 10:06:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2D3A6301371A
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 09:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC5842EBDE9;
	Sat, 20 Dec 2025 09:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YKldrA8j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D382E54B3
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 09:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766221558; cv=none; b=i07w0Qx1wStYR93dDVyM+Wu9zG2xC77MEsyt8Ba0miJ6JwVtPRP48mpzFYOo1CBSkm81trRFXMiaSCmhs8tNo9rJycvJPIpHvAMjxohVvKMMP0EY4S6NVB0R2qXRy/V9iLDx79A5Iq3ovQ7wW6MdE3dLla2ufe+kRO6IifG8VgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766221558; c=relaxed/simple;
	bh=h92o4zwYNSX6815UCmoJUrl3OjU4KjoLxMi/xiWmdfY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FdWxm0Et3Asl0w8vT1dbelnG+CumUv2FtsunDReGVeAOQnBtyD+PnG9jKMBA62Os0SAX4cAr/iOBncC6Pbxm/e7fWyPdLPp+pin7O88es3uQ5h9PrdN2i4hzoWV4oJkyuUc2MuCfL3YVzNAF7OPOVFfSTTv5nsP60fjwxwyR/ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YKldrA8j; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-47789cd2083so13942015e9.2
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 01:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766221555; x=1766826355; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Ju9j+YC1WJ2vWa+GZa2BXWls/TDlfesLoKVGyWNUzk=;
        b=YKldrA8jMnjeQpzzQkPxN2DYtxIvxrVuxD5F1BPAqPuDSi9lGsZUPeXTlqKBwBIx3d
         bjopAKjuhe4jXd3trGpqICBIRlpLHsioZVcW47VLnr5+b8vr4dmKykGwBph2Lfwy/5AO
         DoTEDGHUJEtymUkfpb3du290/oC6MxDQnSFEuI+RFv44PAQE0lcirCpuHl1FELVLcipx
         v82/K6hPqp9ywHZTR3P0IwTOM4PTA5EtIZ+GlZAjT4kL7UVUBX2VPLBYBQ9EftJV1rc4
         gTaNMTfooskPcLO09FeA23HBRm6bsck+KieWpUki2PNJ5F+9gQYfQkQgJqXzbrgAqZ1J
         uG4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766221555; x=1766826355;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7Ju9j+YC1WJ2vWa+GZa2BXWls/TDlfesLoKVGyWNUzk=;
        b=vSLicXsHN7KYjwiyMNSdTUKurQk/YPaaHPLTohoHxzu3UOXrnjCPeDGk4NRkDGWs/u
         fqPkJeGaFonZvDsQDuVfst4J3rWAJ3bwFHdbuKfMc8tnvHZhq2Kd5/hX0iZ3gMY/DuFZ
         MG8pGnTL+BSEXtVIvnjbwNiBwOu3MiQKG7QerouUBD3thUwMmLXW2wcYrdrQvHQkhlA0
         DLlhLAjJQ4yoTKr9GVBY4LRmUmKhLstyv/caaE5TBnBWdnpZpjPFRk6FH02grWFqr4yO
         41Jg9JbZKujjlIxdDkNswX/86hY6n9y5tP8oc5/XoPtRjqCV/ucMjSd4UKyEUESUulaG
         hemA==
X-Forwarded-Encrypted: i=1; AJvYcCUhT6/ZRCLtk1b1ifQo0/Zl5AmK5ilfRS9DPtgfnkqzG0kqkqs4ju+8wVvQf6a4n4ad+mT/9NxliTAx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqb2V9WWsMwMN+hmA3ZbK7zyZQgqlhWNZH3k9CjDm7W5W9KsWJ
	naeDpruVRnxtegsAiwnNhRN3elI0Ge093jntkkXFw6aCS5lemzn2VcOsRpkzNkvhzu0=
X-Gm-Gg: AY/fxX7fL5eyHE6p28hWR7Qz+xr1LcJ5fcZjqLfdB9ZOCgJexUVk5F1XrSLvnsAgAqD
	O2cKd2wlRi5n9dvH2V0fm6U6hI5NAzvJkRytA9cLYy+QtFsdNybgKRHU5Qa8EmMepFxVQCWdHTG
	V0NA/IRfONYesrf3DmRJVkprd0eJN+Mfbhf5DG8p5VXZY6sLrKXwzu8G3QoPLi8LcPAdfGKJeaT
	OJSwve9wfA42qJztDrFjm6+HSJyV33WeMJmAky6Llicz5vmA/DA40yCp5jQtrWO3VkOXBxekg5g
	yjdD0mxthJH81ff7dfUscJoYYqg6LnvfJzNyv104qjUp2moPIavg60bmP7QzHjPm3teG2Quk/Hb
	h0wA8Ak36NsFJyQ5ZaXkAsp2ePEF+KC4D9KkQTxD19txWLXkjsPeW4zn4aACgF8MlnovBoG439M
	H+DmbFYl6oxVzURMP7i7yEL0BUsKARU0BbVwJ7SBuAewHKAByUNA==
X-Google-Smtp-Source: AGHT+IE1iVnBUqpj1iTbwtmkbTAjU6Y58uPgcEI500vkbYk4bozZEqi5QO1qW3InydBQVTDCJXx55Q==
X-Received: by 2002:a05:600c:6388:b0:477:63db:c718 with SMTP id 5b1f17b1804b1-47d19557cd2mr51367045e9.16.1766221555250;
        Sat, 20 Dec 2025 01:05:55 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([150.228.9.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d1936d220sm88466685e9.8.2025.12.20.01.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 01:05:54 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 20 Dec 2025 09:05:40 +0000
Subject: [PATCH v6 2/4] arm64: dts: exynos: gs101: add samsung,sysreg
 property to CMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251220-automatic-clocks-v6-2-36c2f276a135@linaro.org>
References: <20251220-automatic-clocks-v6-0-36c2f276a135@linaro.org>
In-Reply-To: <20251220-automatic-clocks-v6-0-36c2f276a135@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2739;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=h92o4zwYNSX6815UCmoJUrl3OjU4KjoLxMi/xiWmdfY=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpRmbtPuXfNw2JAKPYzs1rhcAAssMDOJ5EMhC+b
 a9n1Uw1/bSJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaUZm7QAKCRDO6LjWAjRy
 uicBD/9cejbAXAxcXgsCfHKp0zhJl64kTRLzpTC+2c+IDQndHym7x8DMGI57fTeMGZW3Amd+fnR
 F3NC609qaNexjPJRbLHQy4IoQvmikAmrple6ENuSaFFe26iae1Lk/GzSf5+kAkmkf/FHh87+gEH
 CozQ7H2BcVplfSO6QvApjfoDGMBjoMuqmA89P5hdP5dK8fGez8FG/wfIIQbf03miSO1AaR+uOwk
 rtI0mBShE29JCLUqFCOsZMsG0NyJi4AasPsW8ap2ACMJwe50rwHIvjDuFvvffQ1uf/DMYREsj3x
 aXbcAdn8ASKNEf0/7QpP6uww2RO6tvshK1ESczTqVGDNvL7tbAecAeYk7yR8FTEbqMiWH7/SGKM
 tjfHLlHCzlaRYSFMCdSIS0UdC953wvgJanvd4dyx0XEYX+zwKMLEAAWwfOru4yEf5YYpS6c3wcw
 G/JacgCF0vg+RP8hmr1UhlA/rCkpps2Js+grqjl4d3aF0FVdLNeOMdCZpI0O0uOQnjjKKnuCHmw
 pMloOkDvuJhukrvzDS5dO4fITuoei8X1OWC3F26o4E+FTdXPdB2J7V4kkLjVR/fKyzSGHPHAihC
 fGzycNMRAgwMd6Z8yo066VM7Hpqcp+jhyTPDQeyJhSu0sflctCO03gwFiPPP897Vr9HF4UVSkvy
 +y7nmadSJWu8SBQ==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

With the exception of cmu_top, each CMU has a corresponding sysreg bank
that contains the BUSCOMPONENT_DRCG_EN and optional MEMCLK registers.
The BUSCOMPONENT_DRCG_EN register enables dynamic root clock gating of
bus components and MEMCLK gates the sram clock.

Now the clock driver supports automatic clock mode, provide the
samsung,sysreg property so the driver can enable dynamic root clock
gating of bus components and gate sram clock.

Note without the property specified the driver simply falls back to
previous behaviour of not configuring these registers so it is not an ABI
break.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v4:
- Update commit message (Peter)
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 9b38c2248016aa65293c0abf9ccaf20857d89693..2e25eeb0c2590b99ef98c7bdac3caa0c34161706 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -578,6 +578,7 @@ cmu_misc: clock-controller@10010000 {
 			clocks = <&cmu_top CLK_DOUT_CMU_MISC_BUS>,
 				 <&cmu_top CLK_DOUT_CMU_MISC_SSS>;
 			clock-names = "bus", "sss";
+			samsung,sysreg = <&sysreg_misc>;
 		};
 
 		sysreg_misc: syscon@10030000 {
@@ -671,6 +672,7 @@ cmu_peric0: clock-controller@10800000 {
 				 <&cmu_top CLK_DOUT_CMU_PERIC0_BUS>,
 				 <&cmu_top CLK_DOUT_CMU_PERIC0_IP>;
 			clock-names = "oscclk", "bus", "ip";
+			samsung,sysreg = <&sysreg_peric0>;
 		};
 
 		sysreg_peric0: syscon@10820000 {
@@ -1217,6 +1219,7 @@ cmu_peric1: clock-controller@10c00000 {
 				 <&cmu_top CLK_DOUT_CMU_PERIC1_BUS>,
 				 <&cmu_top CLK_DOUT_CMU_PERIC1_IP>;
 			clock-names = "oscclk", "bus", "ip";
+			samsung,sysreg = <&sysreg_peric1>;
 		};
 
 		sysreg_peric1: syscon@10c20000 {
@@ -1575,6 +1578,7 @@ cmu_hsi0: clock-controller@11000000 {
 				 <&cmu_top CLK_DOUT_CMU_HSI0_USBDPDBG>;
 			clock-names = "oscclk", "bus", "dpgtc", "usb31drd",
 				      "usbdpdbg";
+			samsung,sysreg = <&sysreg_hsi0>;
 		};
 
 		sysreg_hsi0: syscon@11020000 {
@@ -1646,6 +1650,7 @@ cmu_hsi2: clock-controller@14400000 {
 				 <&cmu_top CLK_DOUT_CMU_HSI2_UFS_EMBD>,
 				 <&cmu_top CLK_DOUT_CMU_HSI2_MMC_CARD>;
 			clock-names = "oscclk", "bus", "pcie", "ufs", "mmc";
+			samsung,sysreg = <&sysreg_hsi2>;
 		};
 
 		sysreg_hsi2: syscon@14420000 {
@@ -1706,6 +1711,7 @@ cmu_apm: clock-controller@17400000 {
 
 			clocks = <&ext_24_5m>;
 			clock-names = "oscclk";
+			samsung,sysreg = <&sysreg_apm>;
 		};
 
 		sysreg_apm: syscon@17420000 {

-- 
2.52.0.351.gbe84eed79e-goog


