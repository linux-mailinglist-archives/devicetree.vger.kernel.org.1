Return-Path: <devicetree+bounces-221875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC18BA3CB4
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9668D382B73
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A492FB60A;
	Fri, 26 Sep 2025 13:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CpOVhZG3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F562F6565
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758892298; cv=none; b=EQYYzlpUhnZ4yd2gfGEQH6gnK/ylAFQVt1QmOxl0gcChybNoysYLd+bO6IwqYwBVDq2YMsaHRU93vfkT96rE2zTXq6aOuKK4zsumk4DpbtxEezj8CLR/YXPnVWllKqQ+kTh+Om2MjHJzrMU3irmUHUK2aAPFRklM6y5HSOn/yY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758892298; c=relaxed/simple;
	bh=8QXukFFdhrRn2peTuBfsWRiyR8y/J2hEQydiLTT8V2I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JgAhD+ZTqjrAL02g0VBHonj+XfH6yHiHhaR42pVoz0GGlxm7h6ozMNI6IfIieAPQyUl0x9S2LmD1fNCZBxyk0J8toCja5VhU6ILDadg5zYqWJviYIuIUqw/Lmu4nNRYlc0cXskq/QRV4GeBG1xc9PNDnB6Sif0FVBWFza46kuZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CpOVhZG3; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-36a53fe7ebdso19505091fa.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1758892292; x=1759497092; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+IULFJYV86S6ZpfwTIK6NKFvLB7brLHHTAANiqsCeGE=;
        b=CpOVhZG3vaxV2fboQSsRh23NrW90eUjXQS6O48r81fKWyQ1M9GO2uGrcKf4PxEg4gX
         3I3U4y+P23YYueW78VE2BfMvSvXu39119YNbwseVb2awkxTYYHXQa/kSMzK5NKg5BtXz
         /mOmJlsI9jEAHUkIPEXIueXJNLkCDwTnc0SG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758892292; x=1759497092;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+IULFJYV86S6ZpfwTIK6NKFvLB7brLHHTAANiqsCeGE=;
        b=ZlFpos7C5KvaXLkW89hH0PjnUxlk6aWCnL+iK99as5QTY5UOxOCQq1h24Fp8ZnHp0O
         Lo87NDvyC1eWwcsj8cTtx3ECStSYsa/WeHq632tr4rKDmzHgHtj9MY/sWh5yHHgQFhB4
         iPtms4Lzj72priKoxPS75KkTLAlg2Hn3EgZJ/GplY3Y8TR4mD05T+CngjyAvv/aWCVCg
         pFn38lOSjV87xqdmQWj2B0HgqQ2MxfBjDsCzHhFmS0BS0Le6WNlOTrA9pmk9XnzZrfhF
         3jr90oEme3J343lENxyThBQGcQ9GPmtleGFemVz5Qgytr3pRRaFbwiKU8OlzA+QtOtpI
         XuWw==
X-Forwarded-Encrypted: i=1; AJvYcCV0WNpfdv0TzqgdFobgFiA7OpLhcMpw+n/8m4Ci7Ufv2VWYQMTMm9lN3LSJQ4X3d2j5VQyw7eIGUbEA@vger.kernel.org
X-Gm-Message-State: AOJu0YxWcnODMLs3MjmYyLCrV5CRKnzyVmXfQaKyyiKKZCIOOH4ABxSi
	EgAG7M/fjNwZzpy/ILJUL4MV0JUGYIJd7QBkpcIeSswat2m+cPXWKdZKIGw3bQIsUQ==
X-Gm-Gg: ASbGnctNHneOH/4jAbpmFYx4n5HAzj1kcq8yATialsvgjcRF1M06PZnjAqhqYZRDddM
	m4RcCQT/x3hBbln4VU0cLCCWF/N0XV8DZ1/JbzeJLJE1aOHenfkhbzYz6ltjb1op9w25GEyUgAG
	fFPlCV3owAb9VLj4vUutJU2VNsUpZOCaKnlN67P7JecXVr+qU44d2PWjnL05oPCiZI4olgC2oXq
	AY5iJhorqJ5B7enVnWloyJ1QysY5t2D3nVzQQqMOwqETt6IqbSwdalYNjk1HFZbb7hxfX4w2Mg4
	tKxpRL15JBu+d2t35i34GRpgDxNokzTwmUh1zKZ5Qxs1rfMgC2ayoVbm7Xg6PofPWeDutL1Fm/q
	yM5xhZc5kQoZlkF99qSNhqNWEktXlzKLbwgiFvC17oGm44Td8tv/zemc6frwgYwH9dgx+k/dFVb
	IRct8OP2qwKhxB
X-Google-Smtp-Source: AGHT+IE/r2pIJwf7kAuauI+jC65tbRl8WC4I4+SdoNtU43PxQUMr/4vfCOnHocv1AyDV3BygK1ERFA==
X-Received: by 2002:a05:6512:2201:b0:570:e55e:47fc with SMTP id 2adb3069b0e04-582d3c9674cmr2179748e87.54.1758892292030;
        Fri, 26 Sep 2025 06:11:32 -0700 (PDT)
Received: from ribalda.c.googlers.com (64.153.228.35.bc.googleusercontent.com. [35.228.153.64])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58527c6b014sm123872e87.43.2025.09.26.06.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:11:31 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Sep 2025 13:11:28 +0000
Subject: [PATCH v3 04/12] ACPI: mipi-disco-img: Do not duplicate rotation
 info into swnodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-uvc-orientation-v3-4-6dc2fa5b4220@chromium.org>
References: <20250926-uvc-orientation-v3-0-6dc2fa5b4220@chromium.org>
In-Reply-To: <20250926-uvc-orientation-v3-0-6dc2fa5b4220@chromium.org>
To: Hans de Goede <hansg@kernel.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, 
 Robert Moore <robert.moore@intel.com>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-acpi@vger.kernel.org, 
 acpica-devel@lists.linux.dev, Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2

The function v4l2_fwnode_device_parse() is now capable of parsing the
_PLD method, there is no need to duplicate the rotation information in a
swnode.

Reviewed-by: Hans de Goede <hansg@kernel.org>
Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/acpi/mipi-disco-img.c | 15 ---------------
 include/acpi/acpi_bus.h       |  1 -
 2 files changed, 16 deletions(-)

diff --git a/drivers/acpi/mipi-disco-img.c b/drivers/acpi/mipi-disco-img.c
index 5b85989f96beeb726f59ac9e12e965a215fb38f6..b58b5ba22a47a4afc5212998074d322f0b7586dc 100644
--- a/drivers/acpi/mipi-disco-img.c
+++ b/drivers/acpi/mipi-disco-img.c
@@ -617,21 +617,6 @@ static void init_crs_csi2_swnodes(struct crs_csi2 *csi2)
 
 	adev_fwnode = acpi_fwnode_handle(adev);
 
-	/*
-	 * If the "rotation" property is not present, but _PLD is there,
-	 * evaluate it to get the "rotation" value.
-	 */
-	if (!fwnode_property_present(adev_fwnode, "rotation")) {
-		struct acpi_pld_info *pld;
-
-		if (acpi_get_physical_device_location(handle, &pld)) {
-			swnodes->dev_props[NEXT_PROPERTY(prop_index, DEV_ROTATION)] =
-					PROPERTY_ENTRY_U32("rotation",
-							   pld->rotation * 45U);
-			kfree(pld);
-		}
-	}
-
 	if (!fwnode_property_read_u32(adev_fwnode, "mipi-img-clock-frequency", &val))
 		swnodes->dev_props[NEXT_PROPERTY(prop_index, DEV_CLOCK_FREQUENCY)] =
 			PROPERTY_ENTRY_U32("clock-frequency", val);
diff --git a/include/acpi/acpi_bus.h b/include/acpi/acpi_bus.h
index aad1a95e6863d443a45985ba7ec7be4acf8664fe..296716875a3e7977abb7b7dfa89f78664aebd61c 100644
--- a/include/acpi/acpi_bus.h
+++ b/include/acpi/acpi_bus.h
@@ -389,7 +389,6 @@ struct acpi_gpio_mapping;
 #define ACPI_DEVICE_SWNODE_PORT_NAME_LENGTH	8
 
 enum acpi_device_swnode_dev_props {
-	ACPI_DEVICE_SWNODE_DEV_ROTATION,
 	ACPI_DEVICE_SWNODE_DEV_CLOCK_FREQUENCY,
 	ACPI_DEVICE_SWNODE_DEV_LED_MAX_MICROAMP,
 	ACPI_DEVICE_SWNODE_DEV_FLASH_MAX_MICROAMP,

-- 
2.51.0.536.g15c5d4f767-goog


