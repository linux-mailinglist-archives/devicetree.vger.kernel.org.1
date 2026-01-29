Return-Path: <devicetree+bounces-260808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKnKBn8ze2lJCQIAu9opvQ
	(envelope-from <devicetree+bounces-260808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:16:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C210AE761
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:16:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 420AE300420B
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4DFF32D0E6;
	Thu, 29 Jan 2026 10:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i5+pkaAB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552E727E06C
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769681780; cv=none; b=I1EJm7Ezr0a9pnq4ukKh3XEdhstzOgUZMv26KvejdRGaU/UhinFDVtpWG85H2JoyWjP5BHCD1CD6VSfPradxVjSM5kpujdAbaSUNooDEPSZ3fblPzO+UGDXVVX7UFheA48bPrNwUDA+pLz1uAJDF11NaWCyrvO1NiUmEIe6VXr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769681780; c=relaxed/simple;
	bh=6mwvgcU4b+9/QTYhLf3cWuarnifzlcz1Qc4XoUMHFqM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jp9+bfLYF6zO+OKPts8vFLE1xX/nN28TJOhSYEXWIUvDCgPXlYQFWbWMKUrtfgc6PbzBjHlVG7e9yOhL/z/fN2X4W/PmgJChy9GL9KybVXnn0S6X5OTmOYmb1NMwlnCrfOa8csqOkv5Sec+e/2shRHUFnvYZM48csBNdkTaDpKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i5+pkaAB; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42fb2314eb0so705174f8f.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:16:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769681778; x=1770286578; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DnYB/5fk0KIL/28WT7coTBmZftn7pWijOsAyfPHOv0M=;
        b=i5+pkaAB3nD8j/YWmt28Hz2k5ZfGabZ/9MEfxfTe99cAeuaHgFcYc7ngSU89qjMzOF
         MIFypLEQGGKYgkGY9CFuVZfIxv8TXMQI76Q0EtOn5l+/QnFaTfNqli10EXI2CeiXkb1g
         2FjecXNXSrFnrRTfTn98BQnIBd7/VVkrXBHMnfK6IQfx826xz9U2bG0oxwc7qWZaQVlk
         RiOgR4Cne17iciwLOv25aQQGkN6VTX/M/nNe2iUrxiPcJa5DPlfJebQnhFUEbSPEoa6w
         iuvc0tGBtVTAXNMCp7vTvmX2pl9vjoN41/cxthN99jF8neWXWezbk37aZ2hCpPoHNF7x
         58EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769681778; x=1770286578;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DnYB/5fk0KIL/28WT7coTBmZftn7pWijOsAyfPHOv0M=;
        b=BMbFmRbU3YOUXO2lg4d7gzHpa2vBLD1gYSXEbmxpoeqwZ9YOJmRm49cccGyNt5QU1A
         w1zmshhUsHJYvo/m/BEARAHAIVHSOAft3ZkcokSM8nDIdzzFT01UAaY/lDRXnfQm3buZ
         MelPkEaq9gNr0wZOn4Exdzz9zlgrfjoBP+XYM5iKzKa8qO6vcMJr4r84/08Jpgh4a0UA
         FF4K1IB3cqee/VwwVXgjOTxQqNQV2d1lfeGMTHpUWZ3yNb1PZ2n2TSnw/K7kKMUAAiXO
         J2iMWhMubV7S74KiDOHdCW+RqOzUT89YKW2tgebIaVdAdIJf9oCbbKi0pavV5pNhbmad
         aEvw==
X-Forwarded-Encrypted: i=1; AJvYcCWa7XA5vCAz7ggUkXhrIAKFjKAbByZthC9mCHQQThe7eBOqnzUz7HFhReLEcH1eNYlLszl1DZ0QhnPo@vger.kernel.org
X-Gm-Message-State: AOJu0YwfbRbuPLZ2KS8/FVQn/+0wTadgO2zH04isDU1U3TqXeX6IgSEI
	nI2wfRVAp7p5MDMATzM4Cp/FE5sJsCgIF+Yo/sQUAd2DTwqrVAa7dcfU
X-Gm-Gg: AZuq6aKvjyk29Mbrs/YzZhGJ2fxoJ+wT1OV131aNsGkMMRTclMAsm2mIW0LaJFB3rSW
	jbYN5fqiVk5xXNJ4ztvGUfH5R2Blf394+fIgizmPJnFjb/Xy8iVrcWFralC6+RYzqvom/NhdBD1
	Gt++wRNiAWfmScyLOgNhdI276T03bmlY4FOdWR+qKEoUhT18+BzaeR0gENShcYPnqmILfBucieU
	NoCalJxED/8lfM6Qiro/BdASTZiAZF0cFQsnjwTiUeuZQ8JAVHo+OSr2ecMHb/a0nktmfZAw6QY
	lQzngf2D6rMW3w3Wvt3CEvLqZF8nufm9NemCLcokJWOLG+lTu4Vn9Lu5bcyiJSlEko5c7lxUYfF
	atxcaz/aqu7nmjQNsioTZgbOOIJzcr/kn7xjOn8T2AVWblpiNB94Ytxlzjh0v15Buej8+6lAV3+
	PnWDeHrxED5jE=
X-Received: by 2002:a5d:5f56:0:b0:42b:2dfd:5350 with SMTP id ffacd0b85a97d-435dd1d92a1mr11347963f8f.56.1769681777514;
        Thu, 29 Jan 2026 02:16:17 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132303fsm13413662f8f.36.2026.01.29.02.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 02:16:17 -0800 (PST)
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
Subject: [PATCH v4 1/4] dt-bindings: net: ethernet-phy: add property enet-phy-lane-order
Date: Thu, 29 Jan 2026 11:16:03 +0100
Message-ID: <20260129101606.33972-1-dam.dejean@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260808-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 7C210AE761
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


