Return-Path: <devicetree+bounces-20236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2551C7FE665
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 02:49:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DF7E281F22
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 01:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 029AB79FB;
	Thu, 30 Nov 2023 01:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="V8mUGUo8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C14AB10CB
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 17:49:14 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1cf856663a4so4363305ad.3
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 17:49:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701308954; x=1701913754; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9z+ndca3Z6Eic7YQC0/xH8FsGWWOuYgGvNFQBkZMdF4=;
        b=V8mUGUo8CR512jlrrhTm/DGhlocoGQ63/iu/7Xt2+y9mq0k/dPI1dGmsuk4QtbfUn7
         5FIFfdmlm/+1h8sdKEWoGv1P4+RA+Lwh6cB+f8X2JQAptGYCeNUg19w1mdePvQCJecjl
         OPa0paqFzA5FFojBtcuVP5BYDyBOAXQ3/4o4nibuTCse0AEpNnJu5wdPcR6H5thJVjf/
         t95SGVLsFfCBLm420ouzFWsDZxhAXklkSv8fmRF5NHZcVeBWfVwkOUEMtnOt1HeTp15K
         e2ZrlL5hj7t6OKoSYV4Ms1QAlYUQ4L/Sj8wgwTrko7lfEbt0TQ+TVL+PI2J0bHyXjmOo
         10LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701308954; x=1701913754;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9z+ndca3Z6Eic7YQC0/xH8FsGWWOuYgGvNFQBkZMdF4=;
        b=N1PHb7phxuQmq8QTan+HjcWDBzQQm9BvO9pf7AL6+yEtojwsX3FDLP5LLPhrO6HFng
         ckp8/lzLk/LtvqVJlQbA0VVpdVXa/aklAupj5Q6jfQxiqcjRIJTuFqF6N2YImA/4RQC0
         SCrv6McUX71tLS3yW+KQvS4B8Jz0VNsbTPVY9eFighm7F0vRyT9GunZK3Q1OXjDEn7AZ
         l4wiCJ1+/zH3aVfjxCfLVkaCnOtQVPXK8T9JoWTHUGFY9rGGTaprpk/I2wNAufSp0gB2
         QawZWiJYtJtsJbmmJN4yqUHKcsfulnfGK6pcpnakq7U+iDjjgGYLJ0+YcbfpVR9C4c2B
         CCAQ==
X-Gm-Message-State: AOJu0Yz+t5szv+vcLyccf0KHI/d9HcsnFMPH2ETBj0C3Vny61W6SgBOm
	8TeLOInXONRdDb7NKPi2fcfpTwwVkWSKc1WmUUxYPg==
X-Google-Smtp-Source: AGHT+IFBN4GbO5IVrH3STjeo4NgwmKPtI5V+pg4yKuZ08Albi8y5dApuT1MLd7SBUshAcww+J5QhPw==
X-Received: by 2002:a05:6a20:e68c:b0:18b:d344:6acd with SMTP id mz12-20020a056a20e68c00b0018bd3446acdmr20940688pzb.10.1701308954337;
        Wed, 29 Nov 2023 17:49:14 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:9707:1e8c:3166:6a23])
        by smtp.gmail.com with ESMTPSA id bc3-20020a170902930300b001d00b0bd306sm24455plb.251.2023.11.29.17.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 17:49:14 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Wed, 29 Nov 2023 17:48:48 -0800
Subject: [PATCH v7 2/4] riscv: dts: thead: Add TH1520 mmc controllers and
 sdhci clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231129-th1520_mmc_dts-v7-2-c77fc19caa6f@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701308949; l=1662;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=DQ96Tg/13kE5gI7pfVf4VVYmBoxlIyPSePCjjoqiwMQ=;
 b=lhspIc86lmUso+ZOw52u80IWEJIRiUBb3EeGUsj7g6D4elrcuxNiXt5OSkhbg/64cyN4LLewT
 ewwEkRNha6EBMg1QDE3n3HSu4WVX5oLoLE+/6/jvvss58AO4TPhEjJx
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add node for the SDHCI fixed clock. Add mmc0 node for the first mmc
controller instance which is typically connected to the eMMC device.
Add mmc1 node for the second mmc controller instance which is typically
connected to microSD slot.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index ba4d2c673ac8..af4fdcd82e0b 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -146,6 +146,13 @@ uart_sclk: uart-sclk-clock {
 		#clock-cells = <0>;
 	};
 
+	sdhci_clk: sdhci-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <198000000>;
+		clock-output-names = "sdhci_clk";
+		#clock-cells = <0>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&plic>;
@@ -304,6 +311,24 @@ dmac0: dma-controller@ffefc00000 {
 			status = "disabled";
 		};
 
+		mmc0: mmc@ffe7080000 {
+			compatible = "thead,th1520-dwcmshc";
+			reg = <0xff 0xe7080000 0x0 0x10000>;
+			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sdhci_clk>;
+			clock-names = "core";
+			status = "disabled";
+		};
+
+		mmc1: mmc@ffe7090000 {
+			compatible = "thead,th1520-dwcmshc";
+			reg = <0xff 0xe7090000 0x0 0x10000>;
+			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sdhci_clk>;
+			clock-names = "core";
+			status = "disabled";
+		};
+
 		timer0: timer@ffefc32000 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xefc32000 0x0 0x14>;

-- 
2.34.1


