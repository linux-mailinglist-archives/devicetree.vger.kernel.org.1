Return-Path: <devicetree+bounces-45637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4F686294C
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 07:21:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9D691C20A68
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 06:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BA699454;
	Sun, 25 Feb 2024 06:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="B+0drkF1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1AA49445
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 06:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708842061; cv=none; b=BPA+RNQRDhvisCw3ghM3+Q8JnsvW5JKecHALh9cfwaju3t8g46m5GwO/QO9igYeqefVoD9TworGm7oVX8NtiJMh5DXzP0m3UwH6TIhMaMzyojuK40kdPneJJn+QoI28VZcADwWHVDocwtEF/quW8P6OjASmrBaFeyZNTBm/VAd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708842061; c=relaxed/simple;
	bh=+rpL18yqRI3c4hJsKWPVZWuvuh21cVvrTCAU3cBZ4+0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bSuzZR1A3+5zBO9lR90pwcG9JrHBojW4fhw14KyBSWe3xTO+QxwuJgvFwfvpXVIYKqjxTvRbhEYYOnTeEwfxE/vd6iWWnMNtagolZQPbRiKFpukOiLc37hQLW/AP4DIcnJgTirpY5leeMgESUnufDkIyCSKYvoxZ1Hp/3CBsDs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=B+0drkF1; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 670316058D;
	Sun, 25 Feb 2024 06:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708842058;
	bh=+rpL18yqRI3c4hJsKWPVZWuvuh21cVvrTCAU3cBZ4+0=;
	h=From:To:Cc:Subject:Date:From;
	b=B+0drkF15rcz63t4lnja7KW1fJg76X9yTxS2X5FEA9nH6efJytcqR44mACIl86/qx
	 gwZhuJd62cxPXACQ2mAJMTHICssme7KEckBO93sZ+ZIHJ3KOAnCq/gepHueikDW4zV
	 rvhrLoSv2vAByXrF6whx7ILFu9WiCH07LYGoAk6O2g9f7HYMO8G//SZVgJboXyOfKt
	 SfEqtLKBKXixYCKcOJ8uoYJvk3G6OgM5QhrKrCTjX3lHxGY1CyTgCAfXsS67Rgl01V
	 N/gcDAyLyYOpgTNC8qMSL8tiosugQ7NrQEwF6yNc8IVWUwa1RllFUDyz0uWS8KAmjH
	 lYSZrZ5zRrclQ==
From: Tony Lindgren <tony@atomide.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simha BN <simhavcs@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 00/10] Improvments for tc358775 with support for tc358765
Date: Sun, 25 Feb 2024 08:19:29 +0200
Message-ID: <20240225062008.33191-1-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

Here are v5 patches to improve tc358775 driver and add support for
tc358765.

Regards,

Tony

Changes since v4:
- Update devicetree binding to move allOf after required block
  as noted by Krzysztof

Changes since v3:
- Fixed dts binding warnings

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

 .../display/bridge/toshiba,tc358775.yaml      | 39 ++++++--
 drivers/gpu/drm/bridge/tc358775.c             | 98 ++++++++++++-------
 2 files changed, 94 insertions(+), 43 deletions(-)

-- 
2.43.1

