Return-Path: <devicetree+bounces-75651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0BB908457
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:20:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C72251F254CD
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 07:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC1C4148FEE;
	Fri, 14 Jun 2024 07:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="eZIGcjT/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93F731487EA
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718349594; cv=none; b=jRGkjgRIlGUJukt4syigDC4AczGVmlmRW/YwYV5Q5pn24ed3fDcmecKGyRlYNAlUq3vLIdyKaiIzPTnUBdDHhTBIXd5bmpu80CX6MEO+FXKY/shxTlqsAkTwBIRmCHIzF1RzHdAD8NaEk0zey8j+Qlt+DmVdRaJmbyVIz502Gwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718349594; c=relaxed/simple;
	bh=SV8pS6B5PnXgvU2BmDoZgip50Vyfq6zDGhgylSFBbSM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=AC8tItpjq5oZi/KAB4FMru5kyXuPhJPEVB4pAW9BFXRZHaaUwc+kupQdsM/k5Zuv7W+dhRfCsNL04N0V/xkpU22jOQkng9D6Gbo7yEh6uvgwwYAHUuxp/e8yTEftHgEN3Zh6aduaU3wLVbZpgd3GV65aITZbvdJOpPq1+7b2jDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=eZIGcjT/; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ebe0a81dc8so19656791fa.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 00:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718349590; x=1718954390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7bM7IjO937X8gnabRpqjs0dK731L6r6PD6s0e3tUxWg=;
        b=eZIGcjT/tXBTDpSFbMnJC7vtJRadnEyPfiFt+suPXtqHaZGkRoFqt+dXBfdZ3rf/3l
         +zSFJMN7oj3l+Da1XccgzmTmV8+/OiH6B7djTevGYIDjEcEpATa68fWgGztyOYMBUHaQ
         HNjd+XjDvgKM73ds/nZcRv0J7ZWhHAqq34cScvuXKWdno00CgXE158OGNmEOSOJ22kGA
         QGk7kowgmlF+bZWoKa/lL7dot9vz3v3CYyS2ANMtv7wyBRc6gdWPzNVxPRrLdk4BxGR0
         dkhK0RQ3QZqYANI2HuBVUqefNTAogejC9LrYHjWb7+IEwj6+8AAXYSQZbj1T+YfoyUBI
         h2SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718349590; x=1718954390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7bM7IjO937X8gnabRpqjs0dK731L6r6PD6s0e3tUxWg=;
        b=h4Bd1Vn1pKTs3I6U/38ABHjPzfbvm6VxC8lni0fhYa7RF7/SPZ0lVsim5ehD9nnxVx
         TyORPu1D/lmaN1p32mHURazzWedQvWptQoLZLHORrEOHC5VrlMvJYehXEtOXllox5/cP
         yX5esEgnfVm7A5S60eDw5Nh8nZaBc93I2zPqs2JXIcuxB52nAN1UIOvmmQB6icZb4PYa
         XInjZ3K1xwCvIVdgLwW+bOOMGc8AROHrayBFk5WqZkJlhrEsN6NWLs8SjOCk8/SBKr5E
         75kf4Pq+l2oFO0zVe4zbTHZCX/xzU1Irz/9boxZU6yhrTeedbKZfDYI2w+GlThVlZ2so
         skKw==
X-Forwarded-Encrypted: i=1; AJvYcCUaE+kbeJz8IWh2LnbdmOOKAMcxDUDpGCZC5KTHU5tUzII96jkApBxDHfSA785PYzu2dP82ln3HtiuS3hvcjfpL2UziHvJqDdv70g==
X-Gm-Message-State: AOJu0YwGoFLbqAvzBUxUbJvfAKLyqQT4AgBVHnE1FjYrZm/t+HB9hmJa
	eq7FmIBeXIWFiRwAj8v6gHlPoeZkKuJdgK6Dq9e5hqf6qvbZxpEQiGmakENMwiA=
X-Google-Smtp-Source: AGHT+IGl5Xcj09+EojoDFnxVQ2dpJru5796oMr1E1gs027Gp3zcO1lUHT3o5+u878fcFaZ6Msd17pQ==
X-Received: by 2002:a2e:9894:0:b0:2eb:e865:494c with SMTP id 38308e7fff4ca-2ec0e5d1179mr16614831fa.26.1718349589467;
        Fri, 14 Jun 2024 00:19:49 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.189])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42286eef9eesm87272555e9.9.2024.06.14.00.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 00:19:49 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lee@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 00/12] Add RTC support for the Renesas RZ/G3S SoC
Date: Fri, 14 Jun 2024 10:19:20 +0300
Message-Id: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

On the Renesas RZ/G3S SoC the RTC clock is provided by the VBATTB
IP. A 32 KHz crystall oscillator could be connected to the VBATTB
input pins. The logic to control this clock (and pass it to RTC)
is inside the VBATTB IP. For this, the clk-vbattb driver was added
(patches 01-04/12).

Patches 05-06/12 add the RTC driver.

Patches 07-10/12 update the device trees with proper nodes to enable RTC.

Patches 11-12/12 enable proper config flags for RTC to work on RZ/G3S SoC.

Thank you,
Claudiu Beznea

Claudiu Beznea (12):
  clk: renesas: r9a08g045: Add clock, reset and power domain support for
    the VBATTB IP
  dt-bindings: clock: renesas,rzg3s-vbattb-clk: Document the VBATTB
    clock driver
  dt-bindings: mfd: renesas,rzg3s-vbattb: Document VBATTB
  clk: renesas: clk-vbattb: Add VBATTB clock driver
  dt-bindings: rtc: renesas,rzg3s-rtc: Document the Renesas RZ/G3S RTC
  rtc: renesas-rtca3: Add driver for RTCA-3 available on Renesas RZ/G3S
    SoC
  arm64: dts: renesas: r9a08g045: Add VBATTB node
  arm64: dts: renesas: r9a08g045: Add RTC node
  arm64: dts: renesas: rzg3s-smarc-som: Enable VBATTB clock
  arm64: dts: renesas: rzg3s-smarc-som: Enable RTC
  arm64: defconfig: Enable VBATTB clock flag
  arm64: defconfig: Enable Renesas RTCA-3 flag

 .../clock/renesas,rzg3s-vbattb-clk.yaml       |  90 ++
 .../bindings/mfd/renesas,rzg3s-vbattb.yaml    |  99 ++
 .../bindings/rtc/renesas,rzg3s-rtc.yaml       |  60 ++
 MAINTAINERS                                   |   8 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |  44 +
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |  17 +
 arch/arm64/configs/defconfig                  |   2 +
 drivers/clk/renesas/Kconfig                   |   4 +
 drivers/clk/renesas/Makefile                  |   1 +
 drivers/clk/renesas/clk-vbattb.c              | 202 ++++
 drivers/clk/renesas/r9a08g045-cpg.c           |   6 +
 drivers/rtc/Kconfig                           |  10 +
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-renesas-rtca3.c               | 891 ++++++++++++++++++
 14 files changed, 1435 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/renesas,rzg3s-vbattb-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/renesas,rzg3s-vbattb.yaml
 create mode 100644 Documentation/devicetree/bindings/rtc/renesas,rzg3s-rtc.yaml
 create mode 100644 drivers/clk/renesas/clk-vbattb.c
 create mode 100644 drivers/rtc/rtc-renesas-rtca3.c

-- 
2.39.2


