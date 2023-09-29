Return-Path: <devicetree+bounces-4571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D7F7B32A2
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:34:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 90C071C209C8
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 12:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E5BCE575;
	Fri, 29 Sep 2023 12:34:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5889CA47
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 12:34:01 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E57081A4
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:33:58 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qmCgq-0008Se-Fe; Fri, 29 Sep 2023 14:33:52 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qmCgp-009oFS-H5; Fri, 29 Sep 2023 14:33:51 +0200
Received: from localhost ([::1] helo=dude03.red.stw.pengutronix.de)
	by dude03.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qmCgp-009S7x-7e; Fri, 29 Sep 2023 14:33:51 +0200
From: Johannes Zink <j.zink@pengutronix.de>
Date: Fri, 29 Sep 2023 14:33:32 +0200
Subject: [PATCH v5 2/3] dt-bindings: display: simple: support non-default
 data-mapping
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230523-simplepanel_support_nondefault_datamapping-v5-2-0d7928edafab@pengutronix.de>
References: <20230523-simplepanel_support_nondefault_datamapping-v5-0-0d7928edafab@pengutronix.de>
In-Reply-To: <20230523-simplepanel_support_nondefault_datamapping-v5-0-0d7928edafab@pengutronix.de>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Cc: kernel test robot <lkp@intel.com>, Dan Carpenter <error27@gmail.com>, 
 patchwork-jzi@pengutronix.de, kernel@pengutronix.de, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Johannes Zink <j.zink@pengutronix.de>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: j.zink@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some Displays support more than just a single default LVDS data mapping,
which can be used to run displays on only 3 LVDS lanes in the jeida-18
data-mapping mode.

Add an optional data-mapping property to allow overriding the default
data mapping. As it does not generally apply to any display and bus, use
it selectively on the innolux,g101ice-l01, which supports changing the
data mapping via a strapping pin.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Johannes Zink <j.zink@pengutronix.de>

---

Changes:

v4 -> v5: none, re-added lost reviewed-by tag

v3 -> v4: none

v2 -> v3: - worked in Laurent's review findings (thanks for reviewing
	    my work): fix typos in commit message

v1 -> v2: - worked in Rob's review findings (thanks for reviewing my
            work): use extracted common property instead of duplicating
	    the property
	  - refined commit message
	  - add an example dts for automated checking
---
 .../bindings/display/panel/panel-simple.yaml       | 26 +++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 50143fe67471..81ac402ceed1 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -21,9 +21,9 @@ description: |
 
 allOf:
   - $ref: panel-common.yaml#
+  - $ref: ../lvds-data-mapping.yaml#
 
 properties:
-
   compatible:
     enum:
     # compatible must be listed in alphabetical order, ordered by compatible.
@@ -359,6 +359,17 @@ properties:
   power-supply: true
   no-hpd: true
   hpd-gpios: true
+  data-mapping: true
+
+if:
+  not:
+    properties:
+      compatible:
+        contains:
+          const: innolux,g101ice-l01
+then:
+  properties:
+    data-mapping: false
 
 additionalProperties: false
 
@@ -378,3 +389,16 @@ examples:
         };
       };
     };
+  - |
+    panel_lvds: panel-lvds {
+      compatible = "innolux,g101ice-l01";
+      power-supply = <&vcc_lcd_reg>;
+
+      data-mapping = "jeida-24";
+
+      port {
+        panel_in_lvds: endpoint {
+          remote-endpoint = <&ltdc_out_lvds>;
+        };
+      };
+    };

-- 
2.39.2


