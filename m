Return-Path: <devicetree+bounces-259304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBGbNUx3dmnqQwEAu9opvQ
	(envelope-from <devicetree+bounces-259304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 21:04:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB99824F2
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 21:04:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4FC13019531
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 20:03:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4A752FF67A;
	Sun, 25 Jan 2026 20:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dVKc39e4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3256E2417F2
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 20:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769371389; cv=none; b=etKv09WdWH/8MZQAzIvyLxwdeUa7zSNtLHUXvbqLH9eY/VjLf0kg4tU5o0rlcTHwuPafehbqZF1usXo1wjxIc5jHEJFmyUdh5KlTdFcNLKIe16CwIe0RuImPiec2sll7qpXBCMhe7ExJG7i5Jjpa9p4zeDhLgrhu3sJ9KmVq9lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769371389; c=relaxed/simple;
	bh=pSAL93nHZnSqriO92kjK/3e9XFl5GN7qGm5RZwIm4o4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UYumwO/rfW6lxv0gNb0DXhIsFH1F/3iHTcZK6UXCtWheGussfaPGKiMO8iSdJJFnVudS5+h2Iq4XhFj2K+E/aG/isvHitWdsggMR+Y4z/QVLaG4Eo/RO4DoaxW5P9RTMzrqhQbvzaUzk7LH5k8bzsQ11319vXg2mqE2vTffjbbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dVKc39e4; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47ee2715254so19526285e9.3
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 12:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769371386; x=1769976186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=63tDj5BfKjz+XebxRQfxXku12AhjNyBPccGDrGS//z4=;
        b=dVKc39e4+pwhXRfxz3hFS+gojeWKHrBGOfMa/wsXF0zx0ijmaq/QCErGv6c7/HsiTt
         /lRJyodJU7Qh9SfBDBmRRL2+4dbzPnHu+Mh4iYnR+IPzUw/eoElTSv9M+NYDMtw8ce1W
         6POkyJ3MiMtyQrf4iqlptwtRErr5N3P4OU6+M+EA7L0Ke8PoBq/gGO+3/3NfCB6lYpVe
         6KsRvPtbylOTIKmUh3OtWmSKmIBGNacdgMzzHQhw7UOHoA/4m/dN/0UEYQJH5EO5ikGB
         VJ+9JxPw7FSp1uG7vKneClbx37KeJy5LQXyIN9Necsc8EXSFmyxm4wV/nP8gHf1MNZUo
         t4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769371386; x=1769976186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=63tDj5BfKjz+XebxRQfxXku12AhjNyBPccGDrGS//z4=;
        b=jMnMe1l5zAtjqYtvj43AfmMvP73ZhfTXxmWPthnuGAC+ghE22XpNfUvfmogyDn14DS
         UfH8/7cUkZE6jkwqx9KQmZwg35LSG9CuONlL14A5YJgAqtjBGJrNSCZTul5sc2Rx3XXW
         Euftp5NP5BdLFMYbOUs/9Wz5EyNJOw+FugoPTJc/ionvoZXF0mOL40kG7XzOvuANmNDq
         eABzQI6hjbt/Yuozxm2aHREV4TdNXD3GjLkXdLkgqy83MKzRjGkS/wi3pd3MRNiKU73j
         OzUojert+i+RJ8vcsJ4JVmtZcmjUZpDUvRBvBneMT1xLrOIcpG20hM3wVMGSvh2piMUV
         SE2A==
X-Forwarded-Encrypted: i=1; AJvYcCVdHDRPsKhD/vw5IiV/kg5CAt3lu8chGMnuqAhXRWMLVzMvqWksCxDCKR/5DMwM6l28JNYR0s8D4jUg@vger.kernel.org
X-Gm-Message-State: AOJu0YyHNBIrL9iqr1c7y+zLEarU78Mkfn7gyLE0rMKZdcHvSJ9vxV5Q
	F0iDlw9eeUKCQaltPuS278/sX0Hg+/ZJNxu/Mks2/559tuU1Ix3QEfNX
X-Gm-Gg: AZuq6aLayrD+plN4eo/DLw8eeU5Zdr4Qtf38EHk+h5y+/czDow6Qy7RAcBAKviOcQed
	Yw7n7Oks1dT5fGxoL0xvwd5INgfN3GRkkD/l7OFhwKj+EHWVFZtAz6qU0vmPTyIiEDNEJdXODjd
	zuZBy78WyUBFfy/UkLsi5jf8sj3E4seQ9RyOXNxEyNX1fo6gBOVTT4EHq6n7jK72hb8xys5NngK
	uuZKTqCRjrsjD5uHB7EEuMhsx/JX8FI2/9OffiKOwUSxprbUUPW+LwBLGQjiSRyHS6QrLxqYqL2
	LyPhmLw7pIXfC2iKjjv31HRcAeNMDChMf6iXr0B/gbyo+UTHxGZqYHLdGwDUHp5JYAKKI4NPNUj
	Udvw1e3kVgHoMz/iWk1mKp0AmnjM60X2Rel/kYdi8hZd9d2abyd+8xih2Mc9/mCCtF6d2wyTuKo
	FIoIBcMj3XP0Q=
X-Received: by 2002:a05:600c:530e:b0:47e:de9c:92ec with SMTP id 5b1f17b1804b1-4805ce4e568mr41469235e9.14.1769371386477;
        Sun, 25 Jan 2026 12:03:06 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1f7c269sm24418036f8f.43.2026.01.25.12.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 12:03:06 -0800 (PST)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org,
	robh@kernel.org
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH v3 3/4] dt-bindings: net: ethernet-phy: add property enet-phy-lane-polarity
Date: Sun, 25 Jan 2026 21:02:58 +0100
Message-ID: <20260125200259.2903271-3-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260125200259.2903271-1-dam.dejean@gmail.com>
References: <20260125200259.2903271-1-dam.dejean@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,kernel.org,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259304-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 6CB99824F2
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
index b8cd5d2b9f76..ec8906708100 100644
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


