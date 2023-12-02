Return-Path: <devicetree+bounces-20934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAD3801B36
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 08:56:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0106C1F2114D
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 07:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BBDEBE6B;
	Sat,  2 Dec 2023 07:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="iFjNZjo1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 891C11A6
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 23:56:14 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 8C2D260406;
	Sat,  2 Dec 2023 07:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701503773;
	bh=eeDVYKNNskoc7bZ6ea4jecMFc83wT7zP11ziZ/DpyS0=;
	h=From:To:Cc:Subject:Date:From;
	b=iFjNZjo1PQuxttEnfnx5sx2rzNkzLtGjjklhtHMU/2EQ+X3EkRwvnkvcmv+M/OdMH
	 UQgndHRj3pCQ9nZW4AQqg5q5JAZ2qVW+mspl9lv0KgHtvtZ6+3IhSB0MCwdJmCnWzZ
	 WSmYBUkCn3zzn9WDzqN4yR76OEEZH7sl4MkQ6wY03Vr1Mhu+JXRkbnHUkyG7U8aNxD
	 UdeYghlevs3zcSZUo1oSpXVT+kw/lzsk3wsYxEhIk47l1+490FAEvVjGpr2DBbYjbe
	 kTRs8mmXsVvpjO5+65jkXvjFThHVfBfAxaksTNAD7DcWgrMlRKN0ZbTRMlOaWD4Lxm
	 PdWV4hP3bQdbw==
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
Cc: Carl Philipp Klemm <philipp@uvos.xyz>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Pavel Machek <pavel@ucw.cz>,
	Sebastian Reichel <sre@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 00/10] Improvments for tc358775 with support for tc358765
Date: Sat,  2 Dec 2023 09:54:39 +0200
Message-ID: <20231202075514.44474-1-tony@atomide.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Here's v2 of these changes merged with patches from Michael.

Regards,

Tony

Changes since v1:

- After a brief offline discussion with Michael, merge series with
  Michael's patch series to make stby gpio and supplies optional as they
  may be hardwired

- Use Michael's better patch for the jeida timings change

- Parse lanes on the bridge side like other bridge devices do, and if not
  found, also parse on the DSI host side and warn

Michael Walle (3):
  dt-bindings: display: bridge: tc358775: make stby gpio and vdd
    supplies optional
  drm/bridge: tc358775: fix support for jeida-18 and jeida-24
  drm/bridge: tc358775: make standby GPIO optional

Tony Lindgren (7):
  dt-bindings: display: bridge: tc358775: Add data-lanes
  dt-bindings: display: bridge: tc358775: Add support for tc358765
  drm/bridge: tc358775: Get bridge data lanes instead of the DSI host
    lanes
  drm/bridge: tc358775: Add burst and low-power modes
  drm/bridge: tc358775: Enable pre_enable_prev_first flag
  drm/bridge: tc358775: Add support for tc358765
  drm/bridge: tc358775: Configure hs_rate and lp_rate

 .../display/bridge/toshiba,tc358775.yaml      | 30 +++++--
 drivers/gpu/drm/bridge/tc358775.c             | 90 +++++++++++--------
 2 files changed, 75 insertions(+), 45 deletions(-)

-- 
2.43.0

