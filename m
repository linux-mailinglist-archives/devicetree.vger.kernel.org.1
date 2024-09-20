Return-Path: <devicetree+bounces-104221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DEF97DA59
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 23:59:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02A1F1C20F0E
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 21:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A11A17A5BD;
	Fri, 20 Sep 2024 21:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c3ieJLdI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C6C1420B6
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 21:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726869555; cv=none; b=dE5TbMJqKY/ZB6j0CjRLrwWFmXrn3KHBUxfsHKmKy98/VkEBAQfSgCF89RszSNEJ/mQMcFpLlWAD6GulhxCDhVRtLtNpzoVFukTe+tjt76stJdAmLQtl51kxnqvdIbhyA/vJpKOiW+Q1z2LpBEX33SzfJaeK1vxAzg/asablT8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726869555; c=relaxed/simple;
	bh=DvY9DFD9b9t8rQ1JtJZZEfq4XE+Tf9u8G6wm8mF4NTU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qcjB4Td2Bs69Auh3bAHcUbramPwWX3/Smb4ZH09ZVWDkqyxOLX3Dd4YmusvaBDHbZeqrV/RkNfqsnJWyy2wds+lO7qAP/cUF/V4Rt0om7ENjIeia5Y0qvHWzpGnp0ZpaMb83g6VU94WSxL3s3C3UT5PxrimVibHV5qdAf+Wqctw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c3ieJLdI; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a8ce5db8668so351312466b.1
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 14:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726869551; x=1727474351; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PHFVyTEyWrghE/mlQrlwWY3jxy+uPAACrjFVhyBG0rc=;
        b=c3ieJLdIgnbdUj/b8XsDWEjxLo/7YodkkGvExcxboj/4k2nY/FyG1CmNIKDxY8JHW+
         C7Cqz6i60hmSj+YW4Z2KlFaS3tYY8qE9GxUJpmo16ZJ8F25QObCTfsAEV37mzLI4njMV
         4ihKE7LXJcQ2V53tOxRIr94rjo56OzKUj/p1zlEMOISnWyVagziF2Yn9buS/DMj+8vpc
         eqBV3ynadl4MAZMPFMxWhN7zPEV/XwX9jQZ97vbWU4PVEAfhvygmwwNSV1X7smjy6YeU
         bjRNiCQfWrrQwp0UyISD89Lu0Fekm61+tefeIhYtXyUr3HzA7dPw2O7GwL4qH6ygJ14S
         zFkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726869551; x=1727474351;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PHFVyTEyWrghE/mlQrlwWY3jxy+uPAACrjFVhyBG0rc=;
        b=w+0hBXl5UACixhbiIlg23o8+1kKMHBlQ44a16M3D5T6GcUq24CLCSQaBuD1QUEtWzQ
         6naVyE8ohQ3QjF6OOpDr7d5pVrrhCu+11FqP4IamXpKhIjL2htLJAjCFuGwKvI3dNbLx
         W9gr12rBnha4lZNYlM2dFuTEUEO6FsdlHGcubvRnKbtm7xYEY8X08wXW4+kByQa0C+wZ
         dDD1uRyDRAYdQ0ntx+EgcmB0yn3Y0+Schg6DurmrZTQw7kibUQWRjkGnI8fAlNzNA3+s
         +1qAmWYfw1L/lHlZV9QK+ua0v6GnvWoA33mVJtHlqJMR7HnU0siTNRGqQt60Tu9mOafN
         K9Mg==
X-Forwarded-Encrypted: i=1; AJvYcCWrWyP8gmDk64RVV7ryFVwdmRFcikZ9grATskRG8RkjtNNKiPmpzBN1LlacQLMEmaaNHn8U7TOc0+gO@vger.kernel.org
X-Gm-Message-State: AOJu0YxIlE9GV4rzihTvK3Sf+50y0S7qQdSR2510fWQQSIAu4/t96/N3
	5WTOAzqlydh6KskUL0xmE4l4+PLC+pissEdaG6L85UFkDHghnlVPaigvbCyI7mc=
X-Google-Smtp-Source: AGHT+IEV1Riqig1Z9WNoxQk7VnkUSFUw5x/HTUfl+q6HhTFJEyduDswG93G45SjfxA6YdXEmAnixoQ==
X-Received: by 2002:a17:907:e62a:b0:a86:b64e:bc4d with SMTP id a640c23a62f3a-a90d58045femr333982666b.44.1726869550832;
        Fri, 20 Sep 2024 14:59:10 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90612b3a04sm900617766b.125.2024.09.20.14.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 14:59:10 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/4] leds: bcm63138: Add some new bindings and code
Date: Fri, 20 Sep 2024 23:59:02 +0200
Message-Id: <20240920-bcm63138-leds-v1-0-c150871324a0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACbw7WYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDSyMD3aTkXDNjQ2ML3ZzUlGJdw6Rk0zQTw2QT8+QUJaCegqLUtMwKsHn
 RsbW1AFiCt2hfAAAA
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
Linus Walleij (4):
      dt-bindings: leds: bcm63128: Add shift register bits
      leds: bcm63138: Use scopes and guards
      leds: bcm63128: Handle shift register config
      leds: bcm63128: Add some register defines

 .../devicetree/bindings/leds/leds-bcm63138.yaml    | 13 ++++++++++
 drivers/leds/blink/leds-bcm63138.c                 | 28 ++++++++++++----------
 2 files changed, 29 insertions(+), 12 deletions(-)
---
base-commit: 98f7e32f20d28ec452afb208f9cffc08448a2652
change-id: 20240920-bcm63138-leds-1bc5f41c47cd

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


