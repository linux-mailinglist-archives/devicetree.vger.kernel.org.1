Return-Path: <devicetree+bounces-290627-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IGVEvOO72mhCwEAu9opvQ
	(envelope-from <devicetree+bounces-290627-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 18:29:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5207E476635
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 18:29:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D93833055E54
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 15:22:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5599333554B;
	Mon, 27 Apr 2026 15:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imd-tec.com header.i=@imd-tec.com header.b="FIXrUM3S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B601332909
	for <devicetree@vger.kernel.org>; Mon, 27 Apr 2026 15:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777303354; cv=none; b=NPEKzOQfQxSkzPj1K9GQxuPxgJAdNyVnBguqUC8qFz+hQ+4uMs1GdgLtzRJ+XMXeqQ1u2qFRABvJuHwKs1F8pgcOgQbdU7XtnkHCTroOWQN+MUwW62m8jVpj079+zjhFfM8BQoiV4cIo+bG5s4ArAjIow/QbUnPoRExtfVHHCSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777303354; c=relaxed/simple;
	bh=nufcdi2qkof5Ww/gaEmoLUgX8VGg/jPNZzUufn8zrLM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o3VzSIkR6WYrcOTV9AXm32d8kJ51eiKflfPS/z0yX8KAfK4SazpxULdwUFpji2J+kllty+Hk7JnPfhmzKVlqh6tzxDoPs1se8wlqN21+BqfyIPQN5ny7fr2cM08LCE85hW2+D+24U8JwFZgojijcMq0wxBJNSPdu4ltWye8ugII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imd-tec.com; spf=pass smtp.mailfrom=imd-tec.com; dkim=pass (2048-bit key) header.d=imd-tec.com header.i=@imd-tec.com header.b=FIXrUM3S; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imd-tec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=imd-tec.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48984d29fe3so124751235e9.0
        for <devicetree@vger.kernel.org>; Mon, 27 Apr 2026 08:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=imd-tec.com; s=google; t=1777303350; x=1777908150; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kxIlr02u0245SQX0aOke1TpITzvCVNhVlaMNlcxWD0s=;
        b=FIXrUM3SkvLJUlRdLRDFtKLwAAjt3YQ+GkTqCQBoQ/QWWH3fVspeIvpNqeEND2x77E
         8MozIRxpOY8wsBdvNrVDxDqgTtBwWDPg7g6Yz7bk/LfysFuLbruZAi2G5OoC6optn0qD
         4heIHGc/qyIb90OlG+4kQ4WoKB/uFDD4UIMAf5N5mJTLraaeOVkrZV65fWlHpscDmecZ
         xmNx042RHmdPPmBeOCywB1i9i5kf+BvKnMGpzf8pDXuahkznmQ4fG4WmFhJAp0rIa1Zm
         RRqvAnz7Cm27PCOeYmVEcpAx0C5CrJSxboUeGkdsOenjYHllHErgaWBhOitFbfrECCOE
         MZ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777303350; x=1777908150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kxIlr02u0245SQX0aOke1TpITzvCVNhVlaMNlcxWD0s=;
        b=LQH3+/HgMiFzM5cywSIAXbl5dYDXuPBNu8qMsbzyxdBLqiM149EFPYEtOfOhRiiQld
         I4jfj07CmtL4qHXHTrO8vPYk1lC/nC1qyqZDUpsgiWsuladXsflkRGzmMZ1+jnLPA0vF
         sJEuwyVlTeAacFFPJC+WGLEl+IbC9Zf/+UGJrOqYwPCsi1HXWWJ8R+SnDw5kqwqx+3Xy
         9qyZe9cwt8rCowORfnfC93kITnQqea1vFGKAiskE6+Dpx87MPOrdcrLxjymobY/nD0/R
         B3tsa2juulxd52nF/T0Z4UT/GItvjAbn7qB+ptriA5r1PcwB7Cr9AQzQMxAQUQwR1SkQ
         WtmQ==
X-Forwarded-Encrypted: i=1; AFNElJ9bJF2NNVG0L4sXkFd3f9AVDcrJkB8tG6zReE6jmrbmwezST3p+pDRgItq085U6Aj+TWxqMxTx0Tme+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3oO4V3rRxN73fW9N4gF4ANrbeC8/phfaCcmT6ZHM+J308KsvC
	bMuBXcCAJQo1K7+oaiS8SqLNXFSZzy9oIQNiLJVYf0bf8KRxGNxzP4u9Xl8rsWypWRg=
X-Gm-Gg: AeBDietH/p5HLURQUghH8zMgnMM9Rzg95ePdxaCFNnLG1LekfIo/yjUv3ezk1Fx3tp2
	Cg4aNb+kTuy0fLJUWJkRCtOXMsT6ARU3Ix4HJ3f0odq+E6g9oQhgK9Z37TCinuOjJYBRgRCax+0
	JVeMdCuISNjGh+xOtvpAnDTEx/F11bYQEPugfczbXxxsO/dFaTLESzvMeWIjWhuXHvM8CePgVRM
	wvbvv3Ah+yg0Tdw5awJnZJsCywvd2MQihPyUN2rZvtiynZd02thua1Gt95q+ZRmuorpyHSdY5vx
	eHT+BvBhw6r0pNmfFxlI4uYDse4fXoSTV0xCBR1ftSd7ypl32k6g4nKvxRbBysTwHV/SvKEOK42
	Gjjp57anAMQO32/WQEihMOS7uf8GLuQwCnbsOPbKMUIojqGDw0lcNszY4cGXVNsyGSHoEr3poIP
	fVaEUMroiqgPdvedjl2GPltQ2MmytNmj5xwzxQ3e1z8BfyrL5k2//I6aalFGN6lxPUEbqeV2uxi
	WJCiPJ3l4u1l7qi5JbEx/L7wEHFxw==
X-Received: by 2002:a05:600c:4f92:b0:48a:f18:ece4 with SMTP id 5b1f17b1804b1-48a0f18edf7mr408561105e9.24.1777303349827;
        Mon, 27 Apr 2026 08:22:29 -0700 (PDT)
Received: from [127.0.1.1] ([82.71.135.85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc0f8188sm861247695e9.2.2026.04.27.08.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 08:22:29 -0700 (PDT)
From: William Bright <william.bright@imd-tec.com>
Date: Mon, 27 Apr 2026 16:21:09 +0100
Subject: [PATCH 1/2] dt-bindings: display: panel: Add TSD TST070WSBE-196C
 panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260427-imdt-dsi-display-v1-1-bb2768de120b@imd-tec.com>
References: <20260427-imdt-dsi-display-v1-0-bb2768de120b@imd-tec.com>
In-Reply-To: <20260427-imdt-dsi-display-v1-0-bb2768de120b@imd-tec.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, William Bright <william.bright@imd-tec.com>
X-Mailer: b4 0.15.2
X-Rspamd-Queue-Id: 5207E476635
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.84 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290627-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[imd-tec.com:s=google];
	GREYLIST(0.00)[pass,body];
	DMARC_POLICY_ALLOW(0.00)[imd-tec.com,none];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[imd-tec.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.271];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[william.bright@imd-tec.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:104.64.211.4:c];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email]

Add device tree binding documentation for the TSD TST070WSBE-196C, a 7"
1024x600 MIPI-DSI TFT LCD panel using an EK79007AD controller. The
panel is connected via a 4-lane MIPI-DSI video interface.

Signed-off-by: William Bright <william.bright@imd-tec.com>
---
 .../display/panel/tsd,tst070wsbe-196c.yaml         | 64 ++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/tsd,tst070wsbe-196c.yaml b/Documentation/devicetree/bindings/display/panel/tsd,tst070wsbe-196c.yaml
new file mode 100644
index 000000000000..fe3f45aa4575
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/tsd,tst070wsbe-196c.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/tsd,tst070wsbe-196c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TSD TST070WSBE-196C 7" 1024x600 MIPI-DSI TFT LCD panel
+
+maintainers:
+  - William Bright <william.bright@imd-tec.com>
+
+description: |
+  The TSD TST070WSBE-196C is a 7" 1024x600 TFT LCD panel module with an
+  EK79007AD controller, connected via a 4-lane MIPI-DSI video interface.
+
+allOf:
+  - $ref: panel-common.yaml
+
+properties:
+  compatible:
+    const: tsd,tst070wsbe-196c
+
+  reg:
+    maxItems: 1
+    description: DSI virtual channel
+
+  backlight: true
+  reset-gpios: true
+  power-supply: true
+  port: true
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - power-supply
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "tsd,tst070wsbe-196c";
+            reg = <0>;
+
+            reset-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
+            power-supply = <&display_panel_pwr_en>;
+            backlight = <&backlight>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+...

-- 
2.43.0


