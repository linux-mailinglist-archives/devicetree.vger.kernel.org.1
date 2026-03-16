Return-Path: <devicetree+bounces-275934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMNmFCObt2knTgEAu9opvQ
	(envelope-from <devicetree+bounces-275934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:54:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E92E8294E09
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B5D1730067B3
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30AD033ADA2;
	Mon, 16 Mar 2026 05:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NEk9YBWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C147C346FB0
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773640481; cv=none; b=U1beTqeEoRZjOR0lUyKsN45uNp55/KOeGU7JLWvXBXbP8ntwDoOy4Sv4P3JbZrtsV1pD7xKQlzTRehdgEUrQbkPWAnzqWSkum9YCBqCkJ3y8Gp5tEGS/UFbDSUcgCmDnXJ7hVXz1VW/obQH8/dKW9S5Vo0YYNpuksyk7RBoC+AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773640481; c=relaxed/simple;
	bh=HsJG0cTqBqXxdxsuFEFyQoLuHjyU0j2+5WpnEvdx+PQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hKnBxRMGU5cBryyNif59cu8S+ROZ3K1nmYvRE2asm/BjjAsd4MEt8ZjPQH2l2+Sbb9AUP7DNPzrzwtDfMZsc1O1/NBHqjFmJJHmkCKB3xvdku16sFLz/Wz0HqeaZ6xt6s59i37KWoQ0zj6Lf9gvPxE5Bk8DH+zXvuQxRvSYcFJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NEk9YBWO; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-35b905a05a8so672943a91.1
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 22:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773640479; x=1774245279; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GEh3nHbL/FUSvLsKsp4r0rwLAFQj7UgdMNRgMCRNe3Q=;
        b=NEk9YBWO1ixHe78MsUNJcbNaFNQ6lYk2yxPRe8iMzW1LgdYIKGKWJsN3OvQ/CzJa1O
         frJdjRCrKVV4kL7rN5is4GhL3Vg00aXTpJl4/lwE1dXQpu1dIcaf2VJG+EbeXZ1MvBxh
         7hPFSOHx3Vi1vFjXqL9hoW+3zH2EBIYI0QBhMrSt0wTDXL7I++PMoD3Lwni+ZDniHy+t
         otRTvgTQFgMA8wClc954A+uDWrcdqAX6aZUrRDs0Y3TrRadn5q5xaa2n5e8CIceHX29h
         sveGhrmTOxIWEoErKq4N8zYxmicx69XlbG6codYXQetn9tSMQ4NKlYeYYnMN+G5g2zYt
         nJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773640479; x=1774245279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GEh3nHbL/FUSvLsKsp4r0rwLAFQj7UgdMNRgMCRNe3Q=;
        b=Fs4x1xV/pkjs8t2R2oWwrJmJnbhSNn3Sr5YVAs4x0lvKKf1s6INdVpvVDLqO1y02lV
         //ntmCZPhDKGmw7ufx0niBEs1Wtuxh44FpZsFukkMqfmuJm0iHXr7gMDjgQOxLE6pnY7
         1HAD7CMDICccIAn1852g1Kgt9jtDYescD9h4bE+btGvVrjX/H61vkv11WNmMx7kV+JfI
         Nmbu43cqlzvu1+TkLswV8gXBvBCu4rOHKz5WG9fR/BUjH/zIX4WP53w7hlG2DYCA+dVd
         MYvBbrZTT+l4mJcNZdKQMmnG9uhXTFUDlRo/lxTJN7EiEbMey6Yj+gN/gtl5HfwWBoSm
         twRw==
X-Forwarded-Encrypted: i=1; AJvYcCV+OWvOPcJpYCHQFcyOtHR4A00QdyVeX12PaLrLooQukuhmxHuwSrfuxgOke/whWKyzTXoqDGM5mmE1@vger.kernel.org
X-Gm-Message-State: AOJu0YzXy6P03bDHuR7nSc25Z+saWonBG/OUHc0slhXhPL4OHSctpW64
	XTXjKzeZ2qBvaU2hfzsVdkwGb1z1ZMf4/iJ2aZZ9MlnuhAk5sMBCj5eg
X-Gm-Gg: ATEYQzwt9OHRUsAzZYSN4aDng7/138ppuqjyB+OVwUicIlAT/O9xiaof8ng2t+6QWmL
	nlhGxBL7FRk+3qsRq4RF+rjxFsyq8sacD44TqhcVV6Lnhsrwu/pVDJDfPhN6Hsntvk7p1ODZCG0
	sXm/Shq28OVF6Z1a+OVLo+EGQ3lNRIYOKQzVNSjjob641ByUyiepaHcj6bi9fHk/aTWhdSCz/0J
	EORUEDYMLMZ3u8nlXefE1UUs+ZJvwxF5Irld1x/CYaoEs1L6dfmMe6A7f0AkjzKnAjX+sEC6OMj
	j2tJNYbT78h80j+cm2Lr0wxl7iL8pOiavMZic7FwecnpA4PJO5f29RFuLt9onsAvef10WDxOpBz
	YWVTPlDFUqMrO2JC9LphRspLAW3xbKsE+WUjpd3qVHW5DmezF6DXcyWz6RkzHxpgCOKOLi8Tbde
	nbWpEwX1adDVYKg6rDb2XdcPoXOo5rTyN8I3NCy2qbLHe7/kA9OffHfOB4ivAuoaOSgSTI6TrWu
	V2fsPR0lAfB
X-Received: by 2002:a17:90b:4a47:b0:359:83d3:27d3 with SMTP id 98e67ed59e1d1-35a21f007ccmr10901351a91.2.1773640479016;
        Sun, 15 Mar 2026 22:54:39 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35b9db7dfe6sm2166285a91.8.2026.03.15.22.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 22:54:38 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	richardcochran@gmail.com
Cc: alexandre.torgue@foss.st.com,
	joabreu@synopsys.com,
	ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	peppe.cavallaro@st.com,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH net-next v14 1/3] dt-bindings: net: nuvoton: Add schema for Nuvoton MA35 family GMAC
Date: Mon, 16 Mar 2026 13:54:25 +0800
Message-ID: <20260316055427.1310569-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260316055427.1310569-1-a0987203069@gmail.com>
References: <20260316055427.1310569-1-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[foss.st.com,synopsys.com,nuvoton.com,st.com,lists.infradead.org,vger.kernel.org,lists.ozlabs.org,st-md-mailman.stormreply.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-275934-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[2.100.46.192:email];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E92E8294E09
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Create initial schema for Nuvoton MA35 family Gigabit MAC.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../bindings/net/nuvoton,ma35d1-dwmac.yaml    | 140 ++++++++++++++++++
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 2 files changed, 141 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml

diff --git a/Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml b/Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml
new file mode 100644
index 000000000000..ab18702e53f9
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml
@@ -0,0 +1,140 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/nuvoton,ma35d1-dwmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton DWMAC glue layer controller
+
+maintainers:
+  - Joey Lu <yclu4@nuvoton.com>
+
+description:
+  Nuvoton 10/100/1000Mbps Gigabit Ethernet MAC Controller is based on
+  Synopsys DesignWare MAC (version 3.73a).
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - nuvoton,ma35d1-dwmac
+  required:
+    - compatible
+
+allOf:
+  - $ref: snps,dwmac.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: nuvoton,ma35d1-dwmac
+      - const: snps,dwmac-3.70a
+
+  reg:
+    maxItems: 1
+    description:
+      Register range should be one of the GMAC interface.
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: MAC clock
+      - description: PTP clock
+
+  clock-names:
+    items:
+      - const: stmmaceth
+      - const: ptp_ref
+
+  nuvoton,sys:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to access syscon registers.
+          - description: GMAC interface ID.
+            enum:
+              - 0
+              - 1
+    description:
+      A phandle to the syscon with one argument that configures system registers
+      for MA35D1's two GMACs. The argument specifies the GMAC interface ID.
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: stmmaceth
+
+  phy-mode:
+    enum:
+      - rmii
+      - rgmii
+      - rgmii-id
+      - rgmii-txid
+      - rgmii-rxid
+
+  tx-internal-delay-ps:
+    default: 0
+    minimum: 0
+    maximum: 2000
+    description:
+      RGMII TX path delay used only when PHY operates in RGMII mode with
+      internal delay (phy-mode is 'rgmii-id' or 'rgmii-txid') in pico-seconds.
+      Allowed values are from 0 to 2000.
+
+  rx-internal-delay-ps:
+    default: 0
+    minimum: 0
+    maximum: 2000
+    description:
+      RGMII RX path delay used only when PHY operates in RGMII mode with
+      internal delay (phy-mode is 'rgmii-id' or 'rgmii-rxid') in pico-seconds.
+      Allowed values are from 0 to 2000.
+
+required:
+  - clocks
+  - clock-names
+  - nuvoton,sys
+  - resets
+  - reset-names
+  - phy-mode
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+    #include <dt-bindings/reset/nuvoton,ma35d1-reset.h>
+    ethernet@40120000 {
+        compatible = "nuvoton,ma35d1-dwmac", "snps,dwmac-3.70a";
+        reg = <0x40120000 0x10000>;
+        interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "macirq";
+        clocks = <&clk EMAC0_GATE>, <&clk EPLL_DIV8>;
+        clock-names = "stmmaceth", "ptp_ref";
+
+        nuvoton,sys = <&sys 0>;
+        resets = <&sys MA35D1_RESET_GMAC0>;
+        reset-names = "stmmaceth";
+        snps,multicast-filter-bins = <0>;
+        snps,perfect-filter-entries = <8>;
+        rx-fifo-depth = <4096>;
+        tx-fifo-depth = <2048>;
+
+        phy-mode = "rgmii-id";
+        phy-handle = <&eth_phy0>;
+        mdio {
+            compatible = "snps,dwmac-mdio";
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            eth_phy0: ethernet-phy@0 {
+                reg = <0>;
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 38bc34dc4f09..de04cbbab0c6 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -69,6 +69,7 @@ properties:
         - ingenic,x2000-mac
         - loongson,ls2k-dwmac
         - loongson,ls7a-dwmac
+        - nuvoton,ma35d1-dwmac
         - nxp,s32g2-dwmac
         - qcom,qcs404-ethqos
         - qcom,sa8775p-ethqos
-- 
2.43.0


