Return-Path: <devicetree+bounces-325885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JkXwAxHLVWqgtQAAu9opvQ
	(envelope-from <devicetree+bounces-325885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:37:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A38751339
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:37:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=bqVw0sOf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325885-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325885-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11F6D306B256
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 05:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8036233F58E;
	Tue, 14 Jul 2026 05:34:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5BF33EB01
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 05:34:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784007299; cv=none; b=JBmYH5lqdrCK/gFo95BcK22ColaAiWGVei+8YyGoBVwMpp6WgF6uWcaJtewHoai3DROK8aFAlVnUqmdRMfNrt2K3v1vf9UBke6pQFk797kRZReyPZakLqu7qLNuWntSvuYgwNhNrBlXWp58b80VsZRMNBXlZLQySho+RQGW/WXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784007299; c=relaxed/simple;
	bh=PjeAyVzdrmEPvru5WSS2hywp+olcq5EiYjAbVoPzIDc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Irai8aku2QQm/BL+z4lsXzo/6VJR0JK67Ih2X/JswTgURgVZkhhv8PqVrYnpwJXTZgKdGS7btYkbj4q04BSot1uoxioVC7Pq1Esax2PP1wnnpYu9gdpWCrPiQr9ZxHI+a4ViPELl4dnsGq32jAEKqaeY3j9j0nnQAJ9jcLcf/W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bqVw0sOf; arc=none smtp.client-ip=209.85.215.174
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-caf45fc5202so1568033a12.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 22:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784007297; x=1784612097; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=bqVw0sOfm1KfhGSJA7PI6xz5bPXl3aYh/Uv1nFFjNWcB9mcyRGinFmHG+La2DcuMXr
         PGfVKBPHrk2C70EOnCkZBpbhvRo9BlLvfq649/KZaHSKqIwARuvglrrwKU/g3B7Xfiki
         G53Jl87HIYPMNn+8OwmiDELjCbyzj87xduQfBb1yKure2YVmJsHoQ7RkJj75womE0Xoj
         dO443oG09hsEQlePFqf5m8+GdZdyz1Ko3l6Lk6FvFzbIQG+soMx0D6FGbPfSYcb/EQ5F
         0A0D8OeQu5Ta3RXLEDC138Xs0PvjrDxSigk4POoeEhsVk9BGXuxdYWGYSi61mfjoOaxe
         Pqbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784007297; x=1784612097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=CvP5ydXmtbt5/2MMjC6todLK8jFNJfVgO2WdOxiwAdbPyEMyBM10jgo7/bUi63VIgr
         QJctALbi/Z8oeC493HA3zO+RIvTWJLW16c1ypqsznBTdPvpIl2SDKGXMHtMYCNOkmM7Y
         TwQQoDvwwQZKXcc/8gLeZeXJnfdPXXl84TyeztYlPwj+w3B8ds423FFb8imsSX7rRExr
         OPP1sXCXrqZwOPd6SUgSFERBhsqd5BffMukEhEjeIRFDbe3cI80eSi6kByiI0bC33Bok
         xSWaG/P2RCobKwBIkeqLoi8m1T+rNQBdfcwc3w1W1kSNgNe2G7x0QDFMiUmjtlpTsWi/
         qMDg==
X-Forwarded-Encrypted: i=1; AHgh+RoVGXLrHciF7AALl16kyh30wrTyCuHp12lE/QrYIhHd0KzYFLWNEohkdRKBIRdVh9AWMIybF6VVssaG@vger.kernel.org
X-Gm-Message-State: AOJu0YyhIBWC0BgUObgOPpPiwAJIKXoYPQQXz9mNRIwnMsVcw+YaQbTg
	ra1sZDf+aABGBmSyVOL43tsqTMK9JnIkcXCh9wa7yOZKpjXy4uTA9m8g
X-Gm-Gg: AfdE7cnohVlKWvq/g3O4lLmPNUdioGObD8U1H/NZAL78ukNx7s6nlPX8Hnkyk2QHLSp
	aO/MbHVFjQYJDtrTK634tc+V+rQLlOtwJvV82WuC+eeklYJRPI7g0YFxaHjMWNDqDLDpd2gbxP6
	bjvacrNjQkglA7xEEvLFfWSjLht+HSQuX1jSE+OXiM9r57gParN5Tao3WHeJKerUPV+eDoqm0td
	OOmOSaMna6bxcmQ9SB2S2ipJqmQNmNB8RvTmyY/yfQrDrsai9JnRORSZf00RTArCNBRohyw33r8
	nA+UNL6Ato7KbHpe6/glkBV46wpOihgxx2fOBE6GatOTfWivitxEbSA583lmox2GLUkhjalPLIB
	Kgxfq2AJUvLhVmeaWHIIJNr6R5YIsz+9XrmD2rZfYKtrx/RxCZXTwZAV9F+ZZtwXEsY58yR1UNx
	W7Z7gFzPEsKubY1j7cU+iQ
X-Received: by 2002:a05:6a20:c6c9:b0:3bf:aa1a:d2ef with SMTP id adf61e73a8af0-3c35724a49bmr939151637.56.1784007297473;
        Mon, 13 Jul 2026 22:34:57 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b659d8da9sm131882715c88.14.2026.07.13.22.34.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 22:34:55 -0700 (PDT)
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
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Tue, 14 Jul 2026 11:04:38 +0530
Message-ID: <20260714053442.265587-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714053442.265587-1-hrushirajg23@gmail.com>
References: <20260714053442.265587-1-hrushirajg23@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[sntech.de,kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325885-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-rockchip@lists.infradead.org,m:heiko@sntech.de,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:hrushirajg23@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 71A38751339

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


