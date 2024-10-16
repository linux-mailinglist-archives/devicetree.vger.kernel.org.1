Return-Path: <devicetree+bounces-111814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8969A0194
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:41:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 506FE1C233D5
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:41:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2201AB531;
	Wed, 16 Oct 2024 06:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MB5ItBcL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7791819939D
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729060879; cv=none; b=krDQC9HH5WcR7f6RoKnzfAbaBy592l1GUPjdcubRbj9kYo8eZiuO7E7Fl2ds44ksFWaHaj8mkbEqxQeawHMJLU0eiBa+jLBuRe6CQK25zu3LL7zfsnhgt6YvmoqF78fy5ftr9+Dp+3DKaYYG0LgcQu+OkA5Rw2kA2/g9Etez+s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729060879; c=relaxed/simple;
	bh=1V14qXoOB0MUNQKDrGUlxkLH1Ey1CrVoKEeBg6iX7xs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YZy4bZ3Od9LVlAkBtrgFEMADL/XfcSnTchXOvKXwGjsxyFWMpjce70rQc0sfqW2fhMe/DsqMRboR+n5EKN2EkZbRDGJgdjr6Bij78Bu8FD2EvC+eSzMrbt9OadKfEJM3BcyPNhadoCwuJoi4pRwNYEr44DAu3430UM4ZM9F5yMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MB5ItBcL; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539f72c913aso3380998e87.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729060875; x=1729665675; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=feT/7XmQcrVtoa6vvcgiQdzp+mqlGEZb5gary+Ro0Ac=;
        b=MB5ItBcLafo9rdCqSQWTskJUSzSnSsHRQAUsOz2r11K0EJrAHORVjZHnM2S/aiaIB4
         tcZ4CMEk2XNx5BQmRomN6qoQ7t/xl4DNtd9N6xBS5W3mWQpuaT0+jwjcBYHTdUaS/lKI
         GLvr8c5Bkdm5DYFh/4BvffDob+60QGVA9c0RteQ7YfatTKAaBypEmaTNP5JVcAGPtCdN
         80QpRz0vPQ8OlIHLNynU2mryCi2Sc9Kil/qYqWTW99PPYAbpgMDR6iPvV5WbFZn/2CT2
         zy04A3zn4gBvnMLt1OiGUIP6OlCiKKp6cA+7cHv2SF7QcN4NiIB5g2Jl7rlxSzf42jnP
         mrhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729060875; x=1729665675;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=feT/7XmQcrVtoa6vvcgiQdzp+mqlGEZb5gary+Ro0Ac=;
        b=ld7uhQpEcDDsTob+WnN7lHscZf5/y+faJ+UwMkhXTJqd3EzG9gw/6HybEAGSxiCAJj
         ruTx6lY/5Bu9L0EMQpYXHzxmij9a96yNv+K591DZoulIKjPoOb+w6elv8CvQ6YNwaQRh
         uVK3+8aMypsESWroG4apX5OOIBn7TRgTx+L6R3AX411ioJJgqTebtd4+9h8RxxqYaBrt
         5Ercwisyaubu+VjtOA7ayMZ4N4GzLSgl2tDrT1kZlSz/Hyb5vzIvcR/Ki6/ZtqazLgRR
         fSSYiEVlCg6jOqOiaeEzmFVbCeMzP9dTVN1zjs2RfXQL+c7V6JNZCTVs7bR1W7FSZV3c
         omcQ==
X-Gm-Message-State: AOJu0YxAOso11Dd7/uDmYTB21fYe/HfQ/9TMIf8BJAO7fJ8EXL2J6ISm
	GA9V4YG2QjM2/jWeOI0j64vvuRTwfS163N7vtEBX05yXMbm8CkA8t2hmUTD3ogkJ6skWGIEJSAU
	L
X-Google-Smtp-Source: AGHT+IEcOSxSHiOL67XtheXoGabAKLmm5j7st4EBhXlI+whhH2LShcIJ5e0wxd2agXFBbk4Z7L/63A==
X-Received: by 2002:a05:6512:b02:b0:539:fd10:f07b with SMTP id 2adb3069b0e04-53a03f96215mr2013640e87.55.1729060874721;
        Tue, 15 Oct 2024 23:41:14 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539ffff3a50sm357455e87.144.2024.10.15.23.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 23:41:13 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 08:41:06 +0200
Subject: [PATCH v2 6/9] ARM: dts: bcm6846: Add ARM PL081 DMA block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241016-genexis-xg6846b-base-v2-6-6a7cc2ee57eb@linaro.org>
References: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
In-Reply-To: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

The ARM PL081 DMA controller can be found in the BCM6846
memory map, and it turns out to work.

The block may be used as DMA engine for some of the
peripherals (maybe the EMMC controller found in the same
group of peripherals?) but it can always be used as a
memcpy engine, which is a generic "blitter".

I tested it with the dmatest module, and it copies
lots of data very fast and fires hundreds of thousands
of interrupts so it works just fine.

Add it to the BCM6846 DTSI file.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index 371c16af27f3..131e1802bd86 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -240,5 +240,18 @@ mdio: mdio@2060 {
 			#address-cells = <0>;
 			status = "disabled";
 		};
+
+		pl081_dma: dma-controller@59000 {
+			compatible = "arm,pl081", "arm,primecell";
+			// The magic B105F00D info is missing
+			arm,primecell-periphid = <0x00041081>;
+			reg = <0x59000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			memcpy-burst-size = <256>;
+			memcpy-bus-width = <32>;
+			clocks = <&periph_clk>;
+			clock-names = "apb_pclk";
+			#dma-cells = <2>;
+		};
 	};
 };

-- 
2.46.2


