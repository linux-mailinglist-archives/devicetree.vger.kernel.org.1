Return-Path: <devicetree+bounces-269372-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFAwO+HToWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269372-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:26:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 732A61BB723
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:26:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0B9631BDDDD
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B3F244CADD;
	Fri, 27 Feb 2026 17:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="dPtlGiZM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C85E4418D1
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 17:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772212852; cv=none; b=uU3axWeC+aCH2yvT4i//znPxvVf7HEa13wbcKcDmszczL4R2QMpDyCFQbSVRUu6rW4+fSONoqqASlFIrXZ1Uq3Ut60rJwxG74ODc4Hn7wprAHZQgxKaM8xgrSCyWkpSdLqyJbQUpot9yFTibT9nlyi5ghbOnM+0sgi9CoOPAx+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772212852; c=relaxed/simple;
	bh=YyrwNg/nIALl0JH9/+pqVw4xVsbzPlLG6biaxdSc1iI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PyuRSJf6+SaCGhNFyxG+i40/d5Cv4p69tkECdtjMgodbNuYecjOu1WYUh1p3IKc6BoHAXEgsN3BRUmzv/eycJG/Xy27GQBCB42I1hhgGc4eJYzwU4z7Y8UU9Z/Peh5kdelwM/hM8khZ7Z+4buqXGA8HUUNMaa0abXN1TSeuQztw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=dPtlGiZM; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48375f1defeso16616165e9.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1772212846; x=1772817646; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NFhgYto7McT5hzgK39BtOka2li4gXIYQIg2cIWRlQQI=;
        b=dPtlGiZMtckM66FqHvQWHEyWQhbLw4gIXVOG4dOokm63Fy7FHnQNBezcikOkJ0l+v1
         mvjiiVkOOmT5NgiYzMGfFEvtMaxV6ytRWwh2r66LFpFQw1pyr33hqIuT+apKboHCojow
         EdL9jqiBWkigoMpZJ1LEHgkUmjCyq3BBFMD6F4yK+/mXwH+uXuvXNVxgL2FXa2n5bZ1r
         eU5S69ya1dwXm9AYbS9UcBZD1irW+o+ef20pB1kK6DP3G4inhAdvkuGfLgd8gP/NLWZF
         wWpOrymEFEDFfbUAShBXZHoYPp8G5vK0WgGWURMEKW4VoZCUmnrzxCKD6M2Lx4iojoSI
         w2VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772212846; x=1772817646;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NFhgYto7McT5hzgK39BtOka2li4gXIYQIg2cIWRlQQI=;
        b=jk7NYZCvSmNY9DGPkV8SDhyCwPKjU6MdnW72wZavFhqpJF+sQZ5TMLRZY6VeA+W4jl
         b6U6K5fHElQEarRXvsFfdglOKlFmAm2MQ+h81AJtdLwIDwu6qc1FQ5s5okNIKlbRm//h
         23YN4d+b6as/S2q8BzNA/+SVcsJFeVFtlwCkzMjA2me/QO/sTzBGrt0KM/5EqaQKVSyx
         7rij4ovpQfOTDvnePcRwz5RiKL1zzXdHk+VgGzruisVinyXeT9IdnJ4++dK5YbulIfza
         o+pU1UEt+T0SsXS11erAuKeDnmK/cbwO1t557Ty54IVXfZ00alXCa15Cao0LMSuI/H05
         D+lg==
X-Forwarded-Encrypted: i=1; AJvYcCUhcAiBBEtOBPe4Mhfr9PuXvMDfuIQu3cRif4cFP4ycYMm+dCx0tYUwuTZsYln9A6GX8MJE8UzElSqp@vger.kernel.org
X-Gm-Message-State: AOJu0YwKp50ev1Cc14LAhwGURUvgc3goRlfhKNZ0bFwf+ytPfAYi6x8F
	M+nlOX30s4Q+xKbIwVNXYGo89NdCx8/Ed/JGvk9fSPaOA6DjLPw85D1NXTtL8VN0Cd0=
X-Gm-Gg: ATEYQzw9xnQFg4G7LHZ4tPseJWD2Hki6QjgYYXUCEhHB2g9Uoc66Wc9pG2K5ZP3rBt4
	MR6GjZKyIKFpzOt/RpoERrieNqVD7HH5nL63ORpE/NBhULTZufPVDVp1A2SbZMsl58DST8ADmva
	cbfbuzTZs5GblzKjjWbon7V4Ij7L0vBDO7vUQLQ6EDFktOjAl586GOLYYiOojEbo53kSdBtJlIO
	PF5pFjjZfbmaLJtZldLZqZD+vbMmqf9eXgjV4iZ7ZKy4SIzVoSYPf/go+u70t5pnlYoMvNeM25g
	G3A3h1Nyn5HyZ36mQ/vbpNLKs829j+uOK919WyW2XMYrSPZcpy0+cVhIHViW16H40W4hvFHGX7W
	DMKtuVjOVK3UNZYF8Tdmos59m+j5QAo5COx6iryRmHInvkU/gbrFkbDLPkFSjVyeKRpR6WZpz3V
	XWVN4mk78ClLeStie6Asg347uX
X-Received: by 2002:a05:600c:4e08:b0:483:c12b:fe4a with SMTP id 5b1f17b1804b1-483c9bc1b64mr53097065e9.11.1772212846166;
        Fri, 27 Feb 2026 09:20:46 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483bfeb932bsm60828075e9.28.2026.02.27.09.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 09:20:45 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 27 Feb 2026 17:19:09 +0000
Subject: [PATCH v5 4/6] dt-bindings: media: Add the Raspberry Pi HEVC
 decoder
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-media-rpi-hevc-dec-v5-4-9bb3fc1816de@raspberrypi.com>
References: <20260227-media-rpi-hevc-dec-v5-0-9bb3fc1816de@raspberrypi.com>
In-Reply-To: <20260227-media-rpi-hevc-dec-v5-0-9bb3fc1816de@raspberrypi.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raspberrypi.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[collabora.com,kynesim.co.uk,gmx.net,vger.kernel.org,lists.infradead.org,raspberrypi.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-269372-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dave.stevenson@raspberrypi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ideasonboard.com:email,raspberrypi.com:mid,raspberrypi.com:dkim,raspberrypi.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 732A61BB723
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
index 55af015174a5..5d9a495a2b34 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22044,6 +22044,15 @@ L:	linux-edac@vger.kernel.org
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


