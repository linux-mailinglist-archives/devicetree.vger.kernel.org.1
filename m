Return-Path: <devicetree+bounces-262655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMwiLIRKg2m0kwMAu9opvQ
	(envelope-from <devicetree+bounces-262655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:32:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5732BE6752
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:32:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B8D43031339
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69710389DEB;
	Wed,  4 Feb 2026 13:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UU0XtEi/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFBB232395
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211635; cv=none; b=BaHOG85wAIABvJCvo4dbdaBJqyt1Coi8CLU/KeknxxJ8upmat59z2mBguMochzsIsbssV2uKwfighpjdvV19cGh0FKf/CE12BnFrZQiR9NIQTBUjGYbwSWVX2b7TpY2u7/kw0gLptxJ0n7ygMdLRDP8AlAkre15NLbB/R2DY5Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211635; c=relaxed/simple;
	bh=66bZHNL+n/HFgZj3gxLYgAhBR8lc3rwifGM380guqjs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VnXB2502XOinZeZKM3y6sqIv4IokhEk8Ecr14vkigKnzSxIphApNaYncwFRNKN3nTs8fe1PjtQ7/bqpcTslBaZuIwGUWPCizB8yoJkAsthRxJGuEhb4z9VDkSObDImu53GCGW74VjSJOJfQAxCCO63BQgmEPN+2zCZVVZ3Dicu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UU0XtEi/; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-350fe1f8ea3so3340315a91.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770211634; x=1770816434; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vw4pY4dR7kSA9L7fEwOm42xTHQF2Ha5YuN0sTkWD41Y=;
        b=UU0XtEi/X58o4/MxQAKATsffX7as9nhc6rHk7JE2DHwvGGfIL/NEWN0CG9/7QaLVsJ
         dG5TFM+Sgs+DJoDT/e2fmGJWFyQPwAYUawKfnhOOo6xBVJFauryVIARJoP+GiGihSx7y
         s9rCg0sR4qE34EnE+xu39n4ckTxY8TX13P9QDghzfv4w7+wNtsp1lHTXoYRQ54vnPaCv
         3FL9oTWgstWsOAoiMUGOpVjkeYw+O0INnAAeEi+n4m0lD2tkaV+7BUHcCjBsarBWVquA
         twobJy9OV/fYXmVrbIjYVO+JJngDcC21v9utEyFIyjfBCDpV7PUbFmR3Q7rmpNGlqy0u
         hgFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211634; x=1770816434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Vw4pY4dR7kSA9L7fEwOm42xTHQF2Ha5YuN0sTkWD41Y=;
        b=Wqa1A8g8GUp7VM29UkTgvCzJHJVFA5cD6Ddsd2olUsQOpUP8lGHl2HTZmvQhapdNAP
         3f/qhQj4cSzpGnDk6X2J3xBvAWpDPsTlLhvUUhMXifOmA7nDScZQ7nX+OgOgLuFcCROB
         acb950O29avaTy5lY8eJFt3BZlyFkiIbafk8nm08Di4rZyZ78JNE88Cv5amUK2lww3ud
         XsKy1aH24342+XaIIMUTsUpENbu92NHEjmgECt46aaF1130ramVmTP/8laoDzF6Rguao
         nCDUFiWA6vhmzetSdzFv8gWgFndmglwP7+7okKxYo5K/kNYJCPcse9p4xJCrj8iUXsP2
         7vsA==
X-Gm-Message-State: AOJu0Yxqcc4Y0E34C5QxlGYTmhgxhLO9BHInHu3LQWLOItv1OqU5QpfA
	CSh8KRn62M+KY581aBGrAH1ijBe3aoViRd5l7sn/hI6tYiRbKu+3bChKEYW8N47n
X-Gm-Gg: AZuq6aKX3kL9tPEU0gJIUrP8oV5DBb/KFXonjVnPm3JASYcR64AViv3toFGM3l8kRZy
	DatdFO94AMION42oSeerca3E3sMETMqCpaHnHUu5GQ/JEv9qomtt+w1MxmIP5dYbSE5F6qF6g2R
	BGhMNERgNuiOfWBpw9eg0e9K+9mCxgFTufqImzO/C4bU8oqIRMi604xlX7TeWbeVUuXp+UwFVTs
	pW9UBq6OLy76+s/xomR37z6jDUrtCDmShzgIVs5I6vsTYT9CsnJWsyhMadtAP5CJ8vUItjaaF2s
	gQt1GAcqmCjxXgyj4yM/r+S0Np5PR8AumYJZyMSNXHPXTVcvcGvjkjTPuhDedAM/mdrEbH3jRbn
	FKzMU0W8SPyNftRqkICOvXBecQetgNaUl1o9Txv5LW0VOLduC0WdHM6n2SGJ4SUXaqQ8cfDV9bM
	S+4eDDA5T26zsJUexZ/Fo=
X-Received: by 2002:a17:90b:57c5:b0:353:38c8:b612 with SMTP id 98e67ed59e1d1-354870db3d6mr2643119a91.12.1770211634292;
        Wed, 04 Feb 2026 05:27:14 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35487726e6bsm875763a91.6.2026.02.04.05.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:27:13 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
Date: Wed,  4 Feb 2026 21:26:55 +0800
Message-ID: <20260204132700.329894-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260204132700.329894-1-jerrysteve1101@gmail.com>
References: <20260204132700.329894-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org,163.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262655-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5732BE6752
X-Rspamd-Action: no action

Add devicetree binding for the OneThing OEC and OEC-turbo

The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
eMMC storage, and supports one SATA interface, one Gigabit Ethernet
port, and one USB 3.0 port.
Among the lineup, the standard OEC model comes with 2GB of RAM, while
the OEC-turbo features 4GB of RAM; The rest of the specifications are
identical.

The OneThing Edge Cube series (shipping with the vendor firmware) is
originally designed as a PCDN (P2P Content Delivery Network) device.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..292fa0bbec93 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -813,6 +813,11 @@ properties:
           - const: openailab,eaidk-610
           - const: rockchip,rk3399
 
+      - description: OneThing Edge Cube series
+        items:
+          - const: onething,edge-cube
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi RK3399 board
         items:
           - const: xunlong,rk3399-orangepi
-- 
2.52.0


