Return-Path: <devicetree+bounces-23532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8D780B800
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:32:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA934280F6D
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDBAC2206B;
	Sat,  9 Dec 2023 23:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yRg9P9sa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 895B3171F
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:31:42 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40c19467a63so37509545e9.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702164700; x=1702769500; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=soCDsbziWMjEDTQYnQ64foy2UwOB+R/XTZlhNIOpiP0=;
        b=yRg9P9saQedN4yCw8qElUOH9mqyggWIwJ3dySCGRJb1O7+01Pu1Zonk51ML2fXkzll
         wkwSoXUhcKGH0mavAoUo7U0+flU14bcu7Faa/TgF9IMLonz/dLt6FiCRJtRZQIDyFcws
         0uJ7i/Vmx5rxxD9zv6nM1rE5xZ1nYJel1IPR0ACPPfNssernpJ/XdG8VMQ9jnRM75y9Z
         7xfkckPAnt7Puam9O/CRZmsVygP+zqleiH5Qxkt5dF8k8d4gtGPbOuP1zT7Exn34fMLx
         7AOLaGstlUme6SvvXKq7Oa9waDyBqJk4EJS0rrx4ABuUq0udfU/nhuf0wGI1QfSH2CFC
         Guow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702164700; x=1702769500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=soCDsbziWMjEDTQYnQ64foy2UwOB+R/XTZlhNIOpiP0=;
        b=Jm4yvV9AqYbeKyy7Y7Nm+jkZKF0L0Az0dEV9Ps2wdRNcmPTuQ1JVpHmFtTge1M1vCF
         TI5pJeD6gbHihMQ55Doj2JSNWBKhI4o6Yn1YiYQyZhwULRugWiyNWzqBlIGTB07284Zs
         nbwrVR40HfehRCInprnCGH3OnjnqMSfK8lt0+XPtY6yC823AK86/uZVSXwQwNNjR0/KZ
         pDqeNs6n1R4O6ERmnn77A58jDLqNQ0D0GeE4PqqOVoEael8mpTRInO5RJc5aC+9SmaBj
         hWf6Bemv8fT107gURWtRRY4Nt+NtS/w6z5R5mTxjOo1AK67eQg71aWyuCpuWINZEphH/
         1I0A==
X-Gm-Message-State: AOJu0Yyh/uI/TAcv83gCq7Zq+VSMmCPcpBoJ2BJL1odQIdqJ8th1HKpQ
	gR51e7d86Z/yQmwvHyKrkOxv2w==
X-Google-Smtp-Source: AGHT+IEUBVq8sgwqtHRsSS/nPjrEPO98vrFoc53nL2VVao5ksAohOugyOhmdyjcNcE4eUD0JRw61+Q==
X-Received: by 2002:a05:600c:4591:b0:40c:2b77:1342 with SMTP id r17-20020a05600c459100b0040c2b771342mr1021684wmo.42.1702164700664;
        Sat, 09 Dec 2023 15:31:40 -0800 (PST)
Received: from gpeter-l.lan (host-92-23-61-173.as13285.net. [92.23.61.173])
        by smtp.gmail.com with ESMTPSA id n9-20020a05600c4f8900b0040c41846923sm1875277wmq.26.2023.12.09.15.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:31:40 -0800 (PST)
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
Subject: [PATCH v6 17/20] tty: serial: samsung: Add gs101 compatible and common fifoszdt_serial_drv_data
Date: Sat,  9 Dec 2023 23:31:03 +0000
Message-ID: <20231209233106.147416-18-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231209233106.147416-1-peter.griffin@linaro.org>
References: <20231209233106.147416-1-peter.griffin@linaro.org>
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

Tested-by: Will McVicker <willmcvicker@google.com>
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/tty/serial/samsung_tty.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 1b0c2b467a30..71d17d804fda 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -2490,14 +2490,25 @@ static const struct s3c24xx_serial_drv_data exynos850_serial_drv_data = {
 	.fifosize = { 256, 64, 64, 64 },
 };
 
+/*
+ * Common drv_data struct for platforms that specify samsung,uart-fifosize in
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
@@ -2581,6 +2592,9 @@ static const struct platform_device_id s3c24xx_serial_driver_ids[] = {
 	}, {
 		.name		= "artpec8-uart",
 		.driver_data	= (kernel_ulong_t)ARTPEC8_SERIAL_DRV_DATA,
+	}, {
+		.name		= "gs101-uart",
+		.driver_data	= (kernel_ulong_t)EXYNOS_FIFOSZDT_DRV_DATA,
 	},
 	{ },
 };
@@ -2602,6 +2616,8 @@ static const struct of_device_id s3c24xx_uart_dt_match[] = {
 		.data = EXYNOS850_SERIAL_DRV_DATA },
 	{ .compatible = "axis,artpec8-uart",
 		.data = ARTPEC8_SERIAL_DRV_DATA },
+	{ .compatible = "google,gs101-uart",
+		.data = EXYNOS_FIFOSZDT_DRV_DATA },
 	{},
 };
 MODULE_DEVICE_TABLE(of, s3c24xx_uart_dt_match);
-- 
2.43.0.472.g3155946c3a-goog


