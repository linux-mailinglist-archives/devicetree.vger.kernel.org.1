Return-Path: <devicetree+bounces-1927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0B17A90BA
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 03:53:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6ABC11C209C8
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 01:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52CE715AE;
	Thu, 21 Sep 2023 01:53:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C0A138C
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 01:53:07 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5CAF8AF;
	Wed, 20 Sep 2023 18:53:04 -0700 (PDT)
Received: from loongson.cn (unknown [10.20.42.201])
	by gateway (Coremail) with SMTP id _____8DxFej+oQtlcHEqAA--.22794S3;
	Thu, 21 Sep 2023 09:53:02 +0800 (CST)
Received: from localhost.localdomain (unknown [10.20.42.201])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8AxndzwoQtlCvsMAA--.26254S3;
	Thu, 21 Sep 2023 09:53:01 +0800 (CST)
From: Yinbo Zhu <zhuyinbo@loongson.cn>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Jianmin Lv <lvjianmin@loongson.cn>,
	wanghongliang@loongson.cn,
	loongson-kernel@lists.loongnix.cn,
	Yinbo Zhu <zhuyinbo@loongson.cn>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/2] gpio: dt-bindings: add more loongson gpio chip support
Date: Thu, 21 Sep 2023 09:52:46 +0800
Message-Id: <20230921015247.23478-2-zhuyinbo@loongson.cn>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230921015247.23478-1-zhuyinbo@loongson.cn>
References: <20230921015247.23478-1-zhuyinbo@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:AQAAf8AxndzwoQtlCvsMAA--.26254S3
X-CM-SenderInfo: 52kx5xhqerqz5rrqw2lrqou0/
X-Coremail-Antispam: 1Uk129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7KY7
	ZEXasCq-sGcSsGvfJ3UbIjqfuFe4nvWSU5nxnvy29KBjDU0xBIdaVrnUUvcSsGvfC2Kfnx
	nUUI43ZEXa7xR_UUUUUUUUU==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patch was to add loongson 2k0500, 2k2000 and 3a5000 gpio chip
dt-bindings support in yaml file.

Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/gpio/loongson,ls-gpio.yaml       | 21 +++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/loongson,ls-gpio.yaml b/Documentation/devicetree/bindings/gpio/loongson,ls-gpio.yaml
index fb86e8ce6349..cf3b1b270aa8 100644
--- a/Documentation/devicetree/bindings/gpio/loongson,ls-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/loongson,ls-gpio.yaml
@@ -11,9 +11,22 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - loongson,ls2k-gpio
-      - loongson,ls7a-gpio
+    oneOf:
+      - enum:
+          - loongson,ls2k-gpio
+          - loongson,ls2k0500-gpio0
+          - loongson,ls2k0500-gpio1
+          - loongson,ls2k2000-gpio0
+          - loongson,ls2k2000-gpio1
+          - loongson,ls2k2000-gpio2
+          - loongson,ls3a5000-gpio
+          - loongson,ls7a-gpio
+      - items:
+          - const: loongson,ls2k1000-gpio
+          - const: loongson,ls2k-gpio
+      - items:
+          - const: loongson,ls7a1000-gpio
+          - const: loongson,ls7a-gpio
 
   reg:
     maxItems: 1
@@ -49,7 +62,7 @@ examples:
     #include <dt-bindings/interrupt-controller/irq.h>
 
     gpio0: gpio@1fe00500 {
-      compatible = "loongson,ls2k-gpio";
+      compatible = "loongson,ls2k1000-gpio", "loongson,ls2k-gpio";
       reg = <0x1fe00500 0x38>;
       ngpios = <64>;
       #gpio-cells = <2>;
-- 
2.20.1


