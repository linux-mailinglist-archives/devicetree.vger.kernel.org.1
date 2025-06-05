Return-Path: <devicetree+bounces-183134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 592BCACF604
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 19:56:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 193C917ADB0
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 17:56:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C629B28152B;
	Thu,  5 Jun 2025 17:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Zo+alpBC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5966227D77B
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 17:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749146000; cv=none; b=bT1IAFu5LQMjxkvDg7Roc/p1hjRyn1SdS5vYCEt0EsLOnrHu/uLHxcl5qrzGLC/XRqQHnGpK21RWzdJO4QufyhiD/UvHvtTCjm/YR4AVwiS54OkbHzv8jKIg/3pzEV69M3n3HxwH4PJPGIXx3HO1sN8VRn4HvK4Un9VypjKtVlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749146000; c=relaxed/simple;
	bh=ud/yG1CR5QNIjOMJtgHhzLjfPGyRK5X2yNstenoh6F0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dgd+MQUHJFzhaUw1tJ09EksfyYzQcSOne/jUVpX3fSwvig8OUj4LS25P2HjIViy+/5RNT50ThpzO0cbvcrqxZNfyp0OgvmRRye9z7/WsC348QaRh0SoMGH/AYU04XDqORY1Lv318se6lKZz/h9/fWERpz5LY4b22ryBgG8MIoJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Zo+alpBC; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-32a6a91f0easo6419001fa.0
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 10:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749145989; x=1749750789; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V9Qke5DC9C5R7oeoSiHKicNykKWx9HQwgMxvcWAUcsQ=;
        b=Zo+alpBC9ydAquWIpW+tcw7w9hjbZzS3WB0v4tV40PZFbtfrQA1Cmtckr2j8Krk+za
         f/A75+JcseniPbhdkoDdrYYQbkmzdx08B52fi0TIXzLMrNU4LxRF5FOOTDMQNfyQdwiQ
         hDMcCBsfKo7IkwzxdgV6Crsjoi/fEZyEDyF2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749145989; x=1749750789;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V9Qke5DC9C5R7oeoSiHKicNykKWx9HQwgMxvcWAUcsQ=;
        b=ql9vmjRnP2S7/1n4fymgvHshYwxZg4qDMKIIspqXGJ0iA1/stmAzGeuk+lU0XK0Xel
         O7HuPXfo8t51v3mkQV5+EktFBqkmUiJ70lWnO1lnSFJmzSq8SCplC6zQ/lP17ZoDr3b/
         YWx/TsNMbHegbjjGm6lAACFbrnSpO70KjLHq9zUr4L1Cg85/4peF5RAExkUjkrH7Qylv
         TzUNAQfZuj4LzYTjlBNAvhI6PHw9eGHYu+zbZk1BMn9lUX5dSwsNt/sp6sAA0feZdvRW
         gHS6MwGCnGWSBCI8ejTugqDkQ2z6LPn2M+rbDhutlW1J1mZL9CLmXSMsmNtkpXngIU+m
         6Cxw==
X-Forwarded-Encrypted: i=1; AJvYcCVkY8TjkgBtSGrd5MtFOlBhBaKERa7rXWurMaqAuk77wOlk7OlzZl9gmHej3RLS498PU9w4bTboSrpa@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+SF1YPXqSWT19PvK+RRCP+APEMikV1rlN4vV3Fwe6E2HK67Nm
	gvtcg3jjjXiMZcb9WrhUIcCuBOILsxZG1WvCpX/7H0Vs1BLaSqW0ZraMOjANEWIg9A==
X-Gm-Gg: ASbGncu6zIUTe9z8kWZNXzhFLbpcPOLcnF2sY5Swusd0bNbPXThdpBTHkPJ+g9/rO3y
	2xoHfrn+tZpo45cteHVOiHyasvcZ7ine8vpdqYbf0N08j5XVB9YeQbFX07vVr/dbt9BZ6VQy7fb
	AYN4s1lgeQpDP/ZD4nSLLic3g5E/Z9hVw0lVFrPBABVHT1WNtbXu8DZqKkksbEyOe7CTgn6GNp4
	YqpWBjPECVt7uURTNj0aWmOkgfmlqJlFJRWdBCHKrTWOS/jBbxuR5dCgzp3MmM/D7dCIvHBXn/M
	8AbHf1WcuT2NrJT0GgnE3O7fESmjEq1ClUJOkBKxSkaV05LA3nkPx7lCqJh9P8/vAY+s1iCG2gu
	akJklWVROjtrKRp+m6y0JkN2ohg==
X-Google-Smtp-Source: AGHT+IGkU0Qv4tzSIKsGHyevtVEeWEZfFr7MOjKvYk6divFF106BKU0YcQGNBaigtq0IO3jXnttxCg==
X-Received: by 2002:a05:6512:3da7:b0:553:2698:99c0 with SMTP id 2adb3069b0e04-55366c0e612mr15721e87.36.1749145989470;
        Thu, 05 Jun 2025 10:53:09 -0700 (PDT)
Received: from ribalda.c.googlers.com (90.52.88.34.bc.googleusercontent.com. [34.88.52.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553379379c2sm2641210e87.251.2025.06.05.10.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 10:53:08 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 05 Jun 2025 17:53:05 +0000
Subject: [PATCH v2 12/12] media: uvcvideo: Do not create MC entities for
 virtual entities
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-uvc-orientation-v2-12-5710f9d030aa@chromium.org>
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
In-Reply-To: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans de Goede <hdegoede@redhat.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-acpi@vger.kernel.org, 
 Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2

Neither the GPIO nor the SWENTITY entities form part of the device
pipeline. We just create them to hold emulated uvc controls.

When the device initializes, a warning is thrown by the v4l2 core:
uvcvideo 1-1:1.0: Entity type for entity SWENTITY was not initialized!

There are no entity function that matches what we are doing here, and
it does not make to much sense to create a function for entities that
do not really exist.

Do not create MC entities for them and pretend nothing happened here.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/usb/uvc/uvc_entity.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/media/usb/uvc/uvc_entity.c b/drivers/media/usb/uvc/uvc_entity.c
index d1a652ef35ec34801bd39a5124b834edf838a79e..2dbeb4ab0c4c8cc763ff2dcd2d836a50f3c6a040 100644
--- a/drivers/media/usb/uvc/uvc_entity.c
+++ b/drivers/media/usb/uvc/uvc_entity.c
@@ -72,6 +72,16 @@ static int uvc_mc_init_entity(struct uvc_video_chain *chain,
 {
 	int ret;
 
+	/*
+	 * Do not initialize virtual entities, they do not really exist
+	 * and are not connected to any other entities.
+	 */
+	switch (UVC_ENTITY_TYPE(entity)) {
+	case UVC_EXT_GPIO_UNIT:
+	case UVC_SWENTITY_UNIT:
+		return 0;
+	}
+
 	if (UVC_ENTITY_TYPE(entity) != UVC_TT_STREAMING) {
 		u32 function;
 

-- 
2.50.0.rc0.642.g800a2b2222-goog


