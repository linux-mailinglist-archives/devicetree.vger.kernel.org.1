Return-Path: <devicetree+bounces-4770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5067B7B3E85
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 07:51:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5CEF4282121
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 05:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FD7F6FA9;
	Sat, 30 Sep 2023 05:51:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035735CBC
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 05:51:42 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB0141AB;
	Fri, 29 Sep 2023 22:51:40 -0700 (PDT)
Received: from uno.lan (unknown [IPv6:2001:861:388f:1650:2f32:b6ff:a885:7d5e])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E73CE1ADE;
	Sat, 30 Sep 2023 07:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696052991;
	bh=s3wxtA/t1Ob6LJvadDpVETARmKrccj85Gtrtgu3ZXn4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M2Ky25jbu3Cm5aPZ5sl07nrjLDuO/fbUQzgWsjYeToCDMbw2vZXFVf+gPtlzJfKcH
	 6dO6b8+3wwUf6AeezT9KpAZn5EAJJkDo54tofRH0NDUdzFQ5io/CYYHbcYxaPp/QKD
	 m+Ao4EwuvqKdcOIO2/QBmXz3kAB+GKfsoWHlyG7c=
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
Subject: [PATCH v2 5/7] media: bindings: ovti,ov5640: Fix handling of video-interface-device
Date: Sat, 30 Sep 2023 07:51:07 +0200
Message-ID: <20230930055110.1986-6-jacopo.mondi@ideasonboard.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230930055110.1986-1-jacopo.mondi@ideasonboard.com>
References: <20230930055110.1986-1-jacopo.mondi@ideasonboard.com>
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


