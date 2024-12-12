Return-Path: <devicetree+bounces-130419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A39F9EFB29
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:37:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5AF212885F5
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3A6E22541D;
	Thu, 12 Dec 2024 18:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="OWEZhnMG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E2A223E75
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734028607; cv=none; b=K3cyPArFUfv/sBhvDkYNdklHFFYwf0Tj0WCTwqoJeqd//0puZXZCg6YoIJeMJfKYv63+LK/69rRXzlRnlKeMoc4YoCUU5wDalrZ9l1qQZBVPzzTeb0p1yQs2hidFkqz9NJSzdbZ2w39Zw+Y1kuu0gIrp3t6g0cu1k0ZV6ot0Yb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734028607; c=relaxed/simple;
	bh=z49WJ/Ecx3cRmoavwvCyrBSrNBZWdJ5YBE+eW9OtjMY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X8iD1YuzG8VB17X5qxwV0Ogl2yUDreDR6sj5vYzVd8fren7aXmeQjKVsT1ednD/BbkH1xEP53OAp4JfdIiFgneywBWPWIhZKj36hsKksI3ZD8fxr1XBremG+yjp5zTnvvCz2bpWTUqN5vFzJmMjMjBCccYnaNwB6FprpB+7vGKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=OWEZhnMG; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-434ab938e37so7205695e9.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734028604; x=1734633404; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fzut7xbqOYPi19sCzyZBocxByvsBqwohQ5FyR54rsTQ=;
        b=OWEZhnMGAK9yBDpgjwg7iRP5XiRfNn8hq+4KOjmj/aDs9aeXUnTo0iiJo+LezV2WKo
         O4M8S6+WsLK3EnUIk5XE4QQLSFFIR74QdVAR05VUD7vIjD3Q7b/BvhCdwI/kTjpEpJw8
         hNKGw3LvdWDvZOOQLBF1HCF7nutna+CV/SOECHCEFZGI4v/ALyS8+XcOzJcpFHZiDZBb
         RMKX/KZuwwDjNWaToZFgrCv1ljg1PM0P5FJ/TurYNCDXfN82PNgAOWBGthI1PrewLHkW
         fGmfDNxmKfmkD6xlbDh3LPP6nFgzClacnPijbKG4hOchKWVH3XSKd0SVNFE4quV7x/0j
         fuQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734028604; x=1734633404;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fzut7xbqOYPi19sCzyZBocxByvsBqwohQ5FyR54rsTQ=;
        b=nSLkDQgZ1awrPkTh4tmU4n13zgXFrccCxPX1B8P8rIsjPibGkwpaa+6sz5EmhPh9x8
         HJM+jI69VyugyNkBJDykZnD0emROaxjuwwlNh1diDLYVsITLYNiud6KeJ+HlodQOhg0n
         Zgh9F1QbXZfIsJE07DZ2rGBP/YQOu116tNJAaDovStJWRVzq+Np8GZzNJqmYTZiRYxyM
         xTwqx4PEZYmvTN7YWAnO8nnjmIJpaTWXd7N7r2i6qfWAMBSMMC7p4zQsrbX8/d8UNlxg
         7j3boUohr7tJA3mbhIJ9ynAeaEFcvRKo8gUCbfhpIIlwmW4ZwljwTC7B7eGdTy6lp2tx
         opSw==
X-Forwarded-Encrypted: i=1; AJvYcCX9okTXFJdauXBXwzczlS6vhNlz3BCWMPIAByUGUo75A20AI56QY6hXaMbbyCTm/ISNc2DUxak1Mdgp@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz0qtTzX+scHpUA5rwI1W5uP8yrv1fjDv5pZnwo/kavH/js24Z
	iZSMkNs8r/yxZULvrT5gZKBzCQgLyDf3EYvfw1fKBX7D8mJnUMKNgws5LLBTslY=
X-Gm-Gg: ASbGncvDHK2TuYcL6myhIi1CcSr+eBoA2Y9ndcI6cF047/qJ2jgEXP1108WiSF+ZUqY
	x5l5E/MvIih9bLeP0HTD5dr5zFs7icDe5j0KGDaEa8p5cat+nLqB+lRnwVETAoHcwdLfFTgYzN9
	TeP5yMpB03fJPOi/mhWKf+QDEoUpYInsqeQKglRaZW84kSHJfTCYYH8sTXoZHgFj2GTwZFqIUmG
	GK527unru8NMxvD5Qo1GE7j1jOq2NBoWJ71CYv5k9nwdijP
X-Google-Smtp-Source: AGHT+IFExc0XA8Xy/C4Mx5wK8VZwnwxFl/5BahFWH3EA4rW9cmekl8fnISqr+JRBJqWQX6UGHfnMOg==
X-Received: by 2002:a05:600c:4450:b0:436:1aa6:b8ee with SMTP id 5b1f17b1804b1-4361c346a7emr72222265e9.2.1734028604531;
        Thu, 12 Dec 2024 10:36:44 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436257178e3sm24651995e9.41.2024.12.12.10.36.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 10:36:43 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 12 Dec 2024 18:36:30 +0000
Subject: [PATCH v3 3/7] dt-bindings: gpio: brcmstb: permit gpio-line-names
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-dt-bcm2712-fixes-v3-3-44a7f3390331@raspberrypi.com>
References: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com>
In-Reply-To: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com>
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


