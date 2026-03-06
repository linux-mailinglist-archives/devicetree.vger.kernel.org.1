Return-Path: <devicetree+bounces-272196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gM5SGPLrqmlxYwEAu9opvQ
	(envelope-from <devicetree+bounces-272196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:00:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F28C5223408
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:00:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2DAA306FE8A
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A403ACF0E;
	Fri,  6 Mar 2026 14:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LjjixAr6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF90D38F250
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772809106; cv=none; b=usvQLqOQ/opdIsjx7s+HpCiBCX5S/ze5Zy/r0XnTvK4ibs41pMhrXT4Q/+q9plaZauFkE5dfNQfym9Ky/gyHjj8wED38tex22voQu4vl6OSDjkMDid3SxIareY41uckqiAzeoFCNEABtzkbeqEcFColrczFdA1UkaD73OyoejL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772809106; c=relaxed/simple;
	bh=sKJohp6JSfNRiIYkryKiS5uEOD1WyzlAH27hQZmGU6w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Zz7mi72y5g615uYYTPB3F2w2E/IjPd1WTj6PGekXQvflsfh2DV3PHKjZPyg1jeEgS3TgW8OE7I/9Qhd+aFoguhpPYTj0HSNai8MoUNVZQMo3gX/owgvZtFiEhNPeQdN7aXeCU5y/JxaqjGA74O6da+pVwDojTbSBFppBmehMtYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LjjixAr6; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4807068eacbso78576055e9.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772809102; x=1773413902; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+IlAqrQXAoNRrPdFE8T+jJIC/19vJ3Es0LkJ9ayYBZk=;
        b=LjjixAr6Q1SWC59DDySsjYaoAof4UHRyb6bUQa7nWmHXJ3vBM1uWddvdm9yJtM1g/3
         4y01cm+p4j39EvMkn0E7JYg2eGZrOjO2T1HlccHu4elrcIhamQ42HdxuCzn+Ulyn8Vub
         xNGEDmtBxQ3usGSHaK28iNc11rWc9zJzvVKTkTmjHlzSXt9PebVTUt/Rna4ZcPhHQXiW
         tB31YE7eok07mOmvaJrJ5Df1v4Nx07I/d2HEU/6p8cLxLhF1I3HTrMsRy6DTgEyecCZd
         H9piss4/ZP7sLVY5qiwUcUrwXcLlvd7NYwc0tv/TyvPZ/V3CMIGg0OTcBEZql789oSyJ
         LfIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772809102; x=1773413902;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+IlAqrQXAoNRrPdFE8T+jJIC/19vJ3Es0LkJ9ayYBZk=;
        b=kfBpiSpqBxw2r4eoa6m6GpZO39rpudNtcA+dwl7VkbRm5khEU4loLppqRHPN2TMsZZ
         1tn0WsymNOQMA/CouWEv42oYSnOKUnu2G1sT//vchKqrmsMoQRRaeNYPbPB6KDAfU2R2
         K2I0hvpOQta1nfDXa/NyVPHbvNJG9BBo002gCD/jnnwjx0Dl/Nl1BTu7Pvylx75HP5NN
         2u8WW3n7CQc/M6mVGG3xZFRP0kq3a01wRXnDe77i8ku+jiErKeNcjTnvbdNQ29JSrpen
         5HSNPUY1bDxcXS0ZyMrwpne7Jlj6fT1OVYsch0G/g6vXmdTUO6VNSNV9rXC8qZO8KE1y
         J5ZA==
X-Forwarded-Encrypted: i=1; AJvYcCXAx3uVHDkym3GBa4Aj4LL1dLWWrLxIO4KEXnCU5mC9dp5OxjvjCWhbEzRD/IO9X6HQCAd+946nnzO/@vger.kernel.org
X-Gm-Message-State: AOJu0YyphRp06FJ3zQgMfJ71wUVEgiDjz7ZSBZPXLxDR6l81CCAHJPGw
	1ymEUqCko8OgxIbh5olxDzs1HeBlVyuM4uWXKexP3wPHq2KKnZ5ZoiqD
X-Gm-Gg: ATEYQzz3/fugFuRtZHfBafMa4MTiVFHAgUz5DfMmB7TswE1UKmsq8mC4/TcYWmvdt3o
	VfLdMVmiHd57UBu681h0Cj+yJGbAyKd65N9jEhbmT8BV+w++nDk4khaJTMgBHboF3cmhn2HXJau
	wW9fYa8N3DrIpvL3hECVlUxGNU8ZP5fkyj5ba90379XR4pbPBe9EDJmeJ91R2gSLJmntwUKp8cZ
	lsmvgqY550jAQnxjTaw96C385zeBEStERpJkHYCykn5HxSn36Wgkz+wk/tD64bF4qBLFziTvmdK
	6qT1sSJqrNlJGDu0wzGw1Q4DseeNBk/wCqewwZeb20lqFnzlKuACm4QBvF485NQLOZarKEtfeCV
	SMt5VlzWP3sQBkBVLi1L1MDnMXd3/QAEQNnFMoDphEFOKpHoCIACG2Cwk+1u10UL0YBZcCOMIBA
	95Hl6gVmuQ5OLTSV+035A7uFmt9UMco3P1NL8cWnwne56hXik=
X-Received: by 2002:a05:600c:4e89:b0:45d:d97c:236c with SMTP id 5b1f17b1804b1-48526951430mr42154915e9.21.1772809102033;
        Fri, 06 Mar 2026 06:58:22 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:d0f3:534:36a3:523a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fad2812sm201153175e9.1.2026.03.06.06.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:58:21 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Frank Li <Frank.Li@kernel.org>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH] dt-bindings: dma: rz-dmac: Add conditional schema for RZ/G3L
Date: Fri,  6 Mar 2026 14:58:17 +0000
Message-ID: <20260306145819.897047-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: F28C5223408
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272196-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bp.renesas.com:mid]
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

The RZ/G3L DMA controller is compatible with RZ/G2L, sharing the same
IP. However, the conditional schema logic that enforces RZ/G2L-specific
binding constraints was not extended to cover the RZ/G3L compatible
string, leaving its bindings without proper validation.

Add the RZ/G3L compatible string to the existing RZ/G2L conditional
schema so that the same property constraints are applied to both SoCs.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml b/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
index e3311029eb2f..31f3c153a793 100644
--- a/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
@@ -132,6 +132,7 @@ allOf:
               - renesas,r9a07g044-dmac
               - renesas,r9a07g054-dmac
               - renesas,r9a08g045-dmac
+              - renesas,r9a08g046-dmac
     then:
       properties:
         reg:
-- 
2.43.0


