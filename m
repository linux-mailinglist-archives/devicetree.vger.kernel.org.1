Return-Path: <devicetree+bounces-255077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B0239D1F5C5
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:18:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4F2D43014E83
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 295E7396D3D;
	Wed, 14 Jan 2026 14:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZtTTkase"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779B2342CA7
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400243; cv=none; b=jNdVT+hBCU/YWBu0wlE8vglvIEHggVEi1XZrvvOGYyy5QNG1CMIYpHiAwGkLzsI3qiFR12TPKjVLttmc10GFOEW9TlgtW1uCn+xFId32YtpQrKNgr0dFS/VxcurVl57nFdo5MX8XMrzexHhf+9pPUs2mH/b1ONra8fpi/ogd6Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400243; c=relaxed/simple;
	bh=8UojV7uTS3mheivu+7sw0eF9oi43bOc4wBfGZPuFRE4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X8LgOfrqsuMBP6m/02cnp1T8wy5PO6pxg1Je/j++dmAOgL2YNjRDa8bYxunly7IMb099YXA00/ti9ZoFfVhgBqX/G44eYT/2F/Zp97s9khy2owWhLxlD7dRxuaBgNz1apPOzqgs5sVhw7O8l1UYKzFHwIN3iWCATOn4UuYcV5dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZtTTkase; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47d493a9b96so50290675e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:17:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768400235; x=1769005035; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8IE45J8JgDPeyrAViCtUZj6ANewtTif+SN8oHgJqm5M=;
        b=ZtTTkaseGF19K834bA9MikuJmnfqLf6kXP3mVI8ToVxvAQSAvgXPQBdt/GnDtnh6QB
         WuOaGdJ46qgl1KThc/NddU3VTFW9/IrYShV5uH/UVemzft6Ad/VNCEFwMJoQ/D9wOrQS
         qLi5Aggvxm6CJzNW1ZNKr8KrWNlKO9xjBZnHUcFYHlLFs2/zi0nfO3+okyCarBghbnGJ
         yBt4LntmOjNgr4wkpFUJWtTB6gcoBjVOZSUmTcutGH/It5VjjXNp56MhBQV7cGAZudju
         DAem5jicips8WpHG+nCblw9+SwHJhyPsXckoeZ8+EUkuIGarniY6QWLQYSIM/hmFshs2
         fTqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768400235; x=1769005035;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8IE45J8JgDPeyrAViCtUZj6ANewtTif+SN8oHgJqm5M=;
        b=oqPxoH/v+2wudieP78U9NCvVjWXO0Fab8cnT54IgWxlNs9xjMrQsURNeDy7hJBmzqV
         nozXRB9sYE6v2ag1ghU6DNeIiTp+drLeyl0mTUjEM3YqtRSd0HrqRv+n4I3X0dxq6YEW
         vmK3r5bBl/AkW9cckZcVoHLTxNnBrPfrSny3JQjYsX8eIkzaq7fUhlitlyep4ov/t1Oq
         aElY+f3WD0/U8YNkkpSHKmXDK0leDc86cZ00fhMFDbNOTfeSBjbufk/cS+dQiVK0bTRW
         JglGaEDfrr3yKhuZFWRKbo1livvSHvdnwHEAihGrHX11Nw/DZ6GJwUjEvLQeT2NREH85
         BBDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWh33uF4KYGZWbIhMbpAudr/ySBwv3HJKHBWXrhtAau75lx5fKh/x0To420zQ49SuCw6TouemwGW+E2@vger.kernel.org
X-Gm-Message-State: AOJu0YyyvxwZbmNlHDIM/HrmjICZojPmh6ym5dg4dEPYLAd979Qa4V54
	0Nm3Jyh/LKLXleKFxWcnz5JaIHkXD7v/C9mwE31nZj7kD63jornuhxo2LEe903sAHTQ=
X-Gm-Gg: AY/fxX43Zlxxgxk/Cv7RPtL+CKzdVLkVHC3anr1kurV5uB7xBxSBY2M7r2luiayuixp
	HGGyZOQHnmBYl76ehXD1Nq1V/w6WJ7z0Htqln4ZjVutY1ClbuR3f+k8cEU+oMBkwS1fA3dGyR3U
	jXC6fAUzdJzFkdCs5zIdfw6WQynmjtu5S1UDLObJhD18DibeK8kZFcfuD+H4RLW5YI7y53IOskH
	//t3pLHRhgpUU4LZGshjwzn0u32R04NeSMzAaH2lZFECn9B2NUbhT4azo0rw7lSRzjsLtfj78Ns
	FCzQUoyyePUijWUJoxKfMtyGOPZ/jwlyAhCi8oSGLRUKqiEcLJwn9ZY8Mrg1M3sT1bUH1P81pyu
	Hj3shc8Xn8OHXw+UhY0848o/0T5GljbxdCJXVsHDue1PVJGygOrGSG0nyKHKvLdSDs3GKnketfw
	xGaaENfRY69jiD9GWa8sK2KJVq7xV3Mg3+yYLm53dPPW9eprdZfdXaD4gNi6kDKZyByZqDM28nC
	S+zQihk
X-Received: by 2002:a05:600c:870b:b0:471:9da:5232 with SMTP id 5b1f17b1804b1-47ee3349d27mr34820035e9.15.1768400234736;
        Wed, 14 Jan 2026 06:17:14 -0800 (PST)
Received: from ta2.c.googlers.com (164.102.240.35.bc.googleusercontent.com. [35.240.102.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee57a2613sm29595445e9.6.2026.01.14.06.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 06:17:08 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 14 Jan 2026 14:16:31 +0000
Subject: [PATCH 3/8] dt-bindings: mfd: Add Google GS101 TMU Syscon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-acpm-tmu-v1-3-cfe56d93e90f@linaro.org>
References: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
In-Reply-To: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: willmcvicker@google.com, jyescas@google.com, shin.son@samsung.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-hardening@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768400224; l=1858;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=8UojV7uTS3mheivu+7sw0eF9oi43bOc4wBfGZPuFRE4=;
 b=L7ka53Pavk7o7iv9buy1Uk9Hui9JJggaZxvrQ3ziB2ZiI1QLIDOWA/yKh7O8c0KHhKHL9SBVE
 ZcmvuXqrAbVA3WmMGUQlhnK9rs6sZ/WjzLR5VHO/HfFM7tqZ8VIaPf2
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Document the bindings for the Thermal Management Unit (TMU) System
Controller found on Google GS101 SoCs.

This memory-mapped block exposes the registers required for reading
thermal interrupt status bits. It functions as a syscon provider,
allowing the main thermal driver to access these registers while
the firmware manages the core thermal logic.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../bindings/mfd/google,gs101-tmu-syscon.yaml      | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/google,gs101-tmu-syscon.yaml b/Documentation/devicetree/bindings/mfd/google,gs101-tmu-syscon.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..6a11e43abeaa23ee473be2153478436856277714
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/google,gs101-tmu-syscon.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/google,gs101-tmu-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google GS101 TMU System Controller
+
+maintainers:
+  - Tudor Ambarus <tudor.ambarus@linaro.org>
+
+description: |
+  The TMU System Controller provides a memory-mapped interface for
+  accessing the interrupt status registers of the Thermal Management
+  Unit. It is used as a syscon provider for the main TMU driver.
+
+properties:
+  compatible:
+    items:
+      - const: google,gs101-tmu-syscon
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@100a0000 {
+        compatible = "google,gs101-tmu-syscon", "syscon";
+        reg = <0x100a0000 0x800>;
+    };

-- 
2.52.0.457.g6b5491de43-goog


