Return-Path: <devicetree+bounces-223904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7386FBBECBA
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 19:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62E723B0C14
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 17:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D8B823F421;
	Mon,  6 Oct 2025 17:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="jFIi81if"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4136B23E35E
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 17:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759771291; cv=none; b=TMcSUTJR7kCFFe5RpEdjt8SYZlckiknJJicgeLdv/X5XUfEUkExAkoXPEKssMemkIWte+m9jMdhjNgmwqtA6CgjfB3gtqYeh7KlTJFkKs+VAmojWu5m351yjv75B9CcCyioSebO4gvWJDDb+xZAxmBQ13T51mYxjUcXGzzv6nZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759771291; c=relaxed/simple;
	bh=pFr8KcuQ2+sSxrziP4K3qLT4ooBWEBVNxU9gnYVjr1Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cRh7KHSexLMrfCUVQrOnmFRZXkh4QupAPgZ6KLwAlIdukiR8h88tXuBm/hZSO2lJZ29brvJYzKRMKQuK21zmUfQpvHo70QPHAOxoGHdhURzOaY17wjIzMJxFT2n+6pfvS/Oh/9AnMTeYhRgaDhz64LktTMbM8JNIoVBkzyrb3bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=jFIi81if; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=zIp53ZbIfcZdG/iY8vFuKbS6rQYn4mH5LTGhBYGF810=; b=jFIi81
	ifovBhwA1BZlZ/fx4s3m3K9c8v7ts6ezc5CVq7PqUnp0WvcK/Smyv4IjYvSTel1E
	krUFOD9+FluXHELclfLKAqKbKMV5Tl5eIuwUIA786pGDDF2XxQ8M00mO3RqyToLA
	qmuRv64uDUpQ6xcFjY+W70Yqn5XV/UNmG9jAxRleGYrC8oPFoafVxOjuBk0WwMnc
	zs0ad4f2nwz0ZdEcRcpyZKVivnED9kzLerX/INmssPEWwdOrPwN7lJQ0CZ04OE1j
	b/Hk7kg0MoVimm2OFfjEcjA5QLg8K7/iNU+o7Km9910TIBjF/vJvmoEG26l93uW3
	ATkUylPrfBIBTsyw==
Received: (qmail 1872511 invoked from network); 6 Oct 2025 19:21:21 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 6 Oct 2025 19:21:21 +0200
X-UD-Smtp-Session: l3s3148p1@iw8hroBATsUujnsE
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 1/2] dt-bindings: iio: accel: adxl345: document second interrupt
Date: Mon,  6 Oct 2025 19:21:17 +0200
Message-ID: <20251006172119.2888-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251006172119.2888-1-wsa+renesas@sang-engineering.com>
References: <20251006172119.2888-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The pinout of all the supported chips in this binding have two interrupt
pins. Document the second one, too, even though the Linux driver
currently does not support the second interrupt. Boards may have it
wired nonetheless.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Passes dt_binding_check. But uncovers another issue. See coverletter.

 .../bindings/iio/accel/adi,adxl345.yaml          | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
index a23a626bfab6..806b0250ec07 100644
--- a/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
+++ b/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
@@ -35,11 +35,16 @@ properties:
   spi-3wire: true
 
   interrupts:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   interrupt-names:
-    items:
-      - enum: [INT1, INT2]
+    oneOf:
+      - items:
+          - enum: [INT1, INT2]
+      - items:
+          - const: INT1
+          - const: INT2
 
 dependencies:
   interrupts: [ interrupt-names ]
@@ -84,7 +89,8 @@ examples:
             spi-cpol;
             spi-cpha;
             interrupt-parent = <&gpio0>;
-            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
-            interrupt-names = "INT2";
+            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>,
+                         <1 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "INT1", "INT2";
         };
     };
-- 
2.47.2


