Return-Path: <devicetree+bounces-42626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED30857E91
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 15:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49D54283654
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 689D812C80B;
	Fri, 16 Feb 2024 14:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cdMyNwUa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7088812C557
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 14:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708092298; cv=none; b=HhkagG/9+30rzM50WmwfrD8pOjdkBg7fy38qKv1OCOxyEvGuj++eSP8rdmuirwqRu3xK1YwsooobwoqRN5XgCfToobFrp/roMBgp4zXJItQlUMopBtJTrHLj+wj7m5LbPF0nKqnOh7TqT8Pu2TjXf1kqIr1CocC8/1TOMEmpkgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708092298; c=relaxed/simple;
	bh=HDNgmS+3ogSjgiCNBf1Deadap09cRpyjDSGis2o1YZ4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hbeAyETeCLtQ0zym3n068yLTk2V1kou9n5tFPTBokKZ/JIkXESGYNXlXtbyOs/bIVEAcCBHsRbf5Bpoim8cn9b2giD7tw3HuzsYnC5NN+4lCjDS87s0TrXDISe8Swl0XNuV6MYwWHdvbJjRakkr/PTyKJdk1CMe6zO28UKCqyeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cdMyNwUa; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-41211097adcso14735165e9.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 06:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708092294; x=1708697094; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RrxlwaASewIQ6feU++ZcduImlXFDGQ5ONYqoRVrmdoU=;
        b=cdMyNwUafbA9hqcDSAh8tedNTm3w87lEPlgDIYMSuut5z72gXUDOFjj4mSEkZ3SxU2
         yaVbS9IPSoqc2xzTvU6GEzdOJwjV2zNJ/QLN7PK0eQMy11BXwjTHazUC28IWbh/jkrc8
         iEo1OMqo7GfkgNXuKPUvUgjJq2KkpCiW9vSNkF15Ki97vbNpknriJaLKGyXGH7ktb/4a
         U1GFH5BqaDtbBU8E2NzjqSaMth6yKH2FEesnHthE4Sr8jdJhA1cPF1u3cJ4nMvpn8xLH
         poRgn5e7r4bibPXwujI6ln02HubIR7W0LkEeKa/3cgm3KTNUe8jihB0W3VQctaZQ5w6S
         ngOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708092294; x=1708697094;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RrxlwaASewIQ6feU++ZcduImlXFDGQ5ONYqoRVrmdoU=;
        b=ZsbvTqorn0xqfsBPqSRc5ixh1+oBd3eTlgTRLgKsigudhfRNk9x3I7/IIIGGlu1rCC
         qen+h8qToc1tQgbB7R+ImD4lA0g6Yd5Lw9QH6RU1V880qyVggFKy6DoeS/AgPR24M/DA
         BdaUH/J1pCOke8TRA5EBemfOXt7UFO/AyqGw/zqoGbYzaCvkwM/uiYz/4NollOAoglnK
         Fltjjgoo927Xap/CLUnGfw4nCwFF+Ba4EqX/hM0TuiKVrr8LcRk+/ZYP7vbFBZ2PxHoV
         J7pcCI41mRDycFpk+7jJNzGuNhmhGvq6PLTud7ZRYxlqsT14qENgj0w31crodSJofBSe
         BFyw==
X-Forwarded-Encrypted: i=1; AJvYcCXfyk8aU3oP7J1voenT8xK2XsI4mt1fDWSpanIButjjtnqx3VWa4FTE76KjV/zBvOcrgYHs3j1/Y4H1lH1c3jmH11SyhyOOAwreRQ==
X-Gm-Message-State: AOJu0YzDW4u/vYOqSWOj3+LCov9z/tH2Tb4+wWv/Yf5MBk3t/R/2KnEJ
	+TfbFesEYHRn7jQA923JlxIJO4EyN2MG7YM9N/kZY9ETYmjEOi/gYv5K/Dfa7BQ=
X-Google-Smtp-Source: AGHT+IHSlJ3rucUOL0Zw2GCONTp7NyIN4EdB7mlSGdfVkmD/nmUTez9Qm1aP3coAcdNLg1PVao+wKA==
X-Received: by 2002:a05:600c:6019:b0:411:6f3f:4950 with SMTP id az25-20020a05600c601900b004116f3f4950mr3966135wmb.32.1708092294570;
        Fri, 16 Feb 2024 06:04:54 -0800 (PST)
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id az5-20020a05600c600500b0040e4733aecbsm2516628wmb.15.2024.02.16.06.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 06:04:53 -0800 (PST)
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
Subject: [PATCH v2 1/7] ARM: dts: samsung: exynos3250: specify the SPI FIFO depth
Date: Fri, 16 Feb 2024 14:04:43 +0000
Message-ID: <20240216140449.2564625-2-tudor.ambarus@linaro.org>
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

exynos3250.dtsi defines the following aliases:
	spi0 = &spi_0;
	spi1 = &spi_1;
spi-s3c64xx.c driver defines the following fifo_lvl_mask for the
"samsung,exynos4210-spi" compatible:
	.fifo_lvl_mask  = { 0x1ff, 0x7F, 0x7F },
Thus spi0 was considered having a 256 byte FIFO depth, and spi1 a 64
byte FIFO depth. Update device tree with these FIFO depths. No
functional change expected.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm/boot/dts/samsung/exynos3250.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/samsung/exynos3250.dtsi b/arch/arm/boot/dts/samsung/exynos3250.dtsi
index 3f1015edab43..b6c3826a9424 100644
--- a/arch/arm/boot/dts/samsung/exynos3250.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos3250.dtsi
@@ -826,6 +826,7 @@ spi_0: spi@13920000 {
 			samsung,spi-src-clk = <0>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi0_bus>;
+			fifo-depth = <256>;
 			status = "disabled";
 		};
 
@@ -842,6 +843,7 @@ spi_1: spi@13930000 {
 			samsung,spi-src-clk = <0>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi1_bus>;
+			fifo-depth = <64>;
 			status = "disabled";
 		};
 
-- 
2.44.0.rc0.258.g7320e95886-goog


