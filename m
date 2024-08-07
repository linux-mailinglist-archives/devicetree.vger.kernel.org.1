Return-Path: <devicetree+bounces-91790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D73C94A997
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 16:13:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E1A81C21926
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 14:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02E127A15C;
	Wed,  7 Aug 2024 14:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3J9tLpxp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A32877115
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 14:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723039977; cv=none; b=hPplVUQIAlJSTkX0knfgQa9gGRGmiYMHPtSyFn0jHprZ19izuwuS9j/CauU55fsjEeAJrIPGZo6uSbCBi97Ciy8VwZHagnC8wo/Z90/5tTdgOlWvIi2hYaVQ1iGgeL0ZVH5qQ+DSRzu0rnc0RabTUH+ZeLLqFY7gamqSrbxRDU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723039977; c=relaxed/simple;
	bh=jJ/dqspqaWeDfyxYIMbjnG33egLfKjvpbKPXZLYU2Y4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fAtTBXSKiwBA3oPGwF30v5n1r6NU5gxHHEbnuvpKTYb5MzO3Bg+iuEjinYBx81MobHZma+AWHyy/DJnDI8Qwg9FONxPspzv+EdnM2AIjRQnJrS9uojOm3OEwBg+cws3FmHQXAqbj+butkfqCHyF1YwqZ/N0HbJoV6HV8Bc78zn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3J9tLpxp; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5a1c49632deso2209217a12.2
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 07:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1723039975; x=1723644775; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KWzbHrkvy9hRtxlDmALumwCtMR3F4NOzbURL/XveH2s=;
        b=3J9tLpxpAQktP/CNTTI9R2YOuNOZ9seuckzPxBGLeAWc3ObioLIZSPGwwitFJdIq75
         Rvdk8vMG4l3ysDhInNv0TsiunZFNkjPa6oIkwD+dqWAuVU0U2KJ5h06vL+CAFeoPBQaL
         ASbmu1hDxqC/gsdzEgLienLvA1eWUZbGXRxfQQWuNBsU2Aj+vBITfE7mSaN2q2mM0v/W
         l4zVUQYUYYPNzDzLZfzPWAWtJ5PlzkYQbU5rQ51CKWYFcJEifIaAn6lPS+WRx/Uat4EO
         +S6F1jRk4ijw5lu82yXg6tJ0yFDe6syDb9z8O/pdzwt1fuzZSOLxrSEi0yo1R63qYXgI
         NQ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723039975; x=1723644775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KWzbHrkvy9hRtxlDmALumwCtMR3F4NOzbURL/XveH2s=;
        b=irTFPwXFdw+d/cpQorvVUhxi/wc2hBWCH0xYSeO5z27o5FJPEEhiHmYVzdeGS9VhX/
         H05KjGCmuM1z452Ep/EY71LR/S83N218toQIIhmZigA8QGs0doNtg5NCDAyShn2g8at+
         I644gKbAerzVKJhLgfc3fjA63pR+GkBbEWNL+Hr71uRp4nMKcF1FfnzJulF12y8G1CQf
         svGMsn43c14W3IpFMsErm6/SczAJB2z/Azw/As6E3qgWojc3U5JQTaF04eZeuN95misL
         nUweBey9/Dro7sPQadW6BwhEzNsSXoiJDoT40ZvMoPSAmPMjlTJo/6jxSzaKQ4dyieLd
         aTvA==
X-Forwarded-Encrypted: i=1; AJvYcCWTd2dHtdm5G2jcjkpGu8G/gelFerYqZ0MDeljScK6O4YzR6b7jxLDms7p/aF6smcbzCAaI2jlwsVbaJvt01nqBZLokpDC69p2MzA==
X-Gm-Message-State: AOJu0YyauIiU03ry+7oppde6wX6ZkcJweHp6nF/A8Ky+CSkYJ/YYHXiq
	s+JcL9bT6YIYwS+9UvKs0kOE/Tm5Cir/+59qfP+6UcYRuOyys5IvFKEuZnz6NGQ=
X-Google-Smtp-Source: AGHT+IGq4cislIJyd0Fi3SNfVx3j+NKux5WeCaTZh0bSfOP0nKaFhK2IzDBaxUc7p5dC22ZqWvPYOg==
X-Received: by 2002:a05:6402:60f:b0:5a3:a9f8:cf20 with SMTP id 4fb4d7f45d1cf-5b7f58eb70dmr12738369a12.34.1723039974659;
        Wed, 07 Aug 2024 07:12:54 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5b83b92cbccsm7057525a12.68.2024.08.07.07.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 07:12:54 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Markus Schneider-Pargmann <msp@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Ronald Wahl <ronald.wahl@raritan.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Thomas Richard <thomas.richard@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Udit Kumar <u-kumar1@ti.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 5/5] serial: 8250: omap: Parse DT wakeup-source proerty
Date: Wed,  7 Aug 2024 16:12:27 +0200
Message-ID: <20240807141227.1093006-6-msp@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240807141227.1093006-1-msp@baylibre.com>
References: <20240807141227.1093006-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

If the wakeup-source property is present, enable wakeup from this
device.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/tty/serial/8250/8250_omap.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_omap.c b/drivers/tty/serial/8250/8250_omap.c
index 7a6dfd40af9e..ccb83c05be20 100644
--- a/drivers/tty/serial/8250/8250_omap.c
+++ b/drivers/tty/serial/8250/8250_omap.c
@@ -1530,6 +1530,9 @@ static int omap8250_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, priv);
 
 	device_set_wakeup_capable(&pdev->dev, true);
+	if (of_property_read_bool(np, "wakeup-source"))
+		device_set_wakeup_enable(&pdev->dev, true);
+
 	pm_runtime_enable(&pdev->dev);
 	pm_runtime_use_autosuspend(&pdev->dev);
 
-- 
2.45.2


