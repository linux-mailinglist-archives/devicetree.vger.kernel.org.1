Return-Path: <devicetree+bounces-31659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A73E82C217
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 15:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD3CF1F25490
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 14:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B82EC6E2D4;
	Fri, 12 Jan 2024 14:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="CDow14+I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40D66A345
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 14:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-558dceca019so764786a12.2
        for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 06:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1705070947; x=1705675747; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lhyOt+Bt0LSOKZrhQ3fGQqwCGnFrbZHK2Y4XkjmkxSE=;
        b=CDow14+Iq2V1pqPnYD6wDZqrJXpdCaXHywmi+REeJH1+a+F/V/IF1/CYWyQgvF+JVO
         FBUQ+OcQ+hH2Noou5sppddZEWsQpdYrTxiU5/2P71Ne0pWto/lFd1IQ+Ons5GPrll5gc
         BEkHKqncf+VgBID3qkbn+QOZWgNGLIUN2H5YM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705070947; x=1705675747;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lhyOt+Bt0LSOKZrhQ3fGQqwCGnFrbZHK2Y4XkjmkxSE=;
        b=MRUhjl42J4wZenQ+4YoWSb25o1mlqpYO5NMWsZFWk15kbS/nKnWHnmhLwyNoDN4t+w
         cdJ7tb8Rtz7qPtoOFs3eJIPqJaQrXigdu2fXq2gclpctJVUsqsVoBUXjGXntqhcFJ0q0
         XBHAbY3l3Iqx3yLGHtpgjdFlUnPIVf/ZetbJYL4HogQWyn4O9NmW/E35fXU4jAnD9cyV
         EutrlX0lgcpdbJB/0yyWqFfj3uNBwsNfJzBUnYz/2vLaF8ceKvQftcfwzH5Q+13eGo9n
         F2PjcccQDYIPOzj9diSuoPkD75uffztl4XBZ7RfD3fu30FFWK4EPMIIoHxsU9pr7CuSn
         f2LA==
X-Gm-Message-State: AOJu0Yyo+LnSzFgWTzJs2P32D+quSlWVMXSkr+LIPyRinTrdkXhJXJFe
	qjLDTjuvvQghBdEjxV2147jW1Gm1i9Cn3Q==
X-Google-Smtp-Source: AGHT+IEcoMP8G3JKyPd+n/LEP4GOB4o84UQJ6vZGIcbLjNhI1SJbr0135Gjp9TJdkgu13OEPA8g9jg==
X-Received: by 2002:a17:906:7145:b0:a29:8b1d:7c84 with SMTP id z5-20020a170906714500b00a298b1d7c84mr381653ejj.53.1705070947628;
        Fri, 12 Jan 2024 06:49:07 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it ([95.236.91.90])
        by smtp.gmail.com with ESMTPSA id y11-20020a170906524b00b00a233515c39esm1869372ejm.67.2024.01.12.06.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 06:49:07 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Lee Jones <lee@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Baruch Siach <baruch@tkos.co.il>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Peter Rosin <peda@axentia.se>,
	Rob Herring <robh+dt@kernel.org>,
	Sean Nyekjaer <sean@geanix.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v8 0/5] Add display support for stm32f769-disco board
Date: Fri, 12 Jan 2024 15:48:20 +0100
Message-ID: <20240112144902.40044-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds display support for the stm32f769-disco board. It has been
tested on hardware revisions MB1225-B03 and MB1166-A09. This required
modifications to the nt35510 driver that have already been applied.

Changes in v8:
- Add Acked-by tag of Lee Jones
- Add Reviewed-by tag of Raphael Gallais-Pou
- Add Reviewed-by tag of Raphael Gallais-Pou
- Remove unit name from 'ltdc/port/endpoint@0' to fix the compiling
  warning:
  ../arch/arm/boot/dts/st/stm32f769-disco.dts:189.28-191.5: Warning
  (unit_address_vs_reg): /soc/display-controller@40016800/port/endpoint@0: node
  has a unit name, but no reg or ranges property
- Add Reviewed-by tag of Linus Walleij
- Add Reviewed-by tag of Raphael Gallais-Pou

Changes in v7:
- Replace .dts with .dtb in the Makefile

Changes in v6:
- Drop patches
  - [5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
  - [7/8] drm/panel: nt35510: move hardwired parameters to configuration
  - [8/8] drm/panel: nt35510: support FRIDA FRD400B25025-A-CTK
  because applied by the maintainer Linus Walleij

Changes in v5:
- Replace GPIOD_ASIS with GPIOD_OUT_HIGH in the call to devm_gpiod_get_optional().

Changes in v2:
- Add Acked-by tag of Conor Dooley
- Change the status of panel_backlight node to "disabled"
- Delete backlight property from panel0 node.
- Re-write the patch [8/8] "drm/panel: nt35510: support FRIDA FRD400B25025-A-CTK"
  in the same style as the original driver.

Dario Binacchi (5):
  dt-bindings: mfd: stm32f7: Add binding definition for DSI
  ARM: dts: stm32: add DSI support on stm32f769
  ARM: dts: stm32: rename mmc_vcard to vcc-3v3 on stm32f769-disco
  ARM: dts: stm32: add display support on stm32f769-disco
  ARM: dts: add stm32f769-disco-mb1225-revb03-mb1166-reva09

 arch/arm/boot/dts/st/Makefile                 |  1 +
 ...f769-disco-mb1225-revb03-mb1166-reva09.dts | 18 +++++
 arch/arm/boot/dts/st/stm32f769-disco.dts      | 78 ++++++++++++++++++-
 arch/arm/boot/dts/st/stm32f769.dtsi           | 21 +++++
 include/dt-bindings/mfd/stm32f7-rcc.h         |  1 +
 5 files changed, 115 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-reva09.dts
 create mode 100644 arch/arm/boot/dts/st/stm32f769.dtsi

-- 
2.43.0


