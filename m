Return-Path: <devicetree+bounces-161473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 52965A74486
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D96C11B608C9
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 07:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C59BB212B15;
	Fri, 28 Mar 2025 07:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HIiU02pZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A80211A35
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 07:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743147848; cv=none; b=Jqib5oXbGszA1Wv3BdQqwTCP1oOXGHDG44fDwLb5ZYxUdLgrCymkeN8dLxrSv7t98f8nVyhWYH/tI25Y4kkhMsCOJV4xvmrJ/aeBc4iNwIiQhJnyW05KGT7RfVBiRaTA77gv2t5NVpofDUU8Xg3EzWqVE7rHt8UduNvhD8jhX88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743147848; c=relaxed/simple;
	bh=xU4upV0EA41eAPdxIY10JZKK8Lais+D10/cnQHoag4w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bVH0qvfzD3pwVdfuI6plWyXbQW++onwpPm7ICuJNur29yXyjzqe9DeGI6TXTl+leHthZ0gYNy+sxNG5qhSL2vl+vVYvD0SZiNwTe4VM+BKu6pJ1IxcgsRwsMcSNJFOSypivrl2XNE+PhTGqNKy2jJZ729JY39KQV7Obl5OdxhS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HIiU02pZ; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54963160818so2093863e87.2
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 00:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743147845; x=1743752645; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H0VhS/v22NU8eHmN3wX2UOpbzS0x/EJicz5QW5NMbiE=;
        b=HIiU02pZ+QXjps13hil9nLUsb3JhTqSnU5G82a0cSS+l3qAOmMuD8/HYwpTVeRwe8L
         9WoZV7ucp7IXqYqgCHFvsZCZgA3+L1NnMSvhVHFcoSkYgSs7N2CU5CS0cErfzG3+BKZH
         dvWV1BHwI4ZLzYzojr5J7CDPMiaKjgMU8JLM4xDJHJJKcW9FHEcNZrs6sv1LOaHqkLwX
         B5F3T0IfoeA1AqyzdaDyCREwL9IECL8ct7RUm8LJRGc+vztnqUCHwK0qgeHxan5ZIYTm
         uG/3zzR9lcMpMZNaRPizQ4V+l38Vqq2hQgnVBlHWmMudSw28wyQ3Wi3PbD1XI4iqKPoP
         g3/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743147845; x=1743752645;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H0VhS/v22NU8eHmN3wX2UOpbzS0x/EJicz5QW5NMbiE=;
        b=Hp67slBxEwmlDMJ6DxNxgsqKUvndPiVT/f/mlq848E3SeUq0yM1qZM8oZn/dF+YUNI
         f13ohOlamM0FrFF+KwFk9irb+zSeMbQnxJ0jpjl3wZmmRXlDdEOuKSItelpKGttPZ8sg
         fUFg333Oufr3WHkbysFa5w3dr5z5Kb1P5312RHmsv7eStmbLwu3XNsx5InktzkPZuzhF
         ixJl4yNZ7NBJXX2tOH00QjVDp9muTcEm+pkzCV99pdkd3podU+HB04reC+cL3NOHbUwd
         FxLmZ9tkuBeB9CLds8LSAA8Os6AN/8uD0MInsdE3h5kN2wKZs5eiL0dzISRHvYg9kkIw
         P5fg==
X-Gm-Message-State: AOJu0YyjbU2m9BgjSKI9jue3HvievkxMOqd8YEKH46rIZy30W2YbKvlm
	6lxaE39PomkRJU3SRB77KasYfIyKZN13eax36IFbtxyw358RQMy3ppUZxNANL20=
X-Gm-Gg: ASbGncv0BiAjUdaVsIiNZ1oA4gSLuinVZlNOsP1A+bCTSQmp9t6baGjwLmCfkNb/Rwc
	6Tm5mCKWjE9GzK+phPyJHevjZF2ayQIfPjbezoE7G1eN+0ttpN7IFvCv9xUKDjtjkfYcVTt5Cwx
	XciUyEAWvA3JAGSqHbfX9ZVlxL7gTOQneJmXbY5Dkx3AsB4s1S7RwMU03GRXqHIienUXahG5SHT
	VxmmPT4VOztiBMzCe0MPHZdmTLSWdZcJemOfA/OxW1Q9HvsJLQg85ZENgXIECNslQPd3hN3Gz1j
	rfU9iGL8JniUiGow4tb0SAjMu+6V7KiK+ZCccw5y0PLxwO9InBPU/giqrtlJds/F0A==
X-Google-Smtp-Source: AGHT+IFqexEpUV8AIrXmhig8TO6o/adeivq1AYJStXwRnF5UkTeMDdMVIJ/YWHWaksBob2pUlYpnUA==
X-Received: by 2002:a05:6512:10c4:b0:545:60b:f381 with SMTP id 2adb3069b0e04-54b011dceb2mr1996778e87.29.1743147844697;
        Fri, 28 Mar 2025 00:44:04 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb32esm215589e87.26.2025.03.28.00.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 00:44:03 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Mar 2025 08:43:51 +0100
Subject: [PATCH 01/12] ARM: dts: bcm6878: Correct UART0 IRQ number
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250328-bcmbca-peripherals-arm-v1-1-e4e515dc9b8c@linaro.org>
References: <20250328-bcmbca-peripherals-arm-v1-0-e4e515dc9b8c@linaro.org>
In-Reply-To: <20250328-bcmbca-peripherals-arm-v1-0-e4e515dc9b8c@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Olivia Mackall <olivia@selenic.com>, Ray Jui <rjui@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 Florian Fainelli <f.fainelli@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-crypto@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

According to the vendor file 6878_intr.h the UART0 has IRQ
28, not 32.

Assuming this is a copy-and-paste error.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6878.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm6878.dtsi b/arch/arm/boot/dts/broadcom/bcm6878.dtsi
index 70cf23a65fdb5ac7ed9eabc986f4ebb4df263c43..cf378970db08c05c40564a38931417a7be759532 100644
--- a/arch/arm/boot/dts/broadcom/bcm6878.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6878.dtsi
@@ -137,7 +137,7 @@ nandcs: nand@0 {
 		uart0: serial@12000 {
 			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x12000 0x1000>;
-			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&uart_clk>, <&uart_clk>;
 			clock-names = "uartclk", "apb_pclk";
 			status = "disabled";

-- 
2.48.1


