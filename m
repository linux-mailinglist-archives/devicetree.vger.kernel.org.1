Return-Path: <devicetree+bounces-254429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58242D181BA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:42:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30E5A305FC65
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 567813446CC;
	Tue, 13 Jan 2026 10:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UfIu1ypJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FC82D130C
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300824; cv=none; b=CMT2aEhbCaM+ZFAV5DCKO7Oor7FoPOjvY4iFhrEFLa0MJTZGc0Sd4pXFh6bPxTLGQ++LjDmfSz+rxK7++Q9zEpCFmQiwFEOSbgRArUMbhjKD0PtdcGj0z89Smx54GEb5VqSUsmydW3D/dY9gxpnH9FACblUMAXkGcycjBfYIeeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300824; c=relaxed/simple;
	bh=/WSQhdX7Z6q4cMkuvRYEqv/WFADsj/ztmZbunsns8fk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BitwPH/FV8fWeFAbzOqyoUxdot8M5d6Lxe3hlW+dyVoMkmqz3ohveRG4eChRlF2qxhsbDz7SL6ceQX8wl0c6tdiqYGz3cFSiZmaVTGgA4j/c7CeOQ2SjsX5tD+oBV1aL9/qSFUdp5OgnoBHM7sbttKynv5vr7oYQuxAVXXRzp6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UfIu1ypJ; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-4779a4fc95aso33875695e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768300818; x=1768905618; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZvYOPiTVFZ9FWIQ2SvlyO9MXmJgyIQ0Uo/FX54HgBVQ=;
        b=UfIu1ypJtNSIfZZnKrPqWPbVbIwwJMVLhh/b/MgYOwMeiUsxyQXkqt/Ogb3lVOb3bD
         9eGL/oXvb7rGw+Apw3atDOAulVXvtQoKL5pyyFy1BUdLmlhdSNjXa9RrMDKszj7BPvk4
         DtpEAImwibqRSsDm+n7BPyxMi/rmgnXtSmtS0DHYFJ/wboXiaTsDgvDVXEMgHYHAciz4
         LbKpS2BGb3ug1xVg1OIVELHtp9mVsdzBZLScLPjeewrGzHDCJAyWr3XHuMD2n6DeaQNC
         /dnNQ97b4a3M+SHfYQn4nAegMzavH0J33SOPDGl+rbDtw72hgkVG40WET7YvRj87eS5k
         Y9hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768300818; x=1768905618;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZvYOPiTVFZ9FWIQ2SvlyO9MXmJgyIQ0Uo/FX54HgBVQ=;
        b=HaH4tvM2Dj9TLrIaAUW4rboT1B/Eq6kPlwbN9SU7GPqUc/0iYaGaRTgrgT8kNMr5Zw
         nGjYACydGyEyya8jYh0fIRd0YHeXj2s4nepnKbs4/nTpzcTSqQ0fQm2Or+2WRCuOrpql
         JuWqwZpPx5QmYV0lG54CBN58A/Uxu54S0rLrIqHIccebttfZg6JGdIBSe27DI7hofRk0
         BXobyo/Lm+FEnvv3rXLpzzYmdzXaVMbV2S+VMBO97f981WLKuEUINla9XLaHd8fdSD8/
         WY2SIBylpfk+lkcG+NABzdfAns7BtZLfMtgomTdoC3NrMJCF66fFBUPYA3erryYKvMdq
         Ei9Q==
X-Gm-Message-State: AOJu0YzivhYLr0+c01t+QzMJ/ezzKI5E/4S5/jAf93ksR/u2OkQ+zMsk
	iNcUMWoqNI1UACoKBkCYTxGwS78nadPI3HEI6JXi3nB0DBZmsT1SxdtjGgFh7rYhwZY=
X-Gm-Gg: AY/fxX6kysu/HhADiO5xvhuhaO0YjNnjqS/I1z23RtL5pv2bYL6+A8qJwUFxC1IzY/l
	zY8yRMq18UvKz9l3VLtqBHBXareEMe2J2FhZT+Sg4ypsV9y3N3uFwzouoQ/K+pjUKQ4cg6zgG3N
	iDd/h6he3M2nEOZ2O1bdqiYP9c8WQowQZ0uFTLs05582ZAN3HMkh6ubZqD1y/mv53OqaHBteDdU
	8EfA9o3V5AGP+84IHXfYyHyuMuPmQyZ5bo/6riyKdcNenz7NhCiryS8gShRgJfCxwlGpqTjtLfM
	27NPwcVPkj+QpWZ9qvQCeq2vr8TSOpianHhYRjE+b2XqToOm/va07O0wI+ZRZdS0GBQ+m7pfWpE
	qRj11Xk/I8TLNJsFmhJ5evGZS0E+mMjjJwlZHdh1XCdG5zH28UJSQ36zm0upmRc7QSFodWK1t1f
	brAmKLkd3b
X-Google-Smtp-Source: AGHT+IGZ924VMg8uzSKwtfC9eu/S1JNn2hTcKF+qOW7nyEJ8PQuEIhaeFmemRi1BpJtXoN76awRbSA==
X-Received: by 2002:a05:600c:5391:b0:47b:deb9:163d with SMTP id 5b1f17b1804b1-47ed7c074e7mr29680885e9.7.1768300818103;
        Tue, 13 Jan 2026 02:40:18 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:982f:38af:1a7a:b10])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47ed9fe8fe0sm12812505e9.3.2026.01.13.02.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:40:17 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Tue, 13 Jan 2026 11:39:53 +0100
Subject: [PATCH 2/2] arm64: dts: amlogic: s4: fix mmc clock assignment
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-amlogic-s4-mmc-fixup-v1-2-1ab1fca0fb2f@baylibre.com>
References: <20260113-amlogic-s4-mmc-fixup-v1-0-1ab1fca0fb2f@baylibre.com>
In-Reply-To: <20260113-amlogic-s4-mmc-fixup-v1-0-1ab1fca0fb2f@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2008; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=/WSQhdX7Z6q4cMkuvRYEqv/WFADsj/ztmZbunsns8fk=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZiEKF5+fmSyP5MAGqjOLa+6cYIni9bUXe58wV
 cAYYHOQXIOJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWYhCgAKCRDm/A8cN/La
 heI0D/9eEGRdXTHSdbcXVpKpHEFvYAzB8irOfQktIa6G7YFerAvLYaC6/VWwcFMRKUbh7QkofYg
 Vk559egLAaqUMZM7nbfrFHtiTRSxT0Yl3xpdU8u1zrELJ4OoKqfoKdKK7IK+iwCwZERrs+9W0fR
 eCZx8ot70COsfJpQHjG1y+OuTYB7gDhHhecT9knFW1cLBrllCpKA3iznCtoMGRbBvtWgGbPT8pQ
 rMVq71l8ehX/GgMQpmh3vnCn2I7S5GtU3dXYVXQTi4mliNDteJF2fmg7ZAB56MJNv+zx2+kY1ZQ
 rg7M8Z1j3oyV4avAPcA2I3zNIvRIM0ZrO0olh8w9IZ5ygifsDuMgaMRVjopQsvAN4h7C2r8P0JR
 36BjZw+H9hVW1Ms8LQv0WKVqzYSKyado2tDeYS3892CbtOGTQPEh+NXHmO/tR9hn77vNYyjZwBE
 BtZkqAV1zW8t9QyopKpvcFr1bQsiPIi6p+1wVEdI9HUKjO8F/TSNlbH3BykdARqcBous8tNCScy
 uUQvH9EjtO5GggN9IscxJpayHXfxW7dN/Tpg3TK3aKxcq9/6ObGz4b5Ug2jm1IKKb3IVA5QetV1
 jiXu/8ONjnTjhSs1LlNzZVSd7jkt7MUyfFJLEzhnwKTbNyuknKDXzOO5UpeUJNNMbPclC3ewyw6
 H/nuOgchU+xM7Yg==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

MMC A and C are mis-represented as having their "clkin0" input connected to
xtal while it is actually connected to the MMC clock, mostly in an attempt
to provide 24MHz to the device on this input.

Fix this and assign the clock to 24MHz to actually provide the required
rate.

Fixes: 3ab9d54b5d84 ("arm64: dts: amlogic: enable some device nodes for S4")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index 62538fd9db6b1ffb33a88e12628aadefbaa453ec..6324d1eb5994009df5b09923cce373a87229f4b8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -819,13 +819,17 @@ sdio: mmc@fe088000 {
 			reg = <0x0 0xfe088000 0x0 0x800>;
 			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clkc_periphs CLKID_SDEMMC_A>,
-				 <&xtal>,
+				 <&clkc_periphs CLKID_SD_EMMC_A>,
 				 <&clkc_pll CLKID_FCLK_DIV2>;
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_SD_EMMC_A>;
 			cap-sdio-irq;
 			keep-power-in-suspend;
 			status = "disabled";
+
+			assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_A>;
+			assigned-clock-parents = <0>;
+			assigned-clock-rates = <24000000>;
 		};
 
 		sd: mmc@fe08a000 {
@@ -849,13 +853,17 @@ emmc: mmc@fe08c000 {
 			reg = <0x0 0xfe08c000 0x0 0x800>;
 			interrupts = <GIC_SPI 178 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&clkc_periphs CLKID_NAND>,
-				 <&xtal>,
+				 <&clkc_periphs CLKID_SD_EMMC_C>,
 				 <&clkc_pll CLKID_FCLK_DIV2>;
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_NAND_EMMC>;
 			no-sdio;
 			no-sd;
 			status = "disabled";
+
+			assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_C>;
+			assigned-clock-parents = <0>;
+			assigned-clock-rates = <24000000>;
 		};
 	};
 };

-- 
2.47.3


