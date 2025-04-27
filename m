Return-Path: <devicetree+bounces-171267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 154C3A9E085
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 09:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BACC5A7D80
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 07:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85A782475CB;
	Sun, 27 Apr 2025 07:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Y15Qem27"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629DB2459E7
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 07:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745739854; cv=none; b=Lromox0XSVDR/7ja/PSzb9Ml6EZt/CYGqseJfDWvcjOWR6z8mQB0PmPl3MU2hnXycXuN2mUOEItehvsw5jSvklpt9sRsinBZH3Rrv5NjoRnQm5Z+ChbLZy9SeSoBTGsJhcHnRWzKUWxpdX5q4bctKUDgKuSNidtV65gcuYdZEh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745739854; c=relaxed/simple;
	bh=Fjn6a5R/gNqLw9tBNcBsmfV8WKgMwXQOeIVdmxwfqeg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sr/0i7p0BsC6GhnWyQ8XyON2kcRm4ZCKfowXdH8IU/mPghuy8nxJSiBpT3OApWD6WBTQx4rxt7QcqRQ1ARs8st3D0ROVQ3T7qoeurqqt0Y1uETsbos+ujnltx03Cvt0pFoFRLKW/vmiGTURiLmgVOZL3NqbdoZdeQZtA1Werg/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Y15Qem27; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cf06eabdaso33797535e9.2
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 00:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745739849; x=1746344649; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=noNFGyMHn+G12oU3fMyt85bZyrL7/rnSlw7jXK1JU9I=;
        b=Y15Qem27ddhRP2qxUM7QnLXQijXb872fokV0xaYfYNRj9FQIwLo3jdv4VvwfQ5bxLP
         WYFzdeMfa/MN+Ta4g6FcRNRjQ1NlaZMKUmmQ6urt69z/TPbyT0lmiL2h4/x+p+zudWTa
         02SzXHZ2QVL00pDkjhWTRSItawnezXk41NKkU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745739849; x=1746344649;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=noNFGyMHn+G12oU3fMyt85bZyrL7/rnSlw7jXK1JU9I=;
        b=Qy3wg6UScBo3jWdgLc0ahKLO8psRIW8lLzvs8OI8UjF/VMuHZY3806RvbJXqp+W2NK
         lC0gr4X/mbK6z5Q4AK0TxSGa4ySXSThFnS61KdLB+/6+V9ObvGc6XuWyxkgFm7vLoCAP
         mvGEV89luwKzf1r1N5F8Qzo2YqoeZCCPXZ6hhqPfWdyjyr5J3DdSpchIiWFfhO1RZUm7
         jceFs8Infp3G/4S9Fbh2NYm93ym1hySwXNf0XE7jUK0XO8w2CnmBUlfsFPLTdS/5yeyw
         SywRLgK3baUf0hubAhmp0zHuvCHFipPX1UT2kCf64kHk1o3kNd67AqAXL4QGj2jHXrqJ
         4xtA==
X-Forwarded-Encrypted: i=1; AJvYcCWjyiMQAlCmgHkpPJnW+4cOCYkOOgOuULvIMzeXLlLmgiMlp0+f8VZ1QG2McRZTXcleoIDUQIaKCBfg@vger.kernel.org
X-Gm-Message-State: AOJu0YzSiJDd9ytMm+uMmxn0R5+s9xL7BJQSMDzg6a+AGNcj7lM/OyyF
	Doa/OHelxsMvPEJi7JFnkX09PQjvEN3rv89/pXZNy3YPo/1sFpPxFMi+RIOhtjw=
X-Gm-Gg: ASbGnctHIbD/FMbCPqKDzTYBtim9onoBRe+yKed6I9Wo4UTFLqnJkiKr5Tv8bk4AeWj
	pit9WYHdpx9SkMRDJkAiBGrnLe0ULforrAbOlZ6a1BhaAR5oBX6+ly0VJ208lpKyQHKzRSHwZHU
	+4HY9ZTCcFZLBXD/DPP/flsuH6dBjP/JqboCWAX5OPWlxBbS2ECgQpsYnDM9cVkYj2wRpyudnRD
	GUFu6C/EDQe2E0JlmFq9waXsN3Dek1nv7BP74S3SZczrhE4alTKXsvTNNLbdiUFmKlLN/acGNtm
	fpvzFRabK1LtT0SVcF0SBR6M2yQ69ppbxPyRYTH2/IRtR6q9fYgPzy5r916/0wyyGMBCenVGxvj
	Fe0wyW3yOEza+YIz6
X-Google-Smtp-Source: AGHT+IH4VnwQA0G2EjuoChB3GFw2EN00/9sNtBiR6r7qJ1qzu/LcPcmBTKtOPPgOwsnIXhXKwnF/jA==
X-Received: by 2002:a05:600c:524a:b0:43c:fbe2:df3c with SMTP id 5b1f17b1804b1-440ab845dfemr33087695e9.26.1745739849570;
        Sun, 27 Apr 2025 00:44:09 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.180])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a52f8915sm87682015e9.7.2025.04.27.00.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 00:44:09 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 1/8] ARM: dts: stm32h7-pinctrl: add _a suffix to u[s]art_pins phandles
Date: Sun, 27 Apr 2025 09:43:20 +0200
Message-ID: <20250427074404.3278732-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250427074404.3278732-1-dario.binacchi@amarulasolutions.com>
References: <20250427074404.3278732-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow expanding possible configurations for the same peripheral,
consistent with the scheme adopted in Linux.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi  | 8 ++++----
 arch/arm/boot/dts/st/stm32h743i-disco.dts  | 2 +-
 arch/arm/boot/dts/st/stm32h743i-eval.dts   | 2 +-
 arch/arm/boot/dts/st/stm32h750i-art-pi.dts | 6 +++---
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi
index 7f1d234e1024..ad00c1080a96 100644
--- a/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi
@@ -198,7 +198,7 @@ pins2 {
 		};
 	};
 
-	uart4_pins: uart4-0 {
+	uart4_pins_a: uart4-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('A', 0, AF8)>; /* UART4_TX */
 			bias-disable;
@@ -211,7 +211,7 @@ pins2 {
 		};
 	};
 
-	usart1_pins: usart1-0 {
+	usart1_pins_a: usart1-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('B', 14, AF4)>; /* USART1_TX */
 			bias-disable;
@@ -224,7 +224,7 @@ pins2 {
 		};
 	};
 
-	usart2_pins: usart2-0 {
+	usart2_pins_a: usart2-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('D', 5, AF7)>; /* USART2_TX */
 			bias-disable;
@@ -237,7 +237,7 @@ pins2 {
 		};
 	};
 
-	usart3_pins: usart3-0 {
+	usart3_pins_a: usart3-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('B', 10, AF7)>, /* USART3_TX */
 				 <STM32_PINMUX('D', 12, AF7)>; /* USART3_RTS_DE */
diff --git a/arch/arm/boot/dts/st/stm32h743i-disco.dts b/arch/arm/boot/dts/st/stm32h743i-disco.dts
index 2b452883a708..8451a54a9a08 100644
--- a/arch/arm/boot/dts/st/stm32h743i-disco.dts
+++ b/arch/arm/boot/dts/st/stm32h743i-disco.dts
@@ -105,7 +105,7 @@ &sdmmc1 {
 };
 
 &usart2 {
-	pinctrl-0 = <&usart2_pins>;
+	pinctrl-0 = <&usart2_pins_a>;
 	pinctrl-names = "default";
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/st/stm32h743i-eval.dts b/arch/arm/boot/dts/st/stm32h743i-eval.dts
index 5c5d8059bdc7..4b0ced27b80e 100644
--- a/arch/arm/boot/dts/st/stm32h743i-eval.dts
+++ b/arch/arm/boot/dts/st/stm32h743i-eval.dts
@@ -145,7 +145,7 @@ &sdmmc1 {
 };
 
 &usart1 {
-	pinctrl-0 = <&usart1_pins>;
+	pinctrl-0 = <&usart1_pins_a>;
 	pinctrl-names = "default";
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/st/stm32h750i-art-pi.dts b/arch/arm/boot/dts/st/stm32h750i-art-pi.dts
index 44c307f8b09c..00d195d52a45 100644
--- a/arch/arm/boot/dts/st/stm32h750i-art-pi.dts
+++ b/arch/arm/boot/dts/st/stm32h750i-art-pi.dts
@@ -197,14 +197,14 @@ partition@0 {
 };
 
 &usart2 {
-	pinctrl-0 = <&usart2_pins>;
+	pinctrl-0 = <&usart2_pins_a>;
 	pinctrl-names = "default";
 	status = "disabled";
 };
 
 &usart3 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&usart3_pins>;
+	pinctrl-0 = <&usart3_pins_a>;
 	dmas = <&dmamux1 45 0x400 0x05>,
 	       <&dmamux1 46 0x400 0x05>;
 	dma-names = "rx", "tx";
@@ -221,7 +221,7 @@ bluetooth {
 };
 
 &uart4 {
-	pinctrl-0 = <&uart4_pins>;
+	pinctrl-0 = <&uart4_pins_a>;
 	pinctrl-names = "default";
 	status = "okay";
 };
-- 
2.43.0


