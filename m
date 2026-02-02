Return-Path: <devicetree+bounces-261945-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iINqBwsEgWnZDgMAu9opvQ
	(envelope-from <devicetree+bounces-261945-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:07:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA36D0F02
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:07:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 497DE3004C76
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 20:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D86FF30C62F;
	Mon,  2 Feb 2026 20:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F7Cun27Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C08B2DB783
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 20:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770062663; cv=none; b=WZHC5X+imwoOVbtOz68FDTxFHKF4gCWIPE4O432D7fCAwnmdcOvKTHPu/HxRigRqgKifX1z4ttYx7nKe/R1mcx8X7O5BMo90Hw1nWFFLWK7j3s7LbRuTQWUiOKOiG/CDyXwG6BGH7fSQluJu6CLLosmnDLejWePaDksCmWJaiU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770062663; c=relaxed/simple;
	bh=6mwvgcU4b+9/QTYhLf3cWuarnifzlcz1Qc4XoUMHFqM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iJ1g0HO8fBZ8O6AOP3vq+S1uoziRuqOh80AiQ95bifiS8P8oPI0pvloeNqKo+L6lKqEOUI6mchIOJuxd94jJkNib5UDDpKbxGEY7V0QilQ8Z0LH3pvR0w4VOXmGmSXx5hjb/p05U+l+It9utPn0jPbBFXskpc9hpdhLUu0s4dMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F7Cun27Q; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4806dffc64cso37278935e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 12:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770062661; x=1770667461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DnYB/5fk0KIL/28WT7coTBmZftn7pWijOsAyfPHOv0M=;
        b=F7Cun27QNCOib2REAEqHghZdC+P4RXNgP8DndZJ+9FXrerYXZqhy5zjJmAV4CXfYUA
         XaUFbz1seYnZpYC34LCTsVRwbR8cv8MP/7mKvvUE5Bn4UkZqpg8ZevZFGUgJt3nJEbmX
         ba7zJIwTSNYo40nN4oxAiKJGsmbdZBSXFhSXwWGkT7yvOM/O9EnfCd1YO+5pZDeRf7VP
         QUlQSM+uL449fVmertIG36He/wb78txxKxCTXfqWC+ccn3dG9gxIrtX1SPEiSGeNna42
         r/qh7WBev2ebF7eurRIw46EmnGmQ3aHoopECWooKVfN+8ZLAnaBvUD/5C7MAVb5gTXKy
         qwhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770062661; x=1770667461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DnYB/5fk0KIL/28WT7coTBmZftn7pWijOsAyfPHOv0M=;
        b=A2SFaKOU2AtVZz0jltccjAKaeqVCedDAcCiz6QQL9WY1HvGkGsEdmcROyP93sBw1SR
         hcSTmXTgm6ID+SM2G+hi++pMASdwJYEQRj1rgF63vPAJL+08qGCjlzy/m+c0tbduqvTC
         ZO9PxnPClj/CxADvXNBeTOcm5iXqEIHTCKQgw5Ocpoy23Vuu9D1fruomkWxDOpJT83U+
         GGnnwW9wPSCt9Kh93xKDG508gnoonAOSIzYEeRtKt7txUoYBMFwyXd9T+lWYmxFeckCj
         K9KPNIbXpo62JmP8UpPpDfYkM6wcTmtOHLLPQbjGSuF/B7hHCZBvOCHGwnUB1+yjmvG/
         /VVg==
X-Forwarded-Encrypted: i=1; AJvYcCWKqWZYEReiWB5uxaqcFwBS8iBBsEA3CeusERUhzVzLgBJl/Qyx2uBZoR7HrnLDkclU1KrUvkiDh53Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzDJdpgIB2j4prre/rQXtZNhG/z6UJHZz0VlvaCblDM5o9h0vQK
	5cSn7MktsXeoMGQkwLG7X4wFjhXBbmKNkRgJStiykmdHJWnroSZNGG0K
X-Gm-Gg: AZuq6aKhv5XYUow2euobIScH081og9kE54h9Dmu2Iq4O928HEDHrR/+sUhRJqQXMoGr
	nmpWmQ+ovRY8hd2WEDUhEMABmqmEv80fesGORs2dOtgbEK/Bvcf2bSlZLckyLMHycKy1r+19XoA
	XhAbtIEKtcrw27Lx3Y1g+rFF9f2VHjSJ+UgbnY8zIcxkelBixxrdF8yJhn3+C3CuLzqHeK5Bmw1
	DE3CNpFqbyZ/Q+WUDg8ylOkx9SNl01LdBDxKOvY7HqAPg9UnvnHGpflYv4UrvzOyPpD+AHHg5gO
	tjB4nNkbSLCVyRHdcsdXmSs1t1G4nPts+vrvWnL6dPqygBaFS4TsNUJV6kldibg8fZUpEzEZB6t
	XTTk/SHRvIapTU+MRVnPgGxGZMzRKzmjkNF3zRlUaPJGUv9ty60pZaX9owpZbSLe5OOx9f/5opg
	9GLKsDZ97HY94=
X-Received: by 2002:a05:600c:4f8a:b0:47d:92bb:2723 with SMTP id 5b1f17b1804b1-482db456350mr180655745e9.3.1770062660562;
        Mon, 02 Feb 2026 12:04:20 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dbd3953esm120842955e9.4.2026.02.02.12.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 12:04:20 -0800 (PST)
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
Subject: [PATCH v5 1/4] dt-bindings: net: ethernet-phy: add property enet-phy-lane-order
Date: Mon,  2 Feb 2026 21:04:08 +0100
Message-ID: <20260202200411.373161-1-dam.dejean@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261945-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: AEA36D0F02
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
index 58634fee9fc4..8347d4e134d2 100644
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
-- 
2.47.3


