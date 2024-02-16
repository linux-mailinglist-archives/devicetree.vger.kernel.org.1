Return-Path: <devicetree+bounces-42628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6CD857E98
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 15:05:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF4FF1C2508B
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 483A512D75B;
	Fri, 16 Feb 2024 14:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hFKwSnqL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6529112C54F
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 14:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708092301; cv=none; b=rsgvcjKKgatjTN42KbtjcsOphT+FPBNgR6eChKokxDlC7Eq0gxJ+kMgWCl5WyOeJ2ec/qhdO0JwOefZ+ZX+qxpKBAeLwnYmsOdro5wQctixn2T+CqYP8gkDi1JGvCN3ghnL10EOdnXKhy0w573CWaRXCdr9w2ohdaAa9IqYU3ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708092301; c=relaxed/simple;
	bh=+4hpMqvo2MaSV4b7Jg+jh1kB57aNCVnu3p9sey7n17U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nC9JDTpmWEF7kZw5+n7Flgj4OGOy2Ue6le56UBGBJyJ9o0cU1IGwK9r1VRi3+Cvx7ZXmV37l5j0Oqk0XLoYJ/jrs9KFWxCwJQyfOHjXomE3fPV1uc2gTRST8zGmpbtw09Ca9CfUkY/qlwzudycgRJhzbPM4Vu9s17Dt+tXmMBPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hFKwSnqL; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d0a4e8444dso7596121fa.2
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 06:04:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708092297; x=1708697097; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Zx9+5BqwaAzaN+5Db7Ws66Fn8aez1AAIMWd7GQ05DA=;
        b=hFKwSnqLmXqQTdpYBPsQdOEWUrzONHDWt4keqbkASzd0muwDJ8vyTolaAyrztEnnSG
         f3KGRc3xkUofEtfFw1CUgoxrhQb3Aw1iRcagvvIGiL5AZ6RGcxmq4hUGVeEkHthZjMmK
         VSIdg78rXb5549cBo4AYqnGfbSSRzNTjwCdCdCKl9041E9veb3u/r7Pa/SnpxU5hJqdD
         ehz6nqPxvmAjkPuE6jmRorVscVb7sr/LZnBlu/ENRJoOC6yJC0U/E+hNBigAP1xgtYt9
         J3rNJtKN8JqYK7MT48B91h98TIwee/HxIk8fS93Nw6ryVy34SkX09eI7hYlbuykPYqE9
         aDRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708092297; x=1708697097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Zx9+5BqwaAzaN+5Db7Ws66Fn8aez1AAIMWd7GQ05DA=;
        b=RoNztzbQJB0u4eCZYfkysYCI5sF1vq1wCgLNWMSy3Hi/inEFexbgM2zjL+zop8p7uj
         wAYA0U4GBW/lgXtOO2xNkRWzvE1lazTeb+3scDCkmUbp1AwXre3ks/Vm4KO0qyzl4Oqg
         E3AD60XhjopFRvNqYPKcIMV//5jKPdeAH9gZOlDGIRYLaR4r7bWVgxYCFxMaMfKVaYQl
         I2kDgfQKFACuFXpaMfRUdK8ptlIEFNpVuXHv9C9ZDx5PsVkxAc8aeGzBCwfQkUe8c7Dn
         UqY0X+58soJ3JEJr2smcAS6KxG9JoZdiqtBJvJgoaRRA1rO900l3e/rBXy/GFb6pMCto
         JiEQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8aL7NF2ih77z8jdaXSh2UG1x5St44RmDPG7ytYeI4kopcY8CCqi+jR7bCmNA+szLyspoa2vaCFP1Ccjh1/E3B2Vev/dw9xqCF2Q==
X-Gm-Message-State: AOJu0YzP7o4IU24153wBwhSQBD6mPr9w5KGkwddBeHdsovoMS8R9LDfb
	1KGBuArcWDpwVTHjuxL95Vi+slWgcaBuIBPU+FM1j5ngUYBPR07/3xkE5N2mjTw=
X-Google-Smtp-Source: AGHT+IE0EGbYQbv4l1lKRbqg12eixWC4l3SC8S7Jp79dW2xoIxVUBLK5AuANr1RWkebpsL9mNE5ikA==
X-Received: by 2002:a2e:a684:0:b0:2d1:107b:3ba1 with SMTP id q4-20020a2ea684000000b002d1107b3ba1mr3441338lje.10.1708092297388;
        Fri, 16 Feb 2024 06:04:57 -0800 (PST)
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id az5-20020a05600c600500b0040e4733aecbsm2516628wmb.15.2024.02.16.06.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 06:04:56 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	broonie@kernel.org,
	andi.shyti@kernel.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 3/7] ARM: dts: samsung: exynos5250: specify the SPI FIFO depth
Date: Fri, 16 Feb 2024 14:04:45 +0000
Message-ID: <20240216140449.2564625-4-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240216140449.2564625-1-tudor.ambarus@linaro.org>
References: <20240216140449.2564625-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Up to now the SPI alias was used as an index into an array defined in
the SPI driver to determine the SPI FIFO depth. Drop the dependency on
the SPI alias and specify the SPI FIFO depth directly into the SPI node.

exynos5250.dtsi defines the following aliases:
	spi0 = &spi_0;
	spi1 = &spi_1;
	spi2 = &spi_2;
spi-s3c64xx.c driver defines the following fifo_lvl_mask for the
"samsung,exynos4210-spi" compatible:
	.fifo_lvl_mask  = { 0x1ff, 0x7F, 0x7F },
Thus spi0 was considered having a 256 byte FIFO depth, and spi1 and spi2
having 64 byte FIFO depth each. Update device tree with these FIFO depths.
No functional change expected.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm/boot/dts/samsung/exynos5250.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/samsung/exynos5250.dtsi b/arch/arm/boot/dts/samsung/exynos5250.dtsi
index 99c84bebf25a..b9e7c4938818 100644
--- a/arch/arm/boot/dts/samsung/exynos5250.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos5250.dtsi
@@ -511,6 +511,7 @@ spi_0: spi@12d20000 {
 			clock-names = "spi", "spi_busclk0";
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi0_bus>;
+			fifo-depth = <256>;
 		};
 
 		spi_1: spi@12d30000 {
@@ -526,6 +527,7 @@ spi_1: spi@12d30000 {
 			clock-names = "spi", "spi_busclk0";
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi1_bus>;
+			fifo-depth = <64>;
 		};
 
 		spi_2: spi@12d40000 {
@@ -541,6 +543,7 @@ spi_2: spi@12d40000 {
 			clock-names = "spi", "spi_busclk0";
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi2_bus>;
+			fifo-depth = <64>;
 		};
 
 		mmc_0: mmc@12200000 {
-- 
2.44.0.rc0.258.g7320e95886-goog


