Return-Path: <devicetree+bounces-314131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gYi4OZZaOGqebQcAu9opvQ
	(envelope-from <devicetree+bounces-314131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 23:41:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E916AB9EE
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 23:41:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=o26ZswIJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314131-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314131-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 963BB30065E6
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 21:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B5B371D11;
	Sun, 21 Jun 2026 21:41:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE24371CE0
	for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 21:41:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782078096; cv=none; b=kpvWeDskIesIGq4tonNTerxYWWGBe7WxxEqpSN6oxwGz8EmYLrUOdUlAiYdWGxlKVd4ySG+tW4RKCM9Yey28uajTbnv2DoEdMSdoWdQl7E3lIcZf5Qokj9IN31uwjxaU/Ccvu6ERwVlCuje+0eW5o4yMc7hpzAlfeFDJZQwAlas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782078096; c=relaxed/simple;
	bh=snXtiK6PEmUwjwB87Qy4uEGoHKMvUL4i+B4X0NTiCQQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bDsoNndPtZjIK3DayFHuqx7aTDdy/iEBl2rNnUNGo9kLYgMILZRXAQB2xeZn91Qw2sxAxyyoivUIBX4z3+e/KEVLbAEovs9lLbIxg980vdbdk91nDQWfV/BiK4o9EmEtCwimGxFD9n23JHpAdVN/soU3OTxtJFBAvM6agi+3U8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=o26ZswIJ; arc=none smtp.client-ip=209.85.219.42
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-8dfdfe27ba0so30725796d6.2
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 14:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782078094; x=1782682894; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HTAQ0YVnmRPUTpM5kMc2Jmb3ZZIxno5dgQysePNdwmo=;
        b=o26ZswIJrAwUEk6UvAEpQBKBZPCC8gOpjs0FWoPCy7xjCOOFQWDpPy2gDxdeXb9UEf
         Jfn0qQPPb41q6EUxw2RWOz2gwxTi/Ywh0XcjOPCqCpAIdMeYHwmhCNjo2LXBPSdWU1xQ
         GkWXjb3/9Lw6JsOSrkh8Ru+uT/qpES57PnxZAn2Uj97/ylwkSJ3nOdMd85bTFcP5hMok
         RHstueO5m+4KoQ1E6mYdiDCX+NpAbtRGN4DrlZSF7/SUyufCnp/T606DN2R0vPa/OQii
         9uTqizWOBGxfFh0WrxHmUb8ui5B/L+67LOMHigu4LCfsbJ19Ee3OrrviQdEjl+RN5F2F
         n2jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782078094; x=1782682894;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HTAQ0YVnmRPUTpM5kMc2Jmb3ZZIxno5dgQysePNdwmo=;
        b=ZrfliLKteJtRb8748RAL0R5EvqGUOUvtf39gz+EUh73Dd8mQfCo0CGo4gWWvCDuB63
         xRkCmix3dxVe5b4KghVMNX945wDINkiZRxXlzxSgmja61H5ItLFajVpGZQScV772HkD8
         mWStK62AVJPuNSAkQtTr1sUcbULKYjXQaMMxe9rGJD4Sq7eDWWG51Jub29n2284nmTfL
         Ha3QVG+50kGTLsd9LnDLtKvRH6zycD39TbuT49TPuwV/zrgnUfB3pjFuNGagDYvCGGxN
         rOOuNqADYH4/T05vMYwkGJK5sw08gRoXGUjyDvp7wAKesYd/QdaBJK32yOidFhL5wPta
         xKWw==
X-Forwarded-Encrypted: i=1; AHgh+RqituMD4//sbmKp+wcooebpRHv9eEQnXhahyYSKNDpsVJwEjrdQl4Bv47u1fmCw5ggEshSBb87XZy3L@vger.kernel.org
X-Gm-Message-State: AOJu0YxHRrPEWbMsPGSDJnzBqRH4yFGS1GILEnKx3OW3tIsyyWi2mdWe
	BD35FpvwpuSr7O0SuglchJHYccDcst8F9kNKg1idWnUdHLALmL9paKLT
X-Gm-Gg: AfdE7cmXt+OXhRLMrfNu30/PBJWSLb3FTPbUE5sgG2Mvsm4ZYgVvgHL5Ujo1dVPOt2J
	61F09W3E3n+4vLmWn8chL/kjReuO8X0U9gw4OhnNNffpJmWj3ueQ0ReSdDwO+lHwk0KysAasH9f
	lvC7xnc0gELEMuuMsRtbItTIkD/QDUC/ES0LRYDNgltLZMzY/KrdBZPeDts5TetOBDKSixequHh
	eJ+AEKZiPVneqzUraBHDqfvhbzFkAToMUAGxBw6F9/Zk67HwnSW9MJpswKabjrBY/cLWYpnuyEv
	FfLoKgNoW3ZYYHR/Z7Yz540+awrpQO/al2YdfNK7+Pp7YyJTee1EeeJQ8RGjvP7jx9t7p8H9UD1
	z/+n8b83tHBFcK4h2jK0oYzSNK6uL4PKwzSC93aw0uTysv9GHF9vZfbbaoPtiscocdyWS9K/IV6
	s21yFxG7CMRGA9fQ==
X-Received: by 2002:a05:6214:124a:b0:8a1:8b0a:6678 with SMTP id 6a1803df08f44-8de415cc13fmr219484556d6.31.1782078094430;
        Sun, 21 Jun 2026 14:41:34 -0700 (PDT)
Received: from [172.17.0.2] ([138.28.231.64])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8df81cde9ecsm76274676d6.24.2026.06.21.14.41.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2026 14:41:34 -0700 (PDT)
From: Yuanshen Cao <alex.caoys@gmail.com>
Date: Sun, 21 Jun 2026 21:40:57 +0000
Subject: [PATCH v2 4/5] dt-bindings: dma: sun50i-a64-dma: Add
 allwinner,sun60i-a733-dma compatible string
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260621-sun60i-a733-dma-v2-4-340f205891cc@gmail.com>
References: <20260621-sun60i-a733-dma-v2-0-340f205891cc@gmail.com>
In-Reply-To: <20260621-sun60i-a733-dma-v2-0-340f205891cc@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Frank Li <Frank.Li@kernel.org>, 
 Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>
Cc: Yuanshen Cao <alex.caoys@gmail.com>, dmaengine@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314131-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:Frank.Li@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mripard@kernel.org,m:alex.caoys@gmail.com,m:dmaengine@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:alexcaoys@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C2E916AB9EE

Add `allwinner,sun60i-a733-dma` to the list of compatible strings for the
`sun50i-a64-dma` dtbinding documentation.

While the A733 DMA controller shares many similarities with the sun50i-a64
DMA controller, it requires a specific configuration due to differences in:
- Interrupt register layout and mapping.
- Number of channels per interrupt register.
- Support for higher (32G) address widths in LLI parameters.

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
 Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml b/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
index c3e14eb6cfff..1cc3304b7414 100644
--- a/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
@@ -25,6 +25,7 @@ properties:
           - allwinner,sun50i-a64-dma
           - allwinner,sun50i-a100-dma
           - allwinner,sun50i-h6-dma
+          - allwinner,sun60i-a733-dma
       - items:
           - const: allwinner,sun8i-r40-dma
           - const: allwinner,sun50i-a64-dma
@@ -70,6 +71,7 @@ if:
           - allwinner,sun20i-d1-dma
           - allwinner,sun50i-a100-dma
           - allwinner,sun50i-h6-dma
+          - allwinner,sun60i-a733-dma
 
 then:
   properties:

-- 
2.54.0


