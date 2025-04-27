Return-Path: <devicetree+bounces-171266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 407EFA9E082
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 09:44:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E79717AE02A
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 07:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B786246335;
	Sun, 27 Apr 2025 07:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="asB6wenO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D3410E0
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 07:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745739852; cv=none; b=biTistz133QrGAX4KNGBMtL20AMnHtNNLCjDdtJe95+KdOYDGtXXRHveYYFp7iCaMZ+oIJABU11r919h5guvT5IuxKVGOLKXvwaLLbogG+yQX0k+iAJ2g0LkYjMLMlE1ANAFTsJRTINVw3ok5kbZBDsI1wjUiAstMzzKdmAhvjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745739852; c=relaxed/simple;
	bh=+55CHDPhy7ugVr8afIZtwPoA5z6AhwOB1hiT1fHQRa4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JbZK4xiaVj2aHuYmxTaQENG2oSWZgC56TzByuAYKGc7IZ4NapkFJukmmSBjTTRs9ZGsCWsKKEZwLMr2pkS93RpHMmlRaq6hQdqi7tGk9eQCayDafFV/Mp8luu5EdescuqhU7TtVkEfrtM25vQ7J+3CQVLF4Y6Rf7zlwMd6kwcEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=asB6wenO; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43d0c18e84eso17154725e9.3
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 00:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745739848; x=1746344648; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oinzcqCiVbGgyb0iiuzscDKJeJyyI76yLcJfoJ0sjS8=;
        b=asB6wenOLclOyq7FHXYw1YG2fz2XoC/uueIFoZ8vp99pHKebvqvPfuKdD5JlSRqnos
         P9Hc9OPYmiXfZIPdGUIocm1CYwLpUMoP/OPKSu2bMg30GUs9LThh1263tITDbzP2E55A
         H1RKIoTfbPO8//DtgPMNyZW4/8E0QWjUnmXuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745739848; x=1746344648;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oinzcqCiVbGgyb0iiuzscDKJeJyyI76yLcJfoJ0sjS8=;
        b=H7zDJe1myALFYEFmIc8KHpbK6xrafkPC28J4Viu/HFF3kEwYysVIz38VRUkX+beUGS
         RHvZZpAST4La33FXIym+oIkHA0QZE0JDZoh3ITa/K/ABnbq7dPN6UliF4aHabLW5zYqW
         eLOhdz85VMpGtSJW7p9W9DwJMxb2gdfinZ/PYr9zR4hJLb4/d9skU57cet/9/Kp6nPEy
         GDcYSewlvmkiEU31E22eKpelBdqLM0QcQTMWsF7CWEdU3G6wLtQ6GbcisrAI3Zh6E6EY
         HHYr40SQ8D5jM4R7NkCROoA65GSiaVbQP9FHfvZeO+KRJ0brYfQ92A14ONcaltgGkE85
         wMxA==
X-Forwarded-Encrypted: i=1; AJvYcCV2ji4tTdhYEfpuwa4LC8iRhT7PvNNgNRVDYy69YRhy+gw0uYs2b9VSmd0ui0LjkGCO/nen9SIkGs4q@vger.kernel.org
X-Gm-Message-State: AOJu0YyvrjJeyqMliUiTUK6J1rZZG6gbwQbBkFrrjokxVsMKnB/GNKgQ
	k4QsrbzRDqUGpvdJEzxAtgQCktq+NS+x4MSba2afHTtmE8IS+LKDRKn5LOMpWsc=
X-Gm-Gg: ASbGncuaaZxW5/4GxFZlwqTM146lYC5DWbncKydCg9E+2KBWY5ySOskgeDbvR/8FC+G
	xQhIOR0JSEq7ZLzA9iNbjLxIa1+2GOXdXJkdFZCrgum2+KAkxSeyLRl5/PQJqCdaM8oEoQWKmWK
	Oi7hQQ72mHEm+q+rQsRyyzsi8nxqtaBw1AFNrFKtcjJxDttyJjky+67SvxkB/PoEVGwHbbd6dHF
	Yif3JDVHc9iygpB9BCgExRraa7J+LuHBUID/NAezqr/8fdTgscGetAvhc3/tjqTq6BVsNj4jIqO
	MtKmFlyYRBi2NRfJjn8sgGOOa8XF7Sr61OrGp/nJEaHM11B79c4ylgw01U0ooNXnrtS2Z8ICj++
	9fnKSEA==
X-Google-Smtp-Source: AGHT+IG55beBCMeEpoU+v9sBHrbcIgFnVINAwcpqdyMq90VQ1/y+K+5G8xBe1CVGW38gxB0HOPdp+A==
X-Received: by 2002:a05:600c:3148:b0:43c:f44c:72b7 with SMTP id 5b1f17b1804b1-440a65dd132mr80678905e9.14.1745739848202;
        Sun, 27 Apr 2025 00:44:08 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.180])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a52f8915sm87682015e9.7.2025.04.27.00.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 00:44:07 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Jander <david@protonic.nl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Marek Vasut <marex@denx.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	Roan van Dijk <roan@protonic.nl>,
	Rob Herring <robh@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 0/8] Support STM32h747i-disco board
Date: Sun, 27 Apr 2025 09:43:19 +0200
Message-ID: <20250427074404.3278732-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds support for STM32h747i-disco board

The board includes an STM32H747XI SoC with the following resources:
 - 2 Mbytes Flash
 - 1 Mbyte SRAM
 - LCD-TFT controller
 - MIPI-DSI interface
 - FD-CAN
 - USB 2.0 high-speed/full-speed
 - Ethernet MAC
 - camera interface

Detailed information can be found at:
https://www.st.com/en/evaluation-tools/stm32h747i-disco.html


Dario Binacchi (8):
  ARM: dts: stm32h7-pinctrl: add _a suffix to u[s]art_pins phandles
  dt-bindings: arm: stm32: add compatible for stm32h747i-disco board
  ARM: stm32: add a new SoC - STM32H747
  clk: stm32h7: rename USART{7,8}_CK to UART{7,8}_CK
  ARM: dts: stm32: add uart8 node for stm32h743 MCU
  ARM: dts: stm32: add pin map for UART8 controller on stm32h743
  ARM: dts: stm32: add an extra pin map for USART1 on stm32h743
  ARM: dts: stm32: support STM32h747i-disco board

 .../devicetree/bindings/arm/stm32/stm32.yaml  |   4 +
 arch/arm/boot/dts/st/Makefile                 |   1 +
 arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi     |  34 ++++-
 arch/arm/boot/dts/st/stm32h743.dtsi           |   8 ++
 arch/arm/boot/dts/st/stm32h743i-disco.dts     |   2 +-
 arch/arm/boot/dts/st/stm32h743i-eval.dts      |   2 +-
 arch/arm/boot/dts/st/stm32h747i-disco.dts     | 136 ++++++++++++++++++
 arch/arm/boot/dts/st/stm32h750i-art-pi.dts    |   6 +-
 arch/arm/mach-stm32/board-dt.c                |   1 +
 include/dt-bindings/clock/stm32h7-clks.h      |   4 +-
 10 files changed, 187 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/boot/dts/st/stm32h747i-disco.dts

-- 
2.43.0


