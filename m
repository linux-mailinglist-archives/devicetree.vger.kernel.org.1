Return-Path: <devicetree+bounces-19058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AC97F9899
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 06:17:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E98821C2042B
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 05:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DC225382;
	Mon, 27 Nov 2023 05:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="ecbbz4yC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5880012F
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 21:17:00 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 69D8760531;
	Mon, 27 Nov 2023 05:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701062219;
	bh=k92tQ7DhMHQftnpdQhgE95eM6oQA07eSfKIXNAi5XQM=;
	h=From:To:Cc:Subject:Date:From;
	b=ecbbz4yCo3wbDTQZoaCTno5LP8n9mTXIhGC9giUWkavUwVBWH+sfnivhC2+p0vN3S
	 djikDEV6incT+RsFq5/xF5SSZ3nY1YJpoumMXTiLVSdYYZ5ijgmBepZx9C57B0dEaF
	 GBV8cRjlbVtY/4q1mA/O49PpiLDlpfuq6TvTKBKr++76kthF5nuZjfKq4srzPQQlVe
	 0B2XpiJ6FSAzb4bcLt+KTQelVQbvA0k78U+Gj+BHqlZKtpZeFiPX6ecPScKF3V01H+
	 ih3hnO9yS1KiI0yi0cpOdFUsvW/nShoNoOeL2yT1FpK87bQqSba1qAWj59SEptgNoz
	 u/KZx9L7Ti+dQ==
From: Tony Lindgren <tony@atomide.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
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
	Thierry Reding <thierry.reding@gmail.com>
Cc: Carl Philipp Klemm <philipp@uvos.xyz>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Pavel Machek <pavel@ucw.cz>,
	Sebastian Reichel <sre@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: simple: Add boe,bp101wx1-100 panel
Date: Mon, 27 Nov 2023 07:15:43 +0200
Message-ID: <20231127051547.15023-1-tony@atomide.com>
X-Mailer: git-send-email 2.42.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This panel is found on Motorola mapphone tablets mz615 to mz617.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -73,6 +73,8 @@ properties:
       - auo,t215hvn01
         # Shanghai AVIC Optoelectronics 7" 1024x600 color TFT-LCD panel
       - avic,tm070ddh03
+        # BOE BP101WX1-100 10.1" WXGA (1280x800) LVDS panel
+      - boe,bp101wx1-100
         # BOE EV121WXM-N10-1850 12.1" WXGA (1280x800) TFT LCD panel
       - boe,ev121wxm-n10-1850
         # BOE HV070WSA-100 7.01" WSVGA TFT LCD panel
-- 
2.42.1

