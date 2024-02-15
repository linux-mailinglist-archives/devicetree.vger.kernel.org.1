Return-Path: <devicetree+bounces-42040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 403CB856345
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 13:34:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F07BB288775
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 12:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EB7512CD88;
	Thu, 15 Feb 2024 12:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="Xv91tIN7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E171A12C528
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 12:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708000452; cv=none; b=RaCXDU3eZrA0nddbxzUir43K+Mvdo1Z6gFEcNksTJNMC8yqHxU53uIPbO1ODr8upqJ4qQRswDmIrkHA2ldUJj67kt5Kg22aLHbZqduUvisr/415AJz9QbYkK9M5eJI2fxEeKLkOuL9/5Sm/r7xDf8Nb9zbDAZwqpdBeJf9Qq+es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708000452; c=relaxed/simple;
	bh=G85rRguQVGw4VsvfyNlOTWdpswFgEb4PNW04mzqncbc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F4GavvHExA2da4J2Q3XvMQ/9FfibjOonwH4zRfuIHdS0zU39VsU4EE2Rr2eJnBFt3k0A9IeUJYVyAL9IqhWYIw6upbZ9ca6biSXR54mVpRYP0rjaV4MnqrvWCHVIS+xPpJdkLy0Gl2NDpzG0ucMYius04W+piGPmHkrO3tUSKHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=Xv91tIN7; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id B73C3603EE;
	Thu, 15 Feb 2024 12:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708000450;
	bh=G85rRguQVGw4VsvfyNlOTWdpswFgEb4PNW04mzqncbc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Xv91tIN74pULUUJzMp6vNv2kuL3ZpOV9gsxFDekONoOZR5IVEuIjJjmWzVcdVjXRb
	 G1lge3fdZZiyaGOM9C4eVTDhyTqBkP0q3U5P90CPhq+dkG75MktcD1RYc/SjIakFxa
	 qHxbnEdQab63EU7EWoob4g0tLZVx8WFbIuWFmWOjT83ycha5q68hRISfOJH2KZ4vGJ
	 qe1qePfKqHTnreY3x690/IysetHaQ8/NeYL/xqu23Sx9ETHpN2R2jydvm5HGoOCw9z
	 aEE5G0p1zy55O706WfskPFY0om/EtWjZjMzFejxHc1XhDHGXmlWwQg8oiK1l/JfCuP
	 qeGLre+U/l5rw==
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
Cc: Michael Walle <mwalle@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 01/10] dt-bindings: display: bridge: tc358775: make stby gpio optional
Date: Thu, 15 Feb 2024 14:31:44 +0200
Message-ID: <20240215123222.42609-2-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240215123222.42609-1-tony@atomide.com>
References: <20240215123222.42609-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Walle <mwalle@kernel.org>

For a normal operation, the stby GPIO is not needed.

The reset pin is required because once the PPI (PHY protocol interface)
is started, it can only be stopped by asserting the reset pin.

Signed-off-by: Michael Walle <mwalle@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
[tony@atomide.com: dropped regulator related changes]
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 .../devicetree/bindings/display/bridge/toshiba,tc358775.yaml     | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
@@ -70,7 +70,6 @@ required:
   - reg
   - vdd-supply
   - vddio-supply
-  - stby-gpios
   - reset-gpios
   - ports
 
-- 
2.43.1

