Return-Path: <devicetree+bounces-194156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD1EAFCE73
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 17:01:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91205189A741
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 15:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1685E2E0B77;
	Tue,  8 Jul 2025 15:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="0H92cCVW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAEDD2E040C
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 15:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751986822; cv=none; b=JZxn12zEcRqUieHx1BooxWvxpR0+58xrmtLA5/5LhNrMjtBOTuORK5Y0nauD919zYvRuyllBg/QymTdqiMfiv8jdcCGEdGU9gFcYQyI3KdVZLfD+Ks9INDSgBL3CQ21OUnBSjEjougWfSazh5tRLROavYJFGKn4MHnTUTu2hFw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751986822; c=relaxed/simple;
	bh=auCDOToMtdeoKV816i92zq8GG7kcE0+phv+U/FL+vwg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=D1altAN34T1ZeS6tsiy5rEcET8dEXfXRTVTOG4DnCSLSoaIuQaQHISfgIw6zloI6a1zE20P2zdTYS9Np7m33jVuZrvkBlUEoWGGkbfnfw8PoCEY8NS+bfc36KIMZBf5wlopV51V/JlFT9quLdsbDH8n8uzyFWkhVub4Xvg1lpOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=0H92cCVW; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-450ce3a2dd5so41439725e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 08:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1751986817; x=1752591617; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=axiNVmFJf3G0tfPzjC8i75ML61tt4M701dSEBWFUhK8=;
        b=0H92cCVWwH0ICYc4i06Pa4/l/5iF7D5Pe8AnBHR4Pj84Pk5xoYK8kvyUtYFFO6EuE1
         WSL5r8uKXxdf7ycFeVhAskZz2n8CDPEVZKCvs4eHc7covA4URCBF0Wrrt9mHt7vXu09Y
         5s5Vtvq9ti7ABEO4bxdAbGaVrnGm9tVu8zTew1nxt9LscDe5xS5lpP/K8XIfGqbm97S5
         SVFkbC/Gush9yvhrYP1eyTM6RsmGWfSb8YaFYLY57vcrrwVPbgZrBZLE0TkHSAcRfUaP
         2yTmK37FW+HVKG94VHunsC6swzNhSiqEtd/OAvAZ+pqMctg2HKthusU2qVkjTuGpbQkD
         9cRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751986817; x=1752591617;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=axiNVmFJf3G0tfPzjC8i75ML61tt4M701dSEBWFUhK8=;
        b=g7dgdBh0xAM02dnMGmh/J5M6XSI1pcVd46nufQ1ijYxn9fZpD7jCH85IhPDAJgBb6I
         K6DeD+ENnctZVYZv6ohm2hzBscBLKRrGnM3bYqy9CaIYEz0qRQ4h0UxhDeDQ9hKgh24h
         eXOMID8NOdisowsdF3QaaMdBm59PUW0cn3VV+h6+3+qc4BcGUWZ0nnbP1DYpOumQT960
         01wz3vOxFu74xZe3gUZ/AlEsKZurFoNUkDxJDi5NF+/Cx8GPKkRLLSWq8tWF3AMXbF8A
         r2IYxzWSNtPpBgauQfigJF3eilJ7hu/FvYlyyy6fmq+FwkgKgEtT7MqYZ7UxlOfyU3BV
         BciQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXroHNuwW+Y8nM6L5atO5sXcfrCJg8DVB5cF0ByxLjuupIv9QKIJFFkzZGPMDcWWJ7vjZFQkrKBiX6@vger.kernel.org
X-Gm-Message-State: AOJu0YwvECQvDb7GyzeUy9vZXxUTDJJK4CiriIuU3bbp7grfuj8FVYzz
	oeIDSlBHiO6L8ly0tr8GZEZXPo8qyV45ruk+k7RZhaEinSSW6gTxqn6AxYOEfqgTyV0=
X-Gm-Gg: ASbGncs5qI3cRkMJJMyrNh9eqBu/i/RxMT+0P4aRpN4ACnNLBoGjzAifUrf2oP7Uc1D
	7MFbYNEurY/WOr+O02QPnftjK2S3VJdwpAWQTqDIzISj8rIRM7qXs3ZrC5TkXsPW5Hx9x/in9HM
	vNkZpeX3mq1HTaPjWkJ/eGZHYxVgRwucYctqadTLF+mz9aOyclKH2i9dKZ7LOUOf3M1HkdNCfsh
	4czD/EOzC2dJ2aSqHbLtX6QsWEsOMFBSJaQgx5dhE/22X0+2e5pwYIfiMfUWlZdaGKjF1urkAC0
	XojZxW2hQl3AwCQ46AZnbB6m0BR3SzdDMHcmWbBWDCF0SIy+ah848i164Oi3TB4jDxnksHWxG1+
	//9I=
X-Google-Smtp-Source: AGHT+IF3IKO4V1DflQHKzBykuLgbHSrzzPUngwbd3KG3252Ia4mo2wgTBvGidGP/BYgFBW1MlGQJ5g==
X-Received: by 2002:a05:600c:1907:b0:442:e9ec:4654 with SMTP id 5b1f17b1804b1-454b4e76790mr147560435e9.8.1751986815686;
        Tue, 08 Jul 2025 08:00:15 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:23c7:1d1a:9c01:f9da:8274:e1d1:97ce])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b47030b4f6sm13517433f8f.10.2025.07.08.08.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 08:00:15 -0700 (PDT)
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Subject: [PATCH v3 0/3] Add support for is31fl3236a LED controller
Date: Tue, 08 Jul 2025 15:59:44 +0100
Message-Id: <20250708-leds-is31fl3236a-v3-0-d68979b042dd@thegoodpenguin.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGAybWgC/2WNQQqDMBBFryKzbsROmki68h7FhcSJDpVEEpUW8
 e5Nha66fA/++zskikwJ7sUOkTZOHHwGeSnAjp0fSHCfGbBCVWlUYqI+CU7y6iaJUndCGusUOqO
 NrSHP5kiOX2fy0WYeOS0hvs+HDb/2F6v/YxuKSjhNrr4ZZUmrZhlpCKGfyQ8r+9KGcn1CexzHB
 z44a9S7AAAA
X-Change-ID: 20250625-leds-is31fl3236a-39cf52f969c7
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-leds@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org, 
 Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>, 
 Lucca Fachinetti <luccafachinetti@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751986814; l=2206;
 i=pzalewski@thegoodpenguin.co.uk; s=20250625; h=from:subject:message-id;
 bh=auCDOToMtdeoKV816i92zq8GG7kcE0+phv+U/FL+vwg=;
 b=w7+2Vql/JsCl2AXiJkyymPU9MY3Bp2O/Cp5zhitl849uHP96CnE4/P7uLlyVlegPjBYWG+SYd
 yl0DNGWPqusDkEjjSBZM7Bd7Pd1ifaPR6amWGBUAr3e8RqYasJNIaZO
X-Developer-Key: i=pzalewski@thegoodpenguin.co.uk; a=ed25519;
 pk=hHrwBom/yjrVTqpEvKpVXLYfxr6nqBNP16RkQopIRrI=

This series of patches adds support for the is31fl3236a led
controller. The main difference between this IC and the
is31fl3236 is that there is a new parameter/register that
moves the operating frequency of the PWM outputs out of 
the audible range.

To support the new register a property was added in the dt-bindings,
as this property is at the board layout level ie. not all
boards will have analog audio and have to worry about it.

To add the new property the old .txt binding documentation was
ported to .yaml format. There was a previous attempt to do this
in 2024 but the original author has never acted on the feedback
given [1]. So I have implemented changes requested in that 
review and added his Signed-off-by.

The new functionality was tested by scoping the PWM signal. Out of
reset the IC is in 3kHz mode, thus action is taken only if the new
boolean value is set to true in the device tree.

[1] https://lore.kernel.org/linux-leds/20240701-overview-video-34f025ede104@spud/

Changes in v2:
- Added cover letter
- Ported dt-binding to yaml
- Refactored driver module
- Link to v1: https://lore.kernel.org/linux-leds/CAA6zWZ+TbcHrZaZ0ottm0s1mhCLa8TXASii47WKSLn2_zV95bw@mail.gmail.com/T/#t

Changes in v3:
- Aligned/refactored code properly in C module
- Refactored dt-bindings yml file
- Link to v2: https://lore.kernel.org/r/20250627-leds-is31fl3236a-v2-0-f6ef7495ce65@thegoodpenguin.co.uk

Signed-off-by: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
---
Lucca Fachinetti (1):
      dt-bindings: leds: is31fl32xx: convert the binding to yaml

Pawel Zalewski (2):
      leds/leds-is31fl32xx: add support for is31fl3236a
      dt-bindings: leds: issi,is31fl3236: add issi,22kHz-pwm property

 .../devicetree/bindings/leds/issi,is31fl3236.yaml  | 104 +++++++++++++++++++++
 .../devicetree/bindings/leds/leds-is31fl32xx.txt   |  52 -----------
 drivers/leds/leds-is31fl32xx.c                     |  35 +++++++
 3 files changed, 139 insertions(+), 52 deletions(-)
---
base-commit: 52da431bf03b5506203bca27fe14a97895c80faf
change-id: 20250625-leds-is31fl3236a-39cf52f969c7

Best regards,
-- 
Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>


