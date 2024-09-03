Return-Path: <devicetree+bounces-99179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DEE9692B8
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 06:09:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF7A8284C3A
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 04:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 554EC1CEAC3;
	Tue,  3 Sep 2024 04:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="TcVzvmWf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D461CDFDD
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 04:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725336538; cv=none; b=ZlyrQY2C3cG86NJJJcKLm+H7Xlbo7iZqKNKjklICitG/9YdkzYqZJPqgYR3aoNVMFACEhrnwG+67GOsgrNdea7mpCo7ii/TYJaVAdmoIPusMKCHFUI5gNOlIvVOdXb8LWxg8b2f2ew2KsMIIYecknOJ43a0wLW7sgALk1O7ZmDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725336538; c=relaxed/simple;
	bh=5wWZ7techati+aOfPvJMxyFSH5Wti/es60OR5gL0P5E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BDo2UYa9KWFmR1gSUGp2a59va47B/+Mh12Uk7PwdqMdk8+mAvSN7t0h6yJCIW5XzQALLX2iw+br5hDuNcf7MTu+4V6PlZATKApRKqQkLMTh+l/RXe+wENgMvdPlJE4QS5WtPE9uU3c51MlLrMPcM/6OcolsgzUab8QVet1gPBmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=TcVzvmWf; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-71456acebe8so3716775b3a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 21:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1725336535; x=1725941335; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NiQQIOurN5s0FJRXD43MLGWhBSOLzbp34+DraYLBvAg=;
        b=TcVzvmWf7sHy4I7+fBP5fDmLBa+ZDCBWzmMGx16iF7wx8ARTj+lCmQvM7XvNyE321m
         fiL/gyeoncbRe55l426JX573lq1QDuiuZi+1EgDd3sC7rIl5AwAHTsXo2+8Nv7ygD8f4
         pQYLQfB3+VMLZ1JlEAfkZkcoorj4QeqBTzhi2BhbyLsH3LXzeT8Mf4V8YMxtO/uUTajg
         KmNz9nbdvR+IsFuTzjhF8tbNblD/G3a6YYs7KQsZvkZavzGSw72s42Po4kJFzQGgyz9Q
         Z10xVXKE1mjEdzPIbjaCDIsSRtiG0VPky5YTTC8W+YaKJsH08xGA/qV1OTuIxLOT2MrX
         W/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725336535; x=1725941335;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NiQQIOurN5s0FJRXD43MLGWhBSOLzbp34+DraYLBvAg=;
        b=G/n6/ZtfVaP6F/+yt6/OInKIVumpsqEFlZSQaPZ3Nlk0Ebz5Ohj7Koq9gkrBBr8lf2
         zwpRoHC4Jh8Tiyl+I2fkMFQiM/VZs1s0WKxxVuQxF6ixe8Erm2E2//HmnbC7ID7k4LqC
         LgOjsym3M7uZyBRUughltD1/6L+RQTSL/9/p/2kkxQHwj6eOrCG0nAA+v3QzG7S1ymKZ
         MGSi+iJmxZQhMXbddoVWvkeDLkSVNxrvzUawHxcDJjN+5OzKTNM8/sEy90L29noQity/
         fGYQBX2Iv4NhCDSe/XfHjuxdGdI9QMsQEoKA7bstIUBFbj/C8fYJAon4lx7rMRDNP3M6
         bVfA==
X-Forwarded-Encrypted: i=1; AJvYcCWlD2nXGy0dw5jJyz6b3bQyaa81v4UjS7K4gu5OyNf4V2yim61F/yRL0Yac2Q8tJS+PFj2F9QlRbZO5@vger.kernel.org
X-Gm-Message-State: AOJu0YwYpjUbYRoIxFeEiIs+0RGop3jlZcZBVSDtjLrghTUrvjgMR7rl
	wHrA1ApYl32Ba5LnXWHroQYuVYSrjYoHfnTHPMHBCTBiJysHZAWL8OhlqZo/SoE=
X-Google-Smtp-Source: AGHT+IGzyiuhlkMwYG0YMzdnnd3LOlKnGZxIN1H4tU/WAf0wybOl/XWFUTDfriwcPu5zruQGDsplqg==
X-Received: by 2002:a05:6a00:13a6:b0:70b:5394:8cae with SMTP id d2e1a72fcca58-715dfc76152mr19057737b3a.28.1725336534809;
        Mon, 02 Sep 2024 21:08:54 -0700 (PDT)
Received: from [127.0.1.1] (75-164-215-68.ptld.qwest.net. [75.164.215.68])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-715e569ef39sm7532701b3a.122.2024.09.02.21.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 21:08:54 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 02 Sep 2024 21:06:56 -0700
Subject: [PATCH 3/8] riscv: dts: thead: Add TH1520 pin control nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240902-th1520-pinctrl-v1-3-639bf83ef50a@tenstorrent.com>
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

Add nodes for pin controllers on the T-Head TH1520 RISC-V SoC.

Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts |  4 ++++
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    |  4 ++++
 arch/riscv/boot/dts/thead/th1520.dtsi              | 24 ++++++++++++++++++++++
 3 files changed, 32 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index d9b4de9e4757..be85e3aee56e 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -44,6 +44,10 @@ &osc_32k {
 	clock-frequency = <32768>;
 };
 
+&aonsys_clk {
+	clock-frequency = <73728000>;
+};
+
 &apb_clk {
 	clock-frequency = <62500000>;
 };
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 1365d3a512a3..530648ad64f6 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -25,6 +25,10 @@ &osc_32k {
 	clock-frequency = <32768>;
 };
 
+&aonsys_clk {
+	clock-frequency = <73728000>;
+};
+
 &apb_clk {
 	clock-frequency = <62500000>;
 };
diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 3c9974062c20..834dcd1fe7d8 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -215,6 +215,12 @@ osc_32k: 32k-oscillator {
 		#clock-cells = <0>;
 	};
 
+	aonsys_clk: aonsys-clk {
+		compatible = "fixed-clock";
+		clock-output-names = "aonsys_clk";
+		#clock-cells = <0>;
+	};
+
 	apb_clk: apb-clk-clock {
 		compatible = "fixed-clock";
 		clock-output-names = "apb_clk";
@@ -357,6 +363,12 @@ portd: gpio-controller@0 {
 			};
 		};
 
+		padctrl1_apsys: pinctrl@ffe7f3c000 {
+			compatible = "thead,th1520-pinctrl";
+			reg = <0xff 0xe7f3c000 0x0 0x1000>;
+			clocks = <&apb_clk>;
+		};
+
 		gpio0: gpio@ffec005000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xec005000 0x0 0x1000>;
@@ -393,6 +405,12 @@ portb: gpio-controller@0 {
 			};
 		};
 
+		padctrl0_apsys: pinctrl@ffec007000 {
+			compatible = "thead,th1520-pinctrl";
+			reg = <0xff 0xec007000 0x0 0x1000>;
+			clocks = <&apb_clk>;
+		};
+
 		uart2: serial@ffec010000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xec010000 0x0 0x4000>;
@@ -529,6 +547,12 @@ porte: gpio-controller@0 {
 			};
 		};
 
+		padctrl_aosys: pinctrl@fffff4a000 {
+			compatible = "thead,th1520-pinctrl";
+			reg = <0xff 0xfff4a000 0x0 0x2000>;
+			clocks = <&aonsys_clk>;
+		};
+
 		ao_gpio1: gpio@fffff52000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xfff52000 0x0 0x1000>;

-- 
2.34.1


