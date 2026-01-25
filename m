Return-Path: <devicetree+bounces-259302-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IfzEL/12dmnqQwEAu9opvQ
	(envelope-from <devicetree+bounces-259302-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 21:03:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C8296824AF
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 21:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBDEB30037D7
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 20:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E13223BD1B;
	Sun, 25 Jan 2026 20:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OeMUwQ7E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E9EF1DF75A
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 20:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769371386; cv=none; b=hbYApvSn4C6S4lxvYMKqxbpX/hO9gixvXeXHkKdV0GnmqQRs7Wzdiqq2KnjfaxtPpPKs6KcLEpQ1Rd+wZi2CSn99eWytpSWeanRNll+XXfmB8CxQGrZEjL/zji7esQx6Ig0Zeo7wDOCOq0tHXLfm83I0lUNTsrz7L9RPnKmH7dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769371386; c=relaxed/simple;
	bh=tbSwx0lCQ4pXqGFoLVTyOfGSw9UfpsVRwglYS1hGf3U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Dc8GCI5V9GVw5rvHfrNBQFIDZ4rfEdNP8cwZhnmTSDGWLJU/uKXmIqLMYSFoHbC1bk3tAwpvECYof7NXn12Z+COKvBAxc5NlldNZHPUTr0e/tVMNAQamY0II8onRAMIDdDUbPjur1kVMZ4Kvux3HXAcBTdSNpOSqwSicDn5ixYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OeMUwQ7E; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42fbc544b09so2753821f8f.1
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 12:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769371383; x=1769976183; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=loP+b95vMbOSoyIR83NDDZs7yFSKvx4NPA8KoAIFKhQ=;
        b=OeMUwQ7E8/B0Eu6avVOyBaz1VggD1pCW1UR4OFIWpy8e5OXfqZ2BzcQcFYJUj1JnlE
         heGJTOaYwjrZKtvcvRpsvCW1xUnmt1e8kTWujqY+WnyQd60oL8BzjtqbCIG9F5mBPqFS
         5qc8NZ7lZzrULSjuunIubs6w8EFJFTJ2nRfr58403H0Mu/LSHAfRZqPabXAxkMBtXxq6
         GdDHZ8ecQEfa9Hsj1hrAGABxhEbJX+W97v+/AInCvLR99wzltuBLNw9/zxSeZuUmhMeq
         LAuq/Oy7qjxzd60gVlj/XGNsw8RWxr3qWLXMEcLKjE42IMHUTEJOzmTF5KUTY0OaF7oW
         Nzww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769371383; x=1769976183;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=loP+b95vMbOSoyIR83NDDZs7yFSKvx4NPA8KoAIFKhQ=;
        b=NLTc2JHq3CqotGSMAEPqTw3KB423nef+WPAfsqqFey9622dRaS6VXC4kkTgSpFZRaI
         vrKsWan9VcXqAaHtYA6e1ax19oQiu3EjUkybWqPZh/l1cRt+KdcC5Mj+XywCJ/b1GAXe
         X+GZqBATrNDoNIhVKVqBmMFySVHzaPn8zB07SfNNXr9PPRAGsrUrx2AXmNL/TVnQMawN
         5PkFrDz/QxCfowAzEs/k+EU91igkvhWUKybVGg/d/nLndiDa8b9dZ8HEW+fDZF7TW9Wg
         zoqWx8de87bVjyD2oQD9qzidrDQGo8mhRs01pLUtwQ//iC0IhPLy9p0nKz0Cmf8QGQpp
         bjxw==
X-Forwarded-Encrypted: i=1; AJvYcCUaXTgLsCRYC2P55A256dV/tem6ZCLIoshhKvD8PTv0Xg/g/cgHPO1I/M6N6ITdNE1EDWUJ0XwXrpFL@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp+LogAOfbXj04KAXAb723GD5QvL/SzhViph8OyNiEwTr4d2jJ
	J8Jsqr+/pT0ji6Ow1kb5WDJ1NUgwiGMaLufLX8p9yqJrMElQUGtQPYGT
X-Gm-Gg: AZuq6aLQBE4ZRGmeFzZ61Wgp20Y8AA67j1Ise+9YB2FgfdLsVWJkJ3VFA5xQzKGeKCD
	upiPNFY3sTI5n93wA1tJAfabjxzKcpa+SJx7ApErklrgL7L1atPNAnoFfZqmliUwR0qs12tjapE
	MOsjfFFcAVQe0Mq4tbgB2yFvxq3vlEDu4V5JjqKnP0puTtwddPOjrE6ZAc73oJKbPuD45b4Bokv
	WCPrJ0M9wK7NfsVuIzWZcZ2YLxWTf6vl1k+563hVVwxD444NJwzNrBW9Ysa2mtdxMEPGUjxGkgJ
	o/eHnj1eLDiakdT3VKuh+PJP4iMv6WNOPL5+7wqt8owUl0nrKU2YzxwmyBojRCLAfg9taPa+ey+
	c+fVXw4j6mBqqwcBeRVUbJQImjeVZfza55QCxb870aMqXO4U12CWIyJmExFwi/AIQO8+o7EfeCh
	lY/tXJlCNXZB4=
X-Received: by 2002:a05:6000:4210:b0:430:f6bc:2f8a with SMTP id ffacd0b85a97d-435ca138f6dmr3758503f8f.47.1769371382610;
        Sun, 25 Jan 2026 12:03:02 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1f7c269sm24418036f8f.43.2026.01.25.12.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 12:03:02 -0800 (PST)
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
Subject: [PATCH v3 1/4] dt-bindings: net: ethernet-phy: add property enet-phy-lane-order
Date: Sun, 25 Jan 2026 21:02:56 +0100
Message-ID: <20260125200259.2903271-1-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-259302-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,kernel.org,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: C8296824AF
X-Rspamd-Action: no action

Add property enet-phy-lane-order to the device tree bindings to define
the lane order of the PHY. To simplify PCB design some manufacturers
allow to wire the pairs in a reverse order, and change the order in
software.

The property can be set to 0 to force the normal lane order (ABCD), or 1
to force the reverse lane order (DCBA).

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
---
 Documentation/devicetree/bindings/net/ethernet-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index bb4c49fc5fd8..b8cd5d2b9f76 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -126,6 +126,12 @@ properties:
       e.g. wrong bootstrap configuration caused by issues in PCB
       layout design.
 
+  enet-phy-lane-order:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    description:
+      For normal (0) or reverse (1) order of the pairs (ABCD -> DCBA).
+
   eee-broken-100tx:
     $ref: /schemas/types.yaml#/definitions/flag
     description:

base-commit: 983d014aafb14ee5e4915465bf8948e8f3a723b5
-- 
2.47.3


