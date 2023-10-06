Return-Path: <devicetree+bounces-6480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 426AB7BB7EE
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:41:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C7D31C20980
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:41:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 850291D545;
	Fri,  6 Oct 2023 12:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="oBcDJBiI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A62812B8C
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:41:31 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E3A8C6;
	Fri,  6 Oct 2023 05:41:30 -0700 (PDT)
Received: from uno.LocalDomain (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 86BD91ACE;
	Fri,  6 Oct 2023 14:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696595981;
	bh=RFwcjAgMc0f/+pu8fiqIoawMvTZODY0Bi86FZwYIFJo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oBcDJBiIyF0IvixiOGY7Pp6te68R9TF8xu695ijtXyDKdgXZpAvt2r17PT97RxxXK
	 p7uJV6AcKxZFC6l6gE56vTm33gBstOn9yQSzKs7jfOVqctMjZMhlNt/roz1pIBVBuC
	 9HM6o2pdM38AvKvAitaUP2EV69M8UaIwGRQo45PM=
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
	martink@posteo.de,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 2/6] media: dt-bindings: ovti,ov02a10: Allow props from video-interface-devices
Date: Fri,  6 Oct 2023 14:40:57 +0200
Message-ID: <20231006124101.181555-3-jacopo.mondi@ideasonboard.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231006124101.181555-1-jacopo.mondi@ideasonboard.com>
References: <20231006124101.181555-1-jacopo.mondi@ideasonboard.com>
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

There is no reason to restrict the allowed rotation degrees to 0 and 180,
as the sensor can be mounted with any rotation.

Also, as all the properties described by video-interface-devices.yaml are
allowed for the image sensor, make them accepted by changing
"additionalProperties: false" to "unevaluatedProperties: false" at the
schema top-level.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>
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


