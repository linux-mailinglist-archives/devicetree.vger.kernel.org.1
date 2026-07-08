Return-Path: <devicetree+bounces-323098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id b6vtGgaQTmr1PQIAu9opvQ
	(envelope-from <devicetree+bounces-323098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:59:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 593DD7295F5
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:59:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=okXq95Bu;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323098-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323098-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5FFAD3014244
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 17:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E65BE42DA5D;
	Wed,  8 Jul 2026 17:59:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401283BAD9B
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 17:59:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783533543; cv=none; b=k5L9U1JnlYflkns5ZukkFRFaMk99PJV7vA9DvX2SlOI8xaMIrzt38Qj9Wmw+Q5vumsGF7Bd8Ddgc/iwJUT37FoCzO9HN5aQhPz8FjRUc0n6ElCmOUb1A4fQlLM2DBSN4CNpLsal4OY7h6ZBYw629KOwpRTheZ3j0z+RiIJTDuKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783533543; c=relaxed/simple;
	bh=qR8da7hKtoo+tPfwG3vADxqc/OIuPfs3p6aDdWf+HJs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m28aKDgw3r0PPVhshJ9CNPMfkMViFm1EUs7VkRv+YWXkyL4mkIug5HJQ+JDwlpQjrMfMuLc2pKa/T9jMMwoSsjuQoIHPQ/wDHfkDSuSaOlwUsvzkqJVuJ6gutJxQNcyjLR2CZcb7ZprpSElRkSCE4k7Wh03+33ekk+Vo9LXoCp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=okXq95Bu; arc=none smtp.client-ip=209.85.218.52
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-c15cd3fd760so94049666b.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 10:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783533541; x=1784138341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ANaeyZnIlvUZuUb+qcVD79ri5D/Hu+DLtzSwYPDFNAo=;
        b=okXq95BumxxuPuQcGSoDV1NhQQWS+Pw+q68vEYQuqMONf6t0YyZS6oarm3EO7av1hY
         sm5bc5QrNtKjLCHBDgwxC9znCd+yqRvDve8Dmp3LGG0JbvgK1wT+2EsmLR7kUkIIicLY
         W4SvUqdumDi8n1XEg4dTxOEV/EitJsUqQ/gl9vC6r5QZ3fxE+n/rX2mwS3biBPjJEiLA
         5MNcIYCZ6Zuo/XRVa2zs99mbc3EB283P9embX+uYa8OJV8MJrt3l6n2Hm2/40rJrDVnH
         1vLr2JBNYk0DhkTiU5q6Y0ts5LEvAZNXPqd5tvRxWmlZVJDFKXwOPgnUOxsMDybM/pYr
         YMYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783533541; x=1784138341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ANaeyZnIlvUZuUb+qcVD79ri5D/Hu+DLtzSwYPDFNAo=;
        b=QPK5LkeTbOV222Y+wLmG0wc0fa2WOAMkGC8I95WOFGR/nVPqUy+aKC1FRyNiGWsp7Y
         eg6ctnSOHNY6CYnthJdvotH564qOSgLlx4dL7S2cqQqQxmYh8+G+/w0i+e0uzCjZUYkV
         1WaR9xpOIKmTHDXWPEfaABtGVRoafI2STNWl8qvKHwig+UDJVRlbOSfJwnh8ZJJWpGXO
         knJMYRCHw6X0xiv0r09u44pJ6TyNNRGe63rJuzBl8KCcgN9HwDPyVr4kMFjJWE1k+L0I
         wxjHAtqJTeIH30I9q1x58Iyo4Lbt37qmwB6DcKPt06zuqR3HHlaGr0XGEavViBMMYV+q
         iUWA==
X-Forwarded-Encrypted: i=1; AHgh+RolxmaWLhQInP8ntdMcQakLbiGixcELtQfu8EQEJ36J3k4jNZhe1B+XHkTRopd2nOBNF9VyR77BLc+k@vger.kernel.org
X-Gm-Message-State: AOJu0YyxHnlj8/or7EUmpTFH6m2Bibr8H6DbRyP0PTwOTqRfvVNtJ9gt
	pBXbbFDUAJmV8UTHPLBVOcxrmDEWnLfmgmIkoaFHhg+h7RrrLunEWMr2
X-Gm-Gg: AfdE7ck4SnzCExXhRNuDh5MrcELfKQFOXv8M/U68MKcp+ILLfkLdz46zrGwLNg6tnqP
	fTFVEI0Y+iPsbcSjRJq0Ii7EKfEnCJi+bKVm/N54U0Arvgsl9VCxji+/XWj2qyV8kZGce0AUwz3
	3DDelxPlZkig4hXIFY1ae0hjfKaipOWG+55YJJrKIDJ9oNWkE9EXYQXv/c7pZX6UroAsMy1r1nP
	HGTf2SpQ84iwaj3PTcc6vaNppYEQzeacALQ4q4NRB7yRv6kzENhjLJxykn8pZOqqQt7INkwqWXO
	Xbzf3OkrX/g5B3/U9Rjo3ITd0Y3gpRnk0t9peV0cP2eDx826dU0RNN2JrKtBrxjlJp4KOXutVqI
	4ZOxa9BhuR1ix526yhuP81TYVn4rWzgnMC1G8Ie9fMjv9yoFy9uszjmzIThQrnmAT3QsayXb/DE
	UyO/K/AQ==
X-Received: by 2002:a17:907:a286:b0:c15:b6bd:cbb8 with SMTP id a640c23a62f3a-c15ce121a12mr164929166b.50.1783533540594;
        Wed, 08 Jul 2026 10:59:00 -0700 (PDT)
Received: from olympus.. ([2a0a:ef40:ea3:3f01:2e0:4cff:fe68:285])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15ad9bcc26sm357653666b.34.2026.07.08.10.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 10:59:00 -0700 (PDT)
From: Dawid Olesinski <dawidro@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Corentin Labbe <clabbe@baylibre.com>,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dawid Olesinski <dawidro@gmail.com>
Subject: [PATCH v2 1/4] dt-bindings: crypto: rockchip: Add RK356x/RK3588 crypto engine binding
Date: Wed,  8 Jul 2026 18:58:22 +0100
Message-ID: <20260708175837.1718437-2-dawidro@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260708175837.1718437-1-dawidro@gmail.com>
References: <20260708175837.1718437-1-dawidro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323098-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[dawidro@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,baylibre.com,vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:herbert@gondor.apana.org.au,m:davem@davemloft.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:clabbe@baylibre.com,m:linux-crypto@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:dawidro@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dawidro@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,baylibre.com:email,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 593DD7295F5

Add a YAML device tree binding for the Rockchip second-generation (V2)
cryptographic hardware accelerator present on the RK3568 and RK3588 SoCs.

The IP block exposes AES-ECB, AES-CBC, AES-XTS block ciphers, SHA-1,
SHA-224, SHA-256, SHA-384, SHA-512, MD5, and SM3 hash algorithms, each
with a hardware DMA engine controlled via linked-list descriptors.

The binding covers two compatible strings:

  - rockchip,rk3568-crypto: clocks and resets are driven directly by the
    non-secure CRU (accessible to Linux at EL1).
  - rockchip,rk3588-crypto: clocks and resets live in SECURECRU, a
    register bank sandboxed to TrustZone. Linux must request them through
    the ARM SCMI firmware interface (scmi_clk / scmi_reset), as direct
    MMIO access to SECURECRU from EL1 triggers a bus fault.

Signed-off-by: Dawid Olesinski <dawidro@gmail.com>
---
 .../crypto/rockchip,rk3588-crypto.yaml        | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
new file mode 100644
index 000000000000..fc09f21b0654
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/rockchip,rk3588-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip cryptographic offloader
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+  - Corentin Labbe <clabbe@baylibre.com>
+  - Dawid Olesinski <dawidro@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3568-crypto
+      - rockchip,rk3588-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Core clock for the crypto IP internal logic
+      - description: AXI interconnect clock interface
+      - description: AHB interface clock
+
+  clock-names:
+    items:
+      - const: core
+      - const: aclk
+      - const: hclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: core
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
+
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      crypto@fe370000 {
+        compatible = "rockchip,rk3588-crypto";
+        reg = <0x0 0xfe370000 0x0 0x2000>;
+        interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&scmi_clk SCMI_CRYPTO_CORE>, <&scmi_clk SCMI_ACLK_SECURE_NS>,
+                 <&scmi_clk SCMI_HCLK_SECURE_NS>;
+        clock-names = "core", "aclk", "hclk";
+        resets = <&scmi_reset SCMI_SRST_CRYPTO_CORE>;
+        reset-names = "core";
+        };
+    };
-- 
2.47.3


