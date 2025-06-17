Return-Path: <devicetree+bounces-186610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA771ADC854
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 12:31:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22E1C18990E6
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 10:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E75922D12EB;
	Tue, 17 Jun 2025 10:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="DW8PsgBk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364522980B3
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 10:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750156267; cv=none; b=tbFMmZaFV0r7texlQkL2rc+0AL5wYYsxhXlG9z2+20IQwW77mFu/e3tb8yOW8nU91bI6ojN7sq+FrWei6G1D8gIFi2tOpbcWGvjyxjH7XMRdDjp6F1RqM8pgTJrpNma05RiPTzWEkeG8chFyMQkS7jkoDn8D7eYZwvIj2hhymd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750156267; c=relaxed/simple;
	bh=xXOn0HsXOLMhwrK8hxGYgemk6ajiFApPGs1BV9Yy8Ao=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UsF22IaudaQWLCd3t/G2aT0TZWZqt+EM75HZwEKn7jhYUkk+6vKiWQi+zplR/d26fMSZ5+qArvYtTg1luqHmLzFTYnM/14wRsKbKrwbVXFp2ih6C2X6EEVIlB44/4ITR6wkphMltBN74PuW/xOlHzEhG+kqkeUJOa63bgGsVnww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=DW8PsgBk; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a54690d369so5640028f8f.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 03:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750156264; x=1750761064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SGE4KFMiA3w+V5SFnoNxn7J/yaSX/gETYA3wlTGQnvE=;
        b=DW8PsgBkOktu4zdMZQLQZ3gyVWzwpDPODzMeQ8erhVVyMYQckTMy1iZBOuR9ZWCl/+
         AD/ukxcfDCFsyGvbSFVGwwE9mmc/8G5n9YwjtNzjPDgVRHVgDY7I2X+2AzZ9yoTnFW5B
         RXYqLqLNF5WEku+uFm1SF0vDtyrP4Fil56CuWdy89NmwWDcqpDUwqKKgNlsEiiyqGdtT
         wndYrl12+jENSZ1R09SmjRfhb9eAQEHgajSeprlPNJ0w0AX7Y8ZoHZ5/t3f9dznm1cHB
         x/FsnGpCoWjY1WHT/0QUluYQZ3F5RGDs1bfjbpN/xPNEOlOfN5Z2d5Y7AOzsuFDoZLd+
         o/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750156264; x=1750761064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SGE4KFMiA3w+V5SFnoNxn7J/yaSX/gETYA3wlTGQnvE=;
        b=S8S3NuHyDJHgPRGAkcWI6EOpXLRKnBv0KMjkmY6VKt08eMawput/ChuWrnksLsBSUX
         WDBeqJp2/unlAoGf8T3RWpTJcUe6z0mRB9Eezph1F157ZPNEIb/3OBAhNC3b+ua9JJsY
         wPlt132KzvQv8T6NiNMrM5y/18aahY1bj+WhuokXk6URcudwY+C8m1Bgjm1nfIYTlVpQ
         lcDQtJAjwOtudUAp3fyJqrx/A/TtGD/LaFJSYa6KiPmvqEfYw2akPZvls5K4b04+HQ0b
         8wwM/cO5LJWFGYJ4cEuLNn52mR3Mi2QXYDHJfZxnVH+Vc6KGcrB5NJf/jfacakBQtPgE
         /dFg==
X-Forwarded-Encrypted: i=1; AJvYcCVWEY9/9TJV7atFakpYyTNDjFYcvql58AoUq4suemtg/y1AsvYT4qzqzxzbb5HeljtM+oUA86opFOT5@vger.kernel.org
X-Gm-Message-State: AOJu0YxcoHFpdH6algERfO/iCXVbEZUYBbNTG0CIPYWFAR4BoYh46eBL
	JklKVkwK3PyOZedrVfkjj3li7iBj9xeLX6Zy3qgT+6ar1KXPUT7LHuwSs5ArfR0zVOY=
X-Gm-Gg: ASbGncvTrf8+atskl1AXxaiJEGdnRljqjLfSB5OB5mQx7ZXTizHAsv6BERopf4HHzyM
	BEuUr+W8eNNNWpRaHIu4uQFP9n22W1muoiBA+EWP8RcEAnTxbRdU/D+dIfxCmAfnLNif275puaD
	cH1MKV6MiJ2FZtqGPrSfRGxDUuC8yTAQDTn+jTjjh9hwKHNYuJSHO0AProNgXSDfKMLjgU4l9+b
	UL6924ZnxNbmvuI4nBUh//ktGA2MbOoo8u6Ev52rMkqdOOjqo2TOev35FYZ7T2vKDQ1u8M6tBt7
	w8vzwHwX8KfI4mT0necdFZrEpCB6JOsrYOT5zYl1yeh1nGkuXKx7PQgTgDk=
X-Google-Smtp-Source: AGHT+IFHcS5n1VGqyWuh2PNciIHKcGsucx+wMujbDTv29g65JK3wiRosN8FEjLg1U23Jn13HPM2oRQ==
X-Received: by 2002:a05:6000:2582:b0:3a4:eda1:f64f with SMTP id ffacd0b85a97d-3a5723a3b64mr8676988f8f.30.1750156264439;
        Tue, 17 Jun 2025 03:31:04 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:b1a7:bc8:262a:3102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e16a097sm176749215e9.33.2025.06.17.03.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 03:31:04 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	devicetree@vger.kernel.org,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v2 3/4] MIPS: dts: ralink: mt7628a: Update watchdog node according to bindings
Date: Tue, 17 Jun 2025 12:30:57 +0200
Message-ID: <20250617103058.1125836-4-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250617103058.1125836-1-ezra@easyb.ch>
References: <20250617103058.1125836-1-ezra@easyb.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Most notably, add the mediatek,sysctl phandle and remove the redundant
reset/interrupt-related properties from the watchdog node. This is in
line with the corresponding devicetree (mt7628an.dtsi) used by the
OpenWrt project.

This has been tested on the MT7688-based GARDENA smart Gateway.

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Reviewed-by: Stefan Roese <sr@denx.de>
Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 arch/mips/boot/dts/ralink/mt7628a.dtsi | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/mips/boot/dts/ralink/mt7628a.dtsi b/arch/mips/boot/dts/ralink/mt7628a.dtsi
index 10221a41f02a..5d7a6cfa9e2b 100644
--- a/arch/mips/boot/dts/ralink/mt7628a.dtsi
+++ b/arch/mips/boot/dts/ralink/mt7628a.dtsi
@@ -134,13 +134,8 @@ pinmux_p4led_an_gpio: p4led-an-gpio-pins {
 
 		watchdog: watchdog@100 {
 			compatible = "mediatek,mt7621-wdt";
-			reg = <0x100 0x30>;
-
-			resets = <&sysc 8>;
-			reset-names = "wdt";
-
-			interrupt-parent = <&intc>;
-			interrupts = <24>;
+			reg = <0x100 0x100>;
+			mediatek,sysctl = <&sysc>;
 
 			status = "disabled";
 		};
-- 
2.43.0


