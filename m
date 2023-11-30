Return-Path: <devicetree+bounces-20237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 257CD7FE667
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 02:49:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE8AD1F20F03
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 01:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D8CD882B;
	Thu, 30 Nov 2023 01:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YpPDzzfg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69694BC
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 17:49:16 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1cfb3ee8bc7so4559275ad.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 17:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701308956; x=1701913756; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Jr7JkNTCoyAHbuKHVkD5XQJ6tzPUzNpAQ8g+iKdWxE=;
        b=YpPDzzfglEuXfTgqsAREQ/UmOmzlttalzqR38FsnqnLz3f6LOaFQ5gAzk5sB324vN5
         QzDaDxpbj1YEgJi+cOV7zyYYX2Kk1WtLf2QjuEONPY7QVQriMl5iEVSXciCM9sjuVmY8
         TBstW97607j/i6hdGUK+hMR6Tf7aEBBQB5FxBqY/AUfKjWALA6nXmx6vJjY7XC/vTjqf
         +Q4S+0HW1MyB3JSrehINz80CduAFhIApCg95gN1OhD4iNpqAPiF4OCwekZUEyU4l2HLm
         noWLhuM7BXjPV91ql0p5KMdvj+HYRxglm0R0pka+Z71FAGRFpiKvSrrtK80NuGxSiYr4
         R+gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701308956; x=1701913756;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Jr7JkNTCoyAHbuKHVkD5XQJ6tzPUzNpAQ8g+iKdWxE=;
        b=JriszCSztzB3RIP7GUZMIOoi08zj63DmZ0k8CbH5OYtVd5t0WQ4S1YZaI4lLZcdJXH
         X0aDLC3G0NXRXEOpG/njGFdbq49+UBWwNoso9KeJwX3PUpeQVnZz/2XR5tueDvSF7kwT
         AkyR9xwBB7g+8Z6tmBsdWTYBbvYT2Ix9IWJjHbCE3+PBYTfVzLROJ5jyOslu69oSQl9l
         4pruLyKTRJR7mjueWdaBOiYGLPZHV4oB1eNmvQEOgwpt3qVS6KDLvK7mjIQYdjhpNQjf
         LERkmJgLeeYsDognQLoCdhpzFMQJPBiF2g1b2dzTlIbSU+VI6UG8YgBydc2VWPHb9p4U
         i50A==
X-Gm-Message-State: AOJu0YyVBa1rYejmvvSA7p35ynLZZWsnUhyLehQ2QG/7qKXQfRQfjlNw
	0avnTMSNaBmoNxbJGAawFAQ3oA==
X-Google-Smtp-Source: AGHT+IHQc/jfjKv11FHDAZ6SssqWcsxklBpB0+uT5dFsDWyCXUV6EYlxkHDsqbFW3Z2rHO8iX8TjLw==
X-Received: by 2002:a17:902:e74f:b0:1cf:e4d2:bdf with SMTP id p15-20020a170902e74f00b001cfe4d20bdfmr9817512plf.51.1701308955904;
        Wed, 29 Nov 2023 17:49:15 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:9707:1e8c:3166:6a23])
        by smtp.gmail.com with ESMTPSA id bc3-20020a170902930300b001d00b0bd306sm24455plb.251.2023.11.29.17.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 17:49:15 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Wed, 29 Nov 2023 17:48:49 -0800
Subject: [PATCH v7 3/4] riscv: dts: thead: Enable BeagleV Ahead eMMC and
 microSD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231129-th1520_mmc_dts-v7-3-c77fc19caa6f@baylibre.com>
References: <20231129-th1520_mmc_dts-v7-0-c77fc19caa6f@baylibre.com>
In-Reply-To: <20231129-th1520_mmc_dts-v7-0-c77fc19caa6f@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701308949; l=1108;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=x4GrcOzQSHp6HC4WBUnYJkDmvdf8pnCHmIBijw3/K20=;
 b=22ATaiedZ7qoXu7rErPn74nYsPkB3Xum86xjFWOL/OdPNZV6jrsAtQx7tUW/pYkpE0TebmKFx
 QJ3R6ApWzRtC9w/W/38Qwc+tU4oYlO2rQu8Cnr0Ga7klX1hTo7W2d4y
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add mmc0 properties for the eMMC device and add mmc1 properties for
the microSD slot. Set the frequency for the sdhci clock.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 70e8042c8304..b767d3f078d7 100644
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
 
+&mmc0 {
+	bus-width = <8>;
+	max-frequency = <198000000>;
+	mmc-hs400-1_8v;
+	non-removable;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
+
+&mmc1 {
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


