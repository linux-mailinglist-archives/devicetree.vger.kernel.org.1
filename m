Return-Path: <devicetree+bounces-20935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E79801B38
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 08:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F0FFB20D95
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 07:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 160D7BE6F;
	Sat,  2 Dec 2023 07:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="YbxoMelj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFF1C116
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 23:57:19 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id EBB176049B;
	Sat,  2 Dec 2023 07:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701503839;
	bh=HWs1Jb+EiXvhQNMp0z9SgweFLx0LNj+D/nipqQhZAMM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YbxoMeljA7L0qrMnf61jyzqqMeU1RU8ZxpxkEocWsmKy98DtzTWYRE9Ihngn5DCc0
	 HmnPZlTJrux6wYLxVacZCRtnuk2FVMGK43TMrOfzfPsy1gK3R4vhE6p/SnF1XyLHij
	 KJdpgU+QOS5WkPRBxd+U0+gTT46gEPTImAT4kh6NYOXpw1sBMTmjrRIue6qQL5TZHC
	 24qPp8D8uHn5DT3QbH9qWzlNtETRynG7WJTU8A4DQw7uK38/ST7Mtc6eWpe+mqrln6
	 Wk/Btmmdd+vON3MFfk74JWXkJuA0IDP1yyKKOIR4yDAs3AWcpgQYDQKzDItro77Lp4
	 /p7OD9mNwERCA==
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
Cc: Carl Philipp Klemm <philipp@uvos.xyz>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Pavel Machek <pavel@ucw.cz>,
	Sebastian Reichel <sre@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 01/10] dt-bindings: display: bridge: tc358775: make stby gpio and vdd supplies optional
Date: Sat,  2 Dec 2023 09:54:40 +0200
Message-ID: <20231202075514.44474-2-tony@atomide.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202075514.44474-1-tony@atomide.com>
References: <20231202075514.44474-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Walle <mwalle@kernel.org>

For a normal operation, the vdd supplies nor the stby GPIO is needed.
There are boards, where these voltages are statically enabled during
board power-up.

The reset pin is required because once the PPI (PHY protocol interface)
is started, it can only be stopped by asserting the reset pin.

Signed-off-by: Michael Walle <mwalle@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 .../devicetree/bindings/display/bridge/toshiba,tc358775.yaml   | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
@@ -68,9 +68,6 @@ properties:
 required:
   - compatible
   - reg
-  - vdd-supply
-  - vddio-supply
-  - stby-gpios
   - reset-gpios
   - ports
 
-- 
2.43.0

