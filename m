Return-Path: <devicetree+bounces-44571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F6A85EF9B
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:05:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79DB61C226F6
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D7662BAFA;
	Thu, 22 Feb 2024 03:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OEdOwaDZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F414823758
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708570972; cv=none; b=H6ITht/wkIweQnFYlwtCotD1bG4NtS4PkEnuTszHT21ICokvunigm5PgS9X2M4j86ViqYkxacKWLtRpPcgcIyUuDeYNRgPLGRPSlrdbLDUsMhjjSbImvjU/Avry8vWMG8AYp2Zca3ZXt3QJQZrIWGUjgA1Cz/hhj7fMWMBev2V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708570972; c=relaxed/simple;
	bh=Llmts9er0YO12okZvDKZ3o7U9Ne08vcPhXCSWiCXxzg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cQm6zyLQFs9lYWIHutOxllArBXMYSbhXpk0GoJU22mVUs1snlP7bw7h5SLr2AR/y8DlyTK33MaykK1u5DIdzWqPNK2XkmgaUuLgl54bCcGR1BL3DXmuNl55dKJsc3BeHWGDL3eUeiJBsKl++fSr6CZTWdVeL63jY4cYMMo5yxnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OEdOwaDZ; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3c0485fc8b8so5771685b6e.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708570968; x=1709175768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=grJN+AzJeONYxPFqwVKM9Uij+OT9i/pLW+mGEwKkNHk=;
        b=OEdOwaDZEyzv3jCpS1Aj7LPzyHni8izsPie0M4uXcQNTMmTQQsG+tkEKPWaPaDJ2g2
         HwR6l5ev9xDmrmdkG8FEJ2EDIQRmFi5N5DS7ml8XNjPkSt+pn5S4d/BR0aGXuVHv48iP
         dLrjOhAO1lPCTb4+2Q1IudQlQNyVxdI72vnLsjke53Ez6eRywElliKwgT3nTJwhIm/Yw
         ySQTjoB5fScB9ujfKecJFV9lGgJX+PQlgBKO2Cbj9MSY/LnMO3brt2JdnHAZyWlQSnZq
         fbMCtbbPsgb42q2Ligj7eWFgsJsKrf4IKXlpTM8UPh1gjT8A/txaYzI3KMDHNjkkNFPu
         nErg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708570968; x=1709175768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=grJN+AzJeONYxPFqwVKM9Uij+OT9i/pLW+mGEwKkNHk=;
        b=c6WEE9WKIEEC1b2iLtNde7ahi7/Ah/KHHmq76zhlfDdKtoWMIEvOeahKlxqODnD8yN
         2Uwk60NQDPt7o1weWBIFzDWSStKJu6Xk6Xby4jKH1snku4wbBpy9e8LJTlNCQoePWBvZ
         ZlEMeLcoHI6ZSf79zuactVwXF3aV9VzYfotehL7Tv/zIF89Z9mH4oZFeKLOGh0+T7eow
         M7OFOTTtMvFocxw9p8k1piB8cZlYtYFC6WQqlWZO5orzdUJBMFKN3+QAtbBeDQojf2qW
         TbKXS3U7qa0h/7DouFCf1R29EqJXDFObL9LgnVBgT+Q755k3ccf6oM5wPYJ435JVGTGz
         NlDw==
X-Forwarded-Encrypted: i=1; AJvYcCX7M0zJo5MqCFjIHezoNXw3bLtq5ozgZS2x5Mv56j+RkUSm2Gh9voLt46zU0+BZfaxTvtxPjp+7gb05/O6LKyT//WxY/xo0F86xgw==
X-Gm-Message-State: AOJu0Yy2ibehO1eCKdmPsVYoyD7A4bu2h9TWZwMUy7qzLQOZ7kCk2O1F
	KvJuKrVX8pqKQ5iPyitJKtQbwYd15o0utJ2HszwP/kBFeU/aemlMbY5h5Rr8wmg=
X-Google-Smtp-Source: AGHT+IHrF5e0wG7OyXIrS2TJJWIdex+esm8ZSi5i1AGtQTA2hm3QzTV/2zJRMkDX0FoZBhRVH6mnVw==
X-Received: by 2002:a05:6808:30a6:b0:3c1:6008:1c64 with SMTP id bl38-20020a05680830a600b003c160081c64mr10012978oib.54.1708570968752;
        Wed, 21 Feb 2024 19:02:48 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id u19-20020a056808001300b003c14520c78csm1794653oic.54.2024.02.21.19.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 19:02:48 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 15/15] arm64: dts: exynos: Add CPU clocks for Exynos850
Date: Wed, 21 Feb 2024 21:02:35 -0600
Message-Id: <20240222030235.27815-16-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240222030235.27815-1-semen.protsenko@linaro.org>
References: <20240222030235.27815-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define CPU cluster 0 and CPU cluster 1 CMUs, which generate CPU clocks,
and add corresponding CPU clocks to CPU nodes.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
  - Add "for Exynos850" part to the commit title

 arch/arm64/boot/dts/exynos/exynos850.dtsi | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
index 2ba67c3d0681..0706c8534ceb 100644
--- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
@@ -93,6 +93,8 @@ cpu0: cpu@0 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0>;
 			enable-method = "psci";
+			clocks = <&cmu_cpucl0 CLK_CLUSTER0_SCLK>;
+			clock-names = "cluster0_clk";
 		};
 		cpu1: cpu@1 {
 			device_type = "cpu";
@@ -117,6 +119,8 @@ cpu4: cpu@100 {
 			compatible = "arm,cortex-a55";
 			reg = <0x100>;
 			enable-method = "psci";
+			clocks = <&cmu_cpucl1 CLK_CLUSTER1_SCLK>;
+			clock-names = "cluster1_clk";
 		};
 		cpu5: cpu@101 {
 			device_type = "cpu";
@@ -254,6 +258,28 @@ cmu_peri: clock-controller@10030000 {
 				      "dout_peri_uart", "dout_peri_ip";
 		};
 
+		cmu_cpucl1: clock-controller@10800000 {
+			compatible = "samsung,exynos850-cmu-cpucl1";
+			reg = <0x10800000 0x8000>;
+			#clock-cells = <1>;
+
+			clocks = <&oscclk>, <&cmu_top CLK_DOUT_CPUCL1_SWITCH>,
+				 <&cmu_top CLK_DOUT_CPUCL1_DBG>;
+			clock-names = "oscclk", "dout_cpucl1_switch",
+				      "dout_cpucl1_dbg";
+		};
+
+		cmu_cpucl0: clock-controller@10900000 {
+			compatible = "samsung,exynos850-cmu-cpucl0";
+			reg = <0x10900000 0x8000>;
+			#clock-cells = <1>;
+
+			clocks = <&oscclk>, <&cmu_top CLK_DOUT_CPUCL0_SWITCH>,
+				 <&cmu_top CLK_DOUT_CPUCL0_DBG>;
+			clock-names = "oscclk", "dout_cpucl0_switch",
+				      "dout_cpucl0_dbg";
+		};
+
 		cmu_g3d: clock-controller@11400000 {
 			compatible = "samsung,exynos850-cmu-g3d";
 			reg = <0x11400000 0x8000>;
-- 
2.39.2


