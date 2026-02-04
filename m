Return-Path: <devicetree+bounces-262800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJ60Dl+5g2lwtQMAu9opvQ
	(envelope-from <devicetree+bounces-262800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 22:25:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8EAECBA4
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 22:25:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AC67D300443D
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 21:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 663C938E114;
	Wed,  4 Feb 2026 21:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GBBMXKwX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062D137F11A
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 21:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770240346; cv=none; b=ZcGRQn+fVpmfMG76idJmk5YAV6M2ybfxzIf0EVUncaocwdQO0lEI1wsq9tcy/Sj8YIni4yI+q/fV8GOsC2cb6B0+w2/cLShig0UX1MF1b/JG4kvZQb67TdLKtIIUKVWHQozXhVIVKMg7qh94zjp9GzWBdISGRzvFSLbG8XaA6wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770240346; c=relaxed/simple;
	bh=GGx3tEEBEsP/zWuuHQWsGEcQUYRZMy5fvKKtRcj/Ppc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Dp0S4sW+vllZvg9xdZnh9UuUYDpWmc+pwaihMiFo0MHdcbUqRIfTHPCusuHbuRY+SlrarIefjFVN+nDMGWi8DSwn+Zpo/SrjAvWAQ3wX871tp4EMbp9ms0qj6Xq+6ttmMhnCGvmvkdjPHsMI9tWxy3TB87A/dOXeCdjbO83nZRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GBBMXKwX; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b8871718b00so31476566b.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 13:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770240344; x=1770845144; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q+Pp2YHDz9lMmySFFkUv+WXWdk3W/He2Wu8AaWjmXkg=;
        b=GBBMXKwXcxfW3dRSNWd2akhvRNCAkeCeistqXTd1gdJaO5M/00ET7al+y3zH7Kw0tP
         bjkskAcZ3j591bDx72Ivo4oWQL38htP5XOdTlguf/JrvpepjhSppVqYlXxn/DmxuTHee
         qjJK/A9Xln0PLYKzo0g8HxiLeCEnPhNC0mDTusaV0+Ej8cavm9qrnqiGswT2naZAqtCZ
         eOY21kB+xu0OwL2J9XycYAvTSZNqFaDqMUSwkk5eaKzi41dtR3M3lLd9YLPiyJT/yOBC
         72DiWWOWXpWL/VbpIZHBXfzJFYOqppq5zM4GEnIi4drUj7FP9s0bVscOVQhxJtcbrTN3
         5XuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770240344; x=1770845144;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+Pp2YHDz9lMmySFFkUv+WXWdk3W/He2Wu8AaWjmXkg=;
        b=vmMxH9O1/TBi0K67FtFdyQDycbqqktAqz9+QrtFGVBcmK5eqEkXzFygvG4rFWCYbjY
         DNLk5urdh0KSESBfEkHMpWbLJmwaIdCvVVY2BGMRsy1FdORC7eIAItZ3tFxR5JqYI2U2
         yiyhlE5rVttHfQp/gwOerejuGKbCBwX8dXCFKm2jLSOEleSHmgIkbOBV4Rkx1mmNUYdA
         zpQxrCaWwWHCldlxmCdFR9Lhf24mX13MwWoH2H603e+skEFkB8xVzTheZSRCEcYBNep5
         02BQJX6iQiSK7AbRjtj04UxhCoqeUaUwYQpZaF7bm386b8SEzF5nQdsuWvX6qsCkQ3p/
         SSMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfXSHxTlBgATBpzDXouqrSIK7XMkwNT8R1Z7ENegH9lrZDyN0XLaAqPqTsQ4ni9I7XsL7awp8xGykb@vger.kernel.org
X-Gm-Message-State: AOJu0YxjrrTLlgBh3uMhSAXYPE1kmmGcGoU4ebq77C7kpZ6ep5FPrHMw
	lWZAhhdHBTGrO+2KwJB1kEVhbKwF5+QOa/GpD5yDlyDmJ0lGqQlK1Ykx
X-Gm-Gg: AZuq6aJoUxMzJ+ioonpy7+61yoRH4wjzTfHDBId1ZZSYTEcwwLvpO/+NojacYVyf10Z
	cgdjKpXS53ox0eN7fAHzKW0jQ6UN5Hh+1kvHLKwzC9EnC5UaH9qLQgPzbjTsfGcQj7l3uQKL72N
	ezu9lbbXT/pYd5rt/1cVTfkcFknjLHpiX6GquLXUFNp5A2R50B7fLgcm2Sx4aajcFLS6CLCsEK4
	HfcNDqgNu3BnZ7HjHUdu7y+or92fARQOri7ePveUf9DB9PLSR9c4NcV+p0PNTbykh/A4W8YB2TU
	sWNz8emXyGqjkFHENAI6gZHAbU7hnYhz/PKWOQrQVLqvJy2DxwhtbSQzWunYRbsEj+Fnid2M8kW
	cWBAAf5wyVPZkoUCgBOPLrBRp6wvIt9kzd/86WvybhiqSapGvn7tMQA8ISo+e3DLJV+eCzGsWpw
	AfWE+vPZSzasxjhnGj1h52Q0IEaKOCmGU7W9EaBNcbT/VDGw==
X-Received: by 2002:a17:907:7b9a:b0:b8d:bf4d:7464 with SMTP id a640c23a62f3a-b8e9f1757b9mr332256766b.39.1770240344250;
        Wed, 04 Feb 2026 13:25:44 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:b4a3:40bc:353b:1368])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9fcd8f7csm156558166b.14.2026.02.04.13.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 13:25:43 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: 
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	netdev@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2] dt-bindings: net: renesas,rzv2h-gbeth: Document Renesas RZ/G3L RMII{tx,rx} clocks To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>
Date: Wed,  4 Feb 2026 21:25:38 +0000
Message-ID: <20260204212541.4870-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.84 / 15.00];
	LONG_SUBJ(3.00)[525];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,microchip.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262800-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[glider.be:email,davemloft.net:email,renesas.com:email,lunn.ch:email,microchip.com:email,bp.renesas.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5B8EAECBA4
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

As per the RZ/G3L Hardware manual, CPG_CLKON_ETH register bits{12,13} are
to control the RMII{tx, rx} clocks. Document the RMII{tx, rx} clocks for
RZ/G3L SoC.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Fixes: 3ac2aa31b489eb4e ("dt-bindings: net: renesas,rzv2h-gbeth: Document Renesas RZ/G3L SoC")
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Collected tag
 * Added Fixes tag
 * Fixed typo {tx.rx}->{tx, rx} in xommit description.
---
 .../devicetree/bindings/net/renesas,rzv2h-gbeth.yaml      | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml b/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
index fb60f745a1ff..2125b5ddf73d 100644
--- a/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
@@ -58,6 +58,8 @@ properties:
           - description: TX clock phase-shifted by 180 degrees
           - description: RX clock phase-shifted by 180 degrees
           - description: RMII clock
+          - description: RMII TX clock
+          - description: RMII RX clock
 
         minItems: 7
 
@@ -77,6 +79,8 @@ properties:
           - const: tx-180
           - const: rx-180
           - const: rmii
+          - const: rmii_tx
+          - const: rmii_rx
 
         minItems: 7
 
@@ -170,10 +174,10 @@ allOf:
     then:
       properties:
         clocks:
-          minItems: 8
+          minItems: 10
 
         clock-names:
-          minItems: 8
+          minItems: 10
 
         interrupts:
           minItems: 15
-- 
2.43.0


