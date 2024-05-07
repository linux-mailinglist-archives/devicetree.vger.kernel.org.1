Return-Path: <devicetree+bounces-65311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA838BDA63
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 06:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8085B1C23BEF
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 04:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC7597175B;
	Tue,  7 May 2024 04:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="GCFBDfoU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1C36E602
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 04:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715057858; cv=none; b=KeDkXvcvcHc/vSQzNku0ADG5CgrAqpw5DFHp3NntzqIgq75/icg9YtP72QsNsIo1B7v27Am11hRE6aUMrKWbRcgfJJkPgab3cstzIoBCDoBlr+6cEogzCZA2dx9gFmvwhKPYd1HyZw8GE5N7YyXUIdGhkDEw7vkLdFmc8h1bYKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715057858; c=relaxed/simple;
	bh=52sEPjDrM2eROoC2nwe3EiBnyP8Dcq8Rt5meeISouww=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jala2i/pE0AdqA2AppmdVGfwMa4EJYCwQS7WrjWuKOP9L8MCceHdYewEjIYUFq7kCsygndgx1Q8BxrmAEA+qxbNXUefgbzku/v6S687QLeDY69kxU9zb9G1kn/8za7pmOLwgGargc2I6S/evM2mKQ/fF04cU/e3rlfARo622wiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=GCFBDfoU; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-61be4b9869dso28429877b3.1
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 21:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1715057856; x=1715662656; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lV76EE0lGVh0xzAlFnhOqZDL/IraInUMutR8RQKZJGs=;
        b=GCFBDfoUU99n51+rVxpgK1dhimTAVosBYe76vQ3eOgGOrU0HRFG/8fRt1tvs1VPtkd
         cgDHwxyfVhShe49vL1jgfdItjoPGUnbwUx2hukBVwVBmw/hDFZ8Zj+qDQIFm2kZP/Fb+
         J1CvdQgqJJHepwyK82jTc1eaV0XCeK3fXzqwxLkdW8yzfDXD4orr9ZiT5DX7sc0mDvfv
         u8gQoGxp6x/eEw7Q9syzgOkBQf+M+du8Z33YVjvEu9E/rtCbF1/tEviP/ZZfBTBG1hWA
         KSQxFWd1kvrycS6Fezj88wBiGaRv2e6+QN/QfojaDJaOrUb8xxwa0L8eQbp3WltGQ1tw
         5Cng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715057856; x=1715662656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lV76EE0lGVh0xzAlFnhOqZDL/IraInUMutR8RQKZJGs=;
        b=X2CGJVTT2dZ3oyJljLyysyKk3fVx6frR4m8tJIeNPxrmpnp2LiDxN7Kr2tD4J3syuI
         2BZmJ1hztLsFoZF04W/rRjaTuPJRDKiKrkxIm9DaeCdAw488eyVZQyB86eQ2mDAGBfCD
         CC56e++pKtRK2Rblqg/AY+wsGGenJ265f81BfQOYdK36EJy1jX+I0ABaCtrVGhtNRKru
         gPc3EFXGLyQoAbA3LlzGIKHfRtuRM3GpHhDbQq/bfndBkhsTPZp3uN7an72PKd+04neF
         fBtf+BMNOKn1lDTnkNLZEBieoHBp5nFNyAQXreIFKBmzunaZ04dQ4qgAjdk93Bwlvawq
         VsaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwL6xCUnF3m0p7QLmeiJBVnF6Lbz8RWvUm5bxrleJ09SznOUcxWZoA16oMqPblmeqlm2vLyooYaNBpA8vMvFYd7x517mSEGivheA==
X-Gm-Message-State: AOJu0YyXHQw68VfhGP1qEREUqI/+vVwVj8xlxYbUL/VhnSvPAUVWI8Rs
	GRkCxWI351k9MPQ+Kgnjqwqtk5bcMsAlgRR9/rovKARR1sF74caN0yHOOp4NT4o=
X-Google-Smtp-Source: AGHT+IHn3CGUiKT0eCJa4EZLbe1UYY3849cLrpLUve0RTVfZ9uR7rnnwR8WOzgqSjFGllwczviF4tg==
X-Received: by 2002:a0d:d883:0:b0:61e:124c:e73b with SMTP id a125-20020a0dd883000000b0061e124ce73bmr11735126ywe.28.1715057855467;
        Mon, 06 May 2024 21:57:35 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:6870:7119:e255:c3a0])
        by smtp.gmail.com with ESMTPSA id o14-20020a637e4e000000b005f80aced5f3sm8987249pgn.0.2024.05.06.21.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 21:57:35 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 06 May 2024 21:55:18 -0700
Subject: [PATCH RFC v3 5/7] riscv: dts: thead: change TH1520 uart nodes to
 use clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240506-th1520-clk-v3-5-085a18a23a7f@tenstorrent.com>
References: <20240506-th1520-clk-v3-0-085a18a23a7f@tenstorrent.com>
In-Reply-To: <20240506-th1520-clk-v3-0-085a18a23a7f@tenstorrent.com>
To: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Yangtao Li <frank.li@vivo.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715057849; l=4110;
 i=dfustini@tenstorrent.com; s=20230430; h=from:subject:message-id;
 bh=52sEPjDrM2eROoC2nwe3EiBnyP8Dcq8Rt5meeISouww=;
 b=HmEeRhWb790IkFfO3C5BC2jB3AYXLPWOY7mhRD44oal2XW7/ZwuGHe1i92UCCZqb4bhapFIyY
 XN1gFmAudK9C5BUsbr5GFCWbE0xZbA90aO1ILnVV4OMXti18mT5HORG
X-Developer-Key: i=dfustini@tenstorrent.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Change the clock property in TH1520 uart nodes to a clock provided by
AP_SUBSYS clock controller.

Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts |  4 ----
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    |  4 ----
 arch/riscv/boot/dts/thead/th1520.dtsi              | 24 +++++++++++-----------
 3 files changed, 12 insertions(+), 20 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index d9b4de9e4757..164afd18b56c 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -52,10 +52,6 @@ &sdhci_clk {
 	clock-frequency = <198000000>;
 };
 
-&uart_sclk {
-	clock-frequency = <100000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 1365d3a512a3..1b7ede570994 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -33,10 +33,6 @@ &sdhci_clk {
 	clock-frequency = <198000000>;
 };
 
-&uart_sclk {
-	clock-frequency = <100000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index e193f8d9ab8a..963c786f3c53 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -141,12 +141,6 @@ apb_clk: apb-clk-clock {
 		#clock-cells = <0>;
 	};
 
-	uart_sclk: uart-sclk-clock {
-		compatible = "fixed-clock";
-		clock-output-names = "uart_sclk";
-		#clock-cells = <0>;
-	};
-
 	sdhci_clk: sdhci-clock {
 		compatible = "fixed-clock";
 		clock-frequency = <198000000>;
@@ -196,7 +190,8 @@ uart0: serial@ffe7014000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xe7014000 0x0 0x100>;
 			interrupts = <36 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART0_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -233,7 +228,8 @@ uart1: serial@ffe7f00000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xe7f00000 0x0 0x100>;
 			interrupts = <37 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART1_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -243,7 +239,8 @@ uart3: serial@ffe7f04000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xe7f04000 0x0 0x100>;
 			interrupts = <39 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART3_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -325,7 +322,8 @@ uart2: serial@ffec010000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xec010000 0x0 0x4000>;
 			interrupts = <38 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART2_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -387,7 +385,8 @@ uart4: serial@fff7f08000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xf7f08000 0x0 0x4000>;
 			interrupts = <40 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART4_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -397,7 +396,8 @@ uart5: serial@fff7f0c000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xf7f0c000 0x0 0x4000>;
 			interrupts = <41 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART5_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";

-- 
2.34.1


