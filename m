Return-Path: <devicetree+bounces-91788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9FE94A991
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 16:13:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1991A1C2109C
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 14:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B20917641D;
	Wed,  7 Aug 2024 14:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="w1LATSfC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5EFF5BAF0
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723039975; cv=none; b=dCUkcSaxxueXa28QE1rhT4JFS3AIiz6AEc3LNCmZwmH0x13r7cVCh2l3G688XAuOy+B1l42Az1mlmzQ8tOU7nbssHKljSgFIZigHHvX/DtTi4nh4wJ+5NAkfhG9eLEoFYP7+bEEf/lcWCs+q/vdIbYorxNpF4YsfJuP1YZjdt3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723039975; c=relaxed/simple;
	bh=e9Jc2sCWqNGEQJxc1zAjMLSN7zhY899ZX891bxlRIFA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VHqFpe/O3qO0AxG0epz9apJS6TlaO7mLRDEyCz0HwwDBvf1bje02cLZbnsjswUL+r9hQcNRyTWFJul/zwrkXx4G9pzykuw++OQl0VSZzP63so8z97I/iwxCcUfo4JM7df3dXudCVL8z2YuBHH7ibi0zfOVM4d3lkDHizls/m+lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=w1LATSfC; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5af51684d52so2175735a12.1
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 07:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1723039972; x=1723644772; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oKla0TikiRVuhRSfUT0bnjb0mFUM6MzVyHzb7uGiohw=;
        b=w1LATSfC1cDKgdDqOGwe3eDw9Mp9RG252mLySZfJImFljP1OOFTgA0wxCA6NSTeuET
         bLyYU2r6iJiEcYLCAaJJK1ISp6OGpqMNFoffi/MsabY6tnOJDdm7N9/2LpEUCvzgkrFJ
         4efDk6BCnRM2OpgSVkNlqXgJq8zNMNgzG+/PLOvyEwz7dCU8T95PeAaxfElW1f11bDr7
         IvjkamYeEOZXN3xJnvpu26gxBQ71rjfOOe96MCoDVWFqqkqh0/m5/1MwqIzjKW/CJmpy
         Ee4RNKc9pCPeinesdVg04djl5zH45vZHYzGvmJufOJuC9FLkE3vizvnLlF+ziFSfpDbn
         Buig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723039972; x=1723644772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oKla0TikiRVuhRSfUT0bnjb0mFUM6MzVyHzb7uGiohw=;
        b=BgqUiwmjrygOdfwR0JWr1GbaCjzBfy8VtXZRbl3m+J729bQLMlfukQSoZm86heCBTq
         bOOP2reBgkpES8RmMGDaYGhipWg/GquEBOGEnQGC8p0gHRm407xf0CnBnjRJkSxwQpcJ
         j4RsZqR+5uQkgbIsdo97BIzooQ5NKGMOAUNwRQ/8dYR/zmVjdd+K15PxDrwe/ys/3Vts
         uoTlZukzXTtM1hA7IRbKM//IbK1YSHlLhv62zqwgQN1nuGXGyzgr5gJk1nqRdg6AXO+3
         Wf2mr9VyDy8RbO/1APJAZg5hNT8IM8TqoDs60lRgg0+/XzIYoLyJZ7EynWpCRF7iZsJj
         XWjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXa4ZttJVE1dZuFu+ELD41hbO7MEi7c5WBT07bYdJdgRlKpYpeWMPTUgsr+Lzgv/iZtQ8ajqXqVElbClD5Ue3y/uZay4DDYAgFMkA==
X-Gm-Message-State: AOJu0Yx4URyduG7BmEJOfyrO4yJilACHhVkI2pKqaOppiln1FE41uWte
	lHnuTkWum+yliXlmzDrXPdwppCT/jFga6m/f6o46vyn+j/0A1XS7joE8ir5iIOA=
X-Google-Smtp-Source: AGHT+IFTtDrHzcEyJfrxQSsx9wYYXZfPjxj1fP6zwRtDfyoo6YHEvanfv08xhTEKIkVOKBpqh5fwkA==
X-Received: by 2002:a05:6402:542:b0:5a2:37e0:1e88 with SMTP id 4fb4d7f45d1cf-5b7f39e0ac1mr12617987a12.9.1723039971875;
        Wed, 07 Aug 2024 07:12:51 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5b83b92cbccsm7057525a12.68.2024.08.07.07.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 07:12:51 -0700 (PDT)
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
Subject: [PATCH v2 3/5] serial: 8250: omap: Cleanup on error in request_irq
Date: Wed,  7 Aug 2024 16:12:25 +0200
Message-ID: <20240807141227.1093006-4-msp@baylibre.com>
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

If devm_request_irq fails, the code does not cleanup many things that
were setup before. Instead of directly returning ret we should jump to
err.

Fixes: fef4f600319e ("serial: 8250: omap: Fix life cycle issues for interrupt handlers")
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/tty/serial/8250/8250_omap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250_omap.c b/drivers/tty/serial/8250/8250_omap.c
index 02d4f3073696..01d430de9c64 100644
--- a/drivers/tty/serial/8250/8250_omap.c
+++ b/drivers/tty/serial/8250/8250_omap.c
@@ -1587,7 +1587,7 @@ static int omap8250_probe(struct platform_device *pdev)
 	ret = devm_request_irq(&pdev->dev, up.port.irq, omap8250_irq, 0,
 			       dev_name(&pdev->dev), priv);
 	if (ret < 0)
-		return ret;
+		goto err;
 
 	priv->wakeirq = irq_of_parse_and_map(np, 1);
 
-- 
2.45.2


