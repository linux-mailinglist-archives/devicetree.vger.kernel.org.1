Return-Path: <devicetree+bounces-23389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA60080B25E
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 07:37:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2413D2810F1
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 06:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426281C03;
	Sat,  9 Dec 2023 06:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="yoU5Szgn"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09D6310C9
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 22:37:40 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 92EBB87158;
	Sat,  9 Dec 2023 07:37:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1702103857;
	bh=MZpymaKOZPW5QHysuyYS7rZv+q3Zp4w+2CiG538XAY4=;
	h=From:To:Cc:Subject:Date:From;
	b=yoU5Szgn3nrx8zs2v2qDJOxNOnkDwYoDJUBeHJIw6E5et5vBayo7pamKJ90eD+fNd
	 l/qgKy4RAoZOye01+NznDENRXey3lszyNCggMhnFiEZK4iod9jzbk+oOWVnYxBZu2h
	 AT6erZDV81OBs1QOe8Ni+Bt/X9ucHugXDCJzZOlz2qrPpotym0WbohFzMTpNBjITXC
	 7dkbRuNRODEVdKqW0r/iXIXtog6P8xhszgcXMGqZtQlWyL9QCAgDfdWJAReJj506Dx
	 l9631iGTtIJTiV+VnoDhwQLx1m94551MQqty3FoAONL6ivjlm9qU3t/JAAvsyN+k8f
	 EvoRfR+BSgxcA==
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Elmar Albert <ealbert@data-modul.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Liu Ying <victor.liu@nxp.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: display: simple: Add AUO G156HAN04.0 LVDS display
Date: Sat,  9 Dec 2023 07:36:59 +0100
Message-ID: <20231209063714.1381913-1-marex@denx.de>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

From: Elmar Albert <ealbert@data-modul.com>

Document support for the AUO G156HAN04.0 LVDS display.

G156HAN04.0 is a Color Active Matrix Liquid Crystal Display composed of
a TFT LCD panel, a driver circuit, and LED backlight system. The screen
format is intended to support the 16:9 FHD, 1920(H) x 1080(V) screen
and 16.7M colors (RGB 8-bits) with LED backlight driving circuit.
All input signals are LVDS interface compatible.

G156HAN04.0 is designed for a display unit of notebook style
personal computer and industrial machine.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Elmar Albert <ealbert@data-modul.com>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Liu Ying <victor.liu@nxp.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
V2: - Collect AB from Krzysztof
    - Update to new panel-simple-lvds-dual-ports.yaml
    - Update commit subject prefix
    - Add own SoB line
---
 .../bindings/display/panel/panel-simple-lvds-dual-ports.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
index a5a596ff8e752..716ece5f39784 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
@@ -33,6 +33,8 @@ properties:
 
         # AU Optronics Corporation 13.3" FHD (1920x1080) TFT LCD panel
       - auo,g133han01
+        # AU Optronics Corporation 15.6" FHD (1920x1080) TFT LCD panel
+      - auo,g156han04
         # AU Optronics Corporation 18.5" FHD (1920x1080) TFT LCD panel
       - auo,g185han01
         # AU Optronics Corporation 19.0" (1280x1024) TFT LCD panel
-- 
2.42.0


