Return-Path: <devicetree+bounces-62754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BDE8B25EC
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 18:04:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3BAC28661F
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 16:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E8E314D2BC;
	Thu, 25 Apr 2024 16:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="py0150OJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0299214D280
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 16:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714061034; cv=none; b=uRQi1GV2NKH00h8aQOKZ2qU9gNK1SvL4+RlS7jGIu7Q4nHRM+hxJYdT51dTVWySZLrHw5LkhHpz8k5jjfCmkJy3I85aKZUmVk+ZzBBWr49avEXO0m4kQc4HiQuYDxLJLVBpp6NV1gmm8JwDpu73ItzuEhxwBp3/Q2nXWEm3U1Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714061034; c=relaxed/simple;
	bh=2oqcmNS3jd8d2/9WZaZaIujWbPFQr6kvI2pAa+x+YxA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=I+JutKtNwlN+X1WV1sNRco48IIEBM0WxxIhT2B4Mbskl1fimsSt0AeX0tL1k4x+I9VX1IGaSUjPMAkqdl38hXWVitvin2gvSfWCeuUp5KsRFwrYnR+VGA1FAbWBJGllE/kNCkIx6psMG+TurVtMPVfTZVm2Fa9RwpQTcacVPiqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=py0150OJ; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5176f217b7bso2100036e87.0
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 09:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714061030; x=1714665830; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=90o4FgSL+CeIO1gyLTC5XITGjfeMRvZ6Pyb1+yyX+Xg=;
        b=py0150OJutXqulUaeKnhAW9xaT2b0NaYvrgJY9bN+os8z/Odw/lX3mqnN5VMJDFy4k
         R3QMNI7MaikB5/suno5zKVBzJqokUcD8/8K/9ECpoNf0XWAEOtBsWM07Qx3AnkjUkI2Z
         TUAQMrWHDll4hhPHi9X2rEu+CzUsbTdzNPzA0t4CGLh4UXKW8457gwKJLdc7qBvV1Jy4
         rPmjjfFzd32/vNp6XBTPW9sWRb3cFQjvfUJifNh0lMN7XsWn5dnC4EQdC2w/w+VMETve
         04rfBWCeLtnSt7TrNGqXQWwMuG/ZnKNBWr6GCpdEu4CaEzEflVt9Ib12YSIgCEJTM+5G
         Z3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714061030; x=1714665830;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=90o4FgSL+CeIO1gyLTC5XITGjfeMRvZ6Pyb1+yyX+Xg=;
        b=d0crMmiAUZOnGUJYdpKjQ14ogLJj4A+/oHMv5B7K6A/+Pxkej/VrM3+ym4w5crBZSK
         MIrHw+0PwbawufuLLyDmwm3VbyKWlbHSG9qrsg9pvlDbWcOM+CzcT2dSsVelroMPJ0/4
         Ghn0ZDmtFWwKBfCKr1CYcUeUo/aZA4BUnhLFJL80eMAfaJ8/rzgc4fHjRojItBEORZeH
         w5uy7CJw+o8XMOGAktCSlh7F1wGrV5bF5OMP84obq+QE9WJXvne7eJAv2ZPfMUgdBpXN
         XTtg90Bws3KvUXPtOfKxM7d/f9DmHh6ZFOBZ9c6A0zxA2S2pOCacRpDHnf8XoRL2+RW/
         CY+A==
X-Forwarded-Encrypted: i=1; AJvYcCXMwSIGg7SZOAnH6eUi7k5C1JMhhae/rHLwyxjapZo4/Jgw79arISIo5AiBgbUeTPzmN6iqHmLZVqe9/AfhIom8hdQ2MltjCqw9gw==
X-Gm-Message-State: AOJu0Yzm4hzyIqg8WiEKIhaVIdrE6rnCKfSiwVl7BFSjY2I3bYqxy8L8
	OhPYnm73pLaRk4aFk/nv7Yb13k38TZjg//nX0huESP5LaMBCLBAuZg8NcyELEIo=
X-Google-Smtp-Source: AGHT+IH4W0cQvppH7SQIIXB9y9gkfeZnnN7nZLtEwV9kMHM6f50E3eDdLoX2AavWUT9QZExL/niKeA==
X-Received: by 2002:ac2:5edd:0:b0:51b:4b94:a956 with SMTP id d29-20020ac25edd000000b0051b4b94a956mr5436845lfq.21.1714061029915;
        Thu, 25 Apr 2024 09:03:49 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id mm10-20020a170906cc4a00b00a58a44a4419sm1329562ejb.57.2024.04.25.09.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 09:03:49 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/2] clock support for Samsung Exynos pin controller
 (Google Tensor gs101)
Date: Thu, 25 Apr 2024 17:03:30 +0100
Message-Id: <20240425-samsung-pinctrl-busclock-v1-0-898a200abe68@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIANJ+KmYC/x3MTQqEMAxA4atI1gba+jfMVcSFxqhhnCqNiiDe3
 eLyW7x3gXIQVvgmFwQ+RGXxETZNgKbWj4zSR4MzLje5K1Dbv+5+xFU8bWHGbleaF/qhLSy5rK/
 KT2kg5mvgQc53XTf3/QAY9rBvagAAAA==
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

This series enables clock support on the Samsung Exynos pin controller
driver.

This is required on Socs like Google Tensor gs101, which implement
fine-grained clock control / gating, and as such a running bus clock is
required for register access to work.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
André Draszik (2):
      dt-bindings: pinctrl: samsung: google,gs101-pinctrl needs a clock
      pinctrl: samsung: support a bus clock

 .../bindings/pinctrl/samsung,pinctrl.yaml          |  17 ++++
 drivers/pinctrl/samsung/pinctrl-exynos.c           | 111 +++++++++++++++++++++
 drivers/pinctrl/samsung/pinctrl-samsung.c          |  74 ++++++++++++++
 drivers/pinctrl/samsung/pinctrl-samsung.h          |   2 +
 4 files changed, 204 insertions(+)
---
base-commit: a59668a9397e7245b26e9be85d23f242ff757ae8
change-id: 20240425-samsung-pinctrl-busclock-151c23d76860

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


