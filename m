Return-Path: <devicetree+bounces-6484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9678D7BB7F6
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:41:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A73328235D
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7251D55B;
	Fri,  6 Oct 2023 12:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="m4nhx5Xg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B078012B8C
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:41:36 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFFE7C2;
	Fri,  6 Oct 2023 05:41:35 -0700 (PDT)
Received: from uno.LocalDomain (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 20AD32D5E;
	Fri,  6 Oct 2023 14:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696595985;
	bh=64Q+9ZGwSE5yDzSOTBm7E/+3Wa5f/BX3ys6xGIJYFKI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=m4nhx5XgP06EPdQnw3FPiauHm6WgT9a/HuwI0sm9Q3zTpnINL6IgF1r0jJ6/2jfOU
	 Als/L4Tk0dD9OYWRywgtpKsezy9aStEnamEL4TGoQigFY0pt9vshY/k5u99/+QJD1/
	 lN1z5ksm/wa/k4Z7glY0xu1yAjhbu4xT62Pi2adI=
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
	Michael Riesch <michael.riesch@wolfvision.net>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 6/6] media: dt-bindings: sony,imx415: Allow props from video-interface-devices
Date: Fri,  6 Oct 2023 14:41:01 +0200
Message-ID: <20231006124101.181555-7-jacopo.mondi@ideasonboard.com>
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

All the properties described by video-interface-devices.yaml are
allowed for the image sensor, make them accepted by changing
"additionalProperties: false" to "unevaluatedProperties: false" at the
schema top-level.

Because all properties are now accepted, there is no need to explicitly
allow them in the schema.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/media/i2c/sony,imx415.yaml     | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml
index ffccf5f3c9e3..8ea3ddd251f6 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml
@@ -44,14 +44,6 @@ properties:
     description: Sensor reset (XCLR) GPIO
     maxItems: 1

-  flash-leds: true
-
-  lens-focus: true
-
-  orientation: true
-
-  rotation: true
-
   port:
     $ref: /schemas/graph.yaml#/$defs/port-base

@@ -88,7 +80,7 @@ required:
   - ovdd-supply
   - port

-additionalProperties: false
+unevaluatedProperties: false

 examples:
   - |
--
2.42.0


