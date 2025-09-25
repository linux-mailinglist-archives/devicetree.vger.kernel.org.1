Return-Path: <devicetree+bounces-221617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD200BA168D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 22:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7003C3BCC93
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 20:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65441320CAB;
	Thu, 25 Sep 2025 20:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HLgDqBIv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A6E320382
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758833162; cv=none; b=hXOpQ8P84LhkGs0+ouYefbi7MpmI6EN+6nBV0zjVuTkV4vlWUXNKlGf4RT1Srmovpxm1ev8WaHsA9pdfO9rvhwgTTO59k7lNwGmqzeHkCFA7nlUaKkFkhkOpkreApXz6khOYiP2XoPtJq3PIxyomwSMkNJN5JTR/n7Ia9iAi0EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758833162; c=relaxed/simple;
	bh=RWsMT7+A3hOigM/6lKe9y0xp7C7c2WQ715Dnkvpx1sA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ppXir0aiZBgP29JBLQdRkBcmxvbodH960VmKJLy+E9hr8L5uJNQ80pbse15+bzGp0HejptDRxFtIY+EbPKPG5OuG3gK8GUkZTUnXG5091Ix58GnhfxxVZcqv7zGO2SM9wxcCuFf0g+JcreLaK7LywG6vZodx2jYrhKth0hZvAjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HLgDqBIv; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e34052bb7so12062335e9.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758833159; x=1759437959; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8EXqlzb/n7e+U7sXee7rlDRiXcbYy1hChaEgy4phOls=;
        b=HLgDqBIvrYXMXP04jn9b4Uhuo9rCVRop2vIs2SX9xljt38rQU/YpL0Fx8+W46oBQZR
         r6Q0vYb+8Y/QyCJonJJl5EvTbu5zWqgZTkBqWsLHnDjdTxuHqD4Igx0CGRazIHrk1+p5
         gh6gvTeLsn5xTuxqkbptwMAeSnp2RPZ/scnpeKeTwIQZQNmXmMLLxRrerwamSR7rL0vf
         qQVpWHs9EUfBxERM2Iw8NScgX5IMdLAPRy3wZfpdj+nN4bvmqTSoaf3ELI7Xqa+JDU6f
         3pzsrpV+B/Uf4cGapwMcJv3RHc+DiiGOFm86eqyaaTTaH2BImbb3Mc0Yk2Kjxiddgd3O
         RLoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758833159; x=1759437959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8EXqlzb/n7e+U7sXee7rlDRiXcbYy1hChaEgy4phOls=;
        b=TxJQxvk/hQ8k2pAxICFnQx0LPV4rvwklJAY8tLB3FvXPkiDj8exjYhB/LBAzOwouG5
         bTg1LDwm7a+/CfyHcNGZctIVWKzytrbOctWj8hkueHjpHvdW1D9eCbvRjivLpiVGDhu5
         9YuJLDctgpfO1bLXE4iMVHi7aAyKHQeEknZAFFtwj4cU9Ax1GEJiaZy1VvrCxwGG5q+L
         xVQ3QX+tQMw9fzusxUePydIa64O6prY/Au+L0jjj4iQIrYAdCfjSJ1+FO1XyqtKk08kL
         oWxqecHCiz42q6G1AA0Cth8OZ6W6JGxDlWLLMTU7IOlqjtGySlWjRhCFbSZanhv0DFZ6
         /heA==
X-Forwarded-Encrypted: i=1; AJvYcCV1pXy53JQtqrcSPnow4G6AHYPB7tKKgrtiLWGPD0NrZdTrnH1AQkOLdWfqAoH9b5i2f+SxafJ4R4Is@vger.kernel.org
X-Gm-Message-State: AOJu0YzU6qJ/Esine5UK1Jzs0N6yukPsWxzAq5zLlEiB8F+/xH0SWkho
	k0OoeOuQNw43pkv/sXHditdP89VWJ1x+yE64cuUZSW7H5zh7Fny99Fdd
X-Gm-Gg: ASbGncuDHz00qd9M6D0c9qi3V60JObMpmKa3V3xzfof1//gIRyVzSPF3tKbVwXtioa8
	jMhJKL7uJ/2nd/3b3F91TGXyD+OS0Xh+1AlUDCRZI+MHWOOBhjC7m2+LW/mMuOxcgSkNtolnskx
	N66d8EGzSxiab+5+wHXpy1qNYZHLMtVQH9W1WXY6upHsf+/IFpVqI78I0lJFrmRRB1xZJaappdY
	P3PUDpcE7KMlBEvp952ak+GS2y90IVZOgvyDXcY1TQD8FpDrJYZHaS0fAAgSYS8nTNf53ERyjDi
	sJ1mScofF4SugYofDw9V5m3vTu0AisKa648TNxrXLv11q5EDAgG8W4RE1/Y+64OzNHdbfaX+uMZ
	DkH1u8jZOtJnWGnBRG1WEWc83T3PbQg/d8uiVQWc=
X-Google-Smtp-Source: AGHT+IGQ00c8yLhRFsKEKF8310MPtSUTnfr1KkARNOF+iixnrySN5lLqz/3E1NySce4/V/DN+APhFg==
X-Received: by 2002:a05:600c:6306:b0:46e:1d01:11dd with SMTP id 5b1f17b1804b1-46e329a8503mr40457695e9.2.1758833158549;
        Thu, 25 Sep 2025 13:45:58 -0700 (PDT)
Received: from localhost.localdomain ([78.209.201.53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a996bf1sm91201395e9.1.2025.09.25.13.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 13:45:58 -0700 (PDT)
From: Antoni Pokusinski <apokusinski01@gmail.com>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux@roeck-us.net,
	rodrigo.gobbi.7@gmail.com,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	grantpeltier93@gmail.com,
	farouk.bouabid@cherry.de,
	marcelo.schmitt1@gmail.com,
	Antoni Pokusinski <apokusinski01@gmail.com>
Subject: [PATCH v2 1/4] dt-bindings: iio: pressure: add binding for mpl3115
Date: Thu, 25 Sep 2025 22:45:35 +0200
Message-Id: <20250925204538.63723-2-apokusinski01@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250925204538.63723-1-apokusinski01@gmail.com>
References: <20250925204538.63723-1-apokusinski01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MPL3115 is an I2C pressure and temperature sensor. It features 2
interrupt lines which can be configured to indicate events such as data
ready or pressure/temperature threshold reached.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Antoni Pokusinski <apokusinski01@gmail.com>
---
 .../bindings/iio/pressure/fsl,mpl3115.yaml    | 71 +++++++++++++++++++
 .../devicetree/bindings/trivial-devices.yaml  |  2 -
 2 files changed, 71 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml

diff --git a/Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml b/Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml
new file mode 100644
index 000000000000..2933c2e10695
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/pressure/fsl,mpl3115.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MPL3115 precision pressure sensor with altimetry
+
+maintainers:
+  - Antoni Pokusinski <apokusinski01@gmail.com>
+
+description: |
+  MPL3115 is a pressure/altitude and temperature sensor with I2C interface.
+  It features two programmable interrupt lines which indicate events such as
+  data ready or pressure/temperature threshold reached.
+  https://www.nxp.com/docs/en/data-sheet/MPL3115A2.pdf
+
+properties:
+  compatible:
+    const: fsl,mpl3115
+
+  reg:
+    maxItems: 1
+
+  vdd-supply: true
+
+  vddio-supply: true
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      enum:
+        - INT1
+        - INT2
+
+  drive-open-drain:
+    type: boolean
+    description:
+      set if the specified interrupt pins should be configured as
+      open drain. If not set, defaults to push-pull.
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+  - vddio-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pressure@60 {
+            compatible = "fsl,mpl3115";
+            reg = <0x60>;
+            vdd-supply = <&vdd>;
+            vddio-supply = <&vddio>;
+            interrupt-parent = <&gpio1>;
+            interrupts = <4 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-names = "INT2";
+        };
+    };
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index f3dd18681aa6..918d4a12d61c 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -113,8 +113,6 @@ properties:
           - fsl,mma7660
             # MMA8450Q: Xtrinsic Low-power, 3-axis Xtrinsic Accelerometer
           - fsl,mma8450
-            # MPL3115: Absolute Digital Pressure Sensor
-          - fsl,mpl3115
             # MPR121: Proximity Capacitive Touch Sensor Controller
           - fsl,mpr121
             # Honeywell Humidicon HIH-6130 humidity/temperature sensor
-- 
2.25.1


