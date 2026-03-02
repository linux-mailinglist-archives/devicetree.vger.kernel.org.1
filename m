Return-Path: <devicetree+bounces-270246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADhmJekXpmkCKQAAu9opvQ
	(envelope-from <devicetree+bounces-270246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 00:06:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1069E1E648A
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 00:06:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1AAD6305847C
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 23:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E89331715D;
	Mon,  2 Mar 2026 23:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="h7+VrX8J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83D02D3EE5
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 23:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772492474; cv=none; b=DxG3xNkTCf0tfhvwP8dCm5n+ZKhDgpazxpqcJuAsMXGUvQpwUiqDwyg2Vgwtr6gRMYRvtHHcVrLS2viSSuTOyekoPoaImLfHFvOCWobgT5LvkAlU9gZHs7grWN1ouB+WRe5nQkwOt8zxX6xdvJEx6p6id0tpG6JrPCGvZ+XLeco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772492474; c=relaxed/simple;
	bh=AdFjy5dAsuSKmw2qXAWig0EInTGotX0ZMxBmhs88nLg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mZzpOX03A9DQhzwFRkC9c1U3X1QKNyptPWZOnNz9VQXnMajqyEYZj3PiNktCNXgpRjv0pOf4OSW+ovg0sNF4rZ7PTgo/L4RuRpIRwNyTfuz7eFnB4P1n1sAGDWHgh+l2J4ZMD9w1NDtqIdX+FKIzwD/Qi+D2LcmSUVhtTzNXNAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=h7+VrX8J; arc=none smtp.client-ip=212.77.101.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 21305 invoked from network); 3 Mar 2026 00:01:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1772492462; bh=7+cweu98TOcNO2fC2HKsiZqjaNg+7ppVWQ+2CpDVZbg=;
          h=From:To:Cc:Subject;
          b=h7+VrX8JF7VAf1BQwDmjpfLsuhB07MJnKuPBo+NocsvngfY51YBcYWwFXDEBNbohA
           xrTqSvXfz5Vf/Y8tyXi6wDF6oBtsjY5M4mH9mydRviOT1wKvR0X2vqWGtCl3eAXEgF
           hUeOgVQhxxzLTh9lHd9YAP5AqyUVEYdCLfc2WpBqAk0r050TYPFlikhh+9A8XEoTXF
           7mrlFG4VTCHkOxNoOLc70mT+hCqqhvP2tjVaMVNatTHpTlU8v0/5Azkgr6dsk4QB93
           PjCk5kX30g11wptGqAS7q6MGSnwlPpeWO+fNCfhPk6+GqYzhJuVoNvh4n3x+v6eu6u
           PSVaxrzGj5GxQ==
Received: from 83.24.116.171.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.24.116.171])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with TLS_AES_256_GCM_SHA384 encrypted SMTP
          for <herbert@gondor.apana.org.au>; 3 Mar 2026 00:01:02 +0100
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: herbert@gondor.apana.org.au,
	davem@davemloft.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	atenart@kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Aleksander Jan Bajkowski <olek2@wp.pl>
Subject: [PATCH v2 1/2] dt-bindings: crypto: inside-secure,safexcel: add compatible for MT7981
Date: Tue,  3 Mar 2026 00:00:38 +0100
Message-ID: <20260302230100.70240-1-olek2@wp.pl>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-DKIM-Status: good (id: wp.pl)                                                      
X-WP-MailID: d08f458a8f4368eeb35a8e26834207f2
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000009 [kFNB]                               
X-Rspamd-Queue-Id: 1069E1E648A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[wp.pl,none];
	R_DKIM_ALLOW(-0.20)[wp.pl:s=20241105];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[wp.pl];
	TAGGED_FROM(0.00)[bounces-270246-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[wp.pl];
	FROM_NEQ_ENVFROM(0.00)[olek2@wp.pl,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DKIM_TRACE(0.00)[wp.pl:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

The MT7981 as well as the MT7986 have a built-in EIP-97 crypto accelerator.
This commit adds a compatible string for MT7981.

Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
---
v2:
- just add compatible strings
---
 .../devicetree/bindings/crypto/inside-secure,safexcel.yaml  | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel.yaml b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel.yaml
index 3dc6c5f89d32..6c797b7ce603 100644
--- a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel.yaml
+++ b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel.yaml
@@ -18,6 +18,7 @@ properties:
       - items:
           - enum:
               - marvell,armada-3700-crypto
+              - mediatek,mt7981-crypto
               - mediatek,mt7986-crypto
           - const: inside-secure,safexcel-eip97ies
       - const: inside-secure,safexcel-eip197b
@@ -80,7 +81,10 @@ allOf:
         compatible:
           not:
             contains:
-              const: mediatek,mt7986-crypto
+              oneOf:
+                - enum:
+                    - mediatek,mt7981-crypto
+                    - mediatek,mt7986-crypto
     then:
       properties:
         interrupts:
-- 
2.47.3


