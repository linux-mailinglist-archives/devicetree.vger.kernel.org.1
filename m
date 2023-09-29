Return-Path: <devicetree+bounces-4674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 636597B368A
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:19:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id D15DCB20C8E
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E83351B92;
	Fri, 29 Sep 2023 15:19:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FC451B8B
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 15:19:02 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DFD4DD;
	Fri, 29 Sep 2023 08:19:00 -0700 (PDT)
Received: from uno.localdomain (mob-5-90-203-152.net.vodafone.it [5.90.203.152])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5F29C6EF;
	Fri, 29 Sep 2023 17:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696000636;
	bh=4FstZY4S0coCaEuRcKUIBoOeqLiCYYbNTRc+U969h84=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=N7nDZ+gwu5INgJCgY0RBL6FXuCDSnlH3vevzS/Hd3HVvwLNjme2xGFgY8rdro+iBv
	 oDnN00vfcy7BjUP8enELDVFOU3XdI6vHgyob7smmMTRaCUx3cVynHlHWZL7ksuSAoy
	 Wp17cEfbr0ETUvByX/gfFUYWFAbNb73tMkCbTCyk=
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
	Ricardo Ribalda <ribalda@kernel.org>
Subject: [PATCH 6/7] media: bindings: sony,imx214: Fix handling of video-interface-device
Date: Fri, 29 Sep 2023 17:18:24 +0200
Message-ID: <20230929151825.6535-7-jacopo.mondi@ideasonboard.com>
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
Sony IMX214.

All the properties described by video-interface-device.yaml are
allowed for the image sensor, make them accepted by changing
"additionalProperties: false" to "unevaluatedProperties: false" at the
schema top-level.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 Documentation/devicetree/bindings/media/i2c/sony,imx214.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx214.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx214.yaml
index e2470dd5920c..60903da84e1f 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx214.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx214.yaml
@@ -91,7 +91,7 @@ required:
   - vddd-supply
   - port

-additionalProperties: false
+unevaluatedProperties: false

 examples:
   - |
--
2.42.0


