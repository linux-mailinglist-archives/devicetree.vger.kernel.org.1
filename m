Return-Path: <devicetree+bounces-234967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C313C32FDC
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 22:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E83623B3E1B
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 21:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE7BE2F066D;
	Tue,  4 Nov 2025 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ULnOsHzt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5BFAF9EC
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 21:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762290033; cv=none; b=BH1RXBnCSuA6hrKHxH+kgckog/huYvozQnb92e8I8c2msz6IDlDKCvNyp8b8REUEW7CNjVkJyT/gC64RKzNUR17vq/6dhiFbbC1yqTVUdVkds49h7Kml1HbhjIaK3lYA6HP0X7OvQfXh4OtTHu7nKFPkUjW3XkGXwPL/r8eIC+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762290033; c=relaxed/simple;
	bh=WzG1Thd8rWTY5UVsOx6Uyiv/PmagrtT+BKyu17pXx84=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Gv6T6Kb1NLxA0758oiPxo94C8yP4H4Pj+9JvNY+NzxhCIr5wyK1BOU90hMyIxm15R6v0CqijL2bfOeKsDpmsh6SlCMUJ0GuJi0ElLX2cVL/B8I8FAyCGH1cNO69sWFIH+pzdb/8+X64e5uANZTRhA40khEUuct551NpGKYDfZH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ULnOsHzt; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-640f0f82da9so1601124a12.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 13:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762290030; x=1762894830; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cu6otQvJbxl54JqiS+7oNG2Lp4GfO1PIfQ60QhYKDa4=;
        b=ULnOsHztEJesoiusbybBbjyqcFBbJpiS9yljwCuck+y/Q5fN+Eif4Etnqd17TU95It
         23OjVjNgYGG/WAsJ0POkuJm0Ype56LT532UVF3kW2C8x2q5xo1jmtWMAo5X3dyoUBTRk
         y8ZCRsg3hhwa4ahJEPW151bpkXbATG9sMbd6BIOBQAeToztlJXe2yi89xBJflqSCwb1O
         OB/PQBqSK5lZLAlEsBJe6lxI9DC+djde8S4he1rMC033nSjbm0+5kk+5/1RMNB4Z+UsV
         o0oA54cIELHDEwRtwXsERKsutBlnqt/6lMUxwMD7kDdKQPRm2wPMgd5SJLnVX9f72K8D
         gTVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762290030; x=1762894830;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cu6otQvJbxl54JqiS+7oNG2Lp4GfO1PIfQ60QhYKDa4=;
        b=gqfwzZq4Yigofx9gJBx09RYLp/qDzv8DO23oU0ghbiFVCroywwRAvQ619Wiz7j2GmD
         BGfyam8bywbx7EGpRpDTKVxOP6cCjmWMKjgj+DIX71YuS0VhXY3L0vC8oa+QCCX+Zerc
         2F9nTF8PyePyVVGbYt+oZujzkt8aAnyDk5Kec4r18eJd/KAXsL237FiPW5wWeb5bM4ao
         w19xtrpKOlnriu/fGc/y2dwO1FhiHJouQCtp6ZCunkrW/UuYi3f2PkkKVZKONVXlCb7V
         dcic32SWlLXfBkVYIpgiOrHbZXTIDk76xpbLtBjVJwU4r5TUcKbd3us31CU06+/3zj8C
         dCeQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2v7hxNC0kVedRuspUCB7khDsJEDc7BFlv7q4WLnWfT5ec0ERVIWz95Z1UeRRFvgrWQmS53z6Y/C/h@vger.kernel.org
X-Gm-Message-State: AOJu0YzvrE5B1ipI5kaPCdDYsC6r+dNNbcFe0g+eM8QlucGjl2AKftcP
	Bbzo3mMAnakOBLCaixY5wHppWxtT4BE1iz75xlLgNUvJJ2OPlw5q3hM5
X-Gm-Gg: ASbGncs6FMLvTOcYm4NdHY49zpaKCtqWhIpR4tr2MnILecUst4u83sE/HnAcYxP64RN
	sPi4yjwUkC7yBZU1GxR/pDWGLzrQY0jywD7ZxhpnbkZVmPdA6f2F4JJUkLVbvk7iB7C2Z25MIg6
	5f7PvpefrP6QjrjGBSxxHDlrESBqL/+40zhRJBqs8cpO1Z/K7Ot3+di5buOK9PlPZtZCexlsr7u
	DIjKH/hd2RMmeEak9t7d/WS5Oh1hZjhCFMO9kNL7pfnY558bE48XdquYfFVEt8tFmwG4anrvqsj
	JG1wZThJDnZPqU0LbpAQQfe9E80R372Rbg4FP9bppj3M2G2RwKOgzSppybXvNU0CnwT7a09X2xT
	jco5tXUtNOHeqXRpNtjsl65oK3gSphjl6yaOCZi4opvI5PBpC7bKVclnXg93rjyfDc2f3czPPlE
	J9ClFR+3dx24ZfvA==
X-Google-Smtp-Source: AGHT+IGknnmMjTDBfXdME3H3Wv5oEbmwjqdcOSLbNVmT1j3boNqZqijOYzH69nr4IyFFWpqlJGBCpg==
X-Received: by 2002:a05:6402:27ce:b0:640:9d56:50a7 with SMTP id 4fb4d7f45d1cf-641058af4c4mr577091a12.9.1762290029712;
        Tue, 04 Nov 2025 13:00:29 -0800 (PST)
Received: from builder.. ([2001:9e8:f13f:9116:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640e6a70b5bsm2990017a12.26.2025.11.04.13.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 13:00:29 -0800 (PST)
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
Subject: [PATCH v3 0/2] add gpio-line-mux
Date: Tue,  4 Nov 2025 21:00:19 +0000
Message-ID: <20251104210021.247476-1-jelonek.jonas@gmail.com>
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

 .../bindings/gpio/gpio-line-mux.yaml          | 109 ++++++++++++++
 MAINTAINERS                                   |   6 +
 drivers/gpio/Kconfig                          |   9 ++
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-line-mux.c                  | 137 ++++++++++++++++++
 5 files changed, 262 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-line-mux.yaml
 create mode 100644 drivers/gpio/gpio-line-mux.c


base-commit: bac88be0d2a83daf761129828e7ae3c79cc260c2
-- 
2.48.1


