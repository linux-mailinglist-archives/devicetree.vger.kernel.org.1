Return-Path: <devicetree+bounces-176293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B97DAB3697
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:06:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F89517E1AE
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47B2629372F;
	Mon, 12 May 2025 12:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iVN0Wo2R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AA329345E
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051556; cv=none; b=sosbFBIbX/0JEu9i5cyJunEQBcUnJ6bF0S7VLigXcGBZ3QLktC0Zuzwkmn+WjO7SKV51LzNTn0pZxK3FGM0mzabz+M3tCxA5t9TImMTHNlkkVCKKqBW16M9zbY/PDVEZZAlvXMTADWkzY2RqgCfcLUqgw6Qz4fDw2c21KO+vgu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051556; c=relaxed/simple;
	bh=mBsQfdUHDG6bui+qrQeNpZmuaYG4JqLdBfTIXAoQHSk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rUHpqBp2ieiLczJXtI+vXyipt3ehwOXRGh0CzsytHZ6NCR8gQIAzgLNugHNcYqE//cqMPYcAgiEUO3CW+VDeoeMUoYhW0yVuKtHD2rRjc1Dw1VkcKyLkgQNDFdxQkUCAPZ7yzmMMi7ZnE4TrvasXoGL3KikbubXWY6fp24FpgkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iVN0Wo2R; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54b0d638e86so4909538e87.1
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 05:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747051551; x=1747656351; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SkP0iqtAV8ORY1eZgH6I8IG6wC09KK/zaOfIkhxn6iI=;
        b=iVN0Wo2R0/KQqJi7HhqL+d+AKcjlNNY8yanO6DGMMyW/eKAQK9T7LAaugX8naZzlIN
         IOHlaOKpvRK8d8qmonNJAJINTnIuv6xx/mQJ7nawN0kUh32ZblZA7Oqu6FPK82nh+6dU
         CDarbCRpjM6qG7rrgyB6mbwXXRSjx919DejRbPYCLn2MgLlb3X6oNMjQKtgrCKscXuuM
         VCOnrjFQGo3vsfrqorNFPpaaR6WZ2ypFEsxFqE8nKdT4HdQT2gAE3puyHEK8QZbotdVe
         2raipYN1nBc2aFh+EiiTJSx/dMo+as4iRNRUCOftbk19i7Pqh9rayJn/TIYEyAzsCn3v
         mZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747051551; x=1747656351;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SkP0iqtAV8ORY1eZgH6I8IG6wC09KK/zaOfIkhxn6iI=;
        b=k7IWqzrWpVQ9jYjHblps1uC+vlk58ieORXAL/UHEOhhRFK4d8HSKOUrz7DCaahN/+y
         ihegymw6CqbDS3egIe3Ei83jhjM4JJnxEkBfRIb2rsaOZ9jMncEu9AnDKpQ7N6iPBL2U
         ahar21ltuHxbjlqTlFCoBnG7PJgyhzadHJyy6t+uD9oFl6NuIVW9s+HfoHiS2XGqAXuD
         7YpUUHkCmv8Tow9eILAWhIUwNr5/BoGqD+4ZqwGfZy2ch21jObav9GvOq1QZ6EmvIm2g
         uKeq26MAcUmPEEOBi/924qtUOvruY4gfVHtPsw5feNsj6qUyEZkjVPcdTunklT5nUWZd
         a0Cg==
X-Gm-Message-State: AOJu0YxevUiTMEccM7iHc4u+sZMhuTXLaBuG+n63ca41UQkhr+lQN5j8
	hglDM2qkdN+slTZCUVm58XtC6MdFCNn//H3r8AkefLKhMHo5H1DVQAeiC+ku67I=
X-Gm-Gg: ASbGnctlDZ7FQJavEEA6LqyBVzI6edtaRsZmyqr70BuhAjUxvHJ0Yl0bfFmKYbgwci9
	vq6qrftt4BaexbmA8KIrbpL+hYsxdgkfceA+YUR62zk5qmHh2xwN4OnYelQgm4kjoqtr2dRYoGL
	wYoYML7vw81rGwF7qQ1Gu0bnLQ/i9jPrJMSxr90bKizcBK6OQhocpRIYCXcyzO9oOlqE8IshK0x
	IV+ZSFh+5GFfS6oNxQel4Q5KpmE6ieohwjals7KfvOm/awhy/vI3w3XdnQh9tE8lgZHnMqr/U+N
	cXeLlLlAtE430tDAY++o+Kda5wH9BH22+dUBKDQ0Uj27GFAqc88le/3ycXaI/FzapjkcYQXF
X-Google-Smtp-Source: AGHT+IFR9Nx1JFMLBQ2HkT2lwCOY+IxKJSVXbedntzV9xfWGZUYC+w6s/M2ra/sM9ro0Y82w+A8WvQ==
X-Received: by 2002:a05:6512:695:b0:54f:c1ce:9bbb with SMTP id 2adb3069b0e04-54fc67ecf35mr4581782e87.47.1747051551149;
        Mon, 12 May 2025 05:05:51 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf8a3sm1466033e87.189.2025.05.12.05.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 05:05:50 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 12 May 2025 14:05:47 +0200
Subject: [PATCH v3 01/12] ARM: dts: bcm6878: Correct UART0 IRQ number
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-bcmbca-peripherals-arm-v3-1-86f97ab4326f@linaro.org>
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

According to the vendor file 6878_intr.h the UART0 has IRQ
92, not 32.

Assuming this is a copy-and-paste error.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6878.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm6878.dtsi b/arch/arm/boot/dts/broadcom/bcm6878.dtsi
index 70cf23a65fdb5ac7ed9eabc986f4ebb4df263c43..43eb678e14d04be487af39c9365186b6fb919cf3 100644
--- a/arch/arm/boot/dts/broadcom/bcm6878.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6878.dtsi
@@ -137,7 +137,7 @@ nandcs: nand@0 {
 		uart0: serial@12000 {
 			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x12000 0x1000>;
-			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&uart_clk>, <&uart_clk>;
 			clock-names = "uartclk", "apb_pclk";
 			status = "disabled";

-- 
2.49.0


