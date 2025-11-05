Return-Path: <devicetree+bounces-235173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B744C351FF
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 11:38:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1199C3ADA8D
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 10:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5398B3054E4;
	Wed,  5 Nov 2025 10:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B2G69+13"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A764A2DC357
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 10:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762338977; cv=none; b=R7jJIzfM4TB9gZUS4X+r7940f5DYyv0vKHLmdZfT1JQYWSyGERqaC1ldwlWRKndZY4TUguao3jJSgWlOJPqnjKHNu8cDW7VJ6VqHzgJh2VGifcyEersRfsoawqg97OEa4+M0iUHVN6VmDyeX5dGmBSYiYgauZJXMDpEROxHjgIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762338977; c=relaxed/simple;
	bh=j8YhRpVNUlc/mZaeKkBiu3lqJvAchICI6GCrOl5eSBg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iiCPIEHnjkEvxFIibjtcUeInca512ekqGzvTIU/iWhkLiAr8ZCwnq7QzG62HSM5dG/FXj1Qg1tmwU1qZXQAyYXB25OU6pppkFZ8+54w1AqFtgHfjGrPevnW8NruzLwDCTAkGD+uylmysOg8pUBLmtmTEHX7fzwb46fTxPFRhMmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B2G69+13; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b70fb7b54cdso358470766b.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 02:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762338973; x=1762943773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6VMC9fJlr9Vw6P3ZZbwfnb40nhrC3xmTakO4N1aVRa8=;
        b=B2G69+13QLCMcm32pGSh1hse4j7WsZRJWodydyCF2Vxv1Gdg07tRivSqHKQGGSTHLr
         F4bdUwS9IMUOKTAXkyKuyw7XWlMZpltwvnocyVQK11ETNyitM7r02NwKVC7//oSh8tui
         OFioLD1OOVyeHvpIxAD8lD+0TWzcZsxcwwYEo6UA+NYlmnN1uqMJpfhhdhRY/f4PV030
         7o4zZFivhPhDnwxpD6+DwU/QLsI727xxC8XjPvxeK7niaCz9fSJM90LHd+ms9Ozoboo6
         AADhVUhQ50pSxIl4BVoiijR+JkzYHU4MG5DFDosAqVrFlrDBYcRPA4LEnvFPWNHzrlPa
         rLrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762338973; x=1762943773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6VMC9fJlr9Vw6P3ZZbwfnb40nhrC3xmTakO4N1aVRa8=;
        b=rpyryex8Vax8es68kpDt2emJC6IKRGXFG1bOdTu0ow1tSIP44n04gOKS2kN/QALi69
         jQ7eDg5LIV3dMvGy42dD9fqzHTZUWlPlnf8q7HX9s1yhkTMkDbrPyllDnCwZWtPXWrMs
         ftJonCS/OqbtMVSAMPBUv8mcU1FrRRkaIGQqQSLSi2PuSEAbBRS6vKLyexb2+vjwnesh
         o/E3zVRGx7sZaLp47U/C1Wmjc0qFHVzcul/Pl9lcGYhN37jZOXRJbUngckgph0TWeA7V
         wDcrlOzLn7wWvPL16pU2zKBsc90KVxEhWMAuscrpdh+h2U0TYfRcFzr2XMRHYuVVT3pc
         pYsw==
X-Forwarded-Encrypted: i=1; AJvYcCWVLaBAk6GwV/liOCSibL43iG5tztFvP7DgZBxzoP9oD1sxSTQj2nrsCejKqme+cXA1HFg4DQL2qcJ5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw26Q3VBOle0f1zQ3HP7CLOSRk0SRrlAFCO0qPdIrQDZcby4uyZ
	HjoPUgmP1rUXZUFQlDY2myFgltBZE8VOVC1Z9eFFDxTHcj4fLsmxSNeX
X-Gm-Gg: ASbGncsFMcll/fhZXuBP5s+oKqkImzrzevhhGAgshx6EeAl8OLXFlS+PmA1CM+GPo69
	9FnNZhpmnXq1gCj9Yd1yRKfdwfy/ZXXRbAodu6L/0gEerBb7TsjbxaiEy8k6O0nEoq0jLb04f3v
	XKkC0ybLScBhfi+3aPduUhomZqJ/nOrdfEd4CAjG4TpJ7WSmNtdGqcEt180R0m47iJmMt2CNzW5
	QajaGLlNuyE/E9VdN3pzFP9Rff0SeCdOEn88kqIFGscX9VSw5DIgIWDUNjZVECKaRqAltRTKFFC
	ONeReCznME2xYGSiHftrlL8ICgvlSOHoMreFSolFDY0NIx8VkMcBqbXs8KStzi/tOlKfb1NqTl1
	zifHbUPVyXaL/JC0X6v4se+6AokitCWr4xecabPQhlQnv9kvO7n5/kbsMj+9w9/niu4TcG+NyMc
	YYWk8=
X-Google-Smtp-Source: AGHT+IGDzT/nsdVBWBo6K2hE/MeANdYpdiJU20yCYipNE4MK/QGUfwCQfPcTIvLiS1uKpMQbf4YHfg==
X-Received: by 2002:a17:906:b10a:b0:b72:6935:6bac with SMTP id a640c23a62f3a-b72693594ffmr134368666b.49.1762338972716;
        Wed, 05 Nov 2025 02:36:12 -0800 (PST)
Received: from builder.. ([2001:9e8:f106:5b16:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7270b56f18sm83426066b.33.2025.11.05.02.36.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 02:36:12 -0800 (PST)
From: Jonas Jelonek <jelonek.jonas@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Thomas Richard <thomas.richard@bootlin.com>,
	Jonas Jelonek <jelonek.jonas@gmail.com>
Subject: [PATCH v4 0/2] add gpio-line-mux
Date: Wed,  5 Nov 2025 10:36:04 +0000
Message-ID: <20251105103607.393353-1-jelonek.jonas@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This proposes a new type of virtual GPIO controller and corresponding
driver to provide a 1-to-many mapping between virtual GPIOs and a single
real GPIO in combination with a multiplexer. Existing drivers apparently
do not serve the purpose for what I need.

I came across an issue with a switch device from Zyxel which has two
SFP+ cages. Most similar switches either wire up the SFP signals
(RX_LOS, MOD_ABS, TX_FAULT, TX_DISABLE) directly to the SoC (if it has
enough GPIOs) or two a GPIO expander (for which a driver usually
exists). However, Zyxel decided to do it differently in the following
way:
  The signals RX_LOS, MOD_ABS and TX_FAULT share a single GPIO line to
  the SoC. Which one is actually connected to that GPIO line at a time
  is controlled by a separate multiplexer, a GPIO multiplexer in this
  case (which uses two other GPIOs). Only the TX_DISABLE is separate.

The SFP core/driver doesn't seem to support such a usecase for now, for
each signal one needs to specify a separate GPIO like:

  los-gpio = <&gpio0 0 GPIO_ACTIVE_HIGH>;
  mod-def0-gpio = <&gpio0 1 GPIO_ACTIVE_LOW>;
  ...

But for my device, I actually need to directly specify multiplexing
behavior in the SFP node or provide a mux-controller with 'mux-controls'.

To fill this gap, I created a dt-schema and a working driver which
exactly does what is needed. It takes a phandle to a mux-controller and
the 'shared' gpio, and provides several virtual GPIOs based on the
gpio-line-mux-states property.

This virtual gpio-controller can then be referenced in the '-gpio'
properties of the SFP node (or other nodes depending on the usecase) as
usual and do not require any modification to the SFP core/driver.

---
Changelog:

v4: - dropped useless cast (as suggested by Thomas)
    - dropped unneeded locking (as suggested by Peter)
    - fixed wording in commit message
    - included Reviewed-by of Krzysztof

Link to v3:
https://lore.kernel.org/linux-gpio/20251104210021.247476-1-jelonek.jonas@gmail.com/

v3: - fixed dt_binding_check errors in DT schema
    - as requested by Rob (for DT schema):
      - removed example from gpio-mux.yaml
      - added '|' to preserve formatting
      - 'shared-gpio' --> 'shared-gpios'
    - general fixes to DT schema
    - use mux_control_select_delay (as suggested by Peter) with
      hopefully reasonable delay of 100us
    - gpiochip ops implementation changes:
      - drop '.set' implementation (as suggested by Peter)
      - new '.set' implementation just returning -EOPNOTSUPP
      - '.direction_output' and '.direction_input' dropped
      - '.get_direction' returns fixed value for 'input'
    - direction of shared gpio set to input during probe
    - as suggested by Thomas
      - usage of dev_err_probe
      - further simplifications

    Since the consensus was that this should be input-only,
    '.direction_output' and '.direction_input' have been dropped
    completely, as suggested in the docs of struct gpio_chip. '.set' is
    kept but returns -ENOTSUPP.

    The shared GPIO is set to input during probe, thus '.direction_input'
    doesn't need to be implemented. '.get_direction' is kept (as
    suggested in docs of struct gpio_chip) but always returns
    GPIO_LINE_DIRECTION_IN.

Link to v2:
https://lore.kernel.org/linux-gpio/20251026231754.2368904-1-jelonek.jonas@gmail.com/

v2: - as requested by Linus:
      - renamed from 'gpio-split' to 'gpio-line-mux'
      - added better description and examples to DT bindings
    - simplified driver
    - added missing parts to DT bindings
    - dropped RFC tag
    - renamed patchset

Link to v1 (in case it isn't linked properly due to changed title):
https://lore.kernel.org/linux-gpio/20251009223501.570949-1-jelonek.jonas@gmail.com/

---

Jonas Jelonek (2):
  dt-bindings: gpio: add gpio-line-mux controller
  gpio: add gpio-line-mux driver

 .../bindings/gpio/gpio-line-mux.yaml          | 109 +++++++++++++++
 MAINTAINERS                                   |   6 +
 drivers/gpio/Kconfig                          |   9 ++
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-line-mux.c                  | 129 ++++++++++++++++++
 5 files changed, 254 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-line-mux.yaml
 create mode 100644 drivers/gpio/gpio-line-mux.c


base-commit: bac88be0d2a83daf761129828e7ae3c79cc260c2
-- 
2.48.1


