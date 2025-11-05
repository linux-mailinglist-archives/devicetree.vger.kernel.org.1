Return-Path: <devicetree+bounces-235317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D457FC36BB1
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 17:36:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 54AB034EE12
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 16:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF3D6337103;
	Wed,  5 Nov 2025 16:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UVst2bXx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A511F3B85
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 16:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762360595; cv=none; b=sAmYoDMuhGEDDV+JIH3zUz7tzu8ZunXQcTdYBQKLu7Uto05kDGfQ2z8n+ebiWNz1cABacVdKUFBSHu1HpeuvN5arohS/5DWk4qLQQ4xGHbTRO2vxDaVe0MPvgAjQpL3tFtpmTAtRFgrea2PdH8Hd4a2H+6utP31m4vs5KuaAKCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762360595; c=relaxed/simple;
	bh=lB1oiiivUFk0ZDJoQQXW2XHOAkxUVwGf4d1RCAjOPZI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tZHBgFprno9ynKlkqVuodcWUIXNMu5PORHToKxxfeCdGEw5tVm3N63liYb90QeFlmF4JtnzndNHFHGyXLHG7zd5qSXGNA8yvrqdI3kMc728WvlbL93dKzM4XJwDnxIavQT4z3xgFOCNjAIVCdH0v0UMHgIs6q1Xl507b5JP3INM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UVst2bXx; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4711b95226dso49855e9.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 08:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762360591; x=1762965391; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fHYj506/4Pr8DL5qCv+wyZzNDXaCmNF2075v0Hd6Ako=;
        b=UVst2bXxbBO9T6/1vAKMRGa7Xs8UcLSqz4QihlDyH49QFCJoOwRFXzPYtnkmZO+KTk
         BUzFOEil6dYA4iThnWqmYZuo8iAvBL7PflNl9gl4Q2F33rjtD5TXl711h0xTGw1ae0/P
         enDa4ZH4zSmIs5YKvkVIyUvhQ1Qs9qFpAWOAGDtFmnu5CUnMtCNW4LEmevDhs6cV/AAo
         iyMMJkBl54rOStz7fPJaeiltBD/qhX4RNIjcHTgiYsyCkyPWP0v0wCdKZMigpjTsQ2Pq
         5knamDe/oX5ADVxkSsd7QU1W3bkjLES6fNvVVLlUeaOLqheSd2ObEDSZQgKL6F5pnaq3
         7BoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762360591; x=1762965391;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fHYj506/4Pr8DL5qCv+wyZzNDXaCmNF2075v0Hd6Ako=;
        b=hxQNlKzPKBq+HarSd4bb4T5UPjbVPecVrDgCv2x0RJ4KtKIyGosVYLRXvM1SKNRQwU
         BLQEYxQtGF0EbsV3kIFvEQC5+O1ZlEo0NON2bHzO0/4SqDdilP+7tmJFE5jpuGwLm1vn
         K+PWT2QjKu72HOGvrGljCY65Q8OpD2GvLGHW9k5sqsp1JukMrsXKOKsYj7cscSGjzIZi
         0aeoWn6/XndPpfrT9ujpMCF3qiPuM7SCvy5AtXPfnBBVHyuxpmVEnbNMNlot6u/1L3I6
         X7V7wKsQMvs0b02MP7AaQcWh6FKZl3Ug1lTqNQuSquoA6AUnGuoRddz2+xz4pfNABuKX
         6AiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQn4ZxQM8PNmrVbTraL7dMINNi9M/ptDwIZSrVOMDOQQEXOzeqUIhgdYHArDRXik+bp3AsulZ6JE6C@vger.kernel.org
X-Gm-Message-State: AOJu0YxRvFpuyDAqqtY0JkqVTcjAXIxY7aBqMYf9J0LH31hjx+zm7JNK
	CBwFPX+fOL8IgHOUf8Wq55QHmD3G9F7nrwmRZGDcEEHmFgHue+vpUaKW
X-Gm-Gg: ASbGncsD5xO1a2HK+0ktthllDkHjgPB7y9SEksjFtkDqh1xvGI+D/BVSGB7B1xtT7bs
	Q2qY422Ancz6TliL+Mh2dQFJV0fBc2qyWjIYA7q8Cq/k7057zLml63PGLT8apsfv6uoo8CGXcmw
	zTU19rbJPzyUlHZlZPfq8gZlrnqMQFkyeGk28NLkat5cKk38JAAzmTOQQCfmRepH+5QbPigFQZJ
	m+2LgpXPDpETwccHZeDRrCWAFSu7tffIXw5mxweGYv7HRqxkhzM4txMpcjHOfOLtyv329F4CkJS
	sbFTRVztX+WZW93rJxpVtaaiWDQZsA6AXv89xA6XHc+VeVqCxOunlWvOJO1kQ+7Q2vbYCYR+jKe
	uL4Aa9NEBakqhFhfZyLFi2F8d9Gnp1civk1KVVVVVLWy6keobJnH3xyMcC9batzfCW+UAEe3v0T
	QQa3X3qOTrXQwCrg==
X-Google-Smtp-Source: AGHT+IGLGPvP7XURghAJPhqU1JFUqROk92/vfl7A7dK/Bo5oH/GGTIj4CfcCbwnGs5AWe5xeP+xN4w==
X-Received: by 2002:a05:600c:4e88:b0:477:259c:dbd7 with SMTP id 5b1f17b1804b1-4775cdc56f1mr27738775e9.12.1762360590620;
        Wed, 05 Nov 2025 08:36:30 -0800 (PST)
Received: from builder.. ([2001:9e8:f106:5b16:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4775ce3ef38sm57026755e9.17.2025.11.05.08.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 08:36:30 -0800 (PST)
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
Subject: [PATCH v5 0/2] add gpio-line-mux
Date: Wed,  5 Nov 2025 16:36:08 +0000
Message-ID: <20251105163610.610793-1-jelonek.jonas@gmail.com>
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

v5: - renamed "shared" to "muxed" to avoid confusion with Bartosz' work
    - dropped Reviewed-by of Krzysztof due to binding change
    - use GPIOD_IN in devm_gpiod_get instead of calling
      gpiod_direction_input explicitly afterwards

Link to v4:
https://lore.kernel.org/linux-gpio/20251105103607.393353-1-jelonek.jonas@gmail.com/

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
 drivers/gpio/gpio-line-mux.c                  | 125 ++++++++++++++++++
 5 files changed, 250 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-line-mux.yaml
 create mode 100644 drivers/gpio/gpio-line-mux.c


base-commit: bac88be0d2a83daf761129828e7ae3c79cc260c2
-- 
2.48.1


