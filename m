Return-Path: <devicetree+bounces-325893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tpd6ImzNVWrmtgAAu9opvQ
	(envelope-from <devicetree+bounces-325893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:47:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 125AD751409
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:47:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=AgH1VwVl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325893-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-325893-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1B22630444E9
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 05:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D97832EEE7B;
	Tue, 14 Jul 2026 05:47:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 985FA1FFC59
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 05:47:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784008029; cv=none; b=YtMkfRFF29ddhJ1M1aOE6xR2Ttq2Asv0wP36d8czwgQeGV10YDla0POHj/kDoCHicIU2JczmytM38j7sPcz5x+83Y8TzzvXFY9Ce3XMiS9AKGYMA29rRl8Y/detZNPz+hUdDaSJ9QqlggAsAo3F6Oko3tPIH7KiTuBi2V17BMw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784008029; c=relaxed/simple;
	bh=PjeAyVzdrmEPvru5WSS2hywp+olcq5EiYjAbVoPzIDc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KIsIQa+ZbN9FLEI8RIzIh5sDbM3WS8kiqHwbU0f+9JGIb/RFt/tveWe9bPacdW6ek+nQCNXLFLfiI+5OY4tYpOqcL8/yAxvuK72pCOMjAJtmNurkBIA6kYZRqvJG2Q0ZYQmcmklxYgdQTpA958xx2i1fDLjaYRbWZTwi9cFu8oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AgH1VwVl; arc=none smtp.client-ip=209.85.215.172
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c981c2c37cbso2306409a12.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 22:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784008028; x=1784612828; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=AgH1VwVluJ4+TyWH6EXqMBYV0DUCO/jMAQJqtZoehFeKjW/ZhVL3GdVt/Bxt7+eIGn
         g/lhWTrYFERZA07N4c52VYCsiySpaWC2/ohCu/cDIgnHN4DI5zPQUil1bI/mYLKSdkWw
         pC0tBp3Gh6d5Yk1WnpIDHU4tWcyOvhCE5vivZU5gbULPA4fJp20tnnC5Kg574I9hBJaX
         rSNRaJBUbBpogRWZDFzDeltZjsD1MmitnZWbQSZM2t+MVU8a36uj4MXq/RRtPWW/WlMU
         eQ2dMCYt6ocFBT9AsSpCJgvWTGd+BJXYDAyrcS997KBe4A1qzOkhIB7eN1mqeJqfRRVe
         QupQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784008028; x=1784612828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=qHxx7R/Rtx8hPw1FuQJpvKr4qLfOxNFhbpj52V3Z4FmYneqRg5eQb1K/OcqhIDAa9+
         Ou8U0ViE0Nh6s5wHfnUaC0qPKSKM/EUTJAUefuGvEMLn5lJnAAYD2YSvyg1cDbLHB0nu
         KUCo8Cma67ot/a6nmEhSiBIU60E8cxJ0gbY8AMJbtC+7gBJ6T5gfQyZxKfzboDJt+FNM
         XfkclMIaL0zbk73igSMVn6HTo/NCLr1hui6YszRw2a65+vfvRcon1buvpmx4PdEEXk8J
         PJNI+Hz+1l4cq4bhkM5tS7NPYkk1bITa6UpDxr4C0IPht3ctTqcRpnOFxiPrH8ehlbg5
         AYEw==
X-Forwarded-Encrypted: i=1; AHgh+Ro0JWThwRSazuVKxWMSkf8gBiw66VMtKmvwMRu2saoG97Oo1tzOtIObXgRemDD4LJEcDtsM/EHuOT/1@vger.kernel.org
X-Gm-Message-State: AOJu0YyjMWfj7BqhPuuVjb8pJVCxcWX89zbSqKoFeESK5yBAscFjDU+N
	x+5bgDU3/d6qReGA4cnIr2+WTPVIXntvk8SmJMiPuMjlHtuhk+Td9fjUngf5CDTS
X-Gm-Gg: AfdE7clKwfSMa7la/xf8LzjYhdjLjt/e2HA7x1bXkGnOvfZeIlH92p87CBPf1fTJ/JY
	wzPNGr3Nbbqa3H/Qo12eC49yCNyrIO9mpfxrAJHhn3nZF8SPnjCQYKu2LqKnH+GowB24pYaAp9z
	krA2tgsyD4R0uP8LDiHTTVEFhPCuJRTlfaIaoqtGHkHAD1/yqLiXgrxmclNIkuZAi0NGmaua0eE
	rY8QYreRyOz8IUXOCyqKt2LnG0Rw81biHChGXIOWAhbNgkmoXUctsWprpyfJXAfP6jq9uNiKZIP
	4T3VTQQH3pR0JK59cSFxyju/baOV+qEWMPuQ9hl7skD5y6RS5wCNThI8p8dC5CNEC4fk5JVzJWH
	2sxtoe4ALZMgLMiIsXItmStb+8sY7ZHa7q9p3My3uHg8cLAUc0LlBU9rMFJlFfF6svVC6YU+ycM
	stg70Y2LSwvcsPCzV+HNw=
X-Received: by 2002:a05:6a21:689:b0:3bf:e2f1:1b17 with SMTP id adf61e73a8af0-3c35723202fmr1160592637.50.1784008027983;
        Mon, 13 Jul 2026 22:47:07 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3117483dec6sm77965054eec.11.2026.07.13.22.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 22:47:07 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Tue, 14 Jul 2026 11:16:52 +0530
Message-ID: <20260714054653.266842-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714054653.266842-1-hrushirajg23@gmail.com>
References: <20260714054653.266842-1-hrushirajg23@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[sntech.de,kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325893-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-rockchip@lists.infradead.org,m:heiko@sntech.de,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:hrushirajg23@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 125AD751409

Add device tree binding documentation for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b023d4cc9842..b5a43fd5e546 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1311,6 +1311,11 @@ properties:
           - const: vicharak,axon
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman2
+        items:
+          - const: vicharak,vaaman2
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


