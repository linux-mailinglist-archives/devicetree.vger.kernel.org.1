Return-Path: <devicetree+bounces-2207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D4F7A9CEE
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:25:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6618BB2113E
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EDBD168B6;
	Thu, 21 Sep 2023 19:24:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A53C17725
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 19:24:38 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29A11ED9D1;
	Thu, 21 Sep 2023 12:24:33 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id A460F80569;
	Thu, 21 Sep 2023 21:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1695324271;
	bh=LnqzDkIkJB71p5DHedzyiSlH17jUKONCgzbRG9loRMc=;
	h=From:To:Cc:Subject:Date:From;
	b=JeZK3Qi3sJ5CnJOSk+qB3hnU6g8JiQuZQA8IURKvWf819hj4yq1puz7OCvVjJn7tc
	 fSotTdFQuwFvGRYNC37EmIqAwzc6G8eQPy5tzQrasduWJf1/EUD4O8z9g5lglzQAN5
	 R7Z5q2DcmGp5bLLmT72T0elYlPKeDWLVk8ph1o7T3KyluSYHm8sIwSTYDeio+qZMb8
	 rUBJppC7g5xFuKRjxmkTyT3b7/BqvjJrEu0zrYxDw2R0stvmiZHOqBpJNCbNVdn0OR
	 rE+BT20FyscLs2qxU8vxKlI8wf1kmpytI3fFrJfgC9zd4nnLr5t/pMIuPFNAWuwMa5
	 Or2dy1BCzSUXA==
From: Marek Vasut <marex@denx.de>
To: devicetree@vger.kernel.org
Cc: Marek Vasut <marex@denx.de>,
	Alexandru Lazar <alazar@startmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH] dt-bindings: iio: adc: ti,ads1015: Document optional interrupt line
Date: Thu, 21 Sep 2023 21:24:20 +0200
Message-Id: <20230921192420.70643-1-marex@denx.de>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The ADS1015 can have optional IRQ line connected, document it in the DT bindings.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandru Lazar <alazar@startmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Baluta <daniel.baluta@nxp.com>
Cc: Jonathan Cameron <jic23@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
Cc: Marek Vasut <marex@denx.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-iio@vger.kernel.org
---
 Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
index e004659099c19..d605999ffe288 100644
--- a/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
@@ -23,6 +23,9 @@ properties:
   reg:
     maxItems: 1
 
+  interrupts:
+    maxItems: 1
+
   "#address-cells":
     const: 1
 
-- 
2.40.1


