Return-Path: <devicetree+bounces-271060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2D5IFBc5qGkTqgAAu9opvQ
	(envelope-from <devicetree+bounces-271060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:52:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D07C0200BE0
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:52:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7816C303EC04
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48F66318BA6;
	Wed,  4 Mar 2026 13:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dB0FOAvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7392FFFB8
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772632131; cv=none; b=mj3Yexmf1NjFwcGV/zSUHIC9/wzTV0oEK32ByUijlzGdOalWI80CNW7X/NMlTRfaztqTS421dERTPKMnIP8aSpal8vD1+myMmLEHp533k7HBX1u1HikWXMS48SxHj+N77WMA/CYK/HXKE0lJv/5hwUkqt5WFRNpBFqKVA0Bn160=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772632131; c=relaxed/simple;
	bh=6OEGsU2MLt4JMocYh++a3wWmyrukETDkXbHMmWSVQ+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KMXhnVC+eWpLBoXRcjIVM2wtL5+kaCiMlq4bIiJcV+Qdxf/NGB53A1Q7n05xg2ZloFWHvbmR991m37QL0CYosbGxocGscnkfK934OZWGnqsWCSHO7a3YrURlFbEWO/3Njk4egpA/y/aZq9rn5+dMBjXbdpsbv7wQinjIQBwWfyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dB0FOAvQ; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b73f4ab4so3594029f8f.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772632128; x=1773236928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h7FCkxbz0uuB2WpYGMfhNmyuLtfIktURdr7cmvLKcyY=;
        b=dB0FOAvQ0/9xrX1x4w4t927xlRjAkfOCoUdlE4SudgSPpU5AQRjTuCONNpBKH4y8Ye
         wQIzbHpfcMPOzH5iyRQGcWFuadkpqHpTvQxGw6Z8Wj+R3aS3r5dFYcvZi7bFk8h0zaSy
         TyVmhYKXOIOHNw/lis5gkGV2CZ4xQw5iwUExNSiPttt+cyXnO+P4yi2V0ka87GYXauEW
         +ls1ybOTLyHv/AbNncuFLG/sgm00wCyoGCUsxdENV/U2m7TwUbT5SfsyFoolG3Cr9TJl
         /QL6l0nl6CJYIaWvi/XHG/v9iWku/iUhQpxPZhP2kbDHdelSEbtxwNSpfhcoyZZ7VyQp
         migA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772632128; x=1773236928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h7FCkxbz0uuB2WpYGMfhNmyuLtfIktURdr7cmvLKcyY=;
        b=sCCWPYHb7GeBgnvPd8Vmb1HQLQgqUm5uYLuzzJAeawx/hN2y5AgZwjnDlSa+EF+AnI
         9GbIDUA2k3uuxmgoXjIvSC8Mx6aWM12XDzxPgTx3XfiYQqCvjS4JKxADEiYrPncgMOjK
         AvfUfRDRt/3lzWy1Uf+D30ohdBm9f9DpWzD/pFJ3SiguXToo7WWKQ3jQioBZHyZGipGG
         E9HdZAb6GVjlRqpagL15NwH7lWeIoso/QHnO1CpiclwZ7sMEz8CYkOWPxbgGsgb2f21n
         y8Od5UljYqYEN2emdbQc+baOa5DnshZje3W+BR3QvvPILwcc+yuQR1s9odEkdAQfxUER
         g0IQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoCzfUsc5HIFfcdkuXdd0b92pPaAzxUKQ2Ayd0FHCz1qNBumABUcShcMI4iwAYoiuVJjKcaG4CrUts@vger.kernel.org
X-Gm-Message-State: AOJu0YxOnyeIRAS3N5UXQj/LdNZTolFR7h0gAvM5VD/tnVW9Ebup4sZY
	dU6Ka3YVRLANQqwgND4GGpKSzs/n6PIUKCneDW7/ZQUkItcye692Qp8o
X-Gm-Gg: ATEYQzwQex4FytdUm6dB5FMzPox8t6/v2uazcGuyMD7UxJn+H1BPbbf8Lg8n3gReYQv
	E+5wsLxi4AoBCw4WxobYvCnmeflI+CUQi+I2tdLuY5Isy0ByEB+GSSK+MXDEKpBfT4kpYRcFJ94
	d6Ud+T/D7+sWEUnd8Iu9bpBYgG9OngOV6OoGqcVwpEGGP/X640+KEhkNfow6s312uraR+L63YVZ
	3+gdVmqPxF+pUlkYflSCWnq+Rs+4+cjeVHO4NDk02QppUauDIFRIZ8FmffqTNgCJtZpa/srchss
	tFsMYp4AGdcrcly3bKKni38HUcTudb4lsXZZ6tA0ZVNwFlfz6p62Mb6B/I6nycs7HkYjRG+AD9H
	To079TEHCAwnScKLOo7nCDCYQL1HtzBuYXYCMsogYL3seI23/vhfM/nebgwIY1G6b+iQJwzOlBP
	2mUOzO9tAVaxl4TAEH36tUMc5Fq+QVAN+pN31keCRP4A==
X-Received: by 2002:a05:6000:430e:b0:439:be82:1fd9 with SMTP id ffacd0b85a97d-439c7f99994mr3850514f8f.12.1772632128092;
        Wed, 04 Mar 2026 05:48:48 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:de3f:f927:40ff:12a6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439c65e0b23sm7105229f8f.32.2026.03.04.05.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:48:47 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 1/4] dt-bindings: gpu: mali-bifrost: Add compatible for RZ/G3L SoC
Date: Wed,  4 Mar 2026 13:48:36 +0000
Message-ID: <20260304134845.267030-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304134845.267030-1-biju.das.jz@bp.renesas.com>
References: <20260304134845.267030-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D07C0200BE0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271060-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,lists.freedesktop.org,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,glider.be];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,bp.renesas.com:mid,renesas.com:email]
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Add a compatible string for the Renesas RZ/G3L SoC variants that include a
Mali-G31 GPU. These variants share the same restrictions on interrupts,
clocks, and power domains as the RZ/G2L SoC, so extend the existing schema
validation accordingly.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index db49b8ff8c74..9db9f84ad964 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -26,6 +26,7 @@ properties:
               - realtek,rtd1619-mali
               - renesas,r9a07g044-mali
               - renesas,r9a07g054-mali
+              - renesas,r9a08g046-mali
               - renesas,r9a09g047-mali
               - renesas,r9a09g056-mali
               - renesas,r9a09g057-mali
@@ -150,6 +151,7 @@ allOf:
             enum:
               - renesas,r9a07g044-mali
               - renesas,r9a07g054-mali
+              - renesas,r9a08g046-mali
               - renesas,r9a09g047-mali
               - renesas,r9a09g056-mali
               - renesas,r9a09g057-mali
-- 
2.43.0


