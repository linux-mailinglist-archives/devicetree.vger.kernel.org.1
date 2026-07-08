Return-Path: <devicetree+bounces-323006-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2xY0LiJvTmqcMgIAu9opvQ
	(envelope-from <devicetree+bounces-323006-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:39:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A43728214
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:39:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=9elements.com header.s=google header.b=D4HOHQFY;
	dmarc=pass (policy=quarantine) header.from=9elements.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323006-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323006-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A28E23012553
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 15:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7259409289;
	Wed,  8 Jul 2026 15:38:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3911340927F
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 15:38:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783525116; cv=none; b=HYw0LvrEPxW89C89QgXg+SAAwhjXjqGYwSZxn9VppSRIJKkZI8Dxdq0wx1xCgRypAh/CtfyhRgfp/wV8Yr9pNC6IXyHu9SpkeTz+0KbWKmEqtWmZDOPMig1MhKu6Onusl3y152KYrmcERn+VTcdKOUcd9l8TOYPJZzh9OLyJkjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783525116; c=relaxed/simple;
	bh=ZnhkDKdmhPBrpcYhAlSCSGgrlpqxEa3PkV+ULDwJizo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=vE7hg66MQ8Cur/NzDeWAALpdUpkalm2rlCye/9mO4OnWisXzYR62XqlsjogYCwoMWh1c3J836RO93BQkCesH9PbdZ1dIxHv2+W6LpUelSzvYrapJbCziytB0hm44+6RgpDTELxv+bLjE5mOMf6Ymj/eFhzFZjwaix2MczzaJUAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=D4HOHQFY; arc=none smtp.client-ip=209.85.128.48
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-493c59f740cso6142855e9.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 08:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1783525114; x=1784129914; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=IsD4MhplgL6wFfLDJdfUVLAz4oGDfnauFOzTWjsK6XA=;
        b=D4HOHQFYQs2mCjYqr5QbHdBbuklmKbUgOoIGU2oq0IJ2ZUpmZNJZUJKgz83oNyPGf8
         BR7Q3UM9Vie9rDs29vVWDhsgx/M35c54g9lk3bVpYP6Zswf/9uZEc7Ar5voIACNJtYkD
         RZV1W/OzFA1RC/xajubhTJ8bPt/iRD9l1kTpk9CPCMynOUd6nokxspSgD0MezARVwopY
         8fAlryyxfCA1/n/pzUNdmwUPCmFKD/772ncO4KAK3fO6FlKryrDS9vJaOtFEYXYJbEwF
         AXkLbgBQrHz07kx/fwqqnoMncix5eSmK0GeX6DcWGk5fxaO7eEdg+zGIk1j99GYaY0um
         Mgjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783525114; x=1784129914;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IsD4MhplgL6wFfLDJdfUVLAz4oGDfnauFOzTWjsK6XA=;
        b=YbtZ8uhplqr5gx4cbN5ebumn00BABBGvOLS8yb0R1EmdMquWM5ZaqspWCBlqsBpGr0
         Bd1Ar/2ZmZfV2OxTVzaV1KR1A4ww+GMr8WQ4Jl+heI6fObddknkeSE3IrKRwcuVLHPUM
         e3GaYvguykWOEt1HOeR32R4LKe8m48uIeY9ToIOTyDnI8ofb7INenqUb8o+FPCjbiLQg
         ksLF7/Rx6OHFjAsC0xJ2EqvDhWQZ4fPprZJBHZgRiFul0AQoL86u8DxbuD9FPJf6EqP9
         ET0GReo92NfY4FBf06Df1mfZQ/iMpo7bPfAXHmBRXyl/RsfPOBr6SQrc/7+wAIGIGwAn
         B3aA==
X-Forwarded-Encrypted: i=1; AHgh+RpVZfb+o/piINaufiI8WaR/+rqSbD2NbxVCQcRcp5juPSEXBX3yUIWwnl/5MJaGR7PzE7txzVwzQ89U@vger.kernel.org
X-Gm-Message-State: AOJu0YzHy1OHCtbc9yV3vRSXN+bPfjumT4r5hVgQVHXRra3m+um8TAL/
	3BzL69FlIUOVJawoslBDUSiZbfXtSSpuJ6qgiVLDaL6ruA+HRhA/2WSkpMGiWtCljc8=
X-Gm-Gg: AfdE7cm9m3ZreKGKHEbVBaonTL44BWRPQ95Wnqt8c/KN0u3WDG13lN9ntqG5N6QSNmF
	tmCCDV8Fjov+6OK4HTPF+LISFRg3YLxV3Sux6ua7XSPHdPSQNNwQMzQAS3K2YpiOLQptwJPhjFA
	udCyGNdve5ulcuzCjTWRqSC8pIdQRtU8n7NTqXH2/BL0V3UQAwuAVxkF2ADyhwdIpZTF+ubrHxZ
	DN8/ZG6zOIvGtY9vPriULn/9J8OFcMEMXUDMjcn6LGNifZpup/Xef3x/UDLB3izLGniF96iKILW
	+qoxoYa6rUxagkAD/Kwwp/EnmWLu36XNZVECkQjM0ZiDIPywYa2LhU9vE3v/xj6hPkPU2DwZSB6
	FNZTahL3nLu974dV5/5fPYQrIvUtPHnAgu+r/jJQjLWmQHQXZRaYfVD+AQQC4gRjwJP7iAbukJ6
	Xyi4pHYj2Zpa7h7ODzphNFecsVP2vj14UkI/E7WqNn927Tynf/EZk7TL2fzMn/KQwGOxpBLKCOn
	rRehlyG8YLzgSKBV2dslUdgTns+
X-Received: by 2002:a05:600c:1395:b0:493:a435:d870 with SMTP id 5b1f17b1804b1-493e68ce31cmr32926785e9.27.1783525113666;
        Wed, 08 Jul 2026 08:38:33 -0700 (PDT)
Received: from gregwork.sec.9e.network ([188.111.3.154])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d8410sm44254136f8f.15.2026.07.08.08.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 08:38:33 -0700 (PDT)
From: =?UTF-8?q?Gr=C3=A9goire=20Layet?= <gregoire.layet@9elements.com>
To: joel@jms.id.au,
	andrew@codeconstruct.com.au,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: andrew@lunn.ch,
	jacky_chou@aspeedtech.com,
	yh_chung@aspeedtech.com,
	ninad@linux.ibm.com,
	anirudhsriniv@gmail.com,
	linux-serial@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Gr=C3=A9goire=20Layet?= <gregoire.layet@9elements.com>
Subject: [PATCH v4 2/7] dt-bindings: serial: 8250: aspeed: add aspeed,vuart-over-pci bool prop
Date: Wed,  8 Jul 2026 15:35:54 +0000
Message-ID: <501428d6a6cb1548bf357c25313dbc319724ead2.1783524645.git.gregoire.layet@9elements.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <cover.1783524645.git.gregoire.layet@9elements.com>
References: <cover.1783524645.git.gregoire.layet@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[9elements.com,quarantine];
	R_DKIM_ALLOW(-0.20)[9elements.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,aspeedtech.com,linux.ibm.com,gmail.com,vger.kernel.org,lists.ozlabs.org,lists.infradead.org,9elements.com];
	TAGGED_FROM(0.00)[bounces-323006-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:lkundrak@v3.sk,m:devicetree@vger.kernel.org,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrew@lunn.ch,m:jacky_chou@aspeedtech.com,m:yh_chung@aspeedtech.com,m:ninad@linux.ibm.com,m:anirudhsriniv@gmail.com,m:linux-serial@vger.kernel.org,m:linux-aspeed@lists.ozlabs.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:gregoire.layet@9elements.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[gregoire.layet@9elements.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregoire.layet@9elements.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[9elements.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,9elements.com:from_mime,9elements.com:email,9elements.com:mid,9elements.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 55A43728214

The ASPEED AST2600 has 2 Virtual UARTs accessible over PCI.
The ASPEED AST2600 can be used as a PCI device.
2 Virtual UART can be exposed to the host via this PCI device.
These are 8250-compatible register sets and can be used to have UART
communication between the PCI BMC and the host.

This boolean can be set to specify if a VUART is used over PCI. A VUART
over PCI needs a syscon phandle. The syscon gives a regmap to the SCU,
which is used to set the enable bits of the PCI device.
On the aspeed's chips, the clocks phandle already points at the SCU node.
But deriving the regmap from the clock provider would misuse the clocks
binding. An explicit syscon phandle states the dependency directly.

Signed-off-by: Grégoire Layet <gregoire.layet@9elements.com>
---
 .../devicetree/bindings/serial/8250.yaml      | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documentation/devicetree/bindings/serial/8250.yaml
index 8f22121381fc..2ea8981bba80 100644
--- a/Documentation/devicetree/bindings/serial/8250.yaml
+++ b/Documentation/devicetree/bindings/serial/8250.yaml
@@ -27,6 +27,16 @@ allOf:
             enum:
               - aspeed,ast2500-vuart
               - aspeed,ast2600-vuart
+  - if:
+      required:
+        - aspeed,vuart-over-pci
+    then:
+      required:
+        - syscon
+      properties:
+        compatible:
+          contains:
+            const: aspeed,ast2600-vuart
   - if:
       properties:
         compatible:
@@ -223,6 +233,12 @@ properties:
           - const: uartclk
           - const: reg
 
+  syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the SCU syscon, used to enable the VUART over the BMC PCI
+      device. Only applicable to aspeed,ast2600-vuart.
+
   dmas:
     minItems: 1
     maxItems: 4
@@ -316,6 +332,12 @@ properties:
       polarity (IRQ_TYPE_LEVEL_LOW or IRQ_TYPE_LEVEL_HIGH). Only
       applicable to aspeed,ast2500-vuart and aspeed,ast2600-vuart.
 
+  aspeed,vuart-over-pci:
+    type: boolean
+    description:
+      Enable the VUART over the BMC PCI device. Only applicable to
+      aspeed,ast2600-vuart.
+
 required:
   - reg
   - interrupts
-- 
2.54.0


