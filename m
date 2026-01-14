Return-Path: <devicetree+bounces-255149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0495D20252
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:18:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E6BA33004F3A
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E6639E6E3;
	Wed, 14 Jan 2026 16:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ozrHSmMY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB4D11CBA
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 16:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768407404; cv=none; b=DaTFsYvvhFAJV9geKpCRBRR3I0jm1BIRlRglXMVEIQw0lW0xp8KCgvqS6etqV1EVPwpiigfqW/1Hm8d7cd42KM8l2p6zF4CEw7VoTXS9ULNo4IpwoT4tEavA1+wrj7/TxLqlrhO2eVp2qcShkQZLkevMMI+qRfYpfgz9KABWDpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768407404; c=relaxed/simple;
	bh=ysy/PvHHpOMwEi+sFwwevbjLx8uul5aJv+benzpg7Hs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZvjLbvS3iy1hQIMJSljJTmVtXVvilbwtxImy56zhaL0B289AJMTCjwSeq2Ck1B/OdtzR0eEcJxLoiaNgcxHq8c0WT3YWPuMOVP4UhnnfdO0kh6z6oHRLMkrDlDnpcs80Bd7pj0iKlsLWrxXrhlFcPrptKRl6bpkoutipEGJoYtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ozrHSmMY; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b8708930695so332566b.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1768407401; x=1769012201; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tWjzrPidhfyZlS+0i9HgQ4Dnodyf3ucVLrFNdxloGQU=;
        b=ozrHSmMYAXbdX/IXorviGkn8loFgIU+PvWQkqeh5RHGOU2lpI8oMMXIDmSdw4pAfL8
         BDIyF19LDenFP3PZNoAPcRZRAlu7AuUCjJKYwZEOPMxiDChryvCybaGl1E5xG3Zge/Fi
         o8EdS0GWmKVs5sfSFukixvb4RoXW/vZmv/6UM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768407401; x=1769012201;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tWjzrPidhfyZlS+0i9HgQ4Dnodyf3ucVLrFNdxloGQU=;
        b=HzAhQxuj3o90QhOQUW16M1Tih+Cas7gzvWrMJvC0l5nIA8t0QY3Vt+7ifeIQFpEKkN
         OPcgsu4m0JT2M/W57Kq0kW5xBwrKpLC/G2gfTtr4VDIiSLUszvqjqMVGUR9yyddqBi6t
         ++Qz3wWUFTdcsrJZ7p66BaxbJMjj4135aNdcjn3KvULTozP2nkbiVzMklN8YUEJDbNl3
         HHxkg07Ru7p+iSm7ARh7eCzvMkugCPbh/u8MUPhxYt/Mn7zCRLrNExo5qQ9h6J26kAxP
         G7Gz3y30RccqNYNXbWF/+NT+UjCAFIUGNcUtji4twyNfw5kJEhcCSY6ccYCHRY5LIUry
         x2aA==
X-Forwarded-Encrypted: i=1; AJvYcCV8JuvMY/FdSgoNr5+hvEGuorOdvlWNuWuO1dU4LJ5o65Cmqja7JuezbGTRXBY9RQJVhx9wGRFkVJuQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwlqLIz0phNfVPqAHCszZ4MV/01nFNo7N4OGJH7eW+OvVDF0C29
	C3NhfJWAoPfBEmSAbUhBiULBeWFDQLdDuuuY4EPDP7uz0OSkjfmMLrlGzwjPmWOEYko=
X-Gm-Gg: AY/fxX6Fsw/GA3ALdCcWaI95tZuNWODYMAnXeQP1tQgnMaWLJg/ZmuE7ucykh7aYxdY
	3RQtl6/CTEXHx2wcx8vea+j8/zBKvK8ecu566aDjR+xMFtYqwdFyn0jjZlG+cmgRMgAuJ9ArkFe
	1Uvi8MwcF33JZkZNSmdLbF1wl5LTL0Aeg3XqA3PolEHRAARGb/a2ffFjUySj6iGnAyTaUd6nh9N
	4ASbBnlA2OikO6G9HdMoB0eadSxOgeEjFSHW9wQtnJ8pj3Zfvvt/bswBx7v9+MRGo6JMxClnfIn
	/NOqZyQi4s+dU3VqHstvEmP87TTsA1OmDyhwkIGeVhe7IJp0O9nU+FYAyZx/Y1rQmOOL/B2moSG
	beip+2iZskrLNN048kidGnlE7Uj21vOK7tg/8frWP/iGbXyecQUAl5brXhnnw/OjIT1QUKAVSkU
	6XEs5D3WoI2KT/ByWB2Q1vgyiHMyUxPKGbP0HMKvLL5bqDlppoC1sWH6Y/Hfp9eUobZh1hB26r0
	SBTyIC2C3DwdJY4GEKFhufi5KYl+Jh75MQ1ABxSf5WEEz8STWAzfuU6dzXv81Fo8ZOGMw==
X-Received: by 2002:a17:907:d23:b0:b87:e58:e37d with SMTP id a640c23a62f3a-b8761283a13mr272159166b.48.1768407400930;
        Wed, 14 Jan 2026 08:16:40 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com (93-47-52-235.ip111.fastwebnet.it. [93.47.52.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b876dd0e9ffsm152281566b.37.2026.01.14.08.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 08:16:40 -0800 (PST)
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
Subject: [PATCH v2 0/4] drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A support
Date: Wed, 14 Jan 2026 17:16:15 +0100
Message-ID: <20260114161636.1076706-1-dario.binacchi@amarulasolutions.com>
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
 - A refactoring of the existing driver and Kconfig to support
   multiple buses.
 - DT binding documentation for the Rocktech RK050HR345-CT106A.
 - The implementation of the SPI-based driver for the Rocktech panel.

Changes in v2:
- Introduce DRM_PANEL_ILITEK_ILI9806E_CORE hidden kconfig option.
- Split core and DSI logic.
- Restore vdd-supply as required for both DSI and SPI types in the
  dt-bindings.
- Dop useless settings in case of rocktech,rk050hr345-ct106a in the
  dt-bindings.

Dario Binacchi (4):
  drm/panel: ilitek-ili9806e: rename to specific DSI driver
  drm/panel: ilitek-ili9806e: split core and DSI logic
  dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
  drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A SPI panel

 .../display/panel/ilitek,ili9806e.yaml        |  38 ++-
 MAINTAINERS                                   |   3 +-
 drivers/gpu/drm/panel/Kconfig                 |  24 +-
 drivers/gpu/drm/panel/Makefile                |   4 +-
 .../drm/panel/panel-ilitek-ili9806e-core.c    | 134 ++++++++
 .../drm/panel/panel-ilitek-ili9806e-core.h    |  15 +
 ...ili9806e.c => panel-ilitek-ili9806e-dsi.c} | 153 +++------
 .../gpu/drm/panel/panel-ilitek-ili9806e-spi.c | 323 ++++++++++++++++++
 8 files changed, 576 insertions(+), 118 deletions(-)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.c
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.h
 rename drivers/gpu/drm/panel/{panel-ilitek-ili9806e.c => panel-ilitek-ili9806e-dsi.c} (82%)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-spi.c

-- 
2.43.0

base-commit: c537e12daeecaecdcd322c56a5f70659d2de7bde
branch: rk050hr345-ct106a

