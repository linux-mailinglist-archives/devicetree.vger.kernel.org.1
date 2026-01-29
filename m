Return-Path: <devicetree+bounces-260810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIz/Oe8ze2lJCQIAu9opvQ
	(envelope-from <devicetree+bounces-260810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:18:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A56AE7E9
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:18:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12E9F303FDF0
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CCA533FE00;
	Thu, 29 Jan 2026 10:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O0YPloFl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC62D33D4E9
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769681785; cv=none; b=OPA7sMGWn7yKopnmxQbRrJ/iyR03mVk9yqDofkO5qIOJnhxh41fp4YXbSgk+Mp0oWHnpUU2euhMDAJ7SX1/AIMG1M+cGxiydJeThRpHmwRptYdWNodRz+uXz+qZImSPy6As3xaITiNAcOgNJ0F+e0kHUEusk78yp7eD6ODmrV30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769681785; c=relaxed/simple;
	bh=Se0P0dL3b3W51U6MVaZg7UsTm1e1L6pVdlM/Sha3Lt8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qzAEFtLfVjIBZEl7F3Ga5D5VABeYNaxpJbYCcwI2Bbh7lzOOEvmYb3qFsKSspVwpLJHF0NRUuqJA8FNBb7pWtny7KwdSqiaMkpIqZA/yLfwhgcsoNKCdKTyCl+85LekuRWLRkeboxCIJ8SUBljmNK3m6SviQ9y7vNC4xCqE6Hno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O0YPloFl; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-430f2ee2f00so481766f8f.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769681781; x=1770286581; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q3zK/4SLK4ukG/iXcIDXnPvimWgfkq6O3gX4ZLAuWM8=;
        b=O0YPloFlDnRYZu4IX+w+ZGUpRdZQXQyXxneVKYh1Jr7ij15mi8Bgc1i1SzErkHUX9m
         TaWXiFwk+a1eIS7t1i2yoYJHTB8qrgG353kCAdISPuLTEzbN8TV8OEHQCFKtCwJontM7
         urnNag0HN2t9ZUg0F6GCtNLxN4IaN5jYXbhZCbQ/bi7RqoQZeDcEl3+vGPMehmsrYlrv
         ZrTse5y4l+MAige5Ql8s9JVnZNHVjh3VM7x1FmGT3ZZo8YBrjEknXUfpGHW9PMCPT4Tw
         0EyiVwUUde8E0ac9ZBbcj81/WLEB64O+0aYLAcWzWdjTOp4KA0n6VUNuig0xRo4qN7OO
         02Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769681781; x=1770286581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q3zK/4SLK4ukG/iXcIDXnPvimWgfkq6O3gX4ZLAuWM8=;
        b=RPCrarTh2UbhOaVOxp7GCom+sM2U5uyFFHw3mqX8QESxnWCS1BEYXZTIp5Kj4zsR7O
         jemUKiNFnqXIRNZzaVFbFh5bef2vns7KGfx6DO9wBYwtSR6y5qirOHh+gkyjWGevajP9
         q4GotJbpWSeMC+jIXEYO+DxjB96gIJSrPqsLw4oupZ8bLSJ6vX1VbhZxz9l+6+v2soSL
         3+kX9ZtDZlk9+NNW/xdCF+2YCvMsEQZhXkSg8M8+VUYgK3xtACCr78SJYLGNigmRqYRR
         pIOzp6JMR0jbZrthx14qLcQhQrWtemJeucjDXa0p0clcVwTtR6MZHFmsOc+sLWD4YO/P
         u6+A==
X-Forwarded-Encrypted: i=1; AJvYcCXGULY3qqaTLzUJC6UMinG7pQ5LabtCtZIHTT/JROANwzLzsG6Ly8Zih0LIKJ0RNHYqs8XwRK/eVu7y@vger.kernel.org
X-Gm-Message-State: AOJu0YwNZEzIUVOyLhpkv/J4l+sms8wuJZvK8C0c2kfyLJJMPZ+motZg
	kpj8FFO79lFf2S15Vv7Rcmlw5WCYuB7pvd8sZn+5UC5xxVcGsO1y2OVv
X-Gm-Gg: AZuq6aLGiJEvLcv5QNQDYYO2DBwTKTb4NkvRw19lCd3dQWTLxKMdhkNwlGgIDylYFld
	6JCb7iXGitzAd/6xVPOwKfPPKmWA3YLKs9pIaiA9csYcqG+m+wM4BpbNxNel86rnbj3e4vZVkZm
	A6R4kVuxYRWk1jajvBS/jYBgfhcI9CfdthDrWORpPUx1zeGK23Qn62G5DJPltpb+w53Ai/156lW
	qsSypOubBALt25pwqF0v/lAx+r0nAh94UgsVre9vhOUFwg2Wzp6yElbbsTSDxPwmae6Ml6deOLk
	jCTJfhpbhC0phcba3C2Kgfp8DwZ5+6sMYBGkOHLqX7Sk7x3LFwZH7f4MQlydTlgsPZRRTfAIqW4
	WgwX+GjExNLDxd0Rj0CZLmKztjXjpI2vR4GKjyDDtdP3PTkm/qzZLSy9znLTkFkktaf2ZO/eaq4
	EtUYuCoBjbCDM=
X-Received: by 2002:a05:6000:2907:b0:435:bcfe:b11 with SMTP id ffacd0b85a97d-435dd05c94dmr11343793f8f.18.1769681781211;
        Thu, 29 Jan 2026 02:16:21 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132303fsm13413662f8f.36.2026.01.29.02.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 02:16:20 -0800 (PST)
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
Subject: [PATCH v4 3/4] dt-bindings: net: ethernet-phy: add property enet-phy-lane-polarity
Date: Thu, 29 Jan 2026 11:16:05 +0100
Message-ID: <20260129101606.33972-3-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260129101606.33972-1-dam.dejean@gmail.com>
References: <20260129101606.33972-1-dam.dejean@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260810-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 62A56AE7E9
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


