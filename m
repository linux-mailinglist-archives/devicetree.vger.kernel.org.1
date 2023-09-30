Return-Path: <devicetree+bounces-4832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 307387B415C
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:00:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 773EDB20973
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88E2D16417;
	Sat, 30 Sep 2023 15:00:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872E214A8E
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 15:00:14 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F597C6;
	Sat, 30 Sep 2023 08:00:12 -0700 (PDT)
Received: from uno.internal.cocoon-space.com (lfbn-idf1-1-343-200.w86-195.abo.wanadoo.fr [86.195.61.200])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5A056DD9;
	Sat, 30 Sep 2023 16:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696085906;
	bh=6F9PgWLZB6EPyUd4j7VgRyUyQveSGnsgIkKnzukeeBM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gRiruWktvMUMo1Tqz925hAqeg2gsPmKHShjeGNdVAFrnLVEbE+qgoyahdpx7ASLlf
	 cDBIDOx7bgonApO+I52ADL58hcNoZTv/Lku7tS2pmi9VGk8qJdbq27jsPK2m7nMFFN
	 WJ99GGyiIkqiD1bza9UHxF+kwQ7OtcaZQ+DpwDiI=
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
Subject: [PATCH v3 1/7] media: dt-bindings: hynix,hi846: Add video-interface-device properties
Date: Sat, 30 Sep 2023 16:59:45 +0200
Message-ID: <20230930145951.23433-2-jacopo.mondi@ideasonboard.com>
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


