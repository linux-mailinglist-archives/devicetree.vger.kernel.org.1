Return-Path: <devicetree+bounces-105989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 08216988C73
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2024 00:29:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C5781F21BB6
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 22:29:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E1918C006;
	Fri, 27 Sep 2024 22:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OwWztq01"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8F818B463
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727476195; cv=none; b=Gb1mG6z90uQKbafDLWQ+edO/SwT2Otq0mahf9KD+2P9qi96j5edjfK/lpsRQ13oUwiJxR8fi+c6h2JnbZezNqsEA/46bCF4YLVC3Om088yJF6gtJqXwAh2KRodxhYly1GLPZnQUVJETVgTA+OXLvo0AZXcAW4BZEyi0Pb0oPugw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727476195; c=relaxed/simple;
	bh=v4V6dGxRx/wuCTK6Y8Zn2D2hPA9VbhdYs2BaI76Wt84=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Wy8lkGg+ouTLI/1A2Ty5PNoEqyI9+R1vpJfjCFhkANv6XTIlav7WtHDuCxQqqj69e++co0p1CyuaUNoDZ1DjBNb533Yi00lm5g5QS+j2X8aCxavbqnw9Ep5jxvZbgVnmplC/xt0BP6mIFsG5cXuwWOjmgXDfS0IMox16DifF8c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OwWztq01; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5c874f6f119so2983529a12.2
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 15:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727476192; x=1728080992; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I3DyDl5P2Lm0RLqXBZQG7t4Im5KI8VDSmS4CyUvHg+4=;
        b=OwWztq01U5gZqKfbdNm/D8i8L0Ztq2IKlUBknWFZfyPtg7gEMXs8V0+RBGna6z8/1y
         rGRrrlRdDN7m7xR+bNQhZQAJQtm8v9ejvvj3fESydXvTj18gjLK4UdfprCQW+WRgZt4t
         Xu50AN+UXw3vh4vYckeNgqVyn68TlZ1KmoTn+kOYzbBzdgoGTl2zo326Ywweqp3H2t7s
         hiM8SmacRQ6reRQVv0aswCAa36f5oxmsvbB01ATYhl9EH/vSejZsE+O24YWC2V9FPPwY
         +i2pBPeSRwAlMheXJmabGhaeP4dP3i+/dtWLhbSdBbMRVEIppVBtYv4lP9gVY2hkhyFu
         Tipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727476192; x=1728080992;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I3DyDl5P2Lm0RLqXBZQG7t4Im5KI8VDSmS4CyUvHg+4=;
        b=HdzrpeMzrLOUntZDgEy1d72kpHvdRrDGv2KsJI/g78qcfoF282+XXE2+8O0Nd0FTzv
         R7Fhqma2D2qfHcVSIKv+rY6xvI7MRN1024FrJo5q0G5JVNaUSN+TqMiAcvHOnMQ7KIf5
         A1+atMRNhkKJF4Nqqz4QfIXxB6QumfipV19kdsY8M/tPkwS1w51TTpNa3eCl/6HFJTbS
         bS76b47uSF8Uq+fWe7U9n7j0uPPgfulgUUAqPMzAYq5iABzuA3kqAGhw936I3JLt52tt
         Dp6ZPjwp9UBM4XPTgkLoxXlkyduIv7QRD1nT7rV7MILIMf5xjgNAjkDqbrZx+LVF88pC
         gZyw==
X-Forwarded-Encrypted: i=1; AJvYcCUCFyLzlOdMPHMP3HeI3g/5+RuOUez5ArbdKIS6nOdVm0eotFQaimBFg4MfOFhxF+MiNnFYMDMo6GWw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywje1cdPMrPnJ52LSDsrCZodwBMeMIlRRGIyE5UBrcZo3/LSO8p
	aDC+wvGMVu79HZwB2Kg7ynWEAAdLoVG9KP7Nn8QxBhbHpLJzNtwLRv0sgsSKV2M=
X-Google-Smtp-Source: AGHT+IEsFbqQMSaAa0zr2VsEYK8RPxFve5n9UId6CEw+JniwOWndvRjsqMY9wvKbLoe6iKJz0Q+1Xw==
X-Received: by 2002:a17:906:4787:b0:a86:8953:e1fe with SMTP id a640c23a62f3a-a93c4a69b1fmr462520466b.47.1727476191682;
        Fri, 27 Sep 2024 15:29:51 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c29460eesm179504066b.119.2024.09.27.15.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2024 15:29:51 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/4] leds: bcm63138: Add some new bindings and code
Date: Sat, 28 Sep 2024 00:29:46 +0200
Message-Id: <20240928-bcm63138-leds-v2-0-f6aa4d4d6ef2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANox92YC/3XMQQ7CIBCF4as0sxbDALXVlfcwXVCg7SQVGjBE0
 3B3sXuX/0vet0NykVyCW7NDdJkSBV9DnBowi/azY2Rrg+BC8avgbDTPi0TZs9XZxHA07aTQqM5
 YqJ8tuoneh/cYai+UXiF+Dj7jb/0nZWScGWx536EUSvP7Sl7HcA5xhqGU8gWEyE3nqwAAAA==
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

 .../devicetree/bindings/leds/leds-bcm63138.yaml    | 12 ++++++++++
 drivers/leds/blink/leds-bcm63138.c                 | 28 ++++++++++++----------
 2 files changed, 28 insertions(+), 12 deletions(-)
---
base-commit: 5724faee6be4109d7a3168625357e4127f42b5d2
change-id: 20240920-bcm63138-leds-1bc5f41c47cd

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


