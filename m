Return-Path: <devicetree+bounces-262082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4K7iOB6qgWn0IQMAu9opvQ
	(envelope-from <devicetree+bounces-262082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 08:56:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E05D5E77
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 08:56:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E049304D918
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 07:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F335A37E310;
	Tue,  3 Feb 2026 07:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="rBqt5AyF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616E639283B
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770105354; cv=none; b=RuWrpg1PGIzVWfLg5ERjGvHo72z3rD58K0S2RL26vZ1x1seaVLvy9p8c5LAERDZwBp0hmiTWytKumFF8eoqafLGvOkeBtUQqq0JBS3p57SgCi7kBdqIFf8pPzJyL9OND22b1nXBtCzixNo6GGEKhzotX2Bi8Ro6HkSaRxyssURo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770105354; c=relaxed/simple;
	bh=q1WzLfeS59W6tm4yorn3MzxFsC/neq9VSDLHgYK0b6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cBlnpmo2J3v9lY8dZPzgwx/VZGza2NInP2clCboxeta2Y5m1FW3fIEecq67Dt3AkLkZSrwlbnuQvPSIMXvFEhJQcZTkyck3zVkHHbHp6RtDFdshOuZKria/x8BVGrxKIcVL+6Sr850Tc6uyieloBR3bYCKctdaYp0gbXocLurTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=rBqt5AyF; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so4368915e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 23:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1770105352; x=1770710152; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vTWgW2Ne0NU0BHFF5J0+gTNjO8f2OCPnH0mZ+gUt7YQ=;
        b=rBqt5AyF0+kK5+J8e7nAfGqT1sMAEExYIYAva3/G7XDt0k/8Th+AAcH53GG+rz1Zyz
         ejOXErTeZMnJXacxj8Lm25i0i3sii+oMuO8gaX9xtdMamH13bHZ8JI1F3zzPYisBJW7r
         Gn0VNh3POjXwNj68nfF9IgWST14mhjlYY/yIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770105352; x=1770710152;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vTWgW2Ne0NU0BHFF5J0+gTNjO8f2OCPnH0mZ+gUt7YQ=;
        b=hFg7SH08q3zjCcCHm3J2zigm3IDscBdWe3a44pZ12Hy0o7azKvjzRgPodHlNPauXcc
         M0Lztl3M21kZTFzm4e23ydVL0Eoy4cRzV7Ih7rT3BgEUqzCyLo1Rv3WXk1XSFfahoyiz
         q4ngN7GbsyQk/G6081eU/D6K9wT6o/6LzcbPCE28aa95wjTSz2LKNI3TzMgLhO+BpE0e
         qr/Uan84gze1MZn5LfiMYqCdyWxZ1df/WtPK2K4ft8X5c7SQrh5N8K2hUVw7lnVQ8LsD
         54IuPo5hURsIBONDhznQ4nGnN31MoLpgzI+bLqJUm/KqErFDjVfGd2mM+ZHVzw6UhdBA
         oICw==
X-Forwarded-Encrypted: i=1; AJvYcCWqFl4zMfo71giBi9BwD3LmCUJOP018QIEI1z6h2jaYqvj10PJ7pBrIZF2ndfE328ohxlvSwsGs9gPY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0FYF/elPxvqnlmU54t70LwMSHFQUqejpkvs/W4AeJbvlHQR15
	Tolpab+DviD08e56VSoUAAtHv5tpTI9fXLpv4ppWk2pzvF1l511U4oshM1N6dqk5uvo=
X-Gm-Gg: AZuq6aJwLx/cyEZglJZf51cAQsKaw04aGWBWkQRvL5y+RmM/yYKonufQfSAJN/SJzvk
	Q1e3Si2KU6TJPJIn0iN+rnOZjngseG5xGEBR2ffux1f7WBPBqW5hc7lNzl9gaFt4gGpEyrjWS7l
	VBkeA4fn84ycFRTJJWCHHxBfNKzsiH9xLA7bg3iJl1S2xwcNJbojUzmCMZx9V6NsESo6nl/Cnzh
	uk+CNg8pUXAriZW/dltiWGBQMyRs0cz4Ib+aNldGDS9WEux1DK6ba+GDDtNkwzOB78xvjz4SkDH
	y/m1TGphxkpfK6Ks26jYSm6FV8ohC6YvN7yj9myOcN/fSj3kPMAeaKsPwNTa4gLiHE+vpIVSH6P
	opPQ1KDdHZ4xFunZe7cE423fZwFBoiEkNnTe8qOWdlZGuBuDrM3VZmKfB07xpNDhRQAAXX8CQCB
	NsoT6lk2Tu36oQVjmfNFDzuo/rSYYk2jITbBGWfmYI8TM1Rk7bGIiNFkMLU47UwVd4WkET5Qd9F
	w+vqW7Fr+y+gOXFJvYwaXV9DRdg91YrYblb0r1OyCfaEWMwIBFpBwBqc3uJTGTeGO+XM6WbMOqc
	LqjRGjc0fSI=
X-Received: by 2002:a05:600c:40c8:b0:47e:e38b:a83 with SMTP id 5b1f17b1804b1-4830513617amr20490595e9.7.1770105351768;
        Mon, 02 Feb 2026 23:55:51 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-95-248-31-95.retail.telecomitalia.it. [95.248.31.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482e267b699sm111939885e9.16.2026.02.02.23.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 23:55:51 -0800 (PST)
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
Subject: [PATCH v3 0/4] drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A support
Date: Tue,  3 Feb 2026 08:54:47 +0100
Message-ID: <20260203075548.14907-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amarulasolutions.com,kernel.org,gmail.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262082-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,amarulasolutions.com:mid,amarulasolutions.com:dkim]
X-Rspamd-Queue-Id: 62E05D5E77
X-Rspamd-Action: no action

This series extends the Ilitek ILI9806E panel driver to support the
Rocktech RK050HR345-CT106A model via SPI.

To achieve this, the current driver (previously restricted to DSI) is
refactored to support both DSI and SPI variants independently.

The series includes:
 - A refactoring of the existing driver and Kconfig to support
   multiple buses.
 - DT binding documentation for the Rocktech RK050HR345-CT106A.
 - The implementation of the SPI-based driver for the Rocktech panel.

Changes in v3:
- Add Reviewed-by tag of Rob Herring

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

base-commit: 6bd9ed02871f22beb0e50690b0c3caf457104f7c
branch: rk050hr345-ct106a

