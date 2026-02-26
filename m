Return-Path: <devicetree+bounces-268665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKPWI84KoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:56:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC911A2FE5
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:56:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 57554305C31A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:47:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848E13815E1;
	Thu, 26 Feb 2026 08:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="qXpAyLQ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EC02E974D
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772095643; cv=none; b=dI8RcSBtbWtNKtu3R0CTDV1uR+6XN+fatf96E5x2rjaty5aPzZ4Vh8iUbDnquX93vX3kYtEW/AccZMnOH2cR3vqpQNTULMpxhEELVRsu1dxEuhJiidPN0BYVytFhKMK8oBI2/zIJPPZT7d9hiL6pj0hPU2SqLoG3Bf/usZoGJGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772095643; c=relaxed/simple;
	bh=Tzi5f59jXVLZh1lv20ptT7SbBIFEMQc6CenuiDzTaSU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GMyTp7NCbBIXGzhkOsYmnnC1zDqvHaBWbl+Md059O+RkkpHhgOqSRRsktPVvZYEehImkEQXfBXyvXWQRuwuKD4m8y9ZVIwpO1Zn1ukBjF84aGOkRP1nOWkr5iD9qzyve9LsmOkoVcAV5Mv1kitRJIkX03EJVno4pnsPG/BsV9Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=qXpAyLQ6; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4806f3fc50bso6613585e9.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 00:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1772095637; x=1772700437; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IqyxMMQJkd6v/hw1eeRmvg0jLRcEn2RGuHnSHQb0Rig=;
        b=qXpAyLQ6Pm4oik5SqbF4bOZ0oQduZh7HYVdGulmVkjw6f9oDT4a4GGZhQGhTpYdMyR
         QBj9kiwTEwopKyZb1Xx5K4Ec2DqflJ3MdBq+s6XhmGXR8rvpB7fSwKE66NKiy5ANoo9O
         J6Ut3GeVJRlhAWU66J2JMe3hX7IW9t/T2ZdEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772095637; x=1772700437;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IqyxMMQJkd6v/hw1eeRmvg0jLRcEn2RGuHnSHQb0Rig=;
        b=MP+fCL64Kbj4tjR9uNUuONXSMpHs0Is4x180ExXSuMEGZUfDS+tqUGsivjXNp54n0u
         saE1KJ9JHjYULkr7tAUJe+dsd4zyQO93vMJUakxZLocsBFRIgS0q12oYptNH0GbQa4qn
         jw28heMeOxOQjL0fJ+x8leM1Gbjrm0gTe+LlEL8aTtPL3+j16cyQ1ryoAdbdaBeujtgx
         3sjcOSgEZzLp3lrbQ6PBw0qeGmW/jNYcIGyf+Yr+nP0OAiF5IJgloPVBf7hQCI1Hmvgv
         JDDe2vraHif7QkQoEXt7oIPANvZ0dHcJERNd9L4wVVtzIooHLY0Dtf2Q/fYrnNH9X4up
         ue0g==
X-Forwarded-Encrypted: i=1; AJvYcCWCiRECjGkpnF457QlLG8KM2xJCxk9+GQL2VuafqLLJ137LeShzwyzuuCxFkIWDOYaHpNnHIJa19O7H@vger.kernel.org
X-Gm-Message-State: AOJu0YyYvaan7KTl8zBoKlSeyXV/s1df32kTfdV0n4eqoUOFqElBUgRx
	GY/8zL+vE5nldMO0de4eYNXho9yLtZSHk20zpvda5HzHzdjVaX+ehA4b4wCXA5UEVDI=
X-Gm-Gg: ATEYQzweb0zG4hsIjg5y6ZOCBPBr1k/izDWJdk7v2hmNTLLdLtPEqBkQ1WYGhOsHb89
	wE4HGq20u4EdI0W1fbJhlLPYVh2cZFIXDRiU5uqLbXjZLmiTLr1QMI8Q921SatzpcJ62a00Doj6
	3+1Yy43IUxM2iGOmaIQm1NR8c139mj+T537uOwG4AEAl/wP/8a24Yuct78urFytJ5zRWlzPmn0q
	3JugANPCeL2eDUtRW3/3SqwRIjSvvo1jGwexuJ8/4VlV8BCbfyEGTNxWlCJ4wNxilSVRmkkHQCD
	ve2BrPxMdnV8bocbUkXB7gaCo/91qxOpGQ+Ul5OYHii/7z3XkVZk631MTgAJI100S9ZOzECN95B
	osAsk4PDmMEMHF+ilb8ABj2oKFV5Es1I8TG9jWXrTlMMwNTbX18KbjaImEvOTu5Z8mHUzDtc2cC
	8grbPe1Lzqis+gJcccS8P2gUWMbxN47VZd+yWmKPVtsz8RrhvZ8aNSumNd7569qE7XUNleEZAMb
	vImFbHVubHtR2Oh5+pLYp0D/Y8601wS2Ip7DAoYr87B2oY7b6IoFFCgY2ekV6luoOz+YPILiVVM
	XtZL/0FYeOoPPYT/hftqZG0i
X-Received: by 2002:a05:600c:3b8c:b0:483:43da:6c87 with SMTP id 5b1f17b1804b1-483c21aa451mr57326815e9.33.1772095636914;
        Thu, 26 Feb 2026 00:47:16 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-95-248-31-95.retail.telecomitalia.it. [95.248.31.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb85c58sm31581075e9.9.2026.02.26.00.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 00:47:16 -0800 (PST)
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
Subject: [RESEND PATCH v4 0/4] drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A support
Date: Thu, 26 Feb 2026 09:46:59 +0100
Message-ID: <20260226084713.2566672-1-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amarulasolutions.com,kernel.org,gmail.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268665-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.988];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,amarulasolutions.com:mid,amarulasolutions.com:dkim]
X-Rspamd-Queue-Id: AEC911A2FE5
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

Changes in v4:
- Fix "WARNING: unmet direct dependencies detected for
  DRM_PANEL_ILITEK_ILI9806E_CORE" reported by kernel test robot

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
 drivers/gpu/drm/panel/Kconfig                 |  22 +-
 drivers/gpu/drm/panel/Makefile                |   4 +-
 .../drm/panel/panel-ilitek-ili9806e-core.c    | 134 ++++++++
 .../drm/panel/panel-ilitek-ili9806e-core.h    |  15 +
 ...ili9806e.c => panel-ilitek-ili9806e-dsi.c} | 153 +++------
 .../gpu/drm/panel/panel-ilitek-ili9806e-spi.c | 323 ++++++++++++++++++
 8 files changed, 576 insertions(+), 116 deletions(-)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.c
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.h
 rename drivers/gpu/drm/panel/{panel-ilitek-ili9806e.c => panel-ilitek-ili9806e-dsi.c} (82%)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-spi.c

-- 
2.43.0

base-commit: f4d0ec0aa20d49f09dc01d82894ce80d72de0560
branch: rk050hr345-ct106a

