Return-Path: <devicetree+bounces-76627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B8F90B5B7
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 18:04:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4936F28691D
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 16:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E877E1C2AD;
	Mon, 17 Jun 2024 16:03:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 891B1FC18
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 16:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.33.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718640205; cv=none; b=WQk6kx9v4sugiecFz0AZnM6zhz+6Yg8tHfJ2vKkjm+ca1suC3p9/9tJEtEdbz5A/QBSHU+hd/TulSFlxQvl1MVmz5PrU0sP3M/kJkzNcIpbOriTiRnDguLooX2Re5Mo7/LZYVh/FdqA6f1JFn4oL9uGURKrOYbAqszB9VdRY7R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718640205; c=relaxed/simple;
	bh=DVvZd+Fo+vF8Q/XQenku5CX22r2FvMmZyQcWyGMG7Ks=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XiMr+pv/wnM/wbQuvvIE2miP4Zu9Ct7WoodjIVaI0B0YzrSCBy4dDvG4kbPUrKvgQ1/IIaOy/KV4+DXnlGzA/qtVIrvJlXnKtdgmuqZ0jdC07Vuuc9kk/OOyAMtLI0IZQN5PgwVx32x3UkDMTvcRjqT1iTMzNFjiQLEJGmvKw6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=srs.iliad.fr; arc=none smtp.client-ip=212.27.33.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=srs.iliad.fr
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id C8338202A4;
	Mon, 17 Jun 2024 18:03:13 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id A0D912021F;
	Mon, 17 Jun 2024 18:03:13 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH 0/4] Basic support for TI TDP158
Date: Mon, 17 Jun 2024 18:02:58 +0200
Message-Id: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADJecGYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDM0Nz3ZKUAkNTC10TQwsjA4MUs+RkgyQloOKCotS0zAqwQdGxtbUAHPw
 ajVgAAAA=
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
Marc Gonzalez (4):
      dt-bindings: display: simple-bridge: add ti,tdp158
      drm: bridge: simple-bridge: use dev pointer in probe
      drm: bridge: simple-bridge: use only devm* in probe
      drm: bridge: simple-bridge: add tdp158 support

 .../bindings/display/bridge/simple-bridge.yaml     |  4 +
 drivers/gpu/drm/bridge/simple-bridge.c             | 85 +++++++++++++++++-----
 2 files changed, 71 insertions(+), 18 deletions(-)
---
base-commit: 17b591a4a192a8a11faad30520b8f6a9137ac514
change-id: 20240617-tdp158-418200d6cc0b

Best regards,
-- 
Marc Gonzalez <mgonzalez@freebox.fr>


