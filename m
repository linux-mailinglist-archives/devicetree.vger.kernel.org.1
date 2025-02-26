Return-Path: <devicetree+bounces-151366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20793A458CF
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 09:50:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B4353AAD15
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 08:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF3D217F31;
	Wed, 26 Feb 2025 08:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="B6NF6l0c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309A920CCF1
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 08:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740559812; cv=none; b=DWB7XbGTINz2NvFXAxARPHqf9w/RglQEOnTKn5d9bC2mf354DKK1aLP1R373ANhaUfMsZOVLt9rVOp+kE75ttC2UTdk92lGqac+cQOwxtSbPYULbyrI3cV4rDNeggmyqjHqM4jX75jn6onxwWiOUoyfpVsb/677sozckcSSI5Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740559812; c=relaxed/simple;
	bh=ZUxt7fPoSec1cJIjI5aOSfwsDXy4gbbekW/Y/DRjqys=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n2yTP0mcVFzlaWvJiMGH/n8hcz5ptmbCWkzmU9/p/LrA/8+jO1x4Y+4PzNKWtRajjt7LgN0cToM3h4LfkqKxhmoO4lkGK6q7Iu67NSLyXOQScRi+maWiliEtRl8j8rrjcjngmARPsZMtfn36AV9JplF9QW/y2yGVCYAEoR61zFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=B6NF6l0c; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=bGkUk7FpBRO6uhsFQd0B1g4kp0kbIiSm3K/yIZLqmwM=; b=B6NF6l
	0c+evF8uBcrMLRlzR0ObdCXiZerLp+GESMxiD+buPAdz9F9s10Uphfztl9vImJtj
	10zuZMuS7UQdUhS7mjd4/EnQ1h5iVLlixYX05HOfovfbC4rfOrlARBA23DHHuvIo
	FPZrwpmYDLXQhqJPH3rRN3e6FWETmcCV1wgrDW/YNxtCQOhkGPbc9K1i7gboWovg
	00odTmlwIUlsnH7hKdAaEPeKnqgJlmsQEIOemOFYrGX1MUDy3tpcQNG+Rh5Zku0z
	f7fUzKfnYdTaGeeTEnL6AM1ndzL4G1aCESvZv2D9aN+Z2CMAPZq8bFDilcs/dzBq
	lDHPtPIxLbeZpqFA==
Received: (qmail 500409 invoked from network); 26 Feb 2025 09:50:04 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Feb 2025 09:50:04 +0100
X-UD-Smtp-Session: l3s3148p1@qA3bqAcvcq4gAwDPXxaLANR24ZQNPy5l
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: ARM: at91: add Calao USB boards
Date: Wed, 26 Feb 2025 09:49:37 +0100
Message-ID: <20250226084938.3436-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
References: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

They have not been added so far. dtbs_check complains loudly.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 .../devicetree/bindings/arm/atmel-at91.yaml   | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 02a8f6aad541..3a34b7a2e8d4 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -40,6 +40,31 @@ properties:
           - const: atmel,at91sam9260
           - const: atmel,at91sam9
 
+      - description: Calao USB A9260
+        items:
+          - const: calao,usb-a9260
+          - const: atmel,at91sam9260
+          - const: atmel,at91sam9
+
+      - description: Calao USB A9263
+        items:
+          - const: calao,usb-a9263
+          - const: atmel,at91sam9263
+          - const: atmel,at91sam9
+
+      - description: Calao USB A9G20
+        items:
+          - const: calao,usb-a9g20
+          - const: atmel,at91sam9g20
+          - const: atmel,at91sam9
+
+      - description: Calao USB A9G20-LPW
+        items:
+          - const: calao,usb-a9g20-lpw
+          - const: calao,usb-a9g20
+          - const: atmel,at91sam9g20
+          - const: atmel,at91sam9
+
       - items:
           - enum:
               - overkiz,kizboxmini-base # Overkiz kizbox Mini Base Board
-- 
2.45.2


