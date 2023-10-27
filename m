Return-Path: <devicetree+bounces-12549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A8B7DA0FA
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 20:47:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68C8F1C21069
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 18:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 606973C09F;
	Fri, 27 Oct 2023 18:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="QeNtJAt/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD50C3984C
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 18:47:32 +0000 (UTC)
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7B121BC1
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 11:47:22 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-32dd70c5401so1552776f8f.0
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 11:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1698432439; x=1699037239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eNQIp/KBXkssBnXnURnyXEtwPP/esZe3h0yYIlPjhVo=;
        b=QeNtJAt/rdAhVrhvVRHNzf+dYPFLSSlLB1aEaI4Z6ZhcB6zUdTFKAuJ4iZmA9m7y30
         4XBDnhfk1R9O4BYjV5TjvXzl+iDXoYQkjucAvEsutBB0i68PkAQfuyDIdiObltYosgEJ
         ZWNXquJ6HrJFbq2QW1q13kfPcOINXDT+lNtWYpgOJGvR+Ar4mdV0t4uzwPbNqpQxL2T6
         ExrEJd6WxC9eSx97KwLythW1xTRlI6qoJQf/63TD5pDk4xpa9PIWA199TvR78a3snvMZ
         /ouScNJG8gRR6V746eV5FFE2Jx3W6RRzKaOxwwff4WsZMaPp3N6XkeKnH24dMLKi6lAj
         xM3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698432439; x=1699037239;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eNQIp/KBXkssBnXnURnyXEtwPP/esZe3h0yYIlPjhVo=;
        b=MXFd5rxPuvDNa9cXj/LDFr/cSdIcH46yQylzhtcW77URE2D+ftmLs59Iw9CFvI3VDs
         0oaAFLf3jDYuKnHwx3vcJjKfuMwqjX+6z31sl63W3bxeavupbSd/TLONjI7f1EZZBSI3
         W1wzbBi+V4lfBnGUd6HNgECOVXyIIuGEgD1QDBrY3xRYeloUM8sTjUKX7b92XlBNExbc
         fXR57O+imlqiYwT8FVJ7vBbFl2+/CEiB3vgsEumobGyAmAZZ556CpUkOWG5XwwPE6XGW
         jXXAEXvFhYaa/ZXA+1iw29l7FK5KHKwcJvu4EdPno7CZDHClW2D2JDLBwqhPn/jOxegP
         40uQ==
X-Gm-Message-State: AOJu0YwzgivxGF/h/8XndD+B1cRzJaEx+HucQeTe1dGvsawI6ycfJyhG
	ZRw2E96HG2z1hi/AeaDi9Vu9xQ==
X-Google-Smtp-Source: AGHT+IEvA2K/8e37Llc60+TgJ1tU9QqM7b5P36PhoN+eWvM81UvJpQDoYjKsJZcLO6J4djyErmX9YA==
X-Received: by 2002:a05:6000:10c5:b0:32d:9a17:2a70 with SMTP id b5-20020a05600010c500b0032d9a172a70mr2605651wrx.68.1698432439392;
        Fri, 27 Oct 2023 11:47:19 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id j12-20020adfe50c000000b0032d893d8dc8sm2298527wrm.2.2023.10.27.11.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 11:47:18 -0700 (PDT)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Peter Rosin <peda@axentia.se>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: robh@kernel.org,
	Patrick Rudolph <patrick.rudolph@9elements.com>,
	Naresh Solanki <naresh.solanki@9elements.com>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: i2c: pca954x: Add custom properties for MAX7357
Date: Fri, 27 Oct 2023 18:47:07 +0000
Message-ID: <20231027184709.1541375-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Patrick Rudolph <patrick.rudolph@9elements.com>

Maxim Max7357 has a configuration register to enable additional
features. These features aren't enabled by default & its up to
board designer to enable the same as it may have unexpected side effects.

These should be validated for proper functioning & detection of devices
in secondary bus as sometimes it can cause secondary bus being disabled.

Add booleans for:
 - maxim,isolate-stuck-channel
 - maxim,send-flush-out-sequence
 - maxim,preconnection-wiggle-test-enable

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes in V4:
- Drop max7358.
Changes in V3:
- Update commit message
Changes in V2:
- Update properties.
---
 .../bindings/i2c/i2c-mux-pca954x.yaml         | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
index 2d7bb998b0e9..9aa0585200c9 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
@@ -71,6 +71,23 @@ properties:
     description: A voltage regulator supplying power to the chip. On PCA9846
       the regulator supplies power to VDD2 (core logic) and optionally to VDD1.
 
+  maxim,isolate-stuck-channel:
+    type: boolean
+    description: Allows to use non faulty channels while a stuck channel is
+      isolated from the upstream bus. If not set all channels are isolated from
+      the upstream bus until the fault is cleared.
+
+  maxim,send-flush-out-sequence:
+    type: boolean
+    description: Send a flush-out sequence to stuck auxiliary buses
+      automatically after a stuck channel is being detected.
+
+  maxim,preconnection-wiggle-test-enable:
+    type: boolean
+    description: Send a STOP condition to the auxiliary buses when the switch
+      register activates a channel to detect a stuck high fault. On fault the
+      channel is isolated from the upstream bus.
+
 required:
   - compatible
   - reg
@@ -95,6 +112,19 @@ allOf:
         "#interrupt-cells": false
         interrupt-controller: false
 
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - maxim,max7357
+    then:
+      properties:
+        maxim,isolate-stuck-channel: false
+        maxim,send-flush-out-sequence: false
+        maxim,preconnection-wiggle-test-enable: false
+
 unevaluatedProperties: false
 
 examples:

base-commit: 9b156db7e479ac996ae9dc93a0cce3b3df3d0307
-- 
2.41.0


