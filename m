Return-Path: <devicetree+bounces-195964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C556B03B01
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 11:40:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6BD6189FFBC
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 09:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0387242D62;
	Mon, 14 Jul 2025 09:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="j+uV61g5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44452405F9
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752486022; cv=none; b=M4fyWLZX+CdBGrSGMKp2vWqEsfBIgeFVZ9ebruWXioSFkEDKfRs3audT7zJaNeCyHyKHvCfDrG738gQX+TtBdyHV4OVpUpXgb09Zzz66hWf/S3XAiZg+c3RG/bL50sXe5IPo9c4TT0bPDmcqK/W3f+LzxnUE30QSdsZ3zWZ6So0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752486022; c=relaxed/simple;
	bh=4KPyVnkqnA6b1PNIcB7ie8tzayQaIfMIQ14OoYISvso=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PQcI09yfv7Kk9H7gGEPxxm9yMa3v0912aGqicRbAl+RnCj2Ws3yV9PwXtNzG7K4GXlfkD1Wxp67vQOcljA6xjIyaVEFJLb1HojBcSCRyAs4UsEgrwBh9JhlaKnzyhnZoz4Cr3HYyDNhqMgI5ZTXH/6fJR+LpBjgA3v0fB74eOso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=j+uV61g5; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45617887276so7078065e9.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 02:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752486019; x=1753090819; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZNWYOZeX7/6WvQlTq10OWDC/eEvu8idMvnYMiM3ozYE=;
        b=j+uV61g5POyT46OnX2NOArcft9UKa3C2Zw4BmGylJBXcLGINSt4n/OqsX+/kcLG5sk
         Xk1EnmeUjvPF6GreeWB8hOqL6jr7QZLQI9ZKJowVK2XYJom8+Z7Pb5/wUR0OA9Ju2c1k
         7ZHWzWIMzbRJla+FrrSJTHoTWwHiHGSc+TGFwlxKAlCSJRJY2VwgtAmqN/W0DQ8Ig+f/
         vy7tftMxPz/FpTzWPn94lod0N0IxBqHcLkAoTXY9BYnoIwN2nRt7/1ylEYeG+LQkyfhl
         nQjrN2y6JQ/LSEfW8w8vRZBzoo+6dKq8kvu6foLFJeq+Ce3A9vqabJ8z6TFgpT7lTs3c
         9d2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752486019; x=1753090819;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZNWYOZeX7/6WvQlTq10OWDC/eEvu8idMvnYMiM3ozYE=;
        b=uz+H9dL1qQ39MzcQ6FD1O1RI85E78mbFD04GLY1GVl6QJgnj454v2ud18qFhxwtj/s
         tmToJYzTCINfIVlr+IrUmLfYWSMqRbUdaicoZUHWuTtJwfkEzU783Gj0e18tsBnwdmU4
         D9IbEvpY/uvtlnqtX4dpuyAOpdste+PCEuI8Ym80LTM24yxizpAVPqEZKQkf6PqWk48P
         w04SrIOThKmE3Jdohvfqg5nctEx01l9HFRabn0ZUuJMpoOd1xwyK++X+LsvwVqsvfnXy
         059hOsl5oR3HFE6Xc5/0nJ/+89fam+l3+XrATg0v5ZJYM2WYqXsFLGoR2l6+c97pR9kX
         YAFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUgpE8QXfQgdhyujluFeoEGc7CsxkCFgkZjZ1zSJ2tFHycnYtOgxUheBlik8f6zs/Gx07TbyLll2s9@vger.kernel.org
X-Gm-Message-State: AOJu0YzHeSLXcOu1QqIba47OL9xBmu8HmIciTSEmQ8MDt9b983N8vm9N
	0t17FzHEpetg12ecr3iyZ1Mm8a9vn73oaiWTgUhlKIasKdcldBI3In7UA/QzkJBGRow=
X-Gm-Gg: ASbGnctUO0JpTv4mg/uDwx22QzMTFbH/+U7bahBEp8I2PDVG2qQ7cirF2Yix0TcOlC0
	wssp1zDQ+96UnL7+U4xfCApoKB04aR+0r9uz7yhmaAaR7Goyi1Ts2OfjClaZ2l1fTheBjMDtuqD
	DpmilYGEgtYi5E9480ilMWAArzXKEdLwO1c6CuOwpoBf0Gk6wrkLaYRKaTyQiQNZv8XCk5hpfi3
	Z5QJXWlP4NEbiMaxkkEwo7JQ2w7xP0xiE195asLsx7MbkLGcxdRxMGEoS2jkeQn6Ennp2dMy1qL
	gkBdZu58DY/8eHmigCoLegqoGGOv9+rsiBfdFipvdvhktTTegY5XPE34HPV4ICDhwvOXgmXjiw=
	=
X-Google-Smtp-Source: AGHT+IH7LWrI288pfqr0DobhXiBAETFLObRARl9QHaXZq8n40/zrMI7hQXZgqc6YvjtV174ymKHG1A==
X-Received: by 2002:a05:600c:8b55:b0:456:1204:e7e2 with SMTP id 5b1f17b1804b1-4561204eb05mr46649275e9.12.1752486019172;
        Mon, 14 Jul 2025 02:40:19 -0700 (PDT)
Received: from [127.0.1.1] ([2a09:0:1:2::3035])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4561b25a948sm24989035e9.35.2025.07.14.02.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 02:40:18 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 14 Jul 2025 17:39:28 +0800
Subject: [PATCH v3 1/8] dt-bindings: dma: Add SpacemiT K1 PDMA controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250714-working_dma_0701_v2-v3-1-8b0f5cd71595@riscstar.com>
References: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
In-Reply-To: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Add device tree binding documentation for the SpacemiT K1 PDMA
controller.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: New patch.
---
 .../devicetree/bindings/dma/spacemit,k1-pdma.yaml  | 68 ++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/spacemit,k1-pdma.yaml b/Documentation/devicetree/bindings/dma/spacemit,k1-pdma.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..ec06235baf5ca3ecffe7dba9bb425b242985660e
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/spacemit,k1-pdma.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/spacemit,k1-pdma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 PDMA Controller
+
+maintainers:
+  - Guodong Xu <guodong@riscstar.com>
+
+allOf:
+  - $ref: dma-controller.yaml#
+
+properties:
+  compatible:
+    const: spacemit,k1-pdma
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description: Shared interrupt for all DMA channels
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  dma-channels:
+    maximum: 16
+
+  '#dma-cells':
+    const: 1
+    description:
+      The DMA request number for the peripheral device.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+  - dma-channels
+  - '#dma-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        dma-controller@d4000000 {
+            compatible = "spacemit,k1-pdma";
+            reg = <0x0 0xd4000000 0x0 0x4000>;
+            interrupts = <72>;
+            clocks = <&syscon_apmu CLK_DMA>;
+            resets = <&syscon_apmu RESET_DMA>;
+            dma-channels = <16>;
+            #dma-cells = <1>;
+        };
+    };

-- 
2.43.0


