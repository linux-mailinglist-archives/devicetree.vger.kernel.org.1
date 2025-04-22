Return-Path: <devicetree+bounces-169250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1CCA9623B
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 10:44:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6589B17FC40
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 08:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 804462957CF;
	Tue, 22 Apr 2025 08:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kGFAXBPf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7132957DE
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 08:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745310611; cv=none; b=pICIFpAKF2SH3ulKXm8+z3hH2YMqg9OQgmcXr0PVUhRRoSGYBryKzVAnARI7gnYvfADYEmXJ8ydXKg3UDbzJWmKJiLn1TwtyTgz6rntvtXbtBLe2DJNhegPrH24b3mKuo4gkk2Ot5HPNN6vDxDCSk/xpAorDtZltn0588mhlnZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745310611; c=relaxed/simple;
	bh=wpLvYJ8h+2gdD8KlovfRp/KEYqpjX5R39eBimYEADQ8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NURcPUIVekDqct+k19nQoufob1R+czVOjk7vllQbn1Y4ddfuTykz+Mze2eWQ5okVR0GXKG+2iKFxHg3aT/+aOxCfX7wRhbd2SFwkuEwc4yOCqMp/lRd+P9r2VOaRgnKE0sGGxpWxEb58hgvAp+l1bIQZdXN+0csG9+kMoMiirRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kGFAXBPf; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-736c277331eso5083330b3a.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 01:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745310609; x=1745915409; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=suVeEV15xn1TJzAA78ITbkuezXgamtF49ziPRPaA7d4=;
        b=kGFAXBPfkCTyYBf4lAmBXiDYLKXdHMyuQGbr3NYT7kRjdMqCFpVt+3K+V4aq6r/lDb
         V9zyb9ptPR5RVeBg6Gy63t7rnVLay1vAU6lE1Gcj6v6vI/T3uc6oSMpdMnmn6i/YxYQU
         0Llf+EzBbXiG08xRrcbbkDpPhzSdnIlV0A0/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745310609; x=1745915409;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=suVeEV15xn1TJzAA78ITbkuezXgamtF49ziPRPaA7d4=;
        b=ohS0txqrPto4Zqfkervhn6SoUNTlo4yFGT1oPHFTGrhfUoQuqHNb2NMI0F6I51L59E
         dZlghNKjTgRx0tnbDHWNpoqM6i6rcLFNvw0xxxXy5OgwxyW8lk9o8CEda0nerlZMoRo9
         b2AT8YKLhTrmU0q4C7Z8K/clL6EttMXGNUUKOxh7t0gQdvzNwUvAj7AufBJWNIdYz9J/
         odwKOFk2s3lsPXzqloFYSz2c0SqmgQ4RVOgj266ihQViGkoDY0Izd5KpFjNMkL9rW0Ww
         HTELbuU15vsz3AMhUBzc/KxK9VfA/LS9lDakxMMZ2P0MpeYb6/XxBq6NoCjd0WRfUvj1
         4oKQ==
X-Gm-Message-State: AOJu0YyIU+0zOtDjookGQlvmbIeWhwofCI+esF3bnid0SpuVjqJd+OS9
	NHpIdBVJaBSV1oCFSceGQ4Aes+mGmzTe6etZwdN018UwVO8BbQStP0GGq2rp7g==
X-Gm-Gg: ASbGncsP+paHWAkyErNX3XyN0COLPyVhNa4EfGFeptVBWNnq/qxU1EZDU1oZ0xsRdTf
	/0ZOTREBJ5Zh4oWka7XXcfUJpyTA79ADZ1yJsG1N/el+zqh0GZT3h0OUHd4caGzwz8orKavt/ck
	ZdEPaW1wJf/rWja23mcdQ28FoHV2SGXDB1f694IgV3bfkjRQM3lTjtgsddOV79xiJa1Ny6WCXZ4
	RmoqIwhO22/+mJIKSyvqKeA+2cujDm6/f5WxbXkFUtPHd+GkjZ5d44VhGnORo7aa+IqE21bP1nu
	nTcN5rKYijmkCpYp6OwKgQOduLdy1kFRKKPbCinlJoOnHn2KIwPbtrchjfMYuKL0
X-Google-Smtp-Source: AGHT+IEU6I61PKdSk66ALyW1SMKYEj8C6WoYl+I3tAab8Ss6BHWGapI8IPOL/MGB4xnrLL3uRQKw6g==
X-Received: by 2002:aa7:88d2:0:b0:73c:3f2e:5df5 with SMTP id d2e1a72fcca58-73dc1b5a716mr18751882b3a.9.1745310608966;
        Tue, 22 Apr 2025 01:30:08 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:90d6:56e4:9d90:9df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8e0be0sm7993576b3a.49.2025.04.22.01.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 01:30:08 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Kaehlcke <mka@chromium.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>,
	Stephen Boyd <swboyd@chromium.org>,
	linux-usb@vger.kernel.org
Subject: [PATCH v3 0/4] Introduce usb-hub.yaml binding and add support for Parade PS5511
Date: Tue, 22 Apr 2025 16:28:26 +0800
Message-ID: <20250422082957.2058229-1-treapking@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit


This series introduces usb-hub.yaml for on-board USB hubs, and use it for
the newly-added Parade PS5511 binding and the existing Realtek RTS5411
hub controller.

Also add support for Parade PS5511 in onboard_usb_dev.c

Patch 1 introduces usb-hub.yaml as the bindings for on-board USB hubs
Patch 2 adds the binding for Parade PS5511
Patch 3 modifies realtek,rts5411.yaml to adapt usb-hub.yaml
Patch 4 adds the support for Parade PS5511 in onboard_usb_dev.c

Link to v1: https://lore.kernel.org/all/20250328082950.1473406-1-treapking@chromium.org/
Link to v2: https://lore.kernel.org/all/20250415094227.3629916-1-treapking@chromium.org/


Changes in v3:
- Remove redundant schemas
- Update schemas for downstream ports and devices for ps5511 and rts5411

Changes in v2:
- Introduce usb-hub.yaml
- Modify parade,ps5511 and realtek,rts5411 to use usb-hub.yaml
- Minor fixes on parade,ps5511.yaml

Pin-yen Lin (4):
  dt-bindings: usb: Introduce usb-hub.yaml
  dt-bindings: usb: Add binding for PS5511 hub controller
  dt-bindings: usb: realtek,rts5411: Adapt usb-hub.yaml
  usb: misc: onboard_usb_dev: Add Parade PS5511 hub support

 .../bindings/usb/parade,ps5511.yaml           | 108 ++++++++++++++++++
 .../bindings/usb/realtek,rts5411.yaml         |  52 +++------
 .../devicetree/bindings/usb/usb-hub.yaml      |  84 ++++++++++++++
 drivers/usb/misc/onboard_usb_dev.c            |   3 +
 drivers/usb/misc/onboard_usb_dev.h            |   9 ++
 5 files changed, 217 insertions(+), 39 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/parade,ps5511.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/usb-hub.yaml

-- 
2.49.0.805.g082f7c87e0-goog


