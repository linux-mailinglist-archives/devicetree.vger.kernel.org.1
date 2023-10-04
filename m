Return-Path: <devicetree+bounces-5914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B077B857C
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 18:39:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 14E6E281A77
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3BC01C292;
	Wed,  4 Oct 2023 16:39:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A28551BDF0
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 16:39:37 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::221])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 252E3BF;
	Wed,  4 Oct 2023 09:39:32 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 069C524000B;
	Wed,  4 Oct 2023 16:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696437571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7f+ee0WdRWVkKBi7s0jg64td7knfr+0cjqvJ+YqfIIQ=;
	b=YH3b4eeqveJlwUqVwa+J5j5GsVCDs0k5HoffOuI38jtJ605lgY30Hq7Hcu8Hjqe3zPTBSq
	WQZnTqLZY//WbT/Eaa33sUTvcOrFOXyieYcdkmCteL/hwoNqEDbZY+pb9/+KMUVUZrSLsN
	v5JEmI7Was6Ez++g2xOURs3kX5iDjt3ZKXR6qCYDMWT8QxD05/aRv+lpI0fqZlfeeOmIRW
	mkwHiPC5sNLtdTt/1EJb4tdtueYpPemlYxgper1MK1tYQiGAL+MhqK6wWRnUMBDwvDMU+U
	yryn5ZjrVYwnma0HGhDsDVUC/EJ9BZCSGZ73bisSo0A/vCkaiOK7omYw/tkRFQ==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 04 Oct 2023 18:39:27 +0200
Subject: [PATCH 1/2] dt-bindings: trivial-devices: Fix MEMSIC MXC4005
 compatible string
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231004-mxc4005-device-tree-support-v1-1-e7c0faea72e4@bootlin.com>
References: <20231004-mxc4005-device-tree-support-v1-0-e7c0faea72e4@bootlin.com>
In-Reply-To: <20231004-mxc4005-device-tree-support-v1-0-e7c0faea72e4@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.12.3
X-GND-Sasl: luca.ceresoli@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The correct name of this chip is MXC4005, not MX4005. This is confirmed
both by the manufacturer website and by the title of the original commit,
which added other MXCxxxx devices as well but only this one misses a "c" in
the compatible string.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Fixes: d9bf5d37fd58 ("dt-bindings:trivial-devices: Add memsic,mxc4005/mxc6255/mxc6655 entries")

---

The original commit date being April 1st is possibly clarifying the origin
of the issue! :)
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index cd58179ae337..430a814f64a5 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -232,7 +232,7 @@ properties:
             # MEMSIC magnetometer
           - memsic,mmc35240
             # MEMSIC 3-axis accelerometer
-          - memsic,mx4005
+          - memsic,mxc4005
             # MEMSIC 2-axis 8-bit digital accelerometer
           - memsic,mxc6225
             # MEMSIC 2-axis 8-bit digital accelerometer

-- 
2.34.1


