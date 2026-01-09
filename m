Return-Path: <devicetree+bounces-253291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CF5D0A4A9
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:14:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E20543317816
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 12:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5A6435C1B8;
	Fri,  9 Jan 2026 12:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sp0NA1+p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532A435BDC6
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767963099; cv=none; b=ivr7JimS+XwbOGhKZ4L1GyV7+TQMlN2QMN1zVrKp/xDSfxzAPljjXNuKXyyVVt1P1Q++fHfXSnoJYKbYVdntmH2zdHbDN+dPFOi6dqDWNQlMXOgCSKcjibBDGNi6xRDx9kTaz2rKMq42IcY5j+cL3H76l5/fUjnL9O0mO/p7FSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767963099; c=relaxed/simple;
	bh=JlkmrZA0IBEd5wIs54vPzpi+gQaKEecCIn8VD3Wq5v0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VI7riu12oQa0eiuVzCB4lcFshKUoNR/67OcOH2zWfsLuXGWfczdbkZq5IYf89nFhQsa6qJseVwtBNwz2NheQVvKYnnVmDvEOqvfwreGdsQxxaGvPCOF5PSNQiFVuIfA0wkSCUOqPN6+Bogh0GBy7jJLLiyecr6A5YAmxspsT7sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sp0NA1+p; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-42fb0fc5aa9so1937385f8f.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 04:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767963094; x=1768567894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bbSAcKWTXGbb/5YHLZnLWC3PXJ+VGcy/cSnyBBzvWn0=;
        b=Sp0NA1+pVRIE6J/jorHpbs1/QUN3HFpTovRGFdHPQjzufCVqPZi1sly1X8WKrLLXfk
         mLCbsSp5V+kygezUi0qySZrSNRWe8h/WXoZTrE1LABsASeHS9Q4B/1h7eaIk1FPculvI
         QyGILEJWhZGyxz+V+tg/SUcIEkIju98VNGHdTHRlTPz6NSTan/yHQWNpcTsAAOqP59df
         KLnRvvwPK7dcTT5l39HIdbbdmCSpOfflTzzkkpRIGlLh48vIFPhofD8ASN7ld67DMm86
         LbgZQ6enhcDPPI+1MqNduj8Xs7ZqzdkE0mpbSVehyd5cHK0PAtc9fyPkPFpOTH8l7TaI
         FeZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767963094; x=1768567894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bbSAcKWTXGbb/5YHLZnLWC3PXJ+VGcy/cSnyBBzvWn0=;
        b=rfCZN3q9CoyfLlfMTMHSCWqi8YkMa+FF5x74JAYSWh3I7LggPDg9tX8XuA5TuwvxpD
         uVGxndduM9P6ztbj7+CRf8oCjyH/OJHtE1rwNsVH0EzW++GSdO2G1IJeCMxkWby31Ms3
         3ZygKr/4vgcO+b2OMKiKL9zjtEaaB3sfEjftw0LzW5I6klURI6oKcax1QJEPdd+rR2eT
         XbkpaAdQIr7Nvg8InksT2SaTxdikCdIPjhTNy1VR/pzNGDRPFJdQVoPUG/piSzZ7xcU+
         bikBQokac4zjLaZrqlsAHtmXT5E/KQzH7AkZeWT9R3Axu34t0uQrFumzkOzbm1jKCUfF
         3tNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHwCqOumCM5HV50NQOMZh5s2qwSo8FZrd6JfQQRyRnYKSLsvVNTLkSlutSJFqpJgN/aKwucvF1r9kS@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg2Bh4+kDOSnbUnA/Nu7V/wn1oPnorpXuFdjts05N8VmWDlCng
	bTuUBJ0lFlMvhoaR3KjkAoUC9V28Et2WntFEf17IdOtoB76Ig0WKNNKc
X-Gm-Gg: AY/fxX4MmvUCnnBFMNPvldI3rTnoUkaqUMv4PeoGZ1+nNy2D3MpAXgucsQsgwWx+WYT
	3GJV9gM5o4MWbJ6zbrCNwVRAFbST/I9E3kwx7uZwGa4kLcqnbAaZLf16Vhp7O3Pbvw2hd3LIjFg
	pZSmBTkeJBVZYSHm2WBSQv9LtbEdBdg+ERcGTlLUKX2kMZfFEBP6eHxhqTOk5clqg5JcsV8O2rB
	apsUozILOiAVU+fu5dXf0gD22Csj81z4Gg9IgaMzJPoNxWh6XyboTUBy3p/yr/bwxuYFirQd2As
	H703oAOb24TcXcYJIINUEWe00EbFbs207EPRA8JzoBb4Sk3jY/P3ABscL0pulLDuS9GEhZdJXyM
	acX+buXgDiPxjugZj7WrAuxDI8uWFe8LY2FF7ebtMJs7GTufWoug2tR05WZoNpcKfK3PpZ0u7ih
	UhNGii1ox6wAB2dySBrDh4hoe3xGKrl/+TlkzLs3WUDIeYYuAtnFndH1jNaIZ+S3aDsHWrg03rG
	Yr6LVAcE4wAx8XcbcNR86g=
X-Google-Smtp-Source: AGHT+IEmHgu1PwKX696JNHHMjQ+q4xOEiEji9gvLWaP1XYJ/xrxwuRwsGaEZvM6oRA5WdBX0mGm1NA==
X-Received: by 2002:a05:6000:1842:b0:42f:f627:3aa7 with SMTP id ffacd0b85a97d-432c3632b03mr10686383f8f.16.1767963093554;
        Fri, 09 Jan 2026 04:51:33 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3d06:ce2:401e:8cb8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dad8bsm22837291f8f.8.2026.01.09.04.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 04:51:32 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 2/4] dt-bindings: can: renesas,rcar-canfd: Document RZ/V2H(P) and RZ/V2N SoCs
Date: Fri,  9 Jan 2026 12:51:26 +0000
Message-ID: <20260109125128.2474156-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260109125128.2474156-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260109125128.2474156-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document CANFD IP found on the Renesas RZ/V2H(P) (R9A09G057) and RZ/V2N
(R9A09G056) SoCs. The CANFD IP on these SoCs are identical to that found
on the RZ/G3E (R9A09G047) SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2->v3:
- Added Acked-by and Reviewed-by tags.

v1->v2:
- No changes made.
---
 .../devicetree/bindings/net/can/renesas,rcar-canfd.yaml     | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
index 9bfd4f44e4d4..fb709cfd26d7 100644
--- a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
@@ -44,6 +44,12 @@ properties:
 
       - const: renesas,r9a09g047-canfd     # RZ/G3E
 
+      - items:
+          - enum:
+              - renesas,r9a09g056-canfd     # RZ/V2N
+              - renesas,r9a09g057-canfd     # RZ/V2H(P)
+          - const: renesas,r9a09g047-canfd
+
   reg:
     maxItems: 1
 
-- 
2.52.0


