Return-Path: <devicetree+bounces-251979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7117ECF92BF
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 16:52:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66FEA301E93C
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 15:51:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAEFF24BD1A;
	Tue,  6 Jan 2026 15:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="LUmjK8/x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4AC23EA87
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767714313; cv=none; b=cSxHJnHM+RDXPjMaDaGVrJM0iJr+CHCy27lXCF2fvvLxWMImvZBB0Q+VxIHtCG1IiMvLfpfSgraeHgAJHhD8pgAwB/oyOExCVpzZ+Jii0CLuHAurwO3C0O5JY6tE+QFJtZ+ytqDIwl5vllag43NYGUyqqq3hj0GyT7i9Wl97+po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767714313; c=relaxed/simple;
	bh=X1LkhQwAhXLtl18hTxnoPCjt3k1+fSSV82rJT0sLA/4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ggAdZBv2WqjZIKRrULcPXCudPaNlOtiUhHWT5uq6x1K8aLZRxyfm1T2NFSVOyaMd7ijSxsG9ombcIBpTbcxekxf56UOeHd4m73u/aEOz/7TLRUDrtnavuMhPGes253uEjYU1efknp/h97+eJlHyLgqTc1KyB+yF+z9qHPD4MeeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=LUmjK8/x; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64b9dfc146fso1886175a12.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1767714304; x=1768319104; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UaGEaTeet5VDnDbky4KTpjLHpw6d3GXYeQzFusAWapo=;
        b=LUmjK8/xxzdDC2hq/HGkbRXuwNQNgQtwMpiqbX782uuQh23EI4nhKUKqSPVKhufLq7
         GMEJ099KR8AE9JxFTmkccssmkwuNZz+gcNXP57npPJmlWITHS3yRonrvSiGNTtDA4Wpx
         2zGi4sTocpUSTOlh4g5VE7A60dajlUmb231FI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767714304; x=1768319104;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UaGEaTeet5VDnDbky4KTpjLHpw6d3GXYeQzFusAWapo=;
        b=hkWG9eatDav00OqbwedP6T7C9ZZ+mqIaOs7rdU+2KcUdyo0XyxHxMnNHhVkHggY1vA
         V/cTWM2Qywuv4geQhpL63IhtINyM49xRsvoYhsoEOobcu3/4291pi/nvbsUiEf0maxCC
         om/vkvbGuqez1bU2RTiu8QYEYJn1zl4PhJD7HbVubJGioIc7JfpzHn6zE7lQ6NpJMowU
         ysddXZ7hcvCorvKSVU6DY8XpLcRklHpe4RpBcjYM5cQvkPEb04zpMeJFtgHVld/FkrZV
         WI5mti+HsfGkXtu7qiAvhY6Z6iPirE37JkM4DfoOHcDKz/RsdkDneymiiAeCPtH0DMsb
         Iqmw==
X-Forwarded-Encrypted: i=1; AJvYcCWCykHUwsJ9I5M3nBdc18tBdJpJJ2bPZfEAoviYIAFeofGaU/5nyIwFVffIMbYhWgDjAiuuy4L+MWBa@vger.kernel.org
X-Gm-Message-State: AOJu0YyR2J08Vx7Lr2XLquWVmCF2+rD+AJc97K1wBHKSBY7Ad9fCxFQB
	k4rQv2Qm4xD/weAHtIV8SQrKqlAeJ2ETplffibodl2XoJ/fjlGLXT/5X3x5SHaPEPZA=
X-Gm-Gg: AY/fxX6Fre5UXvYLN/SOv4toojYe1kpTO8zr6I5EXtZZefkJjz9Wb5bBRz7J1kzmcos
	lYaheLbckBtXcgSzWORK2u74cF+ia/KTbuvbLIUePU14Nzko5U1zsp+pIBimffgTxy8xDjDZS31
	nu7+2TT75wF0lRqIh+Y3CSnVrbJ3ZBfSVscHsPER3ot/teVWmy3IHRwlMlpAEJKO/iXu+L+uXXE
	pKTJIT8BBmL6Cs7zaRTpParsnmXnaRWTTtgIupHyT2koovFO/h5Oqv3I7msg5mZ5xU1A/MpJT4l
	TnRJbIcFcz2e7JZxQufqjixlADa8z46YNoexs1PDxtXxvcXj3US99xn4UmrEeNpC1siR/sY1QAQ
	1axthRHYdBIYevaLsa7dS9JSZGpz2IG5qbpJWhau2Vnc/pIuX3ercUaaLLtrJGto9XtRAWXrQeQ
	RpsSvfmg87TB06yca2Z2CrmM/x/4UEJa9HMf8VaG0whLPmbFOb2pdYm4dvcY7lS/IMqxHIcktyB
	HjC1qeUQmY89vBBKlOC39RRS3jAUyFwWPeSpyMwnXbZbK43ilvoiTMvhPYkSs3t/IHXMb5b3RyG
	mGtlMZkMs8g=
X-Google-Smtp-Source: AGHT+IEhJj76/ixR7gbOhq5xfUe3t/bDrv2uRRYPD/P4N5pDYTo/+VYMZwWAdEUPIQ/gXZSeiPURWA==
X-Received: by 2002:a05:6402:294:b0:644:fc07:2d08 with SMTP id 4fb4d7f45d1cf-6507bc3d3c6mr2408057a12.2.1767714303654;
        Tue, 06 Jan 2026 07:45:03 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-95-248-31-95.retail.telecomitalia.it. [95.248.31.95])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be64efasm2349767a12.21.2026.01.06.07.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:45:03 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 0/3] drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A support
Date: Tue,  6 Jan 2026 16:43:13 +0100
Message-ID: <20260106154446.2735701-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series extends the Ilitek ILI9806E panel driver to support the
Rocktech RK050HR345-CT106A model via SPI.

To achieve this, the current driver (previously restricted to DSI) is
refactored to support both DSI and SPI variants independently.

The series includes:
 1. A refactoring of the existing driver and Kconfig to support
    multiple buses.
 2. DT binding documentation for the Rocktech RK050HR345-CT106A.
 3. The implementation of the SPI-based driver for the Rocktech panel.


Dario Binacchi (3):
  drm/panel: ilitek-ili9806e: prepare for multiple bus support
  dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
  drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A SPI panel

 .../display/panel/ilitek,ili9806e.yaml        |  43 ++-
 MAINTAINERS                                   |   4 +-
 drivers/gpu/drm/panel/Kconfig                 |  23 +-
 drivers/gpu/drm/panel/Makefile                |   3 +-
 ...ili9806e.c => panel-ilitek-ili9806e-dsi.c} |   2 +-
 .../gpu/drm/panel/panel-ilitek-ili9806e-spi.c | 327 ++++++++++++++++++
 6 files changed, 394 insertions(+), 8 deletions(-)
 rename drivers/gpu/drm/panel/{panel-ilitek-ili9806e.c => panel-ilitek-ili9806e-dsi.c} (99%)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-spi.c

-- 
2.43.0

base-commit: 7f98ab9da046865d57c102fd3ca9669a29845f67
branch: rk050hr345-ct106a

