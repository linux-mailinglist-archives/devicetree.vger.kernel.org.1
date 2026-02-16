Return-Path: <devicetree+bounces-265649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGqGALVskmmMtwEAu9opvQ
	(envelope-from <devicetree+bounces-265649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 02:02:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 902F2140884
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 02:02:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C84073006812
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 01:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE1DD283FCD;
	Mon, 16 Feb 2026 01:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HjMFaUxe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A0F27055D
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 01:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771203759; cv=none; b=cscCrxvdYw0NJcBEVTzkhzFo2N2oUB9r98x2WTcFMaGrG9GrvOtT7rlpWvv8FsdFNljG18oyTfU4zY4L0ZqFlKjNUjQHKUiLRyGC6mvqoW5u6ZuQWr18qzLGxbVAkwcfDkTm4zLiLJYfnWKqLCxFtAHdsXyDfZWnn6E/Jcbr71k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771203759; c=relaxed/simple;
	bh=U2VuxWThVNBhGoMraLdk+EpWot1uazT3JpHMDGD/vmo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=T+5J6mGt0Z6wAl5VGStn+aBeHTp+di4MyWA+A6W5inVwfPK9Zb/y/kWzCIpKQpXLKgox2bRG3+ARYfyovcF9NS5TdgjKhho8iUUAx/Xx1h3oTzJU6O4k1OUejlAFDV65HSYceCD6G/f4lFWSBFc+LkrS45MwdVnAWSqbpYSH1pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HjMFaUxe; arc=none smtp.client-ip=74.125.82.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-12721cd256bso3305884c88.1
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 17:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771203758; x=1771808558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gcvwyl4RzaeXLrbPRMjONGomj+VO9fOavqp+iR5Rn04=;
        b=HjMFaUxela/AZkzDFXMEJ0SxwIpTnoGZQS7eTrgsqv3gpu2EAniizGkjSeAOMyxiNG
         McJqQ85wlOa/ph9TNKCSaN8AxuAzJ/9X6Q5uKXfQXpwX3IQbg2TH5LTvBTA2XHCftjcb
         55oSvCDuTy0E48twG5apCEq4RYve0s8DApV30YcTUmawX2moIVtnp9uXW9na16dHNn5b
         aaPsXu0NERBZObMuEzzctT7Ij82l7GA1U1pYYBGiT42YbbhrGtCLcTjN3zC0PkWbN9+I
         YfQ+jc5+yZXEeFwq8WA6B0NLaKSOslbcIB+0ICtFGQ14xzP/tS9IoR7m7bx14tAo0+Ao
         mQ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771203758; x=1771808558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gcvwyl4RzaeXLrbPRMjONGomj+VO9fOavqp+iR5Rn04=;
        b=er5tXDzLJn/mKnFxa4m9NUu7IeCfG6DloSZjh5ePPknWkhY0rjzKJIgdbuR3pO7HUh
         2gRqDEIdlyBLFKNpPE/mMuu+3ayEpp3XW3bhIlHtjKOWdfLhDtihoS9vVMi6ZMp4/CRY
         qm1Vs/5ktZeEhxQF+2AmFdLSWctDUikgcITJPM4XFr2pIVFRAzwwvPAyGBfnTr9UBH8h
         i4wGKZ8AGeTCgAAXj6bnGNVTSXK2xWp0yIL3JzOj8CmkOEYSE9LMzLjlYsSiU5wL8wQ7
         MiiEZkUlkomRA2HOiC66Ruve1o7BG28If0B5x6SMoGSh4h16o6T6QsIDgyqBw39p37ai
         DX9g==
X-Forwarded-Encrypted: i=1; AJvYcCV1MrSi3Ey1K3+wrh2xQkcqHTmGlRLpkjRZGFl5+kZvQnCGG9NOeHdi+W8V/PO/oxwSci+6Xg63k1Wn@vger.kernel.org
X-Gm-Message-State: AOJu0YzsUd9X39CCKtS1aSLpJ7iMqDAGIE9PZ4nwuvPMRlTMK3ltnHq/
	zteCUYMMislfF4ximlhiKRIDChHTmc2t3/35Awoce1i10J3waL0LLc8B
X-Gm-Gg: AZuq6aKKRtzaRueAnCTQDtrjqzlA0umenoDh6Z97ZCIEldSm9AEoOjRv7OGCGj7S5h8
	noXosuN+WpNJTkQMZ/AGnQSs09j74ISbOFwoZm6ti63cibC+RHVQHpPHqpw8MXxPNte1BsWfKWu
	emhqmf9w73McWWX3f/9i/ScyP4+pUev7C/xbwD4z/vuImdZcS7h95YHVttcUzM7x4Pii+8lPdw0
	6slZmMBG8gERQNpuvRzvv7gNXeoPSQD/CF63CS4O5o9n5L90JW+x9+gEkgqOZGMdO+6YAEgx8rl
	c/aT41YiH/HYhWCGhI1p2ISWxjQJPl4DNiukshvf0GV4Nh3Le2+1DyDoBvPm98+lcvaoEtwJsIt
	Fha23Kle0531GnGeQFqfzXQ/99Zq6o3XRgfc9ps0fS7PXgNclXv7dIsSIOe8t7ibJ5ISdAICcp0
	xVJgI4ma6s4lKdzBeHnEhbGmdDP9SA02lW4QoFimL4Z9Bw0DLpxn/2BP/9qTlj3rQRWLDVi3hq7
	wwO
X-Received: by 2002:a05:7022:4a1:b0:11a:44d1:533a with SMTP id a92af1059eb24-12741b7095dmr2491280c88.12.1771203757592;
        Sun, 15 Feb 2026 17:02:37 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:cd7:e7e8:c526:2074])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742cadb25sm9158160c88.10.2026.02.15.17.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 17:02:37 -0800 (PST)
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
Subject: [PATCH v5 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation board
Date: Sun, 15 Feb 2026 22:02:18 -0300
Message-Id: <20260216010219.2131484-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260216010219.2131484-1-festevam@gmail.com>
References: <20260216010219.2131484-1-festevam@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265649-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: 902F2140884
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC.

Document its compatible.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v4:
- Use compatible = "onion,omega4-evb", "onion,omega4", "rockchip,rv1103b";

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..1187d4743370 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -802,6 +802,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion Omega4 Evaluation board
+        items:
+          - const: onion,omega4-evb
+          - const: onion,omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.34.1


