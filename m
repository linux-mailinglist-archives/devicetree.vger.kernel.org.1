Return-Path: <devicetree+bounces-166019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 147A1A8622C
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 17:44:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A99E4A8114
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB22A214A8F;
	Fri, 11 Apr 2025 15:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="A69/LT6O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3FF20F063
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 15:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744386269; cv=none; b=mWFNvZPe/pybxXG7zCX5YiOGlKk+9UBYCzdbgmKJam5WVZIL6+iiSMy87QuUtUFZEHEc25ydjv/irfUeN0i7VwCWdPLxWYSSFaCBp1BPNRKztqHqmeh7snFDfxydri2/w8Kue23pHqRIaV6uCGnGzVzaRC9U7swTMZTpxv72LG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744386269; c=relaxed/simple;
	bh=7ZoS0xY5agHPaulRb3cD8XGDbf5Uto+nLhFfKAqokok=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oNBcDsfg9mf3k+fOllMw+cZR1jrMmYe6+UEireYqoxILpbwMyttrci5zuYDQQ42WGxnSn+Ti6cpEgOd4EdAuNnS2xqXneiWMbdDI8CCu7n5BCzd275XC06eHQDMbyYtrJQoPBwhzpICYYyxdFtWs91Vr7wmi0Po8VLCaBNfuRYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=A69/LT6O; arc=none smtp.client-ip=209.85.166.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-85da5a3667bso63018139f.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744386266; x=1744991066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lNEtTIi2VK5ry0lwico5I+3DkBAdLoSFhiEvmP3qbmk=;
        b=A69/LT6OOQYLw6YgRDIh8Ai1DI8+jzG2Hc/PYn/2+PWrr2HKTGOp2dvELDPepwMkAD
         G0KT/qMjkHc4SINyIzbxdG7KVNGP2at4C+E3tllBE9xpASKBknB02KI9kXbEd9SikXcF
         3xvLvIZlsgbn80AQgpf/4OJIWLobGbfoFDQru8DkSPe/Gegn3hlhL8wGicZhEXzpfS+P
         ZGCWOkzmEIHiZ2oGJpRjCx3jot1UnyKERe13Ls6XUUVWrwpb0hgLkChOq5hsU17eW9H2
         imEc9t3nHytqu2oI7j7O+JS3u2moAoh7NFlslq8EUgylGz70ell9EVs+8GCaZDpL99RP
         uoEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744386266; x=1744991066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lNEtTIi2VK5ry0lwico5I+3DkBAdLoSFhiEvmP3qbmk=;
        b=afi3V/84qZ7HdWIp3TTrNr4hIshj6dsroOV6QYqwPjmQ2xZ+9VdzTsknVyG0IZcAWM
         //avphgeM1h9taFepuC5LWt+GyLtIokJvbKYLrSTC3oWJAjhojXQId+/i9gwZ5Qbqvim
         6PnNnbfBUJM2ddGSBdzf4HLXwz5ctXUvuXyypNoJ2HqpBpt/9RFfg53Q2puBcEAAT7ng
         8Y/i20mIUphNsJ6cH8JqmLYKrLPflwn4vl731M4jYXFtn5ml5H0Dd3RJYkhudNdBLNSG
         GTufXMkc/XB3onOgZ0o9t+c1FQXjNNxXr+bQmxrRiXynM9fOOVKt7keDc7Jj8Ah+IqhQ
         C3nw==
X-Forwarded-Encrypted: i=1; AJvYcCXpsifapWDBs0vzsUFHRBabMKj3ph1B9Vq1xs78duRsoOD9ryRnq2GHiLCYueUanu1I8sWqVCB4ENmK@vger.kernel.org
X-Gm-Message-State: AOJu0YxlGl6T1B5lYiajSaaKYW1IKfcRqs15MYZXme1ndgJPDDZidHqJ
	KR9Z6hKIao+VF7NNOVLARZa2tyM+UQ3ivSBppbXMnHYd3vZxJ1WHr2jy6EaeV70=
X-Gm-Gg: ASbGncs5YeCb+3L3iZZRz+Kkp9ufmKgL/OEHRDPSFfVdM7JEPzPiKLrCqjVC9Bitlg7
	TLfBhNxfBon9629RgRoSZJ6ZejT5E5Ouzna2CLtVySv1HtzwakJXEQ310oltKMqm1E/LtGn0CFl
	ZMHtPqPCyNsKdpSKxLfB5F7/dSOqw+ZYDTt9U52OBfhvSLfZZtIhuiMH3w5pVpo56H9khrbfsyZ
	9n0fZD10jgbQFNOxF+RQc2WtsXJJGlvVSbgdXPiSV9NxqoYKVChDkXp4Srhwd1D3dO4ApHiAkqe
	LV5SHh65gXcHI+SIWCHMjypvbM4tAO8Mfk54ozwNsGWWML49aejldOw+YwoHk+evAH0+Feu3q/B
	OA+9Pp1uymagPVw==
X-Google-Smtp-Source: AGHT+IHmZJkLUp0ElYixFb0pqy12kzxcoZbzdEnj5SOiajP/nfCU4MY0cVdJxZEZG4e9zsnEIRAxIQ==
X-Received: by 2002:a05:6602:3789:b0:85e:2eba:20ad with SMTP id ca18e2360f4ac-8617cb4660cmr336071839f.2.1744386265918;
        Fri, 11 Apr 2025 08:44:25 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505cf812dsm1276326173.18.2025.04.11.08.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 08:44:25 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org
Cc: dlan@gentoo.org,
	benjamin.larsson@genexis.eu,
	bastien.curutchet@bootlin.com,
	andriy.shevchenko@linux.intel.com,
	u.kleine-koenig@baylibre.com,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: serial: 8250: support an optional second clock
Date: Fri, 11 Apr 2025 10:44:16 -0500
Message-ID: <20250411154419.1379529-2-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250411154419.1379529-1-elder@riscstar.com>
References: <20250411154419.1379529-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT UART driver requires a bus clock to be enabled in addition
to the primary function clock.  Add the option to specify two clocks
for an 8250-compatible UART, named "core" and "bus".  If both are needed,
require them to be named.

Signed-off-by: Alex Elder <elder@riscstar.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
v3: Added Rob's Reviewed-by tag

 .../devicetree/bindings/serial/8250.yaml      | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documentation/devicetree/bindings/serial/8250.yaml
index dc0d52920575f..33d2016b65090 100644
--- a/Documentation/devicetree/bindings/serial/8250.yaml
+++ b/Documentation/devicetree/bindings/serial/8250.yaml
@@ -135,7 +135,16 @@ properties:
   clock-frequency: true
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: The core function clock
+      - description: An optional bus clock
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: core
+      - const: bus
 
   resets:
     maxItems: 1
@@ -224,6 +233,25 @@ required:
   - reg
   - interrupts
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: spacemit,k1-uart
+then:
+  required: [clock-names]
+  properties:
+    clocks:
+      minItems: 2
+    clock-names:
+      minItems: 2
+else:
+  properties:
+    clocks:
+      maxItems: 1
+    clock-names:
+      maxItems: 1
+
 unevaluatedProperties: false
 
 examples:
-- 
2.45.2


