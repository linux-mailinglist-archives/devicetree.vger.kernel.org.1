Return-Path: <devicetree+bounces-2277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E46497AA6BA
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 03:51:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7A62E1C20B3A
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 01:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24D4A377;
	Fri, 22 Sep 2023 01:51:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DBDEDC
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 01:51:14 +0000 (UTC)
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2C28102
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:51:12 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1dc5df71745so861606fac.2
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695347472; x=1695952272; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FhR9frpmu/yAUsLJSS2gpg1w0JSCDYrDF2EFLnkclH4=;
        b=rCZCHp1YwLLJIJbacvF953DfsJbTfM0QLuy2mZjBbhk4xLiigflgrvAjdwoBPKwpBl
         CSVDGRxC1jFFCXg2l9QgMdWBvsAtLDEQbhPvOor0Ek15KJZ+doOGoycSdjS6B5iw8hRc
         8TjaqlkNZ4oXAQEe2QGAVDzfxbJi64cWDaAZ2jz2CVJRj/85SMkVBUXQ7RoIBs2U1+8V
         ts8gK/blkKlRbNp21j7UBMYSK8DZPgQLEZ2qlhosZJ2EdwHOP8/5fk1P4O+jhImtITQQ
         28SWK3qJQlOK24P1T0Z1RQYxbP2AaXbeN/MJg9/nfZ/Exkx63ShFGopXUr0NhZ5QY/AU
         Z1Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695347472; x=1695952272;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FhR9frpmu/yAUsLJSS2gpg1w0JSCDYrDF2EFLnkclH4=;
        b=pJkr74TofRRYv8SRRviyquyNqSlf8P/Sw3qWvYaVTWeXJcX6iMKnyBWC0FDszEE+zg
         qE+tPn4lMW4+hlKef+DLOgs2++MBbSkv238qY3/YBa1F08687cq+6vlzIhIzRiFr6LEU
         xJvCy4nEv2r7m958Q6gR/UvH75LPi3wB3SoqgtdOjhQrXMUmLgWxpqt1eCD/5sTj2TWK
         R14lnMsoqUUioLzsR2qcETl5yaQLJw3IAR1Q8ymfq7H+eZCE//N1+tvS5JgAhW3blNJL
         4KFw0ywIxFTIpCIEOVbwCTcncuWqGk27BUf2V4pppp9iKG1o2o9PDMIkLU3DQXcjoi/p
         qgbw==
X-Gm-Message-State: AOJu0YyLavAJB4RnrT51qt1OCT60icLAkjGFl9EQqXqII+a+AMZpW3iG
	Emn8i8egGrQFoNcPWsyxbdZYGg==
X-Google-Smtp-Source: AGHT+IG6f1s/2Qluw/AcJPeKmsWPsdAsou8qMp5DVhViZ2oFPjZlrQWRIfAn8jL/kTb28f16DxKnNQ==
X-Received: by 2002:a05:6870:418f:b0:1bf:607:e0f2 with SMTP id y15-20020a056870418f00b001bf0607e0f2mr7359618oac.29.1695347472260;
        Thu, 21 Sep 2023 18:51:12 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:fa26:6227:be1c:67f0])
        by smtp.gmail.com with ESMTPSA id y10-20020a63b50a000000b0057412d84d25sm1973856pge.4.2023.09.21.18.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 18:51:11 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Thu, 21 Sep 2023 18:49:51 -0700
Subject: [PATCH 4/6] riscv: dts: thead: Add TH1520 mmc controller and sdhci
 clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230921-th1520-mmc-v1-4-49f76c274fb3@baylibre.com>
References: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
In-Reply-To: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor@kernel.org>
Cc: Robert Nelson <robertcnelson@beagleboard.org>, 
 Jason Kridner <jkridner@beagleboard.org>, Xi Ruoyao <xry111@xry111.site>, 
 Han Gao <gaohan@iscas.ac.cn>, Icenowy Zheng <uwu@icenowy.me>, 
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695347467; l=1256;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=BOuTsoiS4wD+cP61c2nYQjChDl2neNVnlaTjhPPnjNo=;
 b=828BIUxxnWEqAhThpR3UsYUCLsNEjUrqd+nJV6aT2PNkFMKfXThBLTjniRlEi27zEM9N2HE7i
 2TD3Ch0KrQ3BZYG48TuKVeR9eYlfwYG7F8m+g8psY+m2UCtMFgl1xpF
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add nodes for the SDHCI fixed clock and the first mmc controller which
is typically connected to the eMMC device.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index ff364709a6df..ee0711352790 100644
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
@@ -292,6 +299,14 @@ dmac0: dma-controller@ffefc00000 {
 			status = "disabled";
 		};
 
+		mmc0: mmc@ffe7080000 {
+			compatible = "thead,th1520-dwcmshc";
+			reg = <0xff 0xe7080000 0x0 0x10000>;
+			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sdhci_clk>;
+			clock-names = "core";
+		};
+
 		timer0: timer@ffefc32000 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xefc32000 0x0 0x14>;

-- 
2.34.1


