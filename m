Return-Path: <devicetree+bounces-88738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E88193EDEF
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 09:04:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEC301C21E01
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 07:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8301F12E1F1;
	Mon, 29 Jul 2024 07:03:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D43282D66
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 07:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722236593; cv=none; b=sZKxRXk8o81UW8wfKCh63+O9Nf/iZRHapAOZk1dqdXWkSzM3FY3plQL2MWr61eF2aBfNvWJWZx+m6KS3AQg7cRbvSN6UGU5/JijJh+JH1eAqRSmbYbsANj8uOwVifwBdOVcyG7ZzKQAChWGuAD0bkfTxy9wmLXR7qOZR1qbSH9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722236593; c=relaxed/simple;
	bh=r+noE/O1HaoUyxEfeuaXrYa6JhjO8TV7wMWk4ZfiJ6s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YXD8Cp0mCBbsQ8+ibNsTAvxWPU4hyHPJd+bOtW+sp5zFFO6uYQgisDTCvyfhyj5G3dlCOqJIHC31dcpVGNCKtvtjCYSduLFoALufTjaOz463RTMmXL3eSU8RJxdKiIjoe6zF7trjm4wv8VYTCLdjAlm73LZfe2q36S6tXstnUH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sYKP2-0003xR-K1; Mon, 29 Jul 2024 09:02:40 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: [PATCH v2 0/2] drm/panel: simple: add Innolux G070ACE-LH3
Date: Mon, 29 Jul 2024 09:02:37 +0200
Message-Id: <20240729-b4-v6-10-topic-innolux-v2-0-27d32c766ce5@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI0+p2YC/4WNQQqDMBBFryKz7pRJlApd9R7FhTETHSiJJBoU8
 e5NvUCX78F//4DEUTjBszogcpYkwRfQtwqGqfcjo9jCoEk31CqNpsH8QEW4hFkGFO/DZ92wdsS
 OHNvGKCjjObKT7Qq/u8KTpCXE/frJ6mf/JrNCQmOoH5xua0v2NbMf1yUGL9vdMnTneX4BmGcMi
 MEAAAA=
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 kernel@pengutronix.de, Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

This series adds support for the Innolux G070ACE-LH3 to the panel-simple
driver and adds the according compatible to the devicetree bindings.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v2:
- add acked-by
- update [vh]blank min/max values

- Link to v1: https://lore.kernel.org/r/20240712-b4-v6-10-topic-innolux-v1-0-bb0acf273d0d@pengutronix.de

---
Steffen Trumtrar (2):
      dt-bindings: display: simple: Document support for Innolux G070ACE-LH3
      drm/panel: simple: add Innolux G070ACE-LH3 LVDS display support

 .../bindings/display/panel/panel-simple.yaml       |  2 ++
 drivers/gpu/drm/panel/panel-simple.c               | 35 ++++++++++++++++++++++
 2 files changed, 37 insertions(+)
---
base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
change-id: 20240712-b4-v6-10-topic-innolux-3f0ef0fed4b1

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>


