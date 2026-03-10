Return-Path: <devicetree+bounces-273673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMpaKUVYsGkJiQIAu9opvQ
	(envelope-from <devicetree+bounces-273673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:43:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D43E7255CCD
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:43:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9B5E32149DE
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34A643D7D8C;
	Tue, 10 Mar 2026 17:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZHpJfLss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0797B3D47DB
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164342; cv=none; b=bSGGDjydpa4dsrKlcV0DBDXsuvqAnfFLzq+mtahhsdELw1eBVWZ/a9MofDG9TuVdAuMrV1GJH1mGu4Rwjx2OiWCGgN48WTA26ZNMnvnJpDh7ZwXw2L+Opw6doJaqH6Jtl7yQAyArtIhO0iT9+F7jVcYJ32bSDQsmze4D7UzdAcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164342; c=relaxed/simple;
	bh=NcV7Y8rF5EsCyaO+fQzMv4yYadXViOfLjUAI/+Np8mI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eFZune2JujNBAsC3Yrv0WVFrYo1+A54TZL7yVGzx8BCT/Ww1QKu1BllX4TgdVOlxKu+0Ifpn6AQV2tDKRUTC1E4ga0tXBqpOQZnuzwtElBo32EX+F5VeA5FYjwR/MAbxQDb+7lRPYLfaO7jF9dVhkPODoW+7KgciBgBbtxoisGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZHpJfLss; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4852a8482fcso37731725e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773164337; x=1773769137; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IkgvDwmYQtcd0bE08ner2utHU4QPqUbSnWFPd8ItaAU=;
        b=ZHpJfLssOcx54qleUpFRLOCOW6xKz19axoeVGTVB4szZliRL2kp7jQssLX8xRcNoKW
         Pd3j65bLkW8KgeivZc/OGW2rXppb/4dJqqhl0vTPuIr6qU4z2wzCyBrB6PniQfu0Tm6W
         SB78ywyuiDQ6Qyl7KOmrOilLzLzO7+6LI8aRlZu8QcGs4IePVZF6v2r3+BRUSoHcnAvw
         lZthRf4kLlhf4qYxOrdGv+yod1icD0wi8uwKGG7Nod0YLJa+H0Mxe/lFP8QOPAXp94So
         aUe4qpCUZi+NybWRDgs7WdmvbKRyQvVMTrRsEc7O14kmX53Wpfcfpl4oCvsL2RTkhNw6
         dsFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773164337; x=1773769137;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IkgvDwmYQtcd0bE08ner2utHU4QPqUbSnWFPd8ItaAU=;
        b=oztMYO5YTDVfpEJeq0xluvMp4cdvQlEvsFDwCCTwqpX99e+OS/qco6hiw8U2MrhAF6
         gOFx0raYxOC95FQJDYl7bz2YjSETlbx5Y9th85ITd1xNYFQrBlR53d7FFQdrVNAKB8ir
         2IUkmg4zhe4c2HuOaEhGTIYC0KRxgAe6CFiti9oMZGjRr9GcPAuaERGtmACYOfOyXgDi
         frGb92n6/Pq8RJFRx37S8BPKCmd0UlWUZCafeOdb0ZD0+SAXzcPV408vEYQAQfwxLveW
         ZmH1U57E7J0ewMonENAmpHr1craBPs/oUpWNtrU6vrpuOqONS+iKW0Ya210Tz2yOGvKB
         7Rdg==
X-Forwarded-Encrypted: i=1; AJvYcCXL02CDv7jSHCURBRVDKqWyVt3CIgPEPvHpt6BG8mYz12C+FRr5GPyQrrqlwgZG06IcIfyP0BmE5cEY@vger.kernel.org
X-Gm-Message-State: AOJu0Yyyt4PoUe2PNFE6CvvSVsFFDRVg9NIMnEKB5Bi/3jGBqvJxRiXW
	k/BiqWDe+8pWM0IUh+h++0LXatzMHjpt0ST/q8Za8sxgT0tHchxXEdxr
X-Gm-Gg: ATEYQzwWW6jFj6GNK+zmKPL9dupcMY01KP6M+aZt1lXWPiZOknX228gueIrofMv+3ut
	oB/8OExlUX0M9o0bdwGuqcUrsnQ25dlK9+BZwoxpV42mHH2sZ9KNDAaP94opt+clKnXqJca2Adi
	MBxsWBgsDYPG3X8xxz3FDIPbYKzpy7zV1KktE6kBGNx3f65K/0SRNyZn5XMYim2cqFQ+TKXU8x6
	+yvLPI/SYvfRJAAIPMmMY1EoEsbcSwcDfQwIwGw57VKDICg+OxH/79ol7Z2IR2gwYyC4O7gygMv
	rIGjAX8GSdTe2JrJCHxNGeqJRxdLCo10Y85wfPOGFBw3QaS6/FvWCPDXeJbg+8lS8On+UPc+sAY
	rhPflz5HFc6U73/jkEVUMIyUpLgjUuB5YOJuKaQ8fiNMyJKYGbL9cEFhHbhplheVK10jCDaHyXH
	1Q3vJ9oMnUbw2X8CRcG9U7U58=
X-Received: by 2002:a05:600d:108:10b0:485:4552:8fbb with SMTP id 5b1f17b1804b1-4854552922dmr35522675e9.22.1773164337294;
        Tue, 10 Mar 2026 10:38:57 -0700 (PDT)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541a900easm103239295e9.9.2026.03.10.10.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 10:38:56 -0700 (PDT)
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
Subject: [PATCH net-next v7 3/4] dt-bindings: net: ethernet-phy: add property enet-phy-pair-polarity
Date: Tue, 10 Mar 2026 18:38:45 +0100
Message-ID: <20260310173846.230923-4-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260310173846.230923-1-dam.dejean@gmail.com>
References: <20260310173846.230923-1-dam.dejean@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D43E7255CCD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273673-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

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


