Return-Path: <devicetree+bounces-20822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E88800F5E
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 17:11:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA257B2178D
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 16:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D75A4CE1F;
	Fri,  1 Dec 2023 16:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MO6/7qPS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DA7F1712
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 08:11:14 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40b4a8db314so22871145e9.3
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 08:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701447072; x=1702051872; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MP+7NSmIit+FDTJhpsmHaxMZk0dYxTOxs6fgbwlRbSg=;
        b=MO6/7qPSL3xX50TorGaId+CKppOqFlscLGLKU1yFqfX0xeVeys0ypBKMegp1gUwp25
         SsLPLlBOpaV8V/FoxEejy/gwm5sTf4qBV2G1TwVkiNBIfKAih22jilXSsHrGQmiTkkS3
         +wBZ8vrFTd3N4MEf/tlUENfusUhWjeoQubdR3Qz5p1cNCbOzm9ZYtnW6PEkD/t+Vug7l
         rg8MAQPk9X9rJEVYYvsZQecOT5fLBAy5AolA/oBiRpBOKCGWuCxlAJw2q1i4plG91yW5
         BNX3IIRruSzUvxao2/r7AuFmodmR8RvJGq9xjuJezV9m3hX3v9B++iNF3qCNmLD7nCbZ
         rVRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701447072; x=1702051872;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MP+7NSmIit+FDTJhpsmHaxMZk0dYxTOxs6fgbwlRbSg=;
        b=pLZ/dxrxJvEfapLFiIiuaGUOsnwCFAuzykKKF8Pbye+QyvTi25+d3t66BnbofROnxM
         uFGuL6FBDKBscjrGdxUcQvs/zf/Ndxg+8Y5a9fpmaGrMJW54yK8pcYxAtTXfQKAEsNe4
         FmvP6d21raaPP9+rXPSnFdt4CqPDOMkjeDpgQts5ntNkhK6qnn/qcCOWQXaIs7mjob/E
         8lwA1zsRxoaohznQ6wuwSF/phXXBDI+ygfcVZWMuq0DcC0u4512cquTBaZlzG85pfyRC
         NmyQhoTUckH+KA/XoQysdHEWy0xRwm47ORp8pD8DZy0jGuyqzIuX89QkngkwGAY++nXH
         WUiw==
X-Gm-Message-State: AOJu0YyeA+6lMqnV6pxsAP7Y1fw0YospR0tjwoKi8hkvMx5JNcMem6/E
	/hgmHh1Ri4RJTwR028yJpqFmVA==
X-Google-Smtp-Source: AGHT+IELNlY0EW/eGA3BOVQakb2wAAFPoBHucoo2xc3+yPYY7kTv07vo0KUDg+AI5If0hWMCEXIE5Q==
X-Received: by 2002:a05:600c:34c7:b0:40b:5f03:b3f3 with SMTP id d7-20020a05600c34c700b0040b5f03b3f3mr214973wmq.277.1701447072566;
        Fri, 01 Dec 2023 08:11:12 -0800 (PST)
Received: from gpeter-l.lan (host-92-29-24-243.as13285.net. [92.29.24.243])
        by smtp.gmail.com with ESMTPSA id cg16-20020a5d5cd0000000b003332656cd73sm3907386wrb.105.2023.12.01.08.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 08:11:11 -0800 (PST)
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
Subject: [PATCH v5 15/20] watchdog: s3c2410_wdt: Add support for WTCON register DBGACK_MASK bit
Date: Fri,  1 Dec 2023 16:09:20 +0000
Message-ID: <20231201160925.3136868-16-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231201160925.3136868-1-peter.griffin@linaro.org>
References: <20231201160925.3136868-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The WDT uses the CPU core signal DBGACK to determine whether the SoC
is running in debug mode or not. If the DBGACK signal is asserted and
DBGACK_MASK bit is enabled, then WDT output and interrupt is masked
(disabled).

Presence of the DBGACK_MASK bit is determined by adding a new
QUIRK_HAS_DBGACK_BIT quirk.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/watchdog/s3c2410_wdt.c | 27 ++++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wdt.c
index 0b4bd883ff28..39f3489e41d6 100644
--- a/drivers/watchdog/s3c2410_wdt.c
+++ b/drivers/watchdog/s3c2410_wdt.c
@@ -34,9 +34,10 @@
 
 #define S3C2410_WTCNT_MAXCNT	0xffff
 
-#define S3C2410_WTCON_RSTEN	(1 << 0)
-#define S3C2410_WTCON_INTEN	(1 << 2)
-#define S3C2410_WTCON_ENABLE	(1 << 5)
+#define S3C2410_WTCON_RSTEN		(1 << 0)
+#define S3C2410_WTCON_INTEN		(1 << 2)
+#define S3C2410_WTCON_ENABLE		(1 << 5)
+#define S3C2410_WTCON_DBGACK_MASK	(1 << 16)
 
 #define S3C2410_WTCON_DIV16	(0 << 3)
 #define S3C2410_WTCON_DIV32	(1 << 3)
@@ -100,12 +101,17 @@
  * %QUIRK_HAS_PMU_CNT_EN: PMU block has some register (e.g. CLUSTERx_NONCPU_OUT)
  * with "watchdog counter enable" bit. That bit should be set to make watchdog
  * counter running.
+ *
+ * %QUIRK_HAS_DBGACK_BIT: WTCON register has DBGACK_MASK bit. Setting the
+ * DBGACK_MASK bit disables the watchdog outputs when the SoC is in debug mode.
+ * Debug mode is determined by the DBGACK CPU signal.
  */
 #define QUIRK_HAS_WTCLRINT_REG			(1 << 0)
 #define QUIRK_HAS_PMU_MASK_RESET		(1 << 1)
 #define QUIRK_HAS_PMU_RST_STAT			(1 << 2)
 #define QUIRK_HAS_PMU_AUTO_DISABLE		(1 << 3)
 #define QUIRK_HAS_PMU_CNT_EN			(1 << 4)
+#define QUIRK_HAS_DBGACK_BIT			(1 << 5)
 
 /* These quirks require that we have a PMU register map */
 #define QUIRKS_HAVE_PMUREG \
@@ -375,6 +381,19 @@ static int s3c2410wdt_enable(struct s3c2410_wdt *wdt, bool en)
 	return 0;
 }
 
+static void s3c2410wdt_mask_dbgack(struct s3c2410_wdt *wdt)
+{
+	unsigned long wtcon;
+
+	if (!(wdt->drv_data->quirks & QUIRK_HAS_DBGACK_BIT))
+		return;
+
+	/*  disable watchdog outputs if CPU is in debug mode */
+	wtcon = readl(wdt->reg_base + S3C2410_WTCON);
+	wtcon |= S3C2410_WTCON_DBGACK_MASK;
+	writel(wtcon, wdt->reg_base + S3C2410_WTCON);
+}
+
 static int s3c2410wdt_keepalive(struct watchdog_device *wdd)
 {
 	struct s3c2410_wdt *wdt = watchdog_get_drvdata(wdd);
@@ -700,6 +719,8 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
 	wdt->wdt_device.bootstatus = s3c2410wdt_get_bootstatus(wdt);
 	wdt->wdt_device.parent = dev;
 
+	s3c2410wdt_mask_dbgack(wdt);
+
 	/*
 	 * If "tmr_atboot" param is non-zero, start the watchdog right now. Also
 	 * set WDOG_HW_RUNNING bit, so that watchdog core can kick the watchdog.
-- 
2.43.0.rc2.451.g8631bc7472-goog


