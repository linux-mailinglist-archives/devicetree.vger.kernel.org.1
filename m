Return-Path: <devicetree+bounces-29424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5B0822E56
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4707AB2342E
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C511C1B277;
	Wed,  3 Jan 2024 13:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="AdKNqxLc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C741A735
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 228C63F5C8
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1704288546;
	bh=tqMfg95KIVjJvPKgbsWHmt5kfOhdG002h5X8NSsa4sI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=AdKNqxLcAVo38kQeEn/g9lOTawZtBXsJ4Bia/xiSanZOxrBZwUqKJgPBujkDgUQ0n
	 GKXAcqjrtFB2MO85g8Hp7HT/zt3gswINWWP0fM/6X+6KZgW6z15bCHehZRMpb4Xx31
	 8frjEnopwE6tovnJAsGFKz3KvejO40qHnwVZpNWw7OcvuflIuevlIHjJSJzUlGeI7Y
	 g7LiarQrM3eRdlitx2GCLs3uYH6+P1T3UIEzcAzwJYy71/ENSc1VT1Ks0iImc4b0f1
	 G+IPinkahQ7CBxWfY6tSFwwH+8xlsi0JmmP+mUObfoEdE6lagnxMxAvertidD5uyDF
	 j2x3G2PoMsY2Q==
Received: by mail-lf1-f69.google.com with SMTP id 2adb3069b0e04-50e7b20360bso5520353e87.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 05:29:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704288538; x=1704893338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tqMfg95KIVjJvPKgbsWHmt5kfOhdG002h5X8NSsa4sI=;
        b=f1pX9MnworcxDw5NQEcevzX5HBSZxpWJRKT/va6UkOll1+3CcwODrGrcp9CGiF0oe4
         G0bck9QagLGWNTio1sQBcVKQhyDW+exvKBLx29MY1zuw7gIA9WUf3JjJfFQBx9KPyRml
         svsAY5dGlk+WqfrE6/W0Blg0Pmbel4fDqJZmB5TC1XLix+mKLfqjmhg7tpEipIH6I6Nn
         9/t1mdEqBEC0dRrdcrEALV+YG8na9Wxoanjq8KcGNsJlkqQvctG6cPspNEuBSLStDexO
         SshoRdiqoDa7lBsOB3bs+Z8NneY1U+cy00mKQdHKZKBtLAP9oQD9jhC1ynZYIEIHH7S5
         IvbA==
X-Gm-Message-State: AOJu0YyRYkBj68+K2nv4YGCTtIbebtD8ydJxrhfXBITwERG93M7h7xhC
	rb5IGnIjKe0k8SKIB/TuM+KhxikyNMn1N7HazHr5UAWAT+eetIdhEdilaaEsJ2sT5JC3iCY60OX
	pHx8gfILdCF/QukyrVjpJ0JK/Q6TRqiHx2aa4RC2sy51APQ==
X-Received: by 2002:a19:e043:0:b0:50c:327:9932 with SMTP id g3-20020a19e043000000b0050c03279932mr8930992lfj.107.1704288538749;
        Wed, 03 Jan 2024 05:28:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPDJwDzvHCtSOMtff3kEZeV9eDPzei74buh15/SGKE/XmdR3VcW5wZ0AwGHy5kvmTgi5YPQg==
X-Received: by 2002:a19:e043:0:b0:50c:327:9932 with SMTP id g3-20020a19e043000000b0050c03279932mr8930986lfj.107.1704288538441;
        Wed, 03 Jan 2024 05:28:58 -0800 (PST)
Received: from stitch.. ([2a01:4262:1ab:c:5af0:999b:bb78:7614])
        by smtp.gmail.com with ESMTPSA id eu18-20020a170907299200b00a26e53be089sm9549873ejc.44.2024.01.03.05.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 05:28:57 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH v2 5/8] riscv: dts: thead: Adjust TH1520 GPIO labels
Date: Wed,  3 Jan 2024 14:28:42 +0100
Message-ID: <20240103132852.298964-6-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240103132852.298964-1-emil.renner.berthing@canonical.com>
References: <20240103132852.298964-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adjust labels for the TH1520 GPIO controllers such that GPIOs can be
referenced by the names used by the documentation. Eg.

GPIO0_X  -> <&gpio0 X Y>
GPIO1_X  -> <&gpio1 X Y>
GPIO2_X  -> <&gpio2 X Y>
GPIO3_X  -> <&gpio3 X Y>
GPIO4_X  -> <&gpio4 X Y>
AOGPIO_X -> <&aogpio X Y>

Remove labels for the parent GPIO devices that shouldn't need to be
referenced.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 .../boot/dts/thead/th1520-beaglev-ahead.dts   |  2 ++
 .../boot/dts/thead/th1520-lichee-pi-4a.dts    |  2 ++
 arch/riscv/boot/dts/thead/th1520.dtsi         | 24 +++++++++----------
 3 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 6c56318a8705..f1e8eaed487c 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -17,6 +17,8 @@ aliases {
 		gpio1 = &gpio1;
 		gpio2 = &gpio2;
 		gpio3 = &gpio3;
+		gpio4 = &gpio4;
+		gpio5 = &aogpio;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
index 9a3884a73e13..0ae2c20d5641 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
@@ -14,6 +14,8 @@ aliases {
 		gpio1 = &gpio1;
 		gpio2 = &gpio2;
 		gpio3 = &gpio3;
+		gpio4 = &gpio4;
+		gpio5 = &aogpio;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 5eb841ba5124..60225f122112 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -212,13 +212,13 @@ uart3: serial@ffe7f04000 {
 			status = "disabled";
 		};
 
-		gpio2: gpio@ffe7f34000 {
+		gpio@ffe7f34000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xe7f34000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			portc: gpio-controller@0 {
+			gpio2: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
@@ -231,13 +231,13 @@ portc: gpio-controller@0 {
 			};
 		};
 
-		gpio3: gpio@ffe7f38000 {
+		gpio@ffe7f38000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xe7f38000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			portd: gpio-controller@0 {
+			gpio3: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
@@ -256,13 +256,13 @@ padctrl1_apsys: pinctrl@ffe7f3c000 {
 			clocks = <&apb_clk>;
 		};
 
-		gpio0: gpio@ffec005000 {
+		gpio@ffec005000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xec005000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			porta: gpio-controller@0 {
+			gpio0: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
@@ -275,13 +275,13 @@ porta: gpio-controller@0 {
 			};
 		};
 
-		gpio1: gpio@ffec006000 {
+		gpio@ffec006000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xec006000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			portb: gpio-controller@0 {
+			gpio1: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
@@ -418,13 +418,13 @@ timer7: timer@ffffc3303c {
 			status = "disabled";
 		};
 
-		ao_gpio0: gpio@fffff41000 {
+		gpio@fffff41000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xfff41000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			porte: gpio-controller@0 {
+			aogpio: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
@@ -443,13 +443,13 @@ padctrl_aosys: pinctrl@fffff4a000 {
 			clocks = <&aonsys_clk>;
 		};
 
-		ao_gpio1: gpio@fffff52000 {
+		gpio@fffff52000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xfff52000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			portf: gpio-controller@0 {
+			gpio4: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-- 
2.43.0


