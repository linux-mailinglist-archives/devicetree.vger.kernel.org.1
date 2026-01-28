Return-Path: <devicetree+bounces-260354-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JQHIQr2eWkE1QEAu9opvQ
	(envelope-from <devicetree+bounces-260354-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:42:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27431A0AD2
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:42:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C05BB311907F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 759EB2ECEA3;
	Wed, 28 Jan 2026 11:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LU4q/swx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0532FD1DC
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599842; cv=none; b=GBLEWE1pG0j6DAYv8h6RmdOeWppis6C6EWbfy6sNoVnqV2EtH/xaxNWPGhvo5JXYaeel9GKqDSXfz5KgKbJaAoZNfx7tmj4CETSUqzf5ht0C5ikZJkAFGyEJdqbevsoBxdm8yqbjhu/prDMjhoeoWAzD2Uds4asdaYPm5N9F7cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599842; c=relaxed/simple;
	bh=byVW65zPltQ7vedzB43Li2CtZrKc+x6FuEaSKJSESOU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XSghjqz9ksjDHANqza6/zM/ImfRO5A2OCLAx98zqcqqL/vYqC2ML2U4qQJ2pydjKb7+PEDC1AlQvmh22RE1B4fnPy/5YjSWUO0RHz1/nF7cpoEJdw3ON1CxgVx5bIMQHiw4YsyTRcxL/q2IsT5jtac2cnEDybGS3V6wUerPp2TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LU4q/swx; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b86ed375d37so792068366b.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 03:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769599838; x=1770204638; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u1Qm6tXnDfkhnc+vPFBLjvwAKO1y0Lkh4JNke/KQIEE=;
        b=LU4q/swxw/AgQIFzaZ/op+ANouAAlq8bT4y/dn1xL5QNSPDX1k1w1EweqLoOpvfPem
         xBspzj5LSJL8smuzb8nU1DnwJ0mNgb02sFRqZmocwcdBpJ/kkb5/UNknVZOn5RADI6Vj
         lqc+3DpjgA7cu7cklKdAo25SX9I/zFiT1fOzxCF4BrEkYhJzdHd+kIF2Yz6Qzu9lUa+C
         mHhWuE6vJTqaYLrarhC+P014S8Bg0Gkvts5qdum7Wvbwr8hoi6dGHEZZNkBvUANm1hel
         HH1eJrXeK+uIfPinktL0bs05jae2C6NX7zAeN/d8smoxNeL10SCwD8P7BM1mTGn7FdPx
         elpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769599838; x=1770204638;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u1Qm6tXnDfkhnc+vPFBLjvwAKO1y0Lkh4JNke/KQIEE=;
        b=lo9oiHLJpNIFg87tB5ZzK3nH4JzmYnIicp0XJwutfz35heYTRwdl8BZDl0b08Yg/oN
         Wo06QqIhlDsVQB/K5GCKy/BRCWvZ8S/FhNkVx2kUVGK3tmUL3Me8ca6NYKYzwKHwyXY9
         cRB6ZpzFnJJ0Fdkms3K9l1VlcckB8vmWPLQAPr/Edrs+z9HGUpUdihlyympV/me2QXbj
         wlmld6rnQIvsaM3++YcT2uCNXh2roqpTIKXDzXC7bghL6IY8yHAXWaUM4asd1W3b0RdP
         62lLCnikTFdSYEcqo9XkWbDdw5w4Lpw6WUZK5Sztq2taqErxuo1Eu/VOGhy7TLxfhxjP
         Qbjg==
X-Forwarded-Encrypted: i=1; AJvYcCUse2Ki2B86sdlmZpPlEk8xQgTrm/UrhV2ppVeuztq18PkVnBb+tZArHe6bIb+iVeB8bTTgs7ydjkWc@vger.kernel.org
X-Gm-Message-State: AOJu0YxSvesgAcBRBgHYG0zMpWx/BEst6vgMZTNmgZVWOrwRJOalPMEh
	Lu8anHqMRzg44bf2Wa0g0uRCxUpVWqhY14LmuVMerIaOAEAsFwfT42k+
X-Gm-Gg: AZuq6aLJmUIc0N5nywuyhuwcz6rdxAboZM0ohxcpqoWezv75eWIm/39wL5jB5/2vei0
	VFTn3Bzv8NM96gTLpYQ71bP83jHZrBsRSTBwLEA/sqTvFXK4J43VJhOM0KBBdvpmDcPATJg6jRX
	d/qhhjbW39h6nir8GjOmGkkX5JDKlPuhjxAFXzMuBx2x6fbpNj5NlDrsBL04h4w7Lgiptnf2gkx
	8GlrVpzGiNWf3dVCbTqGKccauWW0rvCbeTe9DoAcdg5wZmIbqjuHmYzuUAt5vGk7VoFq6IMkfVW
	w2B1fTFY5ibgkhg18/BsPVAJJAUg+xaUzrPzicm2EsORUPPRwjtELp3ujTAIlIkyY32d3ElzlS7
	buLQJhDwVnt+iDF4kMdot0uKdU2kM788kAcXN/RUjTbsa92lPRpQgUb2k6UFPFbAmICDxWoJZV6
	yD/UEIynufT+ZzgJy9AuJogblfwzF0QtvHZFU=
X-Received: by 2002:a17:907:9495:b0:b8a:f225:ede8 with SMTP id a640c23a62f3a-b8dab2fe310mr355691966b.41.1769599837383;
        Wed, 28 Jan 2026 03:30:37 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e29d:6e0e:72c1:d15d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm114400366b.46.2026.01.28.03.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 03:30:37 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 01/10] dt-bindings: dma: rz-dmac: Document RZ/G3L SoC
Date: Wed, 28 Jan 2026 11:30:20 +0000
Message-ID: <20260128113032.337231-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
References: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260354-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,renesas.com,microchip.com];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 27431A0AD2
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Document the Renesas RZ/G3L DMAC block. This is identical to the one found
on the RZ/G3S SoC.

Reviewed-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Collected tags.
---
 Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml b/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
index d137b9cbaee9..e3311029eb2f 100644
--- a/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
@@ -19,6 +19,7 @@ properties:
               - renesas,r9a07g044-dmac # RZ/G2{L,LC}
               - renesas,r9a07g054-dmac # RZ/V2L
               - renesas,r9a08g045-dmac # RZ/G3S
+              - renesas,r9a08g046-dmac # RZ/G3L
           - const: renesas,rz-dmac
 
       - items:
-- 
2.43.0


