Return-Path: <devicetree+bounces-14577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DF87E591E
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 15:34:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7145C1C20DF0
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 14:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51D142A1A7;
	Wed,  8 Nov 2023 14:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rJPfMByr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529F12A1A3
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 14:34:04 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B8A91BC3
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 06:34:03 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507be298d2aso9098024e87.1
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 06:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699454041; x=1700058841; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XORLfLOVJ2jQDbg32nclaixgD4oigISmdEZzRfl6mkQ=;
        b=rJPfMByrLHHCwTIois2rxd7DseB6iRYxychROASto5xXEBCxmfHAiFPa/afIA9+0Jr
         zK/xzH9n4DEnLKeI+7/8vv95rfg3ZZCAvD59xEB+C9cGGtWGwXVlc5BhHgCsmp3glCKy
         9zr6rYgLGBOwF09LsoEfFa96rpDeIFXFAm5srqKxEOfKLJSKI8YKkJDffMfLEUPplf68
         bRkxfzdVHsu+qnMDP9mdStriKskecLZai6u0vtMpJdl7+3b9GsQ9aBR1WkIasPZTAPXt
         WdJS0M1h6FKX7qaJG5ovZwIzKExzUU1rQvXV35stPwwwo3lZyKgtbCZ5s+KbFZXqeVTn
         s1TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699454041; x=1700058841;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XORLfLOVJ2jQDbg32nclaixgD4oigISmdEZzRfl6mkQ=;
        b=VydFI2XY3oYJdHfIzJQl3MJB98eIwy6nbpKLq1TZpPIj+R3DaoT1JeF1lakXtI5/j3
         iDg41fyCipR0QCEtEMNfeQ+tg9oNWdf+4FZrCy3U5JYJzsUghILB2/fqLt+F6Qynsxza
         Gt+aXMvj2NfvI2hKPGQ1CcrUdgumYff9ac9mIQFZzhvmm0qROh+9aar10p0RBADTnswE
         Sq/l+29rjHq4HgF3x8aLuLvQO1IkX3af8+JgKCvNY9WHkIdkHrapibjSk1ORx74T6qmV
         xSVdKu8R5viMQhTMrwv0CJ5rYsarWaC+ZKSQTV7u1hgBcROCv7/XsT3rH/UM+hs9psq9
         bAzg==
X-Gm-Message-State: AOJu0YzWhgdgt/o4lQYkCJuC0EHOJkKZs4EwArLAS9RWtWCI9ctiu+7Z
	o+N5NzAJayHKmIK0+114Eo8stA==
X-Google-Smtp-Source: AGHT+IFUUB+MEIyguPoyxj1+fLJV+aOZb8wF1YqAbqWQ7eWQC+wzmv7GE9RSys2AiakbuL3fuZImwg==
X-Received: by 2002:ac2:5d2b:0:b0:500:7685:83d with SMTP id i11-20020ac25d2b000000b005007685083dmr1266850lfb.48.1699454041779;
        Wed, 08 Nov 2023 06:34:01 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id q10-20020ac24a6a000000b00507a3b8b007sm686773lfp.110.2023.11.08.06.34.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 06:34:01 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 08 Nov 2023 15:33:51 +0100
Subject: [PATCH 3/6] MIPS: NI 169445: Fix NAND GPIOs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231108-fix-mips-nand-v1-3-5fc5586d04de@linaro.org>
References: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
In-Reply-To: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Tony Lindgren <tony@atomide.com>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Ben Dooks <ben.dooks@codethink.co.uk>
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-mips@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

This changes the GPIOs defined in the device tree to recommended
practice, which is also what the Linux NAND GPIO driver is actually
using.

In the process, fix up the CE and WP lines to be active low, as is
required for proper hardware description.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/mips/boot/dts/ni/169445.dts | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/mips/boot/dts/ni/169445.dts b/arch/mips/boot/dts/ni/169445.dts
index 5389ef46c480..3e7b46d5072c 100644
--- a/arch/mips/boot/dts/ni/169445.dts
+++ b/arch/mips/boot/dts/ni/169445.dts
@@ -1,4 +1,5 @@
 /dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	#address-cells = <1>;
@@ -57,18 +58,18 @@ gpio2: gpio@14 {
 			no-output;
 		};
 
-		nand@0 {
+		nand-controller@0 {
 			compatible = "gpio-control-nand";
 			nand-on-flash-bbt;
 			nand-ecc-mode = "soft_bch";
 			nand-ecc-step-size = <512>;
 			nand-ecc-strength = <4>;
 			reg = <0x0 4>;
-			gpios = <&gpio2 0 0>, /* rdy */
-				<&gpio1 1 0>, /* nce */
-				<&gpio1 2 0>, /* ale */
-				<&gpio1 3 0>, /* cle */
-				<&gpio1 4 0>; /* nwp */
+			rdy-gpios = <&gpio2 0 GPIO_ACTIVE_HIGH>;
+			ce-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
+			ale-gpios = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+			cle-gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
+			wp-gpios = <&gpio1 4 GPIO_ACTIVE_LOW>;
 		};
 
 		serial@80000 {

-- 
2.34.1


