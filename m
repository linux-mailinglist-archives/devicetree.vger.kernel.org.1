Return-Path: <devicetree+bounces-76116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1558B909B31
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 03:56:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88A4F281207
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 01:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 966FC1667D2;
	Sun, 16 Jun 2024 01:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="LrTB5hls"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4EA01581E0
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 01:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718502927; cv=none; b=TWkpEAZau2Ui5u4p6hRa4doE8nKXbDXmyE1YGa6sOCT51QBD42Vpc8NUhN5LvdfvKPqHlFT+gqNgRrcsSN1PuM6QenN50WzNutU7+nNqXsQhyT7Fa/KB5DDVgTvOpQ5QalmV8Nm/GS2yx0OOKWS1RILkTW8zNY9WXsrvXszNltk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718502927; c=relaxed/simple;
	bh=XqKXG4uo59DWYr9Fi4bTSjMiIlOLqenSJX3Df4v2sB4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i4BYMbeGeJEhrUXSymzVnButB/nyVBY42itQ5ZhbUK+5zvxAnVfXvIgn9+riXteecerMhCw0tnXUiqfA6ctYxAaK8DY/2KeHchjUnD2pyS1iTj8EGTJwyjO8m2WCKM20TBtYiOALo7mgUfKPfjXNtfHI93kGgbfBE+6IjjxZuqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=LrTB5hls; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2c327a0d4c9so3231937a91.1
        for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 18:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1718502925; x=1719107725; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GYP33pfM3TIsirUS57cb0IQBQXI0dVM9b8GqIW7IwP8=;
        b=LrTB5hlsDgQ2U49frF2b1IDn5U8ZbBQCsR9UAGb/NY/2YAQMAZbKogfG1k8lpk0naW
         4ecCTZdx/+xI7aayouIYyC0HGVoMrJoetvu5/mUvyYuX0wC4ldYnCtTfms8ZYmrTUPlh
         u63fstymrgkG+oC4Gq92MtB0kJuVev+3usnQanUFYXIoiHns/zJvRli1ckPO5u3f8mKW
         DyJ9YE+YxBWsqJxMKkoqracvmlGlCIHi1wdn1Me5GcyXGD5DlVvxgs3KtrVF8yA/ZoMB
         O8HwEc70K5JJ11x+PdNi1wWtNtN3AQke7U4vhPpee7iaC4dWKftDOC/lDSliq4JBgXqR
         Pr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718502925; x=1719107725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GYP33pfM3TIsirUS57cb0IQBQXI0dVM9b8GqIW7IwP8=;
        b=A3k/wr9JQyDVIxPRgGzOiPjwhyQ6OR6JWPOqA2uNqqf4gIMsqMYKkH8XjOzxU/qYwR
         zKPGMNEh3fGgoNNpZeMUfkuSdvw92dM3V/lM5BnL/3pe+asJm8S0T2k8F9M58Q1rs/tv
         XNF2bzH22i1J56ereeoUrLHpYrW98nRRIeEO9caZSTDCyHWlNUKcWvy6be4tX3nQCIY9
         C3K2hGP5xsbPh4ai0bnUh5mTflULU95+f/iUU/Z7wmYypONV50H/0Ol89681brEhTcHS
         OMm/8v/ZyO1aoNHiRXIffuWG/3Ou6wvjt40S8MyQfEVsA43I4F7iUlcPq9eM/N63gkVj
         M3fA==
X-Forwarded-Encrypted: i=1; AJvYcCVL6f03AI0coVrlpVBfh6qf7YHWQnLiLQL7nFpPlu/fzzORunrMIBWdHS6spf9n8xmANAjneM9hv0yMgQ0tUy1l5+U4M/vmcJ9wBA==
X-Gm-Message-State: AOJu0Yx31zGlWpv3405WI67heEKbDQq7ZrlUb6pFpjoFUZXAaCVltcCL
	gX2eeyhpxxn+oRMf5OV7yfTlXG61GpnbWtARCboT5D5KfXm7VMm+pEWaVHkcIyA=
X-Google-Smtp-Source: AGHT+IG6RSXfzO7sqKUhPBDMa2VZZ5KrxxwUmWhQgIIqkFN2DyFbZRCIbUwEj54xUpeHGSH02hVVOg==
X-Received: by 2002:a17:90b:3010:b0:2c2:da08:c341 with SMTP id 98e67ed59e1d1-2c4bdb0fa48mr14052541a91.23.1718502925097;
        Sat, 15 Jun 2024 18:55:25 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:1cea:28dd:2ee0:e8e5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4a769aedbsm8751201a91.43.2024.06.15.18.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:55:24 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Sat, 15 Jun 2024 18:54:34 -0700
Subject: [PATCH 5/6] riscv: dts: thead: change TH1520 mmc nodes to use
 clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240615-th1520-clk-v1-5-3ba4978c4d6b@tenstorrent.com>
References: <20240615-th1520-clk-v1-0-3ba4978c4d6b@tenstorrent.com>
In-Reply-To: <20240615-th1520-clk-v1-0-3ba4978c4d6b@tenstorrent.com>
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
X-Mailer: b4 0.12.3

Change the clock property in the TH1520 mmc controller nodes to a clock
provided by AP_SYS clock controller.

Remove sdhci fixed clock reference from BeagleV Ahead and LPI4a dts.

Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts     |  4 ----
 arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi |  4 ----
 arch/riscv/boot/dts/thead/th1520.dtsi                  | 13 +++----------
 3 files changed, 3 insertions(+), 18 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 164afd18b56c..55f1ed0cb433 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -48,10 +48,6 @@ &apb_clk {
 	clock-frequency = <62500000>;
 };
 
-&sdhci_clk {
-	clock-frequency = <198000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 1b7ede570994..762eceb415f8 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -29,10 +29,6 @@ &apb_clk {
 	clock-frequency = <62500000>;
 };
 
-&sdhci_clk {
-	clock-frequency = <198000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 66df04ceb3e4..ce3a0847aa9c 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -141,13 +141,6 @@ apb_clk: apb-clk-clock {
 		#clock-cells = <0>;
 	};
 
-	sdhci_clk: sdhci-clock {
-		compatible = "fixed-clock";
-		clock-frequency = <198000000>;
-		clock-output-names = "sdhci_clk";
-		#clock-cells = <0>;
-	};
-
 	soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&plic>;
@@ -200,7 +193,7 @@ emmc: mmc@ffe7080000 {
 			compatible = "thead,th1520-dwcmshc";
 			reg = <0xff 0xe7080000 0x0 0x10000>;
 			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
+			clocks = <&clk CLK_EMMC_SDIO>;
 			clock-names = "core";
 			status = "disabled";
 		};
@@ -209,7 +202,7 @@ sdio0: mmc@ffe7090000 {
 			compatible = "thead,th1520-dwcmshc";
 			reg = <0xff 0xe7090000 0x0 0x10000>;
 			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
+			clocks = <&clk CLK_EMMC_SDIO>;
 			clock-names = "core";
 			status = "disabled";
 		};
@@ -218,7 +211,7 @@ sdio1: mmc@ffe70a0000 {
 			compatible = "thead,th1520-dwcmshc";
 			reg = <0xff 0xe70a0000 0x0 0x10000>;
 			interrupts = <71 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
+			clocks = <&clk CLK_EMMC_SDIO>;
 			clock-names = "core";
 			status = "disabled";
 		};

-- 
2.40.1


