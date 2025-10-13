Return-Path: <devicetree+bounces-226009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7DDBD2EAE
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:10:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2D2BE4F14C0
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B82F526F2B9;
	Mon, 13 Oct 2025 12:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EGMqzjvY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1364226F2A6
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760357429; cv=none; b=E5tq4Kkb4lBw2Q6wFVHnIeZviuDzW7ur8KWMm/zrswl0q7dfmjMETX5gDvZuQ4m4so9MgNhabKuJzCIwuLpC96fe1xxuIdhWnbbXC5Emtx6DPmhPGdqp0fCKSuSf0OrZv/d8x+kdvMSnO8ChX+NKIvFEJ6GCaIOCW0vggFbPP5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760357429; c=relaxed/simple;
	bh=DYAG6gza9R5CAESPb/D8ZsLO66e7KqstijNZcnmHd6o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XCAHGzWjJOwQbscBlxrc0lZKgSlKhvHu3CuszyzXB1ofoPY5cOsNmcatwuJU31U9w+EyuqJrL/QRrHDfIxBdoJQiFCqyDQZUwxWj9thx3FgJkgVjAdoDL5HE47JipOD31YqnVoyPOmwAC3+7FW3RA4grJgBsQuXfZfFj89PgmH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EGMqzjvY; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-791c287c10dso3545564b3a.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760357427; x=1760962227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4HWS+e8O+KlDsHa2yaiXdrc6KPCBOlNosXwk907ZwlI=;
        b=EGMqzjvYjyCouRsnDc1NnOzJ5uf8f5IZjxkwCZ/4uyv5eTSh3Facl4HgWKWYv5x/4/
         LbHZceojR9P6cOpA+xLnen2MSAxVHAgsIagl6/sv+cuKPioF5SP6b5KHy8wlXOCznwLM
         OcxH3vZxm/XXywnqAvvLoN7l9MmLtpLgc7KNuLRfRVEnOvp42oZpk1w3CY+Efplf3AIH
         n7UAxORG59aeLVIK3nHauDc+YwgamGKEdMxg/9nSvns0K50tOLCCBF5oFj7ZAb2qIA+b
         2v6ntXtu+B4PWQGzVytBY+DsBVrfWDIgKfu9KiH55rChyp6AjKK9W4crOqfjxAirgwo9
         RvYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760357427; x=1760962227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4HWS+e8O+KlDsHa2yaiXdrc6KPCBOlNosXwk907ZwlI=;
        b=g6vx/SAZokJfIRP/v3twuHg85KUbZ7YiEkCUMT0EtyGCY5RLivtDDhu633B4WHX+EG
         4R3hHKHipJhXkXK1Q4OHRMcvKVBo1qcw/wxQJtGyFWPZWUzAHBzG5LWYubKfrb9uhqvQ
         0A+bK/uh9apOzB5aP3et7zY268mqq5wbi6kGOwzzjUzw3CoTzEHER30JjmOtVcZ7qORJ
         jKnJBymHR4ZljQS/9qc2LzZuzZG6uiHKU67MtKfh+OTahyl1kprQ2T+tG2Ffn/FYzWqk
         ffVT/PLtVQpP8nMnj9XpbXaMSvgc9NfHwlwme2h9cGB/RkV3gWuGhC8oraF9JZCM+hkG
         bktA==
X-Gm-Message-State: AOJu0Yzf/qUR5u3tzVKx1xRx0YBn7n4q8VRfLV8w5zxwKYJ0ir3dIJoW
	7HIsmHqJRRA1o/HUBoQl/gjAmQZue/yq6NB6+zhXppJp/An1D7QX8u2n
X-Gm-Gg: ASbGncuICWpCJytzT/EUYesOZw6FKEZ8zCwPBZDrEWtDcmT/2GbkK0Mh3atnSUOTz2n
	Xh8BQcoWRTKRu9Nnr9/Bn/10UQKsy0RRaumd7o8f2D5Ajfaiitbfwt6fZ7JzaHfQMA9zVNxnvDS
	edKIsYgB0lN4RRINFsPDtBju3j//eSPp5WXzk+zWyS8bn8AVS2akic7HOBBJlgacrUqG4kdWoBx
	iyMK97M2cid4Ks8BjMvIiBuLmPh/aiLH0+yzZmOwuwlsRtnHkwtDriZVHZGpZ/5mg+CKzuwqVAs
	N6TcogulLXvZXsgR9aCIw1iav7XDY2uV5UyBX1qV1awXB2v6XRN30py0VW/ZfCU8kD0Gz6Zj89i
	6OJYWYxnMmZOOSvgXNq9R0Ju9QBwawF11XnBCJdqWfJ4BH3QdRmtdFk3il1gu
X-Google-Smtp-Source: AGHT+IFVrAe1c+HSOfDTrJXTl++FYyGq7XL7XzrDD98EJPi9dBGxOpdHa046ZnEbYF8M6mQemgd3Pg==
X-Received: by 2002:a05:6a21:e097:b0:2d9:4afc:e1cf with SMTP id adf61e73a8af0-32da83e694fmr25851633637.47.1760357427217;
        Mon, 13 Oct 2025 05:10:27 -0700 (PDT)
Received: from MRSPARKLE.localdomain ([206.83.98.89])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678df48a83sm9633354a12.31.2025.10.13.05.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:10:26 -0700 (PDT)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: leds: Add YAML bindings for Virtual Color LED Group driver
Date: Tue, 14 Oct 2025 01:09:45 +1300
Message-ID: <20251013120955.227572-2-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251013120955.227572-1-professorjonny98@gmail.com>
References: <20251013120955.227572-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Document Virtual Color device tree bindings.

Co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 .../leds/leds-group-virtualcolor.yaml         | 100 ++++++++++++++++++
 1 file changed, 100 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml

diff --git a/Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml b/Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml
new file mode 100644
index 000000000000..bafdd8fb9557
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/leds-group-virtualcolor.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common properties for virtualcolor led class
+
+maintainers:
+  - Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+
+description: |
+  Bindings to show how to achieve logically grouped virtual LEDs.
+  The nodes and properties defined in this document are unique to the
+  virtualcolor LED class.
+  Common LED nodes and properties are inherited from the common.yaml
+  within this documentation directory
+
+allOf:
+  - $ref: common.yaml#
+
+properties:
+  compatible:
+    const: leds-group-virtualcolor
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+required:
+  - compatible
+
+patternProperties:
+  '^led@[0-9a-f]$':
+    type: object
+    $ref: common.yaml#
+    properties:
+      reg:
+        maxItems: 1
+        description: Virtual LED number
+
+      leds:
+        $ref: /schemas/types.yaml#/definitions/phandle-array
+        description: List of phandles to the monochromatic LEDs to group
+
+      function:
+        description: |
+          For virtualcolor LEDs this property should be defined as
+          LED_FUNCTION_VIRTUAL_STATUS as outlined in:
+          include/dt-bindings/leds/common.h.
+
+      priority:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: Priority level for LED activation
+          (higher value means higher priority)
+
+      blink-delay-on:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: Time in milliseconds the LED is on during blink
+
+      blink-delay-off:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: Time in milliseconds the LED is off during blink
+        note: Setting just one of the blink delays to a valid value while
+          setting the other to null will cause the LED to operate with a one-shot
+          on or off delay instead of a repeat cycle.
+
+    required:
+      - reg
+      - monochromatic-leds
+
+additionalProperties: false
+
+examples:
+  - |
+    led-controller {
+        compatible = "leds-group-virtualcolor";
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        led@0 {
+            reg = <0>;
+            function = LED_FUNCTION_VIRTUAL_STATUS;
+            color = <LED_COLOR_ID_RED>;
+            leds = <&led_red>;
+            priority = <2>;
+            blink-delay-on = <500>;
+            blink-delay-off = <500>;
+        };
+
+        led@1 {
+            reg = <1>;
+            function = LED_FUNCTION_VIRTUAL_STATUS;
+            color = <LED_COLOR_ID_YELLOW>;
+            leds = <&led_green>, <&led_red>;
+            priority = <1>;
+        };
+    };
--
2.43.0

