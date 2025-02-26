Return-Path: <devicetree+bounces-151648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7D0A466DE
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 17:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7890F3A9EB7
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 16:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9983222596;
	Wed, 26 Feb 2025 16:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Od1xWWrx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B502222D4
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 16:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740588281; cv=none; b=rS6R9Euv7ErdtWF38XFU1IzmH0ZzSST8Copb8d1GS/b7sogxIUeQGg6hugaNB4MVTksoLpKSvAtx9Ao9wbzfkZzNbOALadq4sRH3JbzgmwwRJek8bYvygB5Zj/jv6GJD3AHd7hmkU4MLLEA3bKByiMumBYWceipW3chofsRPMJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740588281; c=relaxed/simple;
	bh=YdhxqSQK6u09Yq+wcXxAOkCJ2NySw34/uEOXxH+/B+4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iOPQd1r2U8VZ8SEbEyCosj5G+NbKOkFzH99FAjPsablIsbeS0iCoSyOjIUSJ2uh6G5EqtE5kjKWPNvOBOAhFISnH1zzsc3xabNhObcqZDKHFiAzddS/rWAuxW8xryBJQkv8nqC51HF/vusaWMDqnS2jni4jCU+McyKSpAQtuLRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Od1xWWrx; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e4bed34bccso149288a12.3
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 08:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740588278; x=1741193078; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l0EZyn2TqObTe2UJw5yeyY3ZtpefcUDz56vkBzRoO/c=;
        b=Od1xWWrxe62uvOUWcmztsrxGTCS2AX2xm6rf2NtBx0guGzO7HfUHD60kEHhOiHcd5F
         vtauz3Agr7TRjqqAHWrTGdw+VbZeEG2OE33fwy8qyp4RS9h9JCd4wiZG1ejnzT4JZot6
         PjNetCHxY1iKJv9/XPZ+28pn8iLytEqytv2D/uDn7lK/bLEesojUAbx/LAg5/n/HWCdS
         KX+QVpALa/8W9zcO1AhI4s3bBCIE1kmY84h/QlTo28l75TXZDchUj9DkiYK2HIvVAXam
         kc+CT01SWHvyUn3njfNnKbjZWOguADuvr15QceT4VQQsiFEDW3/cRuzN0MmrhAo9063a
         ptOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740588278; x=1741193078;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l0EZyn2TqObTe2UJw5yeyY3ZtpefcUDz56vkBzRoO/c=;
        b=s1hQxuGwZjzn3ozScQjOJKeF+8uq3VaxKMZ+A8/1DNB/DPZ42zRsatGZjhKRasWrrn
         Y8KpQTq5GHTUfu48Ka/nh3C1/6k48J2eqFYAhlRCQ2jtu672FJpY6qhmLsR6d6gvdAQj
         y4v2vnia0REOUvLrFnSYxqB42Q7XRekX7lT7UgBaRQZU2HWxnO2qfWxXGcdBeeQi97Jn
         xaeBXDuQf7hoXZHyjSopY/JoGBgCZIO2ZyCU/EM5jvUiiDmUCY40V8RV089ugAEEqDa5
         cPI33bLTBqsklc0DjoX6i4Xc/v+hyXj6NmlpioE9WgmY7HFSAcbuhJQCHVNKkoMGwMGb
         IB+A==
X-Forwarded-Encrypted: i=1; AJvYcCXPef4M5VYBWdVMRHAznwQZvuiZgqhf+2t53ZV9xW0t5cCvTyxxZkQZ0poGt82QHkDPq9Aj5t8F5hlu@vger.kernel.org
X-Gm-Message-State: AOJu0Yx02L5hvtlp/663BbgxQCPQ6MqEFWzRspZ88SPsUX3ls2CyovQ7
	vJmx4lsTa5B+T1ycs9sW6XfPj+uxKFFbC8JlAENc9mvOaHTwTC5IC4ugFc1lnYQ=
X-Gm-Gg: ASbGnctMmJRPnFeT2RtL5QZwHGObjvFllcaDTUKTS+eTQgwy0mGcEUupDQfbxzGs3+N
	MrrPL2h1HpCRX5wF20lGiLnmedYwZbF30YGnSjF/waHdppCyPXa78n6R3hkZ8WB/OcZeJxIqnG+
	c/+cZKw05YyItktt5mBm+lAJOIHePSHio18lpAffht8QJdAiKw7WIM0IsEWiIeKgZ9E3TiplS0P
	K9vCdYcIi7gIZlRFbncE4g+4EY7Bpw9mZ5N4KqosDgKU+cdZGOW251zub7kuFANJIaeLmHqQv2D
	IeTwg0QiFJxOAxtj6Wh5t/AY75mPlZ5+ixxw+0a+K54e64QNvhfYtXA5gLN250Xl8TD//hwXtF6
	lCEg3yDyQgA==
X-Google-Smtp-Source: AGHT+IH3s7ublc3lcebdSq3s/EcaHrrowWHk7bE8C5LSsDhgwFnc7kY/4pTIWqJdedCRg49Glwrm0A==
X-Received: by 2002:a05:6402:2683:b0:5e0:9ec6:12d1 with SMTP id 4fb4d7f45d1cf-5e4a0d88d99mr6275127a12.18.1740588278221;
        Wed, 26 Feb 2025 08:44:38 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e462032b00sm3058459a12.68.2025.02.26.08.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 08:44:37 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 26 Feb 2025 16:44:26 +0000
Subject: [PATCH v2 1/2] dt-bindings: reset: syscon-reboot: support reset
 modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250226-syscon-reboot-reset-mode-v2-1-f80886370bb7@linaro.org>
References: <20250226-syscon-reboot-reset-mode-v2-0-f80886370bb7@linaro.org>
In-Reply-To: <20250226-syscon-reboot-reset-mode-v2-0-f80886370bb7@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Add support for specifying different register/mask/value combinations
for different types of reset.

In particular, update the binding to allow platforms to specify the
following reset modes: soft, warm, cold, hard.

Linux can perform different types of reset using its reboot= kernel
command line argument, and some platforms also wish to reset
differently based on whether or not e.g. contents of RAM should be
retained across the reboot.

The new properties match the existing properties, just prefixed with
one of the reset modes mentioned above.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../bindings/power/reset/syscon-reboot.yaml        | 74 ++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml b/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
index 19d3093e6cd2f7e39d94c56636dc202a4427ffc3..1bd821877a16b274ac78a80017d003f1aa9fd471 100644
--- a/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
+++ b/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
@@ -18,6 +18,11 @@ description: |+
   parental dt-node. So the SYSCON reboot node should be represented as a
   sub-node of a "syscon", "simple-mfd" node. Though the regmap property
   pointing to the system controller node is also supported.
+  This also supports specification of separate sets of register/mask/value
+  pairs for different types of reset: cold, hard, soft and warm, using
+  the respective properties with the respective reset type prefix. If prefixed
+  properties are not specified for a reset type, the non-prefixed properties
+  will be used for that reset type.
 
 properties:
   compatible:
@@ -49,12 +54,41 @@ properties:
   priority:
     default: 192
 
+patternProperties:
+  "^(cold|hard|soft|warm)-(mask|offset|value)$":
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Optional alternative offset / mask / value combinations for specific
+      reboot modes. The mask is optional.
+
+  "^(cold|hard|soft|warm)-reg$":
+    description:
+      Optional alternative base address and size for the reboot register for
+      specific reboot modes.
+
 oneOf:
   - required:
       - offset
   - required:
       - reg
 
+dependencies:
+  cold-mask: [ cold-value ]
+  cold-offset: [ cold-value ]
+  cold-reg: [ cold-value ]
+
+  hard-mask: [ hard-value ]
+  hard-offset: [ hard-value ]
+  hard-reg: [ hard-value ]
+
+  soft-mask: [ soft-value ]
+  soft-offset: [ soft-value ]
+  soft-reg: [ soft-value ]
+
+  warm-mask: [ warm-value ]
+  warm-offset: [ warm-value ]
+  warm-reg: [ warm-value ]
+
 required:
   - compatible
 
@@ -70,6 +104,46 @@ allOf:
       required:
         - value
 
+  - if:
+      required:
+        - cold-value
+    then:
+      oneOf:
+        - required:
+            - cold-offset
+        - required:
+            - cold-reg
+
+  - if:
+      required:
+        - hard-value
+    then:
+      oneOf:
+        - required:
+            - hard-offset
+        - required:
+            - hard-reg
+
+  - if:
+      required:
+        - soft-value
+    then:
+      oneOf:
+        - required:
+            - soft-offset
+        - required:
+            - soft-reg
+
+  - if:
+      required:
+        - warm-value
+    then:
+      oneOf:
+        - required:
+            - warm-offset
+        - required:
+            - warm-reg
+
 examples:
   - |
     reboot {

-- 
2.48.1.658.g4767266eb4-goog


