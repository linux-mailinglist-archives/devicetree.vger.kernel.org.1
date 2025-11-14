Return-Path: <devicetree+bounces-238887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B69CC5EFA9
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 20:09:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 57FB8362E62
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 18:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121B52DFA24;
	Fri, 14 Nov 2025 18:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="AnUXM5Qo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177792DECD8
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 18:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763146672; cv=none; b=aOAaJfXL2o6Ze4KXw7ryGug4g/2SWB9eD958V82NqXy6ujoGxjxVzyXc1IQv4fZ9z+XKMAgEgrB8VsmhiDuUv6odSJBSFeXzYlBOM02FCxmCbC6lgYwiZoiL3xbazBmO7OxDkrPoa6wkDzSpLMTEYrNbnEjYBiDquyMEFrWWUII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763146672; c=relaxed/simple;
	bh=XwugoKuomUDrG+p0l71T9I9NwQMJJEnRIz/ooxl9piQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hQ79qfeLaFf0qhiXChajKieHXnAoKB8N0kTzRjRBLhq9GO5CE6pHzRejmnizr5kkvRT6aPq/UAfXsncd2rhtYEVEqu5m6CTGi2Wo6deOPfnVIfXHNbf6aIajod0D24UTQEvkKAMsFVLnkrCJ7PpNWnb6YmJ/XGmadtWQMn+/jow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=AnUXM5Qo; arc=none smtp.client-ip=209.85.166.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f68.google.com with SMTP id ca18e2360f4ac-9487e2b9622so181372239f.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1763146670; x=1763751470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hu93jrgt16GNM8HBZugqTHoqi52uFXrn0f1Yp7esaAs=;
        b=AnUXM5QoEIZYbFtyOT9Oc7S+PcVAdnpsGuh4h1GZzIGdWVPrluxjrJ6uwUHP5608Pp
         TWmc6/sBMdE6F5xl6JYmT3NjwCxdoLS04wydkxatRbtb4joJn9llO7njGaL1FCqQcTTt
         Tu7W6N/kUoDYo2M63xcH0qcmb2pB6tvA/fk5oEvm/Un0Mw8TtXnyN/HxwYZ1FrdVP0Wt
         x49bM0HjXegrZkjnQObakpINbN6NIXq3mBQiKmgk1SBASlbYOU6yBMZZN3y00d+hXTvf
         NZccxrCYpuaXFfV4lNE1hoPOua5/P3aH0R92CppBfNyaOSfuRwUS1yNgrVZEabKPAE2M
         U3Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763146670; x=1763751470;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hu93jrgt16GNM8HBZugqTHoqi52uFXrn0f1Yp7esaAs=;
        b=aaRk885oXISnwnrRB1DiY1ZnUm8UOLGZVMDP99zqYUZ6UAHQzj20gf0Q0UApqDelN1
         FeA+L/08jP0q0Vy918LFlsdiV+uqD8cnSYDOcynXOsI7CD44ZZDVcZFalPt5jchW0OfI
         d8MuFEJaC6r9TesFtyEFr2hex6vHK0C4vWNoOOL/2No1He9T8TN2Dg3dSWZioGOvKB2Y
         rpn3F8zkZAGO6auuwyCZ0sW6Cj8GRGdl2RGZa9/yS/Of6OqfUr1nU5cPeU1Gief7iksI
         ULC81aAHgbMxLwzmt1avzx9sEDQy7dWNBunvM688++dI4SrBya0Bc2pVNlo4dnWC0iAb
         mZ+w==
X-Forwarded-Encrypted: i=1; AJvYcCWUt31JRZNQT+bX4K7/FhUrnzF58jAkwfqTK9HgsQAM83eq3I1UP1mXNBbRMTXDAieZOQ0SCWoKrWSM@vger.kernel.org
X-Gm-Message-State: AOJu0YxWrr/Hx+Ee2QVp29ApF+iKUHe+oKxjoMvM8A1YRNTracoVxKhs
	5TcITQiRW0Yp9KNg1XRGvYxF8Ao1yP30IsAm9azZkZC/HmJRjTw0yfkd/s3ZB7juMc4=
X-Gm-Gg: ASbGnctbJrytmnpcsabqLte0vKOMKEfulVYw50oVve1Z/fT2dGVpv5jjg6dCJCti2ge
	ObOo4r9B8gHCuECAJOW+BzFhDMVzGS+xs9+raHlIKLBaoOE7Dvl6aGSWWETFXTuUnfx8/trQv24
	dYAgawwss++I1qHk6KjcZUqS2hGaRe84/vUjC5GYAOt1pDtI8wWN1MEPLTyUFoeo2BURp649t6c
	K5sNV3D4T+XN+v8EmDL/7UdMQu09N1s7BlGMxKAhGse7WFydb9f/eS6OZoI9SiwJhukIe6cXVpb
	6RWx20NOhNfJ2OzOcgpwzwEMk0XtXwCycijaJvCJiNnXHeJ+2wvLXAFQ8eZ/LoLphwegCZWkQFb
	g49kIQAbfX/jZLbIHV5NASmNQhagNOBFqURNcD+WRBNWkcWZYT9NQk8xnnT/88k076kieumGIIU
	RL5bwu6fhElj5ABxl2/vINt/BVtgi5nJanuQLINV2y1QFjaeqjAyB1zw==
X-Google-Smtp-Source: AGHT+IFeZ+nEollEKgDhQ7ieSd8muaJyYhRQJB6yiY924Ch6n+G3VyFq8ZoZpYgmOsoQMLWRQOm8JA==
X-Received: by 2002:a05:6602:640d:b0:948:8be8:a8d7 with SMTP id ca18e2360f4ac-948e0da72e6mr647783139f.13.1763146670137;
        Fri, 14 Nov 2025 10:57:50 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-948d2ba690bsm278679339f.8.2025.11.14.10.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 10:57:49 -0800 (PST)
From: Alex Elder <elder@riscstar.com>
To: broonie@kernel.org,
	dlan@gentoo.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>
Subject: [PATCH v7 1/3] dt-bindings: spi: add SpacemiT K1 SPI support
Date: Fri, 14 Nov 2025 12:57:42 -0600
Message-ID: <20251114185745.2838358-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251114185745.2838358-1-elder@riscstar.com>
References: <20251114185745.2838358-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the SPI controller implemented by the SpacemiT K1 SoC.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../bindings/spi/spacemit,k1-spi.yaml         | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml

diff --git a/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml b/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
new file mode 100644
index 0000000000000..e82c7f8d0b981
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/spacemit,k1-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 SoC Serial Peripheral Interface (SPI)
+
+maintainers:
+  - Alex Elder <elder@kernel.org>
+
+description:
+  The SpacemiT K1 SoC implements a SPI controller that has two 32-entry
+  FIFOs, for transmit and receive.  Details are currently available in
+  section 18.2.1 of the K1 User Manual, found in the SpacemiT Keystone
+  K1 Documentation[1].  The controller transfers words using PIO.  DMA
+  transfers are supported as well, if both TX and RX DMA channels are
+  specified,
+
+  [1] https://developer.spacemit.com/documentation
+
+allOf:
+  - $ref: /schemas/spi/spi-controller.yaml#
+
+properties:
+  compatible:
+    const: spacemit,k1-spi
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Core clock
+      - description: Bus clock
+
+  clock-names:
+    items:
+      - const: core
+      - const: bus
+
+  resets:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  dmas:
+    items:
+      - description: RX DMA channel
+      - description: TX DMA channel
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    spi@d401c000 {
+        compatible = "spacemit,k1-spi";
+        reg = <0xd401c000 0x30>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        clocks = <&syscon_apbc CLK_SSP3>,
+                 <&syscon_apbc CLK_SSP3_BUS>;
+        clock-names = "core", "bus";
+        resets = <&syscon_apbc RESET_SSP3>;
+        interrupts = <55>;
+        dmas = <&pdma 20>, <&pdma 19>;
+        dma-names = "rx", "tx";
+    };
-- 
2.48.1


