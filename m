Return-Path: <devicetree+bounces-271072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJ/3LWQ+qGl6rQAAu9opvQ
	(envelope-from <devicetree+bounces-271072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:15:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2D7201233
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2BE453062FBE
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 14:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FA3E3BED61;
	Wed,  4 Mar 2026 14:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="ZK5ig7J7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081BA3BD643
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 14:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772633127; cv=none; b=p8CiyZIEj/Op2z3XwyDd6Tg58q9PQh16PjdVppO2ttrwcW1KHndjp98F9UGHcS0Gdj/JWXPNyCYxqZNmqT3MH336tBHCcenRLeJYeukrvykC0eBg0LezLmMPAMaU1qSlQWVIPI4cfSQbBcKCupS54YdmAz7dziLECXeO+hqd5fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772633127; c=relaxed/simple;
	bh=S1mebhrfPenLy1weotdaNWW4bxFtCVm2QKtooVp4Y3o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MBZNURSe4ZAUfpDDlugk4rsWpWZT1sqg/Hp3iW5qJlVNRuLFikMFfQRE6PIsjZhw52TSvKKMVVUJWgGDMyFTkz557CY5MpPoGnMeljCYRWXoN1kTdOkwdSUMyETt+qCizrs4CsRfyana0vBNwM4uZomzSo/eA6SkU3f6gSGzX4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=ZK5ig7J7; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48371bb515eso103160155e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 06:05:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1772633123; x=1773237923; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KDZV0P10JHiS3PFCsjMMTuxBNi7S5uJQ9QvuX7DlB6U=;
        b=ZK5ig7J7WssgJtmwswhcP55zq8dCDssN1TV0W80RULC6RvhgDKgwroeXgrBxdXkuA1
         G/rPRL0sRYK5IizatRtaKiiB4QlgUWILd5j8MkMrgqYbk1mwsQTxMBWSQS4k/Fi4JdSd
         anfoyzpTRBjQumTMzN6/VxABVJ+jWXwge/1bmFIofPn3V8almO0CYMQMKUK1uDFiJodH
         kO4BI9RojXh3WBC4XObS4kz27oCT3GH/PBcHk9DY0/23lbI7s4gM0f4F2yZeXfrkyLzF
         /2EyCCpjhHcAgdpham84PKPtuZo2Kec7G1P3jh1mn5znjGX8QRPnQ70TlKsZ/9bctCyR
         i5jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772633123; x=1773237923;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KDZV0P10JHiS3PFCsjMMTuxBNi7S5uJQ9QvuX7DlB6U=;
        b=ZSYYXjzP0sPrjw9YssavMKX6ZDlAKXwxXvlUXhlN7Gt4i3xyaCBo2kOjfPT1ELdjjy
         pZ0t46IKmqm6FhZL0wrgI97UG8tAXFTpPFMIZh9XLRt6QDmaahS1Uf9VA3E3uvElm6oY
         phv57HalJuPYOEKTiv8+9lyz51FMgpq/0L5lfET8uSw+Y47AwmPTnc+21HiwksPnRtBF
         Ye+GzvU9xiGGgKV9jEktI1k+j4o1D9hM7InaODsN1b6CDW+e54Hq25sSpy1A1OWhr4oW
         moya535lbMbU3S4pkGbsQH2HLw4wak1EE+UsKLP1C4TXaTYrdMSEeESHZgZe69JlYtrF
         +9Xw==
X-Forwarded-Encrypted: i=1; AJvYcCWzuX9pLAHfOq96ErFAh2fDNsdDnruG8pzii8ZK8YCG45NGgLcu5TuCvKLpORXPCcFnKNZIsm2v6519@vger.kernel.org
X-Gm-Message-State: AOJu0YxspwhhJ+neGRvQK9Ouj75kLLfGOKbvrWzD3Ad/7v94kAybAJ9z
	clNy30zuxfNclbjVpnFDRO4pAP5sYubFrPqBPdfiZQ4JKjdngziRc30UD0JXFz/UfQ8=
X-Gm-Gg: ATEYQzyOsFeWqgpEpE6XnI8hW9H58ViJRa7Otdbs8o1goyNyc0uyJQYHamCwuqay3bv
	5zSZdD2ZCOYvBpxf+a0LGkI8eOQ8Q+Q3ftmSii5bxIFymC+kxWVWDJqKidB36UjPCZdNkWo2RgH
	OfeiORpnfwYa5l6aDsX4GpUl6EZdiSULK53in4diK3I+02Oy52IzQkv4TwkJGEv/pWfivsRpGe5
	IZ5M9G1kSMu/KOiI58wJENZIz3asvBnjSGT74kmOkKnlKxxMGQuWf7ztkNJCnYN+eixLsgilnOw
	JoIOApwejHgsgJRye7HXYyukt/5EA3lUJfQIJQFYA+wvCl8oUFD6hyVk514coHR/XwOSMjX8NG1
	ZCTnXJudFSo+l170HwvkjHSC7Hg27R9+o/TdV50EyAGWEyuQOFH//Hs3ooO7W/rGQwiu3HxcCSs
	47ek3NYj+Vei7dyw==
X-Received: by 2002:a05:600c:1d05:b0:47e:e57d:404 with SMTP id 5b1f17b1804b1-48519886971mr40240665e9.16.1772633123129;
        Wed, 04 Mar 2026 06:05:23 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-485187b6ffbsm59296165e9.2.2026.03.04.06.05.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 06:05:22 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 04 Mar 2026 14:05:17 +0000
Subject: [PATCH v6 4/6] dt-bindings: media: Add the Raspberry Pi HEVC
 decoder
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-media-rpi-hevc-dec-v6-4-93868ae6dff8@raspberrypi.com>
References: <20260304-media-rpi-hevc-dec-v6-0-93868ae6dff8@raspberrypi.com>
In-Reply-To: <20260304-media-rpi-hevc-dec-v6-0-93868ae6dff8@raspberrypi.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, 
 review list <kernel-list@raspberrypi.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 John Cox <jc@kynesim.co.uk>, Stefan Wahren <wahrenst@gmx.net>, 
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.1
X-Rspamd-Queue-Id: 5D2D7201233
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raspberrypi.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[collabora.com,kynesim.co.uk,gmx.net,vger.kernel.org,lists.infradead.org,raspberrypi.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-271072-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dave.stevenson@raspberrypi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[raspberrypi.com:dkim,raspberrypi.com:email,raspberrypi.com:mid,linaro.org:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,devicetree.org:url,ideasonboard.com:email,7eb10000:email]
X-Rspamd-Action: no action

Adds a binding for the HEVC decoder IP owned by Raspberry Pi.

Instantiations of the decoder IP can currently be found in
the Broadcom BCM2711 and BCM2712 SoCs.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../bindings/media/raspberrypi,hevc-dec.yaml       | 72 ++++++++++++++++++++++
 MAINTAINERS                                        |  9 +++
 2 files changed, 81 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml b/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml
new file mode 100644
index 000000000000..fe3361bddd1f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/raspberrypi,hevc-dec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Raspberry Pi HEVC Decoder
+
+maintainers:
+  - John Cox <john.cox@raspberrypi.com>
+  - Dom Cobley <dom@raspberrypi.com>
+  - Dave Stevenson <dave.stevenson@raspberrypi.com>
+
+description:
+  The Raspberry Pi HEVC decoder is a hardware video decode accelerator IP block
+  developed and owned by Raspberry Pi.
+
+  Currently it can be found in the Broadcom BCM2711 and BCM2712 processors used
+  on Raspberry Pi 4 and 5 boards respectively.
+
+properties:
+  compatible:
+    oneOf:
+      - const: brcm,bcm2711-hevc-dec
+      - items:
+          - enum:
+              - brcm,bcm2712-hevc-dec
+          - const: brcm,bcm2711-hevc-dec
+
+  reg:
+    items:
+      - description: The HEVC main register region
+      - description: The Interrupt control register region
+
+  reg-names:
+    items:
+      - const: hevc
+      - const: intc
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: The HEVC block clock
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    video-codec@7eb10000 {
+        compatible = "brcm,bcm2711-hevc-dec";
+        reg = <0x7eb00000 0x10000>, /* HEVC */
+              <0x7eb10000 0x1000>;  /* INTC */
+        reg-names = "hevc",
+                    "intc";
+
+        interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+
+        clocks = <&clk 0>;
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 4d7e31232eeb..7c641a4f91a6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22045,6 +22045,15 @@ L:	linux-edac@vger.kernel.org
 S:	Maintained
 F:	drivers/ras/amd/fmpm.c
 
+RASPBERRY PI HEVC DECODER
+M:	John Cox <john.cox@raspberrypi.com>
+M:	Dom Cobley <dom@raspberrypi.com>
+M:	Dave Stevenson <dave.stevenson@raspberrypi.com>
+M:	Raspberry Pi Internal Kernel List <kernel-list@raspberrypi.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml
+
 RASPBERRY PI PISP BACK END
 M:	Jacopo Mondi <jacopo.mondi@ideasonboard.com>
 R:	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>

-- 
2.34.1


