Return-Path: <devicetree+bounces-132396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACCF9F6E70
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 20:47:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D171A16F05E
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 19:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 336121FD7A0;
	Wed, 18 Dec 2024 19:45:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E041FD785
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 19:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734551124; cv=none; b=tPjXm/yuEiw+eE97iqgRNmNloOP1ZYOxFCdffJ12VVBZaeOXv3wsM+zyhrjsg0RNUl4B4ZTpMMGSrpHexxhFxzcouos02wrEdZV/9eZ3nenkCO7ewYnRRYNly3HD7wgH1ICf7EWG7KZyC5cMMppk7NJXV1rfwiBNjMRG1orSyH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734551124; c=relaxed/simple;
	bh=ePUb8LYleDkrAKtvxqASTbBAII4CjYsJyHemICzJPMk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=d3DIn4JhZf1ayGpQX/mpHr07g8m6YoDYXwQI4deWjo9pROeZwK92828oXjGVCwpKcAt9n4R8jxWIDe4p2ue9a2ZGZOgSuOmq6cAmoDNylypcz3IIB4xFB1pHexi2STXhR2RawkuNuQ3ixtuUFgpH6Spcb9AsAqNfFlmJqz8Q5RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNzyo-0006vE-KF; Wed, 18 Dec 2024 20:45:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNzym-0045EY-0m;
	Wed, 18 Dec 2024 20:45:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNzym-00DT63-2y;
	Wed, 18 Dec 2024 20:45:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 0/3] drm: panel-simple: support TOPLAND TIAN G07017 LCD
 panel
Date: Wed, 18 Dec 2024 20:44:57 +0100
Message-Id: <20241218-topland-tian-g07017-v1-0-d5e411c199e3@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADkmY2cC/x3MQQqAIBBA0avErBtQK4yuEi0kRxsIE5UIwrsnL
 d/i/xcyJaYMS/dCopszX6FB9h3shwmekG0zKKFGqeSM5YqnCRYLm4BeaCE1TooGO9JMRjhoZUz
 k+Pmv61brBwq8RoRlAAAA
X-Change-ID: 20241218-topland-tian-g07017-52e3d4e8ea0f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, kernel@pengutronix.de, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The TIAN-G07017-01 is a 7" TFT-LCD module by TOPLAND ELECTRONICS (H.K).
The panel features 1024x600 24-bit RGB pixels driven over LVDS as well
as a PWM backlight and I2C-connected  ft5506-compatible capacitive touch.

This series adds DT binding and Linux driver support for this panel.

---
Ahmad Fatoum (3):
      dt-bindings: vendor-prefixes: add prefix for Topland Electronics (H.K)
      dt-bindings: display: panel-simple: Document Topland TIAN-G07017-01
      drm: panel-simple: support TOPLAND TIAN G07017 LCD panel

 .../bindings/display/panel/panel-simple.yaml       |  2 ++
 .../devicetree/bindings/vendor-prefixes.yaml       |  2 ++
 drivers/gpu/drm/panel/panel-simple.c               | 34 ++++++++++++++++++++++
 3 files changed, 38 insertions(+)
---
base-commit: 78d4f34e2115b517bcbfe7ec0d018bbbb6f9b0b8
change-id: 20241218-topland-tian-g07017-52e3d4e8ea0f

Best regards,
-- 
Ahmad Fatoum <a.fatoum@pengutronix.de>


