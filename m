Return-Path: <devicetree+bounces-262958-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGDMCe1qhGl12wMAu9opvQ
	(envelope-from <devicetree+bounces-262958-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 11:03:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFBEF1277
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 11:03:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3A55E3020E9E
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 10:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 023093A4F54;
	Thu,  5 Feb 2026 10:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YBVK3ffl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885F03A4F3F
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 10:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770285715; cv=none; b=StLufPqmFJ0AkpBTFDPUI9FJdX25GlyT1qNQGmew1mYTEv6UknvdDXP11HEqSFcpey/qpIBlkLBK2OXPsba1rN+1YSzu5FhlWHvGfRHaQTmxw/oO2MxciynYZXm5YLcie3h3lFy/uc7yRz97ENobhJF7NcfbsN2On8tVTw1hvxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770285715; c=relaxed/simple;
	bh=sq2uUQQD3qgTIDW8Pm4AOknynWhEu6IZBgKRRJx1Iy0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AIUGV8oqgk7m3b+n7JzQmy4bt6ZPW66u8QoR4p8guWdyY7AxT7kvsfSQu8orXxpQXMCjSHZbAsuyLobLqTF6bxvSc6PO6xYpM5EUaQMWKtHLnlUY5Ga5XABx/6CGMDlLHVM1cBQKmU4KxuKcrKp23hfXXu/oL3R0qY6yLZVypjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YBVK3ffl; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4806dffc64cso5895325e9.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 02:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770285714; x=1770890514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K/+UNv1yjJPaLGJLxmiYByirfIe+2Dioc065dJfSUTI=;
        b=YBVK3fflK6HwJUYUnw5VUoWzsnNRDPf5QeJTc3DzWlTmh4SdZh9BlgcU+ecfxNB9C0
         un1GSxS3e71dDk2J53r9OUBu6bN/SBG4/xERAGAbhjheRgYznDxMCjtlNv4UXtEFv8rl
         iyZXuY20PxAWf5ljWHI0j5MnONn7Fmc9uP+TRgY3TQ/kR1+h79kPo3EoodDdlFW6dIBt
         0xlk2D+R3u3U2MGPEeLJhLASkMjyQnuzwkkqk9I6OA/l1HAnaHqikK0opCiWVV0p7AZi
         FCFaHPeQfB2Dvd8cP8NFSqTrRcpTy6JWULaSHI+E6D/d+BsuGTBFj+D0/trWTHwGQqba
         EufA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770285714; x=1770890514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K/+UNv1yjJPaLGJLxmiYByirfIe+2Dioc065dJfSUTI=;
        b=uBdvpM7jfKOd2mOpy+GdQ9SMwMgNEoK5OeCe/192xtLlEFr77H6LuHGNqhvuAMSsNW
         jjZ0XEbS1P5Xjy7L4MKNn6jCwFOM/wC0bz2reDG7U+54DW6BY96a9O8C2yepwaj6qp7k
         TNuJcFDaIblZhBiACRk7WEluSLEf5Jt7GMGMmkekjgntgtctzqtv6j2pfIsygzmDuvQ3
         vVK5EG8IyAVmqQBpg3NbCbGa0uA+v58buqur9NddJJ3veqKwvUX2AvPeG4TAg9PlqpiB
         Twl0336v9iesg9Nd4xEi9Q5HpEMNw10EloixmHaZpqHCbDVg+oi2gSLl5xVJeqp4PgrT
         owMg==
X-Forwarded-Encrypted: i=1; AJvYcCXiwiWvCk+cQcIl9BNeOmXJDWEoEbustMIS6MpxVW7QT5aF1835eudvxjXl2REZe0nxvNIbTLhWiT59@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ2Ub5qeTgKlECqQ/i2B7sV1tvOWojj4ab4nEQTm3x39QRPxBU
	sfV3aYHvPa7tU+DpoQtMOIUIiQhOf03LzueCekiU/qL6I9ynhXOuWOUC
X-Gm-Gg: AZuq6aIc5tDlbv+Pnn02jii+Dm0bZbdYDfXDQxxEB6Mo0TKVX1qBMS6FyVc84V7VFA3
	5SLvsi3jU6t4QK1y0pCeomjNfWiw6nFzeGx/eDyZ7840/0hKZ4veAcRaXZMgHPQp4xHnQX7Fq9h
	3sScMTjtFNA7M8moE0jgfcKHh6t/7vFK4abfwBNuxfL/XutK/43jTJ+fL1vUIJlaBm8BeeAy/SZ
	qIwHMp0rB40MnS7ShHnZd+0gOxucJNuiW0mtYeTuff7Pzbm2GZaQMZGQEqXSZ92ZK1dQbl+182R
	vbfpHw4fuRnDR0MP0tTXRmkS0TXhZCpa+Idju5ZYj9PBpwnHDBY3zElmwaOuY6Enm0IeaNniHdQ
	+SEM2tT/c3DRd9oOq4tUjIjfuYUycCJSnziYghnNgZkOhSDkZ/ohmCU4fIPm+EE9ql6kcLPkPR8
	lIPfrMc6ooI4itNgSiou9ho6FxB0NEYSb0lYd8lasuHikEKDakoBi5y8BMNts7pqz9adBg3jS5j
	b1PLpqebpdAO3GTJh8deAEt2zA7
X-Received: by 2002:a05:6000:2c08:b0:432:5c43:76 with SMTP id ffacd0b85a97d-436180533ffmr8287887f8f.39.1770285713719;
        Thu, 05 Feb 2026 02:01:53 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4361805fbc5sm12025466f8f.34.2026.02.05.02.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 02:01:53 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com,
	primoz.fiser@norik.com,
	Markus.Niebel@tq-group.com,
	y.moog@phytec.de,
	josua@solid-run.com,
	francesco.dolcini@toradex.com,
	maudspierings@gocontroll.com,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/3] dt-bindings: arm: fsl: add Variscite DART-MX91 Boards
Date: Thu,  5 Feb 2026 11:01:23 +0100
Message-ID: <20260205100125.9095-2-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260205100125.9095-1-stefano.r@variscite.com>
References: <20260205100125.9095-1-stefano.r@variscite.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-262958-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,norik.com,tq-group.com,phytec.de,solid-run.com,toradex.com,gocontroll.com,variscite.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,variscite.com:mid,variscite.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BAFBEF1277
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Add DT compatible strings for Variscite DART-MX91 SoM and Variscite
development carrier Board.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 336669e16d7a..4c200a67600e 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1524,6 +1524,12 @@ properties:
           - const: phytec,imx93-phycore-som # phyCORE-i.MX93 SoM
           - const: fsl,imx93
 
+      - description: Variscite DART-MX91 based boards
+        items:
+          - const: variscite,var-dart-mx91-sonata # Variscite DART-MX91 on Sonata Development Board
+          - const: variscite,var-dart-mx91 # Variscite DART-MX91 SOM
+          - const: fsl,imx91
+
       - description: Variscite VAR-SOM-MX93 based boards
         items:
           - const: variscite,var-som-mx93-symphony
-- 
2.47.3


