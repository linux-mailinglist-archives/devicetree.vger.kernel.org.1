Return-Path: <devicetree+bounces-11083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACB37D4167
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 23:07:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB84D281726
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 21:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0FCE21A0F;
	Mon, 23 Oct 2023 21:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3NUPWWrJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFB6219F7
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 21:07:19 +0000 (UTC)
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3DF610C9
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:07:16 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-6b5cac99cfdso3071540b3a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698095236; x=1698700036; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=frioRiPhaekRnCE/0ENvI5wkvdspg2jE1Z81EEiVDoc=;
        b=3NUPWWrJKNmSuszwC3Q7w9wvAk79+YjRLRE53mXEj7tRriKxf8fMp1xtnnrSWKpGv3
         8AxwCuCYmesCKjRKSxSKFAktKtVWHc6GMy4Knb5WvDHHbgERyEp35TKpvA73jCuy2vL3
         0DobJVbEdpMyziQgsG7Ic6y4WeXTdh4zRzDU91G9I/r3HWGI3V3PrjqDmXQm/KOubcDP
         myWPAhK4qs2QtTrWLgwspIh3W0NmWi2LcGKWUAmBJrOPTjJuQ398RKajbZj3MOkZQvOc
         AWZhr3HaXHiElmNNUoPgmuioJxfxFPULFqXCocqPSmoJxanlFe4iU733pFfA1/44FXxm
         cewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698095236; x=1698700036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=frioRiPhaekRnCE/0ENvI5wkvdspg2jE1Z81EEiVDoc=;
        b=mhWrgwl8s4jrewydOjsUyZ3slpct+60dn7wbizrDRKdMSid1MLT0zwZ0nI0o9Ybotv
         zIt0nUB/I4kCxpMyCojbw6PFzpOnW6TO/v3mhlZ+aME2G08fyx1LYL5e4kA7wZhIZ369
         Yq7nHt53TJr0BTC5vfh1B7Z+/4Md6pYR/MpPU19wXU6SKJExHFuMaz8y5jkjzClBPbnT
         bjZMeE2tEUHv0Yw4pVbwy+eNUuzUwMOGrrL0e65qQM9bn1jngv8oIf6kvFJCtV93ToaD
         Ew/5jIhjlLk7Qdhux05VFyFEM7+TdXu+0gplck92AycXGIwU0yB07yF5uCCuPnIAlZqi
         PD+A==
X-Gm-Message-State: AOJu0YwXIbEv6YIWT3Io+iVizhqvjt2aT0dDN/JQoK8zdQjkSzWpLuWK
	lXC3FovZHS1Bx+SZvRszrmBviA==
X-Google-Smtp-Source: AGHT+IGWrHTrnLkYiQyu+QLLmhX/cQml0jPNHPXJOjZpJ+Z4E+jfkFscNGmA1AJnuN2Y6KPQM0ObCA==
X-Received: by 2002:a05:6a00:1747:b0:693:3851:bd98 with SMTP id j7-20020a056a00174700b006933851bd98mr8163238pfc.2.1698095236354;
        Mon, 23 Oct 2023 14:07:16 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:b9a0:8714:407c:4146])
        by smtp.gmail.com with ESMTPSA id k28-20020aa79d1c000000b006bde2480806sm6573066pfp.47.2023.10.23.14.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 14:07:16 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Mon, 23 Oct 2023 14:07:06 -0700
Subject: [PATCH v3 5/7] riscv: dts: thead: Add TH1520 mmc controllers and
 sdhci clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-th1520-mmc-v3-5-abc5e7491166@baylibre.com>
References: <20231023-th1520-mmc-v3-0-abc5e7491166@baylibre.com>
In-Reply-To: <20231023-th1520-mmc-v3-0-abc5e7491166@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698095224; l=1608;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=118IOeI3EDHQnRGvuv5ewuNsGEAnYvxtIZdzQTMEyXk=;
 b=XyMu8wvvsVfsnmoVXWNgX+KUd9hOCnDa6dLi4MnIvVGBBqGRnsVHK86mx+4qjhfZBbXb1s2ST
 azF53vPUXUBAo9/G0vksN6nCUnyIEip5lqZ8/HB02fymtmxyf6Jbbam
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add node for the SDHCI fixed clock. Add mmc0 node for the first mmc
controller instance which is typically connected to the eMMC device.
Add mmc1 node for the second mmc controller instance which is typically
connected to microSD slot.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index ff364709a6df..f5ec9326c4b8 100644
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
@@ -292,6 +299,22 @@ dmac0: dma-controller@ffefc00000 {
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
+		mmc1: mmc@ffe7090000 {
+			compatible = "thead,th1520-dwcmshc";
+			reg = <0xff 0xe7090000 0x0 0x10000>;
+			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sdhci_clk>;
+			clock-names = "core";
+		};
+
 		timer0: timer@ffefc32000 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xefc32000 0x0 0x14>;

-- 
2.34.1


