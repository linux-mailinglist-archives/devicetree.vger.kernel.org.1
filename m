Return-Path: <devicetree+bounces-35138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1DF83C641
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:17:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 089D228519A
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E79B73160;
	Thu, 25 Jan 2024 15:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dlD8btkl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63126EB4C
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 15:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706195804; cv=none; b=FuFuD+ZT/+/wxK9W6lu8r6dTTpwW4MeHeKxLJhytO7a46rOueFsi3wg0d0KiNI3msMnwfu8WtTtdJcTUH++pjCWE+/uqrFKDWaezoEpieX6dQkq6IovnYE7Dmijor3dGdIfQvwGiGAKPfLp9oUT11jb9DWUxN8Pg496r7spXYgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706195804; c=relaxed/simple;
	bh=0I+ktIFl+QFnTyp/eNm6GBgGpNp7GRnGcljOf6lhUG0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=En4yaKDtBdyycAxt1HuyLmgI5PPyKSIvUPU7MT3+ODS82Ej1MvFmGU205HViWUQdbqnGRrCrYNnOEW8SN756rO7esu+D7m11XOP+OhMvNA7RotlKdhd+aBDq9CEiT1FIaVQGI8K3K+a6bqb7BFt716DpS2J9FQHbYngfKPGzrNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dlD8btkl; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40e76626170so75909395e9.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 07:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706195801; x=1706800601; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lvKWG/e47xpVeDKUkt0Rg+N1AoElcEqkQkRChhJ4Oc0=;
        b=dlD8btklKWW0G7Z7dvniU0HltisIaA1OK/fzjb6XEGx7vgw2Z4dEJFgAuJB3+tYHzv
         4GuVeLmAh4qWPkVECxqD0og/1Og3rDd8/VxluHUwMZRB9NbR/ZT93bi95P/XXEReDXFz
         fZ1q2E2D5ijWc4xhblgwrcK/BrqIprsv8lgzIoMzONm8bZFdoWX1m7arlw+ORP2OGRy/
         os6Obpe/sN9sw7b6LP8ScnOHNI1v2hNWjWqJuy0u5PkuoDwfy3l5y+XTbtm0sVOfHXch
         OOxl7QvX2XDWQhdVBuHIURBKWMcvMuwP8Ul14WKC6RYJcfhAPJOgEfVVamEC7BWB/w/5
         EMFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706195801; x=1706800601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lvKWG/e47xpVeDKUkt0Rg+N1AoElcEqkQkRChhJ4Oc0=;
        b=lxfaoDsSZukbrCGanRskUfZA9Xsq44jHM56tFpu0cfF+Td1/f1uOSbubsKtSI9s6ux
         ieIiaDrUQnXXzJooi5M7ppDbRqGutmeKhAnFU+xYG15MFkc1rKVOxwur8rebRnOJYQ6G
         +vZm3SNxYrMyCnybdqCXF8ZLrTELAprvYCvZsaUtMYLF4BTdxhHC3/0/oSofRDW+/R2d
         3OheL1uxby9mpSfuGeP1YoV0q+Kjrp4NZBSfpxB88+QKV6FS0HSxeUyh9+/5N8dkkxqO
         ATNiiVikwGkeIvPOmJhnoiudCwdkHzkzDePFt0/B03AL32ul2grdBaI/E96HV1v37JgL
         pLIw==
X-Gm-Message-State: AOJu0YyMozyiPRVxE0j7FabWVRoy3I240RSZ7Sb1AW+L4P1W5pHe3O+7
	EbLRVnGounKqFZHe3IMH5DRuFx0TmwyPvrNlNXsE2aMGwraNgsF+lcHtOsurgGM=
X-Google-Smtp-Source: AGHT+IHJ7+M4aXjm46yTs7WZOceqTc+7m9CPKpsB/jvIaTZxiHerBJMrs0u00sLOKsFzD6iDKa5CaA==
X-Received: by 2002:a05:600c:3caa:b0:40c:2788:28f3 with SMTP id bg42-20020a05600c3caa00b0040c278828f3mr586429wmb.79.1706195800939;
        Thu, 25 Jan 2024 07:16:40 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id q17-20020adfcb91000000b00337d3465997sm3184656wrh.38.2024.01.25.07.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 07:16:39 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: krzysztof.kozlowski+dt@linaro.org,
	broonie@kernel.org
Cc: robh+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 1/7] ARM: dts: samsung: s5pv210: specify the SPI fifosize
Date: Thu, 25 Jan 2024 15:16:24 +0000
Message-ID: <20240125151630.753318-2-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240125151630.753318-1-tudor.ambarus@linaro.org>
References: <20240125151630.753318-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Up to now the SPI alias was used as an index into an array defined in
the SPI driver to determine the SPI FIFO size. Drop the dependency on
the SPI alias and specify the SPI FIFO size directly into the SPI node.

The SPI nodes defined in s5pv210.dtsi are not enabled in any board file.
No SPI aliases are defined, thus I chose the FIFO size using common
sense: index 0 of the array corresponds to spi0, and index 1 to spi1.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm/boot/dts/samsung/s5pv210.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/samsung/s5pv210.dtsi b/arch/arm/boot/dts/samsung/s5pv210.dtsi
index ed560c9a3aa1..e7225b6c94e8 100644
--- a/arch/arm/boot/dts/samsung/s5pv210.dtsi
+++ b/arch/arm/boot/dts/samsung/s5pv210.dtsi
@@ -161,6 +161,7 @@ spi0: spi@e1300000 {
 			pinctrl-0 = <&spi0_bus>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			samsung,spi-fifosize = <256>;
 			status = "disabled";
 		};
 
@@ -177,6 +178,7 @@ spi1: spi@e1400000 {
 			pinctrl-0 = <&spi1_bus>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			samsung,spi-fifosize = <64>;
 			status = "disabled";
 		};
 
-- 
2.43.0.429.g432eaa2c6b-goog


