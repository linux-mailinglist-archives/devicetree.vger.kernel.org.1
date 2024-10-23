Return-Path: <devicetree+bounces-114817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E879AD17A
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:51:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D44D284DAF
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:51:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CCAA1D0411;
	Wed, 23 Oct 2024 16:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="TBBTcN3g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27891CF5C9
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702216; cv=none; b=K4CbIPhlW0a7FzwZumiDvxT0vBMDzg7WJTTdMs7UWWi47qfWfIuSUGzQ3ylnVYAo8C1uMP4+HD5+2XaZ4akO/NSxfFU1Xj1MorzLXgk0Sasy6CVf6fCVRpnkIecpPRSFkHSpv9YtGgGYFleqJTuODG0GouWvYYhI70bIyi+6CDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702216; c=relaxed/simple;
	bh=uQSMO7Abrb3EmzD4lBlPnbiRh9+yEgOVzcHKKpTIN68=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bmghu7VqaUgyFMDWa+srDQNZ/9wjUCN/jx5WZPsZRek3sPgjkprvcot1EWz/hiQIWVARMkquvDQwn0RD64T6n/EHZ5tYQILvGl6ohIG84GWjy3c+GAcloeg4vAdqvQq6Ieq8cIJT8hA+x3a9ZPWV7mB5Sjdzy9cWNH4GbCBLUVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=TBBTcN3g; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4315c1c7392so66101295e9.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702213; x=1730307013; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IRsyBqkiezxBnssjhK1B67iF/aAHVHcHQNujZZby09I=;
        b=TBBTcN3gkZVnsW1VIOSAIx+SFkKAgyzDX0LIE121/TX1NlAPfmfHHHTDKV3dMNEb5C
         J+Ezd5nzHkXYK96ezwnLQ69hXXhn9KWCkX1VUXA396ChiFB/W5IYPbbaVMHjkMcp009H
         0ZcoVpkmVZCaOFEIuWi3y52BVhmm50qKFixF67beDQpPlJb44Plflqs/eEdGZneIiHFD
         bx7Pn1593P0nWHd3XUl/iSQ739sUyxYc4BP70hGxiYlTOmwAsHdxV7qAzarCZKzyKXDh
         RUxttddCRvhzpJXKJbHdbAYgUQzLhTcHAo9Tvc8Iio/FS1v2lHXdGEl3k73sX3idM6hQ
         Giwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702213; x=1730307013;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IRsyBqkiezxBnssjhK1B67iF/aAHVHcHQNujZZby09I=;
        b=rNmelL2HfoxUzur9/4oV1VPQU4kkroA6YJ66KSDxzMLi/xfrsquOiYiEsCxd/XP4/R
         pDjkfdiA6dw02c3xNR7ViYdvLODVww2dhy1xPBH46ZxR0PS5gOgG2Pg5+2JgZ5GyYsJ4
         ER2TUgPIRvw8jwX+doox5d7OfnRC2Mteznwe1LaFweQEsDrG0J+hHS5t8D1rlssnmdDX
         qGtJv4rOrP/7oWBtpe9EPbN+1bRilw8Dbz9AB/wkpmohaw+D0c9BBtkhhKye1u0r3E7H
         vgptxJwO5USPnJ8OuoyJyEEJbGT28hM8anf+KntcXZqSFPs9wlbKLl/v3w4qHp3TE8X8
         GN9g==
X-Forwarded-Encrypted: i=1; AJvYcCXUi8Jto7xaH5zKqi8Qy91fnQ1GONl0MIhHQ5OrZAIUp4w3jdO4Tj+MBqIDkO7C6d5xgrKJhSFXy/Ns@vger.kernel.org
X-Gm-Message-State: AOJu0YwTVmIc6YjR6SAXLbMUgz/6AVZk+3aDJar4j2Cx877pAFZGYS3p
	zelCrY5v24110EkoiDDNOj2WvJ29H0UafC1xq8Gz3HBWux3w5DFA8qmo39niAjo=
X-Google-Smtp-Source: AGHT+IGDZgGkDPQj1asKApxHb+1RRVP4pBKwGrn8gf3ud6Z4Zj4ffcb+iWXuf3VXHoFcZCsz0HsC3w==
X-Received: by 2002:a05:600c:35d3:b0:431:1575:2e83 with SMTP id 5b1f17b1804b1-43184201b28mr30823345e9.10.1729702213156;
        Wed, 23 Oct 2024 09:50:13 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:12 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:02 +0100
Subject: [PATCH 05/37] dt-bindings: display: Add BCM2712 HVS bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-5-1cc2d5594907@raspberrypi.com>
References: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
In-Reply-To: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
To: Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

From: Maxime Ripard <mripard@kernel.org>

The BCM2712 has a completely different HVS than the previous
generations, so let's add a new compatible for it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
index 2e8566f47e63..f91c9dce2a44 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     enum:
       - brcm,bcm2711-hvs
+      - brcm,bcm2712-hvs
       - brcm,bcm2835-hvs
 
   reg:
@@ -36,7 +37,9 @@ if:
   properties:
     compatible:
       contains:
-        const: brcm,bcm2711-hvs
+        enum:
+          - brcm,bcm2711-hvs
+          - brcm,bcm2712-hvs
 
 then:
   required:

-- 
2.34.1


