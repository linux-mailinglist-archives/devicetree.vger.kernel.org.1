Return-Path: <devicetree+bounces-259478-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WItdHohcd2maeQEAu9opvQ
	(envelope-from <devicetree+bounces-259478-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:22:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A01B688254
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:22:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78FE43016913
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E94E514BF92;
	Mon, 26 Jan 2026 12:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JibgnDZL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BF7335063
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 12:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769429924; cv=none; b=Q6PzNc6inXvcQpz1YppSZGAuGrR5uk2lJZXnzLKo+rZmC4noYvQOffYgXNGjAklPVPw8wg0NJheFgsc/9d3E7bGaNGWlOIktf8NOrbWIuSgf02vQ/8HqwlondaTFgeuNpR/lfxiFtkux4ofWHjVZ24zWbfZhY+dCcqep6wYwfZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769429924; c=relaxed/simple;
	bh=y1lGC/teIR/FTGRVTgw+bosav+jMP2M9QnBcEXFTaME=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JB54iHNzDXmwdYy54rl0wqj9KMsqTJqDssi8BxemOAMcxqwbxDaweHFhyd0Y3hjZdGWGBfpFxBCj3oeKwSzvzlchhDU0yiVCaHZLfdKpfTtSOqkWJVpFEPICl1qJ2b55e4M9QcigpX2R5gto1U6my3+ZuDw+0oh8bC/ovVPER8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JibgnDZL; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-93f56804894so3078704241.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 04:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769429922; x=1770034722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tJ1+S2Wah0B24B4nb8d1ZRSd0AUn0CCMY72mwuIFWBk=;
        b=JibgnDZLX7ljeVEdmwE6GTrx5ivik8CVwl67i+7Y5srs1DjJ/gu6mjxQwArikgGcnb
         s2XAyxzvxQZzHBLIQ/BaAFWxs2bbpWYJ+uxI9YZpErLHjOW0UqVmyiTLOG2sT+WzKmil
         ZvO4L+qu45DyuEAfWjomQbxyJ3/M0bHboN+G8NLSupewPQi5GYtJiypZe3/qewkFsEQw
         pwB6FQYSVmCebiX1W/rbjILl2OzZZPxCmFBG7VoJ93HbNSqU9iq+AhxRq+zkVhL3/abh
         f9T7nvnAa1iNvPoq1GtHxxwYYEU1psf9mqTwp6G45Rj/C34e5GFrG/FdziR8xEkkfuDq
         mOlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769429922; x=1770034722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tJ1+S2Wah0B24B4nb8d1ZRSd0AUn0CCMY72mwuIFWBk=;
        b=WLSLaQ3EzTDMRtH1QQ1JiHd0PCOBLZ+huVS6v9uwV6TMJoaQ1jXviQrdqjS/D/fsSI
         bpG7//Y3A9o9tfUDoXLJ46i32zJYhUyiUlTtxaDhIWfMQfB6Z56dGSHLptPhDbwl6f2F
         o7sM6D2EeMDfcXNkK+f50nf25DZuYwJXVe5HCdJzy5vSKJD9mjRFZEbh44TFxeJs1zl6
         YOZx1GVW28xNLo6JzaD8L/L+szdPrl80ekIcNpxRBh6HnpUeR1Z2Ui1GmxF30nTjB4Fc
         lz/YkSqLEYdg+iCf6oltyNg0Ex4zhd60efWHkiTaOQr9LAkI9rjKWc2KFDhIe53GluYr
         LIpw==
X-Forwarded-Encrypted: i=1; AJvYcCUVgetCkamwlKDwWxCoqTPYfci83vtvC4TSuGN/M9wEAi+8w8618juv3HZiml9KWAkxw+lFkSbsDhxI@vger.kernel.org
X-Gm-Message-State: AOJu0YzVmldzHAE2tZ5RptVjc69KEI5TaqO1497jor/44IGqDHKF5UrX
	RiywQmLW0qy+cXeXAV98lndRBlmJniIaYJyxp/sqbB+i3GLj67I85pRqUkyECk5t
X-Gm-Gg: AZuq6aIrQIvf6eq6KTRH73PsJ4G2o1xkGAoiqTJrMOsKXinteYttmXh0tK6B8ctEI+D
	GpZfu1MyKYa+qPWQj2HNXFWcuRdDHZ3bNbMaz5u7ga0Um0+yWBGGzmOnk+kXPbQ/01ZOUoMCOjT
	tfK6JWj5nhH71Ssy1AfCvS8NqrN8+dGYHdb5up1wonyui1NMsV/GZno2nL98o0N3riCJmtSAGjk
	xd1vfroOY85p1AwBW0cgYXBFw4CH6NPshCl6Vl7jNj9IhzhwlL/Z3qdZX7VcSuOmiaoOwp27vQy
	gWuKmWbmIDu+qbugVNZaq8Ld4DfqYPR4cQnpor0b4jTRKzgLWyPyi5fDfm0d7jArxnufA/Q6xg+
	68u84Wf6JWNxAyrBgmYdv0nRWLXA08mvO0vrlB9chO8zc+UC8bNv8C2qc+LNpV9McLWARpyxUnU
	m06L8ulgLhOgADREsPQqgpzHX08fe6Y5zAwSpQ1bbMR7FBgnHcDvK1nMyk4fhTAcwTmtBve/B8
X-Received: by 2002:a17:903:2f48:b0:2a7:a9b8:ebae with SMTP id d9443c01a7336-2a84531819bmr42437665ad.58.1769422988504;
        Mon, 26 Jan 2026 02:23:08 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802dcd776sm84958275ad.26.2026.01.26.02.23.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 02:23:08 -0800 (PST)
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
Subject: [PATCH net-next v9 1/3] dt-bindings: net: nuvoton: Add schema for Nuvoton MA35 family GMAC
Date: Mon, 26 Jan 2026 18:22:55 +0800
Message-ID: <20260126102257.2619862-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260126102257.2619862-1-a0987203069@gmail.com>
References: <20260126102257.2619862-1-a0987203069@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[foss.st.com,synopsys.com,nuvoton.com,st.com,lists.infradead.org,vger.kernel.org,lists.ozlabs.org,st-md-mailman.stormreply.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-259478-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.100.46.192:email,0.0.0.0:email,nuvoton.com:email,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A01B688254
X-Rspamd-Action: no action

Create initial schema for Nuvoton MA35 family Gigabit MAC.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../bindings/net/nuvoton,ma35d1-dwmac.yaml    | 126 ++++++++++++++++++
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 2 files changed, 127 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml

diff --git a/Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml b/Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml
new file mode 100644
index 000000000000..8eaddfdc937c
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml
@@ -0,0 +1,126 @@
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
+allOf:
+  - $ref: snps,dwmac.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - nuvoton,ma35d1-dwmac
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
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+    #include <dt-bindings/reset/nuvoton,ma35d1-reset.h>
+    ethernet@40120000 {
+        compatible = "nuvoton,ma35d1-dwmac";
+        reg = <0x40120000 0x10000>;
+        interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "macirq";
+        clocks = <&clk EMAC0_GATE>, <&clk EPLL_DIV8>;
+        clock-names = "stmmaceth", "ptp_ref";
+
+        nuvoton,sys = <&sys 0>;
+        resets = <&sys MA35D1_RESET_GMAC0>;
+        reset-names = "stmmaceth";
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
index dd3c72e8363e..10cb5e555750 100644
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


