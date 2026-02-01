Return-Path: <devicetree+bounces-261568-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OE9fMrw6f2kfmAIAu9opvQ
	(envelope-from <devicetree+bounces-261568-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 12:36:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2519DC5C69
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 12:36:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F22C3016905
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 11:35:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FE1B32936F;
	Sun,  1 Feb 2026 11:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c8IeNUEO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320622EF64D
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 11:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769945706; cv=none; b=GilAB18UDzgcGpMfTx6S7e6I8655+rk1Ji4WBJawYCibKezr5HgwwOaJ/wPc6G/i5gaBMCBmHUwcDVj3J5oqSLD/9oqbgPbvoIGFEeC5MyF+kOnWgLSC3ZouV5dbUPI+yGZy1lAycJqiVdnADJZCRqjPJqmisFd5WHm1Hu5bX4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769945706; c=relaxed/simple;
	bh=tiWnkS0c1E2yLOTA6pvv/0fAMnTGnan12wecxsGtKYE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rSCCrjSgztO022F+oiK48Te/CjFi3RHlBSJ5xYyxgrWnA2F17ms8YtJQ0Iok+e5fsONBdy+mNRb3Ki5tTvJPB9vypE7kVCxe/yV0ox6G+VEU7sPnPS3fqzLvwySngWUC33Ml725Np5rG5yRpSp0Emz0oVUSoe4SdB16YjxUYXSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c8IeNUEO; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-8220bd582ddso1983758b3a.2
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 03:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769945704; x=1770550504; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uo8u5FaJGPF86RZ/ycn10HpgRIqDDK6kBOV/6qMYc8c=;
        b=c8IeNUEOHMyTC550aUQN35ieJFdXn80CxFQXHt5zm+W2J6RHBbeJBFZBQ+E2AOmuic
         SFnSU36BcFgbIL0QID3W5DuD7an2FrJKHkW/6HXuXOvp+GiOHUNXKD52/zpW0fBD/dn/
         dm7Ur5BBLWMBa08+c0GTj4Cw1Kq0m54q4GzHbe3TQauf91iEEDYik5KNSwG17lsrdvNi
         4ILeWSOnJKhj1ifexfNqkm/0aMD+a6yQ8wTHEkWhW1Vr3W+v9q/mjgnh7hyXtO2MFnuU
         6zztG2Z6kfpszxprQ7fieVNcwtKmQKrd+5j53RagaRvZXu8J7GsTa5xKZF44/9lkQJFG
         dyaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769945704; x=1770550504;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uo8u5FaJGPF86RZ/ycn10HpgRIqDDK6kBOV/6qMYc8c=;
        b=mEjK/vVEb0emYyWXWNTtKZhjHOHNAOJppQf8qghZ/mRGWKSYIhs0BACvlXnAJn1gUm
         gv6aaHs079iEdLfyr1o6Y0yUwjabrUM309ebXsx0EU48mCMQ/JlXyLmKf9WHS6iuD/mX
         sLx8zv1X3WCaPTibwYmw0vniZl6CNMj1j5mfzXcHupOjFwNwLKsTh3DpKGHXHGWpF5k7
         +uFipelyr2ZZHcnFYNccvKuPPp/aEB1tepRvPvIe3Od/tE+fSZZnWgNCuI+wo9gmNIRd
         RNHokUqSrJpKbg/Ul5KpPcSJ7BMe4iw82l4MtQ9dRsWTzolSLsK8DU4/jU11va0Sebgk
         u1fQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDH8Qm7Ep2bJ98R2xgfck9QmkGyX0l3GqiByucBsveyRGOE2tvuU5RNCyoYWbs68Ujt6NRNFatpjjx@vger.kernel.org
X-Gm-Message-State: AOJu0YzQt/VcdKrMezhlNKYuAFWN3o91Lmf91IGBXbP/UfKgKXawDYJ/
	bz2LpkBAQ+Ix23jpTlk8ObqBnv7CbN681C+mgmpnoCR3RWUWiy2zDz8D
X-Gm-Gg: AZuq6aLgLLP0su/zuXDNRwolLMJrdP1JYcGxTMen5ClgD6R7QFiV/6pwiYxcUDIDDW/
	AGfx5znkoXvNwOt+gUVXPwZKqmwaI6HuaM8UVk3F3zCE8LSMqHpMqgbMDWes6KZpauYGjx8L64K
	DJb9NOf/ogSPmkrBiBp5cteO8RB3oxBt21S69A/4XAItHmSesBM6AUGJ0I2YMqHiDMN+K9HFZcl
	YjYYUq+F1k/ON7TXRGjmDHNu6UeM2/X8EVgKkbo/kMLHwE8Y4HHfupDF1oZ6e2t7dr66QWX+Pve
	XJIcZTwiznxJcljv44qtwhrSlpnlfs2NV2hQoQ0BtPwS6Of6Z3uvposU/naLR4fO+bfkBibDUhR
	tLErGWQ8OSViuX+QDDWTYH2PTzApzwkajmOC4k/5rrRW2h7Q3SnxbRXKL3WFHjtrWrSiMoTTgNA
	1rRIBUi4Z3cnZ730oOU+cOK6FR4GPPSl8X0g==
X-Received: by 2002:a05:6a00:ac03:b0:7ff:f0c2:816e with SMTP id d2e1a72fcca58-823aa6ea4e5mr8829654b3a.28.1769945704450;
        Sun, 01 Feb 2026 03:35:04 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.252.105])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-82379c24083sm12994728b3a.55.2026.02.01.03.35.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 03:35:03 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Sun, 01 Feb 2026 11:34:21 +0000
Subject: [PATCH 2/4] dt-bindings: usb: atmel,at91sam9g45-ehci: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260201-atmel-usb-v1-2-d1a3e93003f1@gmail.com>
References: <20260201-atmel-usb-v1-0-d1a3e93003f1@gmail.com>
In-Reply-To: <20260201-atmel-usb-v1-0-d1a3e93003f1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Herve Codina <herve.codina@bootlin.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-261568-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.7.161.32:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,bootlin.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 2519DC5C69
X-Rspamd-Action: no action

Convert Atmel AT91SAM9G45 EHCI USB Host Controller
binding to DT schema.
Changes during conversion:
- Include "usb-ehci" as a fallback compatible to allow atmel EHCI
  driver matching.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../bindings/usb/atmel,at91sam9g45-ehci.yaml       | 71 ++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/atmel,at91sam9g45-ehci.yaml b/Documentation/devicetree/bindings/usb/atmel,at91sam9g45-ehci.yaml
new file mode 100644
index 000000000000..d7b8d110656c
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/atmel,at91sam9g45-ehci.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/atmel,at91sam9g45-ehci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel AT91SAM9G45 EHCI USB Host Controller
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+
+description:
+  The Atmel AT91SAM9G45 EHCI controller is a high-speed USB 2.0 host
+  controller compliant with the EHCI specification. It provides USB host
+  functionality when operating in host mode and requires a peripheral clock
+  and a UTMI clock for operation. The controller may support multiple USB
+  ports, with the PHY interface type selectable via the phy_type property.
+
+allOf:
+  - $ref: /schemas/usb/usb.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: atmel,at91sam9g45-ehci
+          - const: usb-ehci
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: ehci_clk
+      - const: usb_clk
+
+  phy_type:
+    enum:
+      - utmi
+      - hsic
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/at91.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    usb@500000 {
+        compatible = "atmel,at91sam9g45-ehci", "usb-ehci";
+        reg = <0x00500000 0x100000>;
+        interrupts = <41 IRQ_TYPE_LEVEL_HIGH 2>;
+        clocks = <&pmc PMC_TYPE_CORE PMC_UTMI>, <&pmc PMC_TYPE_PERIPHERAL 41>;
+        clock-names = "usb_clk", "ehci_clk";
+        phy_type = "hsic";
+    };
+...

-- 
2.52.0


