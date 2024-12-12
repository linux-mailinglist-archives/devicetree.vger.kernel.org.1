Return-Path: <devicetree+bounces-130346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D3A9EF11D
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9639F189BAA6
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 620FC233123;
	Thu, 12 Dec 2024 16:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="LN8c1uWk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83DA7231A47
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734020350; cv=none; b=ZARTJ+wmcCv71kelizNrcxyTrOrTTUQ8++9kZW/dZo3dR9GErn15e9sL1rEZgzCf1RpwBSrIow9IdHXId7LUEAdFQiC6vmIPNnym1weuEBXP2rDXjluHpFq5gpGST9qFI0ejD9cb1hvGvI6IDQ0sZqC/z7xBBbjJNVicCi0rz3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734020350; c=relaxed/simple;
	bh=z49WJ/Ecx3cRmoavwvCyrBSrNBZWdJ5YBE+eW9OtjMY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OCPRK1mqwlbRouc/XQTxRGKdJMYW+mFgrsYM7KNu6f4lfTIzKKo2dRGbbU5FWpv4TrUvA5JfX/dF/7AIzzLBFrWjlS7B266fEVaLU98TDZpFzlRKeCZuXR3xEb1ARqer3jYUjxwpfC0nL4RAdKUps47YN9gOKl1inxV5Jef04EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=LN8c1uWk; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4361f796586so10232045e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734020347; x=1734625147; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fzut7xbqOYPi19sCzyZBocxByvsBqwohQ5FyR54rsTQ=;
        b=LN8c1uWky/LtsLuX3IMAYIO13wzKVv6rQ+KonJdKsm0AcTz6fEmhwIkf4nIYfEVwOF
         41MSaBvPoSGGJb5HxXKBaJuBm6FCcoaOHk1jeQ2aMZWjis5LDmnvnTbx3+hOd+XLu5By
         cpizOCm9Vf22CppP3GnY2xBv44Ulb+gtbFA8Bjjia+ke7BSNu1obegNEabbqYPco7jd7
         RGsEfvDdB5J3Mx47grWpo9q3GWTz+Du1qLRktQkvgk5Tv0h4O8QneiLJc5Tslo2wC83r
         Oehg61sxLO7eECzjKE/c2MHOJisWM4lEdfl1POlGB4XJYtklDn/JsUsJQomwZd4s5Q9D
         9F9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734020347; x=1734625147;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fzut7xbqOYPi19sCzyZBocxByvsBqwohQ5FyR54rsTQ=;
        b=cjp8+uwpgN53G3XGWkXEFYidNq8LsEqWsJOF5AOV2ih7zisjcBsYTMe4YJCcOt+7d4
         JVZNbW3v5g81c0H+eEGZZbYTxzmFz2IuPKThsa/r0/8kTrp/EULUwxkf6j38TjYyKXek
         ViaE+U0VUP2x8myPF6hnFtUljEsX98WoFyQ7OWJUnw3uC2egPfGGo7EaDlYhQVn7vT+Z
         Itl0fL6mvYNgPXolkX+pwosjjuX1E1UFOe9DNBEAsnuSgZ5LYBIZf+KhqU84iQ0tcWM2
         vgnb913Gdh1gdJMtD990TXJRj0u0HhvlWqGfVaC4HJsXKMfj2lSt2bDmPW6N7xnE4Yhp
         qbBA==
X-Forwarded-Encrypted: i=1; AJvYcCXC5VVNlyo6yNRBG0lCaWvcGLAKThCj00avgquahGT49sdBY2pd2CgxjlOXCdLj47WpxYh4owfMxWOh@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh2yv1r9IvsNEJADCmgR1JsC1sadjZr3517sQty03pfmfmTiZL
	a4eG/hv5d8dfFV0K5ZpOPj84lFncoAs5OwqSVLE+SaJmAYaMavvGrOHL4QdaN3U=
X-Gm-Gg: ASbGncsTW4OuBZ53kcD5TefvMt4opv8HZPDauQYN1kzzJhCg98wqRGq5RQtKQbNKg2A
	slwFQcq5mQbcgGR8x/M38OwxsYQXqZSAWlWWqmVWSE2PXupttnDa3TCk90oicHxsfAPT7sJG2t1
	gOlDunUxBKBiMibVBRjUDVE6uj8PPQgHTgV5sKwCwhn7Y48yYzDDb/2jjE9L4NcyEr5yOwpu3Mx
	dk5nE+FvnL0imLtezogBSvXUSe2iYCanSyv2U3oTHiF4G7f
X-Google-Smtp-Source: AGHT+IHoZqbjRY4dxkOhKOSnSfMy3sMqazkkzCHwzeDCSj2+qMUGuSSsMXf/szART5dZ1m3BKwwUjQ==
X-Received: by 2002:a05:600c:468c:b0:436:18d0:aa6e with SMTP id 5b1f17b1804b1-4361c396ad1mr69550575e9.5.1734020346842;
        Thu, 12 Dec 2024 08:19:06 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4361e322328sm44336105e9.0.2024.12.12.08.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:19:06 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 12 Dec 2024 16:18:53 +0000
Subject: [PATCH v2 3/7] dt-bindings: gpio: brcmstb: permit gpio-line-names
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-dt-bcm2712-fixes-v2-3-35986e04d0f4@raspberrypi.com>
References: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
In-Reply-To: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
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
 Bartosz Golaszewski <brgl@bgdev.pl>, Thomas Gleixner <tglx@linutronix.de>, 
 Stefan Wahren <wahrenst@gmx.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-gpio@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

gpio-line-names is a generic property that can be supported by any
GPIO controller, so permit it through the binding.

It is permitted to have a variable number of GPIOs per node based
on brcm,gpio-bank-widths, so define an arbitrary maximum number of
items based on current users.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml b/Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml
index f096f286da19..fbd69b4cecc7 100644
--- a/Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/brcm,brcmstb-gpio.yaml
@@ -64,6 +64,10 @@ properties:
 
   gpio-ranges: true
 
+  gpio-line-names:
+    minItems: 1
+    maxItems: 128
+
   wakeup-source:
     type: boolean
     description: >

-- 
2.34.1


