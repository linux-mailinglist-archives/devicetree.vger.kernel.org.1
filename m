Return-Path: <devicetree+bounces-262824-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCaCEC71g2kwwQMAu9opvQ
	(envelope-from <devicetree+bounces-262824-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 02:41:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E1CEDBB8
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 02:41:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D8CCB300B8D4
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 01:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 124FD2BDC02;
	Thu,  5 Feb 2026 01:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZayI3iYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8550299922
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 01:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770255617; cv=none; b=WABZ8s3nVopLlcK1k+FW/qQLY2nkSd+f65VXo6EaDdAUN+WulNAgKZuBBsawM0QbBJgA15gnFjWZ1I+h0g+IszQFsfwMTPbnKpy8iNxw+hnW2iz383BDJLnwyQ22LdnzPEh7Wmy8FT9AJ3PMtT2Z5YqRPdWbO6y5dhu8Jv0H2II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770255617; c=relaxed/simple;
	bh=y1lGC/teIR/FTGRVTgw+bosav+jMP2M9QnBcEXFTaME=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MqdnwnQINnMFO8F6+rQG5Xi+flDR6OspDjNgRdmtxxQHrTbmTXxeIO2FUOcOnBTPz1K/YinFs9LeqsecSD/uQud/KyJ2GlE1t3AlQT9u7V8W0SYnggzrghH8lkwIrcDQTtaTuYWp5PCAvbks3rlsrKRl4YGYfUoZIGUzDwlZHSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZayI3iYZ; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-3541fd9dacdso208099a91.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 17:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770255616; x=1770860416; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tJ1+S2Wah0B24B4nb8d1ZRSd0AUn0CCMY72mwuIFWBk=;
        b=ZayI3iYZaoVB3rSWGAZw/va3zcXPGGt/Nt/vQHlJV9LGL8NSaDhnar7cIbvUhhQWeb
         3yEhD45H/ddEDkNtG/4dsFbCH6q871scasPY1CWeFu5JbbiyyS7IFr04xbVqZpskLCFD
         TRlMO4gJMbbIAKeA1lMGSMYzwItF2QnxJl7htcQbiSrWvOLacPFJyzLMzZXlQW0tVzw5
         HxVYJIBR3WGIZVx5S5iD/UC4Rv0B9c5bqfXeUYOfDyVLZpovMKVFfZzFMskmJxCvUX0B
         xupiqYgFyxGojQ26/xI98YygQqjwSWKWWAM/XK30s/diEgjdxU5wr7XP/hYkNCfpZ4uS
         EMug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770255616; x=1770860416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tJ1+S2Wah0B24B4nb8d1ZRSd0AUn0CCMY72mwuIFWBk=;
        b=ABQJMfqEtPYxlrl6vUp6a/Mj/blD/BTqBBOPvedg4OnmagM0+94YLwuX1QJ8Jlf1ES
         jB+kaxMJFykdjcr1pQ9LFqFsmNUliXSIzhq+gY4XqXHWU+vEggx4QpgYoyle9IZjjq6G
         EMA4fTQjAtUQxlprXB+qRZYnKPzcIHtKkRla/4MCjjU/5ZyY6GDLbREuI4YZzpb7mYVL
         AECLJ8U1ByAg+XrBVrg7IAMoCbay1oSXhKVMu7wC/0CJw/DWCinFkDAH7CVTo+vHEG7o
         6yeywX4C11YznUHIE+ijRblVhc7+m/SBz+4D5oz5ZNzanLTpxLLKhDPzmK4LCmE/dL+n
         +YPA==
X-Forwarded-Encrypted: i=1; AJvYcCXbmXX832yjGIMBVdDI/orw0WVJK3ZDsLRo7R4Epqg21qlbkf/47riVebzlpJroNr4TBHQ/guqXui2I@vger.kernel.org
X-Gm-Message-State: AOJu0YydFF5G0AmHrNPcNgSMXvY+TFMjRfl4hKlFGN3pz2XXn93loJhB
	HrXFTNdG4fKg5C+uEpG1Bf4L+NS259YWJFPw7dCRbMgwZSQrBIxweM9S
X-Gm-Gg: AZuq6aLmyLqnjuFS3el0L9jHRK05/t3vADqgHEPBPnA89CxRejTpGiEd3S2pfTF3Ezo
	+ji8iYMfIG9/juExoA4nFsdQwCrTP+rWQmeYFJ1TMiZ4GP3/lQk3jHRxJ4j8IbqpdbK8wyzC/4o
	l0rvkWlqBVrvbrpSAhPRTzE1p0G64bFurRG1Mv3sLK8GXWeYh01fsDK5y7SvLOw/CwAGXF6HKAO
	AvqhbiXWaZolAmetK2b1aw2E0D03eavL55/omLEBiPzC5ZLVu31rAX1oRvhJYYQjDCZUtwygD8i
	2Xkk8c74XTUIPtJH6yEZcqEyT+hncDIwrmfigwxpQQWY1U+QwMYrbx6PjM7D4V+OqAOaYsounKL
	kHeiWlFfez1QmdS/hWnYiSFROSb6tBG/YBlbpVfc2EVX9+uTbEWiDTNYTbgg8JzTidU24bwyDfj
	fi4qGCe+j8tYjLWAhiZFcR10CzH8uJan1lJQrGc0tCzDTPioOoeQEGe9E8p3i6QXSlOcQH1nDh
X-Received: by 2002:a17:90b:51c1:b0:340:b501:7b83 with SMTP id 98e67ed59e1d1-3549beb61d0mr1038013a91.10.1770255616232;
        Wed, 04 Feb 2026 17:40:16 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3549c487a7bsm673571a91.16.2026.02.04.17.40.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 17:40:15 -0800 (PST)
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
Subject: [PATCH net-next v11 1/3] dt-bindings: net: nuvoton: Add schema for Nuvoton MA35 family GMAC
Date: Thu,  5 Feb 2026 09:40:03 +0800
Message-ID: <20260205014006.735408-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260205014006.735408-1-a0987203069@gmail.com>
References: <20260205014006.735408-1-a0987203069@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[foss.st.com,synopsys.com,nuvoton.com,st.com,lists.infradead.org,vger.kernel.org,lists.ozlabs.org,st-md-mailman.stormreply.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-262824-lists,devicetree=lfdr.de];
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
	DBL_PROHIBIT(0.00)[2.100.46.192:email,0.0.0.0:email];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,devicetree.org:url,nuvoton.com:email]
X-Rspamd-Queue-Id: 83E1CEDBB8
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


