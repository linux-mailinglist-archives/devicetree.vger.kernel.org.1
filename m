Return-Path: <devicetree+bounces-176295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1C5AB369C
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:06:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 584AC17E3C5
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F853293473;
	Mon, 12 May 2025 12:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yiEjFc0y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2052229344E
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051558; cv=none; b=RphtJ5blg9zRzCijFebWDHfff1zfG+5Dx/TTEXm8Pl+iZT54h8peDUC9fAvCbxMCx03vme5ysxsB3xCWVq13LqhUifJFa9oA6Krso0iYZs6/NUiWMLi4n4gQ75rj8DkPkJ8gk5IpGV5r3/Tv/p++TM3qWy8uQjenfw9tMbZgzI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051558; c=relaxed/simple;
	bh=fX35407DGM9sCZxTOq78dYnEd4V42rGAm0XPIvfpasU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V97O0k/dfVNLIylENiIJaoVbQJLkqRrKQfIufXegG9FyYybmgp9JycvWaISvXEQL7uKpITuyCTqx0XzUxK4vbtP1X2HzqRT5/oQOzsn+oTBWf/RaKtvpnQmwIMSvOCg21W3Ue0e8+HnV/C577Q0XrxVaRQOJ3+HHaJKXX/UNHGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yiEjFc0y; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54d6f933152so6040817e87.1
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 05:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747051554; x=1747656354; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eMW8ZYmbAyYveksUpaECxL5x4y2TvNw5k0vzt9tGwik=;
        b=yiEjFc0yctOo1esm3FP33yMREoJws1ZvUuYbG2tZU0ZbI39qqzVJddM/5tastfP1/w
         WR2DdqGP3KCLhCkvZ66IqzybdMDDC4Gx6ntu2LMYZBQOsnRFrOYTOlIAW0BonmOXrZ6a
         kD8e731nquRNhCWvn2UoRAvgGdWeTwstwGv9+KjrFr8ofJmQxv2zOuNxsA+0NyiVQB1h
         fmb5G8ntHkAbvUNLe0T81GwOgSx/9zCmW+sJcw3cr5UnQff0To8tQoQQelCk8Ac+TTLQ
         PFfo4WDLU2w242ONpure2kaGEIx4RqdgR8EajJu+dsKXcPZfEjUVAaYp3a2h7uMB162W
         Gudw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747051554; x=1747656354;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eMW8ZYmbAyYveksUpaECxL5x4y2TvNw5k0vzt9tGwik=;
        b=bI/Rp1XbzQCsO2OhU9yDQwkvqftlF0X1nAnWCIkhupvUWIW4mY8N60dWy1OMRP6ysI
         G43iBYD2P2Ll83mJLgpvwPGgV+q1x7IXbVqIrHkrp0idykGKGNfjmtIrw4Smq+r6rJIw
         46459Uw93K0Q2iGMz4MGZ4gROtdBZm4bboelU7kjPa2wi9c/Y7TcrFKoMfLU5W/yKv0T
         CREkGzPIAurOniItxCc//G3XjjNswA1pFpbEvWkL+zxyUrhWFGvhBAVZZpVI15UZTz1e
         ftz9Ez0TCQrfZpmrmfLEpkfDUDBpx6Z4dLsRpeLNJvi7lZz1icazSec1C6X+KfxBZC3F
         HiFg==
X-Gm-Message-State: AOJu0YzvITMIgZsm1lho6iAacnxjxyfeyr7Y3YRWG4HdQFi7pOq+KgMp
	ezVgJUw97aAA8fTITP3vqAlWmHjli9LERfbxTUeYAYOnVyq0Hoaqrw4E7VfVkGY=
X-Gm-Gg: ASbGncvgujZ7eIWR80odtPbx+kLLsUQi0LkhUETTuivywjPzPfhr7YhSt12JGStjeOY
	pGv9pgDCyE7coOUWpyHOQC39vMSxW1WMu4G/F1HeecEJi4ZROUTWzY+MxRSez304HnN0CAdMYck
	IedjjIyNw4rZT9isSFIG/LHRvbOhj4AJ+gPjOacKjK3zX0PeozmwnxvLZqXxcvwvyUfwKgBiUAE
	3sp2BTngFr1NTTrUM5EyJp9gmiKJs+VxXlqsBUN0VAbhIrHO8wUYSgDoKL0MzsXmk1lQ2wMeZfO
	BWlXgVVEx/60QdVFfDn8sBiEzYYauoyPV5Db/ZuxNoc41qxOIMynM99urGECeA==
X-Google-Smtp-Source: AGHT+IHxb2O+hRExT7wJM0hdL0T4Go9j50fqYlAT256TZUreuKCMSBufTsDqXxN7OMd7gcH+p4r4lg==
X-Received: by 2002:a05:6512:228b:b0:545:2b68:936e with SMTP id 2adb3069b0e04-54fc67c8ed5mr3411723e87.25.1747051554236;
        Mon, 12 May 2025 05:05:54 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf8a3sm1466033e87.189.2025.05.12.05.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 05:05:53 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 12 May 2025 14:05:49 +0200
Subject: [PATCH v3 03/12] ARM: dts: bcm6846: Add interrupt to RNG
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-bcmbca-peripherals-arm-v3-3-86f97ab4326f@linaro.org>
References: <20250512-bcmbca-peripherals-arm-v3-0-86f97ab4326f@linaro.org>
In-Reply-To: <20250512-bcmbca-peripherals-arm-v3-0-86f97ab4326f@linaro.org>
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
index e0e06af3fe891df3c3d8c2005cf1980d33a7762b..f5591a45d2e4ad64d8f95680aea327771825252b 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -196,6 +196,7 @@ uart0: serial@640 {
 		rng@b80 {
 			compatible = "brcm,iproc-rng200";
 			reg = <0xb80 0x28>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		leds: led-controller@800 {

-- 
2.49.0


