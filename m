Return-Path: <devicetree+bounces-4836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 719887B4163
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:00:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 218482831D6
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAC9616436;
	Sat, 30 Sep 2023 15:00:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2775156EB
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 15:00:21 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47500BD;
	Sat, 30 Sep 2023 08:00:17 -0700 (PDT)
Received: from uno.internal.cocoon-space.com (lfbn-idf1-1-343-200.w86-195.abo.wanadoo.fr [86.195.61.200])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 080FBEEA;
	Sat, 30 Sep 2023 16:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696085907;
	bh=/JWm2xr7LSH8+VCrlOb7tfHevzHx+qXWppSPo+0PmGY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LsEZdu9/nz8Jsf7DYqOA2VD5c5ljXH4byEreXGtUdk2p+Y6nMvQW4M+fZW6kYIHMp
	 OsYV/tfFoATC6Hdo5F2QIMigyhr6TfE6QIYaUJJygOtQVuIQyrK5AAgLEnKsCTy01B
	 xpMca8qjp0JcJItfV3lRz4waEPY10ITZ0GH7hZWQ=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Fabio Estevam <festevam@gmail.com>,
	martink@posteo.de
Subject: [PATCH v3 3/7] media: dt-bindings: ovti,ov02a10: Fix handling of video-interface-device
Date: Sat, 30 Sep 2023 16:59:47 +0200
Message-ID: <20230930145951.23433-4-jacopo.mondi@ideasonboard.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230930145951.23433-1-jacopo.mondi@ideasonboard.com>
References: <20230930145951.23433-1-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Fix handling of properties from video-interface-device.yaml for
Omnivision OV02A10 sensor.

There is no reason to restrict the allowed rotation degrees to 0 and 180,
as the sensor can be mounted with any rotation.

Also, as all the properties described by video-interface-device.yaml are
allowed for the image sensor, make them accepted by changing
"additionalProperties: false" to "unevaluatedProperties: false" at the
schema top-level.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 .../devicetree/bindings/media/i2c/ovti,ov02a10.yaml       | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
index 763cebe03dc2..67c1c291327b 100644
--- a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
@@ -68,12 +68,6 @@ properties:
       marked GPIO_ACTIVE_LOW.
     maxItems: 1
 
-  rotation:
-    enum:
-      - 0    # Sensor Mounted Upright
-      - 180  # Sensor Mounted Upside Down
-    default: 0
-
   port:
     $ref: /schemas/graph.yaml#/$defs/port-base
     additionalProperties: false
@@ -114,7 +108,7 @@ required:
   - reset-gpios
   - port
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.42.0


