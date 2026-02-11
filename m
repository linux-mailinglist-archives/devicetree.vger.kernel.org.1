Return-Path: <devicetree+bounces-264749-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDvwIa5ijGmWlwAAu9opvQ
	(envelope-from <devicetree+bounces-264749-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:06:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2452A123BC7
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:06:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EE140301D94C
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7753563F9;
	Wed, 11 Feb 2026 11:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bz1NrYjK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5553148CF
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770807978; cv=none; b=r3qj5J1QIvN/DsC/eHgckL2DicP80dL1GwSniZGIFuJxXSwqtJ7D2NwZgJybrA1yeJsROQXNNgNbTiEmaUBuebc/H46NsRHLVc0tC2WCBSwIXDTMOcyFifFOufpuLsG8Nq7LrRoL97+oo5GEHPO6DRDmxAtvwZqd7dLruwbE1vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770807978; c=relaxed/simple;
	bh=lfAdvrk7LhWHY95MyBnbO0kkou3gTKDLL7/Nb25oMbc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jt3AT2syaNn+oEtWmUuoEc/EaBJsiK68f2R5CydPHx37rm++/FNKyLKYk4B187GekQDMlGJpP+hP9wIWmbMjTwCEVFJcXGt7HGWohUYwC/0EpuuGKpmEy7RLcagHaHVe9vD8qHPnRjHmiCULunBAUxHbHXcSM+oeeuaP/HhNfxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bz1NrYjK; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-64ae222d87dso2038784d50.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 03:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770807976; x=1771412776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q+FnqDj3qu2ecfnplRKSOUvppFc1PPPDfNJmD9cSsF8=;
        b=bz1NrYjK1Wp4DX8UXaWChQThGrX4Fb2h1O9ttRCLZvKvmAG0ebCB/nqu7eertLTXNJ
         /bT93qBTT06LDgPRwXTMIGqY1xjKNEDbUKJIAy2wgm8J96x2d0prJihfssMG99GGSZaI
         KuLWL43xIsqScz7mBlbPEIB0sTmSopjKVrhPTtnzOuEpVkrRAnCVRwksbmAB1IqkrdsI
         2ligfd2sCDuOl97azme3o+GuIIZWB8tezss++K7jINw1v1z5HOdc5ieiNAInqBzmw6bk
         /Z+QiFYTa9lYNaIu/9Ee4p/qdbJttMmnvHp41HY+xMII2UdFDtLgCVQIAmY0y0kTAt5B
         DDlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770807976; x=1771412776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q+FnqDj3qu2ecfnplRKSOUvppFc1PPPDfNJmD9cSsF8=;
        b=I162mdxHSQ6IXj1+6mr6kWUKlGaesDHtfH0LxwN57/8FSCicd/G0R0chTq64obozju
         YfD6JoaTJWI6LyDGAmP7ILMRlr1uNXLgoCxbp2SBIDS/r/xYijx3vF+9tqXSXU7ImAVj
         9dEseAW+RX+GaJDAqHeUDitpRfZWXncMHVYg1Cl33zU00Ymrtk8EqNL6m6DK5FQI5Nu4
         c+Wk5I+c95o7bFEaKi5ATkKKyfTk+IzRqlvga/9thzMI1e4kJPjZc+Gd30ZalhIUCMQ8
         ABRFojsBHLkE+scPLUxAptK/8LIKuOby4dxUdMhQ8OARxkvHNjbsQOuHkp4ag/wX0yFJ
         lF6w==
X-Forwarded-Encrypted: i=1; AJvYcCVNZHuwxljygpRUS8RDhGfU7V+hDMaV8cAYFP4Ps2Q0oWlKW4dKdWYYEu5xacx4tw2xohpoeD/y97r+@vger.kernel.org
X-Gm-Message-State: AOJu0YxOHT5mTHL0K2jAFrS3hRT9PKTKTiEWt2UnMMsZDVDpivKEeANa
	a+qyeQG9zmT6Rf+bU46/vs7xM4RwjkDc3t3MbILOxvlSmRGsdgEb/K0P
X-Gm-Gg: AZuq6aJKD3oFsF6H9APZLxdi5OSxD/misV7OeQRoZ84YA/U6kjsbMe1nA0ATOqjzh6q
	YtaKuMjDrpnXjOJr9Af/1bWhrfvQBy1IAzm8G4xiC9goKIm6YSV7QIYnm5gGZbjguf6p/9qyNG2
	RMjKe6D0WApGkRzcSEwsdqU/Z1b6nn144Mv5a31EUb5wI3qtZCLIXQNy/KMDnKFPmjYIQaQE3U3
	ekGEg6KvN8HprKEgGKvEtATo2hQN3KrrlZm8wQc9GFE4czmqQ0dxIpbSYjKhANpxPuzWmv1Eppw
	yTwU0TilidPbFlNrW18WIM8lCMpJrS9/15Mxo4G1pCfgGtSjGxbZ7tGk6cSok4ZW1qzgwAVbplu
	g1BJtjqrD5ltqkZZUXCLWZQuvg2mTVggPpklNIMw5gJE+BUKdDbDvOqNpunGz+mMBsy3Z4Bh+2U
	3A7lhkcUgyJU7yL9W8YlUwo6BHoqEsz41nPJs=
X-Received: by 2002:a05:690e:1517:b0:64a:f160:2354 with SMTP id 956f58d0204a3-64af1602cb8mr3992099d50.79.1770807976463;
        Wed, 11 Feb 2026 03:06:16 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:e36d:8763:a188:5dcb])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc87ff20sm1533719d50.10.2026.02.11.03.06.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 03:06:16 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v4 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation board
Date: Wed, 11 Feb 2026 08:05:49 -0300
Message-Id: <20260211110550.580474-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211110550.580474-1-festevam@gmail.com>
References: <20260211110550.580474-1-festevam@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264749-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: 2452A123BC7
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

The Onion Omega4 Evaluation Board is based on the Omega4 SoM.

Document its compatibles.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v3:
- Split into SoM and base board.

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..8e8f9ded2484 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -802,6 +802,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion Omega4 Evaluation board
+        items:
+          - const: onion,rv1103b-omega4-evb
+          - const: onion,rv1103b-omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.34.1


