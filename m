Return-Path: <devicetree+bounces-3954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 848B07B0B1F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 19:33:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 839541C20949
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF3644BDA1;
	Wed, 27 Sep 2023 17:33:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C8A37C85
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 17:33:03 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8741F5;
	Wed, 27 Sep 2023 10:33:00 -0700 (PDT)
Received: from p200300ccff4287001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff42:8700:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qlYP1-004Exw-P3; Wed, 27 Sep 2023 19:32:47 +0200
Received: from andi by aktux with local (Exim 4.96)
	(envelope-from <andreas@kemnade.info>)
	id 1qlYP1-0091bG-07;
	Wed, 27 Sep 2023 19:32:47 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: jic23@kernel.org,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	bcousson@baylibre.com,
	tony@atomide.com,
	andreas@kemnade.info,
	chenhuiz@axis.com,
	jean-baptiste.maneyrol@tdk.com,
	andy.shevchenko@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: iio: imu: mpu6050: Add level shifter
Date: Wed, 27 Sep 2023 19:32:43 +0200
Message-Id: <20230927173245.2151083-2-andreas@kemnade.info>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230927173245.2151083-1-andreas@kemnade.info>
References: <20230927173245.2151083-1-andreas@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a level shifter flag as found in ancient platform data struct:
level_shifter: 0: VLogic, 1: VDD

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 .../devicetree/bindings/iio/imu/invensense,mpu6050.yaml      | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
index 1db6952ddca5e..297b8a1a7ffbc 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
@@ -48,6 +48,11 @@ properties:
 
   mount-matrix: true
 
+  invensense,level-shifter:
+    type: boolean
+    description: |
+      From ancient platform data struct: false: VLogic, true: VDD
+
   i2c-gate:
     $ref: /schemas/i2c/i2c-controller.yaml
     unevaluatedProperties: false
-- 
2.39.2


