Return-Path: <devicetree+bounces-18568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 162987F71EC
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 11:45:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C768C281E30
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E726E1642E;
	Fri, 24 Nov 2023 10:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C42EF12B;
	Fri, 24 Nov 2023 02:45:01 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 04AA524E0D8;
	Fri, 24 Nov 2023 18:44:54 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 24 Nov
 2023 18:44:54 +0800
Received: from yang-virtual-machine.localdomain (113.72.144.198) by
 EXMBX171.cuchost.com (172.16.6.91) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Fri, 24 Nov 2023 18:44:52 +0800
From: Shengyang Chen <shengyang.chen@starfivetech.com>
To: <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>
CC: <neil.armstrong@linaro.org>, <quic_jesszhan@quicinc.com>,
	<sam@ravnborg.org>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<florian.fainelli@broadcom.com>, <bcm-kernel-feedback-list@broadcom.com>,
	<eric@anholt.net>, <thierry.reding@gmail.com>,
	<changhuang.liang@starfivetech.com>, <keith.zhao@starfivetech.com>,
	<shengyang.chen@starfivetech.com>, <jack.zhu@starfivetech.com>,
	<linux-rpi-kernel@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 1/2] dt-bindings: display: panel: raspberrypi: Add compatible property for waveshare 7inch touchscreen panel
Date: Fri, 24 Nov 2023 18:44:50 +0800
Message-ID: <20231124104451.44271-2-shengyang.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231124104451.44271-1-shengyang.chen@starfivetech.com>
References: <20231124104451.44271-1-shengyang.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag

The waveshare 7inch touchscreen panel is a kind of raspberrypi pi
panel and it can be drived by panel-raspberrypi-touchscreen.c.
Add compatible property for it.

Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
---
 .../bindings/display/panel/raspberrypi,7inch-touchscreen.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/raspberrypi,7inch-touchscreen.yaml b/Documentation/devicetree/bindings/display/panel/raspberrypi,7inch-touchscreen.yaml
index 22a083f7bc8e..e4e6cb4d4e5b 100644
--- a/Documentation/devicetree/bindings/display/panel/raspberrypi,7inch-touchscreen.yaml
+++ b/Documentation/devicetree/bindings/display/panel/raspberrypi,7inch-touchscreen.yaml
@@ -22,7 +22,9 @@ description: |+
 
 properties:
   compatible:
-    const: raspberrypi,7inch-touchscreen-panel
+    enum:
+      - raspberrypi,7inch-touchscreen-panel
+      - waveshare,7inch-touchscreen-panel
 
   reg:
     const: 0x45
-- 
2.17.1


