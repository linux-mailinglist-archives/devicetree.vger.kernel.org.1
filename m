Return-Path: <devicetree+bounces-163443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2904A7CEA2
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 17:32:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F46F16DFD7
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 15:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2AC122069F;
	Sun,  6 Apr 2025 15:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TBp39DWI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E40E4A24
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 15:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743953571; cv=none; b=hsjvCfbBuCUYtimyEGleTBghUZ2g8acEwBf52B4/2Oxwl0xYKXaWgB9kIfAy3W3tgIqGfzUMKZGoccEIYFbavVMto4iVYRrRau2QolmrvtPFXGdma4ClAJYNYwlU7MPuu/GF6e6AWzs6lzN8+uPWfkKmxjZGqa99JWgwaKT2Siw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743953571; c=relaxed/simple;
	bh=NRCTuI/9+TNRF/ljcgOEbRYIJbVO3GJW2faiktXcuFE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IU0R3n/puM3XWu98MVXo1N+GwbOOiwispuNhFVstScQpYSDZn6tshmHeXqayCufcKpjXWEMtXm7ugsSUrHpZFkMOpHmiZQK6d9z6SzXIDUKf1RqYIQ+gr6dJzjrkZpt9jUSc4j2ccyJs2xJn96o/Vdy/LT+M5GgTDgbXvM892uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TBp39DWI; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30de488cf81so38215491fa.1
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 08:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743953568; x=1744558368; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ejx7UzIy/ha4XsDoZ22DLZHvDBVGCnO/qaRmPG94r1s=;
        b=TBp39DWIB+FTrZEoprqgyk8u9cVIoHkxr3Az0fRxtUH2C6bDyIhrjSAN0cDP4SZZ5k
         NUDhc7bAytY1qpjn7hwPbbQyezuyre/Pkzsnv5XAE5Jgl0QMAy9Vuk4nsYMx7/X5K962
         KPmayX/S4WGse/2Atw3N7lTI3feOVFJyjweblXlP8TVr8kMTFumSJHMaGVT9waLc4KKZ
         ptZ/eGA1dfP5Hkqy3XylMWh2RF8zzHe8rr07+j2CgCv6T8DoHsX37puYjGCVA6Iflyyv
         wl9aHZscxbQaBID6B+t8e+GcyLokW7137UEEiyqUezegP0rgf/XJrMyQvoF6+xBrx+D7
         P78g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743953568; x=1744558368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ejx7UzIy/ha4XsDoZ22DLZHvDBVGCnO/qaRmPG94r1s=;
        b=QpAisWZE0l+v5ey1WZyqGdGD274DFS2olwX7iwuS54b481j6fgR+YJaVnEub+TYf/t
         p3OxH8cd/0du8R6yUYFP7KhCR0DQX6uNgZg4EwUFjtLScLHfByl6NNdC+PtR6KommdPL
         KmhVVoB0oiOjy1eg+a8uK1STp2FPjtWnJUdKDO3jbm2CM9qx0XPVIZ8q6MztFm8vhyqu
         K5wJjZ1hNVpDzCqn9UvHbw3hZzW0hyopovPvw9rquHVmQTYBVuFaGlmS4ZiwuHXQoi59
         QOd9felpNyeZnAeOUJiHghFDnA8AImOSTY7VEis5ezmND5ou4xKU9fv/llYo66hy26Kn
         6Mqg==
X-Gm-Message-State: AOJu0Yye9VpXbIqOEBPpZ/0WlzEbNEETkBn+Nb9Boh6cQIfTke85skuc
	3AbNvcxJazYVo/uKMlwxC+KvLxwRHeVFFYAD0iaRFoc2rAzRgb+sFDX0Mxx1lNk=
X-Gm-Gg: ASbGncuj0F9UQM9V1HnmQZMUIp3f4V2QAt/tU421ZM6pRtsDLANQBDrErOzYQPf52vt
	qwZ7ENEykOr5CvDWkIeKzS+gwS8YhB1zFgLeW/7SsWYI6nL41btNXET5tL90rFaLbtp4dgXnk2f
	sAIfIQ0mrop2nbIm7+wxXcBt2JdSBw27Hsvc3RnhksD3BAnZTpN7fAfxT4d3pGhq0UEfPD1CHvM
	I/eeEeDhZIuZoU2Rkmoah/h1B17knsh9ocMTLAoGyz3OtNmoHOGKO27Ep95z9bvSF4uWUsv+Ss6
	9+zncIRYG4OTUQw5tCO6MdQVG76gYgLVK6x94Zrtuqx7+FGs6uAnYC8=
X-Google-Smtp-Source: AGHT+IG4UfmmllvK8v3gDCB/1PCYbzn5UK3BAxYEZRnyxkcG0076NiwRReAE0eyQC894t+mrcq9ZWQ==
X-Received: by 2002:a05:6512:3510:b0:549:4e79:d4c0 with SMTP id 2adb3069b0e04-54c298480f7mr995890e87.53.1743953568149;
        Sun, 06 Apr 2025 08:32:48 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e671fa8sm989747e87.218.2025.04.06.08.32.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 08:32:47 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 06 Apr 2025 17:32:43 +0200
Subject: [PATCH v2 03/12] ARM: dts: bcm6846: Add interrupt to RNG
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250406-bcmbca-peripherals-arm-v2-3-22130836c2ed@linaro.org>
References: <20250406-bcmbca-peripherals-arm-v2-0-22130836c2ed@linaro.org>
In-Reply-To: <20250406-bcmbca-peripherals-arm-v2-0-22130836c2ed@linaro.org>
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
2.49.0


