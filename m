Return-Path: <devicetree+bounces-136533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E40ACA057E4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:19:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9949B1885A87
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 372191A76BC;
	Wed,  8 Jan 2025 10:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="fML3M+Zl"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A719D20B20;
	Wed,  8 Jan 2025 10:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736331565; cv=none; b=VLiiQaBaeyon6LwBwpiERKduxyNasCRpsQ3ETNPuvqm+c3b4V0k9YOlLgEJjNGqiDluZjxroLk1+CblYml5rFKr540bHPb9GMf0nt1ft7Sk+Jm0CBNdL9nt9Y+yo3lK2uHBP7+POORKdZIzGvbcRFbEWnim1WkPeFj+U0GLGOMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736331565; c=relaxed/simple;
	bh=86rW5wZY5wP5+GsWOhajdWGnNLl8Gdx9lQg3mYLczlc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=cG+D8O6DM3DNZEIu3b6nbtNPScQi5qK+QJd/vlUPrZTCqgLMr5NyRQ5Q9ZGRKcKLlzazvy6dcC1cHAbZfGvNVxYhtOxODqkpJKCTxnWbAQ3Qa3uG1vRSQoaRam0eBDY9jDhFjwe3OjUDrByMm4KbyoAj6O3YB4zZ4Xyvjq22WpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=fML3M+Zl; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPA id 3A385FF80A;
	Wed,  8 Jan 2025 10:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736331560;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ALgIVfCLQTLBbTDsLiWU4YPVyURu8kYumWn08CK6dJc=;
	b=fML3M+ZlOxI6Ga49iJgvjKR0kLBARcGGCbqomOEHZptqddWFt2bjLleDkhLuUsuYahExU7
	fIvmrtExY9La4Uau2e006eYRyWwPQdorb+TPj2A2M0b2zKdSOk64MihkWeUwfi4kw1ZE3A
	vGc/clakM/4JzqTreTXlwMsyKp0801vB/FEnd7JpRD6NoDdYQLHq2MQcy+e//Eoo29HxgQ
	8nqdCZ1tLHX6wzNw5yekfJmpdiVbSou0+Y+zPWgtBHNAAJI7nu6hzEEOWb1PvJEaEdfQME
	aIY52OUcM5AWFgVhwZtYPWkj0QkBdDgi4j8FjhAVPTJ/4mk5UW1c7O1ttu3seQ==
From: Herve Codina <herve.codina@bootlin.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
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
	Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [PATCH v3 0/3] Add support for errors recovery in the TI SN65DSI83 bridge driver
Date: Wed,  8 Jan 2025 11:18:59 +0100
Message-ID: <20250108101907.410456-1-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Hi,

Usually the TI SN65DSI83 recovers from error by itself but during ESD
tests, we have some cases where the TI SN65DSI83 didn't recover.

In order to handle those cases, this series adds support for a recovery
mechanism.

Compare to the previous iteration, this v3 series:
  - move reset_pipe() from the VC4 HDMI driver to an new atomic helper
  - Use this new helper

Best regards,
Hervé Codina

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

Herve Codina (3):
  dt-bindings: display: bridge: sn65dsi83: Add interrupt
  drm/vc4: Move reset_pipe() to an atomic helper
  drm: bridge: ti-sn65dsi83: Add error recovery mechanism

 .../bindings/display/bridge/ti,sn65dsi83.yaml |   3 +
 drivers/gpu/drm/bridge/ti-sn65dsi83.c         | 147 ++++++++++++++++++
 drivers/gpu/drm/drm_atomic_helper.c           |  41 +++++
 drivers/gpu/drm/vc4/vc4_hdmi.c                |  30 +---
 include/drm/drm_atomic_helper.h               |   2 +
 5 files changed, 194 insertions(+), 29 deletions(-)

-- 
2.47.1


