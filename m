Return-Path: <devicetree+bounces-7431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E58547C44C7
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 00:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 203651C20D28
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 22:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48366315AD;
	Tue, 10 Oct 2023 22:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uXNBZnOi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D42C31593
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:50:19 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16A57DA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:50:10 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-325e9cd483eso5904519f8f.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696978209; x=1697583009; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xYprZVFUFFzXb/GEC6qC9cNPUPhkcdvlPZq1XksyVt4=;
        b=uXNBZnOiFtSV8Mz+s5hTTTPErvzfVV40kAh/9VNzd1hIRxZQQPfhlKunvsA+wl5iGu
         pcwPd5XYxr7VDTNOsDTp+smzs6qzFX+DVUztTrosk9G3dEQ/6aGahrNigUzRLltXoCfq
         Y1L//8ogaeqqRzVnWV089WOKyIhVI4Ogp0TNOu+z+o8uNWJapA/8j0rT5qAiTcZtWbCm
         Bf81aYVG6nD28pJjQ8KIetzWc27/x8upgQlWa+xr9nt63tkSVeWM5C7nEL+ygWZg9xhR
         I20nTqELZN5SRPVQc0eMs5abawh/T9rPGqy4LD3HRWdA+FIzgwTTivk16HP1AWHMktu/
         Xaeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696978209; x=1697583009;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xYprZVFUFFzXb/GEC6qC9cNPUPhkcdvlPZq1XksyVt4=;
        b=R6vz8lQCwC3eNrEuikjCU2FtSX9KAbS+DUp4QpGLx7E2yJHE9hIggI6Zer07+pxsfj
         xLp34lZ7C4y/pH1KqjsZ4PHCHNGvb4cwq0SdCnrYHipsSGYUPn6HZ8xZFRpLR+l9Rdjj
         4y92McJitxkmOypE+E03dozaz2VX4RXbnGJkjBPrehfvyLyg//cPlCjJ6MSu/Y+bVsoT
         sJi6jyGJeQPMS2H0W20+qgHxZRhgJeZDw3wrf+NEmNaTa4cu3Ncm/h/CHlbuQfdJHo0a
         d6fa60DQk0JrU3ZDH0vGuxvQQ1kxpzN16QwFGMqMlv9OhSTQpcwqcPBeBUHg7ddp0ZXt
         EaSg==
X-Gm-Message-State: AOJu0YywEbvjm0NeUz4Usk7zF1w6huSgM4/FKB8m69+4QrLwkfa82Fjy
	nhve7RMKShmnJG1vM+5uzpvaXQ==
X-Google-Smtp-Source: AGHT+IEeJhcbODxR8zPSq9gFQ6GybH3mc0pCQwSXlhSaLpJWvK2exY4QzZL5mkQKp2rXpPf5/YjZIA==
X-Received: by 2002:a05:6000:1c5:b0:32d:83b7:bdb4 with SMTP id t5-20020a05600001c500b0032d83b7bdb4mr244753wrx.9.1696978209476;
        Tue, 10 Oct 2023 15:50:09 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id j13-20020adfe50d000000b003196b1bb528sm13689547wrm.64.2023.10.10.15.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 15:50:08 -0700 (PDT)
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
	cw00.choi@samsung.com
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
Subject: [PATCH v2 16/20] tty: serial: samsung: Add gs101 compatible and SoC data
Date: Tue, 10 Oct 2023 23:49:24 +0100
Message-ID: <20231010224928.2296997-17-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.42.0.609.gbb76f46606-goog
In-Reply-To: <20231010224928.2296997-1-peter.griffin@linaro.org>
References: <20231010224928.2296997-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add serial driver data for Google Tensor gs101 SoC.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/tty/serial/samsung_tty.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 07fb8a9dac63..79a1a184d5c1 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -2597,14 +2597,21 @@ static const struct s3c24xx_serial_drv_data exynos850_serial_drv_data = {
 	.fifosize = { 256, 64, 64, 64 },
 };
 
+static const struct s3c24xx_serial_drv_data gs101_serial_drv_data = {
+	EXYNOS_COMMON_SERIAL_DRV_DATA(),
+	.fifosize = { 256, 64, 64, 64 },
+};
+
 #define EXYNOS4210_SERIAL_DRV_DATA (&exynos4210_serial_drv_data)
 #define EXYNOS5433_SERIAL_DRV_DATA (&exynos5433_serial_drv_data)
 #define EXYNOS850_SERIAL_DRV_DATA (&exynos850_serial_drv_data)
+#define GS101_SERIAL_DRV_DATA (&gs101_serial_drv_data)
 
 #else
 #define EXYNOS4210_SERIAL_DRV_DATA NULL
 #define EXYNOS5433_SERIAL_DRV_DATA NULL
 #define EXYNOS850_SERIAL_DRV_DATA NULL
+#define GS101_SERIAL_DRV_DATA NULL
 #endif
 
 #ifdef CONFIG_ARCH_APPLE
@@ -2688,6 +2695,9 @@ static const struct platform_device_id s3c24xx_serial_driver_ids[] = {
 	}, {
 		.name		= "artpec8-uart",
 		.driver_data	= (kernel_ulong_t)ARTPEC8_SERIAL_DRV_DATA,
+	}, {
+		.name		= "gs101-uart",
+		.driver_data	= (kernel_ulong_t)GS101_SERIAL_DRV_DATA,
 	},
 	{ },
 };
@@ -2709,6 +2719,8 @@ static const struct of_device_id s3c24xx_uart_dt_match[] = {
 		.data = EXYNOS850_SERIAL_DRV_DATA },
 	{ .compatible = "axis,artpec8-uart",
 		.data = ARTPEC8_SERIAL_DRV_DATA },
+	{ .compatible = "google,gs101-uart",
+		.data =  GS101_SERIAL_DRV_DATA },
 	{},
 };
 MODULE_DEVICE_TABLE(of, s3c24xx_uart_dt_match);
-- 
2.42.0.609.gbb76f46606-goog


