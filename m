Return-Path: <devicetree+bounces-9411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E63B7CCE6E
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 22:45:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B921FB21267
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 20:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 504E92D055;
	Tue, 17 Oct 2023 20:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AFT+/dHW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21FE2D7BE
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 20:45:30 +0000 (UTC)
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5083D119
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 13:45:29 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-6b709048d8eso3017263b3a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 13:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697575528; x=1698180328; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FhR9frpmu/yAUsLJSS2gpg1w0JSCDYrDF2EFLnkclH4=;
        b=AFT+/dHWRxUR3sfND5zipJY/NIX4nZu0FNYNEO7TwwgUoUEd48u/yqbF60YsZEZJ9w
         4B0wyVWF5Pu+GipcJGNm/+pEUXYXWjHAlbCSDh5IbgZBmHzuK8DBR9J5+UfCdgwGJ9/7
         mn+rOcV34Xce7DlT39xll4bXjhJ7IwZtFsRQT3Dt0XOAeObngJVhCqZPACVevlcCHBeQ
         ANwBKrxJ0l7BeJi0pm2KOyQGlhFaOuKXfexHNmnDkVllv47gnp4uWFTvXiS5m49KJBMQ
         UiowSchR0e8k/ix3UNLMdm/YX1z4pyA+ae7CT14Bb8sZLmxcLyYwtGAGlt4X5b0t8F1M
         a6yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697575528; x=1698180328;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FhR9frpmu/yAUsLJSS2gpg1w0JSCDYrDF2EFLnkclH4=;
        b=H7wkjpy/WHA2Vkd/cFToav+lKDt9w/FNHmK4dPLEgMnbvQeEzst2C+L/1bmz0deRpJ
         LJjsFg05S683tGny2lTO2/Uw/0tzTmEPe2HmoNwYYawSfDmSdmNojYjPDyRSLzuirsT0
         y3YCTD4J8Vsb2rNI641gFER3s3a0c3PQ6xmRUdXISCJ1TGeRJ5HgGr9b7/pPWomEMSZE
         pbn7Juf/gligfiv1LT5k+gUKo9YigwiuI6Dahkpg6HD0PaI898wVfRAMSdv5whMLFLFt
         JcGUhpRkF9hCSKMo+ZbMy036SLzHrg0Hi5fZrMe3nV2q7EO91BlfCLEhV7EJPfRW3ir8
         EwXw==
X-Gm-Message-State: AOJu0Yw2sQ1LBy3HPxXAorddyplGxDYZZ2HSUTGzfR4E/LZkXu8zeyo3
	jJi0mXEbyJ/rda+qPjzt0SQrOw==
X-Google-Smtp-Source: AGHT+IE7E/rW2mbc6xNEhKDqX9w4aYvx/W8/zfByPnf9rcrtNEjn1LkUl36z7pQ7qVPNU4UJBZy+Cw==
X-Received: by 2002:a05:6a20:72ab:b0:15d:684d:f514 with SMTP id o43-20020a056a2072ab00b0015d684df514mr3481188pzk.6.1697575528704;
        Tue, 17 Oct 2023 13:45:28 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:51d6:dcd6:63ef:52e9])
        by smtp.gmail.com with ESMTPSA id w3-20020a17090a6b8300b0027b168cb011sm1906553pjj.56.2023.10.17.13.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 13:45:28 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Tue, 17 Oct 2023 13:43:51 -0700
Subject: [PATCH v2 5/7] riscv: dts: thead: Add TH1520 mmc controller and
 sdhci clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231017-th1520-mmc-v2-5-4678c8cc4048@baylibre.com>
References: <20231017-th1520-mmc-v2-0-4678c8cc4048@baylibre.com>
In-Reply-To: <20231017-th1520-mmc-v2-0-4678c8cc4048@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1697575515; l=1256;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=BOuTsoiS4wD+cP61c2nYQjChDl2neNVnlaTjhPPnjNo=;
 b=dcjpH9D4/iuzxXetEkXlXo86ynK58hWjYsp59cgxdD/sG0SgXrxZ439+HwU+bql+QBAfc0iv0
 l9K6iCBFRIzATnT9moU6vrLC7rmog09qtMRbIBbp7o96+Fr82mQl/EW
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
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


