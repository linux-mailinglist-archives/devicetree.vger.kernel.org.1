Return-Path: <devicetree+bounces-12717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 854377DB423
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 08:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B58B01C20858
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 07:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08F144C84;
	Mon, 30 Oct 2023 07:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b="Aa0Otn+t"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064364C7F
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 07:24:24 +0000 (UTC)
Received: from out-189.mta1.migadu.com (out-189.mta1.migadu.com [IPv6:2001:41d0:203:375::bd])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 575B9C0
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 00:24:23 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1698650660;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=iPJfSX51Ov+WGn0bxAkaRt0Zl4iWxaNa6Rvl7jWJpR4=;
	b=Aa0Otn+t/VEndDsmkq9+3DXSDyhM0RF5cF9KQ8wftAM3x4bYxAgIXwRdUUCqQFEh9MLsp+
	w/q+ROmDovuW+4XX1uAcme6Xmu/JTr13DUDCIWFy2PDboGMGgJxIEEVf3uq/cwo7YYbzQ2
	pyvY8DUOwWZ7FOvOnYpPo8KUjVNKSqMYYwNGofRqFNNqH4qPigQgcbtHcHa/HhFD7Emc9p
	9r3xaAmclEXOLjZG/RLIIHJYrAUGhDp4XPTXvqVbd8MyiHR2njpPqMD+jmo4+AU/PO7ey0
	bpeTbLSiKi6oISz8KPTRfEAJxf7K5uVn/Ywjn6RM6dYejj/oA3grScwH9FCjeg==
From: John Watts <contact@jookia.org>
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Linus Walleij <linus.walleij@linaro.org>,
	John Watts <contact@jookia.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v4 0/7] Add FS035VG158 panel
Date: Mon, 30 Oct 2023 18:23:31 +1100
Message-ID: <20231030072337.2341539-2-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Hello there,

This RFC introduces support for the FS035VG158 LCD panel, cleaning up
the nv3052c driver on the way and documentating existing panel code.

This patch series is at a bit of a standstill: I have gotten feedback
that it should instead use the Leadtek LTK035C5444T panel init sequence
instead of Fascontek's provided sequence which is almost identical.

I don't feel comfortable providing a patch that does this unless someone
can explain why the changes Fascontek have made aren't critical.

I would like feedback to know if this is a blocker for this patch set,
or otherwise what needs to be done to get it merged.

John.

v3 -> v4:
- Mark panel_regs_len as unsigned

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


