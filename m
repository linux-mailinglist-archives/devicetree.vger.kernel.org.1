Return-Path: <devicetree+bounces-76741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D10790BCB9
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 23:16:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4377D1C22550
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 21:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21FC918F2DC;
	Mon, 17 Jun 2024 21:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="psiWRjxc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4C91991BB
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 21:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718658980; cv=none; b=Pi/AXMdOrx0ZBNVZkzN9bJn5Uf+KYmQJweJKoS8cmo9sIqUzlVSr0f9eHfoUBP12+Ga9fEezuhRt/CtpFoZqnb43tU1zNxR8MhtzmeKQNILk9K68JCUgcDM1lGckuNFfFet4GhcNoBF4GtU0dJUTY2S6SbPIMBLE/znwFfvPScc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718658980; c=relaxed/simple;
	bh=8y7yKnGdzaj64mxMjcCs+i6CuYsLhoqUU/Z0xSuKaQw=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=PAadRJIgKIY0/WPfSDESJ7AKKEbs8slirpnnmWzFk7ktbXqs29NhwpPn8yZLvUlEdUSPtjA4EfmF4LQvWM+D7Y2/NdpxvPH7dIy67GY2zeztNi8Urw2bhiACbI/7S1NnsMEqIqRTPXb9+8rtlX814tjN/3Ctr+6PGGp9gcvz+Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=psiWRjxc; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5295e488248so5349575e87.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 14:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1718658976; x=1719263776; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CJ6zgi9D7w1fzZAaeJqZdwcMBOeRHYLdh/nAacVj7rI=;
        b=psiWRjxcfrd0NstGP/HfDrUU6JhIEtHzA6YqOU1Wn3AgDby6qYNwyeL9+5SDF51J0C
         CwRbeu9gNIrYpKjV6qkveHwmOpd6dFCm89m1RSm3kF4I4hQprlzj5+tqahzEFiRI1J6O
         jEQqJNLc7KyytnHFvY//ZuyGtppgNfuOfpfIjnwpMCLcvJ8SSCMHcdaDwC2JlAtpQXTZ
         McEcv3P2I2/f6CLtr1b61c/3R9QOYbcNscYpx+upFhMsLclmy1DIHbGKyGuQza/cvZCQ
         BH2nVUg93nXjvHEbmMM9QeHfPCtks0slF0pDQZ+nvOctkiN5ODmKhlHYp+E0rkRCl8qT
         /umg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718658976; x=1719263776;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CJ6zgi9D7w1fzZAaeJqZdwcMBOeRHYLdh/nAacVj7rI=;
        b=EEn7bVjFawajdMdKBDwD18Ympk6f5n+LIR2gmwU7S2ejf8BJjq7OmUeentoc1z1YP2
         tvsJFZvKGy70lNTmgLT7p3WQnu/IW7qOLmxfnP5xdBl7GhWudlbwtPthdoBFy5MdKd3J
         igVtndJrFte3eaGrMqR/MBt6uhubwEsxGlGeymxpBbUL5DaA5kaj7EEOH8/SOzzR1laO
         LBz54xuTwW4li88Xs1bIw+MZ3RcU/ooy/YQ/0LZsUt2IMUHhAjhhtpF0wFhzbqHVyA+p
         JAt/BB1CUIAut3bxTrVsk9rxJP69QnffD7BLzY3qvbj4YbNB2lHAWC6GI1DZ4/lysovU
         h0Vw==
X-Forwarded-Encrypted: i=1; AJvYcCWOkthuJ6X6bVHPQ9ZWDv9gS8whvJhJziniKWPqCrUbjR8Aa5ay7Byv9LFg3C7nHByKGFL28wt08bSY58CBIjgZdIaXMlhmEPtgHg==
X-Gm-Message-State: AOJu0YxWo6puPn+F3yKjpTVM6gZgs5/IaMffxRw3h/YnYPB02GP76lW+
	IQmQrrAU6On6baxd/QezCIybXlRJWdnN+2MWegjAtwzQu7tWA1rplMAndj+RbFsARQUiPHV3HKz
	2ajTr50DwfC3FYSuUo8faIodPr+NbhpYaQ+4dZB8Fi1laq5kKyW04T12Zn6kwRKw7Weicp3dSlx
	6LuOzzQqgyE6WMcyjPtrX/SNHM
X-Google-Smtp-Source: AGHT+IGKRAgzgS/CLDASEV2GOOipsg5ZbBQBiDZ/kzr+AMSRCWLvsbtz9f+lYLauKAgdJkmBjB1f/A==
X-Received: by 2002:a05:6512:3b28:b0:52c:87d7:4b3f with SMTP id 2adb3069b0e04-52ca6e900a1mr7435321e87.54.1718658976089;
        Mon, 17 Jun 2024 14:16:16 -0700 (PDT)
Received: from admins-Air ([2a02:810d:aec0:2a54:d850:f114:6022:6ebb])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56db5c3dsm551319566b.55.2024.06.17.14.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 14:16:15 -0700 (PDT)
Date: Mon, 17 Jun 2024 23:16:13 +0200
From: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
To: pavel@ucw.cz, lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: leds: Add LED1202 LED Controller
Message-ID: <ZnCnnQfwuRueCIQ0@admins-Air>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The LED1202 is a 12-channel low quiescent current LED driver with:
  * Supply range from 2.6 V to 5 V
  * 20 mA current capability per channel
  * 1.8 V compatible I2C control interface
  * 8-bit analog dimming individual control
  * 12-bit local PWM resolution
  * 8 programmable patterns

Signed-off-by: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
---
 .../devicetree/bindings/leds/st,led1202.yml   | 135 ++++++++++++++++++
 1 file changed, 135 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/st,led1202.yml

diff --git a/Documentation/devicetree/bindings/leds/st,led1202.yml b/Documentation/devicetree/bindings/leds/st,led1202.yml
new file mode 100644
index 000000000000..c0d5b5d37495
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/st,led1202.yml
@@ -0,0 +1,135 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/st,led1202.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ST LED1202 LED controllers
+
+maintainers:
+  - Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
+
+description:
+  The LED1202 is a 12-channel low quiescent current LED controller
+  programmable via I2C; The output current can be adjusted separately
+  for each channel by 8-bit analog and 12-bit digital dimming control.
+
+  Datasheet available at
+  https://www.st.com/en/power-management/led1202.html
+
+properties:
+  compatible:
+    enum:
+      - st,led1202
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^led@[0-9a-f]+$":
+    type: object
+    $ref: common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 11
+
+    required:
+      - reg
+
+additionalProperties: true
+
+examples:
+  - |
+    #include <dt-bindings/leds/common.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        led-controller@58 {
+            compatible = "st,led1202";
+            reg = <0x58>;
+            address-cells = <1>;
+            size-cells = <0>;
+
+            led@0 {
+                reg = <0>;
+                label = "led1_r";
+                active = <1>;
+            };
+
+            led@1 {
+                reg = <1>;
+                label = "led1_g";
+                active = <1>;
+            };
+
+            led@2 {
+                reg = <2>;
+                label = "led1_b";
+                active = <1>;
+            };
+
+            led@3 {
+                reg = <3>;
+                label = "led2_r";
+                active = <1>;
+            };
+
+            led@4 {
+                reg = <4>;
+                label = "led2_g";
+                active = <1>;
+            };
+
+            led@5 {
+                reg = <5>;
+                label = "led2_b";
+                active = <1>;
+            };
+
+            led@6 {
+                reg = <6>;
+                label = "led3_r";
+                active = <1>;
+            };
+
+            led@7 {
+                reg = <7>;
+                label = "led3_g";
+                active = <1>;
+            };
+
+            led@8 {
+                reg = <8>;
+                label = "led3_b";
+                active = <1>;
+            };
+
+            led@9 {
+                reg = <9>;
+                active = <0>;
+            };
+
+            led@a {
+                reg = <10>;
+                active = <0>;
+            };
+
+            led@b {
+                reg = <11>;
+                active = <0>;
+            };
+        };
+    };
+
+...
-- 
2.25.1


