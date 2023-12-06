Return-Path: <devicetree+bounces-22114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C3C806924
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 09:09:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 574CB1C2116A
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 08:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B0618B1C;
	Wed,  6 Dec 2023 08:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AmJuUcLk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07BAE1BD
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 00:09:49 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1d04dba2781so33662675ad.3
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 00:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701850188; x=1702454988; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LbmBzwUY0t2HlseySntw7VHVz6E41O0M8Fv31kHjYNc=;
        b=AmJuUcLkWISoPb9Ub3rTvwrFo06LqJv/fiaG0r5RccEDamWmsaE8rbJMdoqrbvFFNN
         JqdQADf3Us66K72O8ExEGxW/LO8OjFnAFXFFbOfdCATvgUMEJ2TrQK25UPP8XFfjvOVQ
         4I3k3pq6zByftdrUDAkm4RtzZaA1IaPWxkBDS9IlxtF2x7K5hR24F4xmmupD75bReMe1
         /T+YYlknsmyedERNkpn0LKnDxdf7VTZtNTjaG3H0ZE5ONnyzsBZXzUjphmSuRofmr/JV
         QAZm0jaMlvc0RcWXlc8CkXBwnlOKoFj1e/ktSC9350i4m4XcgmCp37L9Uh7GSz8EIvXw
         tW2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701850188; x=1702454988;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LbmBzwUY0t2HlseySntw7VHVz6E41O0M8Fv31kHjYNc=;
        b=JpGAhQ+wtfBDgIv3b/lZfY9GamMK7r8wTod2l3TrN+5nyPkDQ3YQ1jDjI50tpV8P0r
         EN+XWhKSr53vTWD8uuOEADWBvzoGraV+WRGUDSN0ANijZmkxzEiP7+wwjq1FV9Lag0DP
         x9AvXsVzdNaCHqJorfRbDboNfnQZNVSzYGbDbRdF1HPGb8Gf6TraGzz3akOf7dtWVFkx
         sCNJfKQy+V5Zl3Brr6S2Rqz0qmBAEmbxm5xPxb7kfEClv2tMGmCq2vx5AkpcqBGbuPjA
         2xz1TfuJ4jF3R9iZzTBhnYx1wYe2Wfus8u7zB7QCufj6KA3VyzOlOR5D1gA2y599vCWm
         z62g==
X-Gm-Message-State: AOJu0YxWce0eNX4ib9uNn2EB9jmNChMck9ttBWTbXMua195+P71FEfHa
	6Pih4OIk3MzVsO/w1plzeL/dvg==
X-Google-Smtp-Source: AGHT+IG+IVNu440mrvRBStKIEhon2ZDqZu9o/4ngZUUVarpEskLvBTGXAYNAbp4uL1sBhOVHpCI+pQ==
X-Received: by 2002:a17:903:555:b0:1d0:6ffe:1e85 with SMTP id jo21-20020a170903055500b001d06ffe1e85mr298277plb.104.1701850188352;
        Wed, 06 Dec 2023 00:09:48 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:92e9:8fb4:700:680])
        by smtp.gmail.com with ESMTPSA id bd11-20020a170902830b00b001d0d312bc2asm1208668plb.193.2023.12.06.00.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 00:09:48 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Wed, 06 Dec 2023 00:09:23 -0800
Subject: [PATCH v8 3/4] riscv: dts: thead: Enable BeagleV Ahead eMMC and
 microSD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231206-th1520_mmc_dts-v8-3-69220e373e8f@baylibre.com>
References: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com>
In-Reply-To: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Jason Kridner <jkridner@beagleboard.org>, 
 Robert Nelson <robertcnelson@beagleboard.org>, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701850181; l=1131;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=hHAbb4qtRlHdob9grY86/6CrB93uiLQSe6D5Pf4bJ6w=;
 b=a3RjXkzF5S6RuHE5jVRda77tdw9TE8uVsvTL+GIZkd2GPapFmSTRl6NNWqrVwaVtoNrubatFW
 CldudAcR7JPAYR6Lyqy0D8NDNk3WsZOzEwuNW+fxyDBbe6NCHsQ8Z6Q
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add emmc node properties for the eMMC device and add sdio0 node
properties for the microSD slot. Set the frequency for the sdhci
reference clock.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 70e8042c8304..d9b4de9e4757 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -48,6 +48,10 @@ &apb_clk {
 	clock-frequency = <62500000>;
 };
 
+&sdhci_clk {
+	clock-frequency = <198000000>;
+};
+
 &uart_sclk {
 	clock-frequency = <100000000>;
 };
@@ -56,6 +60,22 @@ &dmac0 {
 	status = "okay";
 };
 
+&emmc {
+	bus-width = <8>;
+	max-frequency = <198000000>;
+	mmc-hs400-1_8v;
+	non-removable;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
+
+&sdio0 {
+	bus-width = <4>;
+	max-frequency = <198000000>;
+	status = "okay";
+};
+
 &uart0 {
 	status = "okay";
 };

-- 
2.34.1


