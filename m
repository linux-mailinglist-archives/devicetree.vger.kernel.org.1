Return-Path: <devicetree+bounces-33204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49588832880
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 12:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7CAA51C23021
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CC334D12A;
	Fri, 19 Jan 2024 11:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T6m69d+e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB534CE0F
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 11:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705662715; cv=none; b=sVzqNwuAL6W64EHtRkqbEeYTkNmfUhr1Aa98fBdnfZDCP0CNQR7FIoJDjjUVlBGIaYhqtwaLwB4P85jIgDWSYWmRQjuE1nLCPJclMHheKhYre6wIoQsS88dmnylehK2Bz6VZii6ClTVp+kLuYtEufbjhrz6BSn/Xbi0vAfS99Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705662715; c=relaxed/simple;
	bh=ll3DEYGeH8ZhZJgGGkbdKZTUz6Fb1jCFDA13FeOkVVU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=thcbNtGG5RsPYKxAOSPhl1P0J+BrLrxZb5XzMtYflbndgCq1iYQ9v+A70KufWjrB30mA0+KwNyGN94/eWFC6A36AoJkXiWyY8trc6Wm3OnY/X+Z5ewcqFJOmHgsdOxjwaxdSGPMo39/eQtCP0KMAJ/zKqKof8Fi14THt1+j423g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T6m69d+e; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-336746c7b6dso506127f8f.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 03:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705662712; x=1706267512; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kmoj2ktoPsbPmlsDcpfD/T2RAgfFkzb1A8UxvOaNUC0=;
        b=T6m69d+eAxB7sySw3xnTUqt6BuzF9RBfXaGWKtSmDUQQ79QhvPzHwAq3bF97mH/dTW
         MkGj969nxOCzXCQ7KNj/9ldHY8C7rqzMEU5Rt9z1pGaHUTtVqqaTvF7veAaUtym4IcuL
         dN5E2S+ZB89JDJLI7JlTJNJXsIFqH/Nna0QG4iFo47BFJjmh5K36jE+HbXC89kZ2DCPj
         D5PakHtasmhwnfxzkUs+epggs6DS0UniYkaDIRgeE5QdsALNvXKQzNH5wp/3fK7xwWrL
         MuPrY+6Cix9xPmmvQYE3oZqCCUYVwpNXZHdhs//iF4Pc8Ux5eqquoC6O/4QJsPCyggig
         6maQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705662712; x=1706267512;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kmoj2ktoPsbPmlsDcpfD/T2RAgfFkzb1A8UxvOaNUC0=;
        b=HcfuIvjDZqCHld9XguFzhARJ9lpXHlAA1ZmfWThj17eSxPJ087AKKoER46HYVe1qgk
         g+HBWg1tHjD0hIzLgLmJh+qq/0sQz5TDHtV7CJRXkJy38/qeVe/gn+QHiMIn+yRcyQgn
         SA5WqSzBSujZ9stL+3MWEpZVH0wOmiyFysR+l38tDzcJI3T/FdtqOJPK3gA+RCrGg14g
         6VexYqSXSRdqEnkasmh1DoZ1mEst188c25iDyEc66P6zrP1rJhcnYBlM1rD1VgKjooig
         2vkq4yFpe0O9Qfr0BT9FULKMKeLMPk+qRPgHtI9xhLoVYT0OssFarK+I+inMDOllt8MJ
         7WLQ==
X-Gm-Message-State: AOJu0YxjWV+xL75M9WTKvSzTyI7JOe23qhIz8Ns4xGgG5EKXI+8QIKMA
	cx6I6ApEh0JL2+1TR2harI4fnNmneEVheC1ybrs6EVp+k94dWr4835w1ObaZEEc=
X-Google-Smtp-Source: AGHT+IE6UGIuaWhe9PeL0tRLx7x2fZr6EP8zmEAW/WSGxSmRD4govtvG9uJd/VWwLIAEKLQLWvKK2w==
X-Received: by 2002:a5d:468c:0:b0:336:4b14:bed9 with SMTP id u12-20020a5d468c000000b003364b14bed9mr1605282wrq.6.1705662711797;
        Fri, 19 Jan 2024 03:11:51 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id o10-20020a5d62ca000000b00337d4ce6ab4sm3341868wrv.20.2024.01.19.03.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 03:11:50 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: andi.shyti@kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	willmcvicker@google.com,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v4 4/8] arm64: dts: exynos: gs101: remove reg-io-width from serial
Date: Fri, 19 Jan 2024 11:11:28 +0000
Message-ID: <20240119111132.1290455-5-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
References: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove the reg-io-width property in order to comply with the bindings.

The entire bus (PERIC) on which the GS101 serial resides only allows
32-bit register accesses. The reg-io-width dt property is disallowed
for the "google,gs101-uart" compatible and instead the iotype is
inferred from the compatible.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index d838e3a7af6e..4e5f4c748906 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -366,7 +366,6 @@ usi_uart: usi@10a000c0 {
 			serial_0: serial@10a00000 {
 				compatible = "google,gs101-uart";
 				reg = <0x10a00000 0xc0>;
-				reg-io-width = <4>;
 				interrupts = <GIC_SPI 634
 					      IRQ_TYPE_LEVEL_HIGH 0>;
 				clocks = <&dummy_clk 0>, <&dummy_clk 0>;
-- 
2.43.0.429.g432eaa2c6b-goog


