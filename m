Return-Path: <devicetree+bounces-15739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 019DC7EB837
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 22:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 85C5CB20C88
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 21:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56D562FC5C;
	Tue, 14 Nov 2023 21:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EQdgnux3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B432D2FC21
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 21:08:15 +0000 (UTC)
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB6D9D5
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 13:08:12 -0800 (PST)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-1ea98ad294cso2989479fac.3
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 13:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699996092; x=1700600892; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sez5TNXPSBGATbv4iH/EIetO26Yi46HMN2DlkNo1h/Y=;
        b=EQdgnux3ySpzlG+ZpdaXbVSbtmGgOgk/OgXiCjgdAPBluXeYam2kcYmhIZJqmJg0ic
         PYlXfuhUJUxqdOt+pBbPADW4vCGodjcRed0HFDGiPx7iXNESYZV5qAcMerPb0sfOKNjx
         Ax9zCmkOPR08MCsYS/w04FBrcJeTLK1Rb12O/8lS9R48xkEC/hLN4jZjJwW2wvP+LzkQ
         kAz5i1AC7b7FpFYIaRNnhWf/mF/YuDYXkYEFswC+sp/dcDTEt6ZVgb9rAfSb/UOFOCul
         vq7TKn+XGGIg0xy/tR01ZuSLnKvG0X7+Kt58ogY8TPoy8hu3jmP5QUf6MTIRlDp6/+DH
         yHqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699996092; x=1700600892;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sez5TNXPSBGATbv4iH/EIetO26Yi46HMN2DlkNo1h/Y=;
        b=FkQYo55yFHbDakeVqZWO7eq+dOIt5ynDgX4TsgqvM79Il8jQqWTj/LcUQ8pwnPjBjc
         yCwpx1u6Ho+XBoepSLbk6EJfwlk4FRAcoVkqm5n8BJeSa7ekucZ/rbM7fgOmdcxmq7yC
         /dgsueCoMoJiOMCQsf/pPVeO5wT3wS/xb+eRQ7KSuOsbB2EVxnkJ+0p/YzNjezXJz6MY
         jOPfNi3m6BcfmCxvnS5+lMcZpMA3xMhoPOv8fGYOHb5BQPpH9x2gHgaOtBhUa8ia38EY
         lWg4BDtbcvMfUetSjLnf5lf24LmtrzQln0PbWWT6srAVZNwqKq5nEIN8zWG5k+IS6+IV
         5Czg==
X-Gm-Message-State: AOJu0YyLiJakMLviCKUTJ+Q3bpRxJpNe7lB5OaV8ZhF3bpmmR9TAgAA/
	a0adS75yr7aynZD715Y6IC4+PxlfaCHmM4jdI/TvaQ==
X-Google-Smtp-Source: AGHT+IH8BurOsz3HvxflMOcmou3k9iE9yOvNj8QSVkmj8wmmZZH9NXkHgQkBGtnbIJL3wDlNIlsdBw==
X-Received: by 2002:a05:6870:6ec4:b0:1ea:2447:5181 with SMTP id qv4-20020a0568706ec400b001ea24475181mr10001030oab.9.1699996092052;
        Tue, 14 Nov 2023 13:08:12 -0800 (PST)
Received: from [127.0.1.1] ([12.186.190.1])
        by smtp.gmail.com with ESMTPSA id x16-20020ac85390000000b004198d026be6sm3027549qtp.35.2023.11.14.13.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 13:08:11 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Tue, 14 Nov 2023 16:07:59 -0500
Subject: [PATCH v6 5/7] riscv: dts: thead: Add TH1520 mmc controllers and
 sdhci clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231114-th1520-mmc-v6-5-3273c661a571@baylibre.com>
References: <20231114-th1520-mmc-v6-0-3273c661a571@baylibre.com>
In-Reply-To: <20231114-th1520-mmc-v6-0-3273c661a571@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
 Conor Dooley <conor@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699996086; l=1662;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=5F3cUoM9uPwZr3nAbkkg8hlE/aYbHbZypGZJHmRKKkc=;
 b=sThdFfxHu7C2ISnkASyL2+wqHUobTAv8LAVRkg+GAuiicLGX3E6KGT3ZKwLzgZL2o3ywX/aly
 pVCC5HUCjOrDQuteATDqXpsfo/PxZDp6Iyt51XFI1h/TTmrr5Ki+T4F
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
index ff364709a6df..fb8a4a04d3c4 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -134,6 +134,13 @@ uart_sclk: uart-sclk-clock {
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
@@ -292,6 +299,24 @@ dmac0: dma-controller@ffefc00000 {
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


