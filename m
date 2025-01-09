Return-Path: <devicetree+bounces-137214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8030CA0821D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 22:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 517FD188C1F1
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 21:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F177A20469D;
	Thu,  9 Jan 2025 21:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ZjAGvlaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7BA1ACEC6
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 21:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736457557; cv=none; b=dY27g6R5VRgP7y6VfIXW16A9AC16aYNK59Fp4bvoXkNpeYb9jXcxdAGZM5FmzxqEULWHrVb1svOlzB3tY8EKLq1JlUTfHNb4LfoR48ew8d50ZOD9pvKoUr4HqzaMSq8MpHsC+pkPNQ7myd2aRxa5gKTaCcR53lVHlfCSx2PyzLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736457557; c=relaxed/simple;
	bh=4kR3KOquOvIAUcDgyxq24Py1Sqt5uauPaJ1AzQww15w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sZzfRpXg6CoOza+AlPXG3A00ReXqcVOZJXpdgLW+WjACiPPZKJHhc1+wpUioYfgxpF7pBXdmevGVkyTUK37fSlkKQW4EhFqnKgioHld0bBFeHGoknBrFDry2QIHCQkbff2Md2UiNGYFJ9A/wojBGWTnvVT3YrwHBAEuauu77qHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ZjAGvlaL; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5d88c355e0dso2269592a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 13:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736457554; x=1737062354; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nYWwEHMv7Pi4/aMuIfIEd0m898Lr2Kb8/a+FILyxHPY=;
        b=ZjAGvlaLGRdpfiEJs2KF8uBNysFg2ZUrXbw702sYku9/4MQZz6F7S4UiFRQ+7mBQAa
         1RFBwqLa+VSsjZva+j3PK1GHfVwn5TIrp0xy6smsAlsDAVqolXtl7L41hTVzOQv+N7fI
         kLvQLW6Jkn865rsA3ul6w36kZNp6pu5wnoJSs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736457554; x=1737062354;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nYWwEHMv7Pi4/aMuIfIEd0m898Lr2Kb8/a+FILyxHPY=;
        b=c81HvhrwgyaJIo7mnJ77ly4jel+fpX/SfJZT0gNrGwApN6//daUDnWQkBkRP5uoGb7
         MoQmlekCYX0aKsu2jbBUZMymzTvKnvhUkvKF2JcOXNvN8iji7F1am8Xr9C8Tgk1BNQdj
         Yisbnffxpf4tdrbL/Pi7ALTM54eIqcvoeYm6yd4Im+Z8uI5heY4QqkYT90/GEEw+utbe
         PwPiQU9OIv1yXdhEnnkX9vq+cmLA02u1ok2rwsC4G8w3+z4sML3uisej0CdLi6nSVo8e
         Ql14iRnYzuv0bgj9+BaWGh8Ztoi23/go83GHdTy6FF59CeuAdaLpJ4ktmmBg2UDIR6sP
         pZhw==
X-Forwarded-Encrypted: i=1; AJvYcCVRb51xqZgV2j20wDrZS3kpsmj45U2YW8aRtNWPBzNeouDR+7FqVBsmITyK2X87FscPOeAYehKX5A7q@vger.kernel.org
X-Gm-Message-State: AOJu0YyAX4X5Z95Rs/QTrcxdTIwtGKB9eguJMaY15eDlzscsmp/JtsZw
	t62h0i6qiuiZ+0atsD3JzzannopkAc/TgZLBBf2R/azeekmYFLnvSiIt7oG2/WY=
X-Gm-Gg: ASbGnct1vHuhY75RhUMQMmja2kXEUeYal9kFx8O1M2JERI72PPyT2MOqR1QVTtwR7HS
	gaDtnR1FM8+nmWQnCsGz69Q4/Z+bwWC8cc6nNSRr6j8ncDeR3Uu8Pzb0hC/c6NGRggRuE0DMHbx
	i1NbNe5nHdufEwAuGQ9Hkk/RaLGuz5Nekb1bOg//44GR+wAuw660Aw7QBy2ad5PZflWBRz34GOM
	T6v7x8dGkSc0daPgxeeZZsvzAd9RA1BHu1dSnwMcSCmzrypqsqDFxKTBk86/dAHm2/grCJJOyev
	FeGRGXIP87t/8KR+n/UXhXwO7s8mgA869Ua1OUQuujSaKIejjf05oyVjENKzu28gjnajwQR9577
	HHd5UK0VmzzjF+gXaVw==
X-Google-Smtp-Source: AGHT+IGDVisAyEQwSigpcUtiYjGMdYnHM9AmzlwjHAKTXZuLBmm721gRf+PfVKaw25o+OkloXI5uXA==
X-Received: by 2002:a05:6402:430c:b0:5d3:e45d:ba7c with SMTP id 4fb4d7f45d1cf-5d972e7148bmr6635147a12.29.1736457553855;
        Thu, 09 Jan 2025 13:19:13 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-41-6-15.retail.telecomitalia.it. [79.41.6.15])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d9900c4b56sm925567a12.32.2025.01.09.13.19.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 13:19:12 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 0/4] Support spread spectrum clocking for stm32f{4,7} platforms
Date: Thu,  9 Jan 2025 22:18:27 +0100
Message-ID: <20250109211908.1553072-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds support for spread spectrum clocking for stm32f{4,7}
main PLL.

To achieve this, it was considered necessary to also apply patches to
improve the documentation (conversion of `st,stm32-rcc.txt` according to
the json-schema) and the code (use of FIELD helpers).

The series has been tested on the STM32F469I-DISCO board.

Changes in v2:
- Fixup patches:
  2/6 dt-bindings: reset: st,stm32-rcc: update reference due to rename
  3/6 dt-bindings: clock: stm32fx: update reference due to rename
  to
  1/6 dt-bindings: clock: convert stm32 rcc bindings to json-schema
- Changes to dt-bindings: clock: convert stm32 rcc bindings to json-schema
- Changes to dt-bindings: clock: st,stm32-rcc: support spread spectrum clocking

Dario Binacchi (4):
  dt-bindings: clock: convert stm32 rcc bindings to json-schema
  dt-bindings: clock: st,stm32-rcc: support spread spectrum clocking
  clk: stm32f4: use FIELD helpers to access the PLLCFGR fields
  clk: stm32f4: support spread spectrum clock generation

 .../bindings/clock/st,stm32-rcc.txt           | 138 ----------------
 .../bindings/clock/st,stm32-rcc.yaml          | 147 +++++++++++++++++
 .../bindings/reset/st,stm32-rcc.txt           |   2 +-
 drivers/clk/clk-stm32f4.c                     | 155 +++++++++++++++++-
 include/dt-bindings/clock/stm32fx-clock.h     |   2 +-
 5 files changed, 298 insertions(+), 146 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
 create mode 100644 Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml

-- 
2.43.0


