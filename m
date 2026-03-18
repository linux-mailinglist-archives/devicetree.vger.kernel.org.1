Return-Path: <devicetree+bounces-277490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJQBFUsfu2lofQIAu9opvQ
	(envelope-from <devicetree+bounces-277490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 22:55:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4462C32B4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 22:55:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2A3FA3028532
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 21:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E494E377EC3;
	Wed, 18 Mar 2026 21:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ktX/rKGC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2BF35DA6F
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 21:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773870911; cv=none; b=P9jd7w+hgpszzL7gXb8Zo8nMZqTmt9bJ7h5kvQfL0nD3SMe21kcvjBSsHnnYw0VokqVdwx38JSSKlJAL4hOp+LfMnG4sGhRUG54zBDwEL5hZfL8PxTeKWYfdwA7pA3JfpvYBe+I2Uyxa/yXPbI7yKDVadvPDVFCnpjwBMy6zfVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773870911; c=relaxed/simple;
	bh=NcV7Y8rF5EsCyaO+fQzMv4yYadXViOfLjUAI/+Np8mI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OIqmPMQTOre0jXc3+0ShuBKPG3xWTPTRoBxo7twHywodS+8QCg892IW1t25xn1ZI+eDf1sf8SFLq6fitR2mjq7wTl1JGPsQK4EwxHOTkSzLfNa/zPbCclz99MuupGisSU6gfY8VHst8T5brp76tlvOb8IWchNHud6x2Om6G6N/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ktX/rKGC; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-48534237460so2734465e9.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773870909; x=1774475709; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IkgvDwmYQtcd0bE08ner2utHU4QPqUbSnWFPd8ItaAU=;
        b=ktX/rKGC76toMUOM9F2ZXFrFUDCCCsktdn9XfvPVmFi+yZHXtD5IGsyRwKNiaZ8TLY
         Fex+Ybn+1glIIC4xk/QLYt0vPeepxCQcIw/5AWJ5Ki9w8G3ko01vQF2MQX/np/sfFxRS
         iBhj6+6+cAURxMRO8TOsRDlz0E2hz4A86qwsYAJNi3wee9me1I/NPotqCo0tOo4ihORE
         RkRjE0usoDfQhhEoS5XhWLxhmqH8wZpSIBg5W+9eLkiyGHU6PJGKYaS4KE7f9yXRRhu/
         Wgt5PlJ4v9IUuGOHBHZ1veykKmbFoKiZ21n8Q2hk+5+iKy09ceMx4N/8LyWhf5sGXEkp
         Twog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773870909; x=1774475709;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IkgvDwmYQtcd0bE08ner2utHU4QPqUbSnWFPd8ItaAU=;
        b=dqe8HsfvnBCjl2JHJyAPycft9gd20Trfyy1Fx7NatcWAb5/NyReTIuH+y+80ZM2xy5
         jrnsI5ED2jZzeMCA7zdfiRRAOKL02ni0QpxI7QxGDKRMWK69w2F5vXqtlX7XtkKkVyAr
         SClbFAVPofvonN7dzJYphXkFCk9sxPkZKmdqqomD3gTbrVw8Eki60M2rbqeefvA0gZYY
         8u7Rnamv6Bp7i62/XsLnm6haA4qu7MspkJdSK2u89OousrWde5po10C4abgSIbJpZDx5
         uGiIbPQPagRXaywZs9Z1rsKxfmKN83fX+Q5i7BrZvxidfqreeMSt59m7tNQGBFrxZj4L
         i3hQ==
X-Forwarded-Encrypted: i=1; AJvYcCXb1nAtyqSjDivWUooLl0NUwaa6hgc57alDHqbSbtpsB6KQvvKRWmNKhQ0pyXQapdL8c85c8pxAfiAT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1WoxKFTiOs58AnBxuDx/FI+nT1Qy2u83jVT0ZRq65qMmQXVrp
	FJHchPVHQPHFKwXp7PH3IK5Hxn35k4dPSduyXHMMoZrAnlynzS61XOIz
X-Gm-Gg: ATEYQzxCBN2Q7ZgwDmk19AQoH8amuU4k3bLymSWCf8P108596CkDqQQhninPi2fjtXs
	+cmwa+tCeLHW41WSYaa21K3sQ1MGS1OmxE/QFBuofk+dVfbvTanCGlQ2DZYszrqzLcxSFKzKtGq
	bbzuSVG/DqownIuceMKqe2ROfMRYSD1xX0LPAq3P3pIVQCPVOJer5ZB/YQUY/mnVD8WyyjcAEtJ
	Mp2qGOW6kowRk8xiCxoe1eXOFU7SVQFSI7emmEBsXW2TszievOXYstcrw37pOlcmGFhU4Y3lylD
	8PcGpK8qbenbw2Bb/89pwuqvmzRVNCwTnv8xhxe79wHfMsHpvD1CsC4u+uPoxNyU4zGxNNf1/eI
	TQbBKtKWo4+HwjlfsloFviLBwg3hKAAd5XRgD9U82yUoqSM116CX+UI5sNPZWArKk4iz4AWfSk2
	1Ab1Ir73lTvcB7Z5mZQYQWRq91tyEHmE5Evw==
X-Received: by 2002:a05:600c:4fc4:b0:485:3b00:f92e with SMTP id 5b1f17b1804b1-486f441bc46mr80203095e9.2.1773870908462;
        Wed, 18 Mar 2026 14:55:08 -0700 (PDT)
Received: from nas.local ([2001:912:1ac0:1e10:c662:37ff:fe09:94df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8c292e2sm19373735e9.2.2026.03.18.14.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 14:55:08 -0700 (PDT)
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
Subject: [PATCH net-next v9 3/4] dt-bindings: net: ethernet-phy: add property enet-phy-pair-polarity
Date: Wed, 18 Mar 2026 22:55:00 +0100
Message-ID: <20260318215502.106528-4-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260318215502.106528-1-dam.dejean@gmail.com>
References: <20260318215502.106528-1-dam.dejean@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277490-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.802];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EE4462C32B4
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


