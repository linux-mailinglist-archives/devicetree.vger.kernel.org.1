Return-Path: <devicetree+bounces-22113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FC8806923
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 09:09:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF5CD2820BC
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 08:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC8FB18C15;
	Wed,  6 Dec 2023 08:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rHlqdmRc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36B151A4
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 00:09:47 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1d048d38881so31431055ad.2
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 00:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701850186; x=1702454986; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B7G3OQPwJDFWry8x0QoTwA6RQDLqZhXzSJItslkCCzc=;
        b=rHlqdmRcSVxfVggjeL6peeF5BQ42oaci5R5+lmlfBZt2HYmrjfX47v0oOVs4lKtsRj
         6HVEnN/sfmkrNo6D3Xq6gjj9uZfWjTqd89T5dqmPJtKN5tYuai3De6eUl53kYXNB07Sp
         UYo3fLuOZqSyqGZNBTJ6whZsnyzGXLevy0hwINRffyvsdoNjc87H3TglPQSBOBn+kzRb
         j2c4D0MAGCqLo9szd4e0OODhSn3h6FBln9F7doqzJ2U9vlcxqvxhU0FNhCT9ZcVkTE5L
         h53+HKTbGo1e1HCb+50T2o/ZR57dRVfs3U0TlY1F4Siaf+h/BEvWLRv5RBt/qhU7+KMa
         IrGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701850186; x=1702454986;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B7G3OQPwJDFWry8x0QoTwA6RQDLqZhXzSJItslkCCzc=;
        b=JlZxptOANCyxR/cjkfzxuYi9YpaeEb1u57DDc54tgSyGK2/VQdEhaxVuaY4j2ZEOwS
         fDYSN+w1DjjVTU7fyDQABGX87Ku6ywn9c3EkMcVvs3P9XrlMHyKFWMB+pbFLfgKypcbo
         ba0TRnCC/WvHkHiPe7y/r1Ds/cXXrAArDldQV4yuv1NOjNqZOeDAQJvHjYhVNy8A2r6U
         K8VdEa55TZH9RRAXIQ4a2O6nJI0KxDPZisEeOs2M8iSXprB2YOG1KodN5Wpss5OpeMLf
         ufhxYNMlcZUTM4pYd/KSGn6iDZjFed1/OB0kWJb3LXfPxwSUoey1hCOVnx2okIoLQkvY
         VD3A==
X-Gm-Message-State: AOJu0YygozGsRA1hGW9NkdivLBU0K321r+1DV/yQOQp8OVjciV96/pCB
	dvKrMMvlOuiQeoZ+EXLgW/BsXg==
X-Google-Smtp-Source: AGHT+IGNzyBdiIZfQ4DF4XuOmGyKRZni2mP3PRV/P2h5TceAkWm7j9RgEST9AXGECkznBpWFXNgC3g==
X-Received: by 2002:a17:902:d4ca:b0:1d0:92a0:492a with SMTP id o10-20020a170902d4ca00b001d092a0492amr315004plg.85.1701850186736;
        Wed, 06 Dec 2023 00:09:46 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:92e9:8fb4:700:680])
        by smtp.gmail.com with ESMTPSA id bd11-20020a170902830b00b001d0d312bc2asm1208668plb.193.2023.12.06.00.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 00:09:46 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Wed, 06 Dec 2023 00:09:22 -0800
Subject: [PATCH v8 2/4] riscv: dts: thead: Add TH1520 mmc controllers and
 sdhci clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231206-th1520_mmc_dts-v8-2-69220e373e8f@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701850181; l=2206;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=WX/M7HdAU0IZKfaH27b7K6yGIPbBsFWLjtWUShpbf98=;
 b=mJSGrl+9jRd9jMRsr/5TkqPWw2MdzW4BN4WPzOcL1xcccZm3RhHte5T6gK5aHQvgLcgqwjv/d
 YG1vZhx3H+lAtaW1goqwPpaUUEAu6PXgQ4dQSHJZEGqF4PbwttfdQS7
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add node for the fixed reference clock used for emmc and sdio nodes.
Add emmc node for the 1st dwcmshc instance which is typically connected
to an eMMC device. Add sdio0 node for the 2nd dwcmshc instance which is
typically connected to microSD slot. Add sdio1 node for the 3rd dwcmshc
instance which is typically connected to an SDIO WiFi module. The node
names are based on Table 1-2 C910/C906 memory map in the TH1520 System
User Manual.

Link: https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/tree/main/docs
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index ba4d2c673ac8..8b915e206f3a 100644
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
@@ -304,6 +311,33 @@ dmac0: dma-controller@ffefc00000 {
 			status = "disabled";
 		};
 
+		emmc: mmc@ffe7080000 {
+			compatible = "thead,th1520-dwcmshc";
+			reg = <0xff 0xe7080000 0x0 0x10000>;
+			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sdhci_clk>;
+			clock-names = "core";
+			status = "disabled";
+		};
+
+		sdio0: mmc@ffe7090000 {
+			compatible = "thead,th1520-dwcmshc";
+			reg = <0xff 0xe7090000 0x0 0x10000>;
+			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sdhci_clk>;
+			clock-names = "core";
+			status = "disabled";
+		};
+
+		sdio1: mmc@ffe70a0000 {
+			compatible = "thead,th1520-dwcmshc";
+			reg = <0xff 0xe70a0000 0x0 0x10000>;
+			interrupts = <71 IRQ_TYPE_LEVEL_HIGH>;
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


