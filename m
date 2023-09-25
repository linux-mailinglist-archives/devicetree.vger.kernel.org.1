Return-Path: <devicetree+bounces-2910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B5B7ACDED
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:11:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C17641C203DD
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:11:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0818B10E2;
	Mon, 25 Sep 2023 02:11:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E89ED7
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:11:20 +0000 (UTC)
Received: from out-207.mta1.migadu.com (out-207.mta1.migadu.com [IPv6:2001:41d0:203:375::cf])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A1B9CF
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:11:18 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695607876;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dBwJVZqyUEmGrk+NRUEnrWBl048tLeP6DRWFd/r9Aic=;
	b=hk/N0PmzAnpO7cEgVr5tsJ7rjrTwc1/ywJpPVYcbnQ50e+maxfU1pyMLa5RqM1Cj0cWo3q
	uc+iF9oLWUmv6zBOGDA/rMjegvF4MNQnlI9OfJUY5zr2IueOg5qZA8syvG34J1ekk8vobC
	hKRFJh2YEI5yLM5mf+PBObmga+ef958/Ud31GhnXRW2A1V//PWiiE5M197/Hh6a/I5jkj1
	Qs4M7ivPLaSAUCKEL1qyUMO7DvcUSfdvfxoiAp2ZhvCUvSQSC4r1LnZRCI6hv/vRimgZ+q
	ezIfqvLjwZuTTCDMHzm8oeBHUHw+Xc6xbVtxBVEl/y4o1CXsPO1DOq5mkdrlVQ==
From: John Watts <contact@jookia.org>
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	John Watts <contact@jookia.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 0/7] Add FS035VG158 panel
Date: Mon, 25 Sep 2023 12:10:51 +1000
Message-ID: <20230925021059.451019-1-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello there,

This RFC introduces support for the FS035VG158 LCD panel, cleaning up
the nv3052c driver on the way and documentating existing panel code.

John.

v2 -> v3:
- Dropped patches that add extra sleep time

v1 -> v2:
- Fixed a variable declaration style error
- Cleaned up device tree yaml

John Watts (7):
  drm/panel: nv3052c: Document known register names
  drm/panel: nv3052c: Add SPI device IDs
  drm/panel: nv3052c: Allow specifying registers per panel
  drm/panel: nv3052c: Add Fascontek FS035VG158 LCD display
  dt-bindings: display: panel: Clean up leadtek,ltk035c5444t properties
  dt-bindings: vendor-prefixes: Add fascontek
  dt-bindings: display: panel: add Fascontek FS035VG158 panel

 .../display/panel/fascontek,fs035vg158.yaml   |  56 ++
 .../display/panel/leadtek,ltk035c5444t.yaml   |   8 +-
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../gpu/drm/panel/panel-newvision-nv3052c.c   | 515 +++++++++++++-----
 4 files changed, 437 insertions(+), 144 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/fascontek,fs035vg158.yaml

-- 
2.42.0


