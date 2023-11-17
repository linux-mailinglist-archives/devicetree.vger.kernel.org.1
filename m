Return-Path: <devicetree+bounces-16732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 007847EF842
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:14:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 916A81F2439F
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9171446D8;
	Fri, 17 Nov 2023 20:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lsqWx7hm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBD62D73
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:51 -0800 (PST)
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3b56b618217so1447078b6e.0
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700252031; x=1700856831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rhumf+S/1zmUfncIex+xhepA+T9wIMv2vyztW6+G6BA=;
        b=lsqWx7hmnb2o+hQ6cvbPdIkA/XMtr4wg7c8GrbwyNDrm/DgKj/o//s90fnhi++6Jxj
         znF1XWc+e7ooIFcybvXIkUObb7zB5oPDOx5Zc8c0fcGXKL5spQ+FSqt3Ily4wVyE3gh2
         0toW1bZPjSsHFkvfA1mEU+DOAvbUX1jvJUDUhp17PsPFv+VxCuYehVTusVJejhljbbLg
         xouR8VXVlRcsMOH+odeR6T/gwPjHnXVDKdfwhn3MGIf+fDMjxTgApoo2iwwbNHADb9SE
         wf26BdcW/VcqvbIU/g8j1HLvYh5oqbq7cRQDtZCJGO1jqtBijQ4WyEnp1lG4p97d7yXP
         7Kvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252031; x=1700856831;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rhumf+S/1zmUfncIex+xhepA+T9wIMv2vyztW6+G6BA=;
        b=RD3PdpmNsnf6SZZHNOnweRAKREOPRvdYJ9HZigVg7n8bDlk58N0p9BwoDEStinjI0c
         76DHxHl7wTqiQY9EdmOtV4r0wK45Qq+wDi1Izf/GPjiChzQHs2IiNigI8CPzfaxymwTT
         luYjBvIVTJqjoQ3OycZUSn+d1IVB77C6iexd7ioH6rsrjkhvGSaC9dgHUWXrjf41M9bu
         3oO+yJn9GtF5pzu4YdKv3VbUFodOEZSG+IwJ/8o/t/6mjaENYlE48OCYJc917CGVxoFP
         LOiaxYdph21HSMQR5Kt9oJhho0Ifj35PaUbwO9sSS6no52bQDXG/nKcVZcNSQwu3GbMD
         ekIg==
X-Gm-Message-State: AOJu0Ywk7tuR9ok2ycW/T1v8ZqoSg2Su2GYattGdQzDXQIHWfCU8DNM8
	9bIDRwXXc+gmGK8vTqu6oBiK0w==
X-Google-Smtp-Source: AGHT+IGWJBiZ9GKDWx65XkxF5PxgPchzalM6vQQqXfeWw6zoM9oBeieyq2RA7kcI1qGBrs/oSdE4iQ==
X-Received: by 2002:a05:6808:19a2:b0:3ab:870d:2d49 with SMTP id bj34-20020a05680819a200b003ab870d2d49mr584414oib.8.1700252031144;
        Fri, 17 Nov 2023 12:13:51 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id l21-20020a544515000000b003a8560a9d34sm393814oil.25.2023.11.17.12.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:13:50 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
To: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 00/14] spi: axi-spi-engine improvements
Date: Fri, 17 Nov 2023 14:12:51 -0600
Message-ID: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: 8bit

We are working towards adding support for the offload feature[1] of the
AXI SPI Engine IP core. Before we can do that, we want to make some
general fixes and improvements to the driver. In order to avoid a giant
series with 35+ patches, we are splitting this up into a few smaller
series.

This first series mostly doing some housekeeping:
* Convert device tree bindings to yaml.
* Add a MAINTAINERS entry.
* Clean up probe and remove using devm.
* Separate message state from driver state.
* Add support for cs_off and variable word size.

Once this series is applied, we will follow up with a second series of
general improvements, and then finally a 3rd series that implements the
offload support. The offload support will also involve the IIO
subsystem (a new IIO driver will depend on the new SPI offload feature),
so I'm mentioning this now in case we want to do anything ahead of time
to prepare for that (e.g. putting all of these changes on a separate
branch).

[1]: https://wiki.analog.com/resources/fpga/peripherals/spi_engine/offload

---
David Lechner (14):
      dt-bindings: spi: axi-spi-engine: convert to yaml
      MAINTAINERS: add entry for AXI SPI Engine
      spi: axi-spi-engine: simplify driver data allocation
      spi: axi-spi-engine: use devm_spi_alloc_host()
      spi: axi-spi-engine: use devm action to reset hw on remove
      spi: axi-spi-engine: use devm_request_irq()
      spi: axi-spi-engine: use devm_spi_register_controller()
      spi: axi-spi-engine: check for valid clock rate
      spi: axi-spi-engine: move msg state to new struct
      spi: axi-spi-engine: use message_prepare/unprepare
      spi: axi-spi-engine: remove completed_id from driver state
      spi: axi-spi-engine: remove struct spi_engine::msg
      spi: axi-spi-engine: add support for cs_off
      spi: axi-spi-engine: add support for any word size

 .../devicetree/bindings/spi/adi,axi-spi-engine.txt |  31 --
 .../bindings/spi/adi,axi-spi-engine.yaml           |  66 ++++
 MAINTAINERS                                        |  10 +
 drivers/spi/spi-axi-spi-engine.c                   | 399 +++++++++++++--------
 4 files changed, 329 insertions(+), 177 deletions(-)
---
base-commit: 6f9da18171889fae105e1413a825c53fa5aab40c
change-id: 20231117-axi-spi-engine-series-1-7c76311440f9

