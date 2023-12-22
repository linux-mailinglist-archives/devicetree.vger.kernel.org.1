Return-Path: <devicetree+bounces-28117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E06781CD5A
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 17:55:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FDE01C227AC
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 16:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4608F2510C;
	Fri, 22 Dec 2023 16:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d3mkzOnT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F8928DC6
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 16:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40d48304efdso3968915e9.0
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 08:54:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703264085; x=1703868885; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CivDZddIU1oXgeJl9yAANMyChstbAynIX36qq2yqXq0=;
        b=d3mkzOnT0NqkpTiPlPgB4vbou6YNlPJsX1kjhDRhVT321SBhn3bKd0BdJAIIFocmBs
         kM5+GNckSkN7sURU36NELzWL42yxZBNVdoemG7DPjhuP95KCuaY4eKTHix4EeyCkHWvF
         /r4b5WWMYh0BmVoiWh66BAU70P2aTPvJz2VLYeRKO5vqGQVklOOnJJGSq1bZ+jpterjT
         El/06zR5Lt91fUTc4EDOe5gqGjv/KONVD79q6El1r4Fonk6PGkucgPNZ/83KC22MnVtG
         jjW6xhQjY9cOaEUXrckwRvRfjkBlNbsnHAFwZmhPYlToiG+p7LPdDlnZIOJz1vzOLg4J
         uZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703264085; x=1703868885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CivDZddIU1oXgeJl9yAANMyChstbAynIX36qq2yqXq0=;
        b=DbcnrXvnynawqOUTuXJ9mwlOTZpUcdouZq5Z9ZE0t9HGth435EZpPmDPU8npP64TR0
         HS29yUxO6A/GXFgX+SL7puF8Gsw6qX5AVbWz3eVVibvhk5YSrV3nYrZHK5OcwtxXaVPD
         LrpycW73HzLPh0QE3l+DoveAqB0vDHKlEtCit5j0erwCGBt13nNsax7YI1ANaLhp+FEK
         rGObrO3UBYwbomWNDPa3pewPshrfNQDbW5tAUAKlSyKx5vpqwK+mxlXpoQg0118l9fPW
         qJMZOlc4C94MrelngpUHnFTpsp6BbnT/bu3PLpXRwTmp1Bp0/fb/y64FEMrtst63yPQE
         uA5A==
X-Gm-Message-State: AOJu0YxQCq+OYRiSX3cp2OnzeaBBcFbjBE4xaYBYGONTr44r56O1f5qQ
	XHLDpeOvN1hcSqhcRQ4SGGTdldiPGWoEtA==
X-Google-Smtp-Source: AGHT+IEAvkSh4ddQHp5zuB6x9sxaGJ/xdv0XpTipLUPjLXBv1HMvTHIR8c78uD3+cHX5A/MeMODLVw==
X-Received: by 2002:a05:600c:1d26:b0:40d:2876:def6 with SMTP id l38-20020a05600c1d2600b0040d2876def6mr971581wms.45.1703264085160;
        Fri, 22 Dec 2023 08:54:45 -0800 (PST)
Received: from gpeter-l.lan (host-78-151-55-40.as13285.net. [78.151.55.40])
        by smtp.gmail.com with ESMTPSA id i15-20020a05600c354f00b0040d378510adsm10138520wmq.1.2023.12.22.08.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 08:54:44 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	daniel.lezcano@linaro.org,
	tglx@linutronix.de,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com
Subject: [PATCH 3/3] arm64: dts: exynos: gs101: define Multi Core Timer (MCT) node
Date: Fri, 22 Dec 2023 16:53:55 +0000
Message-ID: <20231222165355.1462740-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231222165355.1462740-1-peter.griffin@linaro.org>
References: <20231222165355.1462740-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MCT has one global timer and 8 CPU local timers. The global timer
can generate 4 interrupts, and each local timer can generate an
interrupt making 12 interrupts in total.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 9747cb3fa03a..4b09e740b58a 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -292,6 +292,26 @@ cmu_misc: clock-controller@10010000 {
 			clock-names = "dout_cmu_misc_bus", "dout_cmu_misc_sss";
 		};
 
+		timer@10050000 {
+			compatible = "google,gs101-mct",
+				     "samsung,exynos4210-mct";
+			reg = <0x10050000 0x800>;
+			interrupts = <GIC_SPI 753 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 754 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 755 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 756 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 757 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 758 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 759 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 760 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 761 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 762 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 763 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 764 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&ext_24_5m>, <&cmu_misc CLK_GOUT_MISC_MCT_PCLK>;
+			clock-names = "fin_pll", "mct";
+		};
+
 		watchdog_cl0: watchdog@10060000 {
 			compatible = "google,gs101-wdt";
 			reg = <0x10060000 0x100>;
-- 
2.43.0.472.g3155946c3a-goog


