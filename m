Return-Path: <devicetree+bounces-4672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D197E7B3682
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:18:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 02B631C20956
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7CA851B90;
	Fri, 29 Sep 2023 15:18:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE5751B8B
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 15:18:55 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87453D6;
	Fri, 29 Sep 2023 08:18:53 -0700 (PDT)
Received: from uno.localdomain (mob-5-90-203-152.net.vodafone.it [5.90.203.152])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 921BC3358;
	Fri, 29 Sep 2023 17:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696000629;
	bh=RFtJSOjV6FtpQpxrkNDSyJnksxeXGW77+2EWI+5rKtM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ees+ngApHST90uZHupvsinvDi/1ewwF3Tzkhxvkh6kZEf3JD+RAScBXvZ5Ny7kmcC
	 nctx0HASfUSLJroqzt9jvSI+F6SWgkPEPCUIfoN4ZKeftd7lOGpFa+WhDG+97mvjNY
	 VH6QdqKgLQTZHOaGKSV1NPVagkSnmTxrbF8fkE+w=
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
	Mikhail Rudenko <mike.rudenko@gmail.com>
Subject: [PATCH 4/7] media: bindings: ovti,ov4689: Fix handling of video-interface-device
Date: Fri, 29 Sep 2023 17:18:22 +0200
Message-ID: <20230929151825.6535-5-jacopo.mondi@ideasonboard.com>
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
Omnivision OV4689.

All the properties described by video-interface-device.yaml are
allowed for the image sensor, make them accepted by changing
"additionalProperties: false" to "unevaluatedProperties: false" at the
schema top-level.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 .../devicetree/bindings/media/i2c/ovti,ov4689.yaml          | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov4689.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov4689.yaml
index 50579c947f3c..d96199031b66 100644
--- a/Documentation/devicetree/bindings/media/i2c/ovti,ov4689.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov4689.yaml
@@ -52,10 +52,6 @@ properties:
     description:
       GPIO connected to the reset pin (active low)

-  orientation: true
-
-  rotation: true
-
   port:
     $ref: /schemas/graph.yaml#/$defs/port-base
     additionalProperties: false
@@ -95,7 +91,7 @@ required:
   - dvdd-supply
   - port

-additionalProperties: false
+unevaluatedProperties: false

 examples:
   - |
--
2.42.0


