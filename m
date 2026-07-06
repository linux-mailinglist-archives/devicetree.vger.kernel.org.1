Return-Path: <devicetree+bounces-321536-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k+nlDIgJTGq2fAEAu9opvQ
	(envelope-from <devicetree+bounces-321536-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:01:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB32E71539E
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:01:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=nJsIkTBE;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321536-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321536-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 24507303AF23
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 20:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F40C3DCD9F;
	Mon,  6 Jul 2026 19:59:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2976E3DC4BD
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 19:59:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783367973; cv=none; b=k2JpmocJCcKTopEAW4xPD97PMoyz0DBeVLX2JBfAzRnv4v+6Qn1aUMTbm8xJKKWj8UWvPwtIKfbj3Enu3ZbnltvKROUnUEN/oy/vkiKV8tiDQGyjGR/t9yRk5np8qg6zchrnNiVV4GTPV+9dDbYAE9UyYGUELerphmIMpPxIaTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783367973; c=relaxed/simple;
	bh=ZcGfbAq4udlMGUkHha973st5OT0QKeuHdOkUwEkoq5M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SSDS6b7gOiaBIg7dECOS0Swc2mTibUMa3cmO8rLooksq8U6xMeLNVvn4FyZX2UXEh+guhxiK3M/kIdGJfyb8F5u4VZjiOMlVpV9wV1M1+vwalh5AJJVr5BNW2IDPkbqpfFuoNG+6S+peIckRkWVZlN/Q1LT182p7Pst5CvGU83Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nJsIkTBE; arc=none smtp.client-ip=209.85.210.53
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7e9eaf04bfaso773589a34.1
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 12:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783367965; x=1783972765; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OhHQ34ucfgP3gbwbph5XNn7ZzhoehEkZZGHdIdb2gNk=;
        b=nJsIkTBEdWhOoxc3JlwmBGOMm6QH6YMBIFXC74JG/YVphHxMbKrkv+CmORgzAl4n6+
         T9wFfiaSeXg8PEO7RoNzxHi8702BGNHM/e994BFTv8S1yaWgtYS0KfRr273fO5uDzcOd
         qxbZJaQbcwHG5qsRw8a/wqcLpyiyk3ACxYJLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783367965; x=1783972765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OhHQ34ucfgP3gbwbph5XNn7ZzhoehEkZZGHdIdb2gNk=;
        b=buX6uFJ4NVAaLtkvHSH5IV9RW0Rh4n5wKuA39BI9lqT3P9vNIzI8zfSsqfxkcLAlsE
         ustHyg8MuTjCbc27bYfMakJV7gQn5ii/FH03TigvfQVn9M2waEFhFHWO4dkk3FnFUHFe
         u1zoi/FAQsRvsZaUbPOwipShYm4aBtEh3mIavhOmGlbe1q22bmF+1AExAdITXy7usnQb
         MAsC/SqBYpYvt59A+xMsCyBgjAkojvkZ/rAFZrxuTbOOlOBXH5To5KIzzH0uOWYhjTKN
         DGONGDn8T9RJ+MFwCyHVlXfwpzf0Pmo71NXXLyEtAbGALKpJk5sNp/NJmONMVDvc3Xav
         wBew==
X-Forwarded-Encrypted: i=1; AFNElJ+xO8707cfb3w92iAf+PInS7NgKPcjrgTrqKZ47upw/5klMl1f/PgIRsCq7FHpdOb2tggrKACmLKIF4@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2KHQJWNVtfjLA8jfkJ6Mj/YFwiTX5mjACuLJ+djmsKl/o2f29
	ZFaf11xd0ijsDtUd9j+3CXPsBYradGaXbDtIvo+xZY3IpdcuiYssAigN8KXinStNjA==
X-Gm-Gg: AfdE7cnACwahr8iZM16Ig1buRIzZFbEGTG5GW7TXS2ri9Nut1wVv9a4PBoPR+PUx2nB
	564EcpjgGdIzu9NoG25wn6XwQ36knOucOj40duOg6SHhA8QXt4PQBHwV3Wn2Tpq3huGQuG2p6A7
	lj5Hc96/sEHZ92JWjLuQdNJ2uGaW3AwFM8jcSE0rwGO+xf1p89SaELGDdMeCx6YLCHZ1tc+lIkA
	DViZ3XtlGV2V0Pz+WIZCGnrTh0yWCqnXeF9oG7IKWphAeyziqxv0CHA6mFf/vSZcoTk/p81VuNs
	MqVw8lOL6n8M1kiCzVn7R3zMqYWVuQOjmGDwBIPWX7ncyTEAwS5wjxMoDVHienahY9HBhJj8W5B
	TiJXp6VQwvNkvp4S4K5GStpoRsuCpaac/zvFTq33qL+mchxh84OH2CYG0nAwe36WbQisGLkhin2
	U1vIkelaI=
X-Received: by 2002:a05:6830:82c4:b0:7e9:fc62:1e0d with SMTP id 46e09a7af769-7ebb233afd1mr1278586a34.18.1783367965005;
        Mon, 06 Jul 2026 12:59:25 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb542d017csm12161834a34.8.2026.07.06.12.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 12:59:23 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: [PATCH 06/12] dt-bindings: serial: snps-dw-apb-uart: Add RV1106 compatible
Date: Mon,  6 Jul 2026 13:58:02 -0600
Message-ID: <20260706195818.3906949-7-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260706195818.3906949-1-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sjg@chromium.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-321536-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:heiko@sntech.de,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:festevam@nabladev.com,m:linux-arm-kernel@lists.infradead.org,m:sjg@chromium.org,m:conor+dt@kernel.org,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-serial@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sjg@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,chromium.org:from_mime,chromium.org:email,chromium.org:mid,chromium.org:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB32E71539E

Add the compatible for the UARTs of the Rockchip RV1106, which are
compatible with the Synopsys DesignWare APB UART.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 49f51b002879..c0d0524458c1 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -72,6 +72,7 @@ properties:
               - rockchip,rk3576-uart
               - rockchip,rk3588-uart
               - rockchip,rv1103b-uart
+              - rockchip,rv1106-uart
               - rockchip,rv1108-uart
               - rockchip,rv1126-uart
               - sophgo,sg2044-uart
-- 
2.43.0


