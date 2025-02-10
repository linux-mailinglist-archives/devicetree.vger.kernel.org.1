Return-Path: <devicetree+bounces-144687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECC8A2EDB4
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 14:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DCC8166C6C
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 13:26:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64C5B22D4C2;
	Mon, 10 Feb 2025 13:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="dmik5K9W"
X-Original-To: devicetree@vger.kernel.org
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF3522759E;
	Mon, 10 Feb 2025 13:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739193995; cv=none; b=Y9DNrLsvEXPRwO66otfeHKSTL4ljfs76OPygH8vyfLp763pcnFcWFtArkTHh32bP99KomNxaXnWdiHwRyVQovta2i9Aefzpu5sqhIQovHrDdCaQ/p2XdFbi9KsgjgsD20LsO4vneyRYZQqfwvhkU/mHnLHtjSwiz9QK0SLffQvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739193995; c=relaxed/simple;
	bh=ARZcSOGlbi4TtsWGtonbOVOiVOGsz2/FneH9lwOR+eQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=nGfrQ59kMRWWDXJ/tMEK63iHqSboRjQv4nFwP8QIp+FPt1c2V9U1nSuEQnno4hSca4PAyDII1C2Z0uYCU9S93YvhS127y6G+sgsMAF2WidSWPTSUTmKIU3xgkFTiil7NQhmNjidIe80GnKJYa/3C/WPePtu7QaDBYgLKlvma+9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=dmik5K9W; arc=none smtp.client-ip=217.70.183.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPA id 8DC88204DB;
	Mon, 10 Feb 2025 13:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1739193985;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=NRhOS8sOlpVsUYb5XVfm/t0X9liLh/hHnaqEK22vnb4=;
	b=dmik5K9W7cSqp13sEv8rfY2LLmZwenKo+xjmCW3HdNL6ft0M4erCgl+EcamI7VuuUPEVva
	R3TDL3cJRmqOtQ5ldViLX0hhSnaeFp3tC8JKZkXpIVmgbnx1L3YQF836EHo/YObPjcmE4G
	j/mix2j8dErKpGkIS10ZD+srj2ayLpuf5NloCmjkFZMWEuVOoUEPLvYMDalJvI+G4KAEQN
	R8LvhfKLnoNJyB3rrPx6hjc+HJ19ewhcV85Udunfg26qcIqys7oLyPzC9Ilj6JkKSDfDse
	keku70rc9aQLjdVCcs9j3TetRsVkbm0AzKFjCnoZWgbbQX48Gn03JS7sQEyLeQ==
From: Herve Codina <herve.codina@bootlin.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	=?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>,
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
	Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [PATCH v6 0/4] Add support for errors recovery in the TI SN65DSI83 bridge driver
Date: Mon, 10 Feb 2025 14:26:15 +0100
Message-ID: <20250210132620.42263-1-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdefkedukecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvefufffkofggtgfgsehtkeertdertdejnecuhfhrohhmpefjvghrvhgvucevohguihhnrgcuoehhvghrvhgvrdgtohguihhnrgessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepleetudffledtvddtffegudfgjeffgeegkeehjeeigffgieevhfekffehheehieeunecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepledtrdekledrudeifedruddvjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeeltddrkeelrdduieefrdduvdejpdhhvghloheplhhotggrlhhhohhsthdrlhhotggrlhguohhmrghinhdpmhgrihhlfhhrohhmpehhvghrvhgvrdgtohguihhnrgessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepvdeipdhrtghpthhtoheprghlvgigrghnuggvrhdrshhtvghinhesvgifrdhtqhdqghhrohhuphdrtghomhdprhgtphhtthhopegrnhgurhiivghjrdhhrghjuggrsehinhhtvghlrdgtohhmpdhrtghpthhtohepnhgvihhlrdgrrhhmshhtrhhonhhgsehlihhnrghrohdrohhrghdprhgtphhtthhopehrfhhoshhssehkvghrnhgvlhdro
 hhrghdprhgtphhtthhopefnrghurhgvnhhtrdhpihhntghhrghrthesihguvggrshhonhgsohgrrhgurdgtohhmpdhrtghpthhtohepjhhonhgrsheskhifihgsohhordhsvgdprhgtphhtthhopehjvghrnhgvjhdrshhkrhgrsggvtgesghhmrghilhdrtghomhdprhgtphhtthhopegrihhrlhhivggusehgmhgrihhlrdgtohhm
X-GND-Sasl: herve.codina@bootlin.com

Hi,

Usually the TI SN65DSI83 recovers from error by itself but during ESD
tests, we have some cases where the TI SN65DSI83 didn't recover.

In order to handle those cases, this series adds support for a recovery
mechanism.

Compare to the previous iteration, this v6 series fixes a NULL
pointer dereference.

Best regards,
Hervé Codina

Changes v5 -> v6
  v5: https://lore.kernel.org/lkml/20250203161607.223731-1-herve.codina@bootlin.com/

  - Patch 1:
    No change

  - Patch 2
    Add 'Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>'
    Add 'Reviewed-by: Maxime Ripard <mripard@kernel.org>'

  - Patch 3
    Add 'Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>'
    Add 'Reviewed-by: Maxime Ripard <mripard@kernel.org>'

  - Patch 4
    Add 'Reviewed-by: Maxime Ripard <mripard@kernel.org>'
    Fix a NULL pointer dereference reported by Alexander Stein in v5.
    Mode the dev_warn() signaling the pipe reset closer to the pipe
    reset operation itfelf.

Changes v4 -> v5
  v4: https://lore.kernel.org/lkml/20250203145824.155869-1-herve.codina@bootlin.com/

  Exact same changes as the v4. The v4 series doesn't apply on top of
  v6.14-rc1 and should be simply ignore.
  This v5 series is the v4 fixed to apply on top of v6.14-rc1.

Changes v3 -> v4
  v3: https://lore.kernel.org/lkml/20250108101907.410456-1-herve.codina@bootlin.com/

  - Patch 1:
    No changes

  - Patch 2 and 3 (patch 2 in v3):
    Rename the helper to drm_atomic_helper_reset_crtc()
    Split the patch available in v3 in two patches.

  - Patch 4 (patch 3 in v3):
    Take into account commit d2b8c6d549570 ("drm/bridge: ti-sn65dsi83:
    Add ti,lvds-vod-swing optional properties"), available in v6.14-rc1.
    Disable irq when a fault is detected and re-enable it after the pipe
    reset.
    Remove state duplication and use bridge.encoder->crtc directly

Changes v2 -> v3
  v2: https://lore.kernel.org/lkml/20241217143216.658461-1-herve.codina@bootlin.com/

  - Patch 1:
    No changes

  - Patch 2 (new in v3)
    Move reset_pipe() from VC4 HDMI driver to a new atomic helper

  - Patch 3
    Use the new drm_atomic_helper_reset_pipe()

  Patch removed in v3
    - Patch 2 in v2
      No more needed

Changes v1 -> v2
  v1: https://lore.kernel.org/lkml/20241024095539.1637280-1-herve.codina@bootlin.com/

  - Patch 1:
    Add 'Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>'
    Add 'Acked-by: Conor Dooley <conor.dooley@microchip.com>'

  - Patch 2 (new patch in v2)
    Introduce drm_atomic_helper_disable_connector()

  - Patch 3 (patch 2 in v1)
    Reset the output path instead of the full pipeline.
    Update and add more information related to the bridge in commit log.

Herve Codina (4):
  dt-bindings: display: bridge: sn65dsi83: Add interrupt
  drm/atomic-helper: Introduce drm_atomic_helper_reset_crtc()
  drm/vc4: hdmi: Use drm_atomic_helper_reset_crtc()
  drm: bridge: ti-sn65dsi83: Add error recovery mechanism

 .../bindings/display/bridge/ti,sn65dsi83.yaml |   3 +
 drivers/gpu/drm/bridge/ti-sn65dsi83.c         | 142 ++++++++++++++++++
 drivers/gpu/drm/drm_atomic_helper.c           |  41 +++++
 drivers/gpu/drm/vc4/vc4_hdmi.c                |  30 +---
 include/drm/drm_atomic_helper.h               |   2 +
 5 files changed, 189 insertions(+), 29 deletions(-)

-- 
2.48.1


