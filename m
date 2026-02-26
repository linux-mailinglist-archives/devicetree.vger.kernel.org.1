Return-Path: <devicetree+bounces-268666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG8DF7MIoGm4fQQAu9opvQ
	(envelope-from <devicetree+bounces-268666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:47:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB1B1A2E0B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 698A5300E596
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781D2396D24;
	Thu, 26 Feb 2026 08:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="lRLIa+jY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FCE5396B96
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772095647; cv=none; b=cz6IVpJESwVDxXLFb8ekHVTJc0dfr6LxVMTHj5JszwxxjhZTjQJ9dYQ3GwpmJ+N+UnYODPbraG5YE5AHay3tGAhydp/D+CFIe8rl9p6Gq+iIX+A5S+YRmWMAOheLuFb3qtWyQHJHqcUL/M5y3K+tGrVPAPwfHjSrIf6PJIX/Tvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772095647; c=relaxed/simple;
	bh=T0e1oAKgv2NHJmE9n7ueLnjVsCwqiQUlZvPvOI7Fc+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YlBwoezbL+DtERBgYwsGx40S2icoTLtvengzGU50bKgGekE7PK/i0wF+9/Rzot7D8MWzYcQkQDZQSqhSXE8MHW8wV1Np7o8j+vJkj9mNF/+4owgzf/ty7hKxKAE4n8BXTJlERD+MMATbZW11hsskFhQ9dFFjdpnZNBGvs39DlMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=lRLIa+jY; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-480706554beso8001865e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 00:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1772095642; x=1772700442; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n/hVz7nlruTnhdI8UkrlZIFLUp/mnqXEgc1farN/t6k=;
        b=lRLIa+jYYZ+lhFgpsB9XHEh518ud/Ve9KDn16bj1Xfrbvbkp6agfCiCOD/wq7nlXLX
         dupjMwpPQS3jogd9/naSpWeGmVtqL4bIChFR0FMOgLQpgFFhyIKe5mLhnluRgebjVX+D
         EbC7EXvdggSsJ66Lbd9E7iJSlvoCku1g/DJD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772095642; x=1772700442;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n/hVz7nlruTnhdI8UkrlZIFLUp/mnqXEgc1farN/t6k=;
        b=nHG9rUVb0OJu2OzSz3a508pT/zZ05YpWX5ck6vhXoRWCo+MceGYdXkwg9BxZ4dH12e
         VFHFgrddUDmyyfJq8SPMNXc4nrb5ujhbfDzYbWAI3njMBtBEFxZQ1+hNmwGbqKidrsj8
         hcy/0aDVDfL54pGgWAm7OJFoiqdWxDHijqv1LPkFaflFys8SgkUy3oHoke/KKZr2YHQb
         6JGqBVcgN40MWM7/dP2+fTzbWpoDI+SQ+6muqZR7MsqJ5wEtDwOAJzP0LMmkA2fy0We9
         xr5yrWpXWxLL9s9ITiuFwKcKI3iJLvIEJSQQ/iKnzlmj5Et20kRaQMtcMaxuD8kPnckL
         T7Kw==
X-Forwarded-Encrypted: i=1; AJvYcCV5NouZlINcIYe/MLgxZed2lvVVCpOCzy8XwuTT6Rbe8Qt0399+w6X0+maIoJb9YB68/sbiDRXFB1ix@vger.kernel.org
X-Gm-Message-State: AOJu0YxCmc5lmVWX4xdR0sowonxOx5K+NdAfiKEqNNMp5xWF2bSU1qA+
	XYW6ru0/0nRJqzsvEFuwMZlKvZ6fY7EkI7HOreC+R25gWQuD4ZIPSaMCFaD44KDkOXU=
X-Gm-Gg: ATEYQzzR5deYGKgFeqnGTCvBpPIGPitScAytpyP+nrge2omPiRZFyxWTfby0DLaDDgO
	Bce+QYZQbQKs6yonueFS71TUdqGIHks4V/e0E5bqXFCplFYt6xKtU5ExgkY14x9cywGz2V7JUBf
	LVpGK+SvUNh5HFss/LU7Z5U2bubZyRk/rVM0PYpd09TRKKrRPhm5gvUwxMj8BtZurOpEqC+eqZ9
	ULOgyuFAKvwOrPO1VuQ9QC0OwHrHTYQ220+CMY0OKZ3QG+p6/8CcFUjiXM2XPNKz8QbTrbADTUh
	02La/ikcnomLY7FsKuC2nDnqUH/0YKI5rv4LrneIOa/UXzLAcboRGNpmJp/LTjGYyKdh9/usWeK
	jHk2X5hfr/ALeUTczOrTNSGtU8TIfbrzJ7QDFqTBpn6zlJdWaUqENlsra/17HBp14jPG/9rb5kM
	UcTiHL45/JznQUQF9D+ssVaWsnO6S+a28jgyaFPGgXA1SS1AFjtUTMabwHZBY+yxcOsXdNvfC5D
	twc8IQ22kwW6vxXJbM0Jk82BBw8irnjQOOy4rlYdvlF+848iIq4pEynwIkDpdpeyEBy77smEvB8
	az4frnreOZ2FSTq+DmzhZ2n1
X-Received: by 2002:a05:600c:8b11:b0:483:6d42:25c6 with SMTP id 5b1f17b1804b1-483c21a105fmr60548225e9.23.1772095641758;
        Thu, 26 Feb 2026 00:47:21 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-95-248-31-95.retail.telecomitalia.it. [95.248.31.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb85c58sm31581075e9.9.2026.02.26.00.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 00:47:21 -0800 (PST)
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
Subject: [RESEND PATCH v4 3/4] dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
Date: Thu, 26 Feb 2026 09:47:02 +0100
Message-ID: <20260226084713.2566672-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260226084713.2566672-1-dario.binacchi@amarulasolutions.com>
References: <20260226084713.2566672-1-dario.binacchi@amarulasolutions.com>
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
	TAGGED_FROM(0.00)[bounces-268666-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.969];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amarulasolutions.com:mid,amarulasolutions.com:dkim,amarulasolutions.com:email,0.0.0.0:email,devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0AB1B1A2E0B
X-Rspamd-Action: no action

Document the Rocktech 5" 480x854 panel based on the Ilitek ILI9806E
controller.

This panel uses SPI for control and an RGB interface for display
data, so adjust the binding requirements accordingly.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v3)

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


