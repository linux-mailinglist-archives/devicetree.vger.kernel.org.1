Return-Path: <devicetree+bounces-2926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3894B7ACEAF
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 05:22:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DF0E9281354
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D64845677;
	Mon, 25 Sep 2023 03:22:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A1E7F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 03:22:32 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5440EA3;
	Sun, 24 Sep 2023 20:22:30 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPA id 06D9FE0003;
	Mon, 25 Sep 2023 03:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1695612148;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=eKfAb9dM9HwZutIwv6iuMVTU5vDPqNRcb/JuqRISlpc=;
	b=VYt2ld/QSBksI0sK2Zb46u9XVVfPjTn+ibxWXtoA+pc620ovzyeEntnjzlvCAWCFceT+pG
	a/p7P0jBbPvahwhzyGOpVnetQEpg0OlyrPnSVZGyQT5Jc7l0zzc0eetc+dpFacxx9LJPJ+
	PfkFvFoDlaMhlW+SkV1SMssyrKqrL6d4NFPBddhshLa3nLcJjxtnHAggc7NAmE7Muoa7Mp
	9/uGhVP8jRcbYtsciTHcBcd8bcqBMFj04jcspIv5oaALRElxGX5uukVYjy6yBGF/U/EDun
	06AfTT3VLpyJ6a214vLYKBZ4hSp9fNQ555dbYhW7VUnDbiWHEmQJGZV9cUymOw==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: devicetree@vger.kernel.org
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Jeff LaBundy <jeff@labundy.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v2] dt-bindings: input: touchscreen: goodix: clarify irq-gpios misleading text
Date: Mon, 25 Sep 2023 05:22:08 +0200
Message-Id: <20230925032208.11698-1-luca.ceresoli@bootlin.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: luca.ceresoli@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The irq-gpios description misleading, apparently saying that driving the
IRQ GPIO resets the device, which is even more puzzling as there is a reset
GPIO as well.

In reality the IRQ pin can be driven during the reset sequence to configure
the client address, as it becomes clear after checking both the datasheet
and the driver code. Improve the text to clarify that.

Also rephrase to remove reference to the driver, which is not appropriate
in the bindings.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

---

Changed in v2:
 - reworded to clarify even further
---
 .../devicetree/bindings/input/touchscreen/goodix.yaml        | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
index 3d016b87c8df..2a2d86cfd104 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
@@ -37,8 +37,9 @@ properties:
     maxItems: 1
 
   irq-gpios:
-    description: GPIO pin used for IRQ. The driver uses the interrupt gpio pin
-      as output to reset the device.
+    description: GPIO pin used for IRQ input. Additionally, this line is
+      sampled by the device on reset deassertion to select the I2C client
+      address, thus it can be driven by the host during the reset sequence.
     maxItems: 1
 
   reset-gpios:
-- 
2.34.1


