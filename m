Return-Path: <devicetree+bounces-111135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 948B299D5E8
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 19:55:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0071FB23715
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA3731C7287;
	Mon, 14 Oct 2024 17:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="TRbdopvZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587061CACD8
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 17:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728928477; cv=none; b=iLN41uAxqhWfLgtjZn8GAOJaxPYezPA+OchXylm0TE/xA4wh5tGMWvVzFMSQPXPGTl26bUXcRnkRpXWzAuTxDJZbDmpzxJ5BeTJ/H9B0Hd9grSPWrS+Huo85nJ0JNkxcINL0jPRjipLrkktNuffq/iRJytMnJ3e5FEVOnzvnu2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728928477; c=relaxed/simple;
	bh=TVhWs6vB7ybfKFG5z7MLv/MoUtDbxorMqMtMMbZ+bgM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VhoZM6ngiRSgIImLXT9ORMZqX+WpBjkEw2cfGG8nN5wcjVNVv2GRD8a7jy4yRCZTzQTg9wjaxZBO3CxzcLPoc+8Ns9MITVRY7eYp7O+bLUkQvyr5lgE621bFZuSIuHMMz1rD+oGYQtF9sd+EpcCGWdCGz/R7++P8MBsh8LR+T6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=TRbdopvZ; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-71e57d89ffaso1211866b3a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 10:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1728928476; x=1729533276; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I0zit6gUQKo2ZMxFYqtl0909LFUrn7ZGPPwMzt0NP6Y=;
        b=TRbdopvZ7c7VTQ5ZXWBIu1O0FNLu8aqSiVVG+WsseuqR5aXXyPOXooUk7aCnSPBjtF
         Y0fB85VCUjH3OIMkbek5AmBCZpLRdHVeF8LxKi3Z2wcIF9g4DM1H8y/XfrUlU3kRa35H
         cznPrtIKNLUGHp9dIcD1nUuydQHPyL0HZ6SxDtvab37GnjCKi1piB/y5aR9q8gQFPfwX
         eWi/knKivFWVBf6tevezTJkWzcYt9v+xXbz9/QNSTI0PvK3sVKkx7rbixL/akJs2Fq7d
         hwWaCux/4AXoaeauu7MuCHFMWLlDui7dS2NCQDYGE2bT7XyAc5c7WZOxTWbFRUaHXX0s
         fOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728928476; x=1729533276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I0zit6gUQKo2ZMxFYqtl0909LFUrn7ZGPPwMzt0NP6Y=;
        b=oOB0Uav59uGR5Qab4EwvLztcuALV0stWS5il1+wa0uURKY12Kj+x5OYswGOUAmANDP
         Fe5uUh9rge1FKTixGADXbIrg1+AxnxU3JMZUuLeFoQcd6PIEuc3AqiDXeOp0+n2myaUv
         dvbHJUJBFRLR00MAbDktwFe462iG7mmpfpiVBy62iJqUkI76Qg3zMPkLauC2JRPibiAm
         bkYGSv9BNPQvqZ1uaQXDyp6itKeurrpyIIgJPHN+VU1wvh5VUO32ITHK24INQQOBHLh9
         +gOG7tPDd5Twx2kBTnQTgwATaDpnmW0FWz8CGC3RdR0Udq0zq/t64qULUidhDwKOGH7/
         hQEg==
X-Forwarded-Encrypted: i=1; AJvYcCUKd31vbASzxyMQ6B9RB+39knwT3SvTqxwsJb1a4Wb5QXcuV/vcnUwrnK54B78V5NP0gso2dB43iHZx@vger.kernel.org
X-Gm-Message-State: AOJu0YxaM0qL+WaU7/Fc6ICZGCQhSrGTW4hr3G/5dNVSBFdb7NAfbDDW
	hc5Sx+ZiZPeoMFIsa9pWeY1o5nROS34aNNDugo8hlX4XHF2WgWnIz4aAUkNY3IM=
X-Google-Smtp-Source: AGHT+IHmZ8spKfjJSaHqojJMyLp7o+oDaFg/XgT/pdZy0pW9OWdLo+u5au4zboUexFynK3K/7hfaog==
X-Received: by 2002:a05:6a00:856:b0:71e:587d:f268 with SMTP id d2e1a72fcca58-71e587df456mr10082998b3a.4.1728928475702;
        Mon, 14 Oct 2024 10:54:35 -0700 (PDT)
Received: from [127.0.1.1] (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e49a7e5e7sm5611109b3a.179.2024.10.14.10.54.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 10:54:32 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 14 Oct 2024 10:54:20 -0700
Subject: [PATCH 3/8] riscv: dts: thead: Adjust TH1520 GPIO labels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241014-th1520-pinctrl-dts-v1-3-268592ca786e@tenstorrent.com>
References: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>
In-Reply-To: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Kanak Shilledar <kanakshilledar@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Drew Fustini <dfustini@tenstorrent.com>
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

Acked-by: Linus Walleij <linus.walleij@linaro.org>
Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts |  2 ++
 arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts  |  2 ++
 arch/riscv/boot/dts/thead/th1520.dtsi              | 24 +++++++++++-----------
 3 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 497d961456f3..1a4154a6ff3b 100644
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
index 7738d2895c5a..58ad381fc1c3 100644
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
index 9c6cbb4fc3d7..31725c3a13d7 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -323,14 +323,14 @@ uart3: serial@ffe7f04000 {
 			status = "disabled";
 		};
 
-		gpio2: gpio@ffe7f34000 {
+		gpio@ffe7f34000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xe7f34000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 			clocks = <&clk CLK_GPIO2>;
 
-			portc: gpio-controller@0 {
+			gpio2: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
@@ -343,14 +343,14 @@ portc: gpio-controller@0 {
 			};
 		};
 
-		gpio3: gpio@ffe7f38000 {
+		gpio@ffe7f38000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xe7f38000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 			clocks = <&clk CLK_GPIO3>;
 
-			portd: gpio-controller@0 {
+			gpio3: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
@@ -370,14 +370,14 @@ padctrl1_apsys: pinctrl@ffe7f3c000 {
 			thead,pad-group = <2>;
 		};
 
-		gpio0: gpio@ffec005000 {
+		gpio@ffec005000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xec005000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 			clocks = <&clk CLK_GPIO0>;
 
-			porta: gpio-controller@0 {
+			gpio0: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
@@ -390,14 +390,14 @@ porta: gpio-controller@0 {
 			};
 		};
 
-		gpio1: gpio@ffec006000 {
+		gpio@ffec006000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xec006000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 			clocks = <&clk CLK_GPIO1>;
 
-			portb: gpio-controller@0 {
+			gpio1: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
@@ -545,13 +545,13 @@ timer7: timer@ffffc3303c {
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
@@ -571,13 +571,13 @@ padctrl_aosys: pinctrl@fffff4a000 {
 			thead,pad-group = <1>;
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


