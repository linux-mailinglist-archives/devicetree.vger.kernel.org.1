Return-Path: <devicetree+bounces-4837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D89287B4164
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:00:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C3FA41C20B9C
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84389156EB;
	Sat, 30 Sep 2023 15:00:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6CC61642B
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 15:00:23 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCD9CE5;
	Sat, 30 Sep 2023 08:00:22 -0700 (PDT)
Received: from uno.internal.cocoon-space.com (lfbn-idf1-1-343-200.w86-195.abo.wanadoo.fr [86.195.61.200])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B289A11BF;
	Sat, 30 Sep 2023 16:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696085907;
	bh=s3wxtA/t1Ob6LJvadDpVETARmKrccj85Gtrtgu3ZXn4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EryTtOtjxAC+XXGRGi5wYeXvMkImaQik8a3QusldzJb7DAnCmOKUkm6XRezrvdQUg
	 OppvSQUss2SCR9gM/NeMJDCjzpMER6fhVtcmfeZpVjCeI58+eSAjMx7dhMMala1uis
	 NyOdi0tHvwbJaKtvZAxDiCwqE395WncXH7ozVVZs=
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
	Steve Longerbeam <slongerbeam@gmail.com>
Subject: [PATCH v3 5/7] media: dt-bindings: ovti,ov5640: Fix handling of video-interface-device
Date: Sat, 30 Sep 2023 16:59:49 +0200
Message-ID: <20230930145951.23433-6-jacopo.mondi@ideasonboard.com>
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
Omnivision OV5640 sensor.

There is no reason to restrict the allowed rotation degrees to 0 and 180,
as the sensor can be mounted with any rotation.

Also, as all the properties described by video-interface-device.yaml are
allowed for the image sensor, make them accepted by changing
"additionalProperties: false" to "unevaluatedProperties: false" at the
schema top-level.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 .../devicetree/bindings/media/i2c/ovti,ov5640.yaml         | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov5640.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov5640.yaml
index a621032f9bd0..2c5e69356658 100644
--- a/Documentation/devicetree/bindings/media/i2c/ovti,ov5640.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov5640.yaml
@@ -44,11 +44,6 @@ properties:
     description: >
       Reference to the GPIO connected to the reset pin, if any.

-  rotation:
-    enum:
-      - 0
-      - 180
-
   port:
     description: Digital Output Port
     $ref: /schemas/graph.yaml#/$defs/port-base
@@ -85,7 +80,7 @@ required:
   - DOVDD-supply
   - port

-additionalProperties: false
+unevaluatedProperties: false

 examples:
   - |
--
2.42.0


