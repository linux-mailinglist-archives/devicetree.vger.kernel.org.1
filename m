Return-Path: <devicetree+bounces-262083-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPmYAxyqgWn0IQMAu9opvQ
	(envelope-from <devicetree+bounces-262083-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 08:56:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C6BD5E66
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 08:56:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C1C9F301A864
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 07:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B83FF3939B4;
	Tue,  3 Feb 2026 07:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ji7k6Ewo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E4E392C5F
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 07:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770105359; cv=none; b=jB5kkE/y/auBiyyzj8zHIY6uUUz1YoHFNtoeY6jTr8p6k2TYWbM5uTRUxGSHUSmgqrtaTwiIKtNfhtjgBx6NuTEErtl82koYPsX7nlwr8h1pxfhUCySMuLLjKl5tYOPUOtLPdcSDQBUeFYDC0vJbICFEz4viLue+QYrYtP4oDzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770105359; c=relaxed/simple;
	bh=jZIIt44hxTKPyMQ3S1Y/K69YCBEwpeDQ0z8oz8qWtjI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q2dadc74awxISQ8ZrOgks31JPuRh6Ymqlw9dWxpPO4tRZH102aOcdJGmWjSs77QJ47aq27nITYiZIGstNYeTjkPdFBmvTIY9msu3+knHnJhR5HVhjUkknNB8HbLpBNnmMdB9d8p6b91YS+Fr5K9yHMlkujIR8DIyPbUWHf4QC2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ji7k6Ewo; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4801ea9bafdso22986475e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 23:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1770105356; x=1770710156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LCVfLYAqhMo/Jd1ZhmnLxhwemUOX2k+A5YBke2VF3cs=;
        b=ji7k6EwoyumXmZexo7A6qxgCQrQkIiXtJeVGGEmYjbFlcQlwLdySm6wkdG525jPVc7
         55ByKgzF+sNmmCosLoSo8sgqEdImCHEL/UWSY0Lnk9SIH+KTChlTIknbFg2XELOB/tLl
         RRYX8FleFx1c5M91ii0wOVyF3yzyTGuy4OXPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770105356; x=1770710156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LCVfLYAqhMo/Jd1ZhmnLxhwemUOX2k+A5YBke2VF3cs=;
        b=e4qxrJN+HJhQ/Ub3TpeOH6ka3belXLEmJnOjRLEi0VUOh2fgWJMjf169uHKEiLgd4M
         6Kta4wU/MpqE3AYG9FK4aYmyM/txUcPNeP3NDuocdkYhqBUBBj7nuR+bIvjs+Kreuabs
         mi2eqJ49p9CNIIIWjRRA3tdkZwr7eB9nFCBeli9Tmq4rMN7Kg9+PJVZ7FMcpXFVDypOr
         cVaKB4utHue9K5wvOGeW9wcVXyNeBOfiRixHSHlLH9UwmtoANq2LIPA7HP3W8XrodY8f
         AVlDDuzAJOIPnrg8pD95St7ctxhjAPaAGfZ4s18vXCXb5py8dyukI/zOKeOwMozpN5iL
         fx9A==
X-Forwarded-Encrypted: i=1; AJvYcCUIjGA4a2/6PdTQZ3Kf7elMe7vhQfbyvnzsUG6LhNiaVmBlLMQTVLFYqgXzGVHWlWgajzvcqn5vZJaY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq7GAhrKznZ43mEiIKMyRsUiFC7xHPfpjl+OAEWvfprBUJpBfB
	bGnytOBg52BMdhp2omD9CPZHPhTMueEW+GHr+QH63x3sbIdeH0lC1kF8NwyBWDEMS8Y=
X-Gm-Gg: AZuq6aLvHmD69yW9PQRp8AvNBA7b4NtqTQlOsr1/RoM8NUyDdvSYpFD7enQPefZA4tt
	79QAaMAfQbU8dDZPhN42iiUx9+LCwclzOJ/bi8Io62CV4dqCxXJx5PYtaiTYA8OyzVKpbHFYEni
	pk6NBXbKYMJVfcWTmDChOEpnDHvMRBABXSjt8vRGhox2iv4LWbDqjjikCzDkUmqFgBILGyhJAgi
	qCZcsxPKn5oyXXelnwCyDwGiiY3/k8+OLlALnA6+rgcdbWTGgzX+eANZkVpnyUT/zy+Q/w7oLCZ
	sACD7763qFjILWEjNGDrzbIEMtRMQmekwF20ExVRFO736TzdoL6cjJi9bL4XR4tmVlKtVcyu7Hh
	wdjs4hxQZ5ueun3eZRBQtMLj9Tvi2EjsO7cDiE9fgaUNf+9bCpJUYS5ikur+e3yeruD0h4Bn2kP
	ler2fduy5tZQu6b+DTN5FZTqR2Xr+/XGGN5Mkb5K1ocC0OpXX7MUbTIvS0T8UfssqWjBmVdp7DN
	48k+6azORw52C9N7Ugu42Qw3No8SH6IFFoCyD4DEPZ9Hx74zqX9JTX7mTOa0Vjc4iTjWPPaq8M9
	WA5RO/24RTovxf++ZHmtTw==
X-Received: by 2002:a05:600c:a00d:b0:477:89d5:fdb2 with SMTP id 5b1f17b1804b1-482db465e44mr181290175e9.14.1770105356358;
        Mon, 02 Feb 2026 23:55:56 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-95-248-31-95.retail.telecomitalia.it. [95.248.31.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482e267b699sm111939885e9.16.2026.02.02.23.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 23:55:55 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 3/4] dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
Date: Tue,  3 Feb 2026 08:54:50 +0100
Message-ID: <20260203075548.14907-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203075548.14907-1-dario.binacchi@amarulasolutions.com>
References: <20260203075548.14907-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amarulasolutions.com,kernel.org,gmail.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262083-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amarulasolutions.com:email,amarulasolutions.com:dkim,amarulasolutions.com:mid,0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A5C6BD5E66
X-Rspamd-Action: no action

Document the Rocktech 5" 480x854 panel based on the Ilitek ILI9806E
controller.

This panel uses SPI for control and an RGB interface for display
data, so adjust the binding requirements accordingly.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v3:
- Add Reviewed-by tag of Rob Herring

Changes in v2:
- Restore vdd-supply as required for both DSI and SPI types
- Dop useless settings in case of rocktech,rk050hr345-ct106a

 .../display/panel/ilitek,ili9806e.yaml        | 38 ++++++++++++++++++-
 1 file changed, 36 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml
index f80307579485..2080d9e0ffac 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/panel/ilitek,ili9806e.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Ilitek ILI9806E based MIPI-DSI panels
+title: Ilitek ILI9806E based panels
 
 maintainers:
   - Michael Walle <mwalle@kernel.org>
@@ -18,6 +18,7 @@ properties:
       - enum:
           - densitron,dmt028vghmcmi-1d
           - ortustech,com35h3p70ulc
+          - rocktech,rk050hr345-ct106a
       - const: ilitek,ili9806e
 
   reg:
@@ -30,11 +31,24 @@ required:
   - compatible
   - reg
   - vdd-supply
-  - vccio-supply
   - reset-gpios
   - backlight
   - port
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - rocktech,rk050hr345-ct106a
+then:
+  $ref: /schemas/spi/spi-peripheral-props.yaml#
+  required:
+    - spi-max-frequency
+else:
+  required:
+    - vccio-supply
+
 unevaluatedProperties: false
 
 examples:
@@ -60,5 +74,25 @@ examples:
             };
         };
     };
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
 
+        panel@0 {
+            compatible = "rocktech,rk050hr345-ct106a", "ilitek,ili9806e";
+            reg = <0>;
+            vdd-supply = <&reg_vdd_panel>;
+            spi-max-frequency = <10000000>;
+            reset-gpios = <&gpiob 6 GPIO_ACTIVE_LOW>;
+            backlight = <&backlight>;
+            port {
+                panel_in_rgb: endpoint {
+                    remote-endpoint = <&ltdc_out_rgb>;
+                };
+            };
+        };
+    };
 ...
-- 
2.43.0


