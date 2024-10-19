Return-Path: <devicetree+bounces-113282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CC19A50C4
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 22:39:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 606C6B222FA
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B55FB1922CC;
	Sat, 19 Oct 2024 20:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ySzDMyYM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76DFE1917E8
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 20:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729370386; cv=none; b=IerVqKU1qJwgMraFPa+ksw3XMyhtamA8nvscWN0A4bPvhuRcSPNc4C82CEUmUAzTAUzlvMHc00xyKlYBeNX0BRNVFFBA8rdzFTfAfCWJt0kDxzblDdyUxzh8IN0SrLzWvSNbTlpvVgjmWfPbtohedsTV+Ce/HksvOrspYnhKQA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729370386; c=relaxed/simple;
	bh=GwcvAcOlalgSASg+oC3fkqkTviBm6rOyfSsWTX2KwEs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kQJooVoyS6mNv0L8JNphostXOC+r1bba4n7ncjDgChoWiP+JvEr+wag2l1RgzDu8JzZWe3slNvq1ZcZ7qEWceMaluYixTtQy8uEUNK6ivJ0juOglKyw9Lp1c5YpvH8hxPn2pmv8dAOOY/zhwY6nDAgcKoUGqi+7VFhwYAkMzDnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ySzDMyYM; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fb501492ccso33449511fa.2
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 13:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729370382; x=1729975182; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ASbzm1dKYI7MS9b7uAT3zGV8ddrL3dIka7wQzQqZ70o=;
        b=ySzDMyYMEbnAVaOEGTWHOqDH3Jwi9JCN0sXI8FSsFIH7e9qneRT5Zr3NYLYFgCl5YJ
         S3kzVTNf8xktawkM+9K34JBZfBDj+4fKVAtEXN4OnbGfSIUq5EbdD3KxbTPX4dloxf+a
         luCtx7tE568qCFH4YFyEM/tkx24slbeUhobBwsVBGUGvqVPiUiEUigsh0WzwG2QADwAh
         cI3Qwy0rp2pPzfIJ+0D22uDPFanicu75nEmLc3jFlIlns10oFxhpJbeL0QmaqsSLl/UY
         hFNmRlD0dDEn5f8drLyjw5OaE1CPBfpn2gHvA3Y8c+o6PuVxD9dOE4NNaoL4hUIlY/Kz
         8Wkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729370382; x=1729975182;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ASbzm1dKYI7MS9b7uAT3zGV8ddrL3dIka7wQzQqZ70o=;
        b=m4GkZ4jMsAOKnfpQU59sdtQcVWk90LSRhGWpKSFJT4PQUPupfXQVGgKMM4smNMuw76
         P784PlVCIvhc7wKdCblgWP5oBjm5gkLb6C5oWhjmkorJolBA0gBnkveANJCS9yGZEn1N
         gmcNRCVebX4GMn9husNXo7eNEzkEqz5VRh2Ev7cNgGmeA9XHcAph1/J1oXjd19+IJieL
         8MNlG585C2bIM9JT6Rl6LSLNng/niP/9mU9QLutIqmQcUnLhkNRae/yybYy/cYe4let2
         s9XCybO9G98dv2dr1+J4Bk/w+OUwZN9EzzAMRf5siLY8AAuA2WCXsRs+chygzn36qRIm
         BggA==
X-Gm-Message-State: AOJu0YyNfcLfq+Jqmq/HASBP+QaoKnQn2Ewb5BdZGcNu72HzXwxR2nxN
	KvDbY1741HTrwZ3xQGNiJi4Rev/A76gHcZybxU5YvrF0QyPpOpLSByxkttyRPkHCXPU/vhF2K/m
	F
X-Google-Smtp-Source: AGHT+IE8PmLW2uHN7CzUZBeuCZkeAP4PRUg5hZ2qcYw3GGxZ+s7W6KNBfnAdYuQHUxVmvDGm+dOkZQ==
X-Received: by 2002:a05:6512:3e0b:b0:539:f51e:2457 with SMTP id 2adb3069b0e04-53a1550bbfamr3367061e87.52.1729370382336;
        Sat, 19 Oct 2024 13:39:42 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a224202d5sm37564e87.136.2024.10.19.13.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 13:39:41 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Oct 2024 22:39:35 +0200
Subject: [PATCH v3 6/9] ARM: dts: bcm6846: Add ARM PL081 DMA block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241019-genexis-xg6846b-base-v3-6-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
In-Reply-To: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
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
index 378dbd1b41b3..e0e06af3fe89 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -240,5 +240,18 @@ mdio: mdio@2060 {
 			#size-cells = <0>;
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


