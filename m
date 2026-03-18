Return-Path: <devicetree+bounces-276988-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PFXJxpWumm8UQIAu9opvQ
	(envelope-from <devicetree+bounces-276988-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:36:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1112B70A7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C891C306D8E6
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:34:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1832436AB54;
	Wed, 18 Mar 2026 07:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="A21rrs3W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FBA536AB52
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773819251; cv=none; b=Lmjq1E6umEJg7/TkG02frEvm4xkaP1JqjZV93llWqrAlsMtuHW9UKGsa3mxy9IhSmfsbPI0W4ZBHPYYuJMp58dVuoFgfFail72KJR9Q9HhF5akSTaY6YO4+EEgBX7scY+x9uqQgJp8HbKnyItBPrDfvtoP5vZQ5B0EVJF03qXxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773819251; c=relaxed/simple;
	bh=6A5gFZh4PkcNk73aLwTIO4LGvMMWoLrc+UDvXMTkc9g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WdU/bc1ORg5KOk1GEemt44VuF90/kUfZ/vd14zGfVHqA1pu/MRXxa7iqvsOXiuouErkq6ULTe+lwxIm+5xxyCi/axbu32PgDFRibxFvaFEx4mClXVWIEDk6kJ6Jp3SBhvV+84yGZt1sPJ5mBBjxZNJBKz5FxaDDAAfrqTx3563o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=A21rrs3W; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48540d21f7dso73688255e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 00:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1773819248; x=1774424048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zo4QCx8aR6J7VFChxL1u3Y+zYNsaTehJkZimdyWgxLs=;
        b=A21rrs3W3kzSRmsrTRUOiUpNgkbpzavkt5e86pIXTyuiBQzjLgnMZMVR5GRXYfbFdh
         U/ooxfLDoOSkzvDIeRE55JSYwhdMBJH63akBVjQqpD5av8TnNe6EXIdrk2/wWGN0M94t
         +6yf6/h/08WRcBmhS4OLQn+7VdeqJ4gCvaBjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773819248; x=1774424048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zo4QCx8aR6J7VFChxL1u3Y+zYNsaTehJkZimdyWgxLs=;
        b=iqSaI/0bb6iphOQ/HulPhmAp3NV1lpYYvJc6lGvMafTENwimYJ5+cI+lRunbUjMua/
         8nN/BEyRi2A8/uWg8SX0T3WNk+Ho43B1aiURvNf6WJaSF+SQOaCBD8C18kxZU6ieoZ5M
         HUAm5aM2PtsiRfihOlc3st4rpxbS1A7edb+Cp2mBstmuaozG55WvyPHENqjwHcAwDLBH
         wvZoiXrB85XVGygY3/D4KO55BtqELNgNJtMNyaAf4G6cAPA5Bpb3zvnDLKIqqmCa+yex
         xSFlocYk3eehKuDIAEILwqIEVXGQU7X2oEgrGlEAWU4/49HJGGDlVvNaDES6p9YDqjS7
         1sQw==
X-Forwarded-Encrypted: i=1; AJvYcCWhhWsVyeQouHSj53dXOAfpI8AoAIW1V4cxOOYO/G1E7gF6qlEOSy+4KdbB0/K3hrlcKI9FHxsRx02E@vger.kernel.org
X-Gm-Message-State: AOJu0YyaPdkhbot3HxfeoAJKu+B0DrW2kWUP2TGf0bxIzD4eSjlHgvm5
	8G5SIKIF61E7fslhr2ffIksgxjafR9XdTVzz1ihH2OpI/LwhKKle3qaiER0ZioZ4dAY=
X-Gm-Gg: ATEYQzzpUkQK3y2JwdMfgOA/LektyrdL3he/gsfE3i9Oz9vCUSVax8yb7IpT9i9SXFH
	xOx2LWyKUO0FSH1ERyG8KG2qCHND18eJF3W7NTiqyZlp8Ib304tSe3lBlweJ+326L6H24bTw7ZR
	OvLMCzJpI5h3co/NLHeLrrAfORiCdglEecTYeyGDvZJu9d4diBhXS4AWgRikoN5Cnx+UWfvqE35
	QOpmol2spRmP5jhDFprIq/114QCuv1DTJIWYtktsJj92Ye9i4AsIjOFIQ2xgxxu2szC+YzwlZ/Z
	a+k8owmfMk27ZWVFPw6uYgtTg+kE/+U10CXrwWvj4GXRyHcRddbEu9ydcumMtbga3r4R2mgkMoB
	ebX3gdUsegpEJGR2Qv5OaI5IzhHe2oKTMx+CCQSKr3s059RQ2wfURNDoUkaovuXlxHLLqxYJHqG
	CD7BAlH+c3iWD8gu+ED3JJe+8zRRwvYq+7kGuWdOCImfxi+w1Aj6B8q7MCdUqArxEood2PzxgpB
	9Zo5lQXQiy3XnB+Pn7KkrGjtLWXb6cyfkAS/5xf0tSifz+wMpp4jX7zC8rW0tmCKvYno4+Y7xZY
	lHS3jq+ToNWM0o1viVhR0g==
X-Received: by 2002:a05:600c:8b65:b0:483:badb:618e with SMTP id 5b1f17b1804b1-486f44377dcmr38308265e9.8.1773819247958;
        Wed, 18 Mar 2026 00:34:07 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-87-9-97-160.retail.telecomitalia.it. [87.9.97.160])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f45f7e96sm25615765e9.0.2026.03.18.00.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 00:34:06 -0700 (PDT)
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
Subject: [PATCH v5 3/4] dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
Date: Wed, 18 Mar 2026 08:32:52 +0100
Message-ID: <20260318073346.18041-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260318073346.18041-1-dario.binacchi@amarulasolutions.com>
References: <20260318073346.18041-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amarulasolutions.com,kernel.org,gmail.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276988-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amarulasolutions.com:dkim,amarulasolutions.com:email,amarulasolutions.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,0.0.0.0:email]
X-Rspamd-Queue-Id: AB1112B70A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the Rocktech 5" 480x854 panel based on the Ilitek ILI9806E
controller.

This panel uses SPI for control and an RGB interface for display
data, so adjust the binding requirements accordingly.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

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


