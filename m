Return-Path: <devicetree+bounces-94994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B36957795
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 00:38:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97E04285DFB
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 22:38:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2091B1DD3A5;
	Mon, 19 Aug 2024 22:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RkH99alf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4786EEEA5
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 22:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724107120; cv=none; b=SDX1T5rQzO1gQtYy7gMVVfhvUlfYXhyoYGTUxz0fnLnDlT+pksbGGhgMqrOAIz6Xqegiir6EvNvd3R6YFsE83J/OJzd1gsfBnpjX+sRp7x0xqFXV9/3whIMQ0CMXnqw3GD8iM1/5t++yWc6spvwsfekgdm4yW6cBCpIyvvnE8z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724107120; c=relaxed/simple;
	bh=QsFhJr+Mi50WviHZp89d1dhCotm3INj2CPs+HkvFqHg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cA4Vl+ehDcVCoBxo6BUH2IaUzKCHLGOw7nSvHSkog+Zs0PzuT3CB47VaN16xUDA6kjv/6ITjIajq46dcbe0Oelfky79kwEjzggLE2xW+7LDrd2fSLBA3RxK8XiJXucMi4D2KT6R0vb+L0jEJzad+aSIdOMg08YntdhusPoGLzqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RkH99alf; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-26ff21d82e4so2513005fac.2
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 15:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724107117; x=1724711917; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=egAdoVbV7ERufO80VgquGHc5WhyUKfKkzhFmhTHzm2Y=;
        b=RkH99alf0SHf+1yqzid/868Gh2P9NZGUbEzyfDkXBcL30oXNNZbdPR3rU8mFSxVQyT
         nASf5Y2zO8xsaMQGvSiuKzCGoWaiQkSeu9EhyjYhUaWnhRBKk92wz2nXos+Jy/byKwh5
         aNCyNp3GtUvH4a8aAc+qXJVdv51FCvIicUGW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724107117; x=1724711917;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=egAdoVbV7ERufO80VgquGHc5WhyUKfKkzhFmhTHzm2Y=;
        b=mW7KQCj0BQYYrr/hQL4sTePmUlQ7LbdEeMDOrM/IC2/6dxCzlBO3ei0FlD/6Xht7h7
         NQ315xWtbjliMEeor030BC9ZItHqlo0GLsydh9+yiK9MlH34I7thnnJLWmozV0E8dLVQ
         t/7Y2T516HPw84pX1FuCCR3PqnN3boL2bnrLssXzW+h6t+8/3XoYG1rb+z2ScCgi167C
         7aqtR6GBxoRq2TcZHX41hr1lnK3C6iplK1Kr5ycfSwyf3CQusctO29UctxZAU3c4WHni
         IilbT3MF5Bdpj1z4TiGBA3ViZWj3qrUu7XAGzkgY3npiYd8VKXSLcys0bJaG6d4n23qI
         Stow==
X-Forwarded-Encrypted: i=1; AJvYcCUtH8iwWBKqXvUsxRJEnkMTBmYvIwdggisjjWT7qmOhd9tE+XXTPCN0FOAzYyvVE1WEK0B+Xg1EmPBH@vger.kernel.org
X-Gm-Message-State: AOJu0YxOiYpIgRm1skqXmQw5ToI/f8UAonXodZpvj/EbJicNv9xxm4vq
	9j9J6Gn72S7AHY8DuVeOeDZWePDgVOh9dKluSZeKrVobTCoSItPSz4+nSXaAkQ==
X-Google-Smtp-Source: AGHT+IFAcbhHFe8aOSpI2piH+wrMiBNFMeaVyEVhtEX5wNgd3YUCRbcPot5Saf5/lMntwLHP0R5X3g==
X-Received: by 2002:a05:6871:723:b0:25e:fb:af8c with SMTP id 586e51a60fabf-2708136ae73mr506166fac.18.1724107117189;
        Mon, 19 Aug 2024 15:38:37 -0700 (PDT)
Received: from localhost (210.73.125.34.bc.googleusercontent.com. [34.125.73.210])
        by smtp.gmail.com with UTF8SMTPSA id 41be03b00d2f7-7cc41530bc0sm2722444a12.63.2024.08.19.15.38.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 15:38:36 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: chrome-platform@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	devicetree@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Benson Leung <bleung@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	Guenter Roeck <groeck@chromium.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lee Jones <lee@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Prashant Malani <pmalani@chromium.org>,
	Robert Foss <rfoss@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Ivan Orlov <ivan.orlov0322@gmail.com>,
	linux-acpi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 00/17] platform/chrome: Add DT USB/DP muxing/topology support
Date: Mon, 19 Aug 2024 15:38:14 -0700
Message-ID: <20240819223834.2049862-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.46.0.184.g6999bdac58-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for fully describing the USB/DP topology on
ChromeOS Trogdor devices in DT. Trogdor devices have a single DP phy in
the AP that is muxed to one of two usb type-c connectors depending on
which port asserts HPD first to the EC. We'd like to know which port is
connected to an external monitor to provide a better experience to the
user about things like which type-c port is displaying DP or which
type-c hub is acting up, etc. Describing the connection all the way from
the source to the connector will allow us to do this.

DRM core patches: These are used to implement lane assignment for DP
altmode configurations through the drm_bridge code. The typec code will
use this to tell the DP phy how many lanes of DP to drive and which
lanes to drive out to the USB type-c connector. Adding support for lane
assignment allows us to implement DP muxing as well, physically
splitting the DP lanes on the DP phy so that hardware doesn't have to
use an analog mux to steer two DP lanes to one or the other type-c port.

Type-c core patches: These add some devm helpers so that the next
patches in the series can skip open-coding devres helpers for
unregistering typec switches and muxes.

DRM aux hpd patches: These implement an auxiliary device for USB type-c
DP alternate mode. I took Dmitry's suggestion and moved the code that
does the remapping into this driver. The existing hpd bridge is wrapped
so as to avoid changing the current users. It also registers a typec mux
and switch (if applicable) so that the DP altmode pin assignment and
port orientation can be passed to the switch callbacks. We'll still need
to implement logic in the phy layer to handle configuration.

Cros EC typec patches: This ties together everything that comes before it in
this series. The EC typec driver registers the drm_dp_typec_bridge that
can signal HPD from the type-c connector through the bridge chain, mux
the DP phy in software so that we don't have to use an analog mux, and
implement orientation control for boards like Kukui that directly
connect the DP phy to the type-c port, necessitating lane assignment to
flip the lanes to match the cable orientation.

Changes from v2: https://lore.kernel.org/r/20240815003417.1175506-1-swboyd@chromium.org
 * Move most of the binding bits to usb-switch.yaml
 * Move google,cros-ec-typec binding to usb/
 * Implement mode-switch and orientation-switch typec controls in
   drm_dp_typec_bridge driver
 * Get rid of public APIs that would be used to assign pins or
   orientation of the port
 * Add devm helpers for typec mux and switch registration
 * Add a way to match fwnodes while walking the graph based on the
   endpoint

Changes from v1: https://lore.kernel.org/r/20240210070934.2549994-1-swboyd@chromium.org
 * Too many to count!
 * Split out the DRM bits into this series
 * Moved the logic into dp-aux-hpd bridge driver
 * Drive the bridge from cros_ec_typec driver instead of globbing onto
   the ACPI centric cros-typec-switch driver
 * During that process drop a lot of patches that aren't needed anymore
 * Move the DT graph and other properties to the cros-ec-typec binding
 * Skip mode-switch/orientation-switch properties because we're not
   registering typec structs anymore

Stephen Boyd (17):
  drm/atomic-helper: Introduce lane remapping support to bridges
  drm/bridge: Verify lane assignment is going to work during
    atomic_check
  usb: typec: Stub out typec_switch APIs when CONFIG_TYPEC=n
  usb: typec: Add device managed typec_mux_register()
  usb: typec: Add device managed typec_switch_register()
  drm/bridge: aux-hpd: Support USB Type-C DP altmodes via DRM lane
    assignment
  drm/bridge: dp_typec: Support USB Type-C orientation
  drm/bridge: dp_typec: Add "no-hpd" support
  drm/bridge: dp_typec: Allow users to hook hpd notify path
  device property: Add remote endpoint to devcon matcher
  dt-bindings: usb-switch: Extract endpoints to defs
  dt-bindings: usb-switch: Extend for DisplayPort altmode
  dt-bindings: Move google,cros-ec-typec binding to usb
  dt-bindings: usb: Add ports to google,cros-ec-typec for DP altmode
  platform/chrome: cros_ec_typec: Add support for signaling DP HPD via
    drm_bridge
  platform/chrome: cros_ec_typec: Support DP muxing
  platform/chrome: cros_ec_typec: Handle lack of HPD information

 .../bindings/chrome/google,cros-ec-typec.yaml |  66 --
 .../bindings/mfd/google,cros-ec.yaml          |   7 +-
 .../bindings/usb/google,cros-ec-typec.yaml    | 295 +++++++++
 .../devicetree/bindings/usb/usb-switch.yaml   | 164 ++++-
 drivers/base/property.c                       |   7 +-
 drivers/gpu/drm/bridge/aux-hpd-bridge.c       | 564 +++++++++++++++++-
 drivers/gpu/drm/drm_atomic_state_helper.c     |   2 +
 drivers/gpu/drm/drm_bridge.c                  |  50 ++
 drivers/platform/chrome/Kconfig               |   1 +
 drivers/platform/chrome/cros_ec_typec.c       | 149 ++++-
 drivers/platform/chrome/cros_ec_typec.h       |   3 +
 drivers/usb/roles/class.c                     |   4 +-
 drivers/usb/typec/mux.c                       |  72 +++
 drivers/usb/typec/retimer.c                   |   7 +-
 include/drm/bridge/aux-bridge.h               |  26 +
 include/drm/drm_atomic.h                      |  31 +
 include/drm/drm_bridge.h                      |   4 +
 include/linux/property.h                      |   5 +-
 include/linux/usb/typec_mux.h                 |  58 +-
 19 files changed, 1408 insertions(+), 107 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/google,cros-ec-typec.yaml


base-commit: 8400291e289ee6b2bf9779ff1c83a291501f017b
-- 
https://chromeos.dev


