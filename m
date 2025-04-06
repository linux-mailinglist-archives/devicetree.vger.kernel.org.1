Return-Path: <devicetree+bounces-163440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAAEA7CE9E
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 17:32:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5975E188C647
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 15:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7886D21CA0C;
	Sun,  6 Apr 2025 15:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TpekYlRh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35285C603
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 15:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743953569; cv=none; b=msTbrlgQ6UJ78f9Apw/VoUkrRJsTh1azNCkEgMh7W3K+O8O/UQbXWvvgRi85ZtVu78TKSDjlqeCnPUUBPW4dSFmW4lTpHffObpDTGa83nbhICLPAcdMxultu3oQh0GX4t5a3EML5t+Eip319NloKf6J6gM8YC1CwjVGcEA57r9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743953569; c=relaxed/simple;
	bh=dQ4FW12shnEjM0GPrn4VV50kmqTq3AwSVyknRC7pKxw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YptWLNAPlYpVDVAtHFervZ/y8ZSOSl5SVqNlg8DQtgEDEnuRHRUh0nYCY2WtAKDaFeh+2s+8EhWXGIyZNVBgcpgTZFbD5vHY2NHiNenV+6JWf5pQJFzkbAfDWZcYOea/CVE9KbwlDMkoKHV/WYKLzwolFKTgxqwrCpvVeR02gDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TpekYlRh; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54963160818so4418972e87.2
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 08:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743953566; x=1744558366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ONAYYSHQOAtd7XflFMakQ6L/UMvLNi1xTofa7izw9E=;
        b=TpekYlRh64TeOFJ3kwPUB/7qoeaRGXtQuMf1YTesxJnYYaVym9wXGvadclKEnldugm
         iUF66pVkvcckjJXci5FVmjT6wlcb5Z7wlr+cn+YvjYKyk834rIy4fW/OJyR0avxdyHfn
         uD9dw0tAr08aMM+nQL6Ht9MdyfziSCP8oOM7O9OA0pdHILILQRvla2qvI9XB2SZFuMgL
         DPh96Gr+5y0jMivZhHu968PjNDvLNrGhNu/VTpuAZLmuN49/XoQNeeTdftH/1QLRxI9R
         Fqt0aExeNuJidhunQ9QoRVSRv/dD2hwMLC9ikAFiFJG5+NwfhpXXAZtevzplCJQ7cYv8
         q0yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743953566; x=1744558366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2ONAYYSHQOAtd7XflFMakQ6L/UMvLNi1xTofa7izw9E=;
        b=Xq6S2sc/Amj2U5j9YanIN1YNpBMIHOYCZpngVYZUGP+/IPCXJUguheMAR8DZEhR/xe
         gu5XxpJjkWrKmTI/9Om5H+BN90c9QWhFropQs71mu1uHuxY1qgz5h3ZVuFnxy5vJj12i
         TVpUHDwbQkVYurzxptZ/XNN9q5nFStduassSbJw7OXQIWwb/NhO+dv23tqok59nMMksR
         Y5XSXC531ni+78QciZG7UYFEIA1NwbX8HqiEuLyfkqoeh7u83gk/TRZTULBo0ofJXcEO
         1rAWietxrum4OaXG9ilAvRwm6mI1gUFdf/0BhdMh40h+xeB7g1fVoxRaJUOyXM3I66JR
         nM2g==
X-Gm-Message-State: AOJu0Yydgp524r+blgZ6c7bo9er3/DTnLos9Nj7KbAc/7BUoRPcNla+Y
	FyEfSX8XmbcAqNFmgLtqTglmcr+MW6gzp/5AqSn917xy5Bm7QBp/5qVl2zd70cQ=
X-Gm-Gg: ASbGncu4YYYP+cZnrR/+Uh3BtRb1fdANVSOJZHjqPI++AqKBsW6ukbjze9Tl58HA360
	NAWg0ThJiiBwrytNZIcVGI0qcIwLCQU0o15Dd4BeNglfKm38GiPcq4jf6ArQ8jRlZm8ySSOpXoo
	ntKB8ak04vhLhw7/mg4hbHYh7MR2hfMVwzRxL2qOUblEmH6M5yTPf3BXj2pc9vhBnuK8hTbtuUl
	8SXf0aHH1PLrgspPV96TbCFR/29nupS/czaq2zTqWkjmnZdKXeOUP24y2x3dTvK5JUBZuK2ahFd
	N2mBUXrruROb+F7D69Uc2ltANtMceOMiEEBXQs0GzU/ujHR0ofgoDS4=
X-Google-Smtp-Source: AGHT+IHnpWs6XO4mteq7F+ZLmGE9IK5O1KFZnDXVhMlRd4bDWyefxcqo6/2QiR1vaEXZVx5eFBlmSA==
X-Received: by 2002:a05:6512:1313:b0:545:243e:e2dc with SMTP id 2adb3069b0e04-54c23346866mr2216950e87.39.1743953565786;
        Sun, 06 Apr 2025 08:32:45 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e671fa8sm989747e87.218.2025.04.06.08.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 08:32:44 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 06 Apr 2025 17:32:41 +0200
Subject: [PATCH v2 01/12] ARM: dts: bcm6878: Correct UART0 IRQ number
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250406-bcmbca-peripherals-arm-v2-1-22130836c2ed@linaro.org>
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
2.49.0


