Return-Path: <devicetree+bounces-261077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JSOJLcvfGkOLQIAu9opvQ
	(envelope-from <devicetree+bounces-261077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 05:12:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4B1B7076
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 05:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 051EE300DDF9
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 04:11:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54A0C34C128;
	Fri, 30 Jan 2026 04:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GCiicdUu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E982E7F29
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 04:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769746289; cv=none; b=j5yGWdYL1i3X8RDMk7UGS+2eJIIf/jjVt8rNiJe1dwLbz6QJWmqD03i0vyZtmQcLSkeqw+h9aHgIt6ByWJk9FI5xfN+XDGK/CN9G8i9gCJipGCvpgs1MOMFNjTFyIgSg4LdB5ChndmkOKobe0AfAEWBsqR1TnmCcR9MdxfjfNh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769746289; c=relaxed/simple;
	bh=XG8z2auvVLPIEbb53B7ae1t5gK554gf/2iUDA2auxCE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=reFOEl5ovkm+XdSulGcjTVzhoj9uuzmIYdiEML4XG6ij56HKlJvhSn2qut9Ic5HTtNESJ5KD//cT5h7/Aiw3/cjUi+r9Qfy+EtrWbs96jLpd/hxRovgG1QAIn2Mb4OrWPDasmhguLHzr4AqD2FU8i/dIqEUbPiitM720lOBapek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GCiicdUu; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-89476eaaf16so16663446d6.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 20:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769746287; x=1770351087; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H+T2Zlo06xiXQn/gacLojfwLwZ7jz+x2wxOefgL6ljo=;
        b=GCiicdUuOBwtiKrrFOPdqE9cvxw7zySr97inU5m2n5hIB3/8zsoyLPHvjybxmkybAI
         bBEMyhdJwqrfeWfT2Hy/ZDo7QYkrWtPrVb14kUsxGJTzn5dUBbX+fi1K7C17xkPIkM1q
         0EF2jZKHElzsKClFrtJkOzvdnmGBQQf/GDpWuXx7wqFf6OB7pi4TqJ3hTEJKcfoz2q/7
         sAuWV1yBnmmAwveUyMCD3lJ420U0Olrq9nXrbfihnopvMI8mixvm7kXDE4eq2HlxzM1l
         9JxGn+9l5gU4b41dYruqqeoUZ6S5tLYQrEtTzEBKA/r1ewSKvMerUTS8HwB4wC4pvXfY
         5ZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769746287; x=1770351087;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=H+T2Zlo06xiXQn/gacLojfwLwZ7jz+x2wxOefgL6ljo=;
        b=h1dWucYyKcueAxJ/ufvmQsoKjIu2zhLe9ih2/mJn8q5/B2ZDWR9w6aVuE5Js821kwk
         tokZAi2bLykDH0V4CKvNpheZZIKZQzhOR/8FLMHcc2g7MenDhiOlPEcoSRjPT3EM3KiL
         +nzs5/FBi8XTRJyQBRE9iLZQHyNCQ3GFy0tB7b3XFfsQTDF4vtnu+QIGTVEl7Ho2bMQz
         LX8LvXz3Tuk/J+Q3qxyow83yzCbU0kzCbUAZ1C0m4WZEVRU/ggjCeyhE+tuJaM2R5sTq
         SqZGp1Hp9DJdiY02C+gRdzqYyOlBR8kB69lZBS32Q6sSqgKcOIpfLF3392RSEtJSMZM4
         re1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXJ0QfZW89ilLSyeoO9fwqPd+ZDQX+m6NloKSN429hBCqzd2nO5BF/TNdE2kz5bzxpETdvR42lecOZi@vger.kernel.org
X-Gm-Message-State: AOJu0YwJSM7/90Qpme5BFYUAAOgAaYmOBnRprZMvsAzWK2JDyi95GQD1
	4lYF72n4x146DAECRdz0VTNSbBA3wts8Z1N0QUvMVyfstbt1PjyVDtAv5B4rQwVD
X-Gm-Gg: AZuq6aLMeDyB4qt8IHZ9uzaJxoDK/qCuEkURgump9K+A8OD3Ri8YNzi7o5CCAZ8sMol
	2F8354viuMEOEBY4Kv08IfYk+czZ6asL2AwFsWxJg9LNyA/2yOLNi64lyXwP2DNiINRGf8nHsUq
	o5SPaRSmbZQlDuSUlr3YyhGtyXnTUa4g/70gMSHv5HZqSSK/q4bLVSC9DMB0lgjNkfp6iXQSZjg
	Fgsg/ixGAHnY+BiK+gowQOLGrJwPV2QZKzHca/idTJ/w/DzA8pIitNJBXNegnJkO58B5X3ywngE
	fkOXgjPW3ndzM04UZKfAh4zXPje8LNNMJCmns4dQxpEfSHJzOEf6XndMkUY/G85YO00CsjFJt+G
	N6NAXsNVbP5FI/34MasXOg2I2JZ5JJDGs/Y+2QdzGbvjDCnU/IeDza/Lzg8LOhaiFIyiw8ci0Wz
	URAI3NQVv4K0FeMlYVg/RD
X-Received: by 2002:a05:693c:2b08:b0:2b0:5834:44d2 with SMTP id 5a478bee46e88-2b7c894932cmr655603eec.39.1769740049721;
        Thu, 29 Jan 2026 18:27:29 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7bb9ca10csm4119874eec.30.2026.01.29.18.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 18:27:29 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Yanteng Si <siyanteng@cqsoftware.com.cn>,
	Yao Zi <ziyao@disroot.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Zhi Li <lizhi2@eswincomputing.com>,
	Boon Khai Ng <boon.khai.ng@altera.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next v4 1/3] dt-bindings: net: Add support for Spacemit K3 dwmac
Date: Fri, 30 Jan 2026 10:27:02 +0800
Message-ID: <20260130022705.1059214-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260130022705.1059214-1-inochiama@gmail.com>
References: <20260130022705.1059214-1-inochiama@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261077-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,cqsoftware.com.cn,disroot.org,bp.renesas.com,eswincomputing.com,bootlin.com,altera.com,cherry.de,st.com,synopsys.com];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EF4B1B7076
X-Rspamd-Action: no action

The GMAC IP on Spacemit K3 is almost a standard Synopsys DesignWare
MAC (version 5.40a) with some extra clock.

Add necessary compatible string for this device.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 .../devicetree/bindings/net/snps,dwmac.yaml   |   2 +
 .../bindings/net/spacemit,k3-dwmac.yaml       | 103 ++++++++++++++++++
 2 files changed, 105 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index dd3c72e8363e..faa598c19bf7 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -108,6 +108,7 @@ properties:
         - snps,dwmac-5.10a
         - snps,dwmac-5.20
         - snps,dwmac-5.30a
+        - snps,dwmac-5.40a
         - snps,dwxgmac
         - snps,dwxgmac-2.10
         - sophgo,sg2042-dwmac
@@ -653,6 +654,7 @@ allOf:
                 - snps,dwmac-5.10a
                 - snps,dwmac-5.20
                 - snps,dwmac-5.30a
+                - snps,dwmac-5.40a
                 - snps,dwxgmac
                 - snps,dwxgmac-2.10
                 - st,spear600-gmac
diff --git a/Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml b/Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
new file mode 100644
index 000000000000..fc024a927fcc
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/spacemit,k3-dwmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Spacemit K3 DWMAC glue layer
+
+maintainers:
+  - Inochi Amaoto <inochiama@gmail.com>
+
+select:
+  properties:
+    compatible:
+      contains:
+        const: spacemit,k3-dwmac
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - const: spacemit,k3-dwmac
+      - const: snps,dwmac-5.40a
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: GMAC main clock
+      - description: PTP clock
+      - description: TX clock
+
+  clock-names:
+    items:
+      - const: stmmaceth
+      - const: ptp_ref
+      - const: tx
+
+  interrupts:
+    minItems: 1
+    items:
+      - description: MAC interrupt
+      - description: MAC wake interrupt
+
+  interrupt-names:
+    minItems: 1
+    items:
+      - const: macirq
+      - const: eth_wake_irq
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: stmmaceth
+
+  spacemit,apmu:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to the syscon node which control the glue register
+          - description: offset of the control register
+          - description: offset of the dline register
+    description:
+      A phandle to syscon with offset to control registers for this MAC
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - resets
+  - reset-names
+  - spacemit,apmu
+
+allOf:
+  - $ref: snps,dwmac.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    ethernet@cac80000 {
+      compatible = "spacemit,k3-dwmac", "snps,dwmac-5.40a";
+      reg = <0xcac80000 0x2000>;
+      clocks = <&syscon_apmu 66>, <&syscon_apmu 68>,
+               <&syscon_apmu 69>;
+      clock-names = "stmmaceth", "ptp_ref", "tx";
+      interrupts = <131 IRQ_TYPE_LEVEL_HIGH>, <276 IRQ_TYPE_LEVEL_HIGH>;
+      interrupt-names = "macirq", "eth_wake_irq";
+      phy-mode = "rgmii-id";
+      phy-handle = <&phy0>;
+      resets = <&syscon_apmu 67>;
+      reset-names = "stmmaceth";
+      spacemit,apmu = <&syscon_apmu 0x384 0x38c>;
+    };
+
-- 
2.52.0


