Return-Path: <devicetree+bounces-42627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D9590857E96
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 15:05:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7458B2844FF
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB98312CDAA;
	Fri, 16 Feb 2024 14:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nAZPG2or"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163F612C7FC
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 14:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708092299; cv=none; b=rw/LxkeKOQPekyBfXnlGKItugPJyAhYzQJbI7ibX2+oks49td6Uc+DBzFlvPZ9CqSepGWqNHOSlVN5Wmg6U/tiww6c64HPeO6hH8P8IE4XdfJPq/pC1+cTWLzUppZVOxhYJemsFbQ2BUwD6hnHprecHmnob6C8lbu5duGINczpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708092299; c=relaxed/simple;
	bh=nQr8Kfcz6Jo4+i8KVH+YbRUWCwWoQLLr3kZy2y0plho=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fobxF9GV2wPtFW5+tE4EWBdvePw5+GvSdInWiYLAzXrV8uqZBbTXhuvUbMfdCsOMIFt3BQy7FNACVrcZkfOOkomsx6LLGY83Damq5I5W03wvoW4vN0HyseOySzJ1efArQ0aflwuSlzAoRRi2IgCRCNxFGTf+fffJUTMvelNXJR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nAZPG2or; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5120ecfd75cso2842391e87.0
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 06:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708092296; x=1708697096; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IoKD5bRktYBx1n+y/s9dpLnkNcyEHfZAqtDf6Pd57R0=;
        b=nAZPG2or9gQRV2dZuVvrUVLr/aZEnbfcNljngqh1KUjspTOK3Bl6CWKDBYZo2LKIdI
         PDkRGb6S/iMRf9Tyq66pPompFh17jRtuX7kETVuDZ35BKOON6N9c02wKLnDzyKxSYpVX
         Gal424JH2t0g2XMImrG4kdMlgwEXAkis7yeddpwtMIIBL8DR7/iH3QRW8/rCHWwhFMos
         WxXS+lwnktsEjQQvI51OUip6DzCRsJzNhHqSmlTqUpnf7nWxCD+nZIa5jliexYnTxBBi
         AnCjDCd0ZHlFDswlJPNbeSvYbkPBIyCA0ZvRL0mwwq4QD4wVCujsyfegcIMJhnXOXKBW
         ZbMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708092296; x=1708697096;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IoKD5bRktYBx1n+y/s9dpLnkNcyEHfZAqtDf6Pd57R0=;
        b=FtQjVumuCOC1FvENL3DMlXk5CDgIMB+s/t2pauZDHCNmdI9k2bSZsxavwmrwT4z+5O
         q2laB3u2aDca1M/CfAAv2duhBTZSP2xMNZVQQDQINIFl27ZDZNDTJtxf77HYMvMSHDYS
         c44bomQJTlu+dVkAQ/epkgZCLiNZmkYpeO1GL/I3PWgmUUp9PsS6g76q4z7tugjUmp8L
         doTtznrdClRFNJsMMWoFwCvfTT2Ezg56bLSBP2QUaHaWcdAZUdDZ3y5Y4Y+1fTvqU1fk
         9EWm8eMuXMbbKxog7ZHRAnFR/HzFWFjhBG0YLkSKjqqOb3/E8YrR+qsFhNFh/Y+y8+As
         JCZQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6hjgw6/EChXyLnNVrhICDj40z1t5gVLVxhcaI0MpA1IkXLJNjYZGSP5SZiOTHt2yBFz8jWio9X3A7gPHnYFN/RrOcwIL+IEWvLw==
X-Gm-Message-State: AOJu0YxV9vArVc2A+/8+VpNxspFNmYHhnGzs6CzrDWg1xCkS+oCpwUXE
	Dt80ZFEZfmyI5XEiv5ZxNgjKq/vAi8gCIH2xEDn9xTPibaYHo7WuWjGPmVBZGDY=
X-Google-Smtp-Source: AGHT+IE9vX1AKj2JOn/B8o/haeJFU2gEt8ObeXnpMNVVvEAqUlLvLNixeuJWM0nROcdwy3mX/SWqsg==
X-Received: by 2002:a05:6512:2253:b0:512:999e:671b with SMTP id i19-20020a056512225300b00512999e671bmr808593lfu.54.1708092295996;
        Fri, 16 Feb 2024 06:04:55 -0800 (PST)
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id az5-20020a05600c600500b0040e4733aecbsm2516628wmb.15.2024.02.16.06.04.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 06:04:55 -0800 (PST)
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
Subject: [PATCH v2 2/7] ARM: dts: samsung: exynos4: specify the SPI FIFO depth
Date: Fri, 16 Feb 2024 14:04:44 +0000
Message-ID: <20240216140449.2564625-3-tudor.ambarus@linaro.org>
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

exynos4.dtsi defines the following SPI aliases:
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
 arch/arm/boot/dts/samsung/exynos4.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/samsung/exynos4.dtsi b/arch/arm/boot/dts/samsung/exynos4.dtsi
index 7f981b5c0d64..ed47d0ce04e1 100644
--- a/arch/arm/boot/dts/samsung/exynos4.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos4.dtsi
@@ -621,6 +621,7 @@ spi_0: spi@13920000 {
 			clock-names = "spi", "spi_busclk0";
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi0_bus>;
+			fifo-depth = <256>;
 			status = "disabled";
 		};
 
@@ -636,6 +637,7 @@ spi_1: spi@13930000 {
 			clock-names = "spi", "spi_busclk0";
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi1_bus>;
+			fifo-depth = <64>;
 			status = "disabled";
 		};
 
@@ -651,6 +653,7 @@ spi_2: spi@13940000 {
 			clock-names = "spi", "spi_busclk0";
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi2_bus>;
+			fifo-depth = <64>;
 			status = "disabled";
 		};
 
-- 
2.44.0.rc0.258.g7320e95886-goog


