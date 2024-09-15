Return-Path: <devicetree+bounces-103037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E26A8979478
	for <lists+devicetree@lfdr.de>; Sun, 15 Sep 2024 04:43:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A70DC284F15
	for <lists+devicetree@lfdr.de>; Sun, 15 Sep 2024 02:43:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26618DDC3;
	Sun, 15 Sep 2024 02:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="Kc/wUIP7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63F5C2FD
	for <devicetree@vger.kernel.org>; Sun, 15 Sep 2024 02:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726368203; cv=none; b=Yum/8L8X8YQafBfN0dxnMQ+3oYgscgwdGYtoJlI11WQDW7n/mEz8yMY98XKh5sQObBw2dvcM4h7wOTCYNBc/UIZOFY1Sn8XC1FNwI0JyDPEqPl94RyBKAppBd/DMXBWgBw7j3du2b/welAvXrFNwBO2+7Z5B+Bgc7He/exoJ9cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726368203; c=relaxed/simple;
	bh=NQ7iIIiQUYmloB+fTAk9Le6qTBu+uKKWpAk1jad0Ywc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iyTldLufZ/MLBD2ImQL+h29Nd0AvijVvOZKDvRU8g1YSkND1Pbxpgy729yob9VP6bQQb0wzmGsnPUkUHhsy6exStNxPocBoNH1nNQZrpdkoLE4a7D+EngUy1vD4KAQ1/B7cf+9/tbKnQb3LQLyZL8ICRE02Ml6Lj5hvcsRlbrAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=Kc/wUIP7; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6d7073a39dcso39120177b3.1
        for <devicetree@vger.kernel.org>; Sat, 14 Sep 2024 19:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1726368200; x=1726973000; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UGO1yLxxHEIvNc6iD6daAleZYqe3CnKG4fr/mNU2r2w=;
        b=Kc/wUIP75d9c8ZUz2guxV+alOM88RtvZJ6WRvFBkizmEgWwLjgW6NRJqIL15fx1ODP
         VH6Pb7orzyg/S59bO3ZvouorUcktEeirg66cT3PRQMHHoUrramjaGDwFkC2mezouba46
         nH3c3FdEXeQ3PRgI0qdpWGq3rx2Z6TzUAF1YVwPnE8MaCx5HfUWWrUmM6VSKYzY83X4M
         BBfVt4Y2V2mXBgOBEifEkoQamm68Y6KetKTCgf5Tqoh40jEltfNRpWscfJxi8ldGObrw
         FwuWWaZ5NMxkHakT4zqrYMogWS/wX/llEWpDefRz4a9HlHPdpMHp4ZwnVX4sTRp3WVyy
         7Dxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726368200; x=1726973000;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UGO1yLxxHEIvNc6iD6daAleZYqe3CnKG4fr/mNU2r2w=;
        b=mV336qoofhrtcqKePxtsvKaDm9BdpvGwL3q5fzwYr6WkwXUsw9/XVKPu91hZt1ZCsQ
         MD2M/lscrU2+GYkjLzM+4RZc+UNqOdFpNURNrlsrJTsX0XOfVrhD3D4IfaVWM6+N4O+T
         HV9dCOhF28GgBDFGy8sxZEluNAKYpAAAcuzrKd0waQ5kiAPoE5n/WaRbGFmPlceAjjAj
         KUxp8uFHLBJ9q+wZyHzrgF/c60tFOgwlqta+A7dZIe/cYkA7FhUhIokTW5zDP6hva7z+
         veb8r/TEMQ86arAqpupMi970t3fUBsHy5wPHOlv/KG4Ym2wYFJ6zmUarpRI5Ozi9oTOz
         rWtg==
X-Forwarded-Encrypted: i=1; AJvYcCXPgtqwPaRofKS5P0yuQE+wSoutgKWOMEJPS7FPhxe4izX0Nth8RdP33dXMLM04qILgcCFZNEOJqM6B@vger.kernel.org
X-Gm-Message-State: AOJu0YwAisvTmr51OZwNBHII2k+4qUG438ShvHn2WNDt33elouv9t2LI
	5oCAcrGlByop3UvmPhSMtH2zueTNhrcryDIkwvATTYPxuqijegMftmXvBe9VTqc=
X-Google-Smtp-Source: AGHT+IFGuzqRRflj1wW8TL6ghlooIpa8AqTakhwqJ97GzykE6j3xTKcFT699JZ9Wxh8k6Q7914FFfA==
X-Received: by 2002:a05:690c:688c:b0:62f:60db:326 with SMTP id 00721157ae682-6db95430797mr140601537b3.20.1726368199814;
        Sat, 14 Sep 2024 19:43:19 -0700 (PDT)
Received: from [127.0.1.1] ([216.139.163.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6dbe2e0d924sm4129097b3.41.2024.09.14.19.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Sep 2024 19:43:19 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Sat, 14 Sep 2024 19:40:53 -0700
Subject: [PATCH v2 5/8] riscv: dts: thead: Adjust TH1520 GPIO labels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240914-th1520-pinctrl-v2-5-3ba67dde882c@tenstorrent.com>
References: <20240914-th1520-pinctrl-v2-0-3ba67dde882c@tenstorrent.com>
In-Reply-To: <20240914-th1520-pinctrl-v2-0-3ba67dde882c@tenstorrent.com>
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
index f9e339d3472d..497a982554b2 100644
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
@@ -372,13 +372,13 @@ padctrl1_apsys: pinctrl@ffe7f3c000 {
 			thead,pad-group = <2>;
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
@@ -391,13 +391,13 @@ porta: gpio-controller@0 {
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
@@ -535,13 +535,13 @@ timer7: timer@ffffc3303c {
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
@@ -561,13 +561,13 @@ padctrl_aosys: pinctrl@fffff4a000 {
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


