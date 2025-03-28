Return-Path: <devicetree+bounces-161475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F100A74494
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:46:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B483617CCDA
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 07:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D717F211A1D;
	Fri, 28 Mar 2025 07:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wT6MA/Vn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09578211A05
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 07:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743147851; cv=none; b=pVl2LViG8adMon/HLfJ6lwrVC1nna0OCluPidWw6B95xQgfBB7kDnEupifqBKqLyq+eUbHURTNgv/8BZRmztovD0cM97N33vtGYg8j4Ecd1ph9sM8fpJLNuOG+H+VwW3wLGLdHc/eAyeuxeXvImQ3M0NWVB4igMvde0KnYQS+Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743147851; c=relaxed/simple;
	bh=7JeZQS+D1n+0/R410HAKHsJwf40ODPGET4YSYKT9VP4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WPVELZwM/nv767DFbwd3O47Ex6pftpbq3Im7JDIkdCRmeqAL7/AzmDQEHCW0pNg66sQhl0kW066aZ5TNIYOk2n5xTjt0FbOSk0jHptr8l0eimFYLKANqxqShAuh6PHot/D+ObK0Vv4JSNiIjy1OyIMSi0z09V87gFnSjpK1Z9Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wT6MA/Vn; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54298ec925bso2801391e87.3
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 00:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743147848; x=1743752648; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XEirBUBZll/2CNmNMKcH5j/pk8NKD9yNsuFDYjiUshY=;
        b=wT6MA/Vnf2Mz3HgoIxFDVWYRn6KAsgnspgh88XqhCbYUQobY7Q7z9eI98K4Yfotc1v
         Wap+r2AUuFZQhuOiyHlTd78+kbplZPSii/2EsyVflSSA5xV2c+1OyMXOLl2tiUtsUomq
         /vOxfMUFNpKbbIBRuYRTu5d56Qf3vYqXHtIC/YCsujVU4n9V9YGcMLkJNl37S8zR/cs3
         z2Qkv8hfJJcX6sHq3wKx1LyobYNLD/rG/fTriDiPXWN017VzNg9PIJ08GdHNAsfhRotI
         X1KqnhQ/P2zpewMxpriQS6qkBHBeuBh+FN13j4hIQxQ45dnbPrQcSyCriBPu5K8FuBAu
         dW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743147848; x=1743752648;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XEirBUBZll/2CNmNMKcH5j/pk8NKD9yNsuFDYjiUshY=;
        b=P8CzCu4nhyn8b0Yzo9ky/fQBY5hMcAeI3VhDT7+pOojA/jSx7L4uDbd5Hjoq4ybEc9
         sgrac/jnXyMFr8uHOMyAO6FJ6PQQau4hnAl2UbaXvbHFqgf0g9bOEu3A05gkDZqaeyMZ
         5rrq3isFmhMmN5ViqQjE7DsYhaoBduA4OumPdTGrbXhpShLkz8QSoLYnDs7k0JixlD+Y
         7wzvlpQ8ACctPcwC93K+QSay2AOoBiu6DqwmJ00vXx1HhI6Y0p25i/R5bTctshe+7vAc
         MsuvfQdOzvrwk2Y1QReC5a8DpIw+LNRCtlxeLJErUk1i14vWbtuS9AaxKbF13MqPPvvl
         JNaQ==
X-Gm-Message-State: AOJu0YwOy4DMhHoJ9nuy3bl9mOUBiEgdgJafdC81gFf9qbHi1pVGG1nX
	AvElNRi63h/HsIBJ79LA2DDVGOBbaIinAuDMCUyCp/wnAtouERP6IXFTATM7cp0=
X-Gm-Gg: ASbGncvIZwPFBW0SOr0Az+sY5q/dWul6LUXA5kw8rXJi+gYGDTAaNZKWneaWK89IZMV
	mCxOl1yPTjrquLBd5PGlsPm/kCP/VGDgi/eUYoO/P3mDRGt2WITIvIEa3n4x/OeJnQ07dMnrCPF
	SGHBVOE/KIyeHHzqceB1XEBamJ080KtjSUTKmpqUD4iZ3+e6wn2UA/1+3M/mXq1dsHBmnx26bMY
	TcwR5uJ+qkwnLPnYsuLUEjh2oWyUWvV6MPmCbwj2caHzkPvmj22uZ7+iIsdTV+/D4xMpqGQTMIC
	a4sscsH0uj1TS8n/CiMxAQ9gv89QNzSwa6/MT9rmk8v16ji/YcebrAw=
X-Google-Smtp-Source: AGHT+IGZ7IwtSD+rsiwYaWCAmSHkc24I3XE28ZvKsRaUNPPNFoNoNkWcCp9SfiyRprQhmO6Yvld/ow==
X-Received: by 2002:ac2:4e05:0:b0:549:6cac:6717 with SMTP id 2adb3069b0e04-54b01273163mr2319734e87.53.1743147847926;
        Fri, 28 Mar 2025 00:44:07 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb32esm215589e87.26.2025.03.28.00.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 00:44:06 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Mar 2025 08:43:53 +0100
Subject: [PATCH 03/12] ARM: dts: bcm6846: Add interrupt to RNG
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250328-bcmbca-peripherals-arm-v1-3-e4e515dc9b8c@linaro.org>
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

The r200 RNG has an interrupt so let's add it.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index e0e06af3fe891df3c3d8c2005cf1980d33a7762b..d36d0a791dbf4ca3442797691957c3247c7187e7 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -196,6 +196,7 @@ uart0: serial@640 {
 		rng@b80 {
 			compatible = "brcm,iproc-rng200";
 			reg = <0xb80 0x28>;
+			interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		leds: led-controller@800 {

-- 
2.48.1


