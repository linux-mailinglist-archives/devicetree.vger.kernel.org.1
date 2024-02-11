Return-Path: <devicetree+bounces-40445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B7E850873
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 10:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE6631F21927
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 09:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E94E59168;
	Sun, 11 Feb 2024 09:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="iEmVN+6y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6584959141
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 09:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707645181; cv=none; b=Sw2CmvwDLBLQ2N5Tjx/0NJ7K670z+UaJnuPDOf4gyiU3VtCmu/UKkXyq0/xBIXPq9IEjP/LZK+wX7idhgqJFlFh3GNTZaDt2P686uWvyanny1D4yNERd1IOWz9U0QNTo5n2fignmCu8jMkKPbPVKDNBZXpFPiQ9zSxuGqOK66D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707645181; c=relaxed/simple;
	bh=2tmLXp+7aThXLcoyLP6d9CCh9eBdQKl2YmMBFlXEZss=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=byh6hgFzfGERP/yUSsO16hT+AJESHQiP7jX8h2cLxXL1pycNNCHSfu9cuESZT+43/hyyoPZr5SrqOsQGBkD7R2t5UvcddpaGZY5DnupuH3EwyRs+0VONZx9LE6y9kc3yAooCqGc0teARcuCTzLJwUZ7475ysvoB3K1GEhtP9uhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=iEmVN+6y; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id E340D6049B;
	Sun, 11 Feb 2024 09:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707645172;
	bh=2tmLXp+7aThXLcoyLP6d9CCh9eBdQKl2YmMBFlXEZss=;
	h=From:To:Cc:Subject:Date:From;
	b=iEmVN+6yiec3LzZrePcBZPFMwwbM1NKh5kwy499Ah5Kr3/ZxdB+hDxBvP9fDl036N
	 GkarL7eaFYMNHfvkPnJYpXY8hj020vn4GosEvk16ZmPHQIz22WWjwIh/7CZSufcN8i
	 Skh9uI/Sk65GYk27XufuvtGw5gOjCLIgiUwd/Lcdw1YBDz+QQ+nuUQjCFah86omZNo
	 US9FkLq2Es+Fd84dEWPSnkLUs1JtzvxyS0Fx3thkHrafeOlcZXqHAdSfh5/LA68zRf
	 kYkNvpnUv9VG6kd9oNww2cWV2YagnjB2gVYLfTldtW26WOIpvLQTBk6YTxWIxI+QZq
	 bFsobr552at3A==
From: Tony Lindgren <tony@atomide.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simha BN <simhavcs@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 00/10] Improvments for tc358775 with support for tc358765
Date: Sun, 11 Feb 2024 11:51:05 +0200
Message-ID: <20240211095144.2589-1-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

Here are v3 patches to improve tc358775 driver and add support for
tc358765.

Regards,

Tony

Changes since v2:

- Only make stby-gpios optional for tc358775, and disallow them for
  tc358765 as noted by Krzysztof

- Added additionalProperties: false for port-base as noted by Krzysztof

- Updated patch description for why there can be a data-lanes property
  for both the DSI host and the bridge as noted by Dmitry

- Improved the old dtb data-lanes warning as suggested by Michael

- Fix warning on casting of_device_get_match_data() as noted by the
  kernel test robot


Changes since v1:

- After a brief offline discussion with Michael, merge series with
  Michael's patch series to make stby gpio and supplies optional as they
  may be hardwired

- Use Michael's better patch for the jeida timings change

- Parse lanes on the bridge side like other bridge devices do, and if not
  found, also parse on the DSI host side and warn

Michael Walle (3):
  dt-bindings: display: bridge: tc358775: make stby gpio optional
  drm/bridge: tc358775: fix support for jeida-18 and jeida-24
  drm/bridge: tc358775: make standby GPIO optional

Tony Lindgren (7):
  dt-bindings: display: bridge: tc358775: Add data-lanes
  dt-bindings: display: bridge: tc358775: Add support for tc358765
  drm/bridge: tc358775: Get bridge data lanes instead of the DSI host
    lanes
  drm/bridge: tc358775: Add burst and low-power modes
  drm/bridge: tc358775: Enable pre_enable_prev_first flag
  drm/bridge: tc358775: Add support for tc358765
  drm/bridge: tc358775: Configure hs_rate and lp_rate

 .../display/bridge/toshiba,tc358775.yaml      | 38 +++++--
 drivers/gpu/drm/bridge/tc358775.c             | 98 ++++++++++++-------
 2 files changed, 93 insertions(+), 43 deletions(-)

-- 
2.43.0

