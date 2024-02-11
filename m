Return-Path: <devicetree+bounces-40458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E368508C8
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 12:18:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A7671C212BE
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 11:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA75E5A4CB;
	Sun, 11 Feb 2024 11:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="iAy0mQFZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D82E2AF08
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 11:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707650272; cv=none; b=eYqpGqDfbzWFfCxPwC7FE5kiRO8n/w0/eSVbWD2meth+RQxTsoATB1l0oKf7q0xB1IL6nEg6OoCmg5EVkTEpHPaISA/+Me1hC/s7Q+oX5th6FVimnWqXud7zr4YaEph5MUX2cn6IBDGmNET9UecN/wDrdfjSd2Tj9bIzp+vuJHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707650272; c=relaxed/simple;
	bh=yLjzK2gCGri+6ByZOSHWlqR7H2KPerqu58kNzMoTX80=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tfUm1xhm2aa57kvH/uZmbpGTeyigjydFjQNRi9eE1BM4md0TIjL8XXEJlDM8I34G/9P2ksK1vbHfAmlm/dUFGJjoQEHhuaARoQTQFSceUed1dhI6Ok4exGa34nGk8oVjxboiM4al+8BgHWVM0cYjNlg4utfj9L8IbJ8X4S+yeEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=iAy0mQFZ; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 53B2A60449;
	Sun, 11 Feb 2024 11:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707650269;
	bh=yLjzK2gCGri+6ByZOSHWlqR7H2KPerqu58kNzMoTX80=;
	h=From:To:Cc:Subject:Date:From;
	b=iAy0mQFZ79f2OywUzrTveFxXrEurHGo5sc2Z/rx6j5yD+S/I1mK7W108bakKQZURg
	 ucNnFccSQ4njMbW6C84Ip79Gw0dMRZpXlJ9+7U9/WYji8N1PfFeH2/pU3QtQt9VPsy
	 kO7L8cf7nrBY/iB4ZkyqvUqxjTBXfJZRk4gxju/P309N55qdDigi+akcaKm0AYwA+a
	 0vajas+yYfZUx7HLa+XlwCJmczq9nH05bklXyEYqzux4+0Su3WdsGxWKI2/jxiWBwG
	 XZB4xAjWXZt07s5uwUzHp+5cFf+6kPy/CWQCUaIXPvee1Cmj19/Bqrkjd40mQThy+E
	 oEfNgw4BkNBoA==
From: Tony Lindgren <tony@atomide.com>
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
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: display: simple: Add boe,bp082wx1-100 8.2" panel
Date: Sun, 11 Feb 2024 13:16:58 +0200
Message-ID: <20240211111703.7567-1-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This panel is found on Motorola mapphone tablets mz607 to mz609.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---

No changes since v1

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
+        # BOE BP082WX1-100 8.2" WXGA (1280x800) LVDS panel
+      - boe,bp082wx1-100
         # BOE BP101WX1-100 10.1" WXGA (1280x800) LVDS panel
       - boe,bp101wx1-100
         # BOE EV121WXM-N10-1850 12.1" WXGA (1280x800) TFT LCD panel
-- 
2.43.1

