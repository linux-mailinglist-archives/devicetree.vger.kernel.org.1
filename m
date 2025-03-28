Return-Path: <devicetree+bounces-161479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F562A74495
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43D471B60D66
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 07:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D73CE212B09;
	Fri, 28 Mar 2025 07:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s9kqtjzR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE444212D68
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 07:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743147858; cv=none; b=UD9zuoTV7B+77gKX11FC+ua9YI0+7ZVXWTcIGmvuEFKYEZnWdH7svq9HXkfDn7M+5QCHCojkuRiuqKCEQW222VFWD+T2ENIu6nth4s0tg58NUrUkFQ5Ef4KLcmkjKuNT8/+oQz5cxKzZIi+YTZopZkA5Y+IN3u0A7IlOnu3MSsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743147858; c=relaxed/simple;
	bh=zlPnLDOVNhN6779M2tqjANdGgeVb1jdCNr4N0cOKy6M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D+hYN2WFbfABdoJ7u6BtjEygxWuiaWZ3YfKazdI/ZusR6lsp8+5LuUQZMlgDBx9VP0HkIrdzf6WfGvKBeyPL+AOPbnaxaH78Ze47p8yDfEJytq+qQ/1+1KlsefBxEVEs1IUMqfSkoEdi4ubXMyfJmyOnDn8v8tmdcVZ+SqsPc/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s9kqtjzR; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5495c1e1b63so2117779e87.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 00:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743147854; x=1743752654; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cxJsf8FE0MuuxFa/Fkir6Q9pPJ5F0EO+7sE3OSG544w=;
        b=s9kqtjzRxktPkhLlsc0zqWFR3BjjkQ/Y3r3Wm75viqJFjkj9BmMAD89gp2jAR5kCNW
         BL5OPRct5LPgyzb1JuNLeYztFUcOWPZmax4RxJywZNrps6wQfzmarKDNHv3/v7ePf/Br
         OqC1T2Ddsc5PDz1i6cY9jWtb/j0A4VGvlrje40ElJS4U0jg8S1qLrhbTBhKJFz2pzpIz
         AbmsjagoyQkRmnlS7MI+kQ03+gBfbTYXHvZSXFrZJ+RWjWieM6aU12IqYG0EfSRnxeL1
         D5QL49v4l+URPCphsEmrpdLZbrJQeaoT4J/D/ro0WIcmi+wB9EauS/kf2lq9buILoT+C
         4Sbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743147854; x=1743752654;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cxJsf8FE0MuuxFa/Fkir6Q9pPJ5F0EO+7sE3OSG544w=;
        b=vedfyDTsi6l/Nd6A5LCGGagJZXkC36tke8/UcEZxAKwX+nQAQX+kx/iW8h6fV2seMJ
         77L5I3nSxZCt9CXYBforRl7FjFWCFSoDqE1SzGdY2KWsVyrrgaMGBLiYLs7fa5xdYG14
         yTpIN3XlambHgzk6WQDg+cmTDHYoEpIFhPcFpmvsW8v5xW8eOSQS54/ctwLCxPwWQzpR
         2eT2VvoEXzPWEU8d+Sa/fpKWizDMmdwVMsEu+kf5YXUNxmgJPK1bjdRlXVDDn4sKY5Yz
         2rRIkUEe8dj+1O1hKCayuH7czz5POZjA9kmbX++UEaRCX82Knml3qqTI2MLXoXDIuxCu
         /2jA==
X-Gm-Message-State: AOJu0YyhJjQoialu96izcW+gR3R5aEbQQ81/hCHSEFzN0EvuytpEoWu2
	eo+O3bk8MmqPCiWV/pCGcwKeBaZ3clRCsttUKPHabPzb3uWz+jDS5g9vBHedetU=
X-Gm-Gg: ASbGncth6JYMuQ1Du6AuBGTrchY7htzhlIu/zyIrlu6tlsn0ROCf0pQkCWNmBPls1zi
	eIyDcjI+jNWA6KkbsgR51H2t0qWM9XafNC7d1JIhDxCmPyv3YHThHB+Y06eq133V4Kss9kEaqkY
	xqZYgemTFONCy8yG26+J00UMMgTVFQA+23uxO80TsMAub2KSIqeZ6Y7lULuNHcZxodqD+g9U3OJ
	zJz5LZ+MRoST72PqnX2HTr2WgPsI1x26FurCVGcqX21552urCaSqNRLa/WqkToTHB2H6dShn5iy
	Jrb6ifLA8JIUmYHKeUCRcjbLUPxtanR10vyP/F8dsHvhaiO6xdLQXdA=
X-Google-Smtp-Source: AGHT+IHSoffSWfcJMRGuGw6L4wY74EAeuWbkQZylOYsn5uGLkfOegEfRmQeY8GK/mlQStmMGQIfdWQ==
X-Received: by 2002:a05:6512:3e0a:b0:545:bb6:8e41 with SMTP id 2adb3069b0e04-54b0127873fmr2753525e87.52.1743147853995;
        Fri, 28 Mar 2025 00:44:13 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb32esm215589e87.26.2025.03.28.00.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 00:44:13 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Mar 2025 08:43:57 +0100
Subject: [PATCH 07/12] ARM: dts: bcm63148: Add BCMBCA peripherals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250328-bcmbca-peripherals-arm-v1-7-e4e515dc9b8c@linaro.org>
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

All the BCMBCA SoCs share a set of peripherals at 0xff800000,
albeit at slightly varying memory locations on the bus and
with varying IRQ assignments.

Add the GPIO, RNG and LED and DMA blocks for the
BCM63148 based on the vendor files 63148_map_part.h and
63148_intr.h from the "bcmopen-consumer" code drop.

This SoC has up to 160 possible GPIOs due to having 5
registers with 32 GPIOs in each available.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm63148.dtsi | 64 ++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm63148.dtsi b/arch/arm/boot/dts/broadcom/bcm63148.dtsi
index 53703827ee3fe58ead1dbe70536d7293ad842d0c..0f6232f0553ad62fbaa7d8db251a0204ed6ed782 100644
--- a/arch/arm/boot/dts/broadcom/bcm63148.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm63148.dtsi
@@ -99,6 +99,62 @@ bus@ff800000 {
 		#size-cells = <1>;
 		ranges = <0 0xfffe8000 0x8000>;
 
+		/* GPIOs 0 .. 31 */
+		gpio0: gpio@100 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x500 0x04>, <0x514 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 32 .. 63 */
+		gpio1: gpio@504 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x504 0x04>, <0x518 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 64 .. 95 */
+		gpio2: gpio@508 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x508 0x04>, <0x51c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 96 .. 127 */
+		gpio3: gpio@50c {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x50c 0x04>, <0x520 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 128 .. 159 */
+		gpio4: gpio@510 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x510 0x04>, <0x524 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		rng@300 {
+			compatible = "brcm,iproc-rng200";
+			reg = <0x300 0x28>;
+			interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		uart0: serial@600 {
 			compatible = "brcm,bcm6345-uart";
 			reg = <0x600 0x20>;
@@ -108,6 +164,14 @@ uart0: serial@600 {
 			status = "disabled";
 		};
 
+		leds: led-controller@700 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "brcm,bcm63138-leds";
+			reg = <0x700 0xdc>;
+			status = "disabled";
+		};
+
 		hsspi: spi@1000 {
 			#address-cells = <1>;
 			#size-cells = <0>;

-- 
2.48.1


