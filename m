Return-Path: <devicetree+bounces-126128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2709E052E
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:37:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6AE8284C34
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F25A20C016;
	Mon,  2 Dec 2024 14:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="iL9hfwJ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9AB20B810
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733149941; cv=none; b=Pau/kRiQihobiU4qv9kUoviCOztB1dnC2TPwaNHiPTZe87IutmY0ZoYxV4ASHdv2zrsn6HJPGt93Xr0AqDGlafySBM/ARqJrjNj2lUCOgcO0eer/pKyCsCevaalzSdAZIoP3Fyu9788yC14iVbxQhJqEEZ9dSfMy3VB1ZUQqSlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733149941; c=relaxed/simple;
	bh=o+XWrIWz9NMGyzj7C0rloJz0rrUxtTpuh520hN9VdLM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dpdABg58xyJPt36TztXgjnHxK42ULG0hBTlE3+U2h8emIZL6xGKWDoOSwm/8WA8OEsB2fWnGsDGzTvoAiwo6iaN1lt7Wz8CP20GAL7TS39GcZWWJ9Vv3TdEHMzW1DUt28EVWvBURoJvf3YNRpyYF6+0wLdhZQb9CUyefHdqv2l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=iL9hfwJ7; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4349e1467fbso37530305e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1733149938; x=1733754738; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ezuuCfz4dXYu4hmKXltppQihukLHouMCBa2+WZneZxU=;
        b=iL9hfwJ7oYOeQ0hyc3UkH++I8Tn74OEvyvNbHOCTQ73+qE2ILjTfGJ0KAhIYGBxLYr
         EzZr8TBPh3of+Np59n7sH0wR9PDqIThD+HZd9DBXkpmsHR8hOT06gnG4tMck45M5fUhj
         v6Zo10tg6+AtR91VjKMmDzpfSzn3DaeLjB1FVS/OaOedX/ozqz+mMED1ZXGdmyrlPoir
         2QgFTnt3b5FT5AZxQBgY7PtcmF7H9OZp/W6QUrbl+pAciwO0y6iJw7QiKBRBDuWSyUe5
         fLd370F9fTUeZN4DeDI/lbkFtHiWtH6FhDPX+F6aoeMD1nUf5IzZbF17+hRbKt4Zc920
         e2/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733149938; x=1733754738;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ezuuCfz4dXYu4hmKXltppQihukLHouMCBa2+WZneZxU=;
        b=F2UELR31FQzSFc+/DW121+yOObgl4Ypri5NBpcYZGp/wK9Ci9sp7aAx+LLNdR0v/QD
         UkqngH2p+LOGu8lctRw83TU1M4AeXEzQZjKJZHipztwKGDo1MbCW08QxCsuMaXhdopLJ
         Bsp7Z6ZsuEpT2p4ZNVyGzHnuAYBv8TmkSKc7+MUKTH0BH3JdDbi56cl5wpxA3zEYxlkB
         0LIiteeX1VquyN8Llyyu4Enwv/vXPtrdAR9QmFLTZVO83FBVDsTnfZM1TYobp+Qp1dxG
         Kwd4gfFlxaSgb+u2ykriUCRIDLaqpOWg8BmBQH4Bi5hj2L6E3/9J5w2OssoxrQTljiUt
         X/vg==
X-Forwarded-Encrypted: i=1; AJvYcCUUlbeZa/DHj2Qcwkal5PISGbExBXuuYuwZYcBgwEdRUdMWC4x/XdsORMhTrKXNQP9S2Iz4imUX585q@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8cEsi0BeUHPCSUE7ERSqqqUyuJLrZGluBc0cymKaMxMDYLKXQ
	h53fKNv/mqCWdkSy4NOWf2XQYgfC6UDsoxqf7tgNqnaa4C28p6JEs0xQFUWRgiA=
X-Gm-Gg: ASbGncuh2zakfbPOkIyYM6VlyD0fTgdKIWajCUFv7NDvzAdBvZqLmoqbQyZ285uwQoC
	WtnRdrclxdVrTbVHj7d7Bct61wlDaMKumy4sx1yIFK08IKuBSnqz+s5KPOjEcZiMbhub6Zq0z3W
	a6ioPt0c9v6heqWNiLAYZ0OC7qQMNHQx49dQL3rz6/T+2QdDyMyYMGNjTTYT8zuGl36xspdIChq
	cvXSHu7AlB8mwjQ3xJT2aSyrbvqipow8X5T3Ilcqg==
X-Google-Smtp-Source: AGHT+IFOZoOXIOMn7ZNkA2Tq2IsupVCxJJKuWUAQoyj7TMD84BgwJO2qsC/1IZqo9dXxiJ/IAPakGA==
X-Received: by 2002:a05:600c:474c:b0:431:5aea:95f with SMTP id 5b1f17b1804b1-434a9dc824dmr223443175e9.16.1733149938198;
        Mon, 02 Dec 2024 06:32:18 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-434aa74f1e6sm188429555e9.9.2024.12.02.06.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:32:17 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 02 Dec 2024 14:31:56 +0000
Subject: [PATCH 3/7] dt-bindings: gpio: brcmstb: add gpio-line-name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241202-dt-bcm2712-fixes-v1-3-fac67cc2f98a@raspberrypi.com>
References: <20241202-dt-bcm2712-fixes-v1-0-fac67cc2f98a@raspberrypi.com>
In-Reply-To: <20241202-dt-bcm2712-fixes-v1-0-fac67cc2f98a@raspberrypi.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Doug Berger <opendmb@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-gpio@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

Support comes from gpiolib, so permit it through the binding.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml b/Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml
index f096f286da19..086d016df6ef 100644
--- a/Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml
@@ -64,6 +64,8 @@ properties:
 
   gpio-ranges: true
 
+  gpio-line-names: true
+
   wakeup-source:
     type: boolean
     description: >

-- 
2.34.1


