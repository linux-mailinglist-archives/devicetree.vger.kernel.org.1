Return-Path: <devicetree+bounces-27209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6F0819A73
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 09:28:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81BA71C216DD
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 08:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 858101C2A0;
	Wed, 20 Dec 2023 08:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="MZrQwlO3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BCD1CFAD
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 08:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a1915034144so629940266b.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 00:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1703060888; x=1703665688; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pnge+1KVjVw+sI86vmpy7qUzgDU254VIm7qUPhyPlKQ=;
        b=MZrQwlO3xukNXXNfYYdSjx8yDcUF3KcGglmtgTF3x+FXcAsgBVFQ0Xd5mDVD8PPcNr
         ZvDdjY+JgdhUZXxo20rXlqi8MWUK1fCDGjEoLw9yoZ90bqFwHBP6bBiekqvmNGCT17KS
         umQtaN+tT+uZY9sR4XGVETWOf0xiuccHI+niiwQVnsmVxwD9hIUOtGaqGQxeMQ7RlArS
         xZD7iIwBaDZoaZRJ/QbwdjkGd1ESJgaJ1LxtO3trdkYm5Bva3hjk1HeDXjUyxofyIOai
         0kVhWk23qT5VHrDfBCU27+9RZcBJtWmZQ7qeAiysyuXY0ifB5knb7uCIuJS5EuJr54nd
         4H6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703060888; x=1703665688;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pnge+1KVjVw+sI86vmpy7qUzgDU254VIm7qUPhyPlKQ=;
        b=Sf7Vn1vt9FaY8YcD4sJUVRNbBqO6NP0ilc7LGLeu/606xMUoLob+b3Lbm11MJDt9No
         9Olsgs7eugiBYxvl13haUiZI8xNL3O82r0ePew0Iryf3qM7+si/kBWO0+jL6fbspZnNt
         qxhFpgPDrJCs21cz0/DskrnP88AokDWSzvFh8c4I6AG/5anU9rIyZYmrI5Ar/E35dZjF
         eHlZeac5tKUFwqVKhMo21cmyOKlluo3rIcvqVSmsAPYIejDdoAMoXKQFOgzkdsgCqTsK
         W8pMLoYTEeE+lxhtPbSMtskFPlAgW5vuD2XjxKMzOcSwYm+Bd3BAbhWrZVPPkhtUNVVh
         LuLg==
X-Gm-Message-State: AOJu0YyjG9GCoomhw62WB98J0qklb0Sqsc3NUAPLkK7OoTYGCE6uOw/o
	sUsMMYSOBYOKF5TolRjq+bc3+A==
X-Google-Smtp-Source: AGHT+IE36Cv9THHqW9iFTSNZBi0qnVFrcNILBTSuYuHbpyaKyFhPLiBh0wr2wnk+hxXBFGH2QuTEbg==
X-Received: by 2002:a17:906:c784:b0:a23:3621:a542 with SMTP id cw4-20020a170906c78400b00a233621a542mr3111987ejb.108.1703060887793;
        Wed, 20 Dec 2023 00:28:07 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id s20-20020a170906bc5400b00a26965e4caesm334778ejv.43.2023.12.20.00.28.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 00:28:07 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Peter Rosin <peda@axentia.se>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Patrick Rudolph <patrick.rudolph@9elements.com>,
	Naresh Solanki <naresh.solanki@9elements.com>,
	Rob Herring <robh@kernel.org>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v5 1/2] dt-bindings: i2c: pca954x: Add custom properties for MAX7357
Date: Wed, 20 Dec 2023 13:58:01 +0530
Message-ID: <20231220082803.345153-1-naresh.solanki@9elements.com>
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

base-commit: 76998e5bcdf155b36c7066808a0a65b2ee13cb2a
-- 
2.41.0


