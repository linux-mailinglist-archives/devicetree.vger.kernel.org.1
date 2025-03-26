Return-Path: <devicetree+bounces-160934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9343A719C8
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 16:08:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 403D5179DCE
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 15:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25B591F3BAC;
	Wed, 26 Mar 2025 15:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SVCN1er/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF3A1C84BD
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 15:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743001286; cv=none; b=aNl1pyPn4odLy/Klb9VTnaVrvDJS2UdB8hEaEheUobhmRSQG+CgzNaUqD6OSNLCX/PsvvAsGyXWA93cgScMr36kb6Y3swWEjn71W6ZjJisPlsVdp/ImzzBfEpneRUTQ+2MJXN5qjvqaJRcpwWM14zOUbEoHXtLDJtcRBmjEplE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743001286; c=relaxed/simple;
	bh=dEEHMCaZuBhSVR8548s7dYibu0O+KizI9ENpYjHaHN4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eefsfQwcghaxtzhzLlWIEC3CHr14vzQpyadT9hPa6AhtC66ql4GnO1BLDXYt8jxeAu3cXc1Hx9shw64R861Zl91apNbnOQPe7U26A9x/xhHaWr4d1BjtYIGrJXI8MDeJO7fFyDSpXLApOP9xLevQzsfwcwxsIRu3hsiC42Is4vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SVCN1er/; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3912d2c89ecso6504305f8f.2
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 08:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743001282; x=1743606082; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gUwLKknfTenPDH0/Fy4kPfAbwbk8wFgm9qaIXqrjO4M=;
        b=SVCN1er/04J1rs5SSl1K/d7csEUWxPHLJbiwSyqvKIjKkVcgauTT4IymORuUs47/sD
         kPv0jTqgv612sQZ86Gmx27g0bWvQV+X/wLDUbCOFbVj8aeuFG8vkNLh9zZv+qf4Un6mK
         0OEe+Z+NTBd5Rqz5uGQpuBagq9DF8b1FwTFSUtctMBZ7roavbA65iokpqWcOL42ABmnT
         zorRbZzFt+VCdt69DnsgtYYrCQlV3Tkk9WD2iPuBg5sOoKyf+zBX5PeHl+uI65zYCznF
         9L0vTKuCdkJjWH3nKIj3B2Exc381CyRmkKKLvX34aWT8k+jJvN587qkJmNbGaT/Mvfxs
         aMSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743001282; x=1743606082;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gUwLKknfTenPDH0/Fy4kPfAbwbk8wFgm9qaIXqrjO4M=;
        b=TETBP1MNV+QxGwr9Jg4beRUbz9eoKxXvINjVE4En6mIwoYw7wxX2hZxASNZ2C/GMsn
         OoZeA4w4/i7atRqe/Lc9neCzlKz5+DS7/3/xNB1LgdLg7uq+BFhhKedRpvodR3+Emxe2
         kwKC3vrxBBRaj8oJdI79RJCQ+U/Y/lwtaMkK0RMmjsWRXC5GiolmqeBAd7wIqsyKREq7
         TwUQdvyTCh01yF6bG6IGirXDgu+tYg0O/xRHLIfk2p0GO6e4W48vq3Kf1upWKvW6wzQZ
         z5IyAuH73yoX/acQWGzFZJJkQPz2C2sM7VrxzbkGMmk+3f+ZH5iA/3fNtM6pqTPy1mXM
         T9bg==
X-Forwarded-Encrypted: i=1; AJvYcCVaneIkm7cVDZ7ljWbXrsus5ls4wwwznl2ymDwREnGnE3lGV7Mpadp8vb+U51RaYsPB5rMl9dSGsANk@vger.kernel.org
X-Gm-Message-State: AOJu0Yzme+gzpPpm8pTUZ4ExOO2HwR3eC5WgEA8I5XEoCiytd7dXNDpm
	QXyel/Vz7RaEiWGyQsyzd/sPT5tBYHrf0WSBQcUO4PnGCYT0evpv6cG7fbPBKdo=
X-Gm-Gg: ASbGnctxkQcNUeYg+JW7bd5kPMnv/kqkoKCNCseF5u1TO/4l90pnQRsv7ujpy5d0ZQP
	xfoQIY7lYkUuU1e4GvgfxFzPiAMRFUyxIjtv8rqwNJC/9spCBnX/aCEMwKV85ie5xZsD3yOy3qO
	tPWgKA0K4nql0ysU6ZBpr6d4s1MR4H9wZUHifzbFkuyKUXV/ufnvYky3ECqzzQpM4BHlpgPzdi3
	BuhYWg6uTt+3MT0rO7MelCPBKU4W7I4w/j+vDTqPJ+BxVITiLTOsdJy4LIQdXCkN1NtKmxRA1hB
	fhduZmx5mFZ3MBCi8G51LywT99GZakhWpekmhQnxK1IZ2sUwThu9osaEiljnYP1WoGfow+HYKhN
	S3j5E5aBszA+7/+1JGRRDSyHI
X-Google-Smtp-Source: AGHT+IFwJbRy2F6SHfurVSyLZ4rU1yis69Di0l4fXOHSEYK7xg2ZdnkrHcG3ZwZ/nzU4Utk7RDBoaw==
X-Received: by 2002:a5d:5f8b:0:b0:38f:231a:635e with SMTP id ffacd0b85a97d-3997f912722mr19224217f8f.25.1743001277560;
        Wed, 26 Mar 2025 08:01:17 -0700 (PDT)
Received: from inspiron14p-linux.ht.home (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a3f81sm17408125f8f.35.2025.03.26.08.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 08:01:16 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: robh@kernel.org,
	hdegoede@redhat.com,
	mchehab@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	sakari.ailus@linux.intel.com,
	hverkuil@xs4all.nl
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bod@kernel.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH] media: dt-bindings: Add OmniVision OV02C10
Date: Wed, 26 Mar 2025 15:01:14 +0000
Message-ID: <20250326150114.71401-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250324171508.GA668235-robh@kernel.org>
References: <20250324171508.GA668235-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for OVO2C10 a two megapixel 1080p RGB sensor.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/i2c/ovti,ov02c10.yaml      | 115 ++++++++++++++++++
 1 file changed, 115 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02c10.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02c10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02c10.yaml
new file mode 100644
index 000000000000..8cd174075d52
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02c10.yaml
@@ -0,0 +1,115 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2025 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,ov02c10.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Omnivision OV02C10 CMOS Sensor
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  The Omnivision OV02C10 is a 2 megapixel, CMOS image sensor which supports:
+  - Automatic black level calibration (ABLC)
+  - Programmable controls for frame rate, mirror and flip, binning, cropping
+    and windowing
+  - Output formats 10-bit 4C RGB RAW, 10-bit Bayer RAW
+  - 2-lane MIPI D-PHY TX @ 800 Mbps per lane
+  - 1-lane MIPI D-PHY TX @ 1.5 Gbps per lane
+  - Dynamic defect pixel cancellation
+  - Standard SCCB command interface
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,ov02c10
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  avdd-supply:
+    description: Analogue circuit voltage supply.
+
+  dovdd-supply:
+    description: I/O circuit voltage supply.
+
+  dvdd-supply:
+    description: Digital circuit voltage supply.
+
+  reset-gpios:
+    description: Active low GPIO connected to XSHUTDOWN pad of the sensor.
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        additionalProperties: false
+
+        properties:
+          data-lanes:
+            minItems: 1
+            items:
+              - const: 1
+              - const: 2
+          link-frequencies: true
+          remote-endpoint: true
+
+        required:
+          - data-lanes
+          - link-frequencies
+          - remote-endpoint
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ov02c10: camera@36 {
+            compatible = "ovti,ov02c10";
+            reg = <0x36>;
+
+            reset-gpios = <&tlmm 237 GPIO_ACTIVE_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&cam_rgb_defaultt>;
+
+            clocks = <&ov02c10_clk>;
+
+            assigned-clocks = <&ov02c10_clk>;
+            assigned-clock-parents = <&ov02c10_clk_parent>;
+            assigned-clock-rates = <19200000>;
+
+            avdd-supply = <&vreg_l7b_2p8>;
+            dvdd-supply = <&vreg_l7b_1p8>;
+            dovdd-supply = <&vreg_l3m_1p8>;
+
+            port {
+                ov02c10_ep: endpoint {
+                    remote-endpoint = <&csiphy4_ep>;
+                    data-lanes = <1 2>;
+                    link-frequencies = /bits/ 64 <400000000>;
+                };
+            };
+        };
+    };
+...
-- 
2.49.0


