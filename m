Return-Path: <devicetree+bounces-79808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C25916E51
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 18:44:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FDEA1C21FFB
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 16:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BAC4175550;
	Tue, 25 Jun 2024 16:44:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85039174EE2
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 16:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.33.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719333853; cv=none; b=hTZri7+Fc403ldxstJ6Dvl66o+rfrbjZadiqZNtkuQOEy/wqg6BloW7e2ewPemWYWxA23AV/EefRM48coBa+ofzUZidihZHVzuJRRMW0UFcekFGwzd3zxJ5/089lpFVoK3KLD+MlUdVamnpsWVKctHMjZ++JzAA3S/0UA3NGuXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719333853; c=relaxed/simple;
	bh=m2GuMFxgU/pynrt3dIJwJIaVWLSrhz3LlbOIZG1DNFI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=tyXvYHKlZszNSLmRsDBLRkUtBZRg46j+d47JkjiTiu8g1q+Litqu1dtSYhvMthm/v5mZl9NkPyct0uxYUqGcJY/HORXJH9+rhmIaEQE0d89mVUdjLTY1BHVbrPdLwfTY6P9yRqp7qK3EsqIfnTOmkdbSgAtS3e8yfN7YtR/gTmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=srs.iliad.fr; arc=none smtp.client-ip=212.27.33.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=srs.iliad.fr
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id 2178920260;
	Tue, 25 Jun 2024 18:38:34 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id 09CAB2014B;
	Tue, 25 Jun 2024 18:38:34 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v2 0/2] Basic support for TI TDP158
Date: Tue, 25 Jun 2024 18:38:11 +0200
Message-Id: <20240625-tdp158-v2-0-a3b344707fa7@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHPyemYC/2XMQQ6CMBCF4auQWVszbbBUV9zDsJDOVGYDpCUNh
 vTuVrYu/5eX74DEUTjBozkgcpYky1zDXBrw02t+sxKqDQZNi1Z3aqNV35xqtTOIZL3HEep5jRx
 kP6HnUHuStC3xc7pZ/9Y/ImuFisLdceiIvaU+ROZx2a8hwlBK+QLXARHxnQAAAA==
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marc Gonzalez <mgonzalez@freebox.fr>
X-Mailer: b4 0.13.0


---
Changes in v2:
- Don't overload simple-bridge, spin new minimal driver
- New driver, new binding
- Default device settings work fine for us, so we don't tweak registers
- Link to v1: https://lore.kernel.org/r/20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr

Getting unusual message at run-time, need to check.

[    2.389848] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
[    2.391089] i2c 2-005e: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000

---
Marc Gonzalez (2):
      dt-bindings: display: bridge: add TI TDP158
      drm/bridge: add support for TI TDP158

 .../bindings/display/bridge/ti,tdp158.yaml         |  48 ++++++++++
 drivers/gpu/drm/bridge/Kconfig                     |   6 ++
 drivers/gpu/drm/bridge/Makefile                    |   1 +
 drivers/gpu/drm/bridge/ti-tdp158.c                 | 103 +++++++++++++++++++++
 4 files changed, 158 insertions(+)
---
base-commit: d47e2c964a51cbaa14a8c0ac641f85349584fae9
change-id: 20240617-tdp158-418200d6cc0b

Best regards,
-- 
Marc Gonzalez <mgonzalez@freebox.fr>


