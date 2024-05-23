Return-Path: <devicetree+bounces-68590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F308CCD91
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 09:59:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77EB81C2096C
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 07:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA47F13D61D;
	Thu, 23 May 2024 07:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TK/gv9Ba"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5BF13D2B3
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 07:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716451118; cv=none; b=XLxk5XgW85Mhhx+B0uW55HfSCQZ2MsYX7JmmjDJDSmX8As0qwfTWbeu/0+RlM2/cGaEBK+7SCLpoETWrqbMMiGBIAgX4Z2GvhWwrmw4vFerHVROiH7VPNhE8b3h1SfFslONEoCJO4KkJwea7JD4QNRSIcIKUNbLxVtdGhmxhINQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716451118; c=relaxed/simple;
	bh=oY9pJCCB+gMDQTAUOCI57KbOI5M/HreuFbqNaMW9YWI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kBNPk6EEpQtgAWfQ/cxJPkw7v34gWa9gWjg7HwCilTrGh/gMAhnrjTCfLgNna8Fa3RFcWDCm2lDrQ/wTFtrjq8TC0t6q5+R0f9JHtssuqsanK7dTsZmSM5lP5x7/j/68DgyHeSH470+I+RNt68GcmkVgkvyuetz2Ev3PsQIUPT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TK/gv9Ba; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-420180b58c5so16504855e9.3
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 00:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716451114; x=1717055914; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D8GG0qSUKW/QwiEfb1pXJnlM6Z5iknMteP/DubTFmCA=;
        b=TK/gv9Ba/1znMN70+vHAhjN6RiQjNI7tSNplK/LWY6Q8hlaJoVjf2pzbRI8YW9NTgB
         YbQGTguSFarzIZoVVCiGHAJtm1F4bHxtBqgYK6xjx1THBrMCzLDxhReKLU0uQQJjQoRR
         urz0zaeqdkhvOLi+w5TZ/P67U+DqEIadDPw2z70YWmAJvHg6s7xQyuuhuxgZv9N1rZoz
         Ms4C5vjpWQesLQJq8k0TMNU/29ziYuXW/4F5fmkV3fLmY3bekLVb5TYKC3MZoP4eotE6
         2wlVkqOxXT+tpsVbd0IHrNflWqbd1t3NXAxnLGrUIuwu6uvn1y9vR29ssYzAGINDcGte
         +9sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716451114; x=1717055914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D8GG0qSUKW/QwiEfb1pXJnlM6Z5iknMteP/DubTFmCA=;
        b=r3xsWCehKiwbDOH7b40kxc5X4U9c90+TxeJTV4ehn9LzYlQzF+7HCkLVm+IxlZXMEs
         ughiEi9GLETNcdULiJrU9wXDJQRf5RxvwNRXY8llg2bA0pqMNoFThZhi+bp4Gu0H/ys4
         Mm5+o3j18w5dqN8UkX/3DPYHcK4ETY/fKg1HJU3b6ey3Omi3cVqCeGLYXtdamVgRN3f1
         d0f9V4LHuQu0wPiwJ9UcV8zsiBDdx7k0y8ePMQ1eNij+XuTvnvzrI2iSjQDO/wvp20kG
         jGHlgtRYQnQwZX1JVKXl+fZtx+hWDaKPpSoNhUisoJkaOdj4JwWTE+4KOqNYiurcvm10
         JBMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUG+ZhrxGsBuEgBUz6M7r0khgfxtUAZbNgTt1dJMok2+VN2sgRXbxF+GTe9nXqKzDU0vRP2etoP7zxBQKkxk/WLuni8qMzuVbfUbQ==
X-Gm-Message-State: AOJu0Yx4LzlX6Lc0T/G37gYPDcBE6h8pgcS+7a/mueFvio5vWCWnrZHG
	17VBQqhEwaTGFxlRhZiFZ1rQt5cZeiOkXIbNQjWK0/9iFwX7mK11KHtGt9xNlko=
X-Google-Smtp-Source: AGHT+IHY1QA7e7M81Uch6zrTpW4SzcO290mENs1Q7433I/NCsVyGWKJ/Rr+g3fYyAhO+lvsDLKDNDA==
X-Received: by 2002:a05:600c:56c1:b0:41f:e56c:ef81 with SMTP id 5b1f17b1804b1-420fd2dcc03mr34490425e9.1.1716451113999;
        Thu, 23 May 2024 00:58:33 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f01d7fsm17359125e9.1.2024.05.23.00.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 00:58:33 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	John Ogness <john.ogness@linutronix.de>,
	Markus Schneider-Pargmann <msp@baylibre.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Ronald Wahl <ronald.wahl@raritan.com>,
	Thomas Richard <thomas.richard@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 5/5] serial: 8250: omap: Set wakeup pinctrl on suspend
Date: Thu, 23 May 2024 09:58:19 +0200
Message-ID: <20240523075819.1285554-6-msp@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240523075819.1285554-1-msp@baylibre.com>
References: <20240523075819.1285554-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To enable the serial driver and it's pin to be a wakeup source in
suspend to ram states, select the wakeup pinctrl state on suspend and
restore the default pinctrl state on resume.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/tty/serial/8250/8250_omap.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_omap.c b/drivers/tty/serial/8250/8250_omap.c
index 617a421a1396..61f056c4e78e 100644
--- a/drivers/tty/serial/8250/8250_omap.c
+++ b/drivers/tty/serial/8250/8250_omap.c
@@ -1663,6 +1663,13 @@ static int omap8250_suspend(struct device *dev)
 	struct generic_pm_domain *genpd = pd_to_genpd(dev->pm_domain);
 	int err = 0;
 
+	err = omap8250_select_wakeup_pinctrl(dev, priv);
+	if (err) {
+		dev_err(dev, "Failed to select wakeup pinctrl, aborting suspend %pe\n",
+			ERR_PTR(err));
+		return err;
+	}
+
 	serial8250_suspend_port(priv->line);
 
 	err = pm_runtime_resume_and_get(dev);
@@ -1696,6 +1703,13 @@ static int omap8250_resume(struct device *dev)
 	struct generic_pm_domain *genpd = pd_to_genpd(dev->pm_domain);
 	int err;
 
+	err = pinctrl_select_default_state(dev);
+	if (err) {
+		dev_err(dev, "Failed to select default pinctrl state on resume: %pe\n",
+			ERR_PTR(err));
+		return err;
+	}
+
 	if (uart_console(&up->port) && console_suspend_enabled) {
 		if (console_suspend_enabled) {
 			err = pm_runtime_force_resume(dev);
-- 
2.43.0


