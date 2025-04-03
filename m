Return-Path: <devicetree+bounces-163010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C7BA7AE65
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 22:26:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FBEE189BDB2
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 20:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0322B205ABC;
	Thu,  3 Apr 2025 19:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KzcRrt6T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D74202F76
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 19:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743707795; cv=none; b=UaxxHd3OYk764kc9OUzh/C5QhhkTD4A/ozDNUuZc7mvv9/xT/Q2sMBjGSYWssbVivTn3ghob7KIForPyTiJLy/S7sFh9ghgclahoY7FS6+EevX0bHizTIOATrBShM2awpPqVCnF8f8XEheOhNotzcGi0iQzriNCPsJ5H+MbY/24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743707795; c=relaxed/simple;
	bh=oIe/uWD/FQDzr1edh1CzgOk8NT19Av3Ax0Mu4QeYt0c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WhfXIpPx3Ve6EHRwyrAAZ9KHeUQJoj9FCzGpbMsssYFLzzJ5CAlWNXo/LETILnwSywXWaFKK29p3U+hDbwgufpMOZ6NzrT1Tq2SGABuPF+wcrFr9VDe5o/smPlD1fWasW5WaqiqurOvMR+FMW62EWZmGFFgGzmc5rZjDzaSQmeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KzcRrt6T; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54b1095625dso1445567e87.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 12:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1743707791; x=1744312591; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dorrjSo0orF//5lS6H31AEnatOUG0VehlrElNg21OPo=;
        b=KzcRrt6Tn4J4roTiElDsx6nBuxoqkw131eiq8KEj5G9YyO2hMWnVUXimaETLD+go38
         8zmQjuyZ12i+Tow/1AKE/p/tPZLMpoTgwhacOV4EVTpyXKUGH/TLmrKD1uP866iZ9/xn
         nH+JVdVFOpZ849qslDl0pHcfyaASPW8VTQ7+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743707791; x=1744312591;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dorrjSo0orF//5lS6H31AEnatOUG0VehlrElNg21OPo=;
        b=O0gEKClpzNOCuDRqWLk8/vSwhHAyelT5hgAxqzpvFa87/+fxVESticAySNY2gCQxhJ
         fifl8igQqFUy8DxJNo/i5ZrU/dcjMWYkhkSKaYBx4PKKTD8j5BjZfBk12cDfOgIIpq5I
         tAcav6Hhn4wIQkjMlm/wlW96jFcHTq85WBuWostPYtWULH3Kuvdkyiqmo/r3jaBYNmtl
         9anU4Uhj61RjWT9Y2UhqzaqGK242XWyBFZ2/t/86f92oJ+vUsVt3xvzh25sT+FiGE5Rs
         /1b/PC9V+BD3dpdF9BsDvzRtt8JkR9QCLiwBv1RFR2OonXRQzThGIdg+Lkg3hB0jyBGf
         cgXg==
X-Forwarded-Encrypted: i=1; AJvYcCXveIFHTankqBeM6h7x127UjH6rrb+kHHzuzda9dId7pnC6HVFIO9D9Ju55vHwvWSXlbcaUoZcQI4qa@vger.kernel.org
X-Gm-Message-State: AOJu0YxNZJgylfLw49+thALavKCbalt9e68eJ1gdO6g+68MRgnCoQ0m1
	j4SYPIjWl/j2SNf1ALcuVaj+SVTKQPhxrfZw19eXi/lBoc+mnX3cgs7XCzkoIA==
X-Gm-Gg: ASbGncvmjS8feOMey1bHM+x8SvvEYdak7hocLuieOuqxQk1Axna28v3RtAK7x0TibPw
	erfVqQU4qtTY8p1ltnLpYzMDFnGvsYrTq0V7MhU87vhmakrnYNmbWOBTFwRyVh0INLh5ISfyjtd
	KoyxSdrzi1BZV/94zqPNJ7PdLTG+rKeq859oOBDoFvIGQRwTfkDf1iIYkW6By+41v2EpRK335Q2
	+rRJEaj5CnmBAp1vKbvPQqbxRoIJEn1YvXPeIdzxNQnrcUUVQ34RJzNfoYNbkNqbvvQ6/qEyi/H
	Z8RximUKW4bItjVxuq4/sz0Yz5yfD1VVUslaKaYC6oPqp+qGq1mZjQqqRQnYTmEi3kJSEWhr9kw
	I3WsVqvH8yyQeXCJBxdTGeYk+
X-Google-Smtp-Source: AGHT+IGVY3EFg5KnHKmHO2hTamBaTkRj2xwhuyk+NEFXhuefJ9O4PY6IbapG0I2fVQxVv80RmqRT3w==
X-Received: by 2002:a05:6512:a91:b0:545:cd5:84d9 with SMTP id 2adb3069b0e04-54c2276e9b2mr115584e87.12.1743707790862;
        Thu, 03 Apr 2025 12:16:30 -0700 (PDT)
Received: from ribalda.c.googlers.com (216.148.88.34.bc.googleusercontent.com. [34.88.148.216])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e65d6b1sm230142e87.194.2025.04.03.12.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 12:16:29 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 03 Apr 2025 19:16:19 +0000
Subject: [PATCH 8/8] media: uvcvideo: Do not create MC entities for virtual
 entities
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250403-uvc-orientation-v1-8-1a0cc595a62d@chromium.org>
References: <20250403-uvc-orientation-v1-0-1a0cc595a62d@chromium.org>
In-Reply-To: <20250403-uvc-orientation-v1-0-1a0cc595a62d@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans de Goede <hdegoede@redhat.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2

Neither the GPIO nor the FWNODE entities form part of the device
pipeline. We just create them to hold emulated uvc controls.

When the device initializes, a warning is thrown by the v4l2 core:
uvcvideo 1-1:1.0: Entity type for entity FWNODE was not initialized!

There are no entity function that matches what we are doing here, and
it does not make to much sense to create a function for entities that
do not really exist.

Do not create MC entities for them and pretend nothing happened here.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/usb/uvc/uvc_entity.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/media/usb/uvc/uvc_entity.c b/drivers/media/usb/uvc/uvc_entity.c
index 01eeba2f049e9ebb25e091340a133656acbf28ca..4a0a083b4f58f041023710207a73e8fede8526e0 100644
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
+	case UVC_FWNODE_UNIT:
+		return 0;
+	}
+
 	if (UVC_ENTITY_TYPE(entity) != UVC_TT_STREAMING) {
 		u32 function;
 

-- 
2.49.0.504.g3bcea36a83-goog


