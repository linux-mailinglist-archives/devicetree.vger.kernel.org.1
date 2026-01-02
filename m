Return-Path: <devicetree+bounces-251117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F38CEEE9F
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 16:53:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F14A730012CD
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 15:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5C24298987;
	Fri,  2 Jan 2026 15:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="wsnC3jaC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08E3293C4E
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 15:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767369227; cv=none; b=M2snzyKgCQOd7a7GDRrFRTUBelmY/yHH8AH77oNewP07CKMg8YmqBVVlCs/1SzhaApWQVAHFNhp4FqC3D7HlTu/ASG0dxz4U4XZ7UoCYTnxiHgLpi8zqvssl8m+rSkie+IMJXmiwB65O8comDzcLEot8ZGlxk6hXASkGm3W7Ea4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767369227; c=relaxed/simple;
	bh=9EDlYW/0LZfKdgYmF6M0FwqP3StJLTF62r4cHGVRrPk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=stUh0DNfRQcitN7IHP5VhPxL5uzNJ8gUgxxhEhhJzwT8DAvg/NJcB+oquabF54xeDiXjR398zktmBN991gMEz/U+mAVoPA4b7DMB8mEF9z0l7UCd66NC2MiMJlHl+VA9Zz0ZbRm7RbyPPnlscXB+oNFEojSg0yCs24pMjIIFMTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=wsnC3jaC; arc=none smtp.client-ip=212.77.101.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 27487 invoked from network); 2 Jan 2026 16:53:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1767369222; bh=pRXKKDZvWwJE0OYBlGbJ1CNY/8nw7dOoKs0YtDMUS1E=;
          h=From:To:Cc:Subject;
          b=wsnC3jaCLgQp/yVY5DchfJcu6eLbbhhuaB0l20xYlHBuuYH61frnWYuQZQV5ElqZq
           FOAVPof4sWOtNrK/oUsgfGusJb6XX1EBj4HQ4qhSevIGN9WmPrHTP+bOc6s9RWsFw4
           PBDuGRGhrusKNkfawrjlLbCJZ0/pGyvBMXIrYO01xXVjhoCHCpo1GfIjc4AKTh+esn
           jWIo10vHmF0hyOcZiKWUnwuDy2BRevOs4T6RVVcpNoAVXGOsILqKV8dWQ9FfAHCOxF
           aSdJj00AN5qhaNkLyem0LcgmAG6siuSH2x+IjDT2jKU74ViI25PDA1QEIQMAE67Yww
           qPlBC9AHLjwCg==
Received: from 83.5.157.18.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.5.157.18])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <benjamin.larsson@genexis.eu>; 2 Jan 2026 16:53:42 +0100
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: benjamin.larsson@genexis.eu,
	chester.a.unal@arinc9.com,
	davem@davemloft.net,
	angelogioacchino.delregno@collabora.com,
	ansuelsmth@gmail.com,
	conor+dt@kernel.org,
	herbert@gondor.apana.org.au,
	krzk+dt@kernel.org,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	sergio.paracuellos@gmail.com,
	tsbogend@alpha.franken.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-mips@vger.kernel.org
Cc: Aleksander Jan Bajkowski <olek2@wp.pl>
Subject: [PATCH v3 1/3] dt-bindings: crypto: eip93: add clock gate and reset line
Date: Fri,  2 Jan 2026 16:47:33 +0100
Message-ID: <20260102155341.3682013-1-olek2@wp.pl>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-DKIM-Status: good (id: wp.pl)                                                      
X-WP-MailID: df5d0ea41a222bf13e7a762f03b71f91
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000007 [8RRh]                               

Add the clock gate and reset line, both of which are available
on the Airoha AN7581.

Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
---
v3:
- introduce patch
---
 .../crypto/inside-secure,safexcel-eip93.yaml       | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
index 997bf9717f9e..c6c99c08dc68 100644
--- a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
+++ b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
@@ -48,20 +48,34 @@ properties:
   interrupts:
     maxItems: 1
 
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
 required:
   - compatible
   - reg
   - interrupts
+  - clocks
+  - resets
 
 additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/en7523-clk.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/airoha,en7581-reset.h>
 
     crypto@1e004000 {
       compatible = "airoha,en7581-eip93", "inside-secure,safexcel-eip93ies";
       reg = <0x1fb70000 0x1000>;
 
+      clocks = <&scuclk EN7523_CLK_CRYPTO>;
+
       interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+
+      resets = <&scuclk EN7581_CRYPTO_RST>;
     };
-- 
2.47.3


