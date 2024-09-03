Return-Path: <devicetree+bounces-99181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FCB9692BD
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 06:09:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EDE0BB20D32
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 04:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE8721CF2A6;
	Tue,  3 Sep 2024 04:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="QvdyCi5D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B6E1CE71A
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 04:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725336539; cv=none; b=XN/30fvZoEBE1iX+6w+fgGuQTUfnEmakNdS83PBxIvzHfTyD/kcNME4Ed70VmKhAjZjYW4p7Zf1LGsHcejwWUIuNQgmd2hl67XFdX/29DWJKQzofejTJo6llAnjl8hJDnwmRmIBFQnHCaXHlvKFRViMIyd5shFf+lKlXtAQC5XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725336539; c=relaxed/simple;
	bh=yKu65ayqhlwEk1/oHrEEK3Swm5eK1YFEIx0DLnCo1yc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QUBpOTogRhfdkAUZBprVe7XfhQzu4ysIQIjaRA35Z4ZSUygrDqK6EJ26sOOaV3AU1tTvJs5teoXOOZ2/hgK1MAjMRmLoT0ncg5/2GhQVTOelMUFZYgp4h5rbuZN9Cwcg+DY7vMvLIqBuyok0rRsz+kx3oParHyyuZgHp0itsHb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=QvdyCi5D; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-70f645a30dcso2830659a34.3
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 21:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1725336537; x=1725941337; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qyOsLqrhLpATXPlyFkx6PFzmaYrXHORwBCvmtIN7wwY=;
        b=QvdyCi5DiGlgHwsvjWHIIGrVqG9eyNZJ7WKkV7K0cPAQ6v8ZnsEcqy+T+rOdMwgAo6
         9xO6NgXkT340jl8lr7gJqhe4C5ZL4M4QlwSvnQC8o0PT8tpiIlyuYHxxdcrIdx85EyD3
         mQZHTRns2L1Xrx7uzQEbIvvjBqENDD8WQkJ3TW8RovjgNMiZ0OArT07bWPPGQZw8FWKg
         oID6NRaGpgznOEi7MouKjvCnkb+xy3CjjRyGJBis/pWbuDcrtj5I8lfGoxXjs0Zu7FB7
         8cWMweX1+J5tWCCgCuvIVIirWD23BIVXVGZJ/hF0AcCPTcvF0EmFngK4KLznvSDOtBVt
         /XfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725336537; x=1725941337;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qyOsLqrhLpATXPlyFkx6PFzmaYrXHORwBCvmtIN7wwY=;
        b=W/gnNEXNoRSlFo49D40N5HtCBQBb2sGMw8cOcTlv80KsctzsVHAvzVU9rBfzFNf0kx
         CH9BZBCW30ZEDqmL5gO/EwMfQvR8rrXyM8JzBGKm+AvG0/FT4GjJyKme4taAqFMmt3q9
         My95ZQJhCMWxJMxoY028ZsUQJg7At16WllF8TQz5Z5O5LnIcCoXbjLNaw5tRtLMX1vqt
         FCxhdEvPsj30H+uD4CU1iNgmlNO6fN5KWoBiG16do9YUX/KBUMAVw+0+Q0q/OmISDM9G
         1cWSUCwsA/0GW90u1DdWi/pBlwR8DDu/9UC1ImZsDVQhkWJrXtQrEAOaIsw2gH2Iqyag
         /uKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZRU7H2oZ9LRD0GaJ2IPWzvvC3FFBQ78KWbS83qI5ciSOHXapbPiqVYi8f4NAnEWdjusuc4kUeQ47r@vger.kernel.org
X-Gm-Message-State: AOJu0YzLVGP0J5GyQ0U1H8ujHVORQGrJAw78PwCFmgmUmj4iLu0tKLBS
	T4nYafwbyG6ymckhDpvlPvDMvx2/0yv0I2+1p4rQNFDZ7wsgTFueggYEdUfzbAI=
X-Google-Smtp-Source: AGHT+IEuqQbg+Bk7kHE0gVKKrj3w/kCtMDRypmjJI50am9+L1gqOTh2Q4jG0SvV5JKTx2Js5Pt7zzw==
X-Received: by 2002:a05:6358:5e01:b0:1b1:acdf:e94f with SMTP id e5c5f4694b2df-1b7ef738bffmr1314949955d.19.1725336536907;
        Mon, 02 Sep 2024 21:08:56 -0700 (PDT)
Received: from [127.0.1.1] (75-164-215-68.ptld.qwest.net. [75.164.215.68])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-715e569ef39sm7532701b3a.122.2024.09.02.21.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 21:08:56 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 02 Sep 2024 21:06:58 -0700
Subject: [PATCH 5/8] riscv: dts: thead: Adjust TH1520 GPIO labels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240902-th1520-pinctrl-v1-5-639bf83ef50a@tenstorrent.com>
References: <20240902-th1520-pinctrl-v1-0-639bf83ef50a@tenstorrent.com>
In-Reply-To: <20240902-th1520-pinctrl-v1-0-639bf83ef50a@tenstorrent.com>
To: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

From: Emil Renner Berthing <emil.renner.berthing@canonical.com>

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

Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts |  2 ++
 arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts  |  2 ++
 arch/riscv/boot/dts/thead/th1520.dtsi              | 24 +++++++++++-----------
 3 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index be85e3aee56e..c48f6fd6387b 100644
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
index 9889b557c494..ca93a265fa56 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -327,13 +327,13 @@ uart3: serial@ffe7f04000 {
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
@@ -346,13 +346,13 @@ portc: gpio-controller@0 {
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
@@ -371,13 +371,13 @@ padctrl1_apsys: pinctrl@ffe7f3c000 {
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
@@ -390,13 +390,13 @@ porta: gpio-controller@0 {
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
@@ -533,13 +533,13 @@ timer7: timer@ffffc3303c {
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
@@ -558,13 +558,13 @@ padctrl_aosys: pinctrl@fffff4a000 {
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
2.34.1


