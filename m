Return-Path: <devicetree+bounces-322637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MXXhGOkTTmqsCgIAu9opvQ
	(envelope-from <devicetree+bounces-322637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 11:10:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9957237BE
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 11:10:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=o84jJ8Hb;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322637-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-322637-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 682F9307E69D
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 09:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9342E40315B;
	Wed,  8 Jul 2026 09:05:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2208386C15
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 09:05:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783501543; cv=none; b=HkW6nQ+FlWlLxJzmVIbRgALCHyC5InRxt4ej+BKwtsmuI38OHq8WDvCNVnETQ+13+8cBhpWj4rvBurvKEBWDwcaGxItPQh7206HQWlgq850AV4wFEfxc32Y4ff6z3w2KcXdEk3UXwKvDYaoAOtp2Fav3jmvLeMGcS2aIJAM1a8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783501543; c=relaxed/simple;
	bh=HRF4TCMd5D/qehMfoSUGnvyLqK7gjKxURYzWbC6hxiQ=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=Ajo9ovhy1/vfRHKX5ReFO7rCS9Eue9t7v1TmSrTb2NYDvMgTES9CtTBOLGbhdWGUEzh31Xtbw5F/imJTQ5K0s6+avMPJPDxSiHVvbt5l4yOyewULACSt97FNGC89GMEjUOGC3IkWgqo7xz2b6KkjL5PSDEFlK21bfJ2gsZ0ZzWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=o84jJ8Hb; arc=none smtp.client-ip=209.85.221.47
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-470174001a0so271263f8f.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 02:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783501539; x=1784106339; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=hf32V+63XwuX6n+9vP5ONNThKfHkDDFnh3w93Wj8prE=;
        b=o84jJ8Hb/NkOtzlah+yfJgJG5VIIE9wCB47jmkiknI3qcbvOtfPIRQ4AuQBmBdIycQ
         8KMclki/P/8QSNKUwVDL0X6dioa0tX1EIH+JB7TnCSirRbb4LYR8cfU6iBIfZrCvGIFo
         P4004bNkZAWGgWWiYzziTdonNH0PgevpPLyBhDiiIaYh+01vB/gS0aD6C/ewzA8xzCSW
         AKb1Ku0kQb6+3znrOyjZfoKvEOzA95uy4c94/WiZ07r4+osvEPQcjJ5a6aeaEg03+Qsj
         h0V5FS5wZaidnv9ygdlyG6W3cB+34Nq21EOS4yWxXq+q+pmIbROKLUaZ61qIdIxjc8ar
         oTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783501539; x=1784106339;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=hf32V+63XwuX6n+9vP5ONNThKfHkDDFnh3w93Wj8prE=;
        b=LPQfY5xQCtZWW9dMmU4Uq2w+5NAMfaQdAuYAHzDLUHnyLdSRPK0XRIMlxR/bq4/144
         z/yMJ9xQpqoxAsgtlH+ymqQi662v4HLqfS7Js0HtACSHX2DWxa3m8oX0mN5dH+QhznDI
         6LgUGGKIJC5adlSzl4j/Sf0bHbUd68uvvXdwviZsgnr6ePutnDIoQpeefd/tSjk/us6F
         9SFjTStNRUZy/9j9s2C8DbooLZoBIrvcLImnIUSDp9qoUC/VMpfDb+vbCOlb05EG6TnB
         WbLlc4ag+I0RagCI3ZN//UD2aO3gcRZYeCMlPbgGMWsv/K6FJvBgHOCMAQcbwEThFFG4
         oaBA==
X-Forwarded-Encrypted: i=1; AHgh+RrBo2BZV5K+rch7a39l1AELDQKK25xYBEPaLHCIZu3obwAUbhlYSHQ7o+xQOqV2LkR08rN/6zr6/yOv@vger.kernel.org
X-Gm-Message-State: AOJu0YwIOc3pJl3wguAhAsm4MkEZnbzcpWm7sWJN0D0xaTtXozkrdnGc
	qRIhMHoICoPH6WYPCIwttRCgy/vD1FK4wm1sju2SDu2yP4gJL8K/WARP
X-Gm-Gg: AfdE7cnyWDJAbMcay6dWWO5+nctDG4a7gELO0xljrClkTIvxs5G24nOLWUS/wSt4H9m
	iUbfGICBuIDKb4kkbjbeyo5gXWyMGe5ZK9anTJVrjVNVNzU/0pSkCKyObgZvEl9zAKCFalEbcES
	NGaC9MBb2zWN66g4ASyx/FVKqHgwLVPrUbD1hswNSaDnXNtCQMn27ggRQ2vNnxueYKXLEQfgynk
	ufh+eZuEbAjdby/oFitpcbj7WsVKvXAOjMv17kBy9Eyj2Vo3A9DsJdOo6i+8iNtG96ZrCmc1gBr
	Ay0Dn90CsyQ35o5IOi5h7u6LfzSOLcfow+RaqjCDwSuQXxg2/b8S74VujRwFiB4Yshfw3/9l06l
	1ul0WaziJMU0JJlwQVWmmXgRyeI/DebW63hjdgNHxchBaEdJpornbmEpJr7SJ7/++Qs7n702XpS
	PObGuDcQbFHJY5O+7lnHHUdQBgn3nwo+Kyt3tenDdy+1ZUKZDudISbNMW3wo51U23dlBskjnUzS
	mRYWGnj
X-Received: by 2002:a5d:5f82:0:b0:475:f0f0:9ec6 with SMTP id ffacd0b85a97d-47df080ff21mr1502469f8f.49.1783501538590;
        Wed, 08 Jul 2026 02:05:38 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-95-248-227-210.retail.telecomitalia.it. [95.248.227.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-47a9de1e785sm40674208f8f.8.2026.07.08.02.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 02:05:38 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: PCI: mediatek: Add support for optional perstout reset
Date: Wed,  8 Jul 2026 11:05:28 +0200
Message-ID: <20260708090533.19734-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322637-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:ryder.lee@mediatek.com,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:ansuelsmth@gmail.com,m:linux-pci@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[mediatek.com,google.com,kernel.org,pengutronix.de,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE9957237BE

Airoha AN7583 have a dedicated reset for PCIe PERSTOUT. Add optional
support for it in schema.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../devicetree/bindings/pci/mediatek-pcie.yaml       | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
index c009a7a52bc6..cc5400c26185 100644
--- a/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
@@ -43,10 +43,12 @@ properties:
       - enum: [ pipe_ck0, pipe_ck1 ]
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   reset-names:
-    const: pcie-rst1
+    minItems: 1
+    maxItems: 2
 
   interrupts:
     maxItems: 1
@@ -127,6 +129,12 @@ allOf:
         phy-names:
           const: pcie-phy1
 
+        resets-names:
+          minItems: 1
+          items:
+            - const: pcie-rst1
+            - const: pcie-perstout1
+
         power-domain: false
 
       required:
-- 
2.53.0


