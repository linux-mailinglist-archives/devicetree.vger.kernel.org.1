Return-Path: <devicetree+bounces-85295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0530292F94A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 13:06:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AED811F22C83
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 11:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDFFE15B96F;
	Fri, 12 Jul 2024 11:06:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7090F1422C3
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 11:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720782390; cv=none; b=nervT54qMmdTbuNx385gZsokxs8exTHGcwGAzAXizT78ZC1QU/zD0979sDPrkAGvKzwE33Bo5puheVzt/UxblGOze6dujj7RafgtaIs37bXVUIZxNoViX8xSTKHoSNpvdvT5H59mX0WetnFd9p1NANsmqGWDRAK6SCCSmtOhYD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720782390; c=relaxed/simple;
	bh=dBuFWJgHaFgnL4Th6Unn/BSFEZnxfuKfpuWlHaiz4PQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Uqj8Tj4Ryk+aWCXwKTJHHSmvpRDyFlQl4eI/T3hxOdQOUuSYbw4Xcvg2oxsJAvYPNyro56cMLxb9rbsfgmVRvPhdbeVxVfTTVJvOP0HA0PO05ZLrr4QIyPkqiCFNZOhT3XklcqKe/uq4bYlpvZ1PyUKpB6SmzUOv1mSdHYx+2GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sSE6G-0001hW-3t; Fri, 12 Jul 2024 13:06:04 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: [PATCH 0/2] drm/panel: simple: add Innolux G070ACE-LH3
Date: Fri, 12 Jul 2024 13:05:54 +0200
Message-Id: <20240712-b4-v6-10-topic-innolux-v1-0-bb0acf273d0d@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABIOkWYC/x3MTQqAIBBA4avErBsYTQq6SrToZ6yB0NCSQLp70
 vJbvJchchCO0FcZAieJ4l2BqitY9sltjLIWgyZtqFMaZ4OpRUV4+VMWFOf8cT/YWGJLllczKyj
 xGdjK84+H8X0/jUxS72gAAAA=
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
 kernel@pengutronix.de
X-Mailer: b4 0.14.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

This series adds support for the Innolux G070ACE-LH3 to the panel-simple
driver and adds the according compatible to the devicetree bindings.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
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


