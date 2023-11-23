Return-Path: <devicetree+bounces-18236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C32D07F5C3B
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:24:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4EC43281970
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 10:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14DDE224F6;
	Thu, 23 Nov 2023 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQoxao9K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E946C224FC
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 10:24:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C94AC433C8;
	Thu, 23 Nov 2023 10:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700735062;
	bh=Pcax73EaGd+1XlewYRlZvBtaVgqAdBc/HhyX2fk61bs=;
	h=From:To:Cc:Subject:Date:From;
	b=mQoxao9KDEU2xlG69GtUB5FQ27rfjbeUSZiXlTH+vc8xRvawtsZV5F2y2NpvTq58Z
	 jAHtd2DJVpL+9W9AjqOIpGr/XAKJQ6hglnuCmMZukCdA4LAXQx7ERuukpyo+WIOdmf
	 E5+2UFFbzA+WYEDI0d9HmmNmWK3sTwwLCsL1+HBy9bsNcDYxPa0N2YNG5XnAZOLC+g
	 wka8i4rETXrJ6RzBYuRhpSUEAig9wQR5UQRRO+8arj3SPDIedc3gamNg2KS7fXRm2+
	 /mdPowISrR6pGlfXKbVmZNCzsCR31krIB586njosrmg2Kp2Q2Q/FMoQuDYrKTr6vaT
	 beeDTn45k1lkQ==
From: Michael Walle <mwalle@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH 1/2] dt-bindings: display: simple: add Evervision VGG644804 panel
Date: Thu, 23 Nov 2023 11:24:03 +0100
Message-Id: <20231123102404.2022201-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Evervision VGG644804 5.7" 640x480 LVDS panel compatible string.

Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 3ec9ee95045f..2471c99a0c96 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -144,6 +144,8 @@ properties:
       - edt,etmv570g2dhu
         # E Ink VB3300-KCA
       - eink,vb3300-kca
+        # Evervision Electronics Co. Ltd. VGG644804 5.7" VGA TFT LCD Panel
+      - evervision,vgg644804
         # Evervision Electronics Co. Ltd. VGG804821 5.0" WVGA TFT LCD Panel
       - evervision,vgg804821
         # Foxlink Group 5" WVGA TFT LCD panel
-- 
2.39.2


