Return-Path: <devicetree+bounces-262747-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJ5fGkuDg2llowMAu9opvQ
	(envelope-from <devicetree+bounces-262747-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:35:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C046DEB065
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:35:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A274C30500EE
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A8A34A793;
	Wed,  4 Feb 2026 17:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BBCv5ts3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084F9325486
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770226328; cv=none; b=LFtdfukaPp3oC54oOldyGGUfYd1fYSqwkPIGjTnPS/NuQkmRJk3CN4UXsDecYhECpBNFzeIoQNQGzlPUrND/qUoSRSyxX6PIrKCl2+4ZywgftJ343WIpg+icDDHJaNHldDj/wEFSoccdPMJ2c231OzmgGtR3GjlHcJJwUtW1xc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770226328; c=relaxed/simple;
	bh=T0e1oAKgv2NHJmE9n7ueLnjVsCwqiQUlZvPvOI7Fc+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=As8iWRES8DeQnv2K78LJLQ63HtAORa9+FCpjqvqti7qn4gW1AxDMIyRCtId4K7pSFZPWT11rho5ud9D7EBQx2tmjmec1SUIw5p5AQSnsHEfERuN5CfuDDZeLT1tPHkvysYziEieFgdWfKOmW0cO0eGGLwO6Ak2VgG3DyvO+k0Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BBCv5ts3; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42fb6ce71c7so92581f8f.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1770226326; x=1770831126; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n/hVz7nlruTnhdI8UkrlZIFLUp/mnqXEgc1farN/t6k=;
        b=BBCv5ts33Fm+RmtmF8900mUUHn+B5ynKMz7d1Atzq5R60ieWV/ncpU7BPuHSdrc+Qe
         sx7QodyXGvif/66dLdiRcgYUZ3IcwFDE5LH8YA9BAJ2MDfaYJlFrlWn5E0D0dhcLxL8X
         7Z+dsqcwrqBjUtojEOmuvn1sb/w3cqx09GvYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770226326; x=1770831126;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n/hVz7nlruTnhdI8UkrlZIFLUp/mnqXEgc1farN/t6k=;
        b=BJvSgCftGj3WF+xtOdGPboxbvHGuiuim7oPQ0MbTAdqXb+suBbnLqaWRhexMmAx8uP
         RND3BPFPkynGv2l305Gd3ERxEcP/a0RY9JZ9/agh3oHVuD5X7pHr74SKBc5MyvuBNsJX
         d/aYPOL1Aq2q+mIfkHnp80uf+boYDYvD4mzbC5Wx3zdPNZz6+8BxZAcpDEzdnzXkWmUx
         x90y8cSlHaJVg6fMCPmnpKo/XbL3PfIO6WeSLIkTNPwPsdAIT5kQsvCCI/GJ5QVa3u8Y
         zPgHcM5QNeNpHVQQXBUtmKYw2Hnp1nrNsXCvfUAsHAxD8OnezKA/LdgESTwlzmV8ndVN
         RPTg==
X-Forwarded-Encrypted: i=1; AJvYcCXTmz/tw6750tU4Bg5m6WGXYYiCeMv6+66r7JTaor3xw4RzgJbePShZ42NjsqJue11U73oUQ6SN3YlY@vger.kernel.org
X-Gm-Message-State: AOJu0YzK1K83gfyLnSYAUQ9mrzCOBGiySEkmja5/o1YDkNSdu+JKF36H
	vu3DRx38V9RFOGnoNH8wyBv6qt8r8EK+5nAUpNDwUS8u4pcyncJWwh3wnpYe8bM3i3o=
X-Gm-Gg: AZuq6aL9XB2DOgo3I7AwC5GMp3LOvdMOEpl2nmnrLOwsIciKH4Pf3oJgIIZjUkU/wEC
	3MKqt/jH/00iC6F74JPu6cNDZT75iy8Eqti5XFfn4nLTCrO76mPMsa/1D7SjWUKnDlSEUU0yyuM
	ux1LXSwrgmlKuZR+rcKVjzI6GmP7f2qM5zSoQH1gYrdFbDnGlSgFHnO5AaoDLzVWwSgVWB9kXp+
	CmZDsea8FnjFm4OAoZ9jPKsU6KiQnLgDad+PZOq0YFcQVgzTQ0Ak3LgWHwgrWQkl1eVave8Ogh3
	RGySV7TK+ZWL5paJ+Di+mz+onY8b8TfUq3c+BUNpn6G9ritCrSpoxh9KD2qsd5Qbdfv7HUqlfIg
	vbE/qjjnvXMShdJhaWG2lll2XDVF3wnpwf4famd6mEAg+VqZ1+0QN9l6hG14SGN4JU/yio/UVNV
	e7VvATr7xSyAa3aTxlpvuhF/LMsryS7U3d4Z6aAznXIBqlSgCNig2HPpRLEEfyZOkfJQsYc8BJj
	Dr5WFTfEanYN5XvcJR5xPOvStcBwQhTHVsm+N5nSFr1
X-Received: by 2002:a05:6000:26ce:b0:435:9851:d940 with SMTP id ffacd0b85a97d-43618061743mr4794667f8f.59.1770226326280;
        Wed, 04 Feb 2026 09:32:06 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.42.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436180640f2sm7241565f8f.39.2026.02.04.09.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 09:32:04 -0800 (PST)
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
Subject: [PATCH v4 3/4] dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
Date: Wed,  4 Feb 2026 18:31:19 +0100
Message-ID: <20260204173154.337674-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204173154.337674-1-dario.binacchi@amarulasolutions.com>
References: <20260204173154.337674-1-dario.binacchi@amarulasolutions.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amarulasolutions.com,kernel.org,gmail.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262747-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: C046DEB065
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


