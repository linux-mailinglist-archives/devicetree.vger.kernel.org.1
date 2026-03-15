Return-Path: <devicetree+bounces-275844-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCWvFeMat2lGMgEAu9opvQ
	(envelope-from <devicetree+bounces-275844-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 21:47:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B682B29270B
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 21:47:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EA36308CBD3
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 20:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F46837BE8B;
	Sun, 15 Mar 2026 20:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iDoarNSG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964B637BE6A
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 20:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773607516; cv=none; b=SawWBWGoOkMKBTblEcbROuc7Ikg94cqnKWl0P4gBQATmYgPPQ+2XjDCZ7ZcLvHyopnEQBlBho4YEigJNtBJiXRcFSeGwP50RoMxyS+5lslfuwxuPNdMolgcKSlpH0vQ2cSRFZUR9EpoWmT++2lViB66aHcp2oV3lAKTEbIV9whU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773607516; c=relaxed/simple;
	bh=NcV7Y8rF5EsCyaO+fQzMv4yYadXViOfLjUAI/+Np8mI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lHWIf4J8q+8qRiOt0K38l2Qr9NKS8PYdo3F61q74TjeIWg3uBqTOqsaeYx0Rf+foMeGGpe/KJ8qU2yiukAaIoYHfXETNLyVl1bRq/ApzuXKPk36fhceyN6DAxMCMHk1BW2VuOmfI+RyLCjJtOhUbBKlic1CQFW7yeaBHIcQljsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iDoarNSG; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48540d21f7dso46055965e9.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 13:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773607513; x=1774212313; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IkgvDwmYQtcd0bE08ner2utHU4QPqUbSnWFPd8ItaAU=;
        b=iDoarNSGXpSFgEzhBGusuWrzrWIqxrSnhO+7rjuY/eQjRiNZ8ZS2GIz5ty/GWC06A3
         4DbQS/NK1dte3KRptqlH2839P9J83HGQRGfNfMXI2E5nKawKGSuxfGdDYnBQJ+1fZulS
         NB3pXBIew9j9otzv/+6vk9POGwpQJPt/RQkJs9zzUOZFv8HBYrPHrgzSQJneSrhY4fQO
         DiSn3Dnc3PeTLTg9FZSQAZoT2uyKLcdkVxiM8ntqQ2AfK7mTf6q4iEVDn1jCJSNiDEJR
         h4nnmQr8A/IE/T1OhX1yDP+VSgl37mntTdu9IzSd5nahVtjZ2ecHFT18t08VkjIkFBt+
         GomQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773607513; x=1774212313;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IkgvDwmYQtcd0bE08ner2utHU4QPqUbSnWFPd8ItaAU=;
        b=j2PHENtI0QItJhxUw6e/jxpzBP+8V0mbRX/Z4XeyiHKv5zAmQN7b1vcqWfVO0Edmil
         Exxm8MEVLf197ENSyrZUEaK3DT0VNGbUKx/XCPZ50Lz5P1NJRNcD87Kl4M6RLj1yMJVV
         l/9kb8Zxg6mKhyLQ6hcfctnV2wsZFn4PRAQ2lhFUr3jrKw8vJD3V5KeF8oVxQ5URO3AJ
         KX5lGnslvwzYkCjZ5619VuTOLGIQnEk98vFPxT+RzwolkRuLzSf49Eqry2eBBD6LwuqP
         jENX7gnBUTLiSxI9lPe0rEBON54+D9G5eaYrGrO6u4re3zCCOyxB6GKftMpBWbSMYUBt
         IsYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbIT0P3P5QCB/73PzOzv+HwhD/rd1aAq4vvETixoEHuXsdZwMvZK7u4kNMdM1Ag4GTM6G9DfGsp71E@vger.kernel.org
X-Gm-Message-State: AOJu0YyTo3aRaQmauQwN9beHVRDR+78DbXLoyP3l7pTqIAN9w+m9vaCa
	WhBDvkwIs4gpeaeqWtCFDj0TlbGHrO7jc0AoTWNFQ0lWMugZ/pT4A55v
X-Gm-Gg: ATEYQzxg3OOauPJKxfSSlHIpuD3JIurygCJr4CA/5uOl7sKmwFMbO6/KO/emF2hEJVP
	fFFsjFHD16Pf1K1BiqsMfHEUaYEef+O18I2xZNUgCOVlroHgXTjoxCjtU/Hf1iYU1AImfXUFuQB
	7eYF0Pv5NhqaYAI05+1P5+xXPMlH7eQ5yYERGjvBe0Kc3uEkPijCxUbRSLPY33/Ql73zEZ+kIsT
	bW+pQSO1gg/pzMFySb+PqGD1lT4jSpWzY3fPXjXHaSNUL1HeKdr8Dih3jkYf4wzvYZ98idw57ut
	N1le8gn0r3QYZaEi94GUo3SRCo/OP0spAAlYb9UgGrJFJATIpErS/u7dJmxVTkN4n/BVTQhhiPG
	lGvw24xEJX2dbKqs0Aa6anmetnklO1XcIX5zjsRB7nZ8Zkh/mqoT/0S6ATHYcP9qyoharTLu282
	aVo00L8NxMKpbXEg1wS2h5BqM=
X-Received: by 2002:a05:600c:8a09:10b0:483:badb:618e with SMTP id 5b1f17b1804b1-485566d6e33mr124698135e9.8.1773607512923;
        Sun, 15 Mar 2026 13:45:12 -0700 (PDT)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485563f8c23sm132043885e9.1.2026.03.15.13.45.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 13:45:12 -0700 (PDT)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kuba@kernel.org,
	maxime.chevallier@bootlin.com,
	pabeni@redhat.com
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH net-next v8 3/4] dt-bindings: net: ethernet-phy: add property enet-phy-pair-polarity
Date: Sun, 15 Mar 2026 21:44:53 +0100
Message-ID: <20260315204454.124544-4-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260315204454.124544-1-dam.dejean@gmail.com>
References: <20260315204454.124544-1-dam.dejean@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275844-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B682B29270B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the property enet-phy-pair-polarity to describe the polarity of the
PHY pairs. To ease PCB designs some manufacturers allow to wire the
pairs with a reverse polarity and provide a way to configure it.

The property 'enet-phy-pair-polarity' sets the polarity of each pair.
Bit 0 to 3 configure the polarity or pairs A to D, if set to 1 the
polarity is reversed for this pair.

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/net/ethernet-phy.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index 4a27547f7d7a..21a1a63506f0 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -132,6 +132,14 @@ properties:
     description:
       For normal (0) or reverse (1) order of the pairs (ABCD -> DCBA).
 
+  enet-phy-pair-polarity:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    maximum: 0xf
+    description:
+      A bitmap to describe pair polarity swap. Bit 0 to swap polarity of pair A,
+      bit 1 to swap polarity of pair B, bit 2 to swap polarity of pair C and bit
+      3 to swap polarity of pair D.
+
   eee-broken-100tx:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
-- 
2.47.3


