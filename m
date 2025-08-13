Return-Path: <devicetree+bounces-204279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA42B24D36
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 17:22:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1221B3BB71F
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 15:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD2861F8BCB;
	Wed, 13 Aug 2025 15:17:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075A51EF389
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 15:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755098220; cv=none; b=HLSdh7kHqCgi7eqb/QgzryQGj2pbS1MlmrN+JuaJZA49EF+59dGY+/DnRP27Ij0rlA5P99QqGbQs/4qXG05OchGpAm1i04JXNq+Sh5Av3u0brjKHpx6l1QX5V+ucmQkjOD1fwN17RpjWqRc2u4xMNqqNc6BQP/XtR1Fhzx9yyHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755098220; c=relaxed/simple;
	bh=oKp2lZiQ3oJCMCm9FxULdr589AuLvdQ0SykmCkbL7OI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b+jCQUjbH05Iat/LCDvUtBqokfem/wqODnlF01RB8+D89FG1/MikhQp+SgZBlazjmBw8vx1acu82AZfklWDnk1oHDF2uqXd1Ia6d4Igoyjd1GfMFP/gThwqXTToKqTCjEI7gSdTgdLRXYXUGj5dHdc8IJkW2v1BEkte14BtEQtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=watter.com; spf=pass smtp.mailfrom=linux.dev; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=watter.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Ben Collins <bcollins@watter.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Hepp <andrew.hepp@ahepp.dev>
Cc: Ben Collins <bcollins@watter.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] dt-bindings: iio: mcp9600: Add compatible for microchip,mcp9601
Date: Wed, 13 Aug 2025 15:15:51 +0000
Message-ID: <20250813151614.12098-2-bcollins@watter.com>
In-Reply-To: <20250813151614.12098-1-bcollins@watter.com>
References: <20250813151614.12098-1-bcollins@watter.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

MCP9601 is a superset of MCP9600 and is supported by the driver.

Signed-off-by: Ben Collins <bcollins@watter.com>
---
 .../bindings/iio/temperature/microchip,mcp9600.yaml         | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
index d2cafa38a5442..d8af0912ce886 100644
--- a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
+++ b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/iio/temperature/microchip,mcp9600.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip MCP9600 thermocouple EMF converter
+title: Microchip MCP9600 and similar thermocouple EMF converters
 
 maintainers:
   - Andrew Hepp <andrew.hepp@ahepp.dev>
@@ -14,7 +14,9 @@ description:
 
 properties:
   compatible:
-    const: microchip,mcp9600
+    enum:
+      - microchip,mcp9600
+      - microchip,mcp9601
 
   reg:
     maxItems: 1
-- 
2.50.1


