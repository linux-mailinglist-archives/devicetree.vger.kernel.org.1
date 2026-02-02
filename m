Return-Path: <devicetree+bounces-261947-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCLZDXwDgWnZDgMAu9opvQ
	(envelope-from <devicetree+bounces-261947-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:05:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4F4D0EA0
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:05:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5C46E3012513
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 20:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489803563D4;
	Mon,  2 Feb 2026 20:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jnpAhzJG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965C430DD21
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 20:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770062668; cv=none; b=jhUa9p5Zdwt9QYn1T1p2H7Y0LtsdMHKUKjULFjxdD0g3PlmmgFIwfhksBx7YueN3RLufpZEapgk4pF4udbSP5m4JXUIzUZQiqV11uVw1R0hlGMVxQP9F/VCkCNdkEvvXuL3Fb6d4B0nkfdbVXeswm8HTNlqDnVtD/NQlS21KU4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770062668; c=relaxed/simple;
	bh=Se0P0dL3b3W51U6MVaZg7UsTm1e1L6pVdlM/Sha3Lt8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d5Xokqc6iwopY39z5Pu1qWQ0mgaTx6vI2EbycmWtHffAOxLq939vK3W1kak9RsGRhPiXw3S0A32X7JgpycZEsjA+e17yNt+kFU2QB/iwcyZ+Xus4Nfc8ZLcRU46VWzm6QmP/pY8zut1szyO00t0gtowU5fIQEnFUsIkaoqDNw8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jnpAhzJG; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4806d23e9f1so54219415e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 12:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770062665; x=1770667465; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q3zK/4SLK4ukG/iXcIDXnPvimWgfkq6O3gX4ZLAuWM8=;
        b=jnpAhzJGKxQqNx1ayePpHahbsCs3MBzvjIldlUQCgMJeqQuaAFepuSssj0v7CqFzPg
         JljOnDcOzvZsKfryMKd/oPLbEaJd6rkXFFpfAfPmhOhdM0rndv3rCRajsdOzt/59TEH/
         aq1Ls2xFAU7LTnGtL+Y+45d+2OEVhqhBA1dYubcUyTmtdjQ7TXCanRZFAYNe+AWbkS2J
         hq4w4SGOHEmCYPDfR//sV7J83VzGhUZloUMRJQaM0WEOYja8JAWKAy7WqwitFqj4cdlF
         DH4EcKy9nNJATBj+2ZyIzLmGdSysTu78WwHhF/f/eHAn1+EXs/RqHAyL6ZlDfJO9pTMv
         7Tzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770062665; x=1770667465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q3zK/4SLK4ukG/iXcIDXnPvimWgfkq6O3gX4ZLAuWM8=;
        b=dgTMmpLshm9/PO5WB16ClYcriET0R7suh1sOhZ2lQouSRGG1q6IHQ+icyNI/TL3t7F
         +6/X/cgjMeobdVqws0Gn1csEBhzWYPetkfy2yBl5wyMDHsdmuOWJ1WsUNP3zOcDBAECF
         Z8Q+cTPbxIyjKNccKps973Px0HlwVAa+RplL1H7PnNG4EUbg/zW6uySztV+80KvVUDDo
         niAsFuwKN7axK5XfaIWrB4FmKPTl0hiPcxHO7X80itNxABJ/fkjdeYNnAMlqt3pBJh2F
         AnqkOIgU7W/TiV/3OV9i2tzKWVZluiTZCubwqSgnA/1nw53bG0Qj+kBf8AyldyhNz5pV
         cyng==
X-Forwarded-Encrypted: i=1; AJvYcCWVLPKcyJEO/t/dhjTqRa1I8UI+kAzuptqvPJvjYrvUeBm+1E69tm/YLdYdVxoEr8WcNwFD0Mf0YXL7@vger.kernel.org
X-Gm-Message-State: AOJu0YwI7pW5pOt0AAARIutMvnC3/+M7qK4IIkTDkX9AmvDbHGXa6ekv
	VNq1WEc+Waq1WolO2HnohBX2PMXabUcgri/Xrcf1ZHcJhzRZtIyUl8Rj
X-Gm-Gg: AZuq6aKyZctJta9nWIXBqpeSm2OIB8SWKnmWIWswAteQFfsq26Y0/t8faDQLIj0QmcE
	Q7mU9PPmMLJxMyvQkdrtgu8DyfHJvJ6Ko5QFPvfCq/IR4BamWTwRC0oo0dgNn0S9tOa/tI+jZXy
	cncDPC2vglbZ3RydMGRtqzGbo3synBli/A3KV4ZxO5is7jVBEjvtZ7wVBgQlWyxg2X+1o7aRhdZ
	hhpXpKneKO2EG2q/ldcZ7u43UFg+eDXB8mH8kDK/QMQ6AEGRS/hPWQDTJBwyS/QPrK8buPKxkbk
	yGVxorHi1QiH54sYNSRrRsTTF1OojFwajD80vsI7rm5PZCitiFHYzLwkGnBZJHiDRQZsb8VwdJY
	9jMeVIIvNiBJ2ehW8OziSfxZZXaXs3OBuBiyA/iCEV27jQ1VjkPsWjrOBpxDNvvOevTRRi6PRoc
	E3H7Vg0/dQ98I=
X-Received: by 2002:a05:600c:8116:b0:480:7385:110f with SMTP id 5b1f17b1804b1-482db460564mr171982085e9.12.1770062664929;
        Mon, 02 Feb 2026 12:04:24 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dbd3953esm120842955e9.4.2026.02.02.12.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 12:04:24 -0800 (PST)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kuba@kernel.org
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	pabeni@redhat.com,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH v5 3/4] dt-bindings: net: ethernet-phy: add property enet-phy-lane-polarity
Date: Mon,  2 Feb 2026 21:04:10 +0100
Message-ID: <20260202200411.373161-3-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260202200411.373161-1-dam.dejean@gmail.com>
References: <20260202200411.373161-1-dam.dejean@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261947-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DA4F4D0EA0
X-Rspamd-Action: no action

Add the property enet-phy-lane-polarity to describe the polarity of the
PHY lanes. To ease PCB designs some manufacturers allow to wire the
pairs with a reverse polarity and provide a way to configure it.

The property 'enet-phy-lane-polarity' sets the polarity of each pair.
Bit 0 to 3 configure the polarity or pairs A to D, if set to 1 the
polarity is reversed for this pair.

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
---
 Documentation/devicetree/bindings/net/ethernet-phy.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index 8347d4e134d2..67747493352b 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -132,6 +132,14 @@ properties:
     description:
       For normal (0) or reverse (1) order of the pairs (ABCD -> DCBA).
 
+  enet-phy-lane-polarity:
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


