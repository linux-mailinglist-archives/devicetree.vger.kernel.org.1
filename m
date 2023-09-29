Return-Path: <devicetree+bounces-4673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A42277B3687
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:19:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 08A35B20C78
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 709FA51B90;
	Fri, 29 Sep 2023 15:19:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCB651B8B
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 15:18:59 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBC26DD;
	Fri, 29 Sep 2023 08:18:57 -0700 (PDT)
Received: from uno.localdomain (mob-5-90-203-152.net.vodafone.it [5.90.203.152])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6FC6034B5;
	Fri, 29 Sep 2023 17:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696000634;
	bh=/rHxEB83L7ZPE3qnJZqy34OVeUaWFT9aJaxP7+WOcfI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fJ59k4g5qsbKS5EPVZ+pwQQcF4zVhOeEhsWfJD1vmCHKQGPXrXGWSniAHP/1+zb+H
	 WFd1hw6mDM5Gg8lpm5ZHygfvHUz0wYTgEAO3O9pPfzPXxBNgi6VCgvo8m89rF2fMFY
	 3dA6de9fM7bnzWJKT467fpi6888YafwShoMfnCro=
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
Subject: [PATCH 5/7] media: bindings: ovti,ov5640: Fix handling of video-interface-device
Date: Fri, 29 Sep 2023 17:18:23 +0200
Message-ID: <20230929151825.6535-6-jacopo.mondi@ideasonboard.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929151825.6535-1-jacopo.mondi@ideasonboard.com>
References: <20230929151825.6535-1-jacopo.mondi@ideasonboard.com>
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
index a621032f9bd0..58c442cfb612 100644
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
+unevaluatatedProperties: false

 examples:
   - |
--
2.42.0


