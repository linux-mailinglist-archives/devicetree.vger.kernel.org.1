Return-Path: <devicetree+bounces-17296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDEF7F1F03
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 22:21:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDAAD1C2166C
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 21:21:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3895838F83;
	Mon, 20 Nov 2023 21:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fKE1D77s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F41EA12A
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:21:32 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3316d3d11e1so1905571f8f.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700515291; x=1701120091; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pGMJcrVfhLg9yx7+adKojnIHXQHuO/GUDpBKWFekTks=;
        b=fKE1D77sYTkmDdyQ3jHCittFmu/4IuFSpn2DjvZAmhetDN4pTlIFzm+QJDQlhluAbL
         i0LTsB5K0FLzSIY+ki6f0A8NyeWze8cAFHDefwuWWsDt8asrDcoaKYwTL4Jjc4QdcfMz
         pbqXGh/NhUrjUgOyDtcQirMd5KBJGoEIC2s6Mg0FX2mYIY0SjUycbYn3H8XTfm9AJEcN
         Dj8mhmYMBlH/vv1AhQBL7OgPJPPBp++KiLtWfTZgo1SA3aiIm7P2KaLbKNWge+svGIsP
         B5obKequ3hq8TvVLl58/eUAroDTVg69AEjgpX9UGFVSFmFlq8LtmcZf6yYChQ+pDNldM
         0lGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700515291; x=1701120091;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pGMJcrVfhLg9yx7+adKojnIHXQHuO/GUDpBKWFekTks=;
        b=XwigED8FRHHCCTHbntBR6WCuKswLXNTSCp8l/YvAvXV15GIujeaxDMlS4mX+54FvpH
         33FN5HpkffzNyjpVfqgWFElM5PYkXlxNLTMAFKwuhIDa5Lm7ASlo9HDwcfpOvp4fQGqY
         CZV9BrVpnYFe9e3O6WXTkju41fNfF1osnfK/fgtl08i7ZsK9R3XyAA07ausexbTJFTzh
         BozZMPTilm18EWfp7InhXzsBuFhO7MUrPoPNrQJxljnrCntc0jLKHYVQXQLwVr2iS7nS
         x9H9kxSn6t4Ot/mH8Q398doCBT6T7sMZW1xRBpCqw1bTYUyv59MkH8mderl86BhGCmsc
         GTAA==
X-Gm-Message-State: AOJu0YwZ6P3y2ob0KZoeagB/lyV4J58sO9SMI78In3GkBowuW+kRZQCX
	H60nXwyu7RPA2p1WYweMoOFAwg==
X-Google-Smtp-Source: AGHT+IEuJ/i4CIBnaWQc2Wpn+KM5WZF0M70Jcj2c60ms4EwZgFJOAEHRsCXFxXh74/5Y3GpGeL69yQ==
X-Received: by 2002:a5d:6b92:0:b0:332:c4b0:6aed with SMTP id n18-20020a5d6b92000000b00332c4b06aedmr494252wrx.11.1700515291358;
        Mon, 20 Nov 2023 13:21:31 -0800 (PST)
Received: from gpeter-l.lan (host-92-29-24-243.as13285.net. [92.29.24.243])
        by smtp.gmail.com with ESMTPSA id je14-20020a05600c1f8e00b0040596352951sm19518451wmb.5.2023.11.20.13.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 13:21:30 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	cw00.choi@samsung.com,
	alim.akhtar@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel-team@android.com,
	linux-serial@vger.kernel.org
Subject: [PATCH v4 16/19] tty: serial: samsung: Add gs101 compatible and common fifoszdt_serial_drv_data
Date: Mon, 20 Nov 2023 21:20:34 +0000
Message-ID: <20231120212037.911774-17-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.rc1.413.gea7ed67945-goog
In-Reply-To: <20231120212037.911774-1-peter.griffin@linaro.org>
References: <20231120212037.911774-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add serial driver data for Google Tensor gs101 SoC and a common
fifoszdt_serial_drv_data that can be used by platforms that specify the
samsung,uart-fifosize DT property.

A corresponding dt-bindings patch updates the yaml to ensure
samsung,uart-fifosize is a required property.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/tty/serial/samsung_tty.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 3bd552841cd2..d0e33f98dde0 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -2492,14 +2492,25 @@ static const struct s3c24xx_serial_drv_data exynos850_serial_drv_data = {
 	.fifosize = { 256, 64, 64, 64 },
 };
 
+/*
+ * Common drv_data struct for platforms that specify uart,fifosize in
+ * device tree.
+ */
+static const struct s3c24xx_serial_drv_data exynos_fifoszdt_serial_drv_data = {
+	EXYNOS_COMMON_SERIAL_DRV_DATA(),
+	.fifosize = { 0 },
+};
+
 #define EXYNOS4210_SERIAL_DRV_DATA (&exynos4210_serial_drv_data)
 #define EXYNOS5433_SERIAL_DRV_DATA (&exynos5433_serial_drv_data)
 #define EXYNOS850_SERIAL_DRV_DATA (&exynos850_serial_drv_data)
+#define EXYNOS_FIFOSZDT_DRV_DATA (&exynos_fifoszdt_serial_drv_data)
 
 #else
 #define EXYNOS4210_SERIAL_DRV_DATA NULL
 #define EXYNOS5433_SERIAL_DRV_DATA NULL
 #define EXYNOS850_SERIAL_DRV_DATA NULL
+#define EXYNOS_FIFOSZDT_DRV_DATA NULL
 #endif
 
 #ifdef CONFIG_ARCH_APPLE
@@ -2583,6 +2594,9 @@ static const struct platform_device_id s3c24xx_serial_driver_ids[] = {
 	}, {
 		.name		= "artpec8-uart",
 		.driver_data	= (kernel_ulong_t)ARTPEC8_SERIAL_DRV_DATA,
+	}, {
+		.name		= "gs101-uart",
+		.driver_data	= (kernel_ulong_t)EXYNOS_FIFOSZDT_DRV_DATA,
 	},
 	{ },
 };
@@ -2604,6 +2618,8 @@ static const struct of_device_id s3c24xx_uart_dt_match[] = {
 		.data = EXYNOS850_SERIAL_DRV_DATA },
 	{ .compatible = "axis,artpec8-uart",
 		.data = ARTPEC8_SERIAL_DRV_DATA },
+	{ .compatible = "google,gs101-uart",
+		.data = EXYNOS_FIFOSZDT_DRV_DATA },
 	{},
 };
 MODULE_DEVICE_TABLE(of, s3c24xx_uart_dt_match);
-- 
2.43.0.rc1.413.gea7ed67945-goog


