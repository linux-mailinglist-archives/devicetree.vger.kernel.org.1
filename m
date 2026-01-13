Return-Path: <devicetree+bounces-254256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 39178D16959
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 05:04:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F811303A012
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 04:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 297BF34FF48;
	Tue, 13 Jan 2026 04:03:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D6134F462
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768277015; cv=none; b=kclNoDMdzTr2TOeUDKwxutz4e99N6FoCn/GZaoemw+HwCqi80XOKwrIJBXJ68Qw/9IgvYN5ZxfFz3IVH8k7IoTF8FCuL9XTdMHt8nE2uM+qbdmNGN7gzB9r97E0hhsgk4NhDwP4DJNlvjS66B2FGBxVgexjfFi6gBwg0jUcxRfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768277015; c=relaxed/simple;
	bh=+4P7G/H5pJ2QK5RHeTSzPwOj1SVeEC1sYp8nexz72Pc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DM+QP+9g2xFJQEmkRtrJCaxhRlpf0/pjN/dZNaswPNP3M6SNZzEgNuYK08Hs/gb1gn/eYLO7h6JvpP7zCMq1cXzzDraoqqC4sAmyr7om7hK3dirwKTgIDxiKmoe6CgXxvrVt/n4rwVd+N/FvoUhWsH8k2uYwkQYJAa/2rG1IvKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7b22ffa2a88so3443781b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:03:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768277013; x=1768881813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jszI5kCb7GvcfABR9rq1Vqye6t7PTQaLns3oO/bmQjE=;
        b=WmvlUwxn6SQd49Dkov/PXB7D5wHeCIZeFYm9oKTc+UX45HEFedi6XVM55b6qRmguRA
         Pja+ECk/VKAR5ra7B53fZZWENDMfwbimntOsseAE2U55RladW5B1jn/7118RYJwJVKOK
         AIYwQaTdUF0y0PHtw1O7PNIjZs7UrvmPFaEPGxUnTBfkqn53nYUCB7eirmsdB+v7y2QK
         xKJqMitpmvdncjyiGjHgGPwqX9r/zilt7jSIufvFT6YQFnEQ2FxhXehbUi9lRRXVWRmQ
         QpBUQCLhnL7h8JM3qDRqZ0YzCPii7ItMMHX2IXnJ3bOM4Oj4+V+rpR6ch+7dWomHYJHn
         jMVg==
X-Forwarded-Encrypted: i=1; AJvYcCVme0+dY3gCdp6kLWiLIGB0fdFEdjn3xgP5coOC/4QeP6L/wOV+nEJPdMDQMqwJozgUwaHnDjCGS80l@vger.kernel.org
X-Gm-Message-State: AOJu0YzyvsPH821q9fRYGFtMnuvw2VksEpAAZ6qH3ucrFMsVwuVs0ue0
	sioofT4yo93xXBCwn6N6mfKkO4ArhewUBlz1ndkEOqVHuu68phr4di2w
X-Gm-Gg: AY/fxX5vULhUyNmue1xYyaFQqEjijmfNt6Z5xgrWnVwjU50Dg/jLaRGNRF/Iq4ygZQa
	W3O5dCp4rz+lAfZoZdDVABsvGSmsk0o2WMs5X1KoZoaupp9TmvtoJ07xLn4dy3EfElyIAyfeYEX
	t2rD8nXTe71PQSZlCIOksfbs/Ua8YOuRfLIodyBwIagtCCXHgGbdh55VnrRaV/9i3Yi73z9MtvU
	l7k2uA6fvP5jQ6Nt0sxxILw7bKLgvu+2S4rDXQxCEoqeHsOGM7DP8Qypo3nRX2UXOwoQlmSWK6z
	53lyn2Bxv2s2op2L8KbNaP0uXOIcfHE7XS/BTFHYJkDRS2Gfbyk8PGVFHPWKVXAhCBK5U1YNnBW
	D+Awd1ohnCS1ifs7jT3IJngwpsfRJC+hS3i0PYf7cE7ReRX0wdZsaCehR67CgMVuep88kDXgNwa
	PclI/Ah/BlKMHJPeNmOa73tXI=
X-Google-Smtp-Source: AGHT+IHiT7p8ZCUTApSvCEfG9fM6/CuV+9DuTxFQcPUcsmnBlVfS/7qT/UzH0Kzo5BSlCyKFYjcUIQ==
X-Received: by 2002:a05:6a00:4387:b0:81f:42d7:aba2 with SMTP id d2e1a72fcca58-81f42d7ac86mr6088826b3a.11.1768277012973;
        Mon, 12 Jan 2026 20:03:32 -0800 (PST)
Received: from DESKTOP-LUHV3PD.localdomain ([59.152.111.50])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81f3ce8df8bsm7776016b3a.40.2026.01.12.20.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 20:03:32 -0800 (PST)
From: Siratul Islam <email@sirat.me>
To: andy@kernel.org,
	geert@linux-m68k.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH 2/4] dt-bindings: auxdisplay: Add titanmec,tm1637
Date: Tue, 13 Jan 2026 10:02:40 +0600
Message-ID: <20260113040242.19156-3-email@sirat.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260113040242.19156-1-email@sirat.me>
References: <20260113040242.19156-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree binding for the Titanmec TM1637 7-segment display
controller.

The TM1637 is a LED drive controller with a two-wire serial interface
(CLK, DIO).

Signed-off-by: Siratul Islam <email@sirat.me>
---
 .../bindings/auxdisplay/titanmec,tm1637.yaml  | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/auxdisplay/titanmec,tm1637.yaml

diff --git a/Documentation/devicetree/bindings/auxdisplay/titanmec,tm1637.yaml b/Documentation/devicetree/bindings/auxdisplay/titanmec,tm1637.yaml
new file mode 100644
index 000000000000..c39000b88676
--- /dev/null
+++ b/Documentation/devicetree/bindings/auxdisplay/titanmec,tm1637.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/auxdisplay/titanmec,tm1637.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TM1637 7-segment LED display controller
+
+maintainers:
+  - Siratul Islam <email@sirat.me>
+
+description:
+  The TM1637 is a 7-segment LED display controller with a two-wire serial
+  interface. It can drive up to 4 digits and includes brightness control.
+
+properties:
+  compatible:
+    const: titanmec,tm1637
+
+  clk-gpios:
+    maxItems: 1
+    description: GPIO for clock line
+
+  dio-gpios:
+    maxItems: 1
+    description: GPIO for data input/output line
+
+required:
+  - compatible
+  - clk-gpios
+  - dio-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    display {
+        compatible = "titanmec,tm1637";
+        clk-gpios = <&gpio 23 GPIO_ACTIVE_HIGH>;
+        dio-gpios = <&gpio 24 GPIO_ACTIVE_HIGH>;
+    };
-- 
2.47.3


