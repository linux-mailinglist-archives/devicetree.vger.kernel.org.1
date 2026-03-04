Return-Path: <devicetree+bounces-270848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCAqGJuqp2lejAAAu9opvQ
	(envelope-from <devicetree+bounces-270848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:44:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD3D1FA7D0
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB81930A6442
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 03:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57D1D377034;
	Wed,  4 Mar 2026 03:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dscHzZoS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C215375F81
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 03:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772595852; cv=none; b=a8bkh3Lc0+89oTJfVOdK14/VQl8SisQH23oONOmNF4by18o9Z3aPXPPeKNbqDkCm2NPw/yz+3iyKXwW406ukOzxrMRcwcGpjXHDX7u1yj0uO9H+Ko8ZLrxoIZwgPPIO0THvIvCsffNxaZY1raGTpfPYhrAwuvnroJdg/X3m5TP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772595852; c=relaxed/simple;
	bh=mdKNNesYCOjxGXKeUcr1BLhG7niNe+8/cXS+dPrtOPI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KSulEtfiHNhTYfjqbYg7yNyQsr0UZ+IFnwnNQp/oU46cly0TbiLJ87+vDbAg3pkDjH9+4J4EvCt/ZQs/pcJ2HvPv1uyMi2IFSaMn6knPfPCAXCy10OJXIgBk9M+1tDt5LRbw+SEBoBa/lLSBGMSAHiA0caPDBF7djQcGvi+gFt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dscHzZoS; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-506aa68065eso59191291cf.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 19:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772595850; x=1773200650; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MqPUSx7NN053MAPTpYFUkReAMvsw/zhPAKa/7nlb7s8=;
        b=dscHzZoSoNMkb3wAhJsV6mQt4Tr1GhrnTtKY5tQh54lBl5rD4cXYOjq8idjuZxSD+2
         lHUEKKhori/LHdBURONFRhbPciFJ+d/GVamv3w2iTFFL9zGe3vS2zY+RHCMj4gNzmsBY
         eKbDwBJ7gm27h+sFqHi+el6d1gQMAT6MgacHWutCjsgjQz17d4sCn6lNB4AhbODGA+Ra
         +/Xf5FiL0PPxOA9leOTJWdvZFziEj5y9IsR+mSkGQ8c+ds2yRTZFQNrGer6VfjkXLWrJ
         hocpMfm9zGMkH9stbDc7eoxb5OJASEFHoJEjn6wBwBT1VqF7WV/wdJMx/Va754w/vuCv
         sa1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772595850; x=1773200650;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MqPUSx7NN053MAPTpYFUkReAMvsw/zhPAKa/7nlb7s8=;
        b=Np2kEuzCMj2zzeM110ZGZfOe1LXlhOml34tKCEdn15xk74fvcTuWmxzqMGWmdeMas+
         YjeZuLfmWxpvj+6JLMgllwYrtoXDrihBjjPBTDYM1vR+niSX2e8j2LyJGjb1qBGETyb9
         knYccWf2up0do1br80hono4GgQ1kcuFj24IqNNFsc4bkbH4m+9Qk7mMFVdhxJ9xwh3X8
         stnZNzs858d0CMKk8z5kNrk714qr4BHtfEAFle/XsDCagzVNgxx+As5lqV8wHrqzNevK
         w2IWZRHLZm+2QWs7r6pVsRoUPekkdBh0o21QOASI0LWAYfdAuF+yfwn67W7Eum6O3MDt
         H1Aw==
X-Gm-Message-State: AOJu0Yw1T7RjxixI2sq5zeh0SrNsF6medfv4ElFtsT5Dj0LwKfhZRW+s
	wfOb2FFpET+iz7ykGOJkWY0FFqaOWN3FP0mHKRanXXWnJzhnaBIEqUfo
X-Gm-Gg: ATEYQzx1fe3ZkMM/HgzaxbfCzvVWIK7g75j+Z84RE2bolc7LGfuK7GyzfuMYKn+ELcy
	KG19255L4T98mmFIb8atDN/YCeFK4y1waXUjbDwntoo1D344QDeb8GBMpYo7jk7SwZtEXMa+VLm
	tNT41qPg2QE/4nnuzoc4ZU7hqWO9CgGttmTipxkxG0OwWiU6eLJTakn2tWPd7M5Wc/ZmUNbkqJx
	I9bEdsZdibDkmRFarvy4AS6ketBIQnFxdDzvi6Uc/z2tddMS3ioVQmGwidgSqnM1wYAL6bPFsaQ
	nYE9na9+b9ytbJ7l1YUOIQ2RP8hqG+XSZlsNirc8Jf7np2xDQ0DssLEYMkRUvGZqPJG4JnwdXR7
	5lt4Y4mEwIH0wMd9oD13XxyMh9aac/EZ2eFZ5gjDeL2doYdMzP+gsbKB3eaLE/Rb7Fhbrt1vRNr
	I7e+O9+rPoJKBFs8w9DNPO+nKakKI=
X-Received: by 2002:a05:622a:1828:b0:506:9b3a:2199 with SMTP id d75a77b69052e-508db4352a5mr7908731cf.67.1772595849959;
        Tue, 03 Mar 2026 19:44:09 -0800 (PST)
Received: from [172.17.0.2] ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899e608cfc6sm88603286d6.14.2026.03.03.19.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 19:44:09 -0800 (PST)
From: Yuanshen Cao <alex.caoys@gmail.com>
Date: Wed, 04 Mar 2026 03:43:44 +0000
Subject: [PATCH 1/2] dt-bindings: power: Add Support for Allwinner A733
 PCK600 Power Domain Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-b4-pck600-a733-v1-1-2f54efdb8cc2@gmail.com>
References: <20260304-b4-pck600-a733-v1-0-2f54efdb8cc2@gmail.com>
In-Reply-To: <20260304-b4-pck600-a733-v1-0-2f54efdb8cc2@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 0DD3D1FA7D0
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
	TAGGED_FROM(0.00)[bounces-270848-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The A733 PCK600, similar to A523 PCK600, is likely a customized version
of ARM PCK-600 power controller. They share the same BSP drivers in the
package provided by Radxa, with the only difference being the lack of
resets.

Therefore, document A733 compatible and make resets required only for
the other models, as well as prepare the PD definitions for future
device trees.

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
 .../bindings/power/allwinner,sun20i-d1-ppu.yaml        | 17 ++++++++++++++++-
 .../dt-bindings/power/allwinner,sun60i-a733-pck-600.h  | 18 ++++++++++++++++++
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/allwinner,sun20i-d1-ppu.yaml b/Documentation/devicetree/bindings/power/allwinner,sun20i-d1-ppu.yaml
index a28e75a9cb6a..b97361ce2a00 100644
--- a/Documentation/devicetree/bindings/power/allwinner,sun20i-d1-ppu.yaml
+++ b/Documentation/devicetree/bindings/power/allwinner,sun20i-d1-ppu.yaml
@@ -20,6 +20,7 @@ properties:
       - allwinner,sun20i-d1-ppu
       - allwinner,sun55i-a523-pck-600
       - allwinner,sun55i-a523-ppu
+      - allwinner,sun60i-a733-pck-600
 
   reg:
     maxItems: 1
@@ -38,9 +39,23 @@ required:
   - compatible
   - reg
   - clocks
-  - resets
   - '#power-domain-cells'
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun8i-v853-ppu
+              - allwinner,sun20i-d1-ppu
+              - allwinner,sun55i-a523-pck-600
+              - allwinner,sun55i-a523-ppu
+
+    then:
+      required:
+        - resets
+
 additionalProperties: false
 
 examples:
diff --git a/include/dt-bindings/power/allwinner,sun60i-a733-pck-600.h b/include/dt-bindings/power/allwinner,sun60i-a733-pck-600.h
new file mode 100644
index 000000000000..cf476a005b55
--- /dev/null
+++ b/include/dt-bindings/power/allwinner,sun60i-a733-pck-600.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef _DT_BINDINGS_POWER_SUN60I_A733_PCK600_H_
+#define _DT_BINDINGS_POWER_SUN60I_A733_PCK600_H_
+
+#define PD_VI			0
+#define PD_DE_SYS		1
+#define PD_VE_DEC		2
+#define PD_VE_ENC		3
+#define PD_NPU			4
+#define PD_GPU_TOP		5
+#define PD_GPU_CORE		6
+#define PD_PCIE			7
+#define PD_USB2			8
+#define PD_VO			9
+#define PD_VO1			10
+
+#endif /* _DT_BINDINGS_POWER_SUN60I_A733_PCK600_H_ */

-- 
2.53.0


