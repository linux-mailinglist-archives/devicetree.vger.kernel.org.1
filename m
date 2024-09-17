Return-Path: <devicetree+bounces-103493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D82EE97B04A
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 14:44:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A0F5282AAE
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 12:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A14173347;
	Tue, 17 Sep 2024 12:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RD8fz/4a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3B913D889
	for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 12:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726577089; cv=none; b=sQ8yaU3IDUngTYGmcf+wlZokmebosUrmZbOsv50tOmZ6nWhuoPkGn3OuQi3glg/uk/J3iSpfG6ikWTcxTR3j7rUQqxVIZuYlTK8YfgyMvQtGJ/emAUGx4B+c4ZoB/cJO2DLpamob4Ef7UkRPSZ6kCWU+WDNh649ovmedkwNxpl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726577089; c=relaxed/simple;
	bh=1mUzvs1TILcBMAkaPqE5dPVuuIBtAQ/W7e6G3dIg5ns=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=osIFpViA5RIpmlU4xOzZ7rxlmNscuzYnVl1INGs57rU9M2T3nywjqTuEnCHmvpfiu4ceH9UihdzoY9E9FmA8oubSdKQAYDt/1SKmoqK6jrVMRs7QngDbxJgWCsGnMhDhbPM1fMyrDFLr/5S7xkWcwmMyHJ3FbNctYC/Hw3mO900=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RD8fz/4a; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c3ca32974fso6895055a12.3
        for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 05:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726577085; x=1727181885; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PiRZNwjBI+9vRyv9uoBmKUeVwLwHAiC2DXtYsieZeIg=;
        b=RD8fz/4abBImLju6fy/7cBssRZHJjYCQ0dggkst3cL5LfvOZmUDYp1dqe25dBhYJBr
         d+nizqs5UsGy4FDx9LRWw1UjCwdMOyINc/7BLpkKezD2d4zsRJF5EaUzLOn3fp3QF4/F
         W87Jt11AHGWKG0C8GrsHCsXTc3wP8ISOQgJ0bHpNWVBMzMWe3ewXCxUErYHR99OH+6Sp
         VNDL/BdF90/A8ZnOmGaO/w/74pLV2AH3uh7gZe9MWZpTmOh4z/kLsKglqf8EoK4Vd4pa
         1V91VEpoho585uv7SWQUe+ZcEGxuzi1JYLZRkIUXhuHyxm5jZb/bbLNLuGTkK4UtD2y6
         kRDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726577085; x=1727181885;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PiRZNwjBI+9vRyv9uoBmKUeVwLwHAiC2DXtYsieZeIg=;
        b=UuDqFiI6+Cw1pUZqFVczgr9FV8vjT9Oj6bb8pa0qt/xkaBztgSRhouYAWQ8XW137iD
         J3oTrwqIN48hIFTfnL7/YcvA+Ajvd2RGEhWK1TBk24PgBCLhKTNXBpAeGHavphq6tCZg
         wcDYAKqAB+IjSV2JzTyRvNbPhZRgSvrlgU8AFGO1QlNlq1imFRg41pUVYsd2/enWUhC1
         JGuy46MgQy5xF5PwUkEExU/Kt9YQWxo9/FAc4SdxG9t6X2pmC3GQa+1BZ8cE02iTNEh9
         Lg6e80pYsmoyfRP4VG8zq42mslc47tL4A7ENPd9VCnRfj4cWKARxAb9GqWrf9xqCfPu8
         u02A==
X-Forwarded-Encrypted: i=1; AJvYcCVcbH8UHgmc4M/vKb7E38FELc6ldALM4TkkgiV8jnpBBzoH/8lIlbqnDHUV2EjMopYcIyx3e8eEpxm+@vger.kernel.org
X-Gm-Message-State: AOJu0YzKYCXRb0SssMEkCxu0TyJdu4+uGlfFRNYzJ6ISzrpdL982GfM+
	pt3AqCH91BZY4FYh15ABDkpPCh/Q8E97NUn5oRBZ1omYOXk+FDN3iTn6/EL9lMAPRT/rFR0Bdx2
	r
X-Google-Smtp-Source: AGHT+IHTTUcSmgbzR8F40MXRu+6TbcmYn1SKjTh/WM/PdhGhGLgSjn/pf96zrOsQ+PABDKNNkpzykg==
X-Received: by 2002:a17:907:e29f:b0:a8a:3ece:d073 with SMTP id a640c23a62f3a-a90293fb566mr1839315666b.10.1726577085012;
        Tue, 17 Sep 2024 05:44:45 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90610f453asm443317666b.88.2024.09.17.05.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2024 05:44:44 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/2] Enable MMIO GPIO on BCMBCA
Date: Tue, 17 Sep 2024 14:44:38 +0200
Message-Id: <20240917-bcmbca-gpio-mmio-v1-0-674bae8664cc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALZ56WYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDS0Nz3aTk3KTkRN30gsx83dxcIGGakmhhZpycZppomqIE1FZQlJqWWQE
 2Mjq2thYAvkjqImIAAAA=
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

The Broadcom BCA (Broadband Access) SoC:s all have a dirt-simple
MMIO GPIO.

It's exposed as a direction register per 32-bit block at
(base) and a data register per 32-bit block at (block+0x20).

However I wouldn't want to use any of the old compatibles
becaus for this undocumented SoC I have a gut feeling that
there may be registers we don't know about at (block+0x40)
etc and a separate compatible will be needed to slot in
a more elaborate driver later.

Let's do this the hard way and create a new compatible,
and probe regular MMIO with that for now.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (2):
      dt-bindings: gpio: Add BCMBCA to MMIO compatibles
      gpio: mmio: Support BCMBCA GPIO compatible

 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 1 +
 drivers/gpio/gpio-mmio.c                              | 1 +
 2 files changed, 2 insertions(+)
---
base-commit: 98f7e32f20d28ec452afb208f9cffc08448a2652
change-id: 20240917-bcmbca-gpio-mmio-5da863cf5a5d

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


