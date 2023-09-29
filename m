Return-Path: <devicetree+bounces-4668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 254737B3680
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:18:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 74BCDB20C5F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AD4751B8D;
	Fri, 29 Sep 2023 15:18:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FE151B89
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 15:18:49 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B097F9;
	Fri, 29 Sep 2023 08:18:47 -0700 (PDT)
Received: from uno.localdomain (mob-5-90-203-152.net.vodafone.it [5.90.203.152])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 012F51257;
	Fri, 29 Sep 2023 17:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696000623;
	bh=BjVknzxC/ZiIEtXYgSVsi4tl5XfVYSUxx4bGa3XroqM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fnjgEHE7DyfaL6Bs1A/4CZhO4vlA5fFMbQtn0VRURMzrre929/GptQiQqhv8KRV32
	 Lkwuf/Y/k3MTJQcI25s6qytaZtLeqe6wMfgKDc0vFhfLFgfEQe705paEV6Ioba4JeE
	 0Tk/DrK3BW3+7mGvMP7RQ0X2RYOxgB7PazKToTdo=
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
Subject: [PATCH 1/7] media: bindings: hynix,hi846: Add video-interface-device properties
Date: Fri, 29 Sep 2023 17:18:19 +0200
Message-ID: <20230929151825.6535-2-jacopo.mondi@ideasonboard.com>
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

Allow properties from video-interface-device.yaml for the SK Hynix Hi-846
sensor.

All properties specified in video-interface-device.yaml schema are
valid, so make them accepted by changing "additionalProperties: false"
to "unevaluatedProperties: false" at the schema top-level.

Add two properties from video-interface-device.yaml to the example
to validate the new schema.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 .../devicetree/bindings/media/i2c/hynix,hi846.yaml         | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
index 1e2df8cf2937..60f19e1152b3 100644
--- a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
@@ -14,6 +14,9 @@ description: |-
   interface and CCI (I2C compatible) control bus. The output format
   is raw Bayer.

+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
 properties:
   compatible:
     const: hynix,hi846
@@ -86,7 +89,7 @@ required:
   - vddd-supply
   - port

-additionalProperties: false
+unevaluatedProperties: false

 examples:
   - |
@@ -109,6 +112,8 @@ examples:
             vddio-supply = <&reg_camera_vddio>;
             reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
             shutdown-gpios = <&gpio5 4 GPIO_ACTIVE_LOW>;
+            orientation = <0>;
+            rotation = <0>;

             port {
                 camera_out: endpoint {
--
2.42.0


