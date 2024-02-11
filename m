Return-Path: <devicetree+bounces-40446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 507CF850874
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 10:53:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 830F41C20A80
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 09:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6104059171;
	Sun, 11 Feb 2024 09:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="J9GCfR4z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C649059141
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 09:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707645220; cv=none; b=qw2B4JG6sCq23ttSf+PtjhbMwkVxer+i1UIzJRELBR3Kor/2WqBGkI0qS+njE9LdzmqYsG8nHi1qGodamWU+GadzpRwX1SL8BcWkEq41eubAJFCzYn9TBt9Rg4TDRgGFUpQGdDI6tQjcxeHyhFk9J9JB0g8VVzvIR69mRpwWLPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707645220; c=relaxed/simple;
	bh=tP5AC41GiYDobaCkRgLI+2FBA4s/W4ZP0qFF3WFMI7A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e90EUvPZRWqkCGOoYLPMeAmMQwe3tDYKnHfg6/Cp1xhswrzL3p8FS6hAvLbzXSkH3AYGJxGqt8vkjEUz6RQboowbvdGfd4Ezh5j7+eIrFRud5Xo0MQVD5gG5cNBOIH1nlo0A55FX1CrcLAUP96wv0zAc/KV+W6/l3FHMld56Kes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=J9GCfR4z; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id D872960531;
	Sun, 11 Feb 2024 09:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707645218;
	bh=tP5AC41GiYDobaCkRgLI+2FBA4s/W4ZP0qFF3WFMI7A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=J9GCfR4zsfq12L0vvMRYRIq4jUxidU2XbajF5KbMIdLal5xpBD9RcDoy6Ae8KeLIQ
	 bQa8qGCDRpHwOesH0XUlWc0H8999MmQ1brJaFaBKSxSVgdZpOnGHX3BWtn6dwEbrmb
	 Xg2pAXsXSjW2lPfWdm/3iNtuTbYmbGsvhm43nTTV++mVIKq2EM4Fl+/dsPxD3Jvn0w
	 vpoeRYX4D4xDVH1yFL8IXsZnXPWDksHNQHYrE8Sy463J7C4E+vZuXV5YNDhZzlTWfx
	 ZbCsv010ytOfSLtckjfyhWCIDmMu4BjvSciYrWc8CgzGoG7ewLPIfFVG3qTDlkoQdI
	 L5azwRnzaL5Lw==
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
Cc: Michael Walle <mwalle@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 01/10] dt-bindings: display: bridge: tc358775: make stby gpio optional
Date: Sun, 11 Feb 2024 11:51:06 +0200
Message-ID: <20240211095144.2589-2-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240211095144.2589-1-tony@atomide.com>
References: <20240211095144.2589-1-tony@atomide.com>
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
2.43.0

