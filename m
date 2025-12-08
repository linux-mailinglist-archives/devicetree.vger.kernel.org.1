Return-Path: <devicetree+bounces-245071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 58405CABED5
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 04:08:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC0A630572C9
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 03:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15B82DC334;
	Mon,  8 Dec 2025 03:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vuXAV9Oy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7928120487E
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 03:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765163145; cv=none; b=okLisnWccov4yNl4InF5dgFjCtHV1EMtFBG9luri0rB3ptCLrJUVEJHQBKnzRUda3HKWbG0avVwkDvvwowKdcbMTltizAxl7nvmXa4aTSlvRKu2oWGCKmQ+m21UB7fyYdSRGu/Ok/99PrA/nWNMw0RzMntpvHp0vamoKrXXKrW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765163145; c=relaxed/simple;
	bh=sCRqVl7K3M0fY0HQHMfz4uoNLVMybTWLicOnAms2XpQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FuS434txzfVJ8T5FLsQJG7vx3voFNr+p9hZbBCoPNme4WJ/o8xF+CbDvHYrsF9mvAYtCYXLti0GbgAg6zuvF6ue5LImMNQ2VPqXFWOyRB9T97msHeJzbbezRc97f4FsGl9DXSqDrUKYp7jOs5hI1EF6QP9dS/By4rY/34+4DPBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vuXAV9Oy; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4779aa4f928so41100495e9.1
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 19:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765163139; x=1765767939; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=31YJF8mMxnr+LqmRtwQssQbvEbeKZ9gZ0EQ+P+M9XPs=;
        b=vuXAV9Oyg8aU3Ig0w8zSJNedgIXqnt9PoT5FP69SGntaKDHFPWVHP4j2UvO28SLLCq
         NDxpdxqkf8zC/jiKgfBYn/VeXvNZ+X6PuE3qgiMs1NbvZVTci8Sz7j5moHshKoNZjCp9
         vlG3pKSjGvjXbgbEeJDk6FWAwizctgK0wdVU8WZFTYe2fhmTR4866Fhb24FrjdnnMoNW
         1Av2RaQeMtDYX1LM9+DAstQ+Q1S0WNUyyUU/8hQQ3yt0f3C7oOcTIg+bVRAdfKrfF17m
         Ecarge3yUfqgr8Ew/g1y4iqvFgCEgRLYzAwWGqbYutZcutXj1Ir+zogcEYvWsEebN9V2
         glbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765163139; x=1765767939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=31YJF8mMxnr+LqmRtwQssQbvEbeKZ9gZ0EQ+P+M9XPs=;
        b=IjEIsFOD6iCi1CyOfG+a6vC6iApmFo327BbfX/n5YHXrubS3szb2V051F1zvF/ak85
         W20ZXHqA9XKY8P3tHbbU5U4jNR5jhiLXZvjyVf4jJWKzQzv0dGW6PhxwzfmayO/3EyUM
         DmrMKmTnVPu8XCiZ/TYMZRDRnTj2D3rG0BdJH4BuB9w/vPAn/ONzfyWTjnKQ/r491DkP
         Usu67p7e66BC2TzhYZfcFJPEQRN3yx0wIcZ+i1BDPj1sWu7SD0CvmqRw9qFp8mIIMoGn
         8UewcGHt4SG2kfBqKegCUSt4zS4Cj8NTeAYNrWCzVOLm+OsOmaN8Ru+KsAh7ozXNR2Ri
         V4Zw==
X-Forwarded-Encrypted: i=1; AJvYcCXX51k7W7rn2pNqwl6QlsITOqb20FPBBe8e3NWEbVMv7GTeQ7FcRu+Zchh0hmY22sq/AotH8eP90/Oq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhyrzo8HnF31jayP3jS/ZhIYghA/dNIuhd8u2Q1qLcODMNfHZe
	YbXjQKTHzHh/gNFdJCttHcsya89aBamKC3r5LGbqukD7wGSLRv1x8DsGRh/JFX4XZ2o=
X-Gm-Gg: ASbGncvIGl4BXwyQ200xBn3I12mvnzMPLyLNPFPxxd0c2gGIoViCYrxZdByskDvt8s0
	59iOKXYGckRi8IqHDcxxkDKv0P61kaoJOBOyK2eBGtpmj19kdP2T3azz0hVe+5xrB80P05jcC59
	CnhpVfr/bKgxoQi5ritGpaB9MxzZwqtuOgGw8yPMvqDzrvIBOk5yNeZsRd60nqx2TISml34ZZWX
	L+QTLhrkd12LPRIPXdBnUjbYnl0mOHMxYwnhoxth6kXV7bYkHBVNRhpcnp4vCuYgDj9MwGnyUHG
	u/CWzaps4RHW2jMar2wsgjVd+3p2YLnQwDvNGLTqUoXCHzZ9K9mB8uq7eWHGd+vUR1Z3CuUEn35
	iRRuLcDBF+JXS9PwbVt7h8A4sziaNcHCjfnbZ5624Wc6qj6VOqfYWgoQUBbSgTZqUR5SMvRVG5z
	QGlg3le7ECLljuyrHx8JnK9ISkYecTlNk=
X-Google-Smtp-Source: AGHT+IH1x7f63RvjHVJG0byImMjDmXlGrr71B/o+nkO+iw0TVwtKQXc5NIk9o91oiM8Lr9SJh4idng==
X-Received: by 2002:a05:600c:1c07:b0:477:9cc3:7971 with SMTP id 5b1f17b1804b1-47939e2464fmr68196895e9.20.1765163139118;
        Sun, 07 Dec 2025 19:05:39 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310b8e70sm220564885e9.5.2025.12.07.19.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Dec 2025 19:05:38 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v1 2/3] dt-bindings: counter: Add NXP System Timer Module Counter
Date: Mon,  8 Dec 2025 04:04:12 +0100
Message-ID: <20251208030413.3117660-3-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251208030413.3117660-1-daniel.lezcano@linaro.org>
References: <20251208030413.3117660-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the System Timer Module description found on the NXP s32 platform
when it is used as a counter and the compatible for the s32g2 variant.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../bindings/counter/nxp,s32g2-stm-cnt.yaml   | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml

diff --git a/Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml b/Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml
new file mode 100644
index 000000000000..4d42996f5ad3
--- /dev/null
+++ b/Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/counter/nxp,s32g2-stm-cnt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP System Timer Module (STM)
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+description:
+  The System Timer Module supports commonly required system and application
+  software timing functions. STM includes a 32-bit count-up timer and four
+  32-bit compare channels with a separate interrupt source for each channel.
+  The counter is driven by the STM module clock divided by an 8-bit prescale
+  value.
+
+properties:
+  compatible:
+    oneOf:
+      - const: nxp,s32g2-stm-cnt
+      - items:
+          - const: nxp,s32g3-stm-cnt
+          - const: nxp,s32g2-stm-cnt
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Counter clock
+      - description: Module clock
+      - description: Register clock
+
+  clock-names:
+    items:
+      - const: counter
+      - const: module
+      - const: register
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    timer@4011c000 {
+        compatible = "nxp,s32g2-stm-cnt";
+        reg = <0x4011c000 0x3000>;
+        interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+        clock-names = "counter", "module", "register";
+    };
-- 
2.43.0


