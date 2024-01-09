Return-Path: <devicetree+bounces-30628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ED8828694
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 14:00:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 162922824C1
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 13:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E584C3A8C4;
	Tue,  9 Jan 2024 12:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SEVdZKUT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C59C3A1C8
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 12:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40e43e48a16so25010295e9.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 04:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704805120; x=1705409920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rl+cJunhX6IbKqc9i8Jlrsr1S+cAXd5kRtgISnUsfXo=;
        b=SEVdZKUTvrKviMyWxjIOQpSrlwR4M1oPGBvgJFm4U1L+xeSlrcQEiLxeRfSaI0+7UP
         GropjCHUU9hBrLFpyorTAlgVVNKiqAMz/dL3NkWGinmA+ZEzs6J9fvHG1hvqXP7Zs17B
         0khNWMjJ73pdZXpZO/Ih58NgMiVe7xoA1OYzIopko9t9ibKp5zTYkOk+iKWGktp6OCUt
         AEO8M+4Pr6o6uNUgm2Spg/PVISjGpxwIeoNjlqbj0aecV0T6arBv82MWB1gLMFNlk5vV
         dwkT69MMYPFV25wYKFAV2f2pGc+VvZYkHkyWgxQ2bMkXl5E5VJCK0jxLzeX7l2CRbsUC
         0Wsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704805120; x=1705409920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rl+cJunhX6IbKqc9i8Jlrsr1S+cAXd5kRtgISnUsfXo=;
        b=ZLa/jWufz9pRJARoXSMgGdeXfK6kbueRqj650lCQqAI7hPl25TPgjA+tltwR/pLnO9
         /nt6G3qQleSIaqvrn7oSJRzdsLk9g4IoweiWks2ccYBCjgVGAwisU9YeyDS21G/iydLs
         cZRIks0HyfaFXOh0c6yiqhC71p7CprP++8X6lJpXW8vEr658Us1LOtvjXH12zbTzHPro
         8IZZQkDDj//Ey4PKKjvgINuF2INuUQHNNBTsE/yRsEmO0+CKzFPXX+fpIpRFHp3IV7j6
         dopFFNDjj70XCTpzSD9bLVykhpBciwj2pLPIHL1MWuUcEG6UNK6EL2Ns3nDytHjp2PbU
         g31Q==
X-Gm-Message-State: AOJu0YyTyTtfM7tiW20wUgvw87ZDvRzRZzkFXE54FCx3LuO8c0mFq98M
	cgCvdziR4BOtg1OrQRaHyiuQB+UXoJQHyjDLejmDd9+OvHeVRA==
X-Google-Smtp-Source: AGHT+IGM4okcZVI152BOcasMXhYdX9jgTq0T7snQVg/YN8vpTHLVZYveQbL6tfZF3ag059OEY4+M5g==
X-Received: by 2002:a05:600c:19c7:b0:40e:530a:7cf2 with SMTP id u7-20020a05600c19c700b0040e530a7cf2mr17946wmq.6.1704805120517;
        Tue, 09 Jan 2024 04:58:40 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id cw16-20020a056000091000b0033753a61e96sm2351302wrb.108.2024.01.09.04.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 04:58:39 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	gregkh@linuxfoundation.org
Cc: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	andi.shyti@kernel.org,
	alim.akhtar@samsung.com,
	jirislaby@kernel.org,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-serial@vger.kernel.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 08/12] arm64: dts: exynos: gs101: remove reg-io-width from serial
Date: Tue,  9 Jan 2024 12:58:10 +0000
Message-ID: <20240109125814.3691033-9-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20240109125814.3691033-1-tudor.ambarus@linaro.org>
References: <20240109125814.3691033-1-tudor.ambarus@linaro.org>
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
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
v3: collect Peter's R-b tag
v2: new patch

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
2.43.0.472.g3155946c3a-goog


