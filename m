Return-Path: <devicetree+bounces-109938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 097099988FB
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 16:14:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3391AB26036
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 14:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B93A1C8FD6;
	Thu, 10 Oct 2024 14:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uB9tL3aa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF26B1BDA99
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 14:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728569458; cv=none; b=VFpeuNPlYhngK74zm8abycTrkKiTJTVUsZTUaenuBgU90dTeE5TBhwwPJ1KAqbzzizdJ8F8MdEcqVm7LL4iAIuKj3+kNeC4zJuL1zoPTyt9/lcmTt9L0YOts4PNSGJkW5sWWvLVlBvqcrROfldLgGvD0eKU9QHFeXnqLKF0hd4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728569458; c=relaxed/simple;
	bh=U5fUG1+TZhgNOxPIZGjJlbfOBXv21gJ5RbbrwNyZFvU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ly0IJyjNQpFjhhS65b2kxm0kmo/Ll4gO/ed6jYBlSMNsBJlJH8210Ea0weE9z/dTGpIYBQp94dLCf6mAdfAfFS9KMUU0CSYLjxcDI4CEUAcrdpoIyx42q1Tlr7Y5UZTNbAp41Z0r54mqM26HOFgHfeCa17zE5p2oJW3j0cZ1s58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uB9tL3aa; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a9951fba3b4so154377766b.1
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 07:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728569454; x=1729174254; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pr/Di5t8rnNhD42fefKyTB/dVh53BZsjOGP+dMUNL2I=;
        b=uB9tL3aawQHj1bt2vXMigQdA+P4XWNc/8F2HZ6r3YUwTTaQpnXVnpWgwmsBKw3S9+K
         ATGbhcoaU2TcjZGQ/cnZ7urdfq/u3j33zH8cvHIY22NJgvJ74iWKYGwKSX9gx+3YYgEV
         VWSvul42xBXcZgThJHFZL30AgsrLNOLjoOU72ldyBGtxDH2eXDCec1WjXW1Rg9KOet9w
         153iGiKu/hyzxZUrncOSKeUeOO8l4hYIHGAq1qAxeHsElMlL5lz8EkdMvDeEcZ9TuT1R
         h7N6OZhSXdYOTBj7D5Yc42vFZRRUvCDwkH+U+xaK0GlJB6BFGHduNFQJ0qImLm65aU9f
         VXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728569454; x=1729174254;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pr/Di5t8rnNhD42fefKyTB/dVh53BZsjOGP+dMUNL2I=;
        b=rcn3oa2GeER6sSIOjHFMNc0mh6+sLPJmpwc0gSXbRPSpOOj7OTeu0fXEipA8XWxR4J
         f4rmgoUWlDcHUZnmoZt06YQIkr1ufGgaMaAXuGgYGrlyVHxHn2XXE/t5KpI9q5fjuXkR
         k+POmpaE3odCzK9oGJ3cCqFN1bv2TdPQ678SiHutrMD+BE4nKjW/x9uU3mZJDWxhcNoM
         h1LUQiOVZwU4RuicM1RDRCM87TsTtpocMxX1X7GPcV5KZY/Ow07+jbgfl8M8KWxyYsHt
         n8Qg+bR0qdI28txmDVFnxXCmjHSyGqUBEWb2OFYU/SxAeuS4z7p3D5Jkjd8+tXAeHab2
         mnhA==
X-Forwarded-Encrypted: i=1; AJvYcCW1Wwr5dKgXPsK+TlNI12kTMpDvpgX+gmLYNMfy1Sh84Z7xl4BLfd0mx+unGFb2ACtvmZAcGZi9xEVJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxFAnWjjqt66u/O1XaqlKYiGsy8U2KvZCirPkKOgZEadZaeoDTe
	jSZ+2wf7rAqUo48bIWe2s8wVXIXzyiSsJ9OfjiqBJhk5CTcuGsbl1lOynNInKMWC6xI80fucDPx
	i
X-Google-Smtp-Source: AGHT+IEpLoYQ9BKs/spoXp/Tyg7YA/Vt5Mplc2HZ6lJYitfgHM+6tUQOBHl5dNxkX1ypBMMIc8cSag==
X-Received: by 2002:a17:907:d59f:b0:a99:7869:a1e3 with SMTP id a640c23a62f3a-a998d313d4emr563262866b.40.1728569454298;
        Thu, 10 Oct 2024 07:10:54 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7ec5704sm94540866b.23.2024.10.10.07.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 07:10:53 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v4 0/4] leds: bcm63138: Add some new bindings and code
Date: Thu, 10 Oct 2024 16:10:49 +0200
Message-Id: <20241010-bcm63138-leds-v4-0-cdb80780a555@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGngB2cC/3XMSwrCMBSF4a1IxkZyk9uXI/chDvJqG6iNJBKU0
 r2bdiBacXgOfP9Eog3ORnLcTSTY5KLzYx643xHdy7Gz1Jm8CWccWcMZVfpaChA1HayJFJQuWgS
 NlTYkm1uwrXusvfMl797Fuw/PNZ9gef+VElBGNRSsrkBwlOw0uFEGf/ChI0sq8U9ebznPvC2lR
 IOmtC3/4eLNgTHccpG5kk0ja4slquaLz/P8AruOnHopAQAA
To: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This brings over the few know-how items and little things
I found about the BCMBCA LEDs in my previous duplicate driver.

This was tested on the BCM6846-based Genexis XG6846B.

The main addition is the ability to define the number shifting
bits in the serial shift register which is necessary if the
previous boot stages have not set up the hardware properly
before.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v4:
- Rebase on v6.12-rc1
- Add define for BCM63138_GLB_CTRL_SERIAL_LED_CLK_POL
- Rename the BCM63138_POWER_LUT to BCM63138_POWER_LUT_BASE0
- Link to v3: https://lore.kernel.org/r/20241004-bcm63138-leds-v3-0-ba99a8e464b9@linaro.org

Changes in v3:
- Mention in the DT binding that hardware defaults will be used if the
  property is missing.
- Link to v2: https://lore.kernel.org/r/20240928-bcm63138-leds-v2-0-f6aa4d4d6ef2@linaro.org

Changes in v2:
- Drop the u32 $ref in the schema, -bits is a standard suffix.
- Fix algorithm for shift register configuration.
- Fix spelling errors and numbering errors.
- Link to v1: https://lore.kernel.org/r/20240920-bcm63138-leds-v1-0-c150871324a0@linaro.org

---
Linus Walleij (4):
      dt-bindings: leds: bcm63138: Add shift register bits
      leds: bcm63138: Use scopes and guards
      leds: bcm63138: Handle shift register config
      leds: bcm63138: Add some register defines

 .../devicetree/bindings/leds/leds-bcm63138.yaml    | 11 ++++++++
 drivers/leds/blink/leds-bcm63138.c                 | 29 +++++++++++++---------
 2 files changed, 28 insertions(+), 12 deletions(-)
---
base-commit: 840f68b874cfa5990e151f8716d33bf08098dda7
change-id: 20240920-bcm63138-leds-1bc5f41c47cd

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


