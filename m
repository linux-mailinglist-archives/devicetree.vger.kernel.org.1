Return-Path: <devicetree+bounces-91785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A38A694A988
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 16:12:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D45301C20C97
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 14:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 970B738DF9;
	Wed,  7 Aug 2024 14:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="L5phjNjl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7A91DDE9
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 14:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723039972; cv=none; b=ccRR9XZT4SDuYPeyW520wttqHzowRzQ2MXmZKy2M7tPmmKQ8R91MyALNU4N0DC9ig+m0Wcp1vdp6YrRg1fkAbJ/zNG5fAAHJDrx/LOkE9a6YLUKEwtDArsYiV3PLS0rCuS0AmOCBi1k0RNjDNhmioNNnXn6ssRMl7QhyUSCF1nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723039972; c=relaxed/simple;
	bh=MwwwlILPBrJubGFy6q/y6XZ7ELEBOo3CsDbrxodDZtQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GN1WDdwoG5awrD+5H86kwn0PeDQj8Ayodv1X2DHh3Q4l3KW9rqAlR4nIl3r/XkK+r7BlGNvUSYewPxKbCCWmi2IrJTomdRAFohLRcgCaLGBvzcC6Mm2PC5ZJJlUl6xAQk5pjhgnT9CpZIFG35Sa4x0MtWSP6g+IgDLyz4aDuPTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=L5phjNjl; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52f04c29588so2462759e87.3
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 07:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1723039968; x=1723644768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rhnBrsrtx8JhjXSaZo5MeZvYsFC+QghJ1OF9fPH+ytE=;
        b=L5phjNjluLI/du9LQX4NRL8zcDidFj1bjJsF67/W7epwNpES3X1/P1oyqBZ8SfcDKB
         sHQBbIUFybOsPsqRsRXtrUH8H6T+TMcOOO8qn6FzMX1s0KrJaiR3hnzyZvQJ6EHR+N9i
         ZEPPL4bU9yG0R4igzB8g5sTciptxLkMzVFGiv2EAIDCoVJe2ldAQbdlIEZKe33HbXQid
         PpkS9J5zrEv8Aq/HwsWjeiUBNTOXxP2rsxXljPoenGO2d0KXiETVVAQBQOoMUSSO5Nd8
         RBzdZ2iUrRuUbZYZJ0d+FBKTiaD8lLNKz239xjhfcyNDqbaC03rEICcaVevCGX0LxwTP
         S63w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723039968; x=1723644768;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rhnBrsrtx8JhjXSaZo5MeZvYsFC+QghJ1OF9fPH+ytE=;
        b=A7Ef3lM6E2Bjd5pKO7LLzrr9y837LgosW0MX/h4IVeEjmawfjF3EuxHs7bzSfU76fK
         irxXMzGnbW4JvF5FBLsBlNfMj0JnHuBPY6URHgAPwfd7dvDdrikCDqrcmFMhpEeICgnO
         wM47LunnX1QlN7mTAIf+tqFPRjVzJsWDKV6SsMQBHNoba4W+j/jTigK0jjzrjdV+Nr+v
         L1TB6bDja48zLjkv4oxaQldotRagcZckbX28eAwFHPbVyG6h5vF/RnBJKdwAZPIEiyHV
         gRbYwGUfvDMpL7gq4UwHB2ggZEXDKO04xvEaYn+jAPOIPHzVk2EEazhrknIcrdAUGxY8
         TnXw==
X-Forwarded-Encrypted: i=1; AJvYcCWWqCdIXJR3mY6xNQVlEB7CWQaI9MmO4d/glTrjz32OHZi1I3picUaSjfWiuJZm2IHiBUu6tQHH6MEwGpuSLpQ98fK4E0hVFJSWVg==
X-Gm-Message-State: AOJu0YyIMeG9oTQ4qSvPbKhJYo3P/ER1uYR2PqTyzhXS51RV9WxEoXPy
	gk0QnP2x/iHbxbs8hl8djaLNUD0b2XPDgS49J31f8jmZS1/wklZKqcHPjmMEEZs=
X-Google-Smtp-Source: AGHT+IEJyt0WGEXWzqRXsX8JTktfdH+4TvqQykj+Gjwr32tHfWEz80uMq7FNr1g7QseHu2DJb76PiQ==
X-Received: by 2002:a05:6512:3d11:b0:52c:d750:bd19 with SMTP id 2adb3069b0e04-530bb39d200mr10835746e87.8.1723039968086;
        Wed, 07 Aug 2024 07:12:48 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5b83b92cbccsm7057525a12.68.2024.08.07.07.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 07:12:47 -0700 (PDT)
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
Subject: [PATCH v2 0/5] serial: 8250: omap: Add am62 wakeup support
Date: Wed,  7 Aug 2024 16:12:22 +0200
Message-ID: <20240807141227.1093006-1-msp@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

v2
--

In Version 2 I removed the Partial-IO specific patches as these can't be
tested due to power issues in Partial-IO on am62-lp-sk and similar
boards.

I added a patch to add DT 'wakeup-source' support.

Series
------

To support wakeup from several low power modes on am62, don't always
enable device wakeup. Instead only set it to wakeup capable. A
devicetree property 'wakeup-source' can be used to enable wakeup. The
user is also able to control if wakeup is enabled through sysfs.

Base
----
v6.11-rc1

Tests
-----
I tested these patches on am62-lp-sk.

Previous versions
-----------------
v1: https://lore.kernel.org/lkml/20240523075819.1285554-1-msp@baylibre.com/

Changes in v2
-------------
 - Remove Partial-IO patches
 - Replace device_init_wakeup with device_set_wakeup_capable in
   omap8250_remove as well

Best,
Markus

Markus Schneider-Pargmann (5):
  dt-bindings: serial: 8250_omap: Add wakeup-source property
  serial: 8250: omap: Remove unused wakeups_enabled
  serial: 8250: omap: Cleanup on error in request_irq
  serial: 8250: omap: Set wakeup capable, do not enable
  serial: 8250: omap: Parse DT wakeup-source proerty

 .../devicetree/bindings/serial/8250_omap.yaml          |  1 +
 drivers/tty/serial/8250/8250_omap.c                    | 10 ++++++----
 2 files changed, 7 insertions(+), 4 deletions(-)

-- 
2.45.2


